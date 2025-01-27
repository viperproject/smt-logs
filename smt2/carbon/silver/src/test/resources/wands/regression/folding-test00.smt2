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
(declare-sort T@Field_6032_53 0)
(declare-sort T@Field_6045_6046 0)
(declare-sort T@Field_10061_1568 0)
(declare-sort T@Field_10454_10455 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_11933_11938 0)
(declare-sort T@Field_9374_9379 0)
(declare-sort T@Field_3397_9379 0)
(declare-sort T@Field_3397_9391 0)
(declare-sort T@Field_9361_1210 0)
(declare-sort T@Field_9361_53 0)
(declare-sort T@Field_9361_6046 0)
(declare-sort T@Field_9390_9391 0)
(declare-sort T@Field_10454_1568 0)
(declare-sort T@Field_10454_53 0)
(declare-sort T@Field_10454_6046 0)
(declare-datatypes ((T@PolymorphicMapType_5993 0)) (((PolymorphicMapType_5993 (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| (Array T@Ref T@Field_10454_10455 Real)) (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| (Array T@Ref T@Field_10061_1568 Real)) (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| (Array T@Ref T@Field_9361_1210 Real)) (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| (Array T@Ref T@Field_10454_1568 Real)) (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| (Array T@Ref T@Field_10454_53 Real)) (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| (Array T@Ref T@Field_10454_6046 Real)) (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| (Array T@Ref T@Field_11933_11938 Real)) (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| (Array T@Ref T@Field_3397_9391 Real)) (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| (Array T@Ref T@Field_6032_53 Real)) (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| (Array T@Ref T@Field_6045_6046 Real)) (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| (Array T@Ref T@Field_3397_9379 Real)) (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| (Array T@Ref T@Field_9390_9391 Real)) (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| (Array T@Ref T@Field_9361_53 Real)) (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| (Array T@Ref T@Field_9361_6046 Real)) (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| (Array T@Ref T@Field_9374_9379 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6521 0)) (((PolymorphicMapType_6521 (|PolymorphicMapType_6521_3397_1568#PolymorphicMapType_6521| (Array T@Ref T@Field_10061_1568 Bool)) (|PolymorphicMapType_6521_3397_53#PolymorphicMapType_6521| (Array T@Ref T@Field_6032_53 Bool)) (|PolymorphicMapType_6521_3397_6046#PolymorphicMapType_6521| (Array T@Ref T@Field_6045_6046 Bool)) (|PolymorphicMapType_6521_3397_22420#PolymorphicMapType_6521| (Array T@Ref T@Field_3397_9379 Bool)) (|PolymorphicMapType_6521_3397_9391#PolymorphicMapType_6521| (Array T@Ref T@Field_3397_9391 Bool)) (|PolymorphicMapType_6521_9361_1568#PolymorphicMapType_6521| (Array T@Ref T@Field_9361_1210 Bool)) (|PolymorphicMapType_6521_9361_53#PolymorphicMapType_6521| (Array T@Ref T@Field_9361_53 Bool)) (|PolymorphicMapType_6521_9361_6046#PolymorphicMapType_6521| (Array T@Ref T@Field_9361_6046 Bool)) (|PolymorphicMapType_6521_9361_23468#PolymorphicMapType_6521| (Array T@Ref T@Field_9374_9379 Bool)) (|PolymorphicMapType_6521_9361_9391#PolymorphicMapType_6521| (Array T@Ref T@Field_9390_9391 Bool)) (|PolymorphicMapType_6521_10454_1568#PolymorphicMapType_6521| (Array T@Ref T@Field_10454_1568 Bool)) (|PolymorphicMapType_6521_10454_53#PolymorphicMapType_6521| (Array T@Ref T@Field_10454_53 Bool)) (|PolymorphicMapType_6521_10454_6046#PolymorphicMapType_6521| (Array T@Ref T@Field_10454_6046 Bool)) (|PolymorphicMapType_6521_10454_24516#PolymorphicMapType_6521| (Array T@Ref T@Field_11933_11938 Bool)) (|PolymorphicMapType_6521_10454_9391#PolymorphicMapType_6521| (Array T@Ref T@Field_10454_10455 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5972 0)) (((PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| (Array T@Ref T@Field_6032_53 Bool)) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| (Array T@Ref T@Field_6045_6046 T@Ref)) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| (Array T@Ref T@Field_10061_1568 Int)) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| (Array T@Ref T@Field_10454_10455 T@FrameType)) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| (Array T@Ref T@Field_11933_11938 T@PolymorphicMapType_6521)) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| (Array T@Ref T@Field_9374_9379 T@PolymorphicMapType_6521)) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| (Array T@Ref T@Field_3397_9379 T@PolymorphicMapType_6521)) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| (Array T@Ref T@Field_3397_9391 T@FrameType)) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| (Array T@Ref T@Field_9361_1210 Int)) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| (Array T@Ref T@Field_9361_53 Bool)) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| (Array T@Ref T@Field_9361_6046 T@Ref)) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| (Array T@Ref T@Field_9390_9391 T@FrameType)) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| (Array T@Ref T@Field_10454_1568 Int)) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| (Array T@Ref T@Field_10454_53 Bool)) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| (Array T@Ref T@Field_10454_6046 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_6032_53)
(declare-fun f_7 () T@Field_10061_1568)
(declare-fun g () T@Field_10061_1568)
(declare-fun succHeap (T@PolymorphicMapType_5972 T@PolymorphicMapType_5972) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5972 T@PolymorphicMapType_5972) Bool)
(declare-fun state (T@PolymorphicMapType_5972 T@PolymorphicMapType_5993) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5993) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6521)
(declare-fun Pair (T@Ref) T@Field_10454_10455)
(declare-fun IsPredicateField_3428_3429 (T@Field_10454_10455) Bool)
(declare-fun |sum'| (T@PolymorphicMapType_5972 T@Ref) Int)
(declare-fun dummyFunction_1791 (Int) Bool)
(declare-fun |sum#triggerStateless| (T@Ref) Int)
(declare-fun |Pair#trigger_3428| (T@PolymorphicMapType_5972 T@Field_10454_10455) Bool)
(declare-fun |Pair#everUsed_3428| (T@Field_10454_10455) Bool)
(declare-fun sum_1 (T@PolymorphicMapType_5972 T@Ref) Int)
(declare-fun wand (Bool T@Ref Real T@Ref Int) T@Field_9361_1210)
(declare-fun getPredWandId_3359_1210 (T@Field_9361_1210) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5972 T@PolymorphicMapType_5972 T@PolymorphicMapType_5993) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3428 (T@Field_10454_10455) T@Field_11933_11938)
(declare-fun HasDirectPerm_10454_9391 (T@PolymorphicMapType_5993 T@Ref T@Field_10454_10455) Bool)
(declare-fun IsPredicateField_3370_3371 (T@Field_9390_9391) Bool)
(declare-fun PredicateMaskField_9361 (T@Field_9390_9391) T@Field_9374_9379)
(declare-fun HasDirectPerm_9361_9391 (T@PolymorphicMapType_5993 T@Ref T@Field_9390_9391) Bool)
(declare-fun IsPredicateField_3397_20802 (T@Field_3397_9391) Bool)
(declare-fun PredicateMaskField_3397 (T@Field_3397_9391) T@Field_3397_9379)
(declare-fun HasDirectPerm_3397_9391 (T@PolymorphicMapType_5993 T@Ref T@Field_3397_9391) Bool)
(declare-fun IsWandField_10454_26491 (T@Field_10454_10455) Bool)
(declare-fun WandMaskField_10454 (T@Field_10454_10455) T@Field_11933_11938)
(declare-fun IsWandField_3370_3371 (T@Field_9390_9391) Bool)
(declare-fun WandMaskField_3370 (T@Field_9390_9391) T@Field_9374_9379)
(declare-fun IsWandField_3397_25809 (T@Field_3397_9391) Bool)
(declare-fun WandMaskField_3397 (T@Field_3397_9391) T@Field_3397_9379)
(declare-fun |Pair#sm| (T@Ref) T@Field_11933_11938)
(declare-fun dummyHeap () T@PolymorphicMapType_5972)
(declare-fun ZeroMask () T@PolymorphicMapType_5993)
(declare-fun InsidePredicate_10454_10454 (T@Field_10454_10455 T@FrameType T@Field_10454_10455 T@FrameType) Bool)
(declare-fun InsidePredicate_9361_9361 (T@Field_9390_9391 T@FrameType T@Field_9390_9391 T@FrameType) Bool)
(declare-fun InsidePredicate_6032_6032 (T@Field_3397_9391 T@FrameType T@Field_3397_9391 T@FrameType) Bool)
(declare-fun IsWandField_3359_1210 (T@Field_9361_1210) Bool)
(declare-fun |wand#ft| (Bool T@Ref Real T@Ref Int) T@Field_9390_9391)
(declare-fun IsPredicateField_3397_1568 (T@Field_10061_1568) Bool)
(declare-fun IsWandField_3397_1568 (T@Field_10061_1568) Bool)
(declare-fun IsPredicateField_3359_1210 (T@Field_9361_1210) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3359_36798 (T@Field_9374_9379) Bool)
(declare-fun IsWandField_3359_36814 (T@Field_9374_9379) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3359_6046 (T@Field_9361_6046) Bool)
(declare-fun IsWandField_3359_6046 (T@Field_9361_6046) Bool)
(declare-fun IsPredicateField_3359_53 (T@Field_9361_53) Bool)
(declare-fun IsWandField_3359_53 (T@Field_9361_53) Bool)
(declare-fun IsPredicateField_3397_35981 (T@Field_3397_9379) Bool)
(declare-fun IsWandField_3397_35997 (T@Field_3397_9379) Bool)
(declare-fun IsPredicateField_3397_6046 (T@Field_6045_6046) Bool)
(declare-fun IsWandField_3397_6046 (T@Field_6045_6046) Bool)
(declare-fun IsPredicateField_3397_53 (T@Field_6032_53) Bool)
(declare-fun IsWandField_3397_53 (T@Field_6032_53) Bool)
(declare-fun IsPredicateField_3428_35164 (T@Field_11933_11938) Bool)
(declare-fun IsWandField_3428_35180 (T@Field_11933_11938) Bool)
(declare-fun IsPredicateField_3428_6046 (T@Field_10454_6046) Bool)
(declare-fun IsWandField_3428_6046 (T@Field_10454_6046) Bool)
(declare-fun IsPredicateField_3428_53 (T@Field_10454_53) Bool)
(declare-fun IsWandField_3428_53 (T@Field_10454_53) Bool)
(declare-fun IsPredicateField_3428_1568 (T@Field_10454_1568) Bool)
(declare-fun IsWandField_3428_1568 (T@Field_10454_1568) Bool)
(declare-fun HasDirectPerm_10454_20346 (T@PolymorphicMapType_5993 T@Ref T@Field_11933_11938) Bool)
(declare-fun HasDirectPerm_10454_6046 (T@PolymorphicMapType_5993 T@Ref T@Field_10454_6046) Bool)
(declare-fun HasDirectPerm_10454_53 (T@PolymorphicMapType_5993 T@Ref T@Field_10454_53) Bool)
(declare-fun HasDirectPerm_10454_1568 (T@PolymorphicMapType_5993 T@Ref T@Field_10454_1568) Bool)
(declare-fun HasDirectPerm_9361_19211 (T@PolymorphicMapType_5993 T@Ref T@Field_9374_9379) Bool)
(declare-fun HasDirectPerm_9361_6046 (T@PolymorphicMapType_5993 T@Ref T@Field_9361_6046) Bool)
(declare-fun HasDirectPerm_9361_53 (T@PolymorphicMapType_5993 T@Ref T@Field_9361_53) Bool)
(declare-fun HasDirectPerm_9361_1568 (T@PolymorphicMapType_5993 T@Ref T@Field_9361_1210) Bool)
(declare-fun HasDirectPerm_3397_18033 (T@PolymorphicMapType_5993 T@Ref T@Field_3397_9379) Bool)
(declare-fun HasDirectPerm_3397_6046 (T@PolymorphicMapType_5993 T@Ref T@Field_6045_6046) Bool)
(declare-fun HasDirectPerm_3397_53 (T@PolymorphicMapType_5993 T@Ref T@Field_6032_53) Bool)
(declare-fun HasDirectPerm_3397_1568 (T@PolymorphicMapType_5993 T@Ref T@Field_10061_1568) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5993 T@PolymorphicMapType_5993 T@PolymorphicMapType_5993) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |wand#sm| (Bool T@Ref Real T@Ref Int) T@Field_9374_9379)
(declare-fun |sum#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_3428_3429 (T@Field_10454_10455) Int)
(declare-fun InsidePredicate_10454_9361 (T@Field_10454_10455 T@FrameType T@Field_9390_9391 T@FrameType) Bool)
(declare-fun InsidePredicate_10454_6032 (T@Field_10454_10455 T@FrameType T@Field_3397_9391 T@FrameType) Bool)
(declare-fun InsidePredicate_9361_10454 (T@Field_9390_9391 T@FrameType T@Field_10454_10455 T@FrameType) Bool)
(declare-fun InsidePredicate_9361_6032 (T@Field_9390_9391 T@FrameType T@Field_3397_9391 T@FrameType) Bool)
(declare-fun InsidePredicate_6032_10454 (T@Field_3397_9391 T@FrameType T@Field_10454_10455 T@FrameType) Bool)
(declare-fun InsidePredicate_6032_9361 (T@Field_3397_9391 T@FrameType T@Field_9390_9391 T@FrameType) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_5972) (Heap1 T@PolymorphicMapType_5972) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5972) (Mask T@PolymorphicMapType_5993) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5972) (Heap1@@0 T@PolymorphicMapType_5972) (Heap2 T@PolymorphicMapType_5972) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10454_10455) ) (!  (not (select (|PolymorphicMapType_6521_10454_9391#PolymorphicMapType_6521| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6521_10454_9391#PolymorphicMapType_6521| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11933_11938) ) (!  (not (select (|PolymorphicMapType_6521_10454_24516#PolymorphicMapType_6521| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6521_10454_24516#PolymorphicMapType_6521| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10454_6046) ) (!  (not (select (|PolymorphicMapType_6521_10454_6046#PolymorphicMapType_6521| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6521_10454_6046#PolymorphicMapType_6521| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10454_53) ) (!  (not (select (|PolymorphicMapType_6521_10454_53#PolymorphicMapType_6521| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6521_10454_53#PolymorphicMapType_6521| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10454_1568) ) (!  (not (select (|PolymorphicMapType_6521_10454_1568#PolymorphicMapType_6521| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6521_10454_1568#PolymorphicMapType_6521| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_9390_9391) ) (!  (not (select (|PolymorphicMapType_6521_9361_9391#PolymorphicMapType_6521| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6521_9361_9391#PolymorphicMapType_6521| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_9374_9379) ) (!  (not (select (|PolymorphicMapType_6521_9361_23468#PolymorphicMapType_6521| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6521_9361_23468#PolymorphicMapType_6521| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_9361_6046) ) (!  (not (select (|PolymorphicMapType_6521_9361_6046#PolymorphicMapType_6521| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6521_9361_6046#PolymorphicMapType_6521| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_9361_53) ) (!  (not (select (|PolymorphicMapType_6521_9361_53#PolymorphicMapType_6521| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6521_9361_53#PolymorphicMapType_6521| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_9361_1210) ) (!  (not (select (|PolymorphicMapType_6521_9361_1568#PolymorphicMapType_6521| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6521_9361_1568#PolymorphicMapType_6521| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_3397_9391) ) (!  (not (select (|PolymorphicMapType_6521_3397_9391#PolymorphicMapType_6521| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6521_3397_9391#PolymorphicMapType_6521| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_3397_9379) ) (!  (not (select (|PolymorphicMapType_6521_3397_22420#PolymorphicMapType_6521| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6521_3397_22420#PolymorphicMapType_6521| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6045_6046) ) (!  (not (select (|PolymorphicMapType_6521_3397_6046#PolymorphicMapType_6521| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6521_3397_6046#PolymorphicMapType_6521| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6032_53) ) (!  (not (select (|PolymorphicMapType_6521_3397_53#PolymorphicMapType_6521| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6521_3397_53#PolymorphicMapType_6521| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_10061_1568) ) (!  (not (select (|PolymorphicMapType_6521_3397_1568#PolymorphicMapType_6521| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6521_3397_1568#PolymorphicMapType_6521| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_3428_3429 (Pair this))
 :qid |stdinbpl.331:15|
 :skolemid |34|
 :pattern ( (Pair this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5972) (p_1 T@Ref) ) (! (dummyFunction_1791 (|sum#triggerStateless| p_1))
 :qid |stdinbpl.238:15|
 :skolemid |30|
 :pattern ( (|sum'| Heap@@0 p_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5972) (this@@0 T@Ref) ) (! (|Pair#everUsed_3428| (Pair this@@0))
 :qid |stdinbpl.350:15|
 :skolemid |38|
 :pattern ( (|Pair#trigger_3428| Heap@@1 (Pair this@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5972) (p_1@@0 T@Ref) ) (!  (and (= (sum_1 Heap@@2 p_1@@0) (|sum'| Heap@@2 p_1@@0)) (dummyFunction_1791 (|sum#triggerStateless| p_1@@0)))
 :qid |stdinbpl.234:15|
 :skolemid |29|
 :pattern ( (sum_1 Heap@@2 p_1@@0))
)))
(assert (forall ((arg1 Bool) (arg2 T@Ref) (arg3 Real) (arg4 T@Ref) (arg5 Int) ) (! (= (getPredWandId_3359_1210 (wand arg1 arg2 arg3 arg4 arg5)) 1)
 :qid |stdinbpl.207:15|
 :skolemid |27|
 :pattern ( (wand arg1 arg2 arg3 arg4 arg5))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5972) (ExhaleHeap T@PolymorphicMapType_5972) (Mask@@0 T@PolymorphicMapType_5993) (pm_f_5 T@Field_10454_10455) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10454_9391 Mask@@0 null pm_f_5) (IsPredicateField_3428_3429 pm_f_5)) (= (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@3) null (PredicateMaskField_3428 pm_f_5)) (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| ExhaleHeap) null (PredicateMaskField_3428 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_3428_3429 pm_f_5) (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| ExhaleHeap) null (PredicateMaskField_3428 pm_f_5)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5972) (ExhaleHeap@@0 T@PolymorphicMapType_5972) (Mask@@1 T@PolymorphicMapType_5993) (pm_f_5@@0 T@Field_9390_9391) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9361_9391 Mask@@1 null pm_f_5@@0) (IsPredicateField_3370_3371 pm_f_5@@0)) (= (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@4) null (PredicateMaskField_9361 pm_f_5@@0)) (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| ExhaleHeap@@0) null (PredicateMaskField_9361 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3370_3371 pm_f_5@@0) (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| ExhaleHeap@@0) null (PredicateMaskField_9361 pm_f_5@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5972) (ExhaleHeap@@1 T@PolymorphicMapType_5972) (Mask@@2 T@PolymorphicMapType_5993) (pm_f_5@@1 T@Field_3397_9391) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3397_9391 Mask@@2 null pm_f_5@@1) (IsPredicateField_3397_20802 pm_f_5@@1)) (= (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@5) null (PredicateMaskField_3397 pm_f_5@@1)) (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| ExhaleHeap@@1) null (PredicateMaskField_3397 pm_f_5@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3397_20802 pm_f_5@@1) (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| ExhaleHeap@@1) null (PredicateMaskField_3397 pm_f_5@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5972) (ExhaleHeap@@2 T@PolymorphicMapType_5972) (Mask@@3 T@PolymorphicMapType_5993) (pm_f_5@@2 T@Field_10454_10455) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_10454_9391 Mask@@3 null pm_f_5@@2) (IsWandField_10454_26491 pm_f_5@@2)) (= (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@6) null (WandMaskField_10454 pm_f_5@@2)) (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| ExhaleHeap@@2) null (WandMaskField_10454 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_10454_26491 pm_f_5@@2) (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| ExhaleHeap@@2) null (WandMaskField_10454 pm_f_5@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5972) (ExhaleHeap@@3 T@PolymorphicMapType_5972) (Mask@@4 T@PolymorphicMapType_5993) (pm_f_5@@3 T@Field_9390_9391) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_9361_9391 Mask@@4 null pm_f_5@@3) (IsWandField_3370_3371 pm_f_5@@3)) (= (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@7) null (WandMaskField_3370 pm_f_5@@3)) (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| ExhaleHeap@@3) null (WandMaskField_3370 pm_f_5@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsWandField_3370_3371 pm_f_5@@3) (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| ExhaleHeap@@3) null (WandMaskField_3370 pm_f_5@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5972) (ExhaleHeap@@4 T@PolymorphicMapType_5972) (Mask@@5 T@PolymorphicMapType_5993) (pm_f_5@@4 T@Field_3397_9391) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3397_9391 Mask@@5 null pm_f_5@@4) (IsWandField_3397_25809 pm_f_5@@4)) (= (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@8) null (WandMaskField_3397 pm_f_5@@4)) (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| ExhaleHeap@@4) null (WandMaskField_3397 pm_f_5@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsWandField_3397_25809 pm_f_5@@4) (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| ExhaleHeap@@4) null (WandMaskField_3397 pm_f_5@@4)))
)))
(assert (forall ((this@@1 T@Ref) (this2 T@Ref) ) (!  (=> (= (Pair this@@1) (Pair this2)) (= this@@1 this2))
 :qid |stdinbpl.341:15|
 :skolemid |36|
 :pattern ( (Pair this@@1) (Pair this2))
)))
(assert (forall ((this@@2 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|Pair#sm| this@@2) (|Pair#sm| this2@@0)) (= this@@2 this2@@0))
 :qid |stdinbpl.345:15|
 :skolemid |37|
 :pattern ( (|Pair#sm| this@@2) (|Pair#sm| this2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5972) (ExhaleHeap@@5 T@PolymorphicMapType_5972) (Mask@@6 T@PolymorphicMapType_5993) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@9) o_15 $allocated) (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| ExhaleHeap@@5) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| ExhaleHeap@@5) o_15 $allocated))
)))
(assert (forall ((p T@Field_10454_10455) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10454_10454 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10454_10454 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_9390_9391) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9361_9361 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9361_9361 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_3397_9391) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_6032_6032 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6032_6032 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((arg1@@0 Bool) (arg2@@0 T@Ref) (arg3@@0 Real) (arg4@@0 T@Ref) (arg5@@0 Int) ) (! (IsWandField_3359_1210 (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0))
 :qid |stdinbpl.187:15|
 :skolemid |22|
 :pattern ( (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0))
)))
(assert (forall ((arg1@@1 Bool) (arg2@@1 T@Ref) (arg3@@1 Real) (arg4@@1 T@Ref) (arg5@@1 Int) ) (! (IsWandField_3370_3371 (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1))
 :qid |stdinbpl.191:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1))
)))
(assert  (not (IsPredicateField_3397_1568 f_7)))
(assert  (not (IsWandField_3397_1568 f_7)))
(assert  (not (IsPredicateField_3397_1568 g)))
(assert  (not (IsWandField_3397_1568 g)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5972) (ExhaleHeap@@6 T@PolymorphicMapType_5972) (Mask@@7 T@PolymorphicMapType_5993) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@10 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((arg1@@2 Bool) (arg2@@2 T@Ref) (arg3@@2 Real) (arg4@@2 T@Ref) (arg5@@2 Int) ) (!  (not (IsPredicateField_3359_1210 (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2)))
 :qid |stdinbpl.195:15|
 :skolemid |24|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2))
)))
(assert (forall ((arg1@@3 Bool) (arg2@@3 T@Ref) (arg3@@3 Real) (arg4@@3 T@Ref) (arg5@@3 Int) ) (!  (not (IsPredicateField_3370_3371 (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3)))
 :qid |stdinbpl.199:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5993) (o_2@@14 T@Ref) (f_4@@14 T@Field_9374_9379) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3359_36798 f_4@@14))) (not (IsWandField_3359_36814 f_4@@14))) (<= (select (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5993) (o_2@@15 T@Ref) (f_4@@15 T@Field_9361_6046) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3359_6046 f_4@@15))) (not (IsWandField_3359_6046 f_4@@15))) (<= (select (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5993) (o_2@@16 T@Ref) (f_4@@16 T@Field_9361_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3359_53 f_4@@16))) (not (IsWandField_3359_53 f_4@@16))) (<= (select (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5993) (o_2@@17 T@Ref) (f_4@@17 T@Field_9361_1210) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3359_1210 f_4@@17))) (not (IsWandField_3359_1210 f_4@@17))) (<= (select (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5993) (o_2@@18 T@Ref) (f_4@@18 T@Field_9390_9391) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3370_3371 f_4@@18))) (not (IsWandField_3370_3371 f_4@@18))) (<= (select (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5993) (o_2@@19 T@Ref) (f_4@@19 T@Field_3397_9379) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3397_35981 f_4@@19))) (not (IsWandField_3397_35997 f_4@@19))) (<= (select (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5993) (o_2@@20 T@Ref) (f_4@@20 T@Field_6045_6046) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3397_6046 f_4@@20))) (not (IsWandField_3397_6046 f_4@@20))) (<= (select (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5993) (o_2@@21 T@Ref) (f_4@@21 T@Field_6032_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3397_53 f_4@@21))) (not (IsWandField_3397_53 f_4@@21))) (<= (select (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5993) (o_2@@22 T@Ref) (f_4@@22 T@Field_10061_1568) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3397_1568 f_4@@22))) (not (IsWandField_3397_1568 f_4@@22))) (<= (select (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5993) (o_2@@23 T@Ref) (f_4@@23 T@Field_3397_9391) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3397_20802 f_4@@23))) (not (IsWandField_3397_25809 f_4@@23))) (<= (select (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5993) (o_2@@24 T@Ref) (f_4@@24 T@Field_11933_11938) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3428_35164 f_4@@24))) (not (IsWandField_3428_35180 f_4@@24))) (<= (select (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_5993) (o_2@@25 T@Ref) (f_4@@25 T@Field_10454_6046) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3428_6046 f_4@@25))) (not (IsWandField_3428_6046 f_4@@25))) (<= (select (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_5993) (o_2@@26 T@Ref) (f_4@@26 T@Field_10454_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_3428_53 f_4@@26))) (not (IsWandField_3428_53 f_4@@26))) (<= (select (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_5993) (o_2@@27 T@Ref) (f_4@@27 T@Field_10454_1568) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_3428_1568 f_4@@27))) (not (IsWandField_3428_1568 f_4@@27))) (<= (select (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_5993) (o_2@@28 T@Ref) (f_4@@28 T@Field_10454_10455) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_3428_3429 f_4@@28))) (not (IsWandField_10454_26491 f_4@@28))) (<= (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_5993) (o_2@@29 T@Ref) (f_4@@29 T@Field_10454_10455) ) (! (= (HasDirectPerm_10454_9391 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10454_9391 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_5993) (o_2@@30 T@Ref) (f_4@@30 T@Field_11933_11938) ) (! (= (HasDirectPerm_10454_20346 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10454_20346 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_5993) (o_2@@31 T@Ref) (f_4@@31 T@Field_10454_6046) ) (! (= (HasDirectPerm_10454_6046 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10454_6046 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_5993) (o_2@@32 T@Ref) (f_4@@32 T@Field_10454_53) ) (! (= (HasDirectPerm_10454_53 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10454_53 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_5993) (o_2@@33 T@Ref) (f_4@@33 T@Field_10454_1568) ) (! (= (HasDirectPerm_10454_1568 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10454_1568 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_5993) (o_2@@34 T@Ref) (f_4@@34 T@Field_9390_9391) ) (! (= (HasDirectPerm_9361_9391 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9361_9391 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_5993) (o_2@@35 T@Ref) (f_4@@35 T@Field_9374_9379) ) (! (= (HasDirectPerm_9361_19211 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9361_19211 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_5993) (o_2@@36 T@Ref) (f_4@@36 T@Field_9361_6046) ) (! (= (HasDirectPerm_9361_6046 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9361_6046 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_5993) (o_2@@37 T@Ref) (f_4@@37 T@Field_9361_53) ) (! (= (HasDirectPerm_9361_53 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9361_53 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_5993) (o_2@@38 T@Ref) (f_4@@38 T@Field_9361_1210) ) (! (= (HasDirectPerm_9361_1568 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9361_1568 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_5993) (o_2@@39 T@Ref) (f_4@@39 T@Field_3397_9391) ) (! (= (HasDirectPerm_3397_9391 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3397_9391 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_5993) (o_2@@40 T@Ref) (f_4@@40 T@Field_3397_9379) ) (! (= (HasDirectPerm_3397_18033 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3397_18033 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_5993) (o_2@@41 T@Ref) (f_4@@41 T@Field_6045_6046) ) (! (= (HasDirectPerm_3397_6046 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3397_6046 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_5993) (o_2@@42 T@Ref) (f_4@@42 T@Field_6032_53) ) (! (= (HasDirectPerm_3397_53 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3397_53 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_5993) (o_2@@43 T@Ref) (f_4@@43 T@Field_10061_1568) ) (! (= (HasDirectPerm_3397_1568 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3397_1568 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5972) (ExhaleHeap@@7 T@PolymorphicMapType_5972) (Mask@@38 T@PolymorphicMapType_5993) (o_15@@0 T@Ref) (f_23 T@Field_10454_10455) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_10454_9391 Mask@@38 o_15@@0 f_23) (= (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@11) o_15@@0 f_23) (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| ExhaleHeap@@7) o_15@@0 f_23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| ExhaleHeap@@7) o_15@@0 f_23))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5972) (ExhaleHeap@@8 T@PolymorphicMapType_5972) (Mask@@39 T@PolymorphicMapType_5993) (o_15@@1 T@Ref) (f_23@@0 T@Field_11933_11938) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_10454_20346 Mask@@39 o_15@@1 f_23@@0) (= (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@12) o_15@@1 f_23@@0) (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| ExhaleHeap@@8) o_15@@1 f_23@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| ExhaleHeap@@8) o_15@@1 f_23@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5972) (ExhaleHeap@@9 T@PolymorphicMapType_5972) (Mask@@40 T@PolymorphicMapType_5993) (o_15@@2 T@Ref) (f_23@@1 T@Field_10454_6046) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_10454_6046 Mask@@40 o_15@@2 f_23@@1) (= (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@13) o_15@@2 f_23@@1) (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| ExhaleHeap@@9) o_15@@2 f_23@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| ExhaleHeap@@9) o_15@@2 f_23@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5972) (ExhaleHeap@@10 T@PolymorphicMapType_5972) (Mask@@41 T@PolymorphicMapType_5993) (o_15@@3 T@Ref) (f_23@@2 T@Field_10454_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_10454_53 Mask@@41 o_15@@3 f_23@@2) (= (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@14) o_15@@3 f_23@@2) (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| ExhaleHeap@@10) o_15@@3 f_23@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| ExhaleHeap@@10) o_15@@3 f_23@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5972) (ExhaleHeap@@11 T@PolymorphicMapType_5972) (Mask@@42 T@PolymorphicMapType_5993) (o_15@@4 T@Ref) (f_23@@3 T@Field_10454_1568) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_10454_1568 Mask@@42 o_15@@4 f_23@@3) (= (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@15) o_15@@4 f_23@@3) (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| ExhaleHeap@@11) o_15@@4 f_23@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| ExhaleHeap@@11) o_15@@4 f_23@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5972) (ExhaleHeap@@12 T@PolymorphicMapType_5972) (Mask@@43 T@PolymorphicMapType_5993) (o_15@@5 T@Ref) (f_23@@4 T@Field_9390_9391) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_9361_9391 Mask@@43 o_15@@5 f_23@@4) (= (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@16) o_15@@5 f_23@@4) (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| ExhaleHeap@@12) o_15@@5 f_23@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| ExhaleHeap@@12) o_15@@5 f_23@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5972) (ExhaleHeap@@13 T@PolymorphicMapType_5972) (Mask@@44 T@PolymorphicMapType_5993) (o_15@@6 T@Ref) (f_23@@5 T@Field_9374_9379) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_9361_19211 Mask@@44 o_15@@6 f_23@@5) (= (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@17) o_15@@6 f_23@@5) (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| ExhaleHeap@@13) o_15@@6 f_23@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| ExhaleHeap@@13) o_15@@6 f_23@@5))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5972) (ExhaleHeap@@14 T@PolymorphicMapType_5972) (Mask@@45 T@PolymorphicMapType_5993) (o_15@@7 T@Ref) (f_23@@6 T@Field_9361_6046) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_9361_6046 Mask@@45 o_15@@7 f_23@@6) (= (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@18) o_15@@7 f_23@@6) (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| ExhaleHeap@@14) o_15@@7 f_23@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| ExhaleHeap@@14) o_15@@7 f_23@@6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5972) (ExhaleHeap@@15 T@PolymorphicMapType_5972) (Mask@@46 T@PolymorphicMapType_5993) (o_15@@8 T@Ref) (f_23@@7 T@Field_9361_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_9361_53 Mask@@46 o_15@@8 f_23@@7) (= (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@19) o_15@@8 f_23@@7) (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| ExhaleHeap@@15) o_15@@8 f_23@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| ExhaleHeap@@15) o_15@@8 f_23@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5972) (ExhaleHeap@@16 T@PolymorphicMapType_5972) (Mask@@47 T@PolymorphicMapType_5993) (o_15@@9 T@Ref) (f_23@@8 T@Field_9361_1210) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_9361_1568 Mask@@47 o_15@@9 f_23@@8) (= (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@20) o_15@@9 f_23@@8) (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| ExhaleHeap@@16) o_15@@9 f_23@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| ExhaleHeap@@16) o_15@@9 f_23@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5972) (ExhaleHeap@@17 T@PolymorphicMapType_5972) (Mask@@48 T@PolymorphicMapType_5993) (o_15@@10 T@Ref) (f_23@@9 T@Field_3397_9391) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_3397_9391 Mask@@48 o_15@@10 f_23@@9) (= (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@21) o_15@@10 f_23@@9) (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| ExhaleHeap@@17) o_15@@10 f_23@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| ExhaleHeap@@17) o_15@@10 f_23@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5972) (ExhaleHeap@@18 T@PolymorphicMapType_5972) (Mask@@49 T@PolymorphicMapType_5993) (o_15@@11 T@Ref) (f_23@@10 T@Field_3397_9379) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_3397_18033 Mask@@49 o_15@@11 f_23@@10) (= (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@22) o_15@@11 f_23@@10) (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| ExhaleHeap@@18) o_15@@11 f_23@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| ExhaleHeap@@18) o_15@@11 f_23@@10))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5972) (ExhaleHeap@@19 T@PolymorphicMapType_5972) (Mask@@50 T@PolymorphicMapType_5993) (o_15@@12 T@Ref) (f_23@@11 T@Field_6045_6046) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_3397_6046 Mask@@50 o_15@@12 f_23@@11) (= (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@23) o_15@@12 f_23@@11) (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| ExhaleHeap@@19) o_15@@12 f_23@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| ExhaleHeap@@19) o_15@@12 f_23@@11))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5972) (ExhaleHeap@@20 T@PolymorphicMapType_5972) (Mask@@51 T@PolymorphicMapType_5993) (o_15@@13 T@Ref) (f_23@@12 T@Field_6032_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_3397_53 Mask@@51 o_15@@13 f_23@@12) (= (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@24) o_15@@13 f_23@@12) (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| ExhaleHeap@@20) o_15@@13 f_23@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| ExhaleHeap@@20) o_15@@13 f_23@@12))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5972) (ExhaleHeap@@21 T@PolymorphicMapType_5972) (Mask@@52 T@PolymorphicMapType_5993) (o_15@@14 T@Ref) (f_23@@13 T@Field_10061_1568) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_3397_1568 Mask@@52 o_15@@14 f_23@@13) (= (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@25) o_15@@14 f_23@@13) (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| ExhaleHeap@@21) o_15@@14 f_23@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| ExhaleHeap@@21) o_15@@14 f_23@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_9374_9379) ) (! (= (select (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_9361_6046) ) (! (= (select (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_9361_53) ) (! (= (select (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_9361_1210) ) (! (= (select (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_9390_9391) ) (! (= (select (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_3397_9379) ) (! (= (select (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_6045_6046) ) (! (= (select (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_6032_53) ) (! (= (select (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_10061_1568) ) (! (= (select (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_3397_9391) ) (! (= (select (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_11933_11938) ) (! (= (select (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_10454_6046) ) (! (= (select (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_10454_53) ) (! (= (select (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_10454_1568) ) (! (= (select (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_10454_10455) ) (! (= (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5993) (SummandMask1 T@PolymorphicMapType_5993) (SummandMask2 T@PolymorphicMapType_5993) (o_2@@59 T@Ref) (f_4@@59 T@Field_9374_9379) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5993) (SummandMask1@@0 T@PolymorphicMapType_5993) (SummandMask2@@0 T@PolymorphicMapType_5993) (o_2@@60 T@Ref) (f_4@@60 T@Field_9361_6046) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5993) (SummandMask1@@1 T@PolymorphicMapType_5993) (SummandMask2@@1 T@PolymorphicMapType_5993) (o_2@@61 T@Ref) (f_4@@61 T@Field_9361_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5993) (SummandMask1@@2 T@PolymorphicMapType_5993) (SummandMask2@@2 T@PolymorphicMapType_5993) (o_2@@62 T@Ref) (f_4@@62 T@Field_9361_1210) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5993) (SummandMask1@@3 T@PolymorphicMapType_5993) (SummandMask2@@3 T@PolymorphicMapType_5993) (o_2@@63 T@Ref) (f_4@@63 T@Field_9390_9391) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_5993) (SummandMask1@@4 T@PolymorphicMapType_5993) (SummandMask2@@4 T@PolymorphicMapType_5993) (o_2@@64 T@Ref) (f_4@@64 T@Field_3397_9379) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_5993) (SummandMask1@@5 T@PolymorphicMapType_5993) (SummandMask2@@5 T@PolymorphicMapType_5993) (o_2@@65 T@Ref) (f_4@@65 T@Field_6045_6046) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_5993) (SummandMask1@@6 T@PolymorphicMapType_5993) (SummandMask2@@6 T@PolymorphicMapType_5993) (o_2@@66 T@Ref) (f_4@@66 T@Field_6032_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_5993) (SummandMask1@@7 T@PolymorphicMapType_5993) (SummandMask2@@7 T@PolymorphicMapType_5993) (o_2@@67 T@Ref) (f_4@@67 T@Field_10061_1568) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_5993) (SummandMask1@@8 T@PolymorphicMapType_5993) (SummandMask2@@8 T@PolymorphicMapType_5993) (o_2@@68 T@Ref) (f_4@@68 T@Field_3397_9391) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_5993) (SummandMask1@@9 T@PolymorphicMapType_5993) (SummandMask2@@9 T@PolymorphicMapType_5993) (o_2@@69 T@Ref) (f_4@@69 T@Field_11933_11938) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_5993) (SummandMask1@@10 T@PolymorphicMapType_5993) (SummandMask2@@10 T@PolymorphicMapType_5993) (o_2@@70 T@Ref) (f_4@@70 T@Field_10454_6046) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_5993) (SummandMask1@@11 T@PolymorphicMapType_5993) (SummandMask2@@11 T@PolymorphicMapType_5993) (o_2@@71 T@Ref) (f_4@@71 T@Field_10454_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_5993) (SummandMask1@@12 T@PolymorphicMapType_5993) (SummandMask2@@12 T@PolymorphicMapType_5993) (o_2@@72 T@Ref) (f_4@@72 T@Field_10454_1568) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_5993) (SummandMask1@@13 T@PolymorphicMapType_5993) (SummandMask2@@13 T@PolymorphicMapType_5993) (o_2@@73 T@Ref) (f_4@@73 T@Field_10454_10455) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5972) (ExhaleHeap@@22 T@PolymorphicMapType_5972) (Mask@@53 T@PolymorphicMapType_5993) (pm_f_5@@5 T@Field_10454_10455) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_10454_9391 Mask@@53 null pm_f_5@@5) (IsPredicateField_3428_3429 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_23@@14 T@Field_10061_1568) ) (!  (=> (select (|PolymorphicMapType_6521_3397_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@26) null (PredicateMaskField_3428 pm_f_5@@5))) o2_5 f_23@@14) (= (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@26) o2_5 f_23@@14) (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5 f_23@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5 f_23@@14))
)) (forall ((o2_5@@0 T@Ref) (f_23@@15 T@Field_6032_53) ) (!  (=> (select (|PolymorphicMapType_6521_3397_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@26) null (PredicateMaskField_3428 pm_f_5@@5))) o2_5@@0 f_23@@15) (= (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@26) o2_5@@0 f_23@@15) (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@0 f_23@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@0 f_23@@15))
))) (forall ((o2_5@@1 T@Ref) (f_23@@16 T@Field_6045_6046) ) (!  (=> (select (|PolymorphicMapType_6521_3397_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@26) null (PredicateMaskField_3428 pm_f_5@@5))) o2_5@@1 f_23@@16) (= (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@26) o2_5@@1 f_23@@16) (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@1 f_23@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@1 f_23@@16))
))) (forall ((o2_5@@2 T@Ref) (f_23@@17 T@Field_3397_9379) ) (!  (=> (select (|PolymorphicMapType_6521_3397_22420#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@26) null (PredicateMaskField_3428 pm_f_5@@5))) o2_5@@2 f_23@@17) (= (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@26) o2_5@@2 f_23@@17) (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@2 f_23@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@2 f_23@@17))
))) (forall ((o2_5@@3 T@Ref) (f_23@@18 T@Field_3397_9391) ) (!  (=> (select (|PolymorphicMapType_6521_3397_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@26) null (PredicateMaskField_3428 pm_f_5@@5))) o2_5@@3 f_23@@18) (= (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@26) o2_5@@3 f_23@@18) (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@3 f_23@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@3 f_23@@18))
))) (forall ((o2_5@@4 T@Ref) (f_23@@19 T@Field_9361_1210) ) (!  (=> (select (|PolymorphicMapType_6521_9361_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@26) null (PredicateMaskField_3428 pm_f_5@@5))) o2_5@@4 f_23@@19) (= (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@26) o2_5@@4 f_23@@19) (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@4 f_23@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@4 f_23@@19))
))) (forall ((o2_5@@5 T@Ref) (f_23@@20 T@Field_9361_53) ) (!  (=> (select (|PolymorphicMapType_6521_9361_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@26) null (PredicateMaskField_3428 pm_f_5@@5))) o2_5@@5 f_23@@20) (= (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@26) o2_5@@5 f_23@@20) (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@5 f_23@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@5 f_23@@20))
))) (forall ((o2_5@@6 T@Ref) (f_23@@21 T@Field_9361_6046) ) (!  (=> (select (|PolymorphicMapType_6521_9361_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@26) null (PredicateMaskField_3428 pm_f_5@@5))) o2_5@@6 f_23@@21) (= (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@26) o2_5@@6 f_23@@21) (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@6 f_23@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@6 f_23@@21))
))) (forall ((o2_5@@7 T@Ref) (f_23@@22 T@Field_9374_9379) ) (!  (=> (select (|PolymorphicMapType_6521_9361_23468#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@26) null (PredicateMaskField_3428 pm_f_5@@5))) o2_5@@7 f_23@@22) (= (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@26) o2_5@@7 f_23@@22) (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@7 f_23@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@7 f_23@@22))
))) (forall ((o2_5@@8 T@Ref) (f_23@@23 T@Field_9390_9391) ) (!  (=> (select (|PolymorphicMapType_6521_9361_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@26) null (PredicateMaskField_3428 pm_f_5@@5))) o2_5@@8 f_23@@23) (= (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@26) o2_5@@8 f_23@@23) (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@8 f_23@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@8 f_23@@23))
))) (forall ((o2_5@@9 T@Ref) (f_23@@24 T@Field_10454_1568) ) (!  (=> (select (|PolymorphicMapType_6521_10454_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@26) null (PredicateMaskField_3428 pm_f_5@@5))) o2_5@@9 f_23@@24) (= (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@26) o2_5@@9 f_23@@24) (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@9 f_23@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@9 f_23@@24))
))) (forall ((o2_5@@10 T@Ref) (f_23@@25 T@Field_10454_53) ) (!  (=> (select (|PolymorphicMapType_6521_10454_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@26) null (PredicateMaskField_3428 pm_f_5@@5))) o2_5@@10 f_23@@25) (= (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@26) o2_5@@10 f_23@@25) (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@10 f_23@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@10 f_23@@25))
))) (forall ((o2_5@@11 T@Ref) (f_23@@26 T@Field_10454_6046) ) (!  (=> (select (|PolymorphicMapType_6521_10454_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@26) null (PredicateMaskField_3428 pm_f_5@@5))) o2_5@@11 f_23@@26) (= (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@26) o2_5@@11 f_23@@26) (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@11 f_23@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@11 f_23@@26))
))) (forall ((o2_5@@12 T@Ref) (f_23@@27 T@Field_11933_11938) ) (!  (=> (select (|PolymorphicMapType_6521_10454_24516#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@26) null (PredicateMaskField_3428 pm_f_5@@5))) o2_5@@12 f_23@@27) (= (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@26) o2_5@@12 f_23@@27) (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@12 f_23@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@12 f_23@@27))
))) (forall ((o2_5@@13 T@Ref) (f_23@@28 T@Field_10454_10455) ) (!  (=> (select (|PolymorphicMapType_6521_10454_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@26) null (PredicateMaskField_3428 pm_f_5@@5))) o2_5@@13 f_23@@28) (= (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@26) o2_5@@13 f_23@@28) (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@13 f_23@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| ExhaleHeap@@22) o2_5@@13 f_23@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@53) (IsPredicateField_3428_3429 pm_f_5@@5))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5972) (ExhaleHeap@@23 T@PolymorphicMapType_5972) (Mask@@54 T@PolymorphicMapType_5993) (pm_f_5@@6 T@Field_9390_9391) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_9361_9391 Mask@@54 null pm_f_5@@6) (IsPredicateField_3370_3371 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@14 T@Ref) (f_23@@29 T@Field_10061_1568) ) (!  (=> (select (|PolymorphicMapType_6521_3397_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@27) null (PredicateMaskField_9361 pm_f_5@@6))) o2_5@@14 f_23@@29) (= (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@27) o2_5@@14 f_23@@29) (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@14 f_23@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@14 f_23@@29))
)) (forall ((o2_5@@15 T@Ref) (f_23@@30 T@Field_6032_53) ) (!  (=> (select (|PolymorphicMapType_6521_3397_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@27) null (PredicateMaskField_9361 pm_f_5@@6))) o2_5@@15 f_23@@30) (= (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@27) o2_5@@15 f_23@@30) (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@15 f_23@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@15 f_23@@30))
))) (forall ((o2_5@@16 T@Ref) (f_23@@31 T@Field_6045_6046) ) (!  (=> (select (|PolymorphicMapType_6521_3397_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@27) null (PredicateMaskField_9361 pm_f_5@@6))) o2_5@@16 f_23@@31) (= (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@27) o2_5@@16 f_23@@31) (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@16 f_23@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@16 f_23@@31))
))) (forall ((o2_5@@17 T@Ref) (f_23@@32 T@Field_3397_9379) ) (!  (=> (select (|PolymorphicMapType_6521_3397_22420#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@27) null (PredicateMaskField_9361 pm_f_5@@6))) o2_5@@17 f_23@@32) (= (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@27) o2_5@@17 f_23@@32) (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@17 f_23@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@17 f_23@@32))
))) (forall ((o2_5@@18 T@Ref) (f_23@@33 T@Field_3397_9391) ) (!  (=> (select (|PolymorphicMapType_6521_3397_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@27) null (PredicateMaskField_9361 pm_f_5@@6))) o2_5@@18 f_23@@33) (= (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@27) o2_5@@18 f_23@@33) (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@18 f_23@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@18 f_23@@33))
))) (forall ((o2_5@@19 T@Ref) (f_23@@34 T@Field_9361_1210) ) (!  (=> (select (|PolymorphicMapType_6521_9361_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@27) null (PredicateMaskField_9361 pm_f_5@@6))) o2_5@@19 f_23@@34) (= (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@27) o2_5@@19 f_23@@34) (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@19 f_23@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@19 f_23@@34))
))) (forall ((o2_5@@20 T@Ref) (f_23@@35 T@Field_9361_53) ) (!  (=> (select (|PolymorphicMapType_6521_9361_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@27) null (PredicateMaskField_9361 pm_f_5@@6))) o2_5@@20 f_23@@35) (= (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@27) o2_5@@20 f_23@@35) (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@20 f_23@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@20 f_23@@35))
))) (forall ((o2_5@@21 T@Ref) (f_23@@36 T@Field_9361_6046) ) (!  (=> (select (|PolymorphicMapType_6521_9361_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@27) null (PredicateMaskField_9361 pm_f_5@@6))) o2_5@@21 f_23@@36) (= (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@27) o2_5@@21 f_23@@36) (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@21 f_23@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@21 f_23@@36))
))) (forall ((o2_5@@22 T@Ref) (f_23@@37 T@Field_9374_9379) ) (!  (=> (select (|PolymorphicMapType_6521_9361_23468#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@27) null (PredicateMaskField_9361 pm_f_5@@6))) o2_5@@22 f_23@@37) (= (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@27) o2_5@@22 f_23@@37) (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@22 f_23@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@22 f_23@@37))
))) (forall ((o2_5@@23 T@Ref) (f_23@@38 T@Field_9390_9391) ) (!  (=> (select (|PolymorphicMapType_6521_9361_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@27) null (PredicateMaskField_9361 pm_f_5@@6))) o2_5@@23 f_23@@38) (= (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@27) o2_5@@23 f_23@@38) (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@23 f_23@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@23 f_23@@38))
))) (forall ((o2_5@@24 T@Ref) (f_23@@39 T@Field_10454_1568) ) (!  (=> (select (|PolymorphicMapType_6521_10454_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@27) null (PredicateMaskField_9361 pm_f_5@@6))) o2_5@@24 f_23@@39) (= (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@27) o2_5@@24 f_23@@39) (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@24 f_23@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@24 f_23@@39))
))) (forall ((o2_5@@25 T@Ref) (f_23@@40 T@Field_10454_53) ) (!  (=> (select (|PolymorphicMapType_6521_10454_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@27) null (PredicateMaskField_9361 pm_f_5@@6))) o2_5@@25 f_23@@40) (= (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@27) o2_5@@25 f_23@@40) (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@25 f_23@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@25 f_23@@40))
))) (forall ((o2_5@@26 T@Ref) (f_23@@41 T@Field_10454_6046) ) (!  (=> (select (|PolymorphicMapType_6521_10454_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@27) null (PredicateMaskField_9361 pm_f_5@@6))) o2_5@@26 f_23@@41) (= (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@27) o2_5@@26 f_23@@41) (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@26 f_23@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@26 f_23@@41))
))) (forall ((o2_5@@27 T@Ref) (f_23@@42 T@Field_11933_11938) ) (!  (=> (select (|PolymorphicMapType_6521_10454_24516#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@27) null (PredicateMaskField_9361 pm_f_5@@6))) o2_5@@27 f_23@@42) (= (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@27) o2_5@@27 f_23@@42) (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@27 f_23@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@27 f_23@@42))
))) (forall ((o2_5@@28 T@Ref) (f_23@@43 T@Field_10454_10455) ) (!  (=> (select (|PolymorphicMapType_6521_10454_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@27) null (PredicateMaskField_9361 pm_f_5@@6))) o2_5@@28 f_23@@43) (= (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@27) o2_5@@28 f_23@@43) (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@28 f_23@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| ExhaleHeap@@23) o2_5@@28 f_23@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@54) (IsPredicateField_3370_3371 pm_f_5@@6))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5972) (ExhaleHeap@@24 T@PolymorphicMapType_5972) (Mask@@55 T@PolymorphicMapType_5993) (pm_f_5@@7 T@Field_3397_9391) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_3397_9391 Mask@@55 null pm_f_5@@7) (IsPredicateField_3397_20802 pm_f_5@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_23@@44 T@Field_10061_1568) ) (!  (=> (select (|PolymorphicMapType_6521_3397_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@28) null (PredicateMaskField_3397 pm_f_5@@7))) o2_5@@29 f_23@@44) (= (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@28) o2_5@@29 f_23@@44) (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@29 f_23@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@29 f_23@@44))
)) (forall ((o2_5@@30 T@Ref) (f_23@@45 T@Field_6032_53) ) (!  (=> (select (|PolymorphicMapType_6521_3397_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@28) null (PredicateMaskField_3397 pm_f_5@@7))) o2_5@@30 f_23@@45) (= (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@28) o2_5@@30 f_23@@45) (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@30 f_23@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@30 f_23@@45))
))) (forall ((o2_5@@31 T@Ref) (f_23@@46 T@Field_6045_6046) ) (!  (=> (select (|PolymorphicMapType_6521_3397_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@28) null (PredicateMaskField_3397 pm_f_5@@7))) o2_5@@31 f_23@@46) (= (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@28) o2_5@@31 f_23@@46) (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@31 f_23@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@31 f_23@@46))
))) (forall ((o2_5@@32 T@Ref) (f_23@@47 T@Field_3397_9379) ) (!  (=> (select (|PolymorphicMapType_6521_3397_22420#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@28) null (PredicateMaskField_3397 pm_f_5@@7))) o2_5@@32 f_23@@47) (= (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@28) o2_5@@32 f_23@@47) (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@32 f_23@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@32 f_23@@47))
))) (forall ((o2_5@@33 T@Ref) (f_23@@48 T@Field_3397_9391) ) (!  (=> (select (|PolymorphicMapType_6521_3397_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@28) null (PredicateMaskField_3397 pm_f_5@@7))) o2_5@@33 f_23@@48) (= (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@28) o2_5@@33 f_23@@48) (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@33 f_23@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@33 f_23@@48))
))) (forall ((o2_5@@34 T@Ref) (f_23@@49 T@Field_9361_1210) ) (!  (=> (select (|PolymorphicMapType_6521_9361_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@28) null (PredicateMaskField_3397 pm_f_5@@7))) o2_5@@34 f_23@@49) (= (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@28) o2_5@@34 f_23@@49) (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@34 f_23@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@34 f_23@@49))
))) (forall ((o2_5@@35 T@Ref) (f_23@@50 T@Field_9361_53) ) (!  (=> (select (|PolymorphicMapType_6521_9361_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@28) null (PredicateMaskField_3397 pm_f_5@@7))) o2_5@@35 f_23@@50) (= (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@28) o2_5@@35 f_23@@50) (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@35 f_23@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@35 f_23@@50))
))) (forall ((o2_5@@36 T@Ref) (f_23@@51 T@Field_9361_6046) ) (!  (=> (select (|PolymorphicMapType_6521_9361_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@28) null (PredicateMaskField_3397 pm_f_5@@7))) o2_5@@36 f_23@@51) (= (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@28) o2_5@@36 f_23@@51) (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@36 f_23@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@36 f_23@@51))
))) (forall ((o2_5@@37 T@Ref) (f_23@@52 T@Field_9374_9379) ) (!  (=> (select (|PolymorphicMapType_6521_9361_23468#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@28) null (PredicateMaskField_3397 pm_f_5@@7))) o2_5@@37 f_23@@52) (= (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@28) o2_5@@37 f_23@@52) (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@37 f_23@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@37 f_23@@52))
))) (forall ((o2_5@@38 T@Ref) (f_23@@53 T@Field_9390_9391) ) (!  (=> (select (|PolymorphicMapType_6521_9361_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@28) null (PredicateMaskField_3397 pm_f_5@@7))) o2_5@@38 f_23@@53) (= (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@28) o2_5@@38 f_23@@53) (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@38 f_23@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@38 f_23@@53))
))) (forall ((o2_5@@39 T@Ref) (f_23@@54 T@Field_10454_1568) ) (!  (=> (select (|PolymorphicMapType_6521_10454_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@28) null (PredicateMaskField_3397 pm_f_5@@7))) o2_5@@39 f_23@@54) (= (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@28) o2_5@@39 f_23@@54) (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@39 f_23@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@39 f_23@@54))
))) (forall ((o2_5@@40 T@Ref) (f_23@@55 T@Field_10454_53) ) (!  (=> (select (|PolymorphicMapType_6521_10454_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@28) null (PredicateMaskField_3397 pm_f_5@@7))) o2_5@@40 f_23@@55) (= (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@28) o2_5@@40 f_23@@55) (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@40 f_23@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@40 f_23@@55))
))) (forall ((o2_5@@41 T@Ref) (f_23@@56 T@Field_10454_6046) ) (!  (=> (select (|PolymorphicMapType_6521_10454_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@28) null (PredicateMaskField_3397 pm_f_5@@7))) o2_5@@41 f_23@@56) (= (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@28) o2_5@@41 f_23@@56) (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@41 f_23@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@41 f_23@@56))
))) (forall ((o2_5@@42 T@Ref) (f_23@@57 T@Field_11933_11938) ) (!  (=> (select (|PolymorphicMapType_6521_10454_24516#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@28) null (PredicateMaskField_3397 pm_f_5@@7))) o2_5@@42 f_23@@57) (= (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@28) o2_5@@42 f_23@@57) (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@42 f_23@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@42 f_23@@57))
))) (forall ((o2_5@@43 T@Ref) (f_23@@58 T@Field_10454_10455) ) (!  (=> (select (|PolymorphicMapType_6521_10454_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@28) null (PredicateMaskField_3397 pm_f_5@@7))) o2_5@@43 f_23@@58) (= (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@28) o2_5@@43 f_23@@58) (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@43 f_23@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| ExhaleHeap@@24) o2_5@@43 f_23@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@55) (IsPredicateField_3397_20802 pm_f_5@@7))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5972) (ExhaleHeap@@25 T@PolymorphicMapType_5972) (Mask@@56 T@PolymorphicMapType_5993) (pm_f_5@@8 T@Field_10454_10455) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_10454_9391 Mask@@56 null pm_f_5@@8) (IsWandField_10454_26491 pm_f_5@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@44 T@Ref) (f_23@@59 T@Field_10061_1568) ) (!  (=> (select (|PolymorphicMapType_6521_3397_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@29) null (WandMaskField_10454 pm_f_5@@8))) o2_5@@44 f_23@@59) (= (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@29) o2_5@@44 f_23@@59) (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@44 f_23@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@44 f_23@@59))
)) (forall ((o2_5@@45 T@Ref) (f_23@@60 T@Field_6032_53) ) (!  (=> (select (|PolymorphicMapType_6521_3397_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@29) null (WandMaskField_10454 pm_f_5@@8))) o2_5@@45 f_23@@60) (= (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@29) o2_5@@45 f_23@@60) (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@45 f_23@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@45 f_23@@60))
))) (forall ((o2_5@@46 T@Ref) (f_23@@61 T@Field_6045_6046) ) (!  (=> (select (|PolymorphicMapType_6521_3397_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@29) null (WandMaskField_10454 pm_f_5@@8))) o2_5@@46 f_23@@61) (= (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@29) o2_5@@46 f_23@@61) (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@46 f_23@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@46 f_23@@61))
))) (forall ((o2_5@@47 T@Ref) (f_23@@62 T@Field_3397_9379) ) (!  (=> (select (|PolymorphicMapType_6521_3397_22420#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@29) null (WandMaskField_10454 pm_f_5@@8))) o2_5@@47 f_23@@62) (= (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@29) o2_5@@47 f_23@@62) (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@47 f_23@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@47 f_23@@62))
))) (forall ((o2_5@@48 T@Ref) (f_23@@63 T@Field_3397_9391) ) (!  (=> (select (|PolymorphicMapType_6521_3397_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@29) null (WandMaskField_10454 pm_f_5@@8))) o2_5@@48 f_23@@63) (= (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@29) o2_5@@48 f_23@@63) (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@48 f_23@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@48 f_23@@63))
))) (forall ((o2_5@@49 T@Ref) (f_23@@64 T@Field_9361_1210) ) (!  (=> (select (|PolymorphicMapType_6521_9361_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@29) null (WandMaskField_10454 pm_f_5@@8))) o2_5@@49 f_23@@64) (= (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@29) o2_5@@49 f_23@@64) (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@49 f_23@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@49 f_23@@64))
))) (forall ((o2_5@@50 T@Ref) (f_23@@65 T@Field_9361_53) ) (!  (=> (select (|PolymorphicMapType_6521_9361_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@29) null (WandMaskField_10454 pm_f_5@@8))) o2_5@@50 f_23@@65) (= (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@29) o2_5@@50 f_23@@65) (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@50 f_23@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@50 f_23@@65))
))) (forall ((o2_5@@51 T@Ref) (f_23@@66 T@Field_9361_6046) ) (!  (=> (select (|PolymorphicMapType_6521_9361_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@29) null (WandMaskField_10454 pm_f_5@@8))) o2_5@@51 f_23@@66) (= (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@29) o2_5@@51 f_23@@66) (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@51 f_23@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@51 f_23@@66))
))) (forall ((o2_5@@52 T@Ref) (f_23@@67 T@Field_9374_9379) ) (!  (=> (select (|PolymorphicMapType_6521_9361_23468#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@29) null (WandMaskField_10454 pm_f_5@@8))) o2_5@@52 f_23@@67) (= (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@29) o2_5@@52 f_23@@67) (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@52 f_23@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@52 f_23@@67))
))) (forall ((o2_5@@53 T@Ref) (f_23@@68 T@Field_9390_9391) ) (!  (=> (select (|PolymorphicMapType_6521_9361_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@29) null (WandMaskField_10454 pm_f_5@@8))) o2_5@@53 f_23@@68) (= (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@29) o2_5@@53 f_23@@68) (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@53 f_23@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@53 f_23@@68))
))) (forall ((o2_5@@54 T@Ref) (f_23@@69 T@Field_10454_1568) ) (!  (=> (select (|PolymorphicMapType_6521_10454_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@29) null (WandMaskField_10454 pm_f_5@@8))) o2_5@@54 f_23@@69) (= (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@29) o2_5@@54 f_23@@69) (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@54 f_23@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@54 f_23@@69))
))) (forall ((o2_5@@55 T@Ref) (f_23@@70 T@Field_10454_53) ) (!  (=> (select (|PolymorphicMapType_6521_10454_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@29) null (WandMaskField_10454 pm_f_5@@8))) o2_5@@55 f_23@@70) (= (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@29) o2_5@@55 f_23@@70) (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@55 f_23@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@55 f_23@@70))
))) (forall ((o2_5@@56 T@Ref) (f_23@@71 T@Field_10454_6046) ) (!  (=> (select (|PolymorphicMapType_6521_10454_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@29) null (WandMaskField_10454 pm_f_5@@8))) o2_5@@56 f_23@@71) (= (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@29) o2_5@@56 f_23@@71) (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@56 f_23@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@56 f_23@@71))
))) (forall ((o2_5@@57 T@Ref) (f_23@@72 T@Field_11933_11938) ) (!  (=> (select (|PolymorphicMapType_6521_10454_24516#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@29) null (WandMaskField_10454 pm_f_5@@8))) o2_5@@57 f_23@@72) (= (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@29) o2_5@@57 f_23@@72) (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@57 f_23@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@57 f_23@@72))
))) (forall ((o2_5@@58 T@Ref) (f_23@@73 T@Field_10454_10455) ) (!  (=> (select (|PolymorphicMapType_6521_10454_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@29) null (WandMaskField_10454 pm_f_5@@8))) o2_5@@58 f_23@@73) (= (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@29) o2_5@@58 f_23@@73) (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@58 f_23@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| ExhaleHeap@@25) o2_5@@58 f_23@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@25 Mask@@56) (IsWandField_10454_26491 pm_f_5@@8))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5972) (ExhaleHeap@@26 T@PolymorphicMapType_5972) (Mask@@57 T@PolymorphicMapType_5993) (pm_f_5@@9 T@Field_9390_9391) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_9361_9391 Mask@@57 null pm_f_5@@9) (IsWandField_3370_3371 pm_f_5@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@59 T@Ref) (f_23@@74 T@Field_10061_1568) ) (!  (=> (select (|PolymorphicMapType_6521_3397_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@30) null (WandMaskField_3370 pm_f_5@@9))) o2_5@@59 f_23@@74) (= (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@30) o2_5@@59 f_23@@74) (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@59 f_23@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@59 f_23@@74))
)) (forall ((o2_5@@60 T@Ref) (f_23@@75 T@Field_6032_53) ) (!  (=> (select (|PolymorphicMapType_6521_3397_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@30) null (WandMaskField_3370 pm_f_5@@9))) o2_5@@60 f_23@@75) (= (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@30) o2_5@@60 f_23@@75) (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@60 f_23@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@60 f_23@@75))
))) (forall ((o2_5@@61 T@Ref) (f_23@@76 T@Field_6045_6046) ) (!  (=> (select (|PolymorphicMapType_6521_3397_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@30) null (WandMaskField_3370 pm_f_5@@9))) o2_5@@61 f_23@@76) (= (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@30) o2_5@@61 f_23@@76) (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@61 f_23@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@61 f_23@@76))
))) (forall ((o2_5@@62 T@Ref) (f_23@@77 T@Field_3397_9379) ) (!  (=> (select (|PolymorphicMapType_6521_3397_22420#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@30) null (WandMaskField_3370 pm_f_5@@9))) o2_5@@62 f_23@@77) (= (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@30) o2_5@@62 f_23@@77) (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@62 f_23@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@62 f_23@@77))
))) (forall ((o2_5@@63 T@Ref) (f_23@@78 T@Field_3397_9391) ) (!  (=> (select (|PolymorphicMapType_6521_3397_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@30) null (WandMaskField_3370 pm_f_5@@9))) o2_5@@63 f_23@@78) (= (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@30) o2_5@@63 f_23@@78) (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@63 f_23@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@63 f_23@@78))
))) (forall ((o2_5@@64 T@Ref) (f_23@@79 T@Field_9361_1210) ) (!  (=> (select (|PolymorphicMapType_6521_9361_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@30) null (WandMaskField_3370 pm_f_5@@9))) o2_5@@64 f_23@@79) (= (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@30) o2_5@@64 f_23@@79) (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@64 f_23@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@64 f_23@@79))
))) (forall ((o2_5@@65 T@Ref) (f_23@@80 T@Field_9361_53) ) (!  (=> (select (|PolymorphicMapType_6521_9361_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@30) null (WandMaskField_3370 pm_f_5@@9))) o2_5@@65 f_23@@80) (= (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@30) o2_5@@65 f_23@@80) (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@65 f_23@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@65 f_23@@80))
))) (forall ((o2_5@@66 T@Ref) (f_23@@81 T@Field_9361_6046) ) (!  (=> (select (|PolymorphicMapType_6521_9361_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@30) null (WandMaskField_3370 pm_f_5@@9))) o2_5@@66 f_23@@81) (= (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@30) o2_5@@66 f_23@@81) (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@66 f_23@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@66 f_23@@81))
))) (forall ((o2_5@@67 T@Ref) (f_23@@82 T@Field_9374_9379) ) (!  (=> (select (|PolymorphicMapType_6521_9361_23468#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@30) null (WandMaskField_3370 pm_f_5@@9))) o2_5@@67 f_23@@82) (= (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@30) o2_5@@67 f_23@@82) (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@67 f_23@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@67 f_23@@82))
))) (forall ((o2_5@@68 T@Ref) (f_23@@83 T@Field_9390_9391) ) (!  (=> (select (|PolymorphicMapType_6521_9361_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@30) null (WandMaskField_3370 pm_f_5@@9))) o2_5@@68 f_23@@83) (= (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@30) o2_5@@68 f_23@@83) (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@68 f_23@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@68 f_23@@83))
))) (forall ((o2_5@@69 T@Ref) (f_23@@84 T@Field_10454_1568) ) (!  (=> (select (|PolymorphicMapType_6521_10454_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@30) null (WandMaskField_3370 pm_f_5@@9))) o2_5@@69 f_23@@84) (= (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@30) o2_5@@69 f_23@@84) (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@69 f_23@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@69 f_23@@84))
))) (forall ((o2_5@@70 T@Ref) (f_23@@85 T@Field_10454_53) ) (!  (=> (select (|PolymorphicMapType_6521_10454_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@30) null (WandMaskField_3370 pm_f_5@@9))) o2_5@@70 f_23@@85) (= (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@30) o2_5@@70 f_23@@85) (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@70 f_23@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@70 f_23@@85))
))) (forall ((o2_5@@71 T@Ref) (f_23@@86 T@Field_10454_6046) ) (!  (=> (select (|PolymorphicMapType_6521_10454_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@30) null (WandMaskField_3370 pm_f_5@@9))) o2_5@@71 f_23@@86) (= (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@30) o2_5@@71 f_23@@86) (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@71 f_23@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@71 f_23@@86))
))) (forall ((o2_5@@72 T@Ref) (f_23@@87 T@Field_11933_11938) ) (!  (=> (select (|PolymorphicMapType_6521_10454_24516#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@30) null (WandMaskField_3370 pm_f_5@@9))) o2_5@@72 f_23@@87) (= (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@30) o2_5@@72 f_23@@87) (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@72 f_23@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@72 f_23@@87))
))) (forall ((o2_5@@73 T@Ref) (f_23@@88 T@Field_10454_10455) ) (!  (=> (select (|PolymorphicMapType_6521_10454_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@30) null (WandMaskField_3370 pm_f_5@@9))) o2_5@@73 f_23@@88) (= (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@30) o2_5@@73 f_23@@88) (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@73 f_23@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| ExhaleHeap@@26) o2_5@@73 f_23@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@26 Mask@@57) (IsWandField_3370_3371 pm_f_5@@9))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_5972) (ExhaleHeap@@27 T@PolymorphicMapType_5972) (Mask@@58 T@PolymorphicMapType_5993) (pm_f_5@@10 T@Field_3397_9391) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_3397_9391 Mask@@58 null pm_f_5@@10) (IsWandField_3397_25809 pm_f_5@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@74 T@Ref) (f_23@@89 T@Field_10061_1568) ) (!  (=> (select (|PolymorphicMapType_6521_3397_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@31) null (WandMaskField_3397 pm_f_5@@10))) o2_5@@74 f_23@@89) (= (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@31) o2_5@@74 f_23@@89) (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@74 f_23@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@74 f_23@@89))
)) (forall ((o2_5@@75 T@Ref) (f_23@@90 T@Field_6032_53) ) (!  (=> (select (|PolymorphicMapType_6521_3397_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@31) null (WandMaskField_3397 pm_f_5@@10))) o2_5@@75 f_23@@90) (= (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@31) o2_5@@75 f_23@@90) (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@75 f_23@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@75 f_23@@90))
))) (forall ((o2_5@@76 T@Ref) (f_23@@91 T@Field_6045_6046) ) (!  (=> (select (|PolymorphicMapType_6521_3397_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@31) null (WandMaskField_3397 pm_f_5@@10))) o2_5@@76 f_23@@91) (= (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@31) o2_5@@76 f_23@@91) (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@76 f_23@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@76 f_23@@91))
))) (forall ((o2_5@@77 T@Ref) (f_23@@92 T@Field_3397_9379) ) (!  (=> (select (|PolymorphicMapType_6521_3397_22420#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@31) null (WandMaskField_3397 pm_f_5@@10))) o2_5@@77 f_23@@92) (= (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@31) o2_5@@77 f_23@@92) (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@77 f_23@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@77 f_23@@92))
))) (forall ((o2_5@@78 T@Ref) (f_23@@93 T@Field_3397_9391) ) (!  (=> (select (|PolymorphicMapType_6521_3397_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@31) null (WandMaskField_3397 pm_f_5@@10))) o2_5@@78 f_23@@93) (= (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@31) o2_5@@78 f_23@@93) (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@78 f_23@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@78 f_23@@93))
))) (forall ((o2_5@@79 T@Ref) (f_23@@94 T@Field_9361_1210) ) (!  (=> (select (|PolymorphicMapType_6521_9361_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@31) null (WandMaskField_3397 pm_f_5@@10))) o2_5@@79 f_23@@94) (= (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@31) o2_5@@79 f_23@@94) (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@79 f_23@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@79 f_23@@94))
))) (forall ((o2_5@@80 T@Ref) (f_23@@95 T@Field_9361_53) ) (!  (=> (select (|PolymorphicMapType_6521_9361_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@31) null (WandMaskField_3397 pm_f_5@@10))) o2_5@@80 f_23@@95) (= (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@31) o2_5@@80 f_23@@95) (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@80 f_23@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@80 f_23@@95))
))) (forall ((o2_5@@81 T@Ref) (f_23@@96 T@Field_9361_6046) ) (!  (=> (select (|PolymorphicMapType_6521_9361_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@31) null (WandMaskField_3397 pm_f_5@@10))) o2_5@@81 f_23@@96) (= (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@31) o2_5@@81 f_23@@96) (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@81 f_23@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@81 f_23@@96))
))) (forall ((o2_5@@82 T@Ref) (f_23@@97 T@Field_9374_9379) ) (!  (=> (select (|PolymorphicMapType_6521_9361_23468#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@31) null (WandMaskField_3397 pm_f_5@@10))) o2_5@@82 f_23@@97) (= (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@31) o2_5@@82 f_23@@97) (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@82 f_23@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@82 f_23@@97))
))) (forall ((o2_5@@83 T@Ref) (f_23@@98 T@Field_9390_9391) ) (!  (=> (select (|PolymorphicMapType_6521_9361_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@31) null (WandMaskField_3397 pm_f_5@@10))) o2_5@@83 f_23@@98) (= (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@31) o2_5@@83 f_23@@98) (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@83 f_23@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@83 f_23@@98))
))) (forall ((o2_5@@84 T@Ref) (f_23@@99 T@Field_10454_1568) ) (!  (=> (select (|PolymorphicMapType_6521_10454_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@31) null (WandMaskField_3397 pm_f_5@@10))) o2_5@@84 f_23@@99) (= (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@31) o2_5@@84 f_23@@99) (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@84 f_23@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@84 f_23@@99))
))) (forall ((o2_5@@85 T@Ref) (f_23@@100 T@Field_10454_53) ) (!  (=> (select (|PolymorphicMapType_6521_10454_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@31) null (WandMaskField_3397 pm_f_5@@10))) o2_5@@85 f_23@@100) (= (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@31) o2_5@@85 f_23@@100) (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@85 f_23@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@85 f_23@@100))
))) (forall ((o2_5@@86 T@Ref) (f_23@@101 T@Field_10454_6046) ) (!  (=> (select (|PolymorphicMapType_6521_10454_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@31) null (WandMaskField_3397 pm_f_5@@10))) o2_5@@86 f_23@@101) (= (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@31) o2_5@@86 f_23@@101) (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@86 f_23@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@86 f_23@@101))
))) (forall ((o2_5@@87 T@Ref) (f_23@@102 T@Field_11933_11938) ) (!  (=> (select (|PolymorphicMapType_6521_10454_24516#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@31) null (WandMaskField_3397 pm_f_5@@10))) o2_5@@87 f_23@@102) (= (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@31) o2_5@@87 f_23@@102) (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@87 f_23@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@87 f_23@@102))
))) (forall ((o2_5@@88 T@Ref) (f_23@@103 T@Field_10454_10455) ) (!  (=> (select (|PolymorphicMapType_6521_10454_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@31) null (WandMaskField_3397 pm_f_5@@10))) o2_5@@88 f_23@@103) (= (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@31) o2_5@@88 f_23@@103) (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@88 f_23@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| ExhaleHeap@@27) o2_5@@88 f_23@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@27 Mask@@58) (IsWandField_3397_25809 pm_f_5@@10))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_5972) (Mask@@59 T@PolymorphicMapType_5993) (p_1@@1 T@Ref) ) (!  (=> (and (state Heap@@32 Mask@@59) (< AssumeFunctionsAbove 0)) (= (sum_1 Heap@@32 p_1@@1) (+ (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@32) p_1@@1 f_7) (select (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@32) p_1@@1 g))))
 :qid |stdinbpl.244:15|
 :skolemid |31|
 :pattern ( (state Heap@@32 Mask@@59) (sum_1 Heap@@32 p_1@@1))
 :pattern ( (state Heap@@32 Mask@@59) (|sum#triggerStateless| p_1@@1) (|Pair#trigger_3428| Heap@@32 (Pair p_1@@1)))
)))
(assert (forall ((arg1@@4 Bool) (arg2@@4 T@Ref) (arg3@@4 Real) (arg4@@4 T@Ref) (arg5@@4 Int) (arg1_2 Bool) (arg2_2 T@Ref) (arg3_2 Real) (arg4_2 T@Ref) (arg5_2 Int) ) (!  (=> (= (wand arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2)) (and (= arg1@@4 arg1_2) (and (= arg2@@4 arg2_2) (and (= arg3@@4 arg3_2) (and (= arg4@@4 arg4_2) (= arg5@@4 arg5_2))))))
 :qid |stdinbpl.211:15|
 :skolemid |28|
 :pattern ( (wand arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2))
)))
(assert (forall ((arg1@@5 Bool) (arg2@@5 T@Ref) (arg3@@5 Real) (arg4@@5 T@Ref) (arg5@@5 Int) ) (! (= (|wand#sm| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5) (WandMaskField_3370 (|wand#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5)))
 :qid |stdinbpl.203:15|
 :skolemid |26|
 :pattern ( (WandMaskField_3370 (|wand#ft| arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_5972) (Mask@@60 T@PolymorphicMapType_5993) (p_1@@2 T@Ref) ) (!  (=> (state Heap@@33 Mask@@60) (= (|sum'| Heap@@33 p_1@@2) (|sum#frame| (select (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@33) null (Pair p_1@@2)) p_1@@2)))
 :qid |stdinbpl.251:15|
 :skolemid |32|
 :pattern ( (state Heap@@33 Mask@@60) (|sum'| Heap@@33 p_1@@2))
)))
(assert (forall ((this@@3 T@Ref) ) (! (= (getPredWandId_3428_3429 (Pair this@@3)) 0)
 :qid |stdinbpl.335:15|
 :skolemid |35|
 :pattern ( (Pair this@@3))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_5972) (o_14 T@Ref) (f_24 T@Field_9374_9379) (v T@PolymorphicMapType_6521) ) (! (succHeap Heap@@34 (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@34) (store (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@34) o_14 f_24 v) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@34) (store (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@34) o_14 f_24 v) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@34) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_5972) (o_14@@0 T@Ref) (f_24@@0 T@Field_9390_9391) (v@@0 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@35) (store (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@35) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@35) (store (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@35) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@35) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_5972) (o_14@@1 T@Ref) (f_24@@1 T@Field_9361_1210) (v@@1 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@36) (store (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@36) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@36) (store (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@36) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@36) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_5972) (o_14@@2 T@Ref) (f_24@@2 T@Field_9361_6046) (v@@2 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@37) (store (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@37) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@37) (store (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@37) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@37) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_5972) (o_14@@3 T@Ref) (f_24@@3 T@Field_9361_53) (v@@3 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@38) (store (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@38) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@38) (store (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@38) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@38) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_5972) (o_14@@4 T@Ref) (f_24@@4 T@Field_11933_11938) (v@@4 T@PolymorphicMapType_6521) ) (! (succHeap Heap@@39 (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@39) (store (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@39) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@39) (store (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@39) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@39) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_5972) (o_14@@5 T@Ref) (f_24@@5 T@Field_10454_10455) (v@@5 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@40) (store (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@40) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@40) (store (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@40) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@40) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_5972) (o_14@@6 T@Ref) (f_24@@6 T@Field_10454_1568) (v@@6 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@41) (store (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@41) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@41) (store (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@41) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@41) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_5972) (o_14@@7 T@Ref) (f_24@@7 T@Field_10454_6046) (v@@7 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@42) (store (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@42) o_14@@7 f_24@@7 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@42) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@42) (store (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@42) o_14@@7 f_24@@7 v@@7)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_5972) (o_14@@8 T@Ref) (f_24@@8 T@Field_10454_53) (v@@8 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@43) (store (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@43) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@43) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@43) (store (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@43) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_5972) (o_14@@9 T@Ref) (f_24@@9 T@Field_3397_9379) (v@@9 T@PolymorphicMapType_6521) ) (! (succHeap Heap@@44 (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@44) (store (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@44) o_14@@9 f_24@@9 v@@9) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@44) (store (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@44) o_14@@9 f_24@@9 v@@9) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@44) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_5972) (o_14@@10 T@Ref) (f_24@@10 T@Field_3397_9391) (v@@10 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@45) (store (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@45) o_14@@10 f_24@@10 v@@10) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@45) (store (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@45) o_14@@10 f_24@@10 v@@10) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@45) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_5972) (o_14@@11 T@Ref) (f_24@@11 T@Field_10061_1568) (v@@11 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@46) (store (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@46) o_14@@11 f_24@@11 v@@11) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@46) (store (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@46) o_14@@11 f_24@@11 v@@11) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@46) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_5972) (o_14@@12 T@Ref) (f_24@@12 T@Field_6045_6046) (v@@12 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@47) (store (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@47) o_14@@12 f_24@@12 v@@12) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@47) (store (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@47) o_14@@12 f_24@@12 v@@12) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@47) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_5972) (o_14@@13 T@Ref) (f_24@@13 T@Field_6032_53) (v@@13 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_5972 (store (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@48) o_14@@13 f_24@@13 v@@13) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5972 (store (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@48) o_14@@13 f_24@@13 v@@13) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@48) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@48)))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (PredicateMaskField_3428 (Pair this@@4)) (|Pair#sm| this@@4))
 :qid |stdinbpl.327:15|
 :skolemid |33|
 :pattern ( (PredicateMaskField_3428 (Pair this@@4)))
)))
(assert (forall ((o_14@@14 T@Ref) (f_22 T@Field_6045_6046) (Heap@@49 T@PolymorphicMapType_5972) ) (!  (=> (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@49) o_14@@14 $allocated) (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@49) (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@49) o_14@@14 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@49) o_14@@14 f_22))
)))
(assert (forall ((p@@3 T@Field_10454_10455) (v_1@@2 T@FrameType) (q T@Field_10454_10455) (w@@2 T@FrameType) (r T@Field_10454_10455) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10454_10454 p@@3 v_1@@2 q w@@2) (InsidePredicate_10454_10454 q w@@2 r u)) (InsidePredicate_10454_10454 p@@3 v_1@@2 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10454_10454 p@@3 v_1@@2 q w@@2) (InsidePredicate_10454_10454 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_10454_10455) (v_1@@3 T@FrameType) (q@@0 T@Field_10454_10455) (w@@3 T@FrameType) (r@@0 T@Field_9390_9391) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_10454_10454 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_10454_9361 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_10454_9361 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10454_10454 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_10454_9361 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_10454_10455) (v_1@@4 T@FrameType) (q@@1 T@Field_10454_10455) (w@@4 T@FrameType) (r@@1 T@Field_3397_9391) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_10454_10454 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_10454_6032 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_10454_6032 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10454_10454 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_10454_6032 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_10454_10455) (v_1@@5 T@FrameType) (q@@2 T@Field_9390_9391) (w@@5 T@FrameType) (r@@2 T@Field_10454_10455) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_10454_9361 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_9361_10454 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_10454_10454 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10454_9361 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_9361_10454 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_10454_10455) (v_1@@6 T@FrameType) (q@@3 T@Field_9390_9391) (w@@6 T@FrameType) (r@@3 T@Field_9390_9391) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_10454_9361 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_9361_9361 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_10454_9361 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10454_9361 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_9361_9361 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_10454_10455) (v_1@@7 T@FrameType) (q@@4 T@Field_9390_9391) (w@@7 T@FrameType) (r@@4 T@Field_3397_9391) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_10454_9361 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_9361_6032 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_10454_6032 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10454_9361 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_9361_6032 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_10454_10455) (v_1@@8 T@FrameType) (q@@5 T@Field_3397_9391) (w@@8 T@FrameType) (r@@5 T@Field_10454_10455) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_10454_6032 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_6032_10454 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_10454_10454 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10454_6032 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_6032_10454 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_10454_10455) (v_1@@9 T@FrameType) (q@@6 T@Field_3397_9391) (w@@9 T@FrameType) (r@@6 T@Field_9390_9391) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_10454_6032 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_6032_9361 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_10454_9361 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10454_6032 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_6032_9361 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_10454_10455) (v_1@@10 T@FrameType) (q@@7 T@Field_3397_9391) (w@@10 T@FrameType) (r@@7 T@Field_3397_9391) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_10454_6032 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_6032_6032 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_10454_6032 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10454_6032 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_6032_6032 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_9390_9391) (v_1@@11 T@FrameType) (q@@8 T@Field_10454_10455) (w@@11 T@FrameType) (r@@8 T@Field_10454_10455) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_9361_10454 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_10454_10454 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_9361_10454 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9361_10454 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_10454_10454 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_9390_9391) (v_1@@12 T@FrameType) (q@@9 T@Field_10454_10455) (w@@12 T@FrameType) (r@@9 T@Field_9390_9391) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_9361_10454 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_10454_9361 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_9361_9361 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9361_10454 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_10454_9361 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_9390_9391) (v_1@@13 T@FrameType) (q@@10 T@Field_10454_10455) (w@@13 T@FrameType) (r@@10 T@Field_3397_9391) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_9361_10454 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_10454_6032 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_9361_6032 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9361_10454 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_10454_6032 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_9390_9391) (v_1@@14 T@FrameType) (q@@11 T@Field_9390_9391) (w@@14 T@FrameType) (r@@11 T@Field_10454_10455) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_9361_9361 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_9361_10454 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_9361_10454 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9361_9361 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_9361_10454 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_9390_9391) (v_1@@15 T@FrameType) (q@@12 T@Field_9390_9391) (w@@15 T@FrameType) (r@@12 T@Field_9390_9391) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_9361_9361 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_9361_9361 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_9361_9361 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9361_9361 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_9361_9361 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_9390_9391) (v_1@@16 T@FrameType) (q@@13 T@Field_9390_9391) (w@@16 T@FrameType) (r@@13 T@Field_3397_9391) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_9361_9361 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_9361_6032 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_9361_6032 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9361_9361 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_9361_6032 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_9390_9391) (v_1@@17 T@FrameType) (q@@14 T@Field_3397_9391) (w@@17 T@FrameType) (r@@14 T@Field_10454_10455) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_9361_6032 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_6032_10454 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_9361_10454 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9361_6032 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_6032_10454 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_9390_9391) (v_1@@18 T@FrameType) (q@@15 T@Field_3397_9391) (w@@18 T@FrameType) (r@@15 T@Field_9390_9391) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_9361_6032 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_6032_9361 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_9361_9361 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9361_6032 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_6032_9361 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_9390_9391) (v_1@@19 T@FrameType) (q@@16 T@Field_3397_9391) (w@@19 T@FrameType) (r@@16 T@Field_3397_9391) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_9361_6032 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_6032_6032 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_9361_6032 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9361_6032 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_6032_6032 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_3397_9391) (v_1@@20 T@FrameType) (q@@17 T@Field_10454_10455) (w@@20 T@FrameType) (r@@17 T@Field_10454_10455) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_6032_10454 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_10454_10454 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_6032_10454 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6032_10454 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_10454_10454 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_3397_9391) (v_1@@21 T@FrameType) (q@@18 T@Field_10454_10455) (w@@21 T@FrameType) (r@@18 T@Field_9390_9391) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_6032_10454 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_10454_9361 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_6032_9361 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6032_10454 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_10454_9361 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_3397_9391) (v_1@@22 T@FrameType) (q@@19 T@Field_10454_10455) (w@@22 T@FrameType) (r@@19 T@Field_3397_9391) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_6032_10454 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_10454_6032 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_6032_6032 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6032_10454 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_10454_6032 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_3397_9391) (v_1@@23 T@FrameType) (q@@20 T@Field_9390_9391) (w@@23 T@FrameType) (r@@20 T@Field_10454_10455) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_6032_9361 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_9361_10454 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_6032_10454 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6032_9361 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_9361_10454 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_3397_9391) (v_1@@24 T@FrameType) (q@@21 T@Field_9390_9391) (w@@24 T@FrameType) (r@@21 T@Field_9390_9391) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_6032_9361 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_9361_9361 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_6032_9361 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6032_9361 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_9361_9361 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_3397_9391) (v_1@@25 T@FrameType) (q@@22 T@Field_9390_9391) (w@@25 T@FrameType) (r@@22 T@Field_3397_9391) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_6032_9361 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_9361_6032 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_6032_6032 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6032_9361 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_9361_6032 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_3397_9391) (v_1@@26 T@FrameType) (q@@23 T@Field_3397_9391) (w@@26 T@FrameType) (r@@23 T@Field_10454_10455) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_6032_6032 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_6032_10454 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_6032_10454 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6032_6032 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_6032_10454 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_3397_9391) (v_1@@27 T@FrameType) (q@@24 T@Field_3397_9391) (w@@27 T@FrameType) (r@@24 T@Field_9390_9391) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_6032_6032 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_6032_9361 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_6032_9361 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6032_6032 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_6032_9361 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_3397_9391) (v_1@@28 T@FrameType) (q@@25 T@Field_3397_9391) (w@@28 T@FrameType) (r@@25 T@Field_3397_9391) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_6032_6032 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_6032_6032 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_6032_6032 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6032_6032 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_6032_6032 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun ResultMask@@14 () T@PolymorphicMapType_5993)
(declare-fun p_1@@3 () T@Ref)
(declare-fun b_1_1@3 () Bool)
(declare-fun b_2_1@6 () Bool)
(declare-fun ResultHeap () T@PolymorphicMapType_5972)
(declare-fun b_1_1@2 () Bool)
(declare-fun neededTransfer@3 () Real)
(declare-fun Used_1Mask@3 () T@PolymorphicMapType_5993)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_3@0 () Bool)
(declare-fun b_3@1 () Bool)
(declare-fun b_3@2 () Bool)
(declare-fun Ops_1Mask@1 () T@PolymorphicMapType_5993)
(declare-fun b_3@3 () Bool)
(declare-fun Ops_1Heap@0 () T@PolymorphicMapType_5972)
(declare-fun Used_1Heap@0 () T@PolymorphicMapType_5972)
(declare-fun b_3@4 () Bool)
(declare-fun takeTransfer@1 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_5993)
(declare-fun Mask@0 () T@PolymorphicMapType_5993)
(declare-fun neededTransfer@1 () Real)
(declare-fun b_2_1@3 () Bool)
(declare-fun Used_1Mask@1 () T@PolymorphicMapType_5993)
(declare-fun Heap@1 () T@PolymorphicMapType_5972)
(declare-fun Heap@@50 () T@PolymorphicMapType_5972)
(declare-fun neededTransfer@2 () Real)
(declare-fun Used_1Mask@2 () T@PolymorphicMapType_5993)
(declare-fun b_2_1@4 () Bool)
(declare-fun TempMask@1 () T@PolymorphicMapType_5993)
(declare-fun b_2_1@5 () Bool)
(declare-fun Mask@1 () T@PolymorphicMapType_5993)
(declare-fun newPMask@0 () T@PolymorphicMapType_6521)
(declare-fun Heap@0 () T@PolymorphicMapType_5972)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun b_2_1@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun Used_1Mask@0 () T@PolymorphicMapType_5993)
(declare-fun b_2_1@1 () Bool)
(declare-fun TempMask@0 () T@PolymorphicMapType_5993)
(declare-fun b_2_1@2 () Bool)
(declare-fun Ops_1Mask@0 () T@PolymorphicMapType_5993)
(declare-fun maskTransfer@0 () Real)
(declare-fun b_1_1@1 () Bool)
(declare-fun b_1_1@0 () Bool)
(declare-fun b_2_1 () Bool)
(declare-fun b_1_1 () Bool)
(declare-fun b_2@0 () Bool)
(declare-fun b_2 () Bool)
(declare-fun UsedHeap@0 () T@PolymorphicMapType_5972)
(set-info :boogie-vc-id test00)
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
 (=> (= (ControlFlow 0 0) 31) (let ((anon31_Then_correct  (=> (= (ControlFlow 0 8) (- 0 7)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| ResultMask@@14) null (Pair p_1@@3)))))))
