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
(declare-sort T@Field_5978_53 0)
(declare-sort T@Field_5991_5992 0)
(declare-sort T@Field_9685_9686 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_9305_1189 0)
(declare-sort T@Field_12187_12192 0)
(declare-sort T@Field_13437_13438 0)
(declare-sort T@Field_15144_15149 0)
(declare-sort T@Field_3194_9686 0)
(declare-sort T@Field_3194_12192 0)
(declare-sort T@Field_9685_3195 0)
(declare-sort T@Field_9685_53 0)
(declare-sort T@Field_9685_1189 0)
(declare-sort T@Field_13437_3195 0)
(declare-sort T@Field_13437_53 0)
(declare-sort T@Field_13437_1189 0)
(declare-datatypes ((T@PolymorphicMapType_5939 0)) (((PolymorphicMapType_5939 (|PolymorphicMapType_5939_3258_3259#PolymorphicMapType_5939| (Array T@Ref T@Field_9685_9686 Real)) (|PolymorphicMapType_5939_3192_1189#PolymorphicMapType_5939| (Array T@Ref T@Field_9305_1189 Real)) (|PolymorphicMapType_5939_3194_3195#PolymorphicMapType_5939| (Array T@Ref T@Field_5991_5992 Real)) (|PolymorphicMapType_5939_3283_3284#PolymorphicMapType_5939| (Array T@Ref T@Field_13437_13438 Real)) (|PolymorphicMapType_5939_3258_1189#PolymorphicMapType_5939| (Array T@Ref T@Field_9685_1189 Real)) (|PolymorphicMapType_5939_3258_3195#PolymorphicMapType_5939| (Array T@Ref T@Field_9685_3195 Real)) (|PolymorphicMapType_5939_3258_53#PolymorphicMapType_5939| (Array T@Ref T@Field_9685_53 Real)) (|PolymorphicMapType_5939_3258_33050#PolymorphicMapType_5939| (Array T@Ref T@Field_12187_12192 Real)) (|PolymorphicMapType_5939_3192_3259#PolymorphicMapType_5939| (Array T@Ref T@Field_3194_9686 Real)) (|PolymorphicMapType_5939_3192_53#PolymorphicMapType_5939| (Array T@Ref T@Field_5978_53 Real)) (|PolymorphicMapType_5939_3192_33449#PolymorphicMapType_5939| (Array T@Ref T@Field_3194_12192 Real)) (|PolymorphicMapType_5939_3283_1189#PolymorphicMapType_5939| (Array T@Ref T@Field_13437_1189 Real)) (|PolymorphicMapType_5939_3283_3195#PolymorphicMapType_5939| (Array T@Ref T@Field_13437_3195 Real)) (|PolymorphicMapType_5939_3283_53#PolymorphicMapType_5939| (Array T@Ref T@Field_13437_53 Real)) (|PolymorphicMapType_5939_3283_33860#PolymorphicMapType_5939| (Array T@Ref T@Field_15144_15149 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6467 0)) (((PolymorphicMapType_6467 (|PolymorphicMapType_6467_3192_1189#PolymorphicMapType_6467| (Array T@Ref T@Field_9305_1189 Bool)) (|PolymorphicMapType_6467_3194_3195#PolymorphicMapType_6467| (Array T@Ref T@Field_5991_5992 Bool)) (|PolymorphicMapType_6467_3192_53#PolymorphicMapType_6467| (Array T@Ref T@Field_5978_53 Bool)) (|PolymorphicMapType_6467_3192_9686#PolymorphicMapType_6467| (Array T@Ref T@Field_3194_9686 Bool)) (|PolymorphicMapType_6467_3192_23113#PolymorphicMapType_6467| (Array T@Ref T@Field_3194_12192 Bool)) (|PolymorphicMapType_6467_9685_1189#PolymorphicMapType_6467| (Array T@Ref T@Field_9685_1189 Bool)) (|PolymorphicMapType_6467_9685_3195#PolymorphicMapType_6467| (Array T@Ref T@Field_9685_3195 Bool)) (|PolymorphicMapType_6467_9685_53#PolymorphicMapType_6467| (Array T@Ref T@Field_9685_53 Bool)) (|PolymorphicMapType_6467_9685_9686#PolymorphicMapType_6467| (Array T@Ref T@Field_9685_9686 Bool)) (|PolymorphicMapType_6467_9685_24161#PolymorphicMapType_6467| (Array T@Ref T@Field_12187_12192 Bool)) (|PolymorphicMapType_6467_13437_1189#PolymorphicMapType_6467| (Array T@Ref T@Field_13437_1189 Bool)) (|PolymorphicMapType_6467_13437_3195#PolymorphicMapType_6467| (Array T@Ref T@Field_13437_3195 Bool)) (|PolymorphicMapType_6467_13437_53#PolymorphicMapType_6467| (Array T@Ref T@Field_13437_53 Bool)) (|PolymorphicMapType_6467_13437_9686#PolymorphicMapType_6467| (Array T@Ref T@Field_13437_13438 Bool)) (|PolymorphicMapType_6467_13437_25209#PolymorphicMapType_6467| (Array T@Ref T@Field_15144_15149 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5918 0)) (((PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| (Array T@Ref T@Field_5978_53 Bool)) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| (Array T@Ref T@Field_5991_5992 T@Ref)) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| (Array T@Ref T@Field_9685_9686 T@FrameType)) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| (Array T@Ref T@Field_9305_1189 Int)) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| (Array T@Ref T@Field_12187_12192 T@PolymorphicMapType_6467)) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| (Array T@Ref T@Field_13437_13438 T@FrameType)) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| (Array T@Ref T@Field_15144_15149 T@PolymorphicMapType_6467)) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| (Array T@Ref T@Field_3194_9686 T@FrameType)) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| (Array T@Ref T@Field_3194_12192 T@PolymorphicMapType_6467)) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| (Array T@Ref T@Field_9685_3195 T@Ref)) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| (Array T@Ref T@Field_9685_53 Bool)) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| (Array T@Ref T@Field_9685_1189 Int)) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| (Array T@Ref T@Field_13437_3195 T@Ref)) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| (Array T@Ref T@Field_13437_53 Bool)) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| (Array T@Ref T@Field_13437_1189 Int)) ) ) ))
(declare-fun $allocated () T@Field_5978_53)
(declare-fun Nodeval$ () T@Field_9305_1189)
(declare-fun Nodenext$ () T@Field_5991_5992)
(declare-fun succHeap (T@PolymorphicMapType_5918 T@PolymorphicMapType_5918) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5918 T@PolymorphicMapType_5918) Bool)
(declare-fun state (T@PolymorphicMapType_5918 T@PolymorphicMapType_5939) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5939) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6467)
(declare-fun Nodevalid$ (T@Ref) T@Field_9685_9686)
(declare-fun IsPredicateField_3258_3259 (T@Field_9685_9686) Bool)
(declare-fun Nodep$ (T@Ref) T@Field_13437_13438)
(declare-fun IsPredicateField_3283_3284 (T@Field_13437_13438) Bool)
(declare-fun |Nodet$'| (T@PolymorphicMapType_5918 T@Ref) Int)
(declare-fun dummyFunction_1425 (Int) Bool)
(declare-fun |Nodet$#triggerStateless| (T@Ref) Int)
(declare-fun |Nodet2$'| (T@PolymorphicMapType_5918 T@Ref) Int)
(declare-fun |Nodet2$#triggerStateless| (T@Ref) Int)
(declare-fun |Nodevalid$#trigger_3258| (T@PolymorphicMapType_5918 T@Field_9685_9686) Bool)
(declare-fun |Nodevalid$#everUsed_3258| (T@Field_9685_9686) Bool)
(declare-fun |Nodep$#trigger_3283| (T@PolymorphicMapType_5918 T@Field_13437_13438) Bool)
(declare-fun |Nodep$#everUsed_3283| (T@Field_13437_13438) Bool)
(declare-fun Nodet$ (T@PolymorphicMapType_5918 T@Ref) Int)
(declare-fun Nodet2$ (T@PolymorphicMapType_5918 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5918 T@PolymorphicMapType_5918 T@PolymorphicMapType_5939) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3283 (T@Field_13437_13438) T@Field_15144_15149)
(declare-fun HasDirectPerm_13437_9686 (T@PolymorphicMapType_5939 T@Ref T@Field_13437_13438) Bool)
(declare-fun PredicateMaskField_3258 (T@Field_9685_9686) T@Field_12187_12192)
(declare-fun HasDirectPerm_9685_9686 (T@PolymorphicMapType_5939 T@Ref T@Field_9685_9686) Bool)
(declare-fun IsPredicateField_3194_21331 (T@Field_3194_9686) Bool)
(declare-fun PredicateMaskField_3194 (T@Field_3194_9686) T@Field_3194_12192)
(declare-fun HasDirectPerm_3194_9686 (T@PolymorphicMapType_5939 T@Ref T@Field_3194_9686) Bool)
(declare-fun IsWandField_13437_27012 (T@Field_13437_13438) Bool)
(declare-fun WandMaskField_13437 (T@Field_13437_13438) T@Field_15144_15149)
(declare-fun IsWandField_9685_26655 (T@Field_9685_9686) Bool)
(declare-fun WandMaskField_9685 (T@Field_9685_9686) T@Field_12187_12192)
(declare-fun IsWandField_3194_26298 (T@Field_3194_9686) Bool)
(declare-fun WandMaskField_3194 (T@Field_3194_9686) T@Field_3194_12192)
(declare-fun |Nodevalid$#sm| (T@Ref) T@Field_12187_12192)
(declare-fun |Nodep$#sm| (T@Ref) T@Field_15144_15149)
(declare-fun dummyHeap () T@PolymorphicMapType_5918)
(declare-fun ZeroMask () T@PolymorphicMapType_5939)
(declare-fun InsidePredicate_5978_5978 (T@Field_3194_9686 T@FrameType T@Field_3194_9686 T@FrameType) Bool)
(declare-fun InsidePredicate_3283_3283 (T@Field_13437_13438 T@FrameType T@Field_13437_13438 T@FrameType) Bool)
(declare-fun InsidePredicate_3258_3258 (T@Field_9685_9686 T@FrameType T@Field_9685_9686 T@FrameType) Bool)
(declare-fun IsPredicateField_3192_1189 (T@Field_9305_1189) Bool)
(declare-fun IsWandField_3192_1189 (T@Field_9305_1189) Bool)
(declare-fun IsPredicateField_3194_3195 (T@Field_5991_5992) Bool)
(declare-fun IsWandField_3194_3195 (T@Field_5991_5992) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3283_37301 (T@Field_15144_15149) Bool)
(declare-fun IsWandField_3283_37317 (T@Field_15144_15149) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3283_53 (T@Field_13437_53) Bool)
(declare-fun IsWandField_3283_53 (T@Field_13437_53) Bool)
(declare-fun IsPredicateField_3283_3195 (T@Field_13437_3195) Bool)
(declare-fun IsWandField_3283_3195 (T@Field_13437_3195) Bool)
(declare-fun IsPredicateField_3283_1189 (T@Field_13437_1189) Bool)
(declare-fun IsWandField_3283_1189 (T@Field_13437_1189) Bool)
(declare-fun IsPredicateField_3192_36470 (T@Field_3194_12192) Bool)
(declare-fun IsWandField_3192_36486 (T@Field_3194_12192) Bool)
(declare-fun IsPredicateField_3192_53 (T@Field_5978_53) Bool)
(declare-fun IsWandField_3192_53 (T@Field_5978_53) Bool)
(declare-fun IsPredicateField_3258_35667 (T@Field_12187_12192) Bool)
(declare-fun IsWandField_3258_35683 (T@Field_12187_12192) Bool)
(declare-fun IsPredicateField_3258_53 (T@Field_9685_53) Bool)
(declare-fun IsWandField_3258_53 (T@Field_9685_53) Bool)
(declare-fun IsPredicateField_3258_3195 (T@Field_9685_3195) Bool)
(declare-fun IsWandField_3258_3195 (T@Field_9685_3195) Bool)
(declare-fun IsPredicateField_3258_1189 (T@Field_9685_1189) Bool)
(declare-fun IsWandField_3258_1189 (T@Field_9685_1189) Bool)
(declare-fun HasDirectPerm_13437_21086 (T@PolymorphicMapType_5939 T@Ref T@Field_15144_15149) Bool)
(declare-fun HasDirectPerm_13437_1189 (T@PolymorphicMapType_5939 T@Ref T@Field_13437_1189) Bool)
(declare-fun HasDirectPerm_13437_53 (T@PolymorphicMapType_5939 T@Ref T@Field_13437_53) Bool)
(declare-fun HasDirectPerm_13437_3195 (T@PolymorphicMapType_5939 T@Ref T@Field_13437_3195) Bool)
(declare-fun HasDirectPerm_9685_19968 (T@PolymorphicMapType_5939 T@Ref T@Field_12187_12192) Bool)
(declare-fun HasDirectPerm_9685_1189 (T@PolymorphicMapType_5939 T@Ref T@Field_9685_1189) Bool)
(declare-fun HasDirectPerm_9685_53 (T@PolymorphicMapType_5939 T@Ref T@Field_9685_53) Bool)
(declare-fun HasDirectPerm_9685_3195 (T@PolymorphicMapType_5939 T@Ref T@Field_9685_3195) Bool)
(declare-fun HasDirectPerm_3194_18807 (T@PolymorphicMapType_5939 T@Ref T@Field_3194_12192) Bool)
(declare-fun HasDirectPerm_3194_1189 (T@PolymorphicMapType_5939 T@Ref T@Field_9305_1189) Bool)
(declare-fun HasDirectPerm_3194_53 (T@PolymorphicMapType_5939 T@Ref T@Field_5978_53) Bool)
(declare-fun HasDirectPerm_3194_3195 (T@PolymorphicMapType_5939 T@Ref T@Field_5991_5992) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5939 T@PolymorphicMapType_5939 T@PolymorphicMapType_5939) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Nodet$#frame| (T@FrameType T@Ref) Int)
(declare-fun |Nodet2$#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_3258_3259 (T@Field_9685_9686) Int)
(declare-fun getPredWandId_3283_3284 (T@Field_13437_13438) Int)
(declare-fun InsidePredicate_5978_3283 (T@Field_3194_9686 T@FrameType T@Field_13437_13438 T@FrameType) Bool)
(declare-fun InsidePredicate_5978_3258 (T@Field_3194_9686 T@FrameType T@Field_9685_9686 T@FrameType) Bool)
(declare-fun InsidePredicate_3283_5978 (T@Field_13437_13438 T@FrameType T@Field_3194_9686 T@FrameType) Bool)
(declare-fun InsidePredicate_3283_3258 (T@Field_13437_13438 T@FrameType T@Field_9685_9686 T@FrameType) Bool)
(declare-fun InsidePredicate_3258_5978 (T@Field_9685_9686 T@FrameType T@Field_3194_9686 T@FrameType) Bool)
(declare-fun InsidePredicate_3258_3283 (T@Field_9685_9686 T@FrameType T@Field_13437_13438 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5918) (Heap1 T@PolymorphicMapType_5918) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5918) (Mask T@PolymorphicMapType_5939) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5918) (Heap1@@0 T@PolymorphicMapType_5918) (Heap2 T@PolymorphicMapType_5918) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_15144_15149) ) (!  (not (select (|PolymorphicMapType_6467_13437_25209#PolymorphicMapType_6467| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6467_13437_25209#PolymorphicMapType_6467| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13437_13438) ) (!  (not (select (|PolymorphicMapType_6467_13437_9686#PolymorphicMapType_6467| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6467_13437_9686#PolymorphicMapType_6467| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13437_53) ) (!  (not (select (|PolymorphicMapType_6467_13437_53#PolymorphicMapType_6467| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6467_13437_53#PolymorphicMapType_6467| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_13437_3195) ) (!  (not (select (|PolymorphicMapType_6467_13437_3195#PolymorphicMapType_6467| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6467_13437_3195#PolymorphicMapType_6467| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_13437_1189) ) (!  (not (select (|PolymorphicMapType_6467_13437_1189#PolymorphicMapType_6467| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6467_13437_1189#PolymorphicMapType_6467| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_12187_12192) ) (!  (not (select (|PolymorphicMapType_6467_9685_24161#PolymorphicMapType_6467| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6467_9685_24161#PolymorphicMapType_6467| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_9685_9686) ) (!  (not (select (|PolymorphicMapType_6467_9685_9686#PolymorphicMapType_6467| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6467_9685_9686#PolymorphicMapType_6467| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_9685_53) ) (!  (not (select (|PolymorphicMapType_6467_9685_53#PolymorphicMapType_6467| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6467_9685_53#PolymorphicMapType_6467| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_9685_3195) ) (!  (not (select (|PolymorphicMapType_6467_9685_3195#PolymorphicMapType_6467| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6467_9685_3195#PolymorphicMapType_6467| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_9685_1189) ) (!  (not (select (|PolymorphicMapType_6467_9685_1189#PolymorphicMapType_6467| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6467_9685_1189#PolymorphicMapType_6467| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_3194_12192) ) (!  (not (select (|PolymorphicMapType_6467_3192_23113#PolymorphicMapType_6467| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6467_3192_23113#PolymorphicMapType_6467| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_3194_9686) ) (!  (not (select (|PolymorphicMapType_6467_3192_9686#PolymorphicMapType_6467| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6467_3192_9686#PolymorphicMapType_6467| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5978_53) ) (!  (not (select (|PolymorphicMapType_6467_3192_53#PolymorphicMapType_6467| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6467_3192_53#PolymorphicMapType_6467| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5991_5992) ) (!  (not (select (|PolymorphicMapType_6467_3194_3195#PolymorphicMapType_6467| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6467_3194_3195#PolymorphicMapType_6467| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_9305_1189) ) (!  (not (select (|PolymorphicMapType_6467_3192_1189#PolymorphicMapType_6467| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6467_3192_1189#PolymorphicMapType_6467| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_3258_3259 (Nodevalid$ this))
 :qid |stdinbpl.449:15|
 :skolemid |33|
 :pattern ( (Nodevalid$ this))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_3283_3284 (Nodep$ this@@0))
 :qid |stdinbpl.521:15|
 :skolemid |39|
 :pattern ( (Nodep$ this@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5918) (this@@1 T@Ref) ) (! (dummyFunction_1425 (|Nodet$#triggerStateless| this@@1))
 :qid |stdinbpl.202:15|
 :skolemid |23|
 :pattern ( (|Nodet$'| Heap@@0 this@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5918) (this@@2 T@Ref) ) (! (dummyFunction_1425 (|Nodet2$#triggerStateless| this@@2))
 :qid |stdinbpl.335:15|
 :skolemid |28|
 :pattern ( (|Nodet2$'| Heap@@1 this@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5918) (this@@3 T@Ref) ) (! (|Nodevalid$#everUsed_3258| (Nodevalid$ this@@3))
 :qid |stdinbpl.468:15|
 :skolemid |37|
 :pattern ( (|Nodevalid$#trigger_3258| Heap@@2 (Nodevalid$ this@@3)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5918) (this@@4 T@Ref) ) (! (|Nodep$#everUsed_3283| (Nodep$ this@@4))
 :qid |stdinbpl.540:15|
 :skolemid |43|
 :pattern ( (|Nodep$#trigger_3283| Heap@@3 (Nodep$ this@@4)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5918) (this@@5 T@Ref) ) (!  (and (= (Nodet$ Heap@@4 this@@5) (|Nodet$'| Heap@@4 this@@5)) (dummyFunction_1425 (|Nodet$#triggerStateless| this@@5)))
 :qid |stdinbpl.198:15|
 :skolemid |22|
 :pattern ( (Nodet$ Heap@@4 this@@5))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5918) (this@@6 T@Ref) ) (!  (and (= (Nodet2$ Heap@@5 this@@6) (|Nodet2$'| Heap@@5 this@@6)) (dummyFunction_1425 (|Nodet2$#triggerStateless| this@@6)))
 :qid |stdinbpl.331:15|
 :skolemid |27|
 :pattern ( (Nodet2$ Heap@@5 this@@6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5918) (ExhaleHeap T@PolymorphicMapType_5918) (Mask@@0 T@PolymorphicMapType_5939) (pm_f_1 T@Field_13437_13438) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_13437_9686 Mask@@0 null pm_f_1) (IsPredicateField_3283_3284 pm_f_1)) (= (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@6) null (PredicateMaskField_3283 pm_f_1)) (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| ExhaleHeap) null (PredicateMaskField_3283 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (IsPredicateField_3283_3284 pm_f_1) (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| ExhaleHeap) null (PredicateMaskField_3283 pm_f_1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5918) (ExhaleHeap@@0 T@PolymorphicMapType_5918) (Mask@@1 T@PolymorphicMapType_5939) (pm_f_1@@0 T@Field_9685_9686) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9685_9686 Mask@@1 null pm_f_1@@0) (IsPredicateField_3258_3259 pm_f_1@@0)) (= (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@7) null (PredicateMaskField_3258 pm_f_1@@0)) (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| ExhaleHeap@@0) null (PredicateMaskField_3258 pm_f_1@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3258_3259 pm_f_1@@0) (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| ExhaleHeap@@0) null (PredicateMaskField_3258 pm_f_1@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5918) (ExhaleHeap@@1 T@PolymorphicMapType_5918) (Mask@@2 T@PolymorphicMapType_5939) (pm_f_1@@1 T@Field_3194_9686) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3194_9686 Mask@@2 null pm_f_1@@1) (IsPredicateField_3194_21331 pm_f_1@@1)) (= (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@8) null (PredicateMaskField_3194 pm_f_1@@1)) (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| ExhaleHeap@@1) null (PredicateMaskField_3194 pm_f_1@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3194_21331 pm_f_1@@1) (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| ExhaleHeap@@1) null (PredicateMaskField_3194 pm_f_1@@1)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5918) (ExhaleHeap@@2 T@PolymorphicMapType_5918) (Mask@@3 T@PolymorphicMapType_5939) (pm_f_1@@2 T@Field_13437_13438) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_13437_9686 Mask@@3 null pm_f_1@@2) (IsWandField_13437_27012 pm_f_1@@2)) (= (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@9) null (WandMaskField_13437 pm_f_1@@2)) (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| ExhaleHeap@@2) null (WandMaskField_13437 pm_f_1@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (IsWandField_13437_27012 pm_f_1@@2) (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| ExhaleHeap@@2) null (WandMaskField_13437 pm_f_1@@2)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5918) (ExhaleHeap@@3 T@PolymorphicMapType_5918) (Mask@@4 T@PolymorphicMapType_5939) (pm_f_1@@3 T@Field_9685_9686) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_9685_9686 Mask@@4 null pm_f_1@@3) (IsWandField_9685_26655 pm_f_1@@3)) (= (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@10) null (WandMaskField_9685 pm_f_1@@3)) (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| ExhaleHeap@@3) null (WandMaskField_9685 pm_f_1@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (IsWandField_9685_26655 pm_f_1@@3) (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| ExhaleHeap@@3) null (WandMaskField_9685 pm_f_1@@3)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5918) (ExhaleHeap@@4 T@PolymorphicMapType_5918) (Mask@@5 T@PolymorphicMapType_5939) (pm_f_1@@4 T@Field_3194_9686) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3194_9686 Mask@@5 null pm_f_1@@4) (IsWandField_3194_26298 pm_f_1@@4)) (= (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@11) null (WandMaskField_3194 pm_f_1@@4)) (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| ExhaleHeap@@4) null (WandMaskField_3194 pm_f_1@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (IsWandField_3194_26298 pm_f_1@@4) (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| ExhaleHeap@@4) null (WandMaskField_3194 pm_f_1@@4)))
)))
(assert (forall ((this@@7 T@Ref) (this2 T@Ref) ) (!  (=> (= (Nodevalid$ this@@7) (Nodevalid$ this2)) (= this@@7 this2))
 :qid |stdinbpl.459:15|
 :skolemid |35|
 :pattern ( (Nodevalid$ this@@7) (Nodevalid$ this2))
)))
(assert (forall ((this@@8 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|Nodevalid$#sm| this@@8) (|Nodevalid$#sm| this2@@0)) (= this@@8 this2@@0))
 :qid |stdinbpl.463:15|
 :skolemid |36|
 :pattern ( (|Nodevalid$#sm| this@@8) (|Nodevalid$#sm| this2@@0))
)))
(assert (forall ((this@@9 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (Nodep$ this@@9) (Nodep$ this2@@1)) (= this@@9 this2@@1))
 :qid |stdinbpl.531:15|
 :skolemid |41|
 :pattern ( (Nodep$ this@@9) (Nodep$ this2@@1))
)))
(assert (forall ((this@@10 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|Nodep$#sm| this@@10) (|Nodep$#sm| this2@@2)) (= this@@10 this2@@2))
 :qid |stdinbpl.535:15|
 :skolemid |42|
 :pattern ( (|Nodep$#sm| this@@10) (|Nodep$#sm| this2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5918) (ExhaleHeap@@5 T@PolymorphicMapType_5918) (Mask@@6 T@PolymorphicMapType_5939) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@12) o_4 $allocated) (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| ExhaleHeap@@5) o_4 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| ExhaleHeap@@5) o_4 $allocated))
)))
(assert (forall ((p T@Field_3194_9686) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5978_5978 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5978_5978 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_13437_13438) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_3283_3283 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3283_3283 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_9685_9686) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_3258_3258 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3258_3258 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_3192_1189 Nodeval$)))
(assert  (not (IsWandField_3192_1189 Nodeval$)))
(assert  (not (IsPredicateField_3194_3195 Nodenext$)))
(assert  (not (IsWandField_3194_3195 Nodenext$)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5918) (ExhaleHeap@@6 T@PolymorphicMapType_5918) (Mask@@7 T@PolymorphicMapType_5939) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@13 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5939) (o_2@@14 T@Ref) (f_4@@14 T@Field_15144_15149) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5939_3283_33860#PolymorphicMapType_5939| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3283_37301 f_4@@14))) (not (IsWandField_3283_37317 f_4@@14))) (<= (select (|PolymorphicMapType_5939_3283_33860#PolymorphicMapType_5939| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5939_3283_33860#PolymorphicMapType_5939| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5939) (o_2@@15 T@Ref) (f_4@@15 T@Field_13437_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5939_3283_53#PolymorphicMapType_5939| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3283_53 f_4@@15))) (not (IsWandField_3283_53 f_4@@15))) (<= (select (|PolymorphicMapType_5939_3283_53#PolymorphicMapType_5939| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5939_3283_53#PolymorphicMapType_5939| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5939) (o_2@@16 T@Ref) (f_4@@16 T@Field_13437_3195) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_5939_3283_3195#PolymorphicMapType_5939| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3283_3195 f_4@@16))) (not (IsWandField_3283_3195 f_4@@16))) (<= (select (|PolymorphicMapType_5939_3283_3195#PolymorphicMapType_5939| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_5939_3283_3195#PolymorphicMapType_5939| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5939) (o_2@@17 T@Ref) (f_4@@17 T@Field_13437_1189) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_5939_3283_1189#PolymorphicMapType_5939| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3283_1189 f_4@@17))) (not (IsWandField_3283_1189 f_4@@17))) (<= (select (|PolymorphicMapType_5939_3283_1189#PolymorphicMapType_5939| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_5939_3283_1189#PolymorphicMapType_5939| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5939) (o_2@@18 T@Ref) (f_4@@18 T@Field_13437_13438) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_5939_3283_3284#PolymorphicMapType_5939| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3283_3284 f_4@@18))) (not (IsWandField_13437_27012 f_4@@18))) (<= (select (|PolymorphicMapType_5939_3283_3284#PolymorphicMapType_5939| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_5939_3283_3284#PolymorphicMapType_5939| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5939) (o_2@@19 T@Ref) (f_4@@19 T@Field_3194_12192) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5939_3192_33449#PolymorphicMapType_5939| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3192_36470 f_4@@19))) (not (IsWandField_3192_36486 f_4@@19))) (<= (select (|PolymorphicMapType_5939_3192_33449#PolymorphicMapType_5939| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5939_3192_33449#PolymorphicMapType_5939| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5939) (o_2@@20 T@Ref) (f_4@@20 T@Field_5978_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_5939_3192_53#PolymorphicMapType_5939| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3192_53 f_4@@20))) (not (IsWandField_3192_53 f_4@@20))) (<= (select (|PolymorphicMapType_5939_3192_53#PolymorphicMapType_5939| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_5939_3192_53#PolymorphicMapType_5939| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5939) (o_2@@21 T@Ref) (f_4@@21 T@Field_5991_5992) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_5939_3194_3195#PolymorphicMapType_5939| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3194_3195 f_4@@21))) (not (IsWandField_3194_3195 f_4@@21))) (<= (select (|PolymorphicMapType_5939_3194_3195#PolymorphicMapType_5939| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_5939_3194_3195#PolymorphicMapType_5939| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5939) (o_2@@22 T@Ref) (f_4@@22 T@Field_9305_1189) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_5939_3192_1189#PolymorphicMapType_5939| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3192_1189 f_4@@22))) (not (IsWandField_3192_1189 f_4@@22))) (<= (select (|PolymorphicMapType_5939_3192_1189#PolymorphicMapType_5939| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_5939_3192_1189#PolymorphicMapType_5939| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5939) (o_2@@23 T@Ref) (f_4@@23 T@Field_3194_9686) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_5939_3192_3259#PolymorphicMapType_5939| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3194_21331 f_4@@23))) (not (IsWandField_3194_26298 f_4@@23))) (<= (select (|PolymorphicMapType_5939_3192_3259#PolymorphicMapType_5939| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_5939_3192_3259#PolymorphicMapType_5939| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5939) (o_2@@24 T@Ref) (f_4@@24 T@Field_12187_12192) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_5939_3258_33050#PolymorphicMapType_5939| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3258_35667 f_4@@24))) (not (IsWandField_3258_35683 f_4@@24))) (<= (select (|PolymorphicMapType_5939_3258_33050#PolymorphicMapType_5939| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_5939_3258_33050#PolymorphicMapType_5939| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_5939) (o_2@@25 T@Ref) (f_4@@25 T@Field_9685_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_5939_3258_53#PolymorphicMapType_5939| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3258_53 f_4@@25))) (not (IsWandField_3258_53 f_4@@25))) (<= (select (|PolymorphicMapType_5939_3258_53#PolymorphicMapType_5939| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_5939_3258_53#PolymorphicMapType_5939| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_5939) (o_2@@26 T@Ref) (f_4@@26 T@Field_9685_3195) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_5939_3258_3195#PolymorphicMapType_5939| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_3258_3195 f_4@@26))) (not (IsWandField_3258_3195 f_4@@26))) (<= (select (|PolymorphicMapType_5939_3258_3195#PolymorphicMapType_5939| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_5939_3258_3195#PolymorphicMapType_5939| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_5939) (o_2@@27 T@Ref) (f_4@@27 T@Field_9685_1189) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_5939_3258_1189#PolymorphicMapType_5939| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_3258_1189 f_4@@27))) (not (IsWandField_3258_1189 f_4@@27))) (<= (select (|PolymorphicMapType_5939_3258_1189#PolymorphicMapType_5939| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_5939_3258_1189#PolymorphicMapType_5939| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_5939) (o_2@@28 T@Ref) (f_4@@28 T@Field_9685_9686) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_5939_3258_3259#PolymorphicMapType_5939| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_3258_3259 f_4@@28))) (not (IsWandField_9685_26655 f_4@@28))) (<= (select (|PolymorphicMapType_5939_3258_3259#PolymorphicMapType_5939| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_5939_3258_3259#PolymorphicMapType_5939| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_5939) (o_2@@29 T@Ref) (f_4@@29 T@Field_15144_15149) ) (! (= (HasDirectPerm_13437_21086 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_5939_3283_33860#PolymorphicMapType_5939| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13437_21086 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_5939) (o_2@@30 T@Ref) (f_4@@30 T@Field_13437_13438) ) (! (= (HasDirectPerm_13437_9686 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_5939_3283_3284#PolymorphicMapType_5939| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13437_9686 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_5939) (o_2@@31 T@Ref) (f_4@@31 T@Field_13437_1189) ) (! (= (HasDirectPerm_13437_1189 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_5939_3283_1189#PolymorphicMapType_5939| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13437_1189 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_5939) (o_2@@32 T@Ref) (f_4@@32 T@Field_13437_53) ) (! (= (HasDirectPerm_13437_53 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_5939_3283_53#PolymorphicMapType_5939| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13437_53 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_5939) (o_2@@33 T@Ref) (f_4@@33 T@Field_13437_3195) ) (! (= (HasDirectPerm_13437_3195 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_5939_3283_3195#PolymorphicMapType_5939| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13437_3195 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_5939) (o_2@@34 T@Ref) (f_4@@34 T@Field_12187_12192) ) (! (= (HasDirectPerm_9685_19968 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_5939_3258_33050#PolymorphicMapType_5939| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9685_19968 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_5939) (o_2@@35 T@Ref) (f_4@@35 T@Field_9685_9686) ) (! (= (HasDirectPerm_9685_9686 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_5939_3258_3259#PolymorphicMapType_5939| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9685_9686 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_5939) (o_2@@36 T@Ref) (f_4@@36 T@Field_9685_1189) ) (! (= (HasDirectPerm_9685_1189 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_5939_3258_1189#PolymorphicMapType_5939| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9685_1189 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_5939) (o_2@@37 T@Ref) (f_4@@37 T@Field_9685_53) ) (! (= (HasDirectPerm_9685_53 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_5939_3258_53#PolymorphicMapType_5939| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9685_53 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_5939) (o_2@@38 T@Ref) (f_4@@38 T@Field_9685_3195) ) (! (= (HasDirectPerm_9685_3195 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_5939_3258_3195#PolymorphicMapType_5939| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9685_3195 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_5939) (o_2@@39 T@Ref) (f_4@@39 T@Field_3194_12192) ) (! (= (HasDirectPerm_3194_18807 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_5939_3192_33449#PolymorphicMapType_5939| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3194_18807 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_5939) (o_2@@40 T@Ref) (f_4@@40 T@Field_3194_9686) ) (! (= (HasDirectPerm_3194_9686 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_5939_3192_3259#PolymorphicMapType_5939| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3194_9686 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_5939) (o_2@@41 T@Ref) (f_4@@41 T@Field_9305_1189) ) (! (= (HasDirectPerm_3194_1189 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_5939_3192_1189#PolymorphicMapType_5939| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3194_1189 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_5939) (o_2@@42 T@Ref) (f_4@@42 T@Field_5978_53) ) (! (= (HasDirectPerm_3194_53 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_5939_3192_53#PolymorphicMapType_5939| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3194_53 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_5939) (o_2@@43 T@Ref) (f_4@@43 T@Field_5991_5992) ) (! (= (HasDirectPerm_3194_3195 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_5939_3194_3195#PolymorphicMapType_5939| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3194_3195 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5918) (ExhaleHeap@@7 T@PolymorphicMapType_5918) (Mask@@38 T@PolymorphicMapType_5939) (o_4@@0 T@Ref) (f_9 T@Field_15144_15149) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_13437_21086 Mask@@38 o_4@@0 f_9) (= (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@14) o_4@@0 f_9) (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| ExhaleHeap@@7) o_4@@0 f_9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| ExhaleHeap@@7) o_4@@0 f_9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5918) (ExhaleHeap@@8 T@PolymorphicMapType_5918) (Mask@@39 T@PolymorphicMapType_5939) (o_4@@1 T@Ref) (f_9@@0 T@Field_13437_13438) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_13437_9686 Mask@@39 o_4@@1 f_9@@0) (= (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@15) o_4@@1 f_9@@0) (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| ExhaleHeap@@8) o_4@@1 f_9@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| ExhaleHeap@@8) o_4@@1 f_9@@0))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5918) (ExhaleHeap@@9 T@PolymorphicMapType_5918) (Mask@@40 T@PolymorphicMapType_5939) (o_4@@2 T@Ref) (f_9@@1 T@Field_13437_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_13437_1189 Mask@@40 o_4@@2 f_9@@1) (= (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@16) o_4@@2 f_9@@1) (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| ExhaleHeap@@9) o_4@@2 f_9@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| ExhaleHeap@@9) o_4@@2 f_9@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5918) (ExhaleHeap@@10 T@PolymorphicMapType_5918) (Mask@@41 T@PolymorphicMapType_5939) (o_4@@3 T@Ref) (f_9@@2 T@Field_13437_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_13437_53 Mask@@41 o_4@@3 f_9@@2) (= (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@17) o_4@@3 f_9@@2) (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| ExhaleHeap@@10) o_4@@3 f_9@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| ExhaleHeap@@10) o_4@@3 f_9@@2))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5918) (ExhaleHeap@@11 T@PolymorphicMapType_5918) (Mask@@42 T@PolymorphicMapType_5939) (o_4@@4 T@Ref) (f_9@@3 T@Field_13437_3195) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_13437_3195 Mask@@42 o_4@@4 f_9@@3) (= (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@18) o_4@@4 f_9@@3) (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| ExhaleHeap@@11) o_4@@4 f_9@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| ExhaleHeap@@11) o_4@@4 f_9@@3))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5918) (ExhaleHeap@@12 T@PolymorphicMapType_5918) (Mask@@43 T@PolymorphicMapType_5939) (o_4@@5 T@Ref) (f_9@@4 T@Field_12187_12192) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_9685_19968 Mask@@43 o_4@@5 f_9@@4) (= (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@19) o_4@@5 f_9@@4) (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| ExhaleHeap@@12) o_4@@5 f_9@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| ExhaleHeap@@12) o_4@@5 f_9@@4))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5918) (ExhaleHeap@@13 T@PolymorphicMapType_5918) (Mask@@44 T@PolymorphicMapType_5939) (o_4@@6 T@Ref) (f_9@@5 T@Field_9685_9686) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_9685_9686 Mask@@44 o_4@@6 f_9@@5) (= (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@20) o_4@@6 f_9@@5) (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| ExhaleHeap@@13) o_4@@6 f_9@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| ExhaleHeap@@13) o_4@@6 f_9@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5918) (ExhaleHeap@@14 T@PolymorphicMapType_5918) (Mask@@45 T@PolymorphicMapType_5939) (o_4@@7 T@Ref) (f_9@@6 T@Field_9685_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_9685_1189 Mask@@45 o_4@@7 f_9@@6) (= (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@21) o_4@@7 f_9@@6) (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| ExhaleHeap@@14) o_4@@7 f_9@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| ExhaleHeap@@14) o_4@@7 f_9@@6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5918) (ExhaleHeap@@15 T@PolymorphicMapType_5918) (Mask@@46 T@PolymorphicMapType_5939) (o_4@@8 T@Ref) (f_9@@7 T@Field_9685_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_9685_53 Mask@@46 o_4@@8 f_9@@7) (= (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@22) o_4@@8 f_9@@7) (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| ExhaleHeap@@15) o_4@@8 f_9@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| ExhaleHeap@@15) o_4@@8 f_9@@7))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5918) (ExhaleHeap@@16 T@PolymorphicMapType_5918) (Mask@@47 T@PolymorphicMapType_5939) (o_4@@9 T@Ref) (f_9@@8 T@Field_9685_3195) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_9685_3195 Mask@@47 o_4@@9 f_9@@8) (= (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@23) o_4@@9 f_9@@8) (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| ExhaleHeap@@16) o_4@@9 f_9@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| ExhaleHeap@@16) o_4@@9 f_9@@8))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5918) (ExhaleHeap@@17 T@PolymorphicMapType_5918) (Mask@@48 T@PolymorphicMapType_5939) (o_4@@10 T@Ref) (f_9@@9 T@Field_3194_12192) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_3194_18807 Mask@@48 o_4@@10 f_9@@9) (= (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@24) o_4@@10 f_9@@9) (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| ExhaleHeap@@17) o_4@@10 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| ExhaleHeap@@17) o_4@@10 f_9@@9))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5918) (ExhaleHeap@@18 T@PolymorphicMapType_5918) (Mask@@49 T@PolymorphicMapType_5939) (o_4@@11 T@Ref) (f_9@@10 T@Field_3194_9686) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_3194_9686 Mask@@49 o_4@@11 f_9@@10) (= (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@25) o_4@@11 f_9@@10) (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| ExhaleHeap@@18) o_4@@11 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| ExhaleHeap@@18) o_4@@11 f_9@@10))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5918) (ExhaleHeap@@19 T@PolymorphicMapType_5918) (Mask@@50 T@PolymorphicMapType_5939) (o_4@@12 T@Ref) (f_9@@11 T@Field_9305_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_3194_1189 Mask@@50 o_4@@12 f_9@@11) (= (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@26) o_4@@12 f_9@@11) (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| ExhaleHeap@@19) o_4@@12 f_9@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| ExhaleHeap@@19) o_4@@12 f_9@@11))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5918) (ExhaleHeap@@20 T@PolymorphicMapType_5918) (Mask@@51 T@PolymorphicMapType_5939) (o_4@@13 T@Ref) (f_9@@12 T@Field_5978_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_3194_53 Mask@@51 o_4@@13 f_9@@12) (= (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@27) o_4@@13 f_9@@12) (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| ExhaleHeap@@20) o_4@@13 f_9@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| ExhaleHeap@@20) o_4@@13 f_9@@12))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5918) (ExhaleHeap@@21 T@PolymorphicMapType_5918) (Mask@@52 T@PolymorphicMapType_5939) (o_4@@14 T@Ref) (f_9@@13 T@Field_5991_5992) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_3194_3195 Mask@@52 o_4@@14 f_9@@13) (= (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@28) o_4@@14 f_9@@13) (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| ExhaleHeap@@21) o_4@@14 f_9@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| ExhaleHeap@@21) o_4@@14 f_9@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_15144_15149) ) (! (= (select (|PolymorphicMapType_5939_3283_33860#PolymorphicMapType_5939| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5939_3283_33860#PolymorphicMapType_5939| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_13437_53) ) (! (= (select (|PolymorphicMapType_5939_3283_53#PolymorphicMapType_5939| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5939_3283_53#PolymorphicMapType_5939| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_13437_3195) ) (! (= (select (|PolymorphicMapType_5939_3283_3195#PolymorphicMapType_5939| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5939_3283_3195#PolymorphicMapType_5939| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_13437_1189) ) (! (= (select (|PolymorphicMapType_5939_3283_1189#PolymorphicMapType_5939| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5939_3283_1189#PolymorphicMapType_5939| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_13437_13438) ) (! (= (select (|PolymorphicMapType_5939_3283_3284#PolymorphicMapType_5939| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5939_3283_3284#PolymorphicMapType_5939| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_3194_12192) ) (! (= (select (|PolymorphicMapType_5939_3192_33449#PolymorphicMapType_5939| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5939_3192_33449#PolymorphicMapType_5939| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_5978_53) ) (! (= (select (|PolymorphicMapType_5939_3192_53#PolymorphicMapType_5939| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5939_3192_53#PolymorphicMapType_5939| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_5991_5992) ) (! (= (select (|PolymorphicMapType_5939_3194_3195#PolymorphicMapType_5939| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5939_3194_3195#PolymorphicMapType_5939| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_9305_1189) ) (! (= (select (|PolymorphicMapType_5939_3192_1189#PolymorphicMapType_5939| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5939_3192_1189#PolymorphicMapType_5939| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_3194_9686) ) (! (= (select (|PolymorphicMapType_5939_3192_3259#PolymorphicMapType_5939| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5939_3192_3259#PolymorphicMapType_5939| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_12187_12192) ) (! (= (select (|PolymorphicMapType_5939_3258_33050#PolymorphicMapType_5939| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5939_3258_33050#PolymorphicMapType_5939| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_9685_53) ) (! (= (select (|PolymorphicMapType_5939_3258_53#PolymorphicMapType_5939| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5939_3258_53#PolymorphicMapType_5939| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_9685_3195) ) (! (= (select (|PolymorphicMapType_5939_3258_3195#PolymorphicMapType_5939| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5939_3258_3195#PolymorphicMapType_5939| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_9685_1189) ) (! (= (select (|PolymorphicMapType_5939_3258_1189#PolymorphicMapType_5939| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5939_3258_1189#PolymorphicMapType_5939| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_9685_9686) ) (! (= (select (|PolymorphicMapType_5939_3258_3259#PolymorphicMapType_5939| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5939_3258_3259#PolymorphicMapType_5939| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5939) (SummandMask1 T@PolymorphicMapType_5939) (SummandMask2 T@PolymorphicMapType_5939) (o_2@@59 T@Ref) (f_4@@59 T@Field_15144_15149) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5939_3283_33860#PolymorphicMapType_5939| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_5939_3283_33860#PolymorphicMapType_5939| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_5939_3283_33860#PolymorphicMapType_5939| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5939_3283_33860#PolymorphicMapType_5939| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5939_3283_33860#PolymorphicMapType_5939| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5939_3283_33860#PolymorphicMapType_5939| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5939) (SummandMask1@@0 T@PolymorphicMapType_5939) (SummandMask2@@0 T@PolymorphicMapType_5939) (o_2@@60 T@Ref) (f_4@@60 T@Field_13437_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5939_3283_53#PolymorphicMapType_5939| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_5939_3283_53#PolymorphicMapType_5939| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_5939_3283_53#PolymorphicMapType_5939| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5939_3283_53#PolymorphicMapType_5939| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5939_3283_53#PolymorphicMapType_5939| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5939_3283_53#PolymorphicMapType_5939| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5939) (SummandMask1@@1 T@PolymorphicMapType_5939) (SummandMask2@@1 T@PolymorphicMapType_5939) (o_2@@61 T@Ref) (f_4@@61 T@Field_13437_3195) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5939_3283_3195#PolymorphicMapType_5939| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_5939_3283_3195#PolymorphicMapType_5939| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_5939_3283_3195#PolymorphicMapType_5939| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5939_3283_3195#PolymorphicMapType_5939| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5939_3283_3195#PolymorphicMapType_5939| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5939_3283_3195#PolymorphicMapType_5939| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5939) (SummandMask1@@2 T@PolymorphicMapType_5939) (SummandMask2@@2 T@PolymorphicMapType_5939) (o_2@@62 T@Ref) (f_4@@62 T@Field_13437_1189) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5939_3283_1189#PolymorphicMapType_5939| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_5939_3283_1189#PolymorphicMapType_5939| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_5939_3283_1189#PolymorphicMapType_5939| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5939_3283_1189#PolymorphicMapType_5939| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5939_3283_1189#PolymorphicMapType_5939| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5939_3283_1189#PolymorphicMapType_5939| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5939) (SummandMask1@@3 T@PolymorphicMapType_5939) (SummandMask2@@3 T@PolymorphicMapType_5939) (o_2@@63 T@Ref) (f_4@@63 T@Field_13437_13438) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5939_3283_3284#PolymorphicMapType_5939| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_5939_3283_3284#PolymorphicMapType_5939| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_5939_3283_3284#PolymorphicMapType_5939| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5939_3283_3284#PolymorphicMapType_5939| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5939_3283_3284#PolymorphicMapType_5939| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5939_3283_3284#PolymorphicMapType_5939| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_5939) (SummandMask1@@4 T@PolymorphicMapType_5939) (SummandMask2@@4 T@PolymorphicMapType_5939) (o_2@@64 T@Ref) (f_4@@64 T@Field_3194_12192) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_5939_3192_33449#PolymorphicMapType_5939| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_5939_3192_33449#PolymorphicMapType_5939| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_5939_3192_33449#PolymorphicMapType_5939| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5939_3192_33449#PolymorphicMapType_5939| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5939_3192_33449#PolymorphicMapType_5939| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5939_3192_33449#PolymorphicMapType_5939| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_5939) (SummandMask1@@5 T@PolymorphicMapType_5939) (SummandMask2@@5 T@PolymorphicMapType_5939) (o_2@@65 T@Ref) (f_4@@65 T@Field_5978_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_5939_3192_53#PolymorphicMapType_5939| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_5939_3192_53#PolymorphicMapType_5939| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_5939_3192_53#PolymorphicMapType_5939| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5939_3192_53#PolymorphicMapType_5939| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5939_3192_53#PolymorphicMapType_5939| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5939_3192_53#PolymorphicMapType_5939| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_5939) (SummandMask1@@6 T@PolymorphicMapType_5939) (SummandMask2@@6 T@PolymorphicMapType_5939) (o_2@@66 T@Ref) (f_4@@66 T@Field_5991_5992) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_5939_3194_3195#PolymorphicMapType_5939| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_5939_3194_3195#PolymorphicMapType_5939| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_5939_3194_3195#PolymorphicMapType_5939| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5939_3194_3195#PolymorphicMapType_5939| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5939_3194_3195#PolymorphicMapType_5939| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5939_3194_3195#PolymorphicMapType_5939| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_5939) (SummandMask1@@7 T@PolymorphicMapType_5939) (SummandMask2@@7 T@PolymorphicMapType_5939) (o_2@@67 T@Ref) (f_4@@67 T@Field_9305_1189) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_5939_3192_1189#PolymorphicMapType_5939| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_5939_3192_1189#PolymorphicMapType_5939| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_5939_3192_1189#PolymorphicMapType_5939| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5939_3192_1189#PolymorphicMapType_5939| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5939_3192_1189#PolymorphicMapType_5939| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5939_3192_1189#PolymorphicMapType_5939| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_5939) (SummandMask1@@8 T@PolymorphicMapType_5939) (SummandMask2@@8 T@PolymorphicMapType_5939) (o_2@@68 T@Ref) (f_4@@68 T@Field_3194_9686) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_5939_3192_3259#PolymorphicMapType_5939| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_5939_3192_3259#PolymorphicMapType_5939| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_5939_3192_3259#PolymorphicMapType_5939| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5939_3192_3259#PolymorphicMapType_5939| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5939_3192_3259#PolymorphicMapType_5939| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5939_3192_3259#PolymorphicMapType_5939| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_5939) (SummandMask1@@9 T@PolymorphicMapType_5939) (SummandMask2@@9 T@PolymorphicMapType_5939) (o_2@@69 T@Ref) (f_4@@69 T@Field_12187_12192) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_5939_3258_33050#PolymorphicMapType_5939| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_5939_3258_33050#PolymorphicMapType_5939| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_5939_3258_33050#PolymorphicMapType_5939| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5939_3258_33050#PolymorphicMapType_5939| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5939_3258_33050#PolymorphicMapType_5939| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5939_3258_33050#PolymorphicMapType_5939| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_5939) (SummandMask1@@10 T@PolymorphicMapType_5939) (SummandMask2@@10 T@PolymorphicMapType_5939) (o_2@@70 T@Ref) (f_4@@70 T@Field_9685_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_5939_3258_53#PolymorphicMapType_5939| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_5939_3258_53#PolymorphicMapType_5939| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_5939_3258_53#PolymorphicMapType_5939| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5939_3258_53#PolymorphicMapType_5939| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5939_3258_53#PolymorphicMapType_5939| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5939_3258_53#PolymorphicMapType_5939| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_5939) (SummandMask1@@11 T@PolymorphicMapType_5939) (SummandMask2@@11 T@PolymorphicMapType_5939) (o_2@@71 T@Ref) (f_4@@71 T@Field_9685_3195) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_5939_3258_3195#PolymorphicMapType_5939| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_5939_3258_3195#PolymorphicMapType_5939| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_5939_3258_3195#PolymorphicMapType_5939| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5939_3258_3195#PolymorphicMapType_5939| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5939_3258_3195#PolymorphicMapType_5939| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5939_3258_3195#PolymorphicMapType_5939| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_5939) (SummandMask1@@12 T@PolymorphicMapType_5939) (SummandMask2@@12 T@PolymorphicMapType_5939) (o_2@@72 T@Ref) (f_4@@72 T@Field_9685_1189) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_5939_3258_1189#PolymorphicMapType_5939| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_5939_3258_1189#PolymorphicMapType_5939| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_5939_3258_1189#PolymorphicMapType_5939| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5939_3258_1189#PolymorphicMapType_5939| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5939_3258_1189#PolymorphicMapType_5939| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5939_3258_1189#PolymorphicMapType_5939| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_5939) (SummandMask1@@13 T@PolymorphicMapType_5939) (SummandMask2@@13 T@PolymorphicMapType_5939) (o_2@@73 T@Ref) (f_4@@73 T@Field_9685_9686) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_5939_3258_3259#PolymorphicMapType_5939| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_5939_3258_3259#PolymorphicMapType_5939| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_5939_3258_3259#PolymorphicMapType_5939| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5939_3258_3259#PolymorphicMapType_5939| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5939_3258_3259#PolymorphicMapType_5939| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5939_3258_3259#PolymorphicMapType_5939| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5918) (ExhaleHeap@@22 T@PolymorphicMapType_5918) (Mask@@53 T@PolymorphicMapType_5939) (pm_f_1@@5 T@Field_13437_13438) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_13437_9686 Mask@@53 null pm_f_1@@5) (IsPredicateField_3283_3284 pm_f_1@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1 T@Ref) (f_9@@14 T@Field_9305_1189) ) (!  (=> (select (|PolymorphicMapType_6467_3192_1189#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@29) null (PredicateMaskField_3283 pm_f_1@@5))) o2_1 f_9@@14) (= (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@29) o2_1 f_9@@14) (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1 f_9@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1 f_9@@14))
)) (forall ((o2_1@@0 T@Ref) (f_9@@15 T@Field_5991_5992) ) (!  (=> (select (|PolymorphicMapType_6467_3194_3195#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@29) null (PredicateMaskField_3283 pm_f_1@@5))) o2_1@@0 f_9@@15) (= (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@29) o2_1@@0 f_9@@15) (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@0 f_9@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@0 f_9@@15))
))) (forall ((o2_1@@1 T@Ref) (f_9@@16 T@Field_5978_53) ) (!  (=> (select (|PolymorphicMapType_6467_3192_53#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@29) null (PredicateMaskField_3283 pm_f_1@@5))) o2_1@@1 f_9@@16) (= (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@29) o2_1@@1 f_9@@16) (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@1 f_9@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@1 f_9@@16))
))) (forall ((o2_1@@2 T@Ref) (f_9@@17 T@Field_3194_9686) ) (!  (=> (select (|PolymorphicMapType_6467_3192_9686#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@29) null (PredicateMaskField_3283 pm_f_1@@5))) o2_1@@2 f_9@@17) (= (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@29) o2_1@@2 f_9@@17) (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@2 f_9@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@2 f_9@@17))
))) (forall ((o2_1@@3 T@Ref) (f_9@@18 T@Field_3194_12192) ) (!  (=> (select (|PolymorphicMapType_6467_3192_23113#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@29) null (PredicateMaskField_3283 pm_f_1@@5))) o2_1@@3 f_9@@18) (= (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@29) o2_1@@3 f_9@@18) (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@3 f_9@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@3 f_9@@18))
))) (forall ((o2_1@@4 T@Ref) (f_9@@19 T@Field_9685_1189) ) (!  (=> (select (|PolymorphicMapType_6467_9685_1189#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@29) null (PredicateMaskField_3283 pm_f_1@@5))) o2_1@@4 f_9@@19) (= (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@29) o2_1@@4 f_9@@19) (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@4 f_9@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@4 f_9@@19))
))) (forall ((o2_1@@5 T@Ref) (f_9@@20 T@Field_9685_3195) ) (!  (=> (select (|PolymorphicMapType_6467_9685_3195#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@29) null (PredicateMaskField_3283 pm_f_1@@5))) o2_1@@5 f_9@@20) (= (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@29) o2_1@@5 f_9@@20) (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@5 f_9@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@5 f_9@@20))
))) (forall ((o2_1@@6 T@Ref) (f_9@@21 T@Field_9685_53) ) (!  (=> (select (|PolymorphicMapType_6467_9685_53#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@29) null (PredicateMaskField_3283 pm_f_1@@5))) o2_1@@6 f_9@@21) (= (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@29) o2_1@@6 f_9@@21) (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@6 f_9@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@6 f_9@@21))
))) (forall ((o2_1@@7 T@Ref) (f_9@@22 T@Field_9685_9686) ) (!  (=> (select (|PolymorphicMapType_6467_9685_9686#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@29) null (PredicateMaskField_3283 pm_f_1@@5))) o2_1@@7 f_9@@22) (= (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@29) o2_1@@7 f_9@@22) (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@7 f_9@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@7 f_9@@22))
))) (forall ((o2_1@@8 T@Ref) (f_9@@23 T@Field_12187_12192) ) (!  (=> (select (|PolymorphicMapType_6467_9685_24161#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@29) null (PredicateMaskField_3283 pm_f_1@@5))) o2_1@@8 f_9@@23) (= (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@29) o2_1@@8 f_9@@23) (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@8 f_9@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@8 f_9@@23))
))) (forall ((o2_1@@9 T@Ref) (f_9@@24 T@Field_13437_1189) ) (!  (=> (select (|PolymorphicMapType_6467_13437_1189#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@29) null (PredicateMaskField_3283 pm_f_1@@5))) o2_1@@9 f_9@@24) (= (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@29) o2_1@@9 f_9@@24) (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@9 f_9@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@9 f_9@@24))
))) (forall ((o2_1@@10 T@Ref) (f_9@@25 T@Field_13437_3195) ) (!  (=> (select (|PolymorphicMapType_6467_13437_3195#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@29) null (PredicateMaskField_3283 pm_f_1@@5))) o2_1@@10 f_9@@25) (= (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@29) o2_1@@10 f_9@@25) (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@10 f_9@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@10 f_9@@25))
))) (forall ((o2_1@@11 T@Ref) (f_9@@26 T@Field_13437_53) ) (!  (=> (select (|PolymorphicMapType_6467_13437_53#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@29) null (PredicateMaskField_3283 pm_f_1@@5))) o2_1@@11 f_9@@26) (= (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@29) o2_1@@11 f_9@@26) (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@11 f_9@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@11 f_9@@26))
))) (forall ((o2_1@@12 T@Ref) (f_9@@27 T@Field_13437_13438) ) (!  (=> (select (|PolymorphicMapType_6467_13437_9686#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@29) null (PredicateMaskField_3283 pm_f_1@@5))) o2_1@@12 f_9@@27) (= (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@29) o2_1@@12 f_9@@27) (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@12 f_9@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@12 f_9@@27))
))) (forall ((o2_1@@13 T@Ref) (f_9@@28 T@Field_15144_15149) ) (!  (=> (select (|PolymorphicMapType_6467_13437_25209#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@29) null (PredicateMaskField_3283 pm_f_1@@5))) o2_1@@13 f_9@@28) (= (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@29) o2_1@@13 f_9@@28) (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@13 f_9@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| ExhaleHeap@@22) o2_1@@13 f_9@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@22 Mask@@53) (IsPredicateField_3283_3284 pm_f_1@@5))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5918) (ExhaleHeap@@23 T@PolymorphicMapType_5918) (Mask@@54 T@PolymorphicMapType_5939) (pm_f_1@@6 T@Field_9685_9686) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_9685_9686 Mask@@54 null pm_f_1@@6) (IsPredicateField_3258_3259 pm_f_1@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@14 T@Ref) (f_9@@29 T@Field_9305_1189) ) (!  (=> (select (|PolymorphicMapType_6467_3192_1189#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@30) null (PredicateMaskField_3258 pm_f_1@@6))) o2_1@@14 f_9@@29) (= (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@30) o2_1@@14 f_9@@29) (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@14 f_9@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@14 f_9@@29))
)) (forall ((o2_1@@15 T@Ref) (f_9@@30 T@Field_5991_5992) ) (!  (=> (select (|PolymorphicMapType_6467_3194_3195#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@30) null (PredicateMaskField_3258 pm_f_1@@6))) o2_1@@15 f_9@@30) (= (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@30) o2_1@@15 f_9@@30) (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@15 f_9@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@15 f_9@@30))
))) (forall ((o2_1@@16 T@Ref) (f_9@@31 T@Field_5978_53) ) (!  (=> (select (|PolymorphicMapType_6467_3192_53#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@30) null (PredicateMaskField_3258 pm_f_1@@6))) o2_1@@16 f_9@@31) (= (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@30) o2_1@@16 f_9@@31) (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@16 f_9@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@16 f_9@@31))
))) (forall ((o2_1@@17 T@Ref) (f_9@@32 T@Field_3194_9686) ) (!  (=> (select (|PolymorphicMapType_6467_3192_9686#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@30) null (PredicateMaskField_3258 pm_f_1@@6))) o2_1@@17 f_9@@32) (= (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@30) o2_1@@17 f_9@@32) (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@17 f_9@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@17 f_9@@32))
))) (forall ((o2_1@@18 T@Ref) (f_9@@33 T@Field_3194_12192) ) (!  (=> (select (|PolymorphicMapType_6467_3192_23113#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@30) null (PredicateMaskField_3258 pm_f_1@@6))) o2_1@@18 f_9@@33) (= (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@30) o2_1@@18 f_9@@33) (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@18 f_9@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@18 f_9@@33))
))) (forall ((o2_1@@19 T@Ref) (f_9@@34 T@Field_9685_1189) ) (!  (=> (select (|PolymorphicMapType_6467_9685_1189#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@30) null (PredicateMaskField_3258 pm_f_1@@6))) o2_1@@19 f_9@@34) (= (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@30) o2_1@@19 f_9@@34) (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@19 f_9@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@19 f_9@@34))
))) (forall ((o2_1@@20 T@Ref) (f_9@@35 T@Field_9685_3195) ) (!  (=> (select (|PolymorphicMapType_6467_9685_3195#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@30) null (PredicateMaskField_3258 pm_f_1@@6))) o2_1@@20 f_9@@35) (= (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@30) o2_1@@20 f_9@@35) (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@20 f_9@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@20 f_9@@35))
))) (forall ((o2_1@@21 T@Ref) (f_9@@36 T@Field_9685_53) ) (!  (=> (select (|PolymorphicMapType_6467_9685_53#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@30) null (PredicateMaskField_3258 pm_f_1@@6))) o2_1@@21 f_9@@36) (= (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@30) o2_1@@21 f_9@@36) (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@21 f_9@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@21 f_9@@36))
))) (forall ((o2_1@@22 T@Ref) (f_9@@37 T@Field_9685_9686) ) (!  (=> (select (|PolymorphicMapType_6467_9685_9686#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@30) null (PredicateMaskField_3258 pm_f_1@@6))) o2_1@@22 f_9@@37) (= (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@30) o2_1@@22 f_9@@37) (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@22 f_9@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@22 f_9@@37))
))) (forall ((o2_1@@23 T@Ref) (f_9@@38 T@Field_12187_12192) ) (!  (=> (select (|PolymorphicMapType_6467_9685_24161#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@30) null (PredicateMaskField_3258 pm_f_1@@6))) o2_1@@23 f_9@@38) (= (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@30) o2_1@@23 f_9@@38) (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@23 f_9@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@23 f_9@@38))
))) (forall ((o2_1@@24 T@Ref) (f_9@@39 T@Field_13437_1189) ) (!  (=> (select (|PolymorphicMapType_6467_13437_1189#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@30) null (PredicateMaskField_3258 pm_f_1@@6))) o2_1@@24 f_9@@39) (= (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@30) o2_1@@24 f_9@@39) (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@24 f_9@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@24 f_9@@39))
))) (forall ((o2_1@@25 T@Ref) (f_9@@40 T@Field_13437_3195) ) (!  (=> (select (|PolymorphicMapType_6467_13437_3195#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@30) null (PredicateMaskField_3258 pm_f_1@@6))) o2_1@@25 f_9@@40) (= (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@30) o2_1@@25 f_9@@40) (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@25 f_9@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@25 f_9@@40))
))) (forall ((o2_1@@26 T@Ref) (f_9@@41 T@Field_13437_53) ) (!  (=> (select (|PolymorphicMapType_6467_13437_53#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@30) null (PredicateMaskField_3258 pm_f_1@@6))) o2_1@@26 f_9@@41) (= (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@30) o2_1@@26 f_9@@41) (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@26 f_9@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@26 f_9@@41))
))) (forall ((o2_1@@27 T@Ref) (f_9@@42 T@Field_13437_13438) ) (!  (=> (select (|PolymorphicMapType_6467_13437_9686#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@30) null (PredicateMaskField_3258 pm_f_1@@6))) o2_1@@27 f_9@@42) (= (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@30) o2_1@@27 f_9@@42) (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@27 f_9@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@27 f_9@@42))
))) (forall ((o2_1@@28 T@Ref) (f_9@@43 T@Field_15144_15149) ) (!  (=> (select (|PolymorphicMapType_6467_13437_25209#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@30) null (PredicateMaskField_3258 pm_f_1@@6))) o2_1@@28 f_9@@43) (= (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@30) o2_1@@28 f_9@@43) (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@28 f_9@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| ExhaleHeap@@23) o2_1@@28 f_9@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@23 Mask@@54) (IsPredicateField_3258_3259 pm_f_1@@6))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_5918) (ExhaleHeap@@24 T@PolymorphicMapType_5918) (Mask@@55 T@PolymorphicMapType_5939) (pm_f_1@@7 T@Field_3194_9686) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_3194_9686 Mask@@55 null pm_f_1@@7) (IsPredicateField_3194_21331 pm_f_1@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@29 T@Ref) (f_9@@44 T@Field_9305_1189) ) (!  (=> (select (|PolymorphicMapType_6467_3192_1189#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@31) null (PredicateMaskField_3194 pm_f_1@@7))) o2_1@@29 f_9@@44) (= (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@31) o2_1@@29 f_9@@44) (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@29 f_9@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@29 f_9@@44))
)) (forall ((o2_1@@30 T@Ref) (f_9@@45 T@Field_5991_5992) ) (!  (=> (select (|PolymorphicMapType_6467_3194_3195#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@31) null (PredicateMaskField_3194 pm_f_1@@7))) o2_1@@30 f_9@@45) (= (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@31) o2_1@@30 f_9@@45) (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@30 f_9@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@30 f_9@@45))
))) (forall ((o2_1@@31 T@Ref) (f_9@@46 T@Field_5978_53) ) (!  (=> (select (|PolymorphicMapType_6467_3192_53#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@31) null (PredicateMaskField_3194 pm_f_1@@7))) o2_1@@31 f_9@@46) (= (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@31) o2_1@@31 f_9@@46) (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@31 f_9@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@31 f_9@@46))
))) (forall ((o2_1@@32 T@Ref) (f_9@@47 T@Field_3194_9686) ) (!  (=> (select (|PolymorphicMapType_6467_3192_9686#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@31) null (PredicateMaskField_3194 pm_f_1@@7))) o2_1@@32 f_9@@47) (= (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@31) o2_1@@32 f_9@@47) (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@32 f_9@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@32 f_9@@47))
))) (forall ((o2_1@@33 T@Ref) (f_9@@48 T@Field_3194_12192) ) (!  (=> (select (|PolymorphicMapType_6467_3192_23113#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@31) null (PredicateMaskField_3194 pm_f_1@@7))) o2_1@@33 f_9@@48) (= (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@31) o2_1@@33 f_9@@48) (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@33 f_9@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@33 f_9@@48))
))) (forall ((o2_1@@34 T@Ref) (f_9@@49 T@Field_9685_1189) ) (!  (=> (select (|PolymorphicMapType_6467_9685_1189#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@31) null (PredicateMaskField_3194 pm_f_1@@7))) o2_1@@34 f_9@@49) (= (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@31) o2_1@@34 f_9@@49) (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@34 f_9@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@34 f_9@@49))
))) (forall ((o2_1@@35 T@Ref) (f_9@@50 T@Field_9685_3195) ) (!  (=> (select (|PolymorphicMapType_6467_9685_3195#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@31) null (PredicateMaskField_3194 pm_f_1@@7))) o2_1@@35 f_9@@50) (= (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@31) o2_1@@35 f_9@@50) (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@35 f_9@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@35 f_9@@50))
))) (forall ((o2_1@@36 T@Ref) (f_9@@51 T@Field_9685_53) ) (!  (=> (select (|PolymorphicMapType_6467_9685_53#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@31) null (PredicateMaskField_3194 pm_f_1@@7))) o2_1@@36 f_9@@51) (= (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@31) o2_1@@36 f_9@@51) (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@36 f_9@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@36 f_9@@51))
))) (forall ((o2_1@@37 T@Ref) (f_9@@52 T@Field_9685_9686) ) (!  (=> (select (|PolymorphicMapType_6467_9685_9686#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@31) null (PredicateMaskField_3194 pm_f_1@@7))) o2_1@@37 f_9@@52) (= (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@31) o2_1@@37 f_9@@52) (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@37 f_9@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@37 f_9@@52))
))) (forall ((o2_1@@38 T@Ref) (f_9@@53 T@Field_12187_12192) ) (!  (=> (select (|PolymorphicMapType_6467_9685_24161#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@31) null (PredicateMaskField_3194 pm_f_1@@7))) o2_1@@38 f_9@@53) (= (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@31) o2_1@@38 f_9@@53) (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@38 f_9@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@38 f_9@@53))
))) (forall ((o2_1@@39 T@Ref) (f_9@@54 T@Field_13437_1189) ) (!  (=> (select (|PolymorphicMapType_6467_13437_1189#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@31) null (PredicateMaskField_3194 pm_f_1@@7))) o2_1@@39 f_9@@54) (= (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@31) o2_1@@39 f_9@@54) (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@39 f_9@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@39 f_9@@54))
))) (forall ((o2_1@@40 T@Ref) (f_9@@55 T@Field_13437_3195) ) (!  (=> (select (|PolymorphicMapType_6467_13437_3195#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@31) null (PredicateMaskField_3194 pm_f_1@@7))) o2_1@@40 f_9@@55) (= (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@31) o2_1@@40 f_9@@55) (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@40 f_9@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@40 f_9@@55))
))) (forall ((o2_1@@41 T@Ref) (f_9@@56 T@Field_13437_53) ) (!  (=> (select (|PolymorphicMapType_6467_13437_53#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@31) null (PredicateMaskField_3194 pm_f_1@@7))) o2_1@@41 f_9@@56) (= (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@31) o2_1@@41 f_9@@56) (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@41 f_9@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@41 f_9@@56))
))) (forall ((o2_1@@42 T@Ref) (f_9@@57 T@Field_13437_13438) ) (!  (=> (select (|PolymorphicMapType_6467_13437_9686#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@31) null (PredicateMaskField_3194 pm_f_1@@7))) o2_1@@42 f_9@@57) (= (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@31) o2_1@@42 f_9@@57) (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@42 f_9@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@42 f_9@@57))
))) (forall ((o2_1@@43 T@Ref) (f_9@@58 T@Field_15144_15149) ) (!  (=> (select (|PolymorphicMapType_6467_13437_25209#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@31) null (PredicateMaskField_3194 pm_f_1@@7))) o2_1@@43 f_9@@58) (= (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@31) o2_1@@43 f_9@@58) (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@43 f_9@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| ExhaleHeap@@24) o2_1@@43 f_9@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@24 Mask@@55) (IsPredicateField_3194_21331 pm_f_1@@7))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_5918) (ExhaleHeap@@25 T@PolymorphicMapType_5918) (Mask@@56 T@PolymorphicMapType_5939) (pm_f_1@@8 T@Field_13437_13438) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_13437_9686 Mask@@56 null pm_f_1@@8) (IsWandField_13437_27012 pm_f_1@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@44 T@Ref) (f_9@@59 T@Field_9305_1189) ) (!  (=> (select (|PolymorphicMapType_6467_3192_1189#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@32) null (WandMaskField_13437 pm_f_1@@8))) o2_1@@44 f_9@@59) (= (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@32) o2_1@@44 f_9@@59) (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@44 f_9@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@44 f_9@@59))
)) (forall ((o2_1@@45 T@Ref) (f_9@@60 T@Field_5991_5992) ) (!  (=> (select (|PolymorphicMapType_6467_3194_3195#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@32) null (WandMaskField_13437 pm_f_1@@8))) o2_1@@45 f_9@@60) (= (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@32) o2_1@@45 f_9@@60) (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@45 f_9@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@45 f_9@@60))
))) (forall ((o2_1@@46 T@Ref) (f_9@@61 T@Field_5978_53) ) (!  (=> (select (|PolymorphicMapType_6467_3192_53#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@32) null (WandMaskField_13437 pm_f_1@@8))) o2_1@@46 f_9@@61) (= (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@32) o2_1@@46 f_9@@61) (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@46 f_9@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@46 f_9@@61))
))) (forall ((o2_1@@47 T@Ref) (f_9@@62 T@Field_3194_9686) ) (!  (=> (select (|PolymorphicMapType_6467_3192_9686#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@32) null (WandMaskField_13437 pm_f_1@@8))) o2_1@@47 f_9@@62) (= (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@32) o2_1@@47 f_9@@62) (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@47 f_9@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@47 f_9@@62))
))) (forall ((o2_1@@48 T@Ref) (f_9@@63 T@Field_3194_12192) ) (!  (=> (select (|PolymorphicMapType_6467_3192_23113#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@32) null (WandMaskField_13437 pm_f_1@@8))) o2_1@@48 f_9@@63) (= (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@32) o2_1@@48 f_9@@63) (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@48 f_9@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@48 f_9@@63))
))) (forall ((o2_1@@49 T@Ref) (f_9@@64 T@Field_9685_1189) ) (!  (=> (select (|PolymorphicMapType_6467_9685_1189#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@32) null (WandMaskField_13437 pm_f_1@@8))) o2_1@@49 f_9@@64) (= (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@32) o2_1@@49 f_9@@64) (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@49 f_9@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@49 f_9@@64))
))) (forall ((o2_1@@50 T@Ref) (f_9@@65 T@Field_9685_3195) ) (!  (=> (select (|PolymorphicMapType_6467_9685_3195#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@32) null (WandMaskField_13437 pm_f_1@@8))) o2_1@@50 f_9@@65) (= (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@32) o2_1@@50 f_9@@65) (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@50 f_9@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@50 f_9@@65))
))) (forall ((o2_1@@51 T@Ref) (f_9@@66 T@Field_9685_53) ) (!  (=> (select (|PolymorphicMapType_6467_9685_53#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@32) null (WandMaskField_13437 pm_f_1@@8))) o2_1@@51 f_9@@66) (= (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@32) o2_1@@51 f_9@@66) (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@51 f_9@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@51 f_9@@66))
))) (forall ((o2_1@@52 T@Ref) (f_9@@67 T@Field_9685_9686) ) (!  (=> (select (|PolymorphicMapType_6467_9685_9686#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@32) null (WandMaskField_13437 pm_f_1@@8))) o2_1@@52 f_9@@67) (= (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@32) o2_1@@52 f_9@@67) (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@52 f_9@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@52 f_9@@67))
))) (forall ((o2_1@@53 T@Ref) (f_9@@68 T@Field_12187_12192) ) (!  (=> (select (|PolymorphicMapType_6467_9685_24161#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@32) null (WandMaskField_13437 pm_f_1@@8))) o2_1@@53 f_9@@68) (= (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@32) o2_1@@53 f_9@@68) (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@53 f_9@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@53 f_9@@68))
))) (forall ((o2_1@@54 T@Ref) (f_9@@69 T@Field_13437_1189) ) (!  (=> (select (|PolymorphicMapType_6467_13437_1189#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@32) null (WandMaskField_13437 pm_f_1@@8))) o2_1@@54 f_9@@69) (= (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@32) o2_1@@54 f_9@@69) (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@54 f_9@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@54 f_9@@69))
))) (forall ((o2_1@@55 T@Ref) (f_9@@70 T@Field_13437_3195) ) (!  (=> (select (|PolymorphicMapType_6467_13437_3195#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@32) null (WandMaskField_13437 pm_f_1@@8))) o2_1@@55 f_9@@70) (= (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@32) o2_1@@55 f_9@@70) (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@55 f_9@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@55 f_9@@70))
))) (forall ((o2_1@@56 T@Ref) (f_9@@71 T@Field_13437_53) ) (!  (=> (select (|PolymorphicMapType_6467_13437_53#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@32) null (WandMaskField_13437 pm_f_1@@8))) o2_1@@56 f_9@@71) (= (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@32) o2_1@@56 f_9@@71) (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@56 f_9@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@56 f_9@@71))
))) (forall ((o2_1@@57 T@Ref) (f_9@@72 T@Field_13437_13438) ) (!  (=> (select (|PolymorphicMapType_6467_13437_9686#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@32) null (WandMaskField_13437 pm_f_1@@8))) o2_1@@57 f_9@@72) (= (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@32) o2_1@@57 f_9@@72) (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@57 f_9@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@57 f_9@@72))
))) (forall ((o2_1@@58 T@Ref) (f_9@@73 T@Field_15144_15149) ) (!  (=> (select (|PolymorphicMapType_6467_13437_25209#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@32) null (WandMaskField_13437 pm_f_1@@8))) o2_1@@58 f_9@@73) (= (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@32) o2_1@@58 f_9@@73) (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@58 f_9@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| ExhaleHeap@@25) o2_1@@58 f_9@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@25 Mask@@56) (IsWandField_13437_27012 pm_f_1@@8))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_5918) (ExhaleHeap@@26 T@PolymorphicMapType_5918) (Mask@@57 T@PolymorphicMapType_5939) (pm_f_1@@9 T@Field_9685_9686) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_9685_9686 Mask@@57 null pm_f_1@@9) (IsWandField_9685_26655 pm_f_1@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@59 T@Ref) (f_9@@74 T@Field_9305_1189) ) (!  (=> (select (|PolymorphicMapType_6467_3192_1189#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@33) null (WandMaskField_9685 pm_f_1@@9))) o2_1@@59 f_9@@74) (= (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@33) o2_1@@59 f_9@@74) (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@59 f_9@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@59 f_9@@74))
)) (forall ((o2_1@@60 T@Ref) (f_9@@75 T@Field_5991_5992) ) (!  (=> (select (|PolymorphicMapType_6467_3194_3195#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@33) null (WandMaskField_9685 pm_f_1@@9))) o2_1@@60 f_9@@75) (= (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@33) o2_1@@60 f_9@@75) (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@60 f_9@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@60 f_9@@75))
))) (forall ((o2_1@@61 T@Ref) (f_9@@76 T@Field_5978_53) ) (!  (=> (select (|PolymorphicMapType_6467_3192_53#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@33) null (WandMaskField_9685 pm_f_1@@9))) o2_1@@61 f_9@@76) (= (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@33) o2_1@@61 f_9@@76) (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@61 f_9@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@61 f_9@@76))
))) (forall ((o2_1@@62 T@Ref) (f_9@@77 T@Field_3194_9686) ) (!  (=> (select (|PolymorphicMapType_6467_3192_9686#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@33) null (WandMaskField_9685 pm_f_1@@9))) o2_1@@62 f_9@@77) (= (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@33) o2_1@@62 f_9@@77) (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@62 f_9@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@62 f_9@@77))
))) (forall ((o2_1@@63 T@Ref) (f_9@@78 T@Field_3194_12192) ) (!  (=> (select (|PolymorphicMapType_6467_3192_23113#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@33) null (WandMaskField_9685 pm_f_1@@9))) o2_1@@63 f_9@@78) (= (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@33) o2_1@@63 f_9@@78) (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@63 f_9@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@63 f_9@@78))
))) (forall ((o2_1@@64 T@Ref) (f_9@@79 T@Field_9685_1189) ) (!  (=> (select (|PolymorphicMapType_6467_9685_1189#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@33) null (WandMaskField_9685 pm_f_1@@9))) o2_1@@64 f_9@@79) (= (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@33) o2_1@@64 f_9@@79) (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@64 f_9@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@64 f_9@@79))
))) (forall ((o2_1@@65 T@Ref) (f_9@@80 T@Field_9685_3195) ) (!  (=> (select (|PolymorphicMapType_6467_9685_3195#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@33) null (WandMaskField_9685 pm_f_1@@9))) o2_1@@65 f_9@@80) (= (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@33) o2_1@@65 f_9@@80) (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@65 f_9@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@65 f_9@@80))
))) (forall ((o2_1@@66 T@Ref) (f_9@@81 T@Field_9685_53) ) (!  (=> (select (|PolymorphicMapType_6467_9685_53#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@33) null (WandMaskField_9685 pm_f_1@@9))) o2_1@@66 f_9@@81) (= (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@33) o2_1@@66 f_9@@81) (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@66 f_9@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@66 f_9@@81))
))) (forall ((o2_1@@67 T@Ref) (f_9@@82 T@Field_9685_9686) ) (!  (=> (select (|PolymorphicMapType_6467_9685_9686#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@33) null (WandMaskField_9685 pm_f_1@@9))) o2_1@@67 f_9@@82) (= (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@33) o2_1@@67 f_9@@82) (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@67 f_9@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@67 f_9@@82))
))) (forall ((o2_1@@68 T@Ref) (f_9@@83 T@Field_12187_12192) ) (!  (=> (select (|PolymorphicMapType_6467_9685_24161#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@33) null (WandMaskField_9685 pm_f_1@@9))) o2_1@@68 f_9@@83) (= (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@33) o2_1@@68 f_9@@83) (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@68 f_9@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@68 f_9@@83))
))) (forall ((o2_1@@69 T@Ref) (f_9@@84 T@Field_13437_1189) ) (!  (=> (select (|PolymorphicMapType_6467_13437_1189#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@33) null (WandMaskField_9685 pm_f_1@@9))) o2_1@@69 f_9@@84) (= (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@33) o2_1@@69 f_9@@84) (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@69 f_9@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@69 f_9@@84))
))) (forall ((o2_1@@70 T@Ref) (f_9@@85 T@Field_13437_3195) ) (!  (=> (select (|PolymorphicMapType_6467_13437_3195#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@33) null (WandMaskField_9685 pm_f_1@@9))) o2_1@@70 f_9@@85) (= (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@33) o2_1@@70 f_9@@85) (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@70 f_9@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@70 f_9@@85))
))) (forall ((o2_1@@71 T@Ref) (f_9@@86 T@Field_13437_53) ) (!  (=> (select (|PolymorphicMapType_6467_13437_53#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@33) null (WandMaskField_9685 pm_f_1@@9))) o2_1@@71 f_9@@86) (= (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@33) o2_1@@71 f_9@@86) (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@71 f_9@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@71 f_9@@86))
))) (forall ((o2_1@@72 T@Ref) (f_9@@87 T@Field_13437_13438) ) (!  (=> (select (|PolymorphicMapType_6467_13437_9686#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@33) null (WandMaskField_9685 pm_f_1@@9))) o2_1@@72 f_9@@87) (= (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@33) o2_1@@72 f_9@@87) (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@72 f_9@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@72 f_9@@87))
))) (forall ((o2_1@@73 T@Ref) (f_9@@88 T@Field_15144_15149) ) (!  (=> (select (|PolymorphicMapType_6467_13437_25209#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@33) null (WandMaskField_9685 pm_f_1@@9))) o2_1@@73 f_9@@88) (= (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@33) o2_1@@73 f_9@@88) (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@73 f_9@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| ExhaleHeap@@26) o2_1@@73 f_9@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@26 Mask@@57) (IsWandField_9685_26655 pm_f_1@@9))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_5918) (ExhaleHeap@@27 T@PolymorphicMapType_5918) (Mask@@58 T@PolymorphicMapType_5939) (pm_f_1@@10 T@Field_3194_9686) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_3194_9686 Mask@@58 null pm_f_1@@10) (IsWandField_3194_26298 pm_f_1@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_1@@74 T@Ref) (f_9@@89 T@Field_9305_1189) ) (!  (=> (select (|PolymorphicMapType_6467_3192_1189#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@34) null (WandMaskField_3194 pm_f_1@@10))) o2_1@@74 f_9@@89) (= (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@34) o2_1@@74 f_9@@89) (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@74 f_9@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@74 f_9@@89))
)) (forall ((o2_1@@75 T@Ref) (f_9@@90 T@Field_5991_5992) ) (!  (=> (select (|PolymorphicMapType_6467_3194_3195#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@34) null (WandMaskField_3194 pm_f_1@@10))) o2_1@@75 f_9@@90) (= (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@34) o2_1@@75 f_9@@90) (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@75 f_9@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@75 f_9@@90))
))) (forall ((o2_1@@76 T@Ref) (f_9@@91 T@Field_5978_53) ) (!  (=> (select (|PolymorphicMapType_6467_3192_53#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@34) null (WandMaskField_3194 pm_f_1@@10))) o2_1@@76 f_9@@91) (= (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@34) o2_1@@76 f_9@@91) (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@76 f_9@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@76 f_9@@91))
))) (forall ((o2_1@@77 T@Ref) (f_9@@92 T@Field_3194_9686) ) (!  (=> (select (|PolymorphicMapType_6467_3192_9686#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@34) null (WandMaskField_3194 pm_f_1@@10))) o2_1@@77 f_9@@92) (= (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@34) o2_1@@77 f_9@@92) (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@77 f_9@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@77 f_9@@92))
))) (forall ((o2_1@@78 T@Ref) (f_9@@93 T@Field_3194_12192) ) (!  (=> (select (|PolymorphicMapType_6467_3192_23113#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@34) null (WandMaskField_3194 pm_f_1@@10))) o2_1@@78 f_9@@93) (= (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@34) o2_1@@78 f_9@@93) (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@78 f_9@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@78 f_9@@93))
))) (forall ((o2_1@@79 T@Ref) (f_9@@94 T@Field_9685_1189) ) (!  (=> (select (|PolymorphicMapType_6467_9685_1189#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@34) null (WandMaskField_3194 pm_f_1@@10))) o2_1@@79 f_9@@94) (= (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@34) o2_1@@79 f_9@@94) (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@79 f_9@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@79 f_9@@94))
))) (forall ((o2_1@@80 T@Ref) (f_9@@95 T@Field_9685_3195) ) (!  (=> (select (|PolymorphicMapType_6467_9685_3195#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@34) null (WandMaskField_3194 pm_f_1@@10))) o2_1@@80 f_9@@95) (= (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@34) o2_1@@80 f_9@@95) (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@80 f_9@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@80 f_9@@95))
))) (forall ((o2_1@@81 T@Ref) (f_9@@96 T@Field_9685_53) ) (!  (=> (select (|PolymorphicMapType_6467_9685_53#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@34) null (WandMaskField_3194 pm_f_1@@10))) o2_1@@81 f_9@@96) (= (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@34) o2_1@@81 f_9@@96) (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@81 f_9@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@81 f_9@@96))
))) (forall ((o2_1@@82 T@Ref) (f_9@@97 T@Field_9685_9686) ) (!  (=> (select (|PolymorphicMapType_6467_9685_9686#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@34) null (WandMaskField_3194 pm_f_1@@10))) o2_1@@82 f_9@@97) (= (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@34) o2_1@@82 f_9@@97) (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@82 f_9@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@82 f_9@@97))
))) (forall ((o2_1@@83 T@Ref) (f_9@@98 T@Field_12187_12192) ) (!  (=> (select (|PolymorphicMapType_6467_9685_24161#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@34) null (WandMaskField_3194 pm_f_1@@10))) o2_1@@83 f_9@@98) (= (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@34) o2_1@@83 f_9@@98) (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@83 f_9@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@83 f_9@@98))
))) (forall ((o2_1@@84 T@Ref) (f_9@@99 T@Field_13437_1189) ) (!  (=> (select (|PolymorphicMapType_6467_13437_1189#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@34) null (WandMaskField_3194 pm_f_1@@10))) o2_1@@84 f_9@@99) (= (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@34) o2_1@@84 f_9@@99) (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@84 f_9@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@84 f_9@@99))
))) (forall ((o2_1@@85 T@Ref) (f_9@@100 T@Field_13437_3195) ) (!  (=> (select (|PolymorphicMapType_6467_13437_3195#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@34) null (WandMaskField_3194 pm_f_1@@10))) o2_1@@85 f_9@@100) (= (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@34) o2_1@@85 f_9@@100) (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@85 f_9@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@85 f_9@@100))
))) (forall ((o2_1@@86 T@Ref) (f_9@@101 T@Field_13437_53) ) (!  (=> (select (|PolymorphicMapType_6467_13437_53#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@34) null (WandMaskField_3194 pm_f_1@@10))) o2_1@@86 f_9@@101) (= (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@34) o2_1@@86 f_9@@101) (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@86 f_9@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@86 f_9@@101))
))) (forall ((o2_1@@87 T@Ref) (f_9@@102 T@Field_13437_13438) ) (!  (=> (select (|PolymorphicMapType_6467_13437_9686#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@34) null (WandMaskField_3194 pm_f_1@@10))) o2_1@@87 f_9@@102) (= (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@34) o2_1@@87 f_9@@102) (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@87 f_9@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@87 f_9@@102))
))) (forall ((o2_1@@88 T@Ref) (f_9@@103 T@Field_15144_15149) ) (!  (=> (select (|PolymorphicMapType_6467_13437_25209#PolymorphicMapType_6467| (select (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@34) null (WandMaskField_3194 pm_f_1@@10))) o2_1@@88 f_9@@103) (= (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@34) o2_1@@88 f_9@@103) (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@88 f_9@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| ExhaleHeap@@27) o2_1@@88 f_9@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@27 Mask@@58) (IsWandField_3194_26298 pm_f_1@@10))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_5918) (Mask@@59 T@PolymorphicMapType_5939) (this@@11 T@Ref) ) (!  (=> (and (state Heap@@35 Mask@@59) (< AssumeFunctionsAbove 0)) (=> (not (= this@@11 null)) (= (Nodet2$ Heap@@35 this@@11) (Nodet$ Heap@@35 this@@11))))
 :qid |stdinbpl.341:15|
 :skolemid |29|
 :pattern ( (state Heap@@35 Mask@@59) (Nodet2$ Heap@@35 this@@11))
 :pattern ( (state Heap@@35 Mask@@59) (|Nodet2$#triggerStateless| this@@11) (|Nodep$#trigger_3283| Heap@@35 (Nodep$ this@@11)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_5918) (Mask@@60 T@PolymorphicMapType_5939) (this@@12 T@Ref) ) (!  (=> (and (state Heap@@36 Mask@@60) (< AssumeFunctionsAbove 1)) (=> (not (= this@@12 null)) (= (Nodet$ Heap@@36 this@@12) (|Nodet$'| Heap@@36 this@@12))))
 :qid |stdinbpl.208:15|
 :skolemid |24|
 :pattern ( (state Heap@@36 Mask@@60) (Nodet$ Heap@@36 this@@12))
 :pattern ( (state Heap@@36 Mask@@60) (|Nodet$#triggerStateless| this@@12) (|Nodevalid$#trigger_3258| Heap@@36 (Nodevalid$ this@@12)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_5918) (Mask@@61 T@PolymorphicMapType_5939) (this@@13 T@Ref) ) (!  (=> (state Heap@@37 Mask@@61) (= (|Nodet$'| Heap@@37 this@@13) (|Nodet$#frame| (select (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@37) null (Nodevalid$ this@@13)) this@@13)))
 :qid |stdinbpl.215:15|
 :skolemid |25|
 :pattern ( (state Heap@@37 Mask@@61) (|Nodet$'| Heap@@37 this@@13))
 :pattern ( (state Heap@@37 Mask@@61) (|Nodet$#triggerStateless| this@@13) (|Nodevalid$#trigger_3258| Heap@@37 (Nodevalid$ this@@13)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_5918) (Mask@@62 T@PolymorphicMapType_5939) (this@@14 T@Ref) ) (!  (=> (state Heap@@38 Mask@@62) (= (|Nodet2$'| Heap@@38 this@@14) (|Nodet2$#frame| (select (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@38) null (Nodep$ this@@14)) this@@14)))
 :qid |stdinbpl.348:15|
 :skolemid |30|
 :pattern ( (state Heap@@38 Mask@@62) (|Nodet2$'| Heap@@38 this@@14))
 :pattern ( (state Heap@@38 Mask@@62) (|Nodet2$#triggerStateless| this@@14) (|Nodep$#trigger_3283| Heap@@38 (Nodep$ this@@14)))
)))
(assert (forall ((this@@15 T@Ref) ) (! (= (getPredWandId_3258_3259 (Nodevalid$ this@@15)) 0)
 :qid |stdinbpl.453:15|
 :skolemid |34|
 :pattern ( (Nodevalid$ this@@15))
)))
(assert (forall ((this@@16 T@Ref) ) (! (= (getPredWandId_3283_3284 (Nodep$ this@@16)) 1)
 :qid |stdinbpl.525:15|
 :skolemid |40|
 :pattern ( (Nodep$ this@@16))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_5918) (o_3 T@Ref) (f_10 T@Field_15144_15149) (v T@PolymorphicMapType_6467) ) (! (succHeap Heap@@39 (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@39) (store (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@39) o_3 f_10 v) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@39) (store (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@39) o_3 f_10 v) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@39) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_5918) (o_3@@0 T@Ref) (f_10@@0 T@Field_13437_1189) (v@@0 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@40) (store (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@40) o_3@@0 f_10@@0 v@@0)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@40) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@40) (store (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@40) o_3@@0 f_10@@0 v@@0)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_5918) (o_3@@1 T@Ref) (f_10@@1 T@Field_13437_13438) (v@@1 T@FrameType) ) (! (succHeap Heap@@41 (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@41) (store (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@41) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@41) (store (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@41) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@41) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_5918) (o_3@@2 T@Ref) (f_10@@2 T@Field_13437_3195) (v@@2 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@42) (store (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@42) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@42) (store (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@42) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@42) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_5918) (o_3@@3 T@Ref) (f_10@@3 T@Field_13437_53) (v@@3 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@43) (store (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@43) o_3@@3 f_10@@3 v@@3) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@43) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@43) (store (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@43) o_3@@3 f_10@@3 v@@3) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_5918) (o_3@@4 T@Ref) (f_10@@4 T@Field_12187_12192) (v@@4 T@PolymorphicMapType_6467) ) (! (succHeap Heap@@44 (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@44) (store (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@44) o_3@@4 f_10@@4 v@@4) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@44) (store (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@44) o_3@@4 f_10@@4 v@@4) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@44) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_5918) (o_3@@5 T@Ref) (f_10@@5 T@Field_9685_1189) (v@@5 Int) ) (! (succHeap Heap@@45 (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@45) (store (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@45) o_3@@5 f_10@@5 v@@5) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@45) (store (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@45) o_3@@5 f_10@@5 v@@5) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@45) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_5918) (o_3@@6 T@Ref) (f_10@@6 T@Field_9685_9686) (v@@6 T@FrameType) ) (! (succHeap Heap@@46 (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@46) (store (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@46) o_3@@6 f_10@@6 v@@6) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@46) (store (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@46) o_3@@6 f_10@@6 v@@6) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@46) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_5918) (o_3@@7 T@Ref) (f_10@@7 T@Field_9685_3195) (v@@7 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@47) (store (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@47) o_3@@7 f_10@@7 v@@7) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@47) (store (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@47) o_3@@7 f_10@@7 v@@7) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@47) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_5918) (o_3@@8 T@Ref) (f_10@@8 T@Field_9685_53) (v@@8 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@48) (store (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@48) o_3@@8 f_10@@8 v@@8) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@48) (store (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@48) o_3@@8 f_10@@8 v@@8) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@48) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_5918) (o_3@@9 T@Ref) (f_10@@9 T@Field_3194_12192) (v@@9 T@PolymorphicMapType_6467) ) (! (succHeap Heap@@49 (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@49) (store (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@49) o_3@@9 f_10@@9 v@@9) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@49) (store (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@49) o_3@@9 f_10@@9 v@@9) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@49) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_5918) (o_3@@10 T@Ref) (f_10@@10 T@Field_9305_1189) (v@@10 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@50) (store (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@50) o_3@@10 f_10@@10 v@@10) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@50) (store (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@50) o_3@@10 f_10@@10 v@@10) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@50) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_5918) (o_3@@11 T@Ref) (f_10@@11 T@Field_3194_9686) (v@@11 T@FrameType) ) (! (succHeap Heap@@51 (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@51) (store (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@51) o_3@@11 f_10@@11 v@@11) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@51) (store (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@51) o_3@@11 f_10@@11 v@@11) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@51) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_5918) (o_3@@12 T@Ref) (f_10@@12 T@Field_5991_5992) (v@@12 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@52) (store (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@52) o_3@@12 f_10@@12 v@@12) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5918 (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@52) (store (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@52) o_3@@12 f_10@@12 v@@12) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@52) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_5918) (o_3@@13 T@Ref) (f_10@@13 T@Field_5978_53) (v@@13 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_5918 (store (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@53) o_3@@13 f_10@@13 v@@13) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5918 (store (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@53) o_3@@13 f_10@@13 v@@13) (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_3258_3259#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_3192_1189#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_3262_12279#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_3283_3284#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_3287_15184#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_3194_9686#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_3194_18849#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_9685_3195#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_9685_53#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_9685_1189#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_13437_3195#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_13437_53#PolymorphicMapType_5918| Heap@@53) (|PolymorphicMapType_5918_13437_1189#PolymorphicMapType_5918| Heap@@53)))
)))
(assert (forall ((this@@17 T@Ref) ) (! (= (PredicateMaskField_3258 (Nodevalid$ this@@17)) (|Nodevalid$#sm| this@@17))
 :qid |stdinbpl.445:15|
 :skolemid |32|
 :pattern ( (PredicateMaskField_3258 (Nodevalid$ this@@17)))
)))
(assert (forall ((this@@18 T@Ref) ) (! (= (PredicateMaskField_3283 (Nodep$ this@@18)) (|Nodep$#sm| this@@18))
 :qid |stdinbpl.517:15|
 :skolemid |38|
 :pattern ( (PredicateMaskField_3283 (Nodep$ this@@18)))
)))
(assert (forall ((o_3@@14 T@Ref) (f_8 T@Field_5991_5992) (Heap@@54 T@PolymorphicMapType_5918) ) (!  (=> (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@54) o_3@@14 $allocated) (select (|PolymorphicMapType_5918_3064_53#PolymorphicMapType_5918| Heap@@54) (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@54) o_3@@14 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5918_3067_3068#PolymorphicMapType_5918| Heap@@54) o_3@@14 f_8))
)))
(assert (forall ((p@@3 T@Field_3194_9686) (v_1@@2 T@FrameType) (q T@Field_3194_9686) (w@@2 T@FrameType) (r T@Field_3194_9686) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5978_5978 p@@3 v_1@@2 q w@@2) (InsidePredicate_5978_5978 q w@@2 r u)) (InsidePredicate_5978_5978 p@@3 v_1@@2 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5978_5978 p@@3 v_1@@2 q w@@2) (InsidePredicate_5978_5978 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_3194_9686) (v_1@@3 T@FrameType) (q@@0 T@Field_3194_9686) (w@@3 T@FrameType) (r@@0 T@Field_13437_13438) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_5978_5978 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_5978_3283 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_5978_3283 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5978_5978 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_5978_3283 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_3194_9686) (v_1@@4 T@FrameType) (q@@1 T@Field_3194_9686) (w@@4 T@FrameType) (r@@1 T@Field_9685_9686) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_5978_5978 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_5978_3258 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_5978_3258 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5978_5978 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_5978_3258 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_3194_9686) (v_1@@5 T@FrameType) (q@@2 T@Field_13437_13438) (w@@5 T@FrameType) (r@@2 T@Field_3194_9686) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_5978_3283 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_3283_5978 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_5978_5978 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5978_3283 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_3283_5978 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_3194_9686) (v_1@@6 T@FrameType) (q@@3 T@Field_13437_13438) (w@@6 T@FrameType) (r@@3 T@Field_13437_13438) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_5978_3283 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_3283_3283 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_5978_3283 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5978_3283 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_3283_3283 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_3194_9686) (v_1@@7 T@FrameType) (q@@4 T@Field_13437_13438) (w@@7 T@FrameType) (r@@4 T@Field_9685_9686) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_5978_3283 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_3283_3258 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_5978_3258 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5978_3283 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_3283_3258 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_3194_9686) (v_1@@8 T@FrameType) (q@@5 T@Field_9685_9686) (w@@8 T@FrameType) (r@@5 T@Field_3194_9686) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_5978_3258 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_3258_5978 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_5978_5978 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5978_3258 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_3258_5978 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_3194_9686) (v_1@@9 T@FrameType) (q@@6 T@Field_9685_9686) (w@@9 T@FrameType) (r@@6 T@Field_13437_13438) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_5978_3258 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_3258_3283 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_5978_3283 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5978_3258 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_3258_3283 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_3194_9686) (v_1@@10 T@FrameType) (q@@7 T@Field_9685_9686) (w@@10 T@FrameType) (r@@7 T@Field_9685_9686) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_5978_3258 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_3258_3258 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_5978_3258 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5978_3258 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_3258_3258 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_13437_13438) (v_1@@11 T@FrameType) (q@@8 T@Field_3194_9686) (w@@11 T@FrameType) (r@@8 T@Field_3194_9686) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_3283_5978 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_5978_5978 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_3283_5978 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3283_5978 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_5978_5978 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_13437_13438) (v_1@@12 T@FrameType) (q@@9 T@Field_3194_9686) (w@@12 T@FrameType) (r@@9 T@Field_13437_13438) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_3283_5978 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_5978_3283 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_3283_3283 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3283_5978 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_5978_3283 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_13437_13438) (v_1@@13 T@FrameType) (q@@10 T@Field_3194_9686) (w@@13 T@FrameType) (r@@10 T@Field_9685_9686) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_3283_5978 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_5978_3258 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_3283_3258 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3283_5978 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_5978_3258 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_13437_13438) (v_1@@14 T@FrameType) (q@@11 T@Field_13437_13438) (w@@14 T@FrameType) (r@@11 T@Field_3194_9686) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_3283_3283 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_3283_5978 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_3283_5978 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3283_3283 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_3283_5978 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_13437_13438) (v_1@@15 T@FrameType) (q@@12 T@Field_13437_13438) (w@@15 T@FrameType) (r@@12 T@Field_13437_13438) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_3283_3283 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_3283_3283 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_3283_3283 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3283_3283 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_3283_3283 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_13437_13438) (v_1@@16 T@FrameType) (q@@13 T@Field_13437_13438) (w@@16 T@FrameType) (r@@13 T@Field_9685_9686) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_3283_3283 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_3283_3258 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_3283_3258 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3283_3283 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_3283_3258 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_13437_13438) (v_1@@17 T@FrameType) (q@@14 T@Field_9685_9686) (w@@17 T@FrameType) (r@@14 T@Field_3194_9686) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_3283_3258 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_3258_5978 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_3283_5978 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3283_3258 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_3258_5978 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_13437_13438) (v_1@@18 T@FrameType) (q@@15 T@Field_9685_9686) (w@@18 T@FrameType) (r@@15 T@Field_13437_13438) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_3283_3258 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_3258_3283 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_3283_3283 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3283_3258 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_3258_3283 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_13437_13438) (v_1@@19 T@FrameType) (q@@16 T@Field_9685_9686) (w@@19 T@FrameType) (r@@16 T@Field_9685_9686) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_3283_3258 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_3258_3258 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_3283_3258 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3283_3258 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_3258_3258 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_9685_9686) (v_1@@20 T@FrameType) (q@@17 T@Field_3194_9686) (w@@20 T@FrameType) (r@@17 T@Field_3194_9686) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_3258_5978 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_5978_5978 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_3258_5978 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3258_5978 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_5978_5978 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_9685_9686) (v_1@@21 T@FrameType) (q@@18 T@Field_3194_9686) (w@@21 T@FrameType) (r@@18 T@Field_13437_13438) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_3258_5978 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_5978_3283 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_3258_3283 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3258_5978 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_5978_3283 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_9685_9686) (v_1@@22 T@FrameType) (q@@19 T@Field_3194_9686) (w@@22 T@FrameType) (r@@19 T@Field_9685_9686) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_3258_5978 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_5978_3258 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_3258_3258 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3258_5978 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_5978_3258 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_9685_9686) (v_1@@23 T@FrameType) (q@@20 T@Field_13437_13438) (w@@23 T@FrameType) (r@@20 T@Field_3194_9686) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_3258_3283 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_3283_5978 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_3258_5978 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3258_3283 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_3283_5978 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_9685_9686) (v_1@@24 T@FrameType) (q@@21 T@Field_13437_13438) (w@@24 T@FrameType) (r@@21 T@Field_13437_13438) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_3258_3283 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_3283_3283 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_3258_3283 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3258_3283 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_3283_3283 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_9685_9686) (v_1@@25 T@FrameType) (q@@22 T@Field_13437_13438) (w@@25 T@FrameType) (r@@22 T@Field_9685_9686) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_3258_3283 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_3283_3258 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_3258_3258 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3258_3283 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_3283_3258 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_9685_9686) (v_1@@26 T@FrameType) (q@@23 T@Field_9685_9686) (w@@26 T@FrameType) (r@@23 T@Field_3194_9686) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_3258_3258 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_3258_5978 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_3258_5978 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3258_3258 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_3258_5978 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_9685_9686) (v_1@@27 T@FrameType) (q@@24 T@Field_9685_9686) (w@@27 T@FrameType) (r@@24 T@Field_13437_13438) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_3258_3258 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_3258_3283 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_3258_3283 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3258_3258 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_3258_3283 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_9685_9686) (v_1@@28 T@FrameType) (q@@25 T@Field_9685_9686) (w@@28 T@FrameType) (r@@25 T@Field_9685_9686) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_3258_3258 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_3258_3258 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_3258_3258 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3258_3258 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_3258_3258 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |Nodep$#definedness|)
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