(let ((anon20_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (=> (and (and b_1_1@3 b_1_1@3) b_2_1@6) (> (sum_1 ResultHeap p_1@@3) 0)))))
(let ((anon30_Then_correct  (=> b_1_1@3 (and (=> (= (ControlFlow 0 9) 8) anon31_Then_correct) (=> (= (ControlFlow 0 9) 4) anon20_correct)))))
(let ((anon30_Else_correct  (=> (and (not b_1_1@3) (= (ControlFlow 0 6) 4)) anon20_correct)))
(let ((anon29_Then_correct  (=> (and (and b_1_1@3 b_1_1@3) b_2_1@6) (and (=> (= (ControlFlow 0 10) 9) anon30_Then_correct) (=> (= (ControlFlow 0 10) 6) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (and (not (and (and b_1_1@3 b_1_1@3) b_2_1@6)) (= (ControlFlow 0 5) 4)) anon20_correct)))
(let ((anon16_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (=> (and (and b_1_1@2 b_1_1@2) b_2_1@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| Used_1Mask@3) null (Pair p_1@@3)) initNeededTransfer@0)))) (=> (=> (and (and b_1_1@2 b_1_1@2) b_2_1@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| Used_1Mask@3) null (Pair p_1@@3)) initNeededTransfer@0))) (=> (and (= b_3@0  (and b_1_1@2 b_2_1@6)) (= b_3@1  (and b_3@0 (state ResultHeap ResultMask@@14)))) (=> (and (and (= b_3@2  (and b_3@1 (sumMask ResultMask@@14 Ops_1Mask@1 Used_1Mask@3))) (= b_3@3  (and (and b_3@2 (IdenticalOnKnownLocations Ops_1Heap@0 ResultHeap Ops_1Mask@1)) (IdenticalOnKnownLocations Used_1Heap@0 ResultHeap Used_1Mask@3)))) (and (= b_3@4  (and b_3@3 (state ResultHeap ResultMask@@14))) (= b_1_1@3  (and b_1_1@2 b_3@4)))) (and (=> (= (ControlFlow 0 11) 10) anon29_Then_correct) (=> (= (ControlFlow 0 11) 5) anon29_Else_correct))))))))
(let ((anon28_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@2 Mask@0) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_2_1@6 b_2_1@3) (= Used_1Mask@3 Used_1Mask@1)) (and (= Heap@1 Heap@@50) (= (ControlFlow 0 15) 11))) anon16_correct)))))
(let ((anon28_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (= neededTransfer@2 (- neededTransfer@1 takeTransfer@1)) (= Used_1Mask@2 (PolymorphicMapType_5993 (store (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| Used_1Mask@1) null (Pair p_1@@3) (+ (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| Used_1Mask@1) null (Pair p_1@@3)) takeTransfer@1)) (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| Used_1Mask@1) (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| Used_1Mask@1) (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| Used_1Mask@1) (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| Used_1Mask@1) (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| Used_1Mask@1) (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| Used_1Mask@1) (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| Used_1Mask@1) (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| Used_1Mask@1) (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| Used_1Mask@1) (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| Used_1Mask@1) (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| Used_1Mask@1) (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| Used_1Mask@1) (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| Used_1Mask@1) (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| Used_1Mask@1)))) (=> (and (and (= b_2_1@4  (and b_2_1@3 (state Used_1Heap@0 Used_1Mask@2))) (= TempMask@1 (PolymorphicMapType_5993 (store (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| ZeroMask) null (Pair p_1@@3) FullPerm) (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| ZeroMask)))) (and (= b_2_1@5  (and b_2_1@4 (IdenticalOnKnownLocations Heap@@50 Used_1Heap@0 TempMask@1))) (= Mask@1 (PolymorphicMapType_5993 (store (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| Mask@0) null (Pair p_1@@3) (- (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| Mask@0) null (Pair p_1@@3)) takeTransfer@1)) (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| Mask@0) (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| Mask@0) (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| Mask@0) (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| Mask@0) (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| Mask@0) (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| Mask@0) (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| Mask@0) (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| Mask@0) (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| Mask@0) (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| Mask@0) (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| Mask@0) (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| Mask@0) (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| Mask@0) (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| Mask@0))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_5 T@Ref) (f_11 T@Field_10061_1568) ) (!  (=> (or (select (|PolymorphicMapType_6521_3397_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@50) null (|wand#sm| true p_1@@3 FullPerm p_1@@3 0))) o_5 f_11) (select (|PolymorphicMapType_6521_3397_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@50) null (|Pair#sm| p_1@@3))) o_5 f_11)) (select (|PolymorphicMapType_6521_3397_1568#PolymorphicMapType_6521| newPMask@0) o_5 f_11))
 :qid |stdinbpl.528:35|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_6521_3397_1568#PolymorphicMapType_6521| newPMask@0) o_5 f_11))
)) (forall ((o_5@@0 T@Ref) (f_11@@0 T@Field_6032_53) ) (!  (=> (or (select (|PolymorphicMapType_6521_3397_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@50) null (|wand#sm| true p_1@@3 FullPerm p_1@@3 0))) o_5@@0 f_11@@0) (select (|PolymorphicMapType_6521_3397_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@50) null (|Pair#sm| p_1@@3))) o_5@@0 f_11@@0)) (select (|PolymorphicMapType_6521_3397_53#PolymorphicMapType_6521| newPMask@0) o_5@@0 f_11@@0))
 :qid |stdinbpl.528:35|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_6521_3397_53#PolymorphicMapType_6521| newPMask@0) o_5@@0 f_11@@0))
))) (forall ((o_5@@1 T@Ref) (f_11@@1 T@Field_6045_6046) ) (!  (=> (or (select (|PolymorphicMapType_6521_3397_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@50) null (|wand#sm| true p_1@@3 FullPerm p_1@@3 0))) o_5@@1 f_11@@1) (select (|PolymorphicMapType_6521_3397_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@50) null (|Pair#sm| p_1@@3))) o_5@@1 f_11@@1)) (select (|PolymorphicMapType_6521_3397_6046#PolymorphicMapType_6521| newPMask@0) o_5@@1 f_11@@1))
 :qid |stdinbpl.528:35|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_6521_3397_6046#PolymorphicMapType_6521| newPMask@0) o_5@@1 f_11@@1))
))) (forall ((o_5@@2 T@Ref) (f_11@@2 T@Field_3397_9379) ) (!  (=> (or (select (|PolymorphicMapType_6521_3397_22420#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@50) null (|wand#sm| true p_1@@3 FullPerm p_1@@3 0))) o_5@@2 f_11@@2) (select (|PolymorphicMapType_6521_3397_22420#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@50) null (|Pair#sm| p_1@@3))) o_5@@2 f_11@@2)) (select (|PolymorphicMapType_6521_3397_22420#PolymorphicMapType_6521| newPMask@0) o_5@@2 f_11@@2))
 :qid |stdinbpl.528:35|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_6521_3397_22420#PolymorphicMapType_6521| newPMask@0) o_5@@2 f_11@@2))
))) (forall ((o_5@@3 T@Ref) (f_11@@3 T@Field_3397_9391) ) (!  (=> (or (select (|PolymorphicMapType_6521_3397_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@50) null (|wand#sm| true p_1@@3 FullPerm p_1@@3 0))) o_5@@3 f_11@@3) (select (|PolymorphicMapType_6521_3397_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@50) null (|Pair#sm| p_1@@3))) o_5@@3 f_11@@3)) (select (|PolymorphicMapType_6521_3397_9391#PolymorphicMapType_6521| newPMask@0) o_5@@3 f_11@@3))
 :qid |stdinbpl.528:35|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_6521_3397_9391#PolymorphicMapType_6521| newPMask@0) o_5@@3 f_11@@3))
))) (forall ((o_5@@4 T@Ref) (f_11@@4 T@Field_9361_1210) ) (!  (=> (or (select (|PolymorphicMapType_6521_9361_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@50) null (|wand#sm| true p_1@@3 FullPerm p_1@@3 0))) o_5@@4 f_11@@4) (select (|PolymorphicMapType_6521_9361_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@50) null (|Pair#sm| p_1@@3))) o_5@@4 f_11@@4)) (select (|PolymorphicMapType_6521_9361_1568#PolymorphicMapType_6521| newPMask@0) o_5@@4 f_11@@4))
 :qid |stdinbpl.528:35|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_6521_9361_1568#PolymorphicMapType_6521| newPMask@0) o_5@@4 f_11@@4))
))) (forall ((o_5@@5 T@Ref) (f_11@@5 T@Field_9361_53) ) (!  (=> (or (select (|PolymorphicMapType_6521_9361_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@50) null (|wand#sm| true p_1@@3 FullPerm p_1@@3 0))) o_5@@5 f_11@@5) (select (|PolymorphicMapType_6521_9361_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@50) null (|Pair#sm| p_1@@3))) o_5@@5 f_11@@5)) (select (|PolymorphicMapType_6521_9361_53#PolymorphicMapType_6521| newPMask@0) o_5@@5 f_11@@5))
 :qid |stdinbpl.528:35|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_6521_9361_53#PolymorphicMapType_6521| newPMask@0) o_5@@5 f_11@@5))
))) (forall ((o_5@@6 T@Ref) (f_11@@6 T@Field_9361_6046) ) (!  (=> (or (select (|PolymorphicMapType_6521_9361_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@50) null (|wand#sm| true p_1@@3 FullPerm p_1@@3 0))) o_5@@6 f_11@@6) (select (|PolymorphicMapType_6521_9361_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@50) null (|Pair#sm| p_1@@3))) o_5@@6 f_11@@6)) (select (|PolymorphicMapType_6521_9361_6046#PolymorphicMapType_6521| newPMask@0) o_5@@6 f_11@@6))
 :qid |stdinbpl.528:35|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_6521_9361_6046#PolymorphicMapType_6521| newPMask@0) o_5@@6 f_11@@6))
))) (forall ((o_5@@7 T@Ref) (f_11@@7 T@Field_9374_9379) ) (!  (=> (or (select (|PolymorphicMapType_6521_9361_23468#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@50) null (|wand#sm| true p_1@@3 FullPerm p_1@@3 0))) o_5@@7 f_11@@7) (select (|PolymorphicMapType_6521_9361_23468#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@50) null (|Pair#sm| p_1@@3))) o_5@@7 f_11@@7)) (select (|PolymorphicMapType_6521_9361_23468#PolymorphicMapType_6521| newPMask@0) o_5@@7 f_11@@7))
 :qid |stdinbpl.528:35|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_6521_9361_23468#PolymorphicMapType_6521| newPMask@0) o_5@@7 f_11@@7))
))) (forall ((o_5@@8 T@Ref) (f_11@@8 T@Field_9390_9391) ) (!  (=> (or (select (|PolymorphicMapType_6521_9361_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@50) null (|wand#sm| true p_1@@3 FullPerm p_1@@3 0))) o_5@@8 f_11@@8) (select (|PolymorphicMapType_6521_9361_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@50) null (|Pair#sm| p_1@@3))) o_5@@8 f_11@@8)) (select (|PolymorphicMapType_6521_9361_9391#PolymorphicMapType_6521| newPMask@0) o_5@@8 f_11@@8))
 :qid |stdinbpl.528:35|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_6521_9361_9391#PolymorphicMapType_6521| newPMask@0) o_5@@8 f_11@@8))
))) (forall ((o_5@@9 T@Ref) (f_11@@9 T@Field_10454_1568) ) (!  (=> (or (select (|PolymorphicMapType_6521_10454_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@50) null (|wand#sm| true p_1@@3 FullPerm p_1@@3 0))) o_5@@9 f_11@@9) (select (|PolymorphicMapType_6521_10454_1568#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@50) null (|Pair#sm| p_1@@3))) o_5@@9 f_11@@9)) (select (|PolymorphicMapType_6521_10454_1568#PolymorphicMapType_6521| newPMask@0) o_5@@9 f_11@@9))
 :qid |stdinbpl.528:35|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_6521_10454_1568#PolymorphicMapType_6521| newPMask@0) o_5@@9 f_11@@9))
))) (forall ((o_5@@10 T@Ref) (f_11@@10 T@Field_10454_53) ) (!  (=> (or (select (|PolymorphicMapType_6521_10454_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@50) null (|wand#sm| true p_1@@3 FullPerm p_1@@3 0))) o_5@@10 f_11@@10) (select (|PolymorphicMapType_6521_10454_53#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@50) null (|Pair#sm| p_1@@3))) o_5@@10 f_11@@10)) (select (|PolymorphicMapType_6521_10454_53#PolymorphicMapType_6521| newPMask@0) o_5@@10 f_11@@10))
 :qid |stdinbpl.528:35|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_6521_10454_53#PolymorphicMapType_6521| newPMask@0) o_5@@10 f_11@@10))
))) (forall ((o_5@@11 T@Ref) (f_11@@11 T@Field_10454_6046) ) (!  (=> (or (select (|PolymorphicMapType_6521_10454_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@50) null (|wand#sm| true p_1@@3 FullPerm p_1@@3 0))) o_5@@11 f_11@@11) (select (|PolymorphicMapType_6521_10454_6046#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@50) null (|Pair#sm| p_1@@3))) o_5@@11 f_11@@11)) (select (|PolymorphicMapType_6521_10454_6046#PolymorphicMapType_6521| newPMask@0) o_5@@11 f_11@@11))
 :qid |stdinbpl.528:35|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_6521_10454_6046#PolymorphicMapType_6521| newPMask@0) o_5@@11 f_11@@11))
))) (forall ((o_5@@12 T@Ref) (f_11@@12 T@Field_11933_11938) ) (!  (=> (or (select (|PolymorphicMapType_6521_10454_24516#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@50) null (|wand#sm| true p_1@@3 FullPerm p_1@@3 0))) o_5@@12 f_11@@12) (select (|PolymorphicMapType_6521_10454_24516#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@50) null (|Pair#sm| p_1@@3))) o_5@@12 f_11@@12)) (select (|PolymorphicMapType_6521_10454_24516#PolymorphicMapType_6521| newPMask@0) o_5@@12 f_11@@12))
 :qid |stdinbpl.528:35|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_6521_10454_24516#PolymorphicMapType_6521| newPMask@0) o_5@@12 f_11@@12))
))) (forall ((o_5@@13 T@Ref) (f_11@@13 T@Field_10454_10455) ) (!  (=> (or (select (|PolymorphicMapType_6521_10454_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@50) null (|wand#sm| true p_1@@3 FullPerm p_1@@3 0))) o_5@@13 f_11@@13) (select (|PolymorphicMapType_6521_10454_9391#PolymorphicMapType_6521| (select (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@50) null (|Pair#sm| p_1@@3))) o_5@@13 f_11@@13)) (select (|PolymorphicMapType_6521_10454_9391#PolymorphicMapType_6521| newPMask@0) o_5@@13 f_11@@13))
 :qid |stdinbpl.528:35|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_6521_10454_9391#PolymorphicMapType_6521| newPMask@0) o_5@@13 f_11@@13))
))) (= Heap@0 (PolymorphicMapType_5972 (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@50) (|PolymorphicMapType_5972_3231_3232#PolymorphicMapType_5972| Heap@@50) (|PolymorphicMapType_5972_3397_1568#PolymorphicMapType_5972| Heap@@50) (|PolymorphicMapType_5972_3428_3429#PolymorphicMapType_5972| Heap@@50) (|PolymorphicMapType_5972_3432_12025#PolymorphicMapType_5972| Heap@@50) (store (|PolymorphicMapType_5972_3364_15998#PolymorphicMapType_5972| Heap@@50) null (|wand#sm| true p_1@@3 FullPerm p_1@@3 0) newPMask@0) (|PolymorphicMapType_5972_3397_18075#PolymorphicMapType_5972| Heap@@50) (|PolymorphicMapType_5972_3397_9391#PolymorphicMapType_5972| Heap@@50) (|PolymorphicMapType_5972_9361_1568#PolymorphicMapType_5972| Heap@@50) (|PolymorphicMapType_5972_9361_53#PolymorphicMapType_5972| Heap@@50) (|PolymorphicMapType_5972_9361_6046#PolymorphicMapType_5972| Heap@@50) (|PolymorphicMapType_5972_9361_9391#PolymorphicMapType_5972| Heap@@50) (|PolymorphicMapType_5972_10454_1568#PolymorphicMapType_5972| Heap@@50) (|PolymorphicMapType_5972_10454_53#PolymorphicMapType_5972| Heap@@50) (|PolymorphicMapType_5972_10454_6046#PolymorphicMapType_5972| Heap@@50)))) (and (= Mask@2 Mask@1) (= neededTransfer@3 neededTransfer@2))) (and (and (= b_2_1@6 b_2_1@5) (= Used_1Mask@3 Used_1Mask@2)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 14) 11)))) anon16_correct))))))
(let ((anon27_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@1) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 17) 14) anon28_Then_correct) (=> (= (ControlFlow 0 17) 15) anon28_Else_correct)))))
(let ((anon27_Then_correct  (=> (and (<= neededTransfer@1 maskTransfer@1) (= takeTransfer@1 neededTransfer@1)) (and (=> (= (ControlFlow 0 16) 14) anon28_Then_correct) (=> (= (ControlFlow 0 16) 15) anon28_Else_correct)))))
(let ((anon26_Then_correct  (=> (and (and (and (and (and b_1_1@2 b_1_1@2) b_2_1@3) true) (> neededTransfer@1 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| Mask@0) null (Pair p_1@@3)))) (and (=> (= (ControlFlow 0 18) 16) anon27_Then_correct) (=> (= (ControlFlow 0 18) 17) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (not (and (and (and (and b_1_1@2 b_1_1@2) b_2_1@3) true) (> neededTransfer@1 0.0))) (=> (and (= Mask@2 Mask@0) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_2_1@6 b_2_1@3) (= Used_1Mask@3 Used_1Mask@1)) (and (= Heap@1 Heap@@50) (= (ControlFlow 0 13) 11))) anon16_correct)))))
(let ((anon25_Else_correct  (=> (>= 0.0 takeTransfer@0) (=> (and (and (= Ops_1Mask@1 ZeroMask) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 21) 18) anon26_Then_correct) (=> (= (ControlFlow 0 21) 13) anon26_Else_correct))))))
(let ((anon25_Then_correct  (=> (> takeTransfer@0 0.0) (=> (and (= neededTransfer@0 (- FullPerm takeTransfer@0)) (= Used_1Mask@0 (PolymorphicMapType_5993 (store (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| ZeroMask) null (Pair p_1@@3) (+ (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| ZeroMask) null (Pair p_1@@3)) takeTransfer@0)) (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| ZeroMask)))) (=> (and (and (and (= b_2_1@1  (and b_2_1@0 (state Used_1Heap@0 Used_1Mask@0))) (= TempMask@0 (PolymorphicMapType_5993 (store (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| ZeroMask) null (Pair p_1@@3) FullPerm) (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| ZeroMask)))) (and (= b_2_1@2  (and b_2_1@1 (IdenticalOnKnownLocations Ops_1Heap@0 Used_1Heap@0 TempMask@0))) (= Ops_1Mask@0 (PolymorphicMapType_5993 (store (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| ZeroMask) null (Pair p_1@@3) (- (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| ZeroMask) null (Pair p_1@@3)) takeTransfer@0)) (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| ZeroMask))))) (and (and (= Ops_1Mask@1 Ops_1Mask@0) (= Used_1Mask@1 Used_1Mask@0)) (and (= b_2_1@3 b_2_1@2) (= neededTransfer@1 neededTransfer@0)))) (and (=> (= (ControlFlow 0 20) 18) anon26_Then_correct) (=> (= (ControlFlow 0 20) 13) anon26_Else_correct)))))))
(let ((anon24_Else_correct  (=> (and (< maskTransfer@0 FullPerm) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 23) 20) anon25_Then_correct) (=> (= (ControlFlow 0 23) 21) anon25_Else_correct)))))
(let ((anon24_Then_correct  (=> (and (<= FullPerm maskTransfer@0) (= takeTransfer@0 FullPerm)) (and (=> (= (ControlFlow 0 22) 20) anon25_Then_correct) (=> (= (ControlFlow 0 22) 21) anon25_Else_correct)))))
(let ((anon23_Then_correct  (=> (and (and (and (and (and b_1_1@2 b_1_1@2) b_2_1@0) true) (> FullPerm 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| ZeroMask) null (Pair p_1@@3)))) (and (=> (= (ControlFlow 0 24) 22) anon24_Then_correct) (=> (= (ControlFlow 0 24) 23) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (not (and (and (and (and b_1_1@2 b_1_1@2) b_2_1@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_1Mask@1 ZeroMask) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 19) 18) anon26_Then_correct) (=> (= (ControlFlow 0 19) 13) anon26_Else_correct))))))
(let ((anon4_correct  (=> (and (and (= b_1_1@1  (and b_1_1@0 (state Ops_1Heap@0 ZeroMask))) (= b_1_1@2  (and b_1_1@1 (state Ops_1Heap@0 ZeroMask)))) (and (= b_2_1@0  (and b_2_1 (state Used_1Heap@0 ZeroMask))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| ZeroMask) null (Pair p_1@@3)) FullPerm)))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 25) 24) anon23_Then_correct) (=> (= (ControlFlow 0 25) 19) anon23_Else_correct)))))))
(let ((anon22_Else_correct  (=> (and (not b_1_1@0) (= (ControlFlow 0 28) 25)) anon4_correct)))
(let ((anon22_Then_correct  (=> (and b_1_1@0 (= (ControlFlow 0 27) 25)) anon4_correct)))
(let ((anon21_Else_correct  (=> (and (and (> (sum_1 Heap@@50 p_1@@3) 0) (state Heap@@50 Mask@0)) (and (= b_1_1@0  (and b_1_1 (state Ops_1Heap@0 ZeroMask))) (= b_2@0  (and b_2 (state UsedHeap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 29) 27) anon22_Then_correct) (=> (= (ControlFlow 0 29) 28) anon22_Else_correct)))))
(let ((anon21_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| Mask@0) null (Pair p_1@@3)))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@50 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_5972_3228_53#PolymorphicMapType_5972| Heap@@50) p_1@@3 $allocated))) (and (and (= Mask@0 (PolymorphicMapType_5993 (store (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| ZeroMask) null (Pair p_1@@3) (+ (select (|PolymorphicMapType_5993_3428_3429#PolymorphicMapType_5993| ZeroMask) null (Pair p_1@@3)) FullPerm)) (|PolymorphicMapType_5993_3397_1568#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_1210#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_1568#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_53#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_6046#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3428_32529#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_3429#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_53#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_6046#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3397_32943#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_3429#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_53#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_6046#PolymorphicMapType_5993| ZeroMask) (|PolymorphicMapType_5993_3359_33357#PolymorphicMapType_5993| ZeroMask))) (state Heap@@50 Mask@0)) (and (state Heap@@50 Mask@0) (state Heap@@50 Mask@0)))) (and (=> (= (ControlFlow 0 30) 2) anon21_Then_correct) (=> (= (ControlFlow 0 30) 29) anon21_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 31) 30) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
