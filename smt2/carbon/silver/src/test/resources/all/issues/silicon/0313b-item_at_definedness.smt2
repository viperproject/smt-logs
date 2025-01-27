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
(declare-sort T@Field_8369_53 0)
(declare-sort T@Field_8382_8383 0)
(declare-sort T@Field_13042_13043 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12632_1739 0)
(declare-sort T@Field_15714_15719 0)
(declare-sort T@Field_4710_11720 0)
(declare-sort T@Field_4710_11734 0)
(declare-sort T@Field_11700_4711 0)
(declare-sort T@Field_11700_1222 0)
(declare-sort T@Field_11700_53 0)
(declare-sort T@Field_11715_11720 0)
(declare-sort T@Field_11733_11734 0)
(declare-sort T@Field_13042_4711 0)
(declare-sort T@Field_13042_1739 0)
(declare-sort T@Field_13042_53 0)
(declare-datatypes ((T@PolymorphicMapType_8330 0)) (((PolymorphicMapType_8330 (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| (Array T@Ref T@Field_13042_13043 Real)) (|PolymorphicMapType_8330_4708_1739#PolymorphicMapType_8330| (Array T@Ref T@Field_12632_1739 Real)) (|PolymorphicMapType_8330_4710_4711#PolymorphicMapType_8330| (Array T@Ref T@Field_8382_8383 Real)) (|PolymorphicMapType_8330_4660_1222#PolymorphicMapType_8330| (Array T@Ref T@Field_11700_1222 Real)) (|PolymorphicMapType_8330_4777_1739#PolymorphicMapType_8330| (Array T@Ref T@Field_13042_1739 Real)) (|PolymorphicMapType_8330_4777_4711#PolymorphicMapType_8330| (Array T@Ref T@Field_13042_4711 Real)) (|PolymorphicMapType_8330_4777_53#PolymorphicMapType_8330| (Array T@Ref T@Field_13042_53 Real)) (|PolymorphicMapType_8330_4777_40374#PolymorphicMapType_8330| (Array T@Ref T@Field_15714_15719 Real)) (|PolymorphicMapType_8330_4708_4778#PolymorphicMapType_8330| (Array T@Ref T@Field_4710_11734 Real)) (|PolymorphicMapType_8330_4708_53#PolymorphicMapType_8330| (Array T@Ref T@Field_8369_53 Real)) (|PolymorphicMapType_8330_4708_40773#PolymorphicMapType_8330| (Array T@Ref T@Field_4710_11720 Real)) (|PolymorphicMapType_8330_4660_4778#PolymorphicMapType_8330| (Array T@Ref T@Field_11733_11734 Real)) (|PolymorphicMapType_8330_4660_4711#PolymorphicMapType_8330| (Array T@Ref T@Field_11700_4711 Real)) (|PolymorphicMapType_8330_4660_53#PolymorphicMapType_8330| (Array T@Ref T@Field_11700_53 Real)) (|PolymorphicMapType_8330_4660_41187#PolymorphicMapType_8330| (Array T@Ref T@Field_11715_11720 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8858 0)) (((PolymorphicMapType_8858 (|PolymorphicMapType_8858_4708_1739#PolymorphicMapType_8858| (Array T@Ref T@Field_12632_1739 Bool)) (|PolymorphicMapType_8858_4710_4711#PolymorphicMapType_8858| (Array T@Ref T@Field_8382_8383 Bool)) (|PolymorphicMapType_8858_4708_53#PolymorphicMapType_8858| (Array T@Ref T@Field_8369_53 Bool)) (|PolymorphicMapType_8858_4708_30265#PolymorphicMapType_8858| (Array T@Ref T@Field_4710_11720 Bool)) (|PolymorphicMapType_8858_4708_11734#PolymorphicMapType_8858| (Array T@Ref T@Field_4710_11734 Bool)) (|PolymorphicMapType_8858_11700_1739#PolymorphicMapType_8858| (Array T@Ref T@Field_11700_1222 Bool)) (|PolymorphicMapType_8858_11700_4711#PolymorphicMapType_8858| (Array T@Ref T@Field_11700_4711 Bool)) (|PolymorphicMapType_8858_11700_53#PolymorphicMapType_8858| (Array T@Ref T@Field_11700_53 Bool)) (|PolymorphicMapType_8858_11700_31313#PolymorphicMapType_8858| (Array T@Ref T@Field_11715_11720 Bool)) (|PolymorphicMapType_8858_11700_11734#PolymorphicMapType_8858| (Array T@Ref T@Field_11733_11734 Bool)) (|PolymorphicMapType_8858_13042_1739#PolymorphicMapType_8858| (Array T@Ref T@Field_13042_1739 Bool)) (|PolymorphicMapType_8858_13042_4711#PolymorphicMapType_8858| (Array T@Ref T@Field_13042_4711 Bool)) (|PolymorphicMapType_8858_13042_53#PolymorphicMapType_8858| (Array T@Ref T@Field_13042_53 Bool)) (|PolymorphicMapType_8858_13042_32361#PolymorphicMapType_8858| (Array T@Ref T@Field_15714_15719 Bool)) (|PolymorphicMapType_8858_13042_11734#PolymorphicMapType_8858| (Array T@Ref T@Field_13042_13043 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8309 0)) (((PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| (Array T@Ref T@Field_8369_53 Bool)) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| (Array T@Ref T@Field_8382_8383 T@Ref)) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| (Array T@Ref T@Field_13042_13043 T@FrameType)) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| (Array T@Ref T@Field_12632_1739 Int)) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| (Array T@Ref T@Field_15714_15719 T@PolymorphicMapType_8858)) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| (Array T@Ref T@Field_4710_11720 T@PolymorphicMapType_8858)) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| (Array T@Ref T@Field_4710_11734 T@FrameType)) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| (Array T@Ref T@Field_11700_4711 T@Ref)) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| (Array T@Ref T@Field_11700_1222 Int)) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| (Array T@Ref T@Field_11700_53 Bool)) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| (Array T@Ref T@Field_11715_11720 T@PolymorphicMapType_8858)) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| (Array T@Ref T@Field_11733_11734 T@FrameType)) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| (Array T@Ref T@Field_13042_4711 T@Ref)) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| (Array T@Ref T@Field_13042_1739 Int)) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| (Array T@Ref T@Field_13042_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_8369_53)
(declare-fun value_1 () T@Field_12632_1739)
(declare-fun next () T@Field_8382_8383)
(declare-fun WandMaskField_4673 (T@Field_11733_11734) T@Field_11715_11720)
(declare-fun |wand#ft| (T@Ref T@Ref Int Int T@Ref Int T@Ref Bool) T@Field_11733_11734)
(declare-fun |wand#sm| (T@Ref T@Ref Int Int T@Ref Int T@Ref Bool) T@Field_11715_11720)
(declare-fun succHeap (T@PolymorphicMapType_8309 T@PolymorphicMapType_8309) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8309 T@PolymorphicMapType_8309) Bool)
(declare-fun state (T@PolymorphicMapType_8309 T@PolymorphicMapType_8330) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8330) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8858)
(declare-fun |item_at'| (T@PolymorphicMapType_8309 T@Ref Int) Int)
(declare-fun dummyFunction_2026 (Int) Bool)
(declare-fun |item_at#triggerStateless| (T@Ref Int) Int)
(declare-fun List (T@Ref) T@Field_13042_13043)
(declare-fun IsPredicateField_4777_4778 (T@Field_13042_13043) Bool)
(declare-fun |length'| (T@PolymorphicMapType_8309 T@Ref) Int)
(declare-fun |length#triggerStateless| (T@Ref) Int)
(declare-fun |List#trigger_4777| (T@PolymorphicMapType_8309 T@Field_13042_13043) Bool)
(declare-fun |List#everUsed_4777| (T@Field_13042_13043) Bool)
(declare-fun length_1 (T@PolymorphicMapType_8309 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8309 T@PolymorphicMapType_8309 T@PolymorphicMapType_8330) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4777 (T@Field_13042_13043) T@Field_15714_15719)
(declare-fun HasDirectPerm_13042_11734 (T@PolymorphicMapType_8330 T@Ref T@Field_13042_13043) Bool)
(declare-fun IsPredicateField_4673_4674 (T@Field_11733_11734) Bool)
(declare-fun PredicateMaskField_11700 (T@Field_11733_11734) T@Field_11715_11720)
(declare-fun HasDirectPerm_11700_11734 (T@PolymorphicMapType_8330 T@Ref T@Field_11733_11734) Bool)
(declare-fun IsPredicateField_4710_28662 (T@Field_4710_11734) Bool)
(declare-fun PredicateMaskField_4710 (T@Field_4710_11734) T@Field_4710_11720)
(declare-fun HasDirectPerm_4710_11734 (T@PolymorphicMapType_8330 T@Ref T@Field_4710_11734) Bool)
(declare-fun IsWandField_13042_34336 (T@Field_13042_13043) Bool)
(declare-fun WandMaskField_13042 (T@Field_13042_13043) T@Field_15714_15719)
(declare-fun IsWandField_4673_4674 (T@Field_11733_11734) Bool)
(declare-fun IsWandField_4710_33654 (T@Field_4710_11734) Bool)
(declare-fun WandMaskField_4710 (T@Field_4710_11734) T@Field_4710_11720)
(declare-fun |List#sm| (T@Ref) T@Field_15714_15719)
(declare-fun wand (T@Ref T@Ref Int Int T@Ref Int T@Ref Bool) T@Field_11700_1222)
(declare-fun IsWandField_4660_1222 (T@Field_11700_1222) Bool)
(declare-fun IsPredicateField_4660_1222 (T@Field_11700_1222) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_8309)
(declare-fun ZeroMask () T@PolymorphicMapType_8330)
(declare-fun InsidePredicate_11700_11700 (T@Field_11733_11734 T@FrameType T@Field_11733_11734 T@FrameType) Bool)
(declare-fun InsidePredicate_8369_8369 (T@Field_4710_11734 T@FrameType T@Field_4710_11734 T@FrameType) Bool)
(declare-fun InsidePredicate_4777_4777 (T@Field_13042_13043 T@FrameType T@Field_13042_13043 T@FrameType) Bool)
(declare-fun IsPredicateField_4708_1739 (T@Field_12632_1739) Bool)
(declare-fun IsWandField_4708_1739 (T@Field_12632_1739) Bool)
(declare-fun IsPredicateField_4710_4711 (T@Field_8382_8383) Bool)
(declare-fun IsWandField_4710_4711 (T@Field_8382_8383) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4660_44614 (T@Field_11715_11720) Bool)
(declare-fun IsWandField_4660_44630 (T@Field_11715_11720) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4660_53 (T@Field_11700_53) Bool)
(declare-fun IsWandField_4660_53 (T@Field_11700_53) Bool)
(declare-fun IsPredicateField_4660_4711 (T@Field_11700_4711) Bool)
(declare-fun IsWandField_4660_4711 (T@Field_11700_4711) Bool)
(declare-fun IsPredicateField_4708_43797 (T@Field_4710_11720) Bool)
(declare-fun IsWandField_4708_43813 (T@Field_4710_11720) Bool)
(declare-fun IsPredicateField_4708_53 (T@Field_8369_53) Bool)
(declare-fun IsWandField_4708_53 (T@Field_8369_53) Bool)
(declare-fun IsPredicateField_4777_42994 (T@Field_15714_15719) Bool)
(declare-fun IsWandField_4777_43010 (T@Field_15714_15719) Bool)
(declare-fun IsPredicateField_4777_53 (T@Field_13042_53) Bool)
(declare-fun IsWandField_4777_53 (T@Field_13042_53) Bool)
(declare-fun IsPredicateField_4777_4711 (T@Field_13042_4711) Bool)
(declare-fun IsWandField_4777_4711 (T@Field_13042_4711) Bool)
(declare-fun IsPredicateField_4777_1739 (T@Field_13042_1739) Bool)
(declare-fun IsWandField_4777_1739 (T@Field_13042_1739) Bool)
(declare-fun HasDirectPerm_13042_28206 (T@PolymorphicMapType_8330 T@Ref T@Field_15714_15719) Bool)
(declare-fun HasDirectPerm_13042_53 (T@PolymorphicMapType_8330 T@Ref T@Field_13042_53) Bool)
(declare-fun HasDirectPerm_13042_1739 (T@PolymorphicMapType_8330 T@Ref T@Field_13042_1739) Bool)
(declare-fun HasDirectPerm_13042_4711 (T@PolymorphicMapType_8330 T@Ref T@Field_13042_4711) Bool)
(declare-fun HasDirectPerm_11700_27028 (T@PolymorphicMapType_8330 T@Ref T@Field_11715_11720) Bool)
(declare-fun HasDirectPerm_11700_53 (T@PolymorphicMapType_8330 T@Ref T@Field_11700_53) Bool)
(declare-fun HasDirectPerm_11700_1739 (T@PolymorphicMapType_8330 T@Ref T@Field_11700_1222) Bool)
(declare-fun HasDirectPerm_11700_4711 (T@PolymorphicMapType_8330 T@Ref T@Field_11700_4711) Bool)
(declare-fun HasDirectPerm_4710_25850 (T@PolymorphicMapType_8330 T@Ref T@Field_4710_11720) Bool)
(declare-fun HasDirectPerm_4710_53 (T@PolymorphicMapType_8330 T@Ref T@Field_8369_53) Bool)
(declare-fun HasDirectPerm_4708_1739 (T@PolymorphicMapType_8330 T@Ref T@Field_12632_1739) Bool)
(declare-fun HasDirectPerm_4710_4711 (T@PolymorphicMapType_8330 T@Ref T@Field_8382_8383) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun item_at (T@PolymorphicMapType_8309 T@Ref Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_8330 T@PolymorphicMapType_8330 T@PolymorphicMapType_8330) Bool)
(declare-fun getPredWandId_4660_1222 (T@Field_11700_1222) Int)
(declare-fun |item_at#frame| (T@FrameType T@Ref Int) Int)
(declare-fun |length#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_4777_4778 (T@Field_13042_13043) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |length#trigger| (T@FrameType T@Ref) Bool)
(declare-fun InsidePredicate_11700_8369 (T@Field_11733_11734 T@FrameType T@Field_4710_11734 T@FrameType) Bool)
(declare-fun InsidePredicate_11700_4777 (T@Field_11733_11734 T@FrameType T@Field_13042_13043 T@FrameType) Bool)
(declare-fun InsidePredicate_8369_11700 (T@Field_4710_11734 T@FrameType T@Field_11733_11734 T@FrameType) Bool)
(declare-fun InsidePredicate_8369_4777 (T@Field_4710_11734 T@FrameType T@Field_13042_13043 T@FrameType) Bool)
(declare-fun InsidePredicate_4777_11700 (T@Field_13042_13043 T@FrameType T@Field_11733_11734 T@FrameType) Bool)
(declare-fun InsidePredicate_4777_8369 (T@Field_13042_13043 T@FrameType T@Field_4710_11734 T@FrameType) Bool)
(assert (forall ((arg1 T@Ref) (arg2 T@Ref) (arg3 Int) (arg4 Int) (arg5 T@Ref) (arg6 Int) (arg7 T@Ref) (arg8 Bool) ) (! (= (|wand#sm| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8) (WandMaskField_4673 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8)))
 :qid |stdinbpl.204:15|
 :skolemid |26|
 :pattern ( (WandMaskField_4673 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8)))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_8309) (Heap1 T@PolymorphicMapType_8309) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8309) (Mask T@PolymorphicMapType_8330) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8309) (Heap1@@0 T@PolymorphicMapType_8309) (Heap2 T@PolymorphicMapType_8309) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_13042_13043) ) (!  (not (select (|PolymorphicMapType_8858_13042_11734#PolymorphicMapType_8858| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8858_13042_11734#PolymorphicMapType_8858| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_15714_15719) ) (!  (not (select (|PolymorphicMapType_8858_13042_32361#PolymorphicMapType_8858| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8858_13042_32361#PolymorphicMapType_8858| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13042_53) ) (!  (not (select (|PolymorphicMapType_8858_13042_53#PolymorphicMapType_8858| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8858_13042_53#PolymorphicMapType_8858| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_13042_4711) ) (!  (not (select (|PolymorphicMapType_8858_13042_4711#PolymorphicMapType_8858| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8858_13042_4711#PolymorphicMapType_8858| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_13042_1739) ) (!  (not (select (|PolymorphicMapType_8858_13042_1739#PolymorphicMapType_8858| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8858_13042_1739#PolymorphicMapType_8858| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_11733_11734) ) (!  (not (select (|PolymorphicMapType_8858_11700_11734#PolymorphicMapType_8858| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8858_11700_11734#PolymorphicMapType_8858| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_11715_11720) ) (!  (not (select (|PolymorphicMapType_8858_11700_31313#PolymorphicMapType_8858| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8858_11700_31313#PolymorphicMapType_8858| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_11700_53) ) (!  (not (select (|PolymorphicMapType_8858_11700_53#PolymorphicMapType_8858| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8858_11700_53#PolymorphicMapType_8858| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_11700_4711) ) (!  (not (select (|PolymorphicMapType_8858_11700_4711#PolymorphicMapType_8858| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8858_11700_4711#PolymorphicMapType_8858| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11700_1222) ) (!  (not (select (|PolymorphicMapType_8858_11700_1739#PolymorphicMapType_8858| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8858_11700_1739#PolymorphicMapType_8858| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_4710_11734) ) (!  (not (select (|PolymorphicMapType_8858_4708_11734#PolymorphicMapType_8858| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8858_4708_11734#PolymorphicMapType_8858| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_4710_11720) ) (!  (not (select (|PolymorphicMapType_8858_4708_30265#PolymorphicMapType_8858| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8858_4708_30265#PolymorphicMapType_8858| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_8369_53) ) (!  (not (select (|PolymorphicMapType_8858_4708_53#PolymorphicMapType_8858| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8858_4708_53#PolymorphicMapType_8858| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_8382_8383) ) (!  (not (select (|PolymorphicMapType_8858_4710_4711#PolymorphicMapType_8858| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8858_4710_4711#PolymorphicMapType_8858| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_12632_1739) ) (!  (not (select (|PolymorphicMapType_8858_4708_1739#PolymorphicMapType_8858| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8858_4708_1739#PolymorphicMapType_8858| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8309) (this T@Ref) (count Int) ) (! (dummyFunction_2026 (|item_at#triggerStateless| this count))
 :qid |stdinbpl.380:15|
 :skolemid |36|
 :pattern ( (|item_at'| Heap@@0 this count))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_4777_4778 (List this@@0))
 :qid |stdinbpl.534:15|
 :skolemid |41|
 :pattern ( (List this@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8309) (this@@1 T@Ref) ) (! (dummyFunction_2026 (|length#triggerStateless| this@@1))
 :qid |stdinbpl.239:15|
 :skolemid |30|
 :pattern ( (|length'| Heap@@1 this@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8309) (this@@2 T@Ref) ) (! (|List#everUsed_4777| (List this@@2))
 :qid |stdinbpl.553:15|
 :skolemid |45|
 :pattern ( (|List#trigger_4777| Heap@@2 (List this@@2)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8309) (this@@3 T@Ref) ) (!  (and (= (length_1 Heap@@3 this@@3) (|length'| Heap@@3 this@@3)) (dummyFunction_2026 (|length#triggerStateless| this@@3)))
 :qid |stdinbpl.235:15|
 :skolemid |29|
 :pattern ( (length_1 Heap@@3 this@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8309) (ExhaleHeap T@PolymorphicMapType_8309) (Mask@@0 T@PolymorphicMapType_8330) (pm_f_19 T@Field_13042_13043) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_13042_11734 Mask@@0 null pm_f_19) (IsPredicateField_4777_4778 pm_f_19)) (= (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@4) null (PredicateMaskField_4777 pm_f_19)) (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| ExhaleHeap) null (PredicateMaskField_4777 pm_f_19)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (IsPredicateField_4777_4778 pm_f_19) (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| ExhaleHeap) null (PredicateMaskField_4777 pm_f_19)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8309) (ExhaleHeap@@0 T@PolymorphicMapType_8309) (Mask@@1 T@PolymorphicMapType_8330) (pm_f_19@@0 T@Field_11733_11734) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11700_11734 Mask@@1 null pm_f_19@@0) (IsPredicateField_4673_4674 pm_f_19@@0)) (= (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@5) null (PredicateMaskField_11700 pm_f_19@@0)) (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| ExhaleHeap@@0) null (PredicateMaskField_11700 pm_f_19@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4673_4674 pm_f_19@@0) (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| ExhaleHeap@@0) null (PredicateMaskField_11700 pm_f_19@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8309) (ExhaleHeap@@1 T@PolymorphicMapType_8309) (Mask@@2 T@PolymorphicMapType_8330) (pm_f_19@@1 T@Field_4710_11734) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4710_11734 Mask@@2 null pm_f_19@@1) (IsPredicateField_4710_28662 pm_f_19@@1)) (= (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@6) null (PredicateMaskField_4710 pm_f_19@@1)) (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| ExhaleHeap@@1) null (PredicateMaskField_4710 pm_f_19@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4710_28662 pm_f_19@@1) (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| ExhaleHeap@@1) null (PredicateMaskField_4710 pm_f_19@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8309) (ExhaleHeap@@2 T@PolymorphicMapType_8309) (Mask@@3 T@PolymorphicMapType_8330) (pm_f_19@@2 T@Field_13042_13043) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_13042_11734 Mask@@3 null pm_f_19@@2) (IsWandField_13042_34336 pm_f_19@@2)) (= (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@7) null (WandMaskField_13042 pm_f_19@@2)) (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| ExhaleHeap@@2) null (WandMaskField_13042 pm_f_19@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (IsWandField_13042_34336 pm_f_19@@2) (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| ExhaleHeap@@2) null (WandMaskField_13042 pm_f_19@@2)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8309) (ExhaleHeap@@3 T@PolymorphicMapType_8309) (Mask@@4 T@PolymorphicMapType_8330) (pm_f_19@@3 T@Field_11733_11734) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_11700_11734 Mask@@4 null pm_f_19@@3) (IsWandField_4673_4674 pm_f_19@@3)) (= (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@8) null (WandMaskField_4673 pm_f_19@@3)) (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| ExhaleHeap@@3) null (WandMaskField_4673 pm_f_19@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (IsWandField_4673_4674 pm_f_19@@3) (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| ExhaleHeap@@3) null (WandMaskField_4673 pm_f_19@@3)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8309) (ExhaleHeap@@4 T@PolymorphicMapType_8309) (Mask@@5 T@PolymorphicMapType_8330) (pm_f_19@@4 T@Field_4710_11734) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4710_11734 Mask@@5 null pm_f_19@@4) (IsWandField_4710_33654 pm_f_19@@4)) (= (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@9) null (WandMaskField_4710 pm_f_19@@4)) (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| ExhaleHeap@@4) null (WandMaskField_4710 pm_f_19@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (IsWandField_4710_33654 pm_f_19@@4) (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| ExhaleHeap@@4) null (WandMaskField_4710 pm_f_19@@4)))
)))
(assert (forall ((this@@4 T@Ref) (this2 T@Ref) ) (!  (=> (= (List this@@4) (List this2)) (= this@@4 this2))
 :qid |stdinbpl.544:15|
 :skolemid |43|
 :pattern ( (List this@@4) (List this2))
)))
(assert (forall ((this@@5 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|List#sm| this@@5) (|List#sm| this2@@0)) (= this@@5 this2@@0))
 :qid |stdinbpl.548:15|
 :skolemid |44|
 :pattern ( (|List#sm| this@@5) (|List#sm| this2@@0))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 T@Ref) (arg3@@0 Int) (arg4@@0 Int) (arg5@@0 T@Ref) (arg6@@0 Int) (arg7@@0 T@Ref) (arg8@@0 Bool) ) (! (IsWandField_4660_1222 (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0 arg8@@0))
 :qid |stdinbpl.188:15|
 :skolemid |22|
 :pattern ( (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0 arg8@@0))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 T@Ref) (arg3@@1 Int) (arg4@@1 Int) (arg5@@1 T@Ref) (arg6@@1 Int) (arg7@@1 T@Ref) (arg8@@1 Bool) ) (! (IsWandField_4673_4674 (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1 arg8@@1))
 :qid |stdinbpl.192:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1 arg8@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 T@Ref) (arg3@@2 Int) (arg4@@2 Int) (arg5@@2 T@Ref) (arg6@@2 Int) (arg7@@2 T@Ref) (arg8@@2 Bool) ) (!  (not (IsPredicateField_4660_1222 (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2 arg8@@2)))
 :qid |stdinbpl.196:15|
 :skolemid |24|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2 arg8@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 T@Ref) (arg3@@3 Int) (arg4@@3 Int) (arg5@@3 T@Ref) (arg6@@3 Int) (arg7@@3 T@Ref) (arg8@@3 Bool) ) (!  (not (IsPredicateField_4673_4674 (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3 arg8@@3)))
 :qid |stdinbpl.200:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3 arg8@@3))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8309) (ExhaleHeap@@5 T@PolymorphicMapType_8309) (Mask@@6 T@PolymorphicMapType_8330) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@10) o_12 $allocated) (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| ExhaleHeap@@5) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| ExhaleHeap@@5) o_12 $allocated))
)))
(assert (forall ((p T@Field_11733_11734) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11700_11700 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11700_11700 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_4710_11734) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8369_8369 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8369_8369 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_13042_13043) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_4777_4777 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4777_4777 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_4708_1739 value_1)))
(assert  (not (IsWandField_4708_1739 value_1)))
(assert  (not (IsPredicateField_4710_4711 next)))
(assert  (not (IsWandField_4710_4711 next)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8309) (ExhaleHeap@@6 T@PolymorphicMapType_8309) (Mask@@7 T@PolymorphicMapType_8330) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@11 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8330) (o_2@@14 T@Ref) (f_4@@14 T@Field_11715_11720) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8330_4660_41187#PolymorphicMapType_8330| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4660_44614 f_4@@14))) (not (IsWandField_4660_44630 f_4@@14))) (<= (select (|PolymorphicMapType_8330_4660_41187#PolymorphicMapType_8330| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8330_4660_41187#PolymorphicMapType_8330| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8330) (o_2@@15 T@Ref) (f_4@@15 T@Field_11700_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_8330_4660_53#PolymorphicMapType_8330| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4660_53 f_4@@15))) (not (IsWandField_4660_53 f_4@@15))) (<= (select (|PolymorphicMapType_8330_4660_53#PolymorphicMapType_8330| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_8330_4660_53#PolymorphicMapType_8330| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8330) (o_2@@16 T@Ref) (f_4@@16 T@Field_11700_4711) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8330_4660_4711#PolymorphicMapType_8330| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4660_4711 f_4@@16))) (not (IsWandField_4660_4711 f_4@@16))) (<= (select (|PolymorphicMapType_8330_4660_4711#PolymorphicMapType_8330| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8330_4660_4711#PolymorphicMapType_8330| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8330) (o_2@@17 T@Ref) (f_4@@17 T@Field_11700_1222) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8330_4660_1222#PolymorphicMapType_8330| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4660_1222 f_4@@17))) (not (IsWandField_4660_1222 f_4@@17))) (<= (select (|PolymorphicMapType_8330_4660_1222#PolymorphicMapType_8330| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8330_4660_1222#PolymorphicMapType_8330| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8330) (o_2@@18 T@Ref) (f_4@@18 T@Field_11733_11734) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8330_4660_4778#PolymorphicMapType_8330| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4673_4674 f_4@@18))) (not (IsWandField_4673_4674 f_4@@18))) (<= (select (|PolymorphicMapType_8330_4660_4778#PolymorphicMapType_8330| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8330_4660_4778#PolymorphicMapType_8330| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8330) (o_2@@19 T@Ref) (f_4@@19 T@Field_4710_11720) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8330_4708_40773#PolymorphicMapType_8330| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4708_43797 f_4@@19))) (not (IsWandField_4708_43813 f_4@@19))) (<= (select (|PolymorphicMapType_8330_4708_40773#PolymorphicMapType_8330| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8330_4708_40773#PolymorphicMapType_8330| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8330) (o_2@@20 T@Ref) (f_4@@20 T@Field_8369_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8330_4708_53#PolymorphicMapType_8330| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4708_53 f_4@@20))) (not (IsWandField_4708_53 f_4@@20))) (<= (select (|PolymorphicMapType_8330_4708_53#PolymorphicMapType_8330| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8330_4708_53#PolymorphicMapType_8330| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8330) (o_2@@21 T@Ref) (f_4@@21 T@Field_8382_8383) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8330_4710_4711#PolymorphicMapType_8330| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4710_4711 f_4@@21))) (not (IsWandField_4710_4711 f_4@@21))) (<= (select (|PolymorphicMapType_8330_4710_4711#PolymorphicMapType_8330| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8330_4710_4711#PolymorphicMapType_8330| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8330) (o_2@@22 T@Ref) (f_4@@22 T@Field_12632_1739) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8330_4708_1739#PolymorphicMapType_8330| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4708_1739 f_4@@22))) (not (IsWandField_4708_1739 f_4@@22))) (<= (select (|PolymorphicMapType_8330_4708_1739#PolymorphicMapType_8330| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8330_4708_1739#PolymorphicMapType_8330| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8330) (o_2@@23 T@Ref) (f_4@@23 T@Field_4710_11734) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8330_4708_4778#PolymorphicMapType_8330| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4710_28662 f_4@@23))) (not (IsWandField_4710_33654 f_4@@23))) (<= (select (|PolymorphicMapType_8330_4708_4778#PolymorphicMapType_8330| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8330_4708_4778#PolymorphicMapType_8330| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8330) (o_2@@24 T@Ref) (f_4@@24 T@Field_15714_15719) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8330_4777_40374#PolymorphicMapType_8330| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4777_42994 f_4@@24))) (not (IsWandField_4777_43010 f_4@@24))) (<= (select (|PolymorphicMapType_8330_4777_40374#PolymorphicMapType_8330| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8330_4777_40374#PolymorphicMapType_8330| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8330) (o_2@@25 T@Ref) (f_4@@25 T@Field_13042_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8330_4777_53#PolymorphicMapType_8330| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4777_53 f_4@@25))) (not (IsWandField_4777_53 f_4@@25))) (<= (select (|PolymorphicMapType_8330_4777_53#PolymorphicMapType_8330| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8330_4777_53#PolymorphicMapType_8330| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8330) (o_2@@26 T@Ref) (f_4@@26 T@Field_13042_4711) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_8330_4777_4711#PolymorphicMapType_8330| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_4777_4711 f_4@@26))) (not (IsWandField_4777_4711 f_4@@26))) (<= (select (|PolymorphicMapType_8330_4777_4711#PolymorphicMapType_8330| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_8330_4777_4711#PolymorphicMapType_8330| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8330) (o_2@@27 T@Ref) (f_4@@27 T@Field_13042_1739) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_8330_4777_1739#PolymorphicMapType_8330| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_4777_1739 f_4@@27))) (not (IsWandField_4777_1739 f_4@@27))) (<= (select (|PolymorphicMapType_8330_4777_1739#PolymorphicMapType_8330| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_8330_4777_1739#PolymorphicMapType_8330| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8330) (o_2@@28 T@Ref) (f_4@@28 T@Field_13042_13043) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_4777_4778 f_4@@28))) (not (IsWandField_13042_34336 f_4@@28))) (<= (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8330) (o_2@@29 T@Ref) (f_4@@29 T@Field_13042_13043) ) (! (= (HasDirectPerm_13042_11734 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13042_11734 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8330) (o_2@@30 T@Ref) (f_4@@30 T@Field_15714_15719) ) (! (= (HasDirectPerm_13042_28206 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_8330_4777_40374#PolymorphicMapType_8330| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13042_28206 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8330) (o_2@@31 T@Ref) (f_4@@31 T@Field_13042_53) ) (! (= (HasDirectPerm_13042_53 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_8330_4777_53#PolymorphicMapType_8330| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13042_53 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8330) (o_2@@32 T@Ref) (f_4@@32 T@Field_13042_1739) ) (! (= (HasDirectPerm_13042_1739 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_8330_4777_1739#PolymorphicMapType_8330| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13042_1739 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8330) (o_2@@33 T@Ref) (f_4@@33 T@Field_13042_4711) ) (! (= (HasDirectPerm_13042_4711 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_8330_4777_4711#PolymorphicMapType_8330| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13042_4711 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8330) (o_2@@34 T@Ref) (f_4@@34 T@Field_11733_11734) ) (! (= (HasDirectPerm_11700_11734 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_8330_4660_4778#PolymorphicMapType_8330| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11700_11734 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8330) (o_2@@35 T@Ref) (f_4@@35 T@Field_11715_11720) ) (! (= (HasDirectPerm_11700_27028 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_8330_4660_41187#PolymorphicMapType_8330| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11700_27028 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_8330) (o_2@@36 T@Ref) (f_4@@36 T@Field_11700_53) ) (! (= (HasDirectPerm_11700_53 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_8330_4660_53#PolymorphicMapType_8330| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11700_53 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_8330) (o_2@@37 T@Ref) (f_4@@37 T@Field_11700_1222) ) (! (= (HasDirectPerm_11700_1739 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_8330_4660_1222#PolymorphicMapType_8330| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11700_1739 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_8330) (o_2@@38 T@Ref) (f_4@@38 T@Field_11700_4711) ) (! (= (HasDirectPerm_11700_4711 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_8330_4660_4711#PolymorphicMapType_8330| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11700_4711 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_8330) (o_2@@39 T@Ref) (f_4@@39 T@Field_4710_11734) ) (! (= (HasDirectPerm_4710_11734 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_8330_4708_4778#PolymorphicMapType_8330| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4710_11734 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_8330) (o_2@@40 T@Ref) (f_4@@40 T@Field_4710_11720) ) (! (= (HasDirectPerm_4710_25850 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_8330_4708_40773#PolymorphicMapType_8330| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4710_25850 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_8330) (o_2@@41 T@Ref) (f_4@@41 T@Field_8369_53) ) (! (= (HasDirectPerm_4710_53 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_8330_4708_53#PolymorphicMapType_8330| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4710_53 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_8330) (o_2@@42 T@Ref) (f_4@@42 T@Field_12632_1739) ) (! (= (HasDirectPerm_4708_1739 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_8330_4708_1739#PolymorphicMapType_8330| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4708_1739 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_8330) (o_2@@43 T@Ref) (f_4@@43 T@Field_8382_8383) ) (! (= (HasDirectPerm_4710_4711 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_8330_4710_4711#PolymorphicMapType_8330| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4710_4711 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8309) (ExhaleHeap@@7 T@PolymorphicMapType_8309) (Mask@@38 T@PolymorphicMapType_8330) (o_12@@0 T@Ref) (f_19 T@Field_13042_13043) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_13042_11734 Mask@@38 o_12@@0 f_19) (= (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@12) o_12@@0 f_19) (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| ExhaleHeap@@7) o_12@@0 f_19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| ExhaleHeap@@7) o_12@@0 f_19))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8309) (ExhaleHeap@@8 T@PolymorphicMapType_8309) (Mask@@39 T@PolymorphicMapType_8330) (o_12@@1 T@Ref) (f_19@@0 T@Field_15714_15719) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_13042_28206 Mask@@39 o_12@@1 f_19@@0) (= (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@13) o_12@@1 f_19@@0) (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| ExhaleHeap@@8) o_12@@1 f_19@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| ExhaleHeap@@8) o_12@@1 f_19@@0))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8309) (ExhaleHeap@@9 T@PolymorphicMapType_8309) (Mask@@40 T@PolymorphicMapType_8330) (o_12@@2 T@Ref) (f_19@@1 T@Field_13042_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_13042_53 Mask@@40 o_12@@2 f_19@@1) (= (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@14) o_12@@2 f_19@@1) (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| ExhaleHeap@@9) o_12@@2 f_19@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| ExhaleHeap@@9) o_12@@2 f_19@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8309) (ExhaleHeap@@10 T@PolymorphicMapType_8309) (Mask@@41 T@PolymorphicMapType_8330) (o_12@@3 T@Ref) (f_19@@2 T@Field_13042_1739) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_13042_1739 Mask@@41 o_12@@3 f_19@@2) (= (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@15) o_12@@3 f_19@@2) (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| ExhaleHeap@@10) o_12@@3 f_19@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| ExhaleHeap@@10) o_12@@3 f_19@@2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8309) (ExhaleHeap@@11 T@PolymorphicMapType_8309) (Mask@@42 T@PolymorphicMapType_8330) (o_12@@4 T@Ref) (f_19@@3 T@Field_13042_4711) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_13042_4711 Mask@@42 o_12@@4 f_19@@3) (= (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@16) o_12@@4 f_19@@3) (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| ExhaleHeap@@11) o_12@@4 f_19@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| ExhaleHeap@@11) o_12@@4 f_19@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8309) (ExhaleHeap@@12 T@PolymorphicMapType_8309) (Mask@@43 T@PolymorphicMapType_8330) (o_12@@5 T@Ref) (f_19@@4 T@Field_11733_11734) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_11700_11734 Mask@@43 o_12@@5 f_19@@4) (= (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@17) o_12@@5 f_19@@4) (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| ExhaleHeap@@12) o_12@@5 f_19@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| ExhaleHeap@@12) o_12@@5 f_19@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8309) (ExhaleHeap@@13 T@PolymorphicMapType_8309) (Mask@@44 T@PolymorphicMapType_8330) (o_12@@6 T@Ref) (f_19@@5 T@Field_11715_11720) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_11700_27028 Mask@@44 o_12@@6 f_19@@5) (= (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@18) o_12@@6 f_19@@5) (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| ExhaleHeap@@13) o_12@@6 f_19@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| ExhaleHeap@@13) o_12@@6 f_19@@5))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8309) (ExhaleHeap@@14 T@PolymorphicMapType_8309) (Mask@@45 T@PolymorphicMapType_8330) (o_12@@7 T@Ref) (f_19@@6 T@Field_11700_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_11700_53 Mask@@45 o_12@@7 f_19@@6) (= (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@19) o_12@@7 f_19@@6) (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| ExhaleHeap@@14) o_12@@7 f_19@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| ExhaleHeap@@14) o_12@@7 f_19@@6))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8309) (ExhaleHeap@@15 T@PolymorphicMapType_8309) (Mask@@46 T@PolymorphicMapType_8330) (o_12@@8 T@Ref) (f_19@@7 T@Field_11700_1222) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_11700_1739 Mask@@46 o_12@@8 f_19@@7) (= (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@20) o_12@@8 f_19@@7) (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| ExhaleHeap@@15) o_12@@8 f_19@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| ExhaleHeap@@15) o_12@@8 f_19@@7))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8309) (ExhaleHeap@@16 T@PolymorphicMapType_8309) (Mask@@47 T@PolymorphicMapType_8330) (o_12@@9 T@Ref) (f_19@@8 T@Field_11700_4711) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_11700_4711 Mask@@47 o_12@@9 f_19@@8) (= (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@21) o_12@@9 f_19@@8) (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| ExhaleHeap@@16) o_12@@9 f_19@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| ExhaleHeap@@16) o_12@@9 f_19@@8))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8309) (ExhaleHeap@@17 T@PolymorphicMapType_8309) (Mask@@48 T@PolymorphicMapType_8330) (o_12@@10 T@Ref) (f_19@@9 T@Field_4710_11734) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_4710_11734 Mask@@48 o_12@@10 f_19@@9) (= (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@22) o_12@@10 f_19@@9) (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| ExhaleHeap@@17) o_12@@10 f_19@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| ExhaleHeap@@17) o_12@@10 f_19@@9))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8309) (ExhaleHeap@@18 T@PolymorphicMapType_8309) (Mask@@49 T@PolymorphicMapType_8330) (o_12@@11 T@Ref) (f_19@@10 T@Field_4710_11720) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_4710_25850 Mask@@49 o_12@@11 f_19@@10) (= (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@23) o_12@@11 f_19@@10) (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| ExhaleHeap@@18) o_12@@11 f_19@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| ExhaleHeap@@18) o_12@@11 f_19@@10))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8309) (ExhaleHeap@@19 T@PolymorphicMapType_8309) (Mask@@50 T@PolymorphicMapType_8330) (o_12@@12 T@Ref) (f_19@@11 T@Field_8369_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_4710_53 Mask@@50 o_12@@12 f_19@@11) (= (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@24) o_12@@12 f_19@@11) (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| ExhaleHeap@@19) o_12@@12 f_19@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| ExhaleHeap@@19) o_12@@12 f_19@@11))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8309) (ExhaleHeap@@20 T@PolymorphicMapType_8309) (Mask@@51 T@PolymorphicMapType_8330) (o_12@@13 T@Ref) (f_19@@12 T@Field_12632_1739) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_4708_1739 Mask@@51 o_12@@13 f_19@@12) (= (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@25) o_12@@13 f_19@@12) (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| ExhaleHeap@@20) o_12@@13 f_19@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| ExhaleHeap@@20) o_12@@13 f_19@@12))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8309) (ExhaleHeap@@21 T@PolymorphicMapType_8309) (Mask@@52 T@PolymorphicMapType_8330) (o_12@@14 T@Ref) (f_19@@13 T@Field_8382_8383) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_4710_4711 Mask@@52 o_12@@14 f_19@@13) (= (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@26) o_12@@14 f_19@@13) (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| ExhaleHeap@@21) o_12@@14 f_19@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| ExhaleHeap@@21) o_12@@14 f_19@@13))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 T@Ref) (arg3@@4 Int) (arg4@@4 Int) (arg5@@4 T@Ref) (arg6@@4 Int) (arg7@@4 T@Ref) (arg8@@4 Bool) (arg1_2 T@Ref) (arg2_2 T@Ref) (arg3_2 Int) (arg4_2 Int) (arg5_2 T@Ref) (arg6_2 Int) (arg7_2 T@Ref) (arg8_2 Bool) ) (!  (=> (= (wand arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4 arg8@@4) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2 arg8_2)) (and (= arg1@@4 arg1_2) (and (= arg2@@4 arg2_2) (and (= arg3@@4 arg3_2) (and (= arg4@@4 arg4_2) (and (= arg5@@4 arg5_2) (and (= arg6@@4 arg6_2) (and (= arg7@@4 arg7_2) (= arg8@@4 arg8_2)))))))))
 :qid |stdinbpl.212:15|
 :skolemid |28|
 :pattern ( (wand arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4 arg8@@4) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2 arg8_2))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_11715_11720) ) (! (= (select (|PolymorphicMapType_8330_4660_41187#PolymorphicMapType_8330| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8330_4660_41187#PolymorphicMapType_8330| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_11700_53) ) (! (= (select (|PolymorphicMapType_8330_4660_53#PolymorphicMapType_8330| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8330_4660_53#PolymorphicMapType_8330| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_11700_4711) ) (! (= (select (|PolymorphicMapType_8330_4660_4711#PolymorphicMapType_8330| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8330_4660_4711#PolymorphicMapType_8330| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_11700_1222) ) (! (= (select (|PolymorphicMapType_8330_4660_1222#PolymorphicMapType_8330| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8330_4660_1222#PolymorphicMapType_8330| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_11733_11734) ) (! (= (select (|PolymorphicMapType_8330_4660_4778#PolymorphicMapType_8330| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8330_4660_4778#PolymorphicMapType_8330| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_4710_11720) ) (! (= (select (|PolymorphicMapType_8330_4708_40773#PolymorphicMapType_8330| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8330_4708_40773#PolymorphicMapType_8330| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_8369_53) ) (! (= (select (|PolymorphicMapType_8330_4708_53#PolymorphicMapType_8330| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8330_4708_53#PolymorphicMapType_8330| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_8382_8383) ) (! (= (select (|PolymorphicMapType_8330_4710_4711#PolymorphicMapType_8330| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8330_4710_4711#PolymorphicMapType_8330| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_12632_1739) ) (! (= (select (|PolymorphicMapType_8330_4708_1739#PolymorphicMapType_8330| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8330_4708_1739#PolymorphicMapType_8330| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_4710_11734) ) (! (= (select (|PolymorphicMapType_8330_4708_4778#PolymorphicMapType_8330| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8330_4708_4778#PolymorphicMapType_8330| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_15714_15719) ) (! (= (select (|PolymorphicMapType_8330_4777_40374#PolymorphicMapType_8330| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8330_4777_40374#PolymorphicMapType_8330| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_13042_53) ) (! (= (select (|PolymorphicMapType_8330_4777_53#PolymorphicMapType_8330| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8330_4777_53#PolymorphicMapType_8330| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_13042_4711) ) (! (= (select (|PolymorphicMapType_8330_4777_4711#PolymorphicMapType_8330| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8330_4777_4711#PolymorphicMapType_8330| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_13042_1739) ) (! (= (select (|PolymorphicMapType_8330_4777_1739#PolymorphicMapType_8330| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8330_4777_1739#PolymorphicMapType_8330| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_13042_13043) ) (! (= (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8309) (this@@6 T@Ref) (count@@0 Int) ) (!  (and (= (item_at Heap@@27 this@@6 count@@0) (|item_at'| Heap@@27 this@@6 count@@0)) (dummyFunction_2026 (|item_at#triggerStateless| this@@6 count@@0)))
 :qid |stdinbpl.376:15|
 :skolemid |35|
 :pattern ( (item_at Heap@@27 this@@6 count@@0))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8330) (SummandMask1 T@PolymorphicMapType_8330) (SummandMask2 T@PolymorphicMapType_8330) (o_2@@59 T@Ref) (f_4@@59 T@Field_11715_11720) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8330_4660_41187#PolymorphicMapType_8330| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_8330_4660_41187#PolymorphicMapType_8330| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_8330_4660_41187#PolymorphicMapType_8330| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8330_4660_41187#PolymorphicMapType_8330| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8330_4660_41187#PolymorphicMapType_8330| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8330_4660_41187#PolymorphicMapType_8330| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8330) (SummandMask1@@0 T@PolymorphicMapType_8330) (SummandMask2@@0 T@PolymorphicMapType_8330) (o_2@@60 T@Ref) (f_4@@60 T@Field_11700_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8330_4660_53#PolymorphicMapType_8330| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_8330_4660_53#PolymorphicMapType_8330| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_8330_4660_53#PolymorphicMapType_8330| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8330_4660_53#PolymorphicMapType_8330| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8330_4660_53#PolymorphicMapType_8330| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8330_4660_53#PolymorphicMapType_8330| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8330) (SummandMask1@@1 T@PolymorphicMapType_8330) (SummandMask2@@1 T@PolymorphicMapType_8330) (o_2@@61 T@Ref) (f_4@@61 T@Field_11700_4711) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8330_4660_4711#PolymorphicMapType_8330| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_8330_4660_4711#PolymorphicMapType_8330| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_8330_4660_4711#PolymorphicMapType_8330| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8330_4660_4711#PolymorphicMapType_8330| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8330_4660_4711#PolymorphicMapType_8330| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8330_4660_4711#PolymorphicMapType_8330| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8330) (SummandMask1@@2 T@PolymorphicMapType_8330) (SummandMask2@@2 T@PolymorphicMapType_8330) (o_2@@62 T@Ref) (f_4@@62 T@Field_11700_1222) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8330_4660_1222#PolymorphicMapType_8330| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_8330_4660_1222#PolymorphicMapType_8330| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_8330_4660_1222#PolymorphicMapType_8330| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8330_4660_1222#PolymorphicMapType_8330| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8330_4660_1222#PolymorphicMapType_8330| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8330_4660_1222#PolymorphicMapType_8330| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8330) (SummandMask1@@3 T@PolymorphicMapType_8330) (SummandMask2@@3 T@PolymorphicMapType_8330) (o_2@@63 T@Ref) (f_4@@63 T@Field_11733_11734) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8330_4660_4778#PolymorphicMapType_8330| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_8330_4660_4778#PolymorphicMapType_8330| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_8330_4660_4778#PolymorphicMapType_8330| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8330_4660_4778#PolymorphicMapType_8330| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8330_4660_4778#PolymorphicMapType_8330| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8330_4660_4778#PolymorphicMapType_8330| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8330) (SummandMask1@@4 T@PolymorphicMapType_8330) (SummandMask2@@4 T@PolymorphicMapType_8330) (o_2@@64 T@Ref) (f_4@@64 T@Field_4710_11720) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8330_4708_40773#PolymorphicMapType_8330| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_8330_4708_40773#PolymorphicMapType_8330| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_8330_4708_40773#PolymorphicMapType_8330| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8330_4708_40773#PolymorphicMapType_8330| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8330_4708_40773#PolymorphicMapType_8330| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8330_4708_40773#PolymorphicMapType_8330| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8330) (SummandMask1@@5 T@PolymorphicMapType_8330) (SummandMask2@@5 T@PolymorphicMapType_8330) (o_2@@65 T@Ref) (f_4@@65 T@Field_8369_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8330_4708_53#PolymorphicMapType_8330| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_8330_4708_53#PolymorphicMapType_8330| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_8330_4708_53#PolymorphicMapType_8330| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8330_4708_53#PolymorphicMapType_8330| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8330_4708_53#PolymorphicMapType_8330| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8330_4708_53#PolymorphicMapType_8330| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8330) (SummandMask1@@6 T@PolymorphicMapType_8330) (SummandMask2@@6 T@PolymorphicMapType_8330) (o_2@@66 T@Ref) (f_4@@66 T@Field_8382_8383) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8330_4710_4711#PolymorphicMapType_8330| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_8330_4710_4711#PolymorphicMapType_8330| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_8330_4710_4711#PolymorphicMapType_8330| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8330_4710_4711#PolymorphicMapType_8330| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8330_4710_4711#PolymorphicMapType_8330| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8330_4710_4711#PolymorphicMapType_8330| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8330) (SummandMask1@@7 T@PolymorphicMapType_8330) (SummandMask2@@7 T@PolymorphicMapType_8330) (o_2@@67 T@Ref) (f_4@@67 T@Field_12632_1739) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8330_4708_1739#PolymorphicMapType_8330| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_8330_4708_1739#PolymorphicMapType_8330| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_8330_4708_1739#PolymorphicMapType_8330| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8330_4708_1739#PolymorphicMapType_8330| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8330_4708_1739#PolymorphicMapType_8330| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8330_4708_1739#PolymorphicMapType_8330| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8330) (SummandMask1@@8 T@PolymorphicMapType_8330) (SummandMask2@@8 T@PolymorphicMapType_8330) (o_2@@68 T@Ref) (f_4@@68 T@Field_4710_11734) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8330_4708_4778#PolymorphicMapType_8330| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_8330_4708_4778#PolymorphicMapType_8330| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_8330_4708_4778#PolymorphicMapType_8330| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8330_4708_4778#PolymorphicMapType_8330| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8330_4708_4778#PolymorphicMapType_8330| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8330_4708_4778#PolymorphicMapType_8330| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_8330) (SummandMask1@@9 T@PolymorphicMapType_8330) (SummandMask2@@9 T@PolymorphicMapType_8330) (o_2@@69 T@Ref) (f_4@@69 T@Field_15714_15719) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_8330_4777_40374#PolymorphicMapType_8330| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_8330_4777_40374#PolymorphicMapType_8330| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_8330_4777_40374#PolymorphicMapType_8330| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8330_4777_40374#PolymorphicMapType_8330| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8330_4777_40374#PolymorphicMapType_8330| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8330_4777_40374#PolymorphicMapType_8330| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_8330) (SummandMask1@@10 T@PolymorphicMapType_8330) (SummandMask2@@10 T@PolymorphicMapType_8330) (o_2@@70 T@Ref) (f_4@@70 T@Field_13042_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_8330_4777_53#PolymorphicMapType_8330| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_8330_4777_53#PolymorphicMapType_8330| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_8330_4777_53#PolymorphicMapType_8330| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8330_4777_53#PolymorphicMapType_8330| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8330_4777_53#PolymorphicMapType_8330| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8330_4777_53#PolymorphicMapType_8330| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_8330) (SummandMask1@@11 T@PolymorphicMapType_8330) (SummandMask2@@11 T@PolymorphicMapType_8330) (o_2@@71 T@Ref) (f_4@@71 T@Field_13042_4711) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_8330_4777_4711#PolymorphicMapType_8330| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_8330_4777_4711#PolymorphicMapType_8330| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_8330_4777_4711#PolymorphicMapType_8330| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8330_4777_4711#PolymorphicMapType_8330| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8330_4777_4711#PolymorphicMapType_8330| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8330_4777_4711#PolymorphicMapType_8330| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_8330) (SummandMask1@@12 T@PolymorphicMapType_8330) (SummandMask2@@12 T@PolymorphicMapType_8330) (o_2@@72 T@Ref) (f_4@@72 T@Field_13042_1739) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_8330_4777_1739#PolymorphicMapType_8330| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_8330_4777_1739#PolymorphicMapType_8330| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_8330_4777_1739#PolymorphicMapType_8330| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8330_4777_1739#PolymorphicMapType_8330| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8330_4777_1739#PolymorphicMapType_8330| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8330_4777_1739#PolymorphicMapType_8330| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_8330) (SummandMask1@@13 T@PolymorphicMapType_8330) (SummandMask2@@13 T@PolymorphicMapType_8330) (o_2@@73 T@Ref) (f_4@@73 T@Field_13042_13043) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8309) (ExhaleHeap@@22 T@PolymorphicMapType_8309) (Mask@@53 T@PolymorphicMapType_8330) (pm_f_19@@5 T@Field_13042_13043) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_13042_11734 Mask@@53 null pm_f_19@@5) (IsPredicateField_4777_4778 pm_f_19@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19 T@Ref) (f_19@@14 T@Field_12632_1739) ) (!  (=> (select (|PolymorphicMapType_8858_4708_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@28) null (PredicateMaskField_4777 pm_f_19@@5))) o2_19 f_19@@14) (= (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@28) o2_19 f_19@@14) (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19 f_19@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19 f_19@@14))
)) (forall ((o2_19@@0 T@Ref) (f_19@@15 T@Field_8382_8383) ) (!  (=> (select (|PolymorphicMapType_8858_4710_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@28) null (PredicateMaskField_4777 pm_f_19@@5))) o2_19@@0 f_19@@15) (= (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@28) o2_19@@0 f_19@@15) (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@0 f_19@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@0 f_19@@15))
))) (forall ((o2_19@@1 T@Ref) (f_19@@16 T@Field_8369_53) ) (!  (=> (select (|PolymorphicMapType_8858_4708_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@28) null (PredicateMaskField_4777 pm_f_19@@5))) o2_19@@1 f_19@@16) (= (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@28) o2_19@@1 f_19@@16) (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@1 f_19@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@1 f_19@@16))
))) (forall ((o2_19@@2 T@Ref) (f_19@@17 T@Field_4710_11720) ) (!  (=> (select (|PolymorphicMapType_8858_4708_30265#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@28) null (PredicateMaskField_4777 pm_f_19@@5))) o2_19@@2 f_19@@17) (= (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@28) o2_19@@2 f_19@@17) (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@2 f_19@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@2 f_19@@17))
))) (forall ((o2_19@@3 T@Ref) (f_19@@18 T@Field_4710_11734) ) (!  (=> (select (|PolymorphicMapType_8858_4708_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@28) null (PredicateMaskField_4777 pm_f_19@@5))) o2_19@@3 f_19@@18) (= (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@28) o2_19@@3 f_19@@18) (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@3 f_19@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@3 f_19@@18))
))) (forall ((o2_19@@4 T@Ref) (f_19@@19 T@Field_11700_1222) ) (!  (=> (select (|PolymorphicMapType_8858_11700_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@28) null (PredicateMaskField_4777 pm_f_19@@5))) o2_19@@4 f_19@@19) (= (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@28) o2_19@@4 f_19@@19) (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@4 f_19@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@4 f_19@@19))
))) (forall ((o2_19@@5 T@Ref) (f_19@@20 T@Field_11700_4711) ) (!  (=> (select (|PolymorphicMapType_8858_11700_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@28) null (PredicateMaskField_4777 pm_f_19@@5))) o2_19@@5 f_19@@20) (= (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@28) o2_19@@5 f_19@@20) (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@5 f_19@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@5 f_19@@20))
))) (forall ((o2_19@@6 T@Ref) (f_19@@21 T@Field_11700_53) ) (!  (=> (select (|PolymorphicMapType_8858_11700_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@28) null (PredicateMaskField_4777 pm_f_19@@5))) o2_19@@6 f_19@@21) (= (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@28) o2_19@@6 f_19@@21) (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@6 f_19@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@6 f_19@@21))
))) (forall ((o2_19@@7 T@Ref) (f_19@@22 T@Field_11715_11720) ) (!  (=> (select (|PolymorphicMapType_8858_11700_31313#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@28) null (PredicateMaskField_4777 pm_f_19@@5))) o2_19@@7 f_19@@22) (= (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@28) o2_19@@7 f_19@@22) (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@7 f_19@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@7 f_19@@22))
))) (forall ((o2_19@@8 T@Ref) (f_19@@23 T@Field_11733_11734) ) (!  (=> (select (|PolymorphicMapType_8858_11700_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@28) null (PredicateMaskField_4777 pm_f_19@@5))) o2_19@@8 f_19@@23) (= (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@28) o2_19@@8 f_19@@23) (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@8 f_19@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@8 f_19@@23))
))) (forall ((o2_19@@9 T@Ref) (f_19@@24 T@Field_13042_1739) ) (!  (=> (select (|PolymorphicMapType_8858_13042_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@28) null (PredicateMaskField_4777 pm_f_19@@5))) o2_19@@9 f_19@@24) (= (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@28) o2_19@@9 f_19@@24) (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@9 f_19@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@9 f_19@@24))
))) (forall ((o2_19@@10 T@Ref) (f_19@@25 T@Field_13042_4711) ) (!  (=> (select (|PolymorphicMapType_8858_13042_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@28) null (PredicateMaskField_4777 pm_f_19@@5))) o2_19@@10 f_19@@25) (= (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@28) o2_19@@10 f_19@@25) (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@10 f_19@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@10 f_19@@25))
))) (forall ((o2_19@@11 T@Ref) (f_19@@26 T@Field_13042_53) ) (!  (=> (select (|PolymorphicMapType_8858_13042_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@28) null (PredicateMaskField_4777 pm_f_19@@5))) o2_19@@11 f_19@@26) (= (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@28) o2_19@@11 f_19@@26) (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@11 f_19@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@11 f_19@@26))
))) (forall ((o2_19@@12 T@Ref) (f_19@@27 T@Field_15714_15719) ) (!  (=> (select (|PolymorphicMapType_8858_13042_32361#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@28) null (PredicateMaskField_4777 pm_f_19@@5))) o2_19@@12 f_19@@27) (= (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@28) o2_19@@12 f_19@@27) (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@12 f_19@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@12 f_19@@27))
))) (forall ((o2_19@@13 T@Ref) (f_19@@28 T@Field_13042_13043) ) (!  (=> (select (|PolymorphicMapType_8858_13042_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@28) null (PredicateMaskField_4777 pm_f_19@@5))) o2_19@@13 f_19@@28) (= (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@28) o2_19@@13 f_19@@28) (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@13 f_19@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| ExhaleHeap@@22) o2_19@@13 f_19@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@53) (IsPredicateField_4777_4778 pm_f_19@@5))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8309) (ExhaleHeap@@23 T@PolymorphicMapType_8309) (Mask@@54 T@PolymorphicMapType_8330) (pm_f_19@@6 T@Field_11733_11734) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_11700_11734 Mask@@54 null pm_f_19@@6) (IsPredicateField_4673_4674 pm_f_19@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@14 T@Ref) (f_19@@29 T@Field_12632_1739) ) (!  (=> (select (|PolymorphicMapType_8858_4708_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@29) null (PredicateMaskField_11700 pm_f_19@@6))) o2_19@@14 f_19@@29) (= (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@29) o2_19@@14 f_19@@29) (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@14 f_19@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@14 f_19@@29))
)) (forall ((o2_19@@15 T@Ref) (f_19@@30 T@Field_8382_8383) ) (!  (=> (select (|PolymorphicMapType_8858_4710_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@29) null (PredicateMaskField_11700 pm_f_19@@6))) o2_19@@15 f_19@@30) (= (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@29) o2_19@@15 f_19@@30) (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@15 f_19@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@15 f_19@@30))
))) (forall ((o2_19@@16 T@Ref) (f_19@@31 T@Field_8369_53) ) (!  (=> (select (|PolymorphicMapType_8858_4708_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@29) null (PredicateMaskField_11700 pm_f_19@@6))) o2_19@@16 f_19@@31) (= (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@29) o2_19@@16 f_19@@31) (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@16 f_19@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@16 f_19@@31))
))) (forall ((o2_19@@17 T@Ref) (f_19@@32 T@Field_4710_11720) ) (!  (=> (select (|PolymorphicMapType_8858_4708_30265#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@29) null (PredicateMaskField_11700 pm_f_19@@6))) o2_19@@17 f_19@@32) (= (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@29) o2_19@@17 f_19@@32) (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@17 f_19@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@17 f_19@@32))
))) (forall ((o2_19@@18 T@Ref) (f_19@@33 T@Field_4710_11734) ) (!  (=> (select (|PolymorphicMapType_8858_4708_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@29) null (PredicateMaskField_11700 pm_f_19@@6))) o2_19@@18 f_19@@33) (= (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@29) o2_19@@18 f_19@@33) (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@18 f_19@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@18 f_19@@33))
))) (forall ((o2_19@@19 T@Ref) (f_19@@34 T@Field_11700_1222) ) (!  (=> (select (|PolymorphicMapType_8858_11700_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@29) null (PredicateMaskField_11700 pm_f_19@@6))) o2_19@@19 f_19@@34) (= (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@29) o2_19@@19 f_19@@34) (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@19 f_19@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@19 f_19@@34))
))) (forall ((o2_19@@20 T@Ref) (f_19@@35 T@Field_11700_4711) ) (!  (=> (select (|PolymorphicMapType_8858_11700_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@29) null (PredicateMaskField_11700 pm_f_19@@6))) o2_19@@20 f_19@@35) (= (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@29) o2_19@@20 f_19@@35) (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@20 f_19@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@20 f_19@@35))
))) (forall ((o2_19@@21 T@Ref) (f_19@@36 T@Field_11700_53) ) (!  (=> (select (|PolymorphicMapType_8858_11700_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@29) null (PredicateMaskField_11700 pm_f_19@@6))) o2_19@@21 f_19@@36) (= (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@29) o2_19@@21 f_19@@36) (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@21 f_19@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@21 f_19@@36))
))) (forall ((o2_19@@22 T@Ref) (f_19@@37 T@Field_11715_11720) ) (!  (=> (select (|PolymorphicMapType_8858_11700_31313#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@29) null (PredicateMaskField_11700 pm_f_19@@6))) o2_19@@22 f_19@@37) (= (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@29) o2_19@@22 f_19@@37) (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@22 f_19@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@22 f_19@@37))
))) (forall ((o2_19@@23 T@Ref) (f_19@@38 T@Field_11733_11734) ) (!  (=> (select (|PolymorphicMapType_8858_11700_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@29) null (PredicateMaskField_11700 pm_f_19@@6))) o2_19@@23 f_19@@38) (= (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@29) o2_19@@23 f_19@@38) (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@23 f_19@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@23 f_19@@38))
))) (forall ((o2_19@@24 T@Ref) (f_19@@39 T@Field_13042_1739) ) (!  (=> (select (|PolymorphicMapType_8858_13042_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@29) null (PredicateMaskField_11700 pm_f_19@@6))) o2_19@@24 f_19@@39) (= (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@29) o2_19@@24 f_19@@39) (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@24 f_19@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@24 f_19@@39))
))) (forall ((o2_19@@25 T@Ref) (f_19@@40 T@Field_13042_4711) ) (!  (=> (select (|PolymorphicMapType_8858_13042_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@29) null (PredicateMaskField_11700 pm_f_19@@6))) o2_19@@25 f_19@@40) (= (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@29) o2_19@@25 f_19@@40) (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@25 f_19@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@25 f_19@@40))
))) (forall ((o2_19@@26 T@Ref) (f_19@@41 T@Field_13042_53) ) (!  (=> (select (|PolymorphicMapType_8858_13042_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@29) null (PredicateMaskField_11700 pm_f_19@@6))) o2_19@@26 f_19@@41) (= (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@29) o2_19@@26 f_19@@41) (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@26 f_19@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@26 f_19@@41))
))) (forall ((o2_19@@27 T@Ref) (f_19@@42 T@Field_15714_15719) ) (!  (=> (select (|PolymorphicMapType_8858_13042_32361#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@29) null (PredicateMaskField_11700 pm_f_19@@6))) o2_19@@27 f_19@@42) (= (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@29) o2_19@@27 f_19@@42) (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@27 f_19@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@27 f_19@@42))
))) (forall ((o2_19@@28 T@Ref) (f_19@@43 T@Field_13042_13043) ) (!  (=> (select (|PolymorphicMapType_8858_13042_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@29) null (PredicateMaskField_11700 pm_f_19@@6))) o2_19@@28 f_19@@43) (= (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@29) o2_19@@28 f_19@@43) (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@28 f_19@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| ExhaleHeap@@23) o2_19@@28 f_19@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@54) (IsPredicateField_4673_4674 pm_f_19@@6))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8309) (ExhaleHeap@@24 T@PolymorphicMapType_8309) (Mask@@55 T@PolymorphicMapType_8330) (pm_f_19@@7 T@Field_4710_11734) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_4710_11734 Mask@@55 null pm_f_19@@7) (IsPredicateField_4710_28662 pm_f_19@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@29 T@Ref) (f_19@@44 T@Field_12632_1739) ) (!  (=> (select (|PolymorphicMapType_8858_4708_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@30) null (PredicateMaskField_4710 pm_f_19@@7))) o2_19@@29 f_19@@44) (= (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@30) o2_19@@29 f_19@@44) (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@29 f_19@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@29 f_19@@44))
)) (forall ((o2_19@@30 T@Ref) (f_19@@45 T@Field_8382_8383) ) (!  (=> (select (|PolymorphicMapType_8858_4710_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@30) null (PredicateMaskField_4710 pm_f_19@@7))) o2_19@@30 f_19@@45) (= (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@30) o2_19@@30 f_19@@45) (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@30 f_19@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@30 f_19@@45))
))) (forall ((o2_19@@31 T@Ref) (f_19@@46 T@Field_8369_53) ) (!  (=> (select (|PolymorphicMapType_8858_4708_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@30) null (PredicateMaskField_4710 pm_f_19@@7))) o2_19@@31 f_19@@46) (= (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@30) o2_19@@31 f_19@@46) (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@31 f_19@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@31 f_19@@46))
))) (forall ((o2_19@@32 T@Ref) (f_19@@47 T@Field_4710_11720) ) (!  (=> (select (|PolymorphicMapType_8858_4708_30265#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@30) null (PredicateMaskField_4710 pm_f_19@@7))) o2_19@@32 f_19@@47) (= (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@30) o2_19@@32 f_19@@47) (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@32 f_19@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@32 f_19@@47))
))) (forall ((o2_19@@33 T@Ref) (f_19@@48 T@Field_4710_11734) ) (!  (=> (select (|PolymorphicMapType_8858_4708_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@30) null (PredicateMaskField_4710 pm_f_19@@7))) o2_19@@33 f_19@@48) (= (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@30) o2_19@@33 f_19@@48) (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@33 f_19@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@33 f_19@@48))
))) (forall ((o2_19@@34 T@Ref) (f_19@@49 T@Field_11700_1222) ) (!  (=> (select (|PolymorphicMapType_8858_11700_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@30) null (PredicateMaskField_4710 pm_f_19@@7))) o2_19@@34 f_19@@49) (= (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@30) o2_19@@34 f_19@@49) (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@34 f_19@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@34 f_19@@49))
))) (forall ((o2_19@@35 T@Ref) (f_19@@50 T@Field_11700_4711) ) (!  (=> (select (|PolymorphicMapType_8858_11700_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@30) null (PredicateMaskField_4710 pm_f_19@@7))) o2_19@@35 f_19@@50) (= (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@30) o2_19@@35 f_19@@50) (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@35 f_19@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@35 f_19@@50))
))) (forall ((o2_19@@36 T@Ref) (f_19@@51 T@Field_11700_53) ) (!  (=> (select (|PolymorphicMapType_8858_11700_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@30) null (PredicateMaskField_4710 pm_f_19@@7))) o2_19@@36 f_19@@51) (= (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@30) o2_19@@36 f_19@@51) (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@36 f_19@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@36 f_19@@51))
))) (forall ((o2_19@@37 T@Ref) (f_19@@52 T@Field_11715_11720) ) (!  (=> (select (|PolymorphicMapType_8858_11700_31313#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@30) null (PredicateMaskField_4710 pm_f_19@@7))) o2_19@@37 f_19@@52) (= (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@30) o2_19@@37 f_19@@52) (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@37 f_19@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@37 f_19@@52))
))) (forall ((o2_19@@38 T@Ref) (f_19@@53 T@Field_11733_11734) ) (!  (=> (select (|PolymorphicMapType_8858_11700_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@30) null (PredicateMaskField_4710 pm_f_19@@7))) o2_19@@38 f_19@@53) (= (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@30) o2_19@@38 f_19@@53) (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@38 f_19@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@38 f_19@@53))
))) (forall ((o2_19@@39 T@Ref) (f_19@@54 T@Field_13042_1739) ) (!  (=> (select (|PolymorphicMapType_8858_13042_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@30) null (PredicateMaskField_4710 pm_f_19@@7))) o2_19@@39 f_19@@54) (= (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@30) o2_19@@39 f_19@@54) (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@39 f_19@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@39 f_19@@54))
))) (forall ((o2_19@@40 T@Ref) (f_19@@55 T@Field_13042_4711) ) (!  (=> (select (|PolymorphicMapType_8858_13042_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@30) null (PredicateMaskField_4710 pm_f_19@@7))) o2_19@@40 f_19@@55) (= (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@30) o2_19@@40 f_19@@55) (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@40 f_19@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@40 f_19@@55))
))) (forall ((o2_19@@41 T@Ref) (f_19@@56 T@Field_13042_53) ) (!  (=> (select (|PolymorphicMapType_8858_13042_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@30) null (PredicateMaskField_4710 pm_f_19@@7))) o2_19@@41 f_19@@56) (= (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@30) o2_19@@41 f_19@@56) (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@41 f_19@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@41 f_19@@56))
))) (forall ((o2_19@@42 T@Ref) (f_19@@57 T@Field_15714_15719) ) (!  (=> (select (|PolymorphicMapType_8858_13042_32361#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@30) null (PredicateMaskField_4710 pm_f_19@@7))) o2_19@@42 f_19@@57) (= (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@30) o2_19@@42 f_19@@57) (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@42 f_19@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@42 f_19@@57))
))) (forall ((o2_19@@43 T@Ref) (f_19@@58 T@Field_13042_13043) ) (!  (=> (select (|PolymorphicMapType_8858_13042_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@30) null (PredicateMaskField_4710 pm_f_19@@7))) o2_19@@43 f_19@@58) (= (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@30) o2_19@@43 f_19@@58) (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@43 f_19@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| ExhaleHeap@@24) o2_19@@43 f_19@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@55) (IsPredicateField_4710_28662 pm_f_19@@7))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8309) (ExhaleHeap@@25 T@PolymorphicMapType_8309) (Mask@@56 T@PolymorphicMapType_8330) (pm_f_19@@8 T@Field_13042_13043) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_13042_11734 Mask@@56 null pm_f_19@@8) (IsWandField_13042_34336 pm_f_19@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@44 T@Ref) (f_19@@59 T@Field_12632_1739) ) (!  (=> (select (|PolymorphicMapType_8858_4708_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@31) null (WandMaskField_13042 pm_f_19@@8))) o2_19@@44 f_19@@59) (= (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@31) o2_19@@44 f_19@@59) (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@44 f_19@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@44 f_19@@59))
)) (forall ((o2_19@@45 T@Ref) (f_19@@60 T@Field_8382_8383) ) (!  (=> (select (|PolymorphicMapType_8858_4710_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@31) null (WandMaskField_13042 pm_f_19@@8))) o2_19@@45 f_19@@60) (= (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@31) o2_19@@45 f_19@@60) (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@45 f_19@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@45 f_19@@60))
))) (forall ((o2_19@@46 T@Ref) (f_19@@61 T@Field_8369_53) ) (!  (=> (select (|PolymorphicMapType_8858_4708_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@31) null (WandMaskField_13042 pm_f_19@@8))) o2_19@@46 f_19@@61) (= (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@31) o2_19@@46 f_19@@61) (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@46 f_19@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@46 f_19@@61))
))) (forall ((o2_19@@47 T@Ref) (f_19@@62 T@Field_4710_11720) ) (!  (=> (select (|PolymorphicMapType_8858_4708_30265#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@31) null (WandMaskField_13042 pm_f_19@@8))) o2_19@@47 f_19@@62) (= (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@31) o2_19@@47 f_19@@62) (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@47 f_19@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@47 f_19@@62))
))) (forall ((o2_19@@48 T@Ref) (f_19@@63 T@Field_4710_11734) ) (!  (=> (select (|PolymorphicMapType_8858_4708_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@31) null (WandMaskField_13042 pm_f_19@@8))) o2_19@@48 f_19@@63) (= (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@31) o2_19@@48 f_19@@63) (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@48 f_19@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@48 f_19@@63))
))) (forall ((o2_19@@49 T@Ref) (f_19@@64 T@Field_11700_1222) ) (!  (=> (select (|PolymorphicMapType_8858_11700_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@31) null (WandMaskField_13042 pm_f_19@@8))) o2_19@@49 f_19@@64) (= (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@31) o2_19@@49 f_19@@64) (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@49 f_19@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@49 f_19@@64))
))) (forall ((o2_19@@50 T@Ref) (f_19@@65 T@Field_11700_4711) ) (!  (=> (select (|PolymorphicMapType_8858_11700_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@31) null (WandMaskField_13042 pm_f_19@@8))) o2_19@@50 f_19@@65) (= (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@31) o2_19@@50 f_19@@65) (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@50 f_19@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@50 f_19@@65))
))) (forall ((o2_19@@51 T@Ref) (f_19@@66 T@Field_11700_53) ) (!  (=> (select (|PolymorphicMapType_8858_11700_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@31) null (WandMaskField_13042 pm_f_19@@8))) o2_19@@51 f_19@@66) (= (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@31) o2_19@@51 f_19@@66) (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@51 f_19@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@51 f_19@@66))
))) (forall ((o2_19@@52 T@Ref) (f_19@@67 T@Field_11715_11720) ) (!  (=> (select (|PolymorphicMapType_8858_11700_31313#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@31) null (WandMaskField_13042 pm_f_19@@8))) o2_19@@52 f_19@@67) (= (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@31) o2_19@@52 f_19@@67) (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@52 f_19@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@52 f_19@@67))
))) (forall ((o2_19@@53 T@Ref) (f_19@@68 T@Field_11733_11734) ) (!  (=> (select (|PolymorphicMapType_8858_11700_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@31) null (WandMaskField_13042 pm_f_19@@8))) o2_19@@53 f_19@@68) (= (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@31) o2_19@@53 f_19@@68) (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@53 f_19@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@53 f_19@@68))
))) (forall ((o2_19@@54 T@Ref) (f_19@@69 T@Field_13042_1739) ) (!  (=> (select (|PolymorphicMapType_8858_13042_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@31) null (WandMaskField_13042 pm_f_19@@8))) o2_19@@54 f_19@@69) (= (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@31) o2_19@@54 f_19@@69) (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@54 f_19@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@54 f_19@@69))
))) (forall ((o2_19@@55 T@Ref) (f_19@@70 T@Field_13042_4711) ) (!  (=> (select (|PolymorphicMapType_8858_13042_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@31) null (WandMaskField_13042 pm_f_19@@8))) o2_19@@55 f_19@@70) (= (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@31) o2_19@@55 f_19@@70) (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@55 f_19@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@55 f_19@@70))
))) (forall ((o2_19@@56 T@Ref) (f_19@@71 T@Field_13042_53) ) (!  (=> (select (|PolymorphicMapType_8858_13042_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@31) null (WandMaskField_13042 pm_f_19@@8))) o2_19@@56 f_19@@71) (= (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@31) o2_19@@56 f_19@@71) (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@56 f_19@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@56 f_19@@71))
))) (forall ((o2_19@@57 T@Ref) (f_19@@72 T@Field_15714_15719) ) (!  (=> (select (|PolymorphicMapType_8858_13042_32361#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@31) null (WandMaskField_13042 pm_f_19@@8))) o2_19@@57 f_19@@72) (= (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@31) o2_19@@57 f_19@@72) (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@57 f_19@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@57 f_19@@72))
))) (forall ((o2_19@@58 T@Ref) (f_19@@73 T@Field_13042_13043) ) (!  (=> (select (|PolymorphicMapType_8858_13042_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@31) null (WandMaskField_13042 pm_f_19@@8))) o2_19@@58 f_19@@73) (= (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@31) o2_19@@58 f_19@@73) (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@58 f_19@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| ExhaleHeap@@25) o2_19@@58 f_19@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@56) (IsWandField_13042_34336 pm_f_19@@8))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8309) (ExhaleHeap@@26 T@PolymorphicMapType_8309) (Mask@@57 T@PolymorphicMapType_8330) (pm_f_19@@9 T@Field_11733_11734) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_11700_11734 Mask@@57 null pm_f_19@@9) (IsWandField_4673_4674 pm_f_19@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@59 T@Ref) (f_19@@74 T@Field_12632_1739) ) (!  (=> (select (|PolymorphicMapType_8858_4708_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@32) null (WandMaskField_4673 pm_f_19@@9))) o2_19@@59 f_19@@74) (= (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@32) o2_19@@59 f_19@@74) (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@59 f_19@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@59 f_19@@74))
)) (forall ((o2_19@@60 T@Ref) (f_19@@75 T@Field_8382_8383) ) (!  (=> (select (|PolymorphicMapType_8858_4710_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@32) null (WandMaskField_4673 pm_f_19@@9))) o2_19@@60 f_19@@75) (= (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@32) o2_19@@60 f_19@@75) (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@60 f_19@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@60 f_19@@75))
))) (forall ((o2_19@@61 T@Ref) (f_19@@76 T@Field_8369_53) ) (!  (=> (select (|PolymorphicMapType_8858_4708_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@32) null (WandMaskField_4673 pm_f_19@@9))) o2_19@@61 f_19@@76) (= (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@32) o2_19@@61 f_19@@76) (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@61 f_19@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@61 f_19@@76))
))) (forall ((o2_19@@62 T@Ref) (f_19@@77 T@Field_4710_11720) ) (!  (=> (select (|PolymorphicMapType_8858_4708_30265#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@32) null (WandMaskField_4673 pm_f_19@@9))) o2_19@@62 f_19@@77) (= (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@32) o2_19@@62 f_19@@77) (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@62 f_19@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@62 f_19@@77))
))) (forall ((o2_19@@63 T@Ref) (f_19@@78 T@Field_4710_11734) ) (!  (=> (select (|PolymorphicMapType_8858_4708_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@32) null (WandMaskField_4673 pm_f_19@@9))) o2_19@@63 f_19@@78) (= (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@32) o2_19@@63 f_19@@78) (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@63 f_19@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@63 f_19@@78))
))) (forall ((o2_19@@64 T@Ref) (f_19@@79 T@Field_11700_1222) ) (!  (=> (select (|PolymorphicMapType_8858_11700_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@32) null (WandMaskField_4673 pm_f_19@@9))) o2_19@@64 f_19@@79) (= (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@32) o2_19@@64 f_19@@79) (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@64 f_19@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@64 f_19@@79))
))) (forall ((o2_19@@65 T@Ref) (f_19@@80 T@Field_11700_4711) ) (!  (=> (select (|PolymorphicMapType_8858_11700_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@32) null (WandMaskField_4673 pm_f_19@@9))) o2_19@@65 f_19@@80) (= (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@32) o2_19@@65 f_19@@80) (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@65 f_19@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@65 f_19@@80))
))) (forall ((o2_19@@66 T@Ref) (f_19@@81 T@Field_11700_53) ) (!  (=> (select (|PolymorphicMapType_8858_11700_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@32) null (WandMaskField_4673 pm_f_19@@9))) o2_19@@66 f_19@@81) (= (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@32) o2_19@@66 f_19@@81) (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@66 f_19@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@66 f_19@@81))
))) (forall ((o2_19@@67 T@Ref) (f_19@@82 T@Field_11715_11720) ) (!  (=> (select (|PolymorphicMapType_8858_11700_31313#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@32) null (WandMaskField_4673 pm_f_19@@9))) o2_19@@67 f_19@@82) (= (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@32) o2_19@@67 f_19@@82) (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@67 f_19@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@67 f_19@@82))
))) (forall ((o2_19@@68 T@Ref) (f_19@@83 T@Field_11733_11734) ) (!  (=> (select (|PolymorphicMapType_8858_11700_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@32) null (WandMaskField_4673 pm_f_19@@9))) o2_19@@68 f_19@@83) (= (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@32) o2_19@@68 f_19@@83) (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@68 f_19@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@68 f_19@@83))
))) (forall ((o2_19@@69 T@Ref) (f_19@@84 T@Field_13042_1739) ) (!  (=> (select (|PolymorphicMapType_8858_13042_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@32) null (WandMaskField_4673 pm_f_19@@9))) o2_19@@69 f_19@@84) (= (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@32) o2_19@@69 f_19@@84) (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@69 f_19@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@69 f_19@@84))
))) (forall ((o2_19@@70 T@Ref) (f_19@@85 T@Field_13042_4711) ) (!  (=> (select (|PolymorphicMapType_8858_13042_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@32) null (WandMaskField_4673 pm_f_19@@9))) o2_19@@70 f_19@@85) (= (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@32) o2_19@@70 f_19@@85) (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@70 f_19@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@70 f_19@@85))
))) (forall ((o2_19@@71 T@Ref) (f_19@@86 T@Field_13042_53) ) (!  (=> (select (|PolymorphicMapType_8858_13042_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@32) null (WandMaskField_4673 pm_f_19@@9))) o2_19@@71 f_19@@86) (= (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@32) o2_19@@71 f_19@@86) (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@71 f_19@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@71 f_19@@86))
))) (forall ((o2_19@@72 T@Ref) (f_19@@87 T@Field_15714_15719) ) (!  (=> (select (|PolymorphicMapType_8858_13042_32361#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@32) null (WandMaskField_4673 pm_f_19@@9))) o2_19@@72 f_19@@87) (= (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@32) o2_19@@72 f_19@@87) (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@72 f_19@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@72 f_19@@87))
))) (forall ((o2_19@@73 T@Ref) (f_19@@88 T@Field_13042_13043) ) (!  (=> (select (|PolymorphicMapType_8858_13042_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@32) null (WandMaskField_4673 pm_f_19@@9))) o2_19@@73 f_19@@88) (= (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@32) o2_19@@73 f_19@@88) (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@73 f_19@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| ExhaleHeap@@26) o2_19@@73 f_19@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@57) (IsWandField_4673_4674 pm_f_19@@9))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8309) (ExhaleHeap@@27 T@PolymorphicMapType_8309) (Mask@@58 T@PolymorphicMapType_8330) (pm_f_19@@10 T@Field_4710_11734) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_4710_11734 Mask@@58 null pm_f_19@@10) (IsWandField_4710_33654 pm_f_19@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_19@@74 T@Ref) (f_19@@89 T@Field_12632_1739) ) (!  (=> (select (|PolymorphicMapType_8858_4708_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@33) null (WandMaskField_4710 pm_f_19@@10))) o2_19@@74 f_19@@89) (= (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@33) o2_19@@74 f_19@@89) (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@74 f_19@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@74 f_19@@89))
)) (forall ((o2_19@@75 T@Ref) (f_19@@90 T@Field_8382_8383) ) (!  (=> (select (|PolymorphicMapType_8858_4710_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@33) null (WandMaskField_4710 pm_f_19@@10))) o2_19@@75 f_19@@90) (= (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@33) o2_19@@75 f_19@@90) (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@75 f_19@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@75 f_19@@90))
))) (forall ((o2_19@@76 T@Ref) (f_19@@91 T@Field_8369_53) ) (!  (=> (select (|PolymorphicMapType_8858_4708_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@33) null (WandMaskField_4710 pm_f_19@@10))) o2_19@@76 f_19@@91) (= (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@33) o2_19@@76 f_19@@91) (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@76 f_19@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@76 f_19@@91))
))) (forall ((o2_19@@77 T@Ref) (f_19@@92 T@Field_4710_11720) ) (!  (=> (select (|PolymorphicMapType_8858_4708_30265#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@33) null (WandMaskField_4710 pm_f_19@@10))) o2_19@@77 f_19@@92) (= (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@33) o2_19@@77 f_19@@92) (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@77 f_19@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@77 f_19@@92))
))) (forall ((o2_19@@78 T@Ref) (f_19@@93 T@Field_4710_11734) ) (!  (=> (select (|PolymorphicMapType_8858_4708_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@33) null (WandMaskField_4710 pm_f_19@@10))) o2_19@@78 f_19@@93) (= (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@33) o2_19@@78 f_19@@93) (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@78 f_19@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@78 f_19@@93))
))) (forall ((o2_19@@79 T@Ref) (f_19@@94 T@Field_11700_1222) ) (!  (=> (select (|PolymorphicMapType_8858_11700_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@33) null (WandMaskField_4710 pm_f_19@@10))) o2_19@@79 f_19@@94) (= (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@33) o2_19@@79 f_19@@94) (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@79 f_19@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@79 f_19@@94))
))) (forall ((o2_19@@80 T@Ref) (f_19@@95 T@Field_11700_4711) ) (!  (=> (select (|PolymorphicMapType_8858_11700_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@33) null (WandMaskField_4710 pm_f_19@@10))) o2_19@@80 f_19@@95) (= (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@33) o2_19@@80 f_19@@95) (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@80 f_19@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@80 f_19@@95))
))) (forall ((o2_19@@81 T@Ref) (f_19@@96 T@Field_11700_53) ) (!  (=> (select (|PolymorphicMapType_8858_11700_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@33) null (WandMaskField_4710 pm_f_19@@10))) o2_19@@81 f_19@@96) (= (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@33) o2_19@@81 f_19@@96) (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@81 f_19@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@81 f_19@@96))
))) (forall ((o2_19@@82 T@Ref) (f_19@@97 T@Field_11715_11720) ) (!  (=> (select (|PolymorphicMapType_8858_11700_31313#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@33) null (WandMaskField_4710 pm_f_19@@10))) o2_19@@82 f_19@@97) (= (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@33) o2_19@@82 f_19@@97) (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@82 f_19@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@82 f_19@@97))
))) (forall ((o2_19@@83 T@Ref) (f_19@@98 T@Field_11733_11734) ) (!  (=> (select (|PolymorphicMapType_8858_11700_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@33) null (WandMaskField_4710 pm_f_19@@10))) o2_19@@83 f_19@@98) (= (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@33) o2_19@@83 f_19@@98) (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@83 f_19@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@83 f_19@@98))
))) (forall ((o2_19@@84 T@Ref) (f_19@@99 T@Field_13042_1739) ) (!  (=> (select (|PolymorphicMapType_8858_13042_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@33) null (WandMaskField_4710 pm_f_19@@10))) o2_19@@84 f_19@@99) (= (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@33) o2_19@@84 f_19@@99) (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@84 f_19@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@84 f_19@@99))
))) (forall ((o2_19@@85 T@Ref) (f_19@@100 T@Field_13042_4711) ) (!  (=> (select (|PolymorphicMapType_8858_13042_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@33) null (WandMaskField_4710 pm_f_19@@10))) o2_19@@85 f_19@@100) (= (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@33) o2_19@@85 f_19@@100) (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@85 f_19@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@85 f_19@@100))
))) (forall ((o2_19@@86 T@Ref) (f_19@@101 T@Field_13042_53) ) (!  (=> (select (|PolymorphicMapType_8858_13042_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@33) null (WandMaskField_4710 pm_f_19@@10))) o2_19@@86 f_19@@101) (= (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@33) o2_19@@86 f_19@@101) (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@86 f_19@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@86 f_19@@101))
))) (forall ((o2_19@@87 T@Ref) (f_19@@102 T@Field_15714_15719) ) (!  (=> (select (|PolymorphicMapType_8858_13042_32361#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@33) null (WandMaskField_4710 pm_f_19@@10))) o2_19@@87 f_19@@102) (= (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@33) o2_19@@87 f_19@@102) (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@87 f_19@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@87 f_19@@102))
))) (forall ((o2_19@@88 T@Ref) (f_19@@103 T@Field_13042_13043) ) (!  (=> (select (|PolymorphicMapType_8858_13042_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@33) null (WandMaskField_4710 pm_f_19@@10))) o2_19@@88 f_19@@103) (= (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@33) o2_19@@88 f_19@@103) (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@88 f_19@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| ExhaleHeap@@27) o2_19@@88 f_19@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@58) (IsWandField_4710_33654 pm_f_19@@10))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 T@Ref) (arg3@@5 Int) (arg4@@5 Int) (arg5@@5 T@Ref) (arg6@@5 Int) (arg7@@5 T@Ref) (arg8@@5 Bool) ) (! (= (getPredWandId_4660_1222 (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5 arg8@@5)) 1)
 :qid |stdinbpl.208:15|
 :skolemid |27|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5 arg8@@5))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_8309) (Mask@@59 T@PolymorphicMapType_8330) (this@@7 T@Ref) (count@@1 Int) ) (!  (=> (state Heap@@34 Mask@@59) (= (|item_at'| Heap@@34 this@@7 count@@1) (|item_at#frame| (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@34) null (List this@@7)) this@@7 count@@1)))
 :qid |stdinbpl.393:15|
 :skolemid |38|
 :pattern ( (state Heap@@34 Mask@@59) (|item_at'| Heap@@34 this@@7 count@@1))
 :pattern ( (state Heap@@34 Mask@@59) (|item_at#triggerStateless| this@@7 count@@1) (|List#trigger_4777| Heap@@34 (List this@@7)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_8309) (Mask@@60 T@PolymorphicMapType_8330) (this@@8 T@Ref) ) (!  (=> (state Heap@@35 Mask@@60) (= (|length'| Heap@@35 this@@8) (|length#frame| (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@35) null (List this@@8)) this@@8)))
 :qid |stdinbpl.252:15|
 :skolemid |32|
 :pattern ( (state Heap@@35 Mask@@60) (|length'| Heap@@35 this@@8))
 :pattern ( (state Heap@@35 Mask@@60) (|length#triggerStateless| this@@8) (|List#trigger_4777| Heap@@35 (List this@@8)))
)))
(assert (forall ((this@@9 T@Ref) ) (! (= (getPredWandId_4777_4778 (List this@@9)) 0)
 :qid |stdinbpl.538:15|
 :skolemid |42|
 :pattern ( (List this@@9))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_8309) (Mask@@61 T@PolymorphicMapType_8330) (this@@10 T@Ref) ) (!  (=> (and (state Heap@@36 Mask@@61) (or (< AssumeFunctionsAbove 1) (|length#trigger| (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@36) null (List this@@10)) this@@10))) (>= (|length'| Heap@@36 this@@10) 0))
 :qid |stdinbpl.258:15|
 :skolemid |33|
 :pattern ( (state Heap@@36 Mask@@61) (|length'| Heap@@36 this@@10))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_8309) (o_1 T@Ref) (f_51 T@Field_11715_11720) (v T@PolymorphicMapType_8858) ) (! (succHeap Heap@@37 (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@37) (store (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@37) o_1 f_51 v) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@37) (store (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@37) o_1 f_51 v) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@37) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_8309) (o_1@@0 T@Ref) (f_51@@0 T@Field_11700_1222) (v@@0 Int) ) (! (succHeap Heap@@38 (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@38) (store (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@38) o_1@@0 f_51@@0 v@@0) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@38) (store (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@38) o_1@@0 f_51@@0 v@@0) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@38) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_8309) (o_1@@1 T@Ref) (f_51@@1 T@Field_11733_11734) (v@@1 T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@39) (store (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@39) o_1@@1 f_51@@1 v@@1) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@39) (store (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@39) o_1@@1 f_51@@1 v@@1) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@39) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_8309) (o_1@@2 T@Ref) (f_51@@2 T@Field_11700_4711) (v@@2 T@Ref) ) (! (succHeap Heap@@40 (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@40) (store (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@40) o_1@@2 f_51@@2 v@@2) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@40) (store (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@40) o_1@@2 f_51@@2 v@@2) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@40) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_8309) (o_1@@3 T@Ref) (f_51@@3 T@Field_11700_53) (v@@3 Bool) ) (! (succHeap Heap@@41 (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@41) (store (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@41) o_1@@3 f_51@@3 v@@3) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@41) (store (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@41) o_1@@3 f_51@@3 v@@3) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@41) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_8309) (o_1@@4 T@Ref) (f_51@@4 T@Field_15714_15719) (v@@4 T@PolymorphicMapType_8858) ) (! (succHeap Heap@@42 (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@42) (store (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@42) o_1@@4 f_51@@4 v@@4) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@42) (store (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@42) o_1@@4 f_51@@4 v@@4) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@42) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_8309) (o_1@@5 T@Ref) (f_51@@5 T@Field_13042_1739) (v@@5 Int) ) (! (succHeap Heap@@43 (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@43) (store (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@43) o_1@@5 f_51@@5 v@@5) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@43) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@43) (store (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@43) o_1@@5 f_51@@5 v@@5) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_8309) (o_1@@6 T@Ref) (f_51@@6 T@Field_13042_13043) (v@@6 T@FrameType) ) (! (succHeap Heap@@44 (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@44) (store (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@44) o_1@@6 f_51@@6 v@@6) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@44) (store (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@44) o_1@@6 f_51@@6 v@@6) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@44) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_8309) (o_1@@7 T@Ref) (f_51@@7 T@Field_13042_4711) (v@@7 T@Ref) ) (! (succHeap Heap@@45 (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@45) (store (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@45) o_1@@7 f_51@@7 v@@7) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@45) (store (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@45) o_1@@7 f_51@@7 v@@7) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@45) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_8309) (o_1@@8 T@Ref) (f_51@@8 T@Field_13042_53) (v@@8 Bool) ) (! (succHeap Heap@@46 (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@46) (store (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@46) o_1@@8 f_51@@8 v@@8)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@46) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@46) (store (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@46) o_1@@8 f_51@@8 v@@8)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_8309) (o_1@@9 T@Ref) (f_51@@9 T@Field_4710_11720) (v@@9 T@PolymorphicMapType_8858) ) (! (succHeap Heap@@47 (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@47) (store (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@47) o_1@@9 f_51@@9 v@@9) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@47) (store (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@47) o_1@@9 f_51@@9 v@@9) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@47) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_8309) (o_1@@10 T@Ref) (f_51@@10 T@Field_12632_1739) (v@@10 Int) ) (! (succHeap Heap@@48 (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@48) (store (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@48) o_1@@10 f_51@@10 v@@10) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@48) (store (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@48) o_1@@10 f_51@@10 v@@10) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@48) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_8309) (o_1@@11 T@Ref) (f_51@@11 T@Field_4710_11734) (v@@11 T@FrameType) ) (! (succHeap Heap@@49 (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@49) (store (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@49) o_1@@11 f_51@@11 v@@11) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@49) (store (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@49) o_1@@11 f_51@@11 v@@11) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@49) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_8309) (o_1@@12 T@Ref) (f_51@@12 T@Field_8382_8383) (v@@12 T@Ref) ) (! (succHeap Heap@@50 (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@50) (store (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@50) o_1@@12 f_51@@12 v@@12) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@50) (store (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@50) o_1@@12 f_51@@12 v@@12) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@50) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_8309) (o_1@@13 T@Ref) (f_51@@13 T@Field_8369_53) (v@@13 Bool) ) (! (succHeap Heap@@51 (PolymorphicMapType_8309 (store (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@51) o_1@@13 f_51@@13 v@@13) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8309 (store (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@51) o_1@@13 f_51@@13 v@@13) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@51) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@51)))
)))
(assert (forall ((this@@11 T@Ref) ) (! (= (PredicateMaskField_4777 (List this@@11)) (|List#sm| this@@11))
 :qid |stdinbpl.530:15|
 :skolemid |40|
 :pattern ( (PredicateMaskField_4777 (List this@@11)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_8309) (Mask@@62 T@PolymorphicMapType_8330) (this@@12 T@Ref) ) (!  (=> (and (state Heap@@52 Mask@@62) (< AssumeFunctionsAbove 1)) (= (length_1 Heap@@52 this@@12) (ite (= this@@12 null) 0 (+ 1 (|length'| Heap@@52 (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@52) this@@12 next))))))
 :qid |stdinbpl.245:15|
 :skolemid |31|
 :pattern ( (state Heap@@52 Mask@@62) (length_1 Heap@@52 this@@12))
 :pattern ( (state Heap@@52 Mask@@62) (|length#triggerStateless| this@@12) (|List#trigger_4777| Heap@@52 (List this@@12)))
)))
(assert (forall ((o_1@@14 T@Ref) (f_2 T@Field_8382_8383) (Heap@@53 T@PolymorphicMapType_8309) ) (!  (=> (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@53) o_1@@14 $allocated) (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@53) (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@53) o_1@@14 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@53) o_1@@14 f_2))
)))
(assert (forall ((p@@3 T@Field_11733_11734) (v_1@@2 T@FrameType) (q T@Field_11733_11734) (w@@2 T@FrameType) (r T@Field_11733_11734) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11700_11700 p@@3 v_1@@2 q w@@2) (InsidePredicate_11700_11700 q w@@2 r u)) (InsidePredicate_11700_11700 p@@3 v_1@@2 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11700_11700 p@@3 v_1@@2 q w@@2) (InsidePredicate_11700_11700 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_11733_11734) (v_1@@3 T@FrameType) (q@@0 T@Field_11733_11734) (w@@3 T@FrameType) (r@@0 T@Field_4710_11734) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_11700_11700 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_11700_8369 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_11700_8369 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11700_11700 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_11700_8369 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_11733_11734) (v_1@@4 T@FrameType) (q@@1 T@Field_11733_11734) (w@@4 T@FrameType) (r@@1 T@Field_13042_13043) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_11700_11700 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_11700_4777 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_11700_4777 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11700_11700 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_11700_4777 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_11733_11734) (v_1@@5 T@FrameType) (q@@2 T@Field_4710_11734) (w@@5 T@FrameType) (r@@2 T@Field_11733_11734) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_11700_8369 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_8369_11700 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_11700_11700 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11700_8369 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_8369_11700 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_11733_11734) (v_1@@6 T@FrameType) (q@@3 T@Field_4710_11734) (w@@6 T@FrameType) (r@@3 T@Field_4710_11734) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_11700_8369 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_8369_8369 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_11700_8369 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11700_8369 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_8369_8369 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_11733_11734) (v_1@@7 T@FrameType) (q@@4 T@Field_4710_11734) (w@@7 T@FrameType) (r@@4 T@Field_13042_13043) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_11700_8369 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_8369_4777 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_11700_4777 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11700_8369 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_8369_4777 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_11733_11734) (v_1@@8 T@FrameType) (q@@5 T@Field_13042_13043) (w@@8 T@FrameType) (r@@5 T@Field_11733_11734) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_11700_4777 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_4777_11700 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_11700_11700 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11700_4777 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_4777_11700 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_11733_11734) (v_1@@9 T@FrameType) (q@@6 T@Field_13042_13043) (w@@9 T@FrameType) (r@@6 T@Field_4710_11734) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_11700_4777 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_4777_8369 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_11700_8369 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11700_4777 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_4777_8369 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_11733_11734) (v_1@@10 T@FrameType) (q@@7 T@Field_13042_13043) (w@@10 T@FrameType) (r@@7 T@Field_13042_13043) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_11700_4777 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_4777_4777 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_11700_4777 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11700_4777 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_4777_4777 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_4710_11734) (v_1@@11 T@FrameType) (q@@8 T@Field_11733_11734) (w@@11 T@FrameType) (r@@8 T@Field_11733_11734) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_8369_11700 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_11700_11700 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_8369_11700 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8369_11700 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_11700_11700 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_4710_11734) (v_1@@12 T@FrameType) (q@@9 T@Field_11733_11734) (w@@12 T@FrameType) (r@@9 T@Field_4710_11734) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_8369_11700 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_11700_8369 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_8369_8369 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8369_11700 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_11700_8369 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_4710_11734) (v_1@@13 T@FrameType) (q@@10 T@Field_11733_11734) (w@@13 T@FrameType) (r@@10 T@Field_13042_13043) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_8369_11700 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_11700_4777 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_8369_4777 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8369_11700 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_11700_4777 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_4710_11734) (v_1@@14 T@FrameType) (q@@11 T@Field_4710_11734) (w@@14 T@FrameType) (r@@11 T@Field_11733_11734) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_8369_8369 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_8369_11700 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_8369_11700 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8369_8369 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_8369_11700 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_4710_11734) (v_1@@15 T@FrameType) (q@@12 T@Field_4710_11734) (w@@15 T@FrameType) (r@@12 T@Field_4710_11734) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_8369_8369 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_8369_8369 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_8369_8369 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8369_8369 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_8369_8369 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_4710_11734) (v_1@@16 T@FrameType) (q@@13 T@Field_4710_11734) (w@@16 T@FrameType) (r@@13 T@Field_13042_13043) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_8369_8369 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_8369_4777 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_8369_4777 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8369_8369 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_8369_4777 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_4710_11734) (v_1@@17 T@FrameType) (q@@14 T@Field_13042_13043) (w@@17 T@FrameType) (r@@14 T@Field_11733_11734) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_8369_4777 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_4777_11700 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_8369_11700 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8369_4777 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_4777_11700 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_4710_11734) (v_1@@18 T@FrameType) (q@@15 T@Field_13042_13043) (w@@18 T@FrameType) (r@@15 T@Field_4710_11734) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_8369_4777 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_4777_8369 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_8369_8369 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8369_4777 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_4777_8369 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_4710_11734) (v_1@@19 T@FrameType) (q@@16 T@Field_13042_13043) (w@@19 T@FrameType) (r@@16 T@Field_13042_13043) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_8369_4777 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_4777_4777 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_8369_4777 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8369_4777 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_4777_4777 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_13042_13043) (v_1@@20 T@FrameType) (q@@17 T@Field_11733_11734) (w@@20 T@FrameType) (r@@17 T@Field_11733_11734) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_4777_11700 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_11700_11700 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_4777_11700 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4777_11700 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_11700_11700 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_13042_13043) (v_1@@21 T@FrameType) (q@@18 T@Field_11733_11734) (w@@21 T@FrameType) (r@@18 T@Field_4710_11734) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_4777_11700 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_11700_8369 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_4777_8369 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4777_11700 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_11700_8369 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_13042_13043) (v_1@@22 T@FrameType) (q@@19 T@Field_11733_11734) (w@@22 T@FrameType) (r@@19 T@Field_13042_13043) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_4777_11700 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_11700_4777 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_4777_4777 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4777_11700 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_11700_4777 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_13042_13043) (v_1@@23 T@FrameType) (q@@20 T@Field_4710_11734) (w@@23 T@FrameType) (r@@20 T@Field_11733_11734) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_4777_8369 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_8369_11700 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_4777_11700 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4777_8369 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_8369_11700 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_13042_13043) (v_1@@24 T@FrameType) (q@@21 T@Field_4710_11734) (w@@24 T@FrameType) (r@@21 T@Field_4710_11734) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_4777_8369 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_8369_8369 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_4777_8369 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4777_8369 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_8369_8369 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_13042_13043) (v_1@@25 T@FrameType) (q@@22 T@Field_4710_11734) (w@@25 T@FrameType) (r@@22 T@Field_13042_13043) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_4777_8369 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_8369_4777 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_4777_4777 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4777_8369 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_8369_4777 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_13042_13043) (v_1@@26 T@FrameType) (q@@23 T@Field_13042_13043) (w@@26 T@FrameType) (r@@23 T@Field_11733_11734) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_4777_4777 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_4777_11700 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_4777_11700 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4777_4777 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_4777_11700 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_13042_13043) (v_1@@27 T@FrameType) (q@@24 T@Field_13042_13043) (w@@27 T@FrameType) (r@@24 T@Field_4710_11734) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_4777_4777 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_4777_8369 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_4777_8369 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4777_4777 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_4777_8369 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_13042_13043) (v_1@@28 T@FrameType) (q@@25 T@Field_13042_13043) (w@@28 T@FrameType) (r@@25 T@Field_13042_13043) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_4777_4777 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_4777_4777 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_4777_4777 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4777_4777 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_4777_4777 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_8309) (Mask@@63 T@PolymorphicMapType_8330) (this@@13 T@Ref) (count@@2 Int) ) (!  (=> (and (state Heap@@54 Mask@@63) (< AssumeFunctionsAbove 0)) (=> (and (< count@@2 (length_1 Heap@@54 this@@13)) (>= count@@2 0)) (= (item_at Heap@@54 this@@13 count@@2) (ite (= count@@2 0) (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@54) this@@13 value_1) (|item_at'| Heap@@54 (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@54) this@@13 next) (- count@@2 1))))))
 :qid |stdinbpl.386:15|
 :skolemid |37|
 :pattern ( (state Heap@@54 Mask@@63) (item_at Heap@@54 this@@13 count@@2))
 :pattern ( (state Heap@@54 Mask@@63) (|item_at#triggerStateless| this@@13 count@@2) (|List#trigger_4777| Heap@@54 (List this@@13)))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@14 () T@Ref)
(declare-fun Heap@3 () T@PolymorphicMapType_8309)
(declare-fun Heap@@55 () T@PolymorphicMapType_8309)
(declare-fun Heap@0 () T@PolymorphicMapType_8309)
(declare-fun Heap@1 () T@PolymorphicMapType_8309)
(declare-fun newPMask@0 () T@PolymorphicMapType_8858)
(declare-fun Heap@2 () T@PolymorphicMapType_8309)
(declare-fun |item_at#trigger| (T@FrameType T@Ref Int) Bool)
(declare-fun count@@3 () Int)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_8330)
(declare-fun Mask@0 () T@PolymorphicMapType_8330)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_8330)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_8330)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_8330)
(declare-fun FrameFragment_4634 (T@FrameType) T@FrameType)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1739 (Int) T@FrameType)
(declare-fun FrameFragment_4711 (T@Ref) T@FrameType)
(set-info :boogie-vc-id |item_at#definedness|)
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
(let ((anon16_Else_correct  (=> (= this@@14 null) (=> (and (= Heap@3 Heap@@55) (= (ControlFlow 0 9) 7)) anon11_correct))))
(let ((anon16_Then_correct  (=> (not (= this@@14 null)) (=> (and (= Heap@0 (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@55) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@55) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@55) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@55) (store (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@55) null (|List#sm| this@@14) (PolymorphicMapType_8858 (store (|PolymorphicMapType_8858_4708_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@55) null (|List#sm| this@@14))) this@@14 value_1 true) (|PolymorphicMapType_8858_4710_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@55) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_4708_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@55) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_4708_30265#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@55) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_4708_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@55) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_11700_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@55) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_11700_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@55) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_11700_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@55) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_11700_31313#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@55) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_11700_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@55) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_13042_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@55) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_13042_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@55) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_13042_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@55) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_13042_32361#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@55) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_13042_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@@55) null (|List#sm| this@@14))))) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@@55) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@@55) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@@55) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@@55) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@@55) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@@55) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@@55) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@@55) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@@55) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@@55))) (= Heap@1 (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@0) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@0) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@0) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@0) (store (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@0) null (|List#sm| this@@14) (PolymorphicMapType_8858 (|PolymorphicMapType_8858_4708_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@0) null (|List#sm| this@@14))) (store (|PolymorphicMapType_8858_4710_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@0) null (|List#sm| this@@14))) this@@14 next true) (|PolymorphicMapType_8858_4708_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@0) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_4708_30265#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@0) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_4708_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@0) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_11700_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@0) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_11700_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@0) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_11700_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@0) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_11700_31313#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@0) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_11700_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@0) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_13042_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@0) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_13042_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@0) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_13042_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@0) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_13042_32361#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@0) null (|List#sm| this@@14))) (|PolymorphicMapType_8858_13042_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@0) null (|List#sm| this@@14))))) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@0) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@0) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@0) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@0) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@0) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@0) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@0) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@0) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@0) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@0)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_6 T@Ref) (f_12 T@Field_12632_1739) ) (!  (=> (or (select (|PolymorphicMapType_8858_4708_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| this@@14))) o_6 f_12) (select (|PolymorphicMapType_8858_4708_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@1) this@@14 next)))) o_6 f_12)) (select (|PolymorphicMapType_8858_4708_1739#PolymorphicMapType_8858| newPMask@0) o_6 f_12))
 :qid |stdinbpl.511:33|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_8858_4708_1739#PolymorphicMapType_8858| newPMask@0) o_6 f_12))
)) (forall ((o_6@@0 T@Ref) (f_12@@0 T@Field_8382_8383) ) (!  (=> (or (select (|PolymorphicMapType_8858_4710_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| this@@14))) o_6@@0 f_12@@0) (select (|PolymorphicMapType_8858_4710_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@1) this@@14 next)))) o_6@@0 f_12@@0)) (select (|PolymorphicMapType_8858_4710_4711#PolymorphicMapType_8858| newPMask@0) o_6@@0 f_12@@0))
 :qid |stdinbpl.511:33|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_8858_4710_4711#PolymorphicMapType_8858| newPMask@0) o_6@@0 f_12@@0))
))) (forall ((o_6@@1 T@Ref) (f_12@@1 T@Field_8369_53) ) (!  (=> (or (select (|PolymorphicMapType_8858_4708_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| this@@14))) o_6@@1 f_12@@1) (select (|PolymorphicMapType_8858_4708_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@1) this@@14 next)))) o_6@@1 f_12@@1)) (select (|PolymorphicMapType_8858_4708_53#PolymorphicMapType_8858| newPMask@0) o_6@@1 f_12@@1))
 :qid |stdinbpl.511:33|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_8858_4708_53#PolymorphicMapType_8858| newPMask@0) o_6@@1 f_12@@1))
))) (forall ((o_6@@2 T@Ref) (f_12@@2 T@Field_4710_11720) ) (!  (=> (or (select (|PolymorphicMapType_8858_4708_30265#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| this@@14))) o_6@@2 f_12@@2) (select (|PolymorphicMapType_8858_4708_30265#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@1) this@@14 next)))) o_6@@2 f_12@@2)) (select (|PolymorphicMapType_8858_4708_30265#PolymorphicMapType_8858| newPMask@0) o_6@@2 f_12@@2))
 :qid |stdinbpl.511:33|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_8858_4708_30265#PolymorphicMapType_8858| newPMask@0) o_6@@2 f_12@@2))
))) (forall ((o_6@@3 T@Ref) (f_12@@3 T@Field_4710_11734) ) (!  (=> (or (select (|PolymorphicMapType_8858_4708_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| this@@14))) o_6@@3 f_12@@3) (select (|PolymorphicMapType_8858_4708_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@1) this@@14 next)))) o_6@@3 f_12@@3)) (select (|PolymorphicMapType_8858_4708_11734#PolymorphicMapType_8858| newPMask@0) o_6@@3 f_12@@3))
 :qid |stdinbpl.511:33|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_8858_4708_11734#PolymorphicMapType_8858| newPMask@0) o_6@@3 f_12@@3))
))) (forall ((o_6@@4 T@Ref) (f_12@@4 T@Field_11700_1222) ) (!  (=> (or (select (|PolymorphicMapType_8858_11700_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| this@@14))) o_6@@4 f_12@@4) (select (|PolymorphicMapType_8858_11700_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@1) this@@14 next)))) o_6@@4 f_12@@4)) (select (|PolymorphicMapType_8858_11700_1739#PolymorphicMapType_8858| newPMask@0) o_6@@4 f_12@@4))
 :qid |stdinbpl.511:33|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_8858_11700_1739#PolymorphicMapType_8858| newPMask@0) o_6@@4 f_12@@4))
))) (forall ((o_6@@5 T@Ref) (f_12@@5 T@Field_11700_4711) ) (!  (=> (or (select (|PolymorphicMapType_8858_11700_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| this@@14))) o_6@@5 f_12@@5) (select (|PolymorphicMapType_8858_11700_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@1) this@@14 next)))) o_6@@5 f_12@@5)) (select (|PolymorphicMapType_8858_11700_4711#PolymorphicMapType_8858| newPMask@0) o_6@@5 f_12@@5))
 :qid |stdinbpl.511:33|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_8858_11700_4711#PolymorphicMapType_8858| newPMask@0) o_6@@5 f_12@@5))
))) (forall ((o_6@@6 T@Ref) (f_12@@6 T@Field_11700_53) ) (!  (=> (or (select (|PolymorphicMapType_8858_11700_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| this@@14))) o_6@@6 f_12@@6) (select (|PolymorphicMapType_8858_11700_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@1) this@@14 next)))) o_6@@6 f_12@@6)) (select (|PolymorphicMapType_8858_11700_53#PolymorphicMapType_8858| newPMask@0) o_6@@6 f_12@@6))
 :qid |stdinbpl.511:33|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_8858_11700_53#PolymorphicMapType_8858| newPMask@0) o_6@@6 f_12@@6))
))) (forall ((o_6@@7 T@Ref) (f_12@@7 T@Field_11715_11720) ) (!  (=> (or (select (|PolymorphicMapType_8858_11700_31313#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| this@@14))) o_6@@7 f_12@@7) (select (|PolymorphicMapType_8858_11700_31313#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@1) this@@14 next)))) o_6@@7 f_12@@7)) (select (|PolymorphicMapType_8858_11700_31313#PolymorphicMapType_8858| newPMask@0) o_6@@7 f_12@@7))
 :qid |stdinbpl.511:33|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_8858_11700_31313#PolymorphicMapType_8858| newPMask@0) o_6@@7 f_12@@7))
))) (forall ((o_6@@8 T@Ref) (f_12@@8 T@Field_11733_11734) ) (!  (=> (or (select (|PolymorphicMapType_8858_11700_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| this@@14))) o_6@@8 f_12@@8) (select (|PolymorphicMapType_8858_11700_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@1) this@@14 next)))) o_6@@8 f_12@@8)) (select (|PolymorphicMapType_8858_11700_11734#PolymorphicMapType_8858| newPMask@0) o_6@@8 f_12@@8))
 :qid |stdinbpl.511:33|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_8858_11700_11734#PolymorphicMapType_8858| newPMask@0) o_6@@8 f_12@@8))
))) (forall ((o_6@@9 T@Ref) (f_12@@9 T@Field_13042_1739) ) (!  (=> (or (select (|PolymorphicMapType_8858_13042_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| this@@14))) o_6@@9 f_12@@9) (select (|PolymorphicMapType_8858_13042_1739#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@1) this@@14 next)))) o_6@@9 f_12@@9)) (select (|PolymorphicMapType_8858_13042_1739#PolymorphicMapType_8858| newPMask@0) o_6@@9 f_12@@9))
 :qid |stdinbpl.511:33|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_8858_13042_1739#PolymorphicMapType_8858| newPMask@0) o_6@@9 f_12@@9))
))) (forall ((o_6@@10 T@Ref) (f_12@@10 T@Field_13042_4711) ) (!  (=> (or (select (|PolymorphicMapType_8858_13042_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| this@@14))) o_6@@10 f_12@@10) (select (|PolymorphicMapType_8858_13042_4711#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@1) this@@14 next)))) o_6@@10 f_12@@10)) (select (|PolymorphicMapType_8858_13042_4711#PolymorphicMapType_8858| newPMask@0) o_6@@10 f_12@@10))
 :qid |stdinbpl.511:33|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_8858_13042_4711#PolymorphicMapType_8858| newPMask@0) o_6@@10 f_12@@10))
))) (forall ((o_6@@11 T@Ref) (f_12@@11 T@Field_13042_53) ) (!  (=> (or (select (|PolymorphicMapType_8858_13042_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| this@@14))) o_6@@11 f_12@@11) (select (|PolymorphicMapType_8858_13042_53#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@1) this@@14 next)))) o_6@@11 f_12@@11)) (select (|PolymorphicMapType_8858_13042_53#PolymorphicMapType_8858| newPMask@0) o_6@@11 f_12@@11))
 :qid |stdinbpl.511:33|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_8858_13042_53#PolymorphicMapType_8858| newPMask@0) o_6@@11 f_12@@11))
))) (forall ((o_6@@12 T@Ref) (f_12@@12 T@Field_15714_15719) ) (!  (=> (or (select (|PolymorphicMapType_8858_13042_32361#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| this@@14))) o_6@@12 f_12@@12) (select (|PolymorphicMapType_8858_13042_32361#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@1) this@@14 next)))) o_6@@12 f_12@@12)) (select (|PolymorphicMapType_8858_13042_32361#PolymorphicMapType_8858| newPMask@0) o_6@@12 f_12@@12))
 :qid |stdinbpl.511:33|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_8858_13042_32361#PolymorphicMapType_8858| newPMask@0) o_6@@12 f_12@@12))
))) (forall ((o_6@@13 T@Ref) (f_12@@13 T@Field_13042_13043) ) (!  (=> (or (select (|PolymorphicMapType_8858_13042_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| this@@14))) o_6@@13 f_12@@13) (select (|PolymorphicMapType_8858_13042_11734#PolymorphicMapType_8858| (select (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@1) this@@14 next)))) o_6@@13 f_12@@13)) (select (|PolymorphicMapType_8858_13042_11734#PolymorphicMapType_8858| newPMask@0) o_6@@13 f_12@@13))
 :qid |stdinbpl.511:33|
 :skolemid |39|
 :pattern ( (select (|PolymorphicMapType_8858_13042_11734#PolymorphicMapType_8858| newPMask@0) o_6@@13 f_12@@13))
))) (= Heap@2 (PolymorphicMapType_8309 (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@1) (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@1) (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@1) (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@1) (store (|PolymorphicMapType_8309_4781_15806#PolymorphicMapType_8309| Heap@1) null (|List#sm| this@@14) newPMask@0) (|PolymorphicMapType_8309_4710_25892#PolymorphicMapType_8309| Heap@1) (|PolymorphicMapType_8309_4710_11734#PolymorphicMapType_8309| Heap@1) (|PolymorphicMapType_8309_11700_4711#PolymorphicMapType_8309| Heap@1) (|PolymorphicMapType_8309_11700_1739#PolymorphicMapType_8309| Heap@1) (|PolymorphicMapType_8309_11700_53#PolymorphicMapType_8309| Heap@1) (|PolymorphicMapType_8309_11700_27070#PolymorphicMapType_8309| Heap@1) (|PolymorphicMapType_8309_11700_11734#PolymorphicMapType_8309| Heap@1) (|PolymorphicMapType_8309_13042_4711#PolymorphicMapType_8309| Heap@1) (|PolymorphicMapType_8309_13042_1739#PolymorphicMapType_8309| Heap@1) (|PolymorphicMapType_8309_13042_53#PolymorphicMapType_8309| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 8) 7))) anon11_correct)))))
(let ((anon15_Else_correct  (=> (|item_at#trigger| (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@55) null (List (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@55) this@@14 next))) (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@55) this@@14 next) (- count@@3 1)) (and (=> (= (ControlFlow 0 12) 8) anon16_Then_correct) (=> (= (ControlFlow 0 12) 9) anon16_Else_correct)))))
(let ((anon14_Then_correct  (=> (= count@@3 0) (and (=> (= (ControlFlow 0 10) (- 0 11)) (HasDirectPerm_4708_1739 UnfoldingMask@3 this@@14 value_1)) (=> (HasDirectPerm_4708_1739 UnfoldingMask@3 this@@14 value_1) (and (=> (= (ControlFlow 0 10) 8) anon16_Then_correct) (=> (= (ControlFlow 0 10) 9) anon16_Else_correct)))))))
(let ((anon15_Then_correct  (and (=> (= (ControlFlow 0 4) (- 0 6)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| UnfoldingMask@3) null (List (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@55) this@@14 next)))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| UnfoldingMask@3) null (List (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@55) this@@14 next))))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (< (- count@@3 1) (length_1 Heap@@55 (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@55) this@@14 next)))) (=> (< (- count@@3 1) (length_1 Heap@@55 (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@55) this@@14 next))) (=> (= (ControlFlow 0 4) (- 0 3)) (>= (- count@@3 1) 0))))))))
(let ((anon14_Else_correct  (=> (not (= count@@3 0)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (HasDirectPerm_4710_4711 UnfoldingMask@3 this@@14 next)) (=> (HasDirectPerm_4710_4711 UnfoldingMask@3 this@@14 next) (and (=> (= (ControlFlow 0 13) 4) anon15_Then_correct) (=> (= (ControlFlow 0 13) 12) anon15_Else_correct)))))))
(let ((anon4_correct  (=> (state Heap@@55 UnfoldingMask@3) (and (=> (= (ControlFlow 0 15) 10) anon14_Then_correct) (=> (= (ControlFlow 0 15) 13) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (= this@@14 null) (=> (and (= UnfoldingMask@3 Mask@0) (= (ControlFlow 0 17) 15)) anon4_correct))))
(let ((anon13_Then_correct  (=> (and (and (not (= this@@14 null)) (not (= this@@14 null))) (and (= UnfoldingMask@0 (PolymorphicMapType_8330 (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| Mask@0) (store (|PolymorphicMapType_8330_4708_1739#PolymorphicMapType_8330| Mask@0) this@@14 value_1 (+ (select (|PolymorphicMapType_8330_4708_1739#PolymorphicMapType_8330| Mask@0) this@@14 value_1) FullPerm)) (|PolymorphicMapType_8330_4710_4711#PolymorphicMapType_8330| Mask@0) (|PolymorphicMapType_8330_4660_1222#PolymorphicMapType_8330| Mask@0) (|PolymorphicMapType_8330_4777_1739#PolymorphicMapType_8330| Mask@0) (|PolymorphicMapType_8330_4777_4711#PolymorphicMapType_8330| Mask@0) (|PolymorphicMapType_8330_4777_53#PolymorphicMapType_8330| Mask@0) (|PolymorphicMapType_8330_4777_40374#PolymorphicMapType_8330| Mask@0) (|PolymorphicMapType_8330_4708_4778#PolymorphicMapType_8330| Mask@0) (|PolymorphicMapType_8330_4708_53#PolymorphicMapType_8330| Mask@0) (|PolymorphicMapType_8330_4708_40773#PolymorphicMapType_8330| Mask@0) (|PolymorphicMapType_8330_4660_4778#PolymorphicMapType_8330| Mask@0) (|PolymorphicMapType_8330_4660_4711#PolymorphicMapType_8330| Mask@0) (|PolymorphicMapType_8330_4660_53#PolymorphicMapType_8330| Mask@0) (|PolymorphicMapType_8330_4660_41187#PolymorphicMapType_8330| Mask@0))) (state Heap@@55 UnfoldingMask@0))) (=> (and (and (and (not (= this@@14 null)) (= UnfoldingMask@1 (PolymorphicMapType_8330 (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| UnfoldingMask@0) (|PolymorphicMapType_8330_4708_1739#PolymorphicMapType_8330| UnfoldingMask@0) (store (|PolymorphicMapType_8330_4710_4711#PolymorphicMapType_8330| UnfoldingMask@0) this@@14 next (+ (select (|PolymorphicMapType_8330_4710_4711#PolymorphicMapType_8330| UnfoldingMask@0) this@@14 next) FullPerm)) (|PolymorphicMapType_8330_4660_1222#PolymorphicMapType_8330| UnfoldingMask@0) (|PolymorphicMapType_8330_4777_1739#PolymorphicMapType_8330| UnfoldingMask@0) (|PolymorphicMapType_8330_4777_4711#PolymorphicMapType_8330| UnfoldingMask@0) (|PolymorphicMapType_8330_4777_53#PolymorphicMapType_8330| UnfoldingMask@0) (|PolymorphicMapType_8330_4777_40374#PolymorphicMapType_8330| UnfoldingMask@0) (|PolymorphicMapType_8330_4708_4778#PolymorphicMapType_8330| UnfoldingMask@0) (|PolymorphicMapType_8330_4708_53#PolymorphicMapType_8330| UnfoldingMask@0) (|PolymorphicMapType_8330_4708_40773#PolymorphicMapType_8330| UnfoldingMask@0) (|PolymorphicMapType_8330_4660_4778#PolymorphicMapType_8330| UnfoldingMask@0) (|PolymorphicMapType_8330_4660_4711#PolymorphicMapType_8330| UnfoldingMask@0) (|PolymorphicMapType_8330_4660_53#PolymorphicMapType_8330| UnfoldingMask@0) (|PolymorphicMapType_8330_4660_41187#PolymorphicMapType_8330| UnfoldingMask@0)))) (and (state Heap@@55 UnfoldingMask@1) (= UnfoldingMask@2 (PolymorphicMapType_8330 (store (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| UnfoldingMask@1) null (List (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@55) this@@14 next)) (+ (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| UnfoldingMask@1) null (List (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@55) this@@14 next))) FullPerm)) (|PolymorphicMapType_8330_4708_1739#PolymorphicMapType_8330| UnfoldingMask@1) (|PolymorphicMapType_8330_4710_4711#PolymorphicMapType_8330| UnfoldingMask@1) (|PolymorphicMapType_8330_4660_1222#PolymorphicMapType_8330| UnfoldingMask@1) (|PolymorphicMapType_8330_4777_1739#PolymorphicMapType_8330| UnfoldingMask@1) (|PolymorphicMapType_8330_4777_4711#PolymorphicMapType_8330| UnfoldingMask@1) (|PolymorphicMapType_8330_4777_53#PolymorphicMapType_8330| UnfoldingMask@1) (|PolymorphicMapType_8330_4777_40374#PolymorphicMapType_8330| UnfoldingMask@1) (|PolymorphicMapType_8330_4708_4778#PolymorphicMapType_8330| UnfoldingMask@1) (|PolymorphicMapType_8330_4708_53#PolymorphicMapType_8330| UnfoldingMask@1) (|PolymorphicMapType_8330_4708_40773#PolymorphicMapType_8330| UnfoldingMask@1) (|PolymorphicMapType_8330_4660_4778#PolymorphicMapType_8330| UnfoldingMask@1) (|PolymorphicMapType_8330_4660_4711#PolymorphicMapType_8330| UnfoldingMask@1) (|PolymorphicMapType_8330_4660_53#PolymorphicMapType_8330| UnfoldingMask@1) (|PolymorphicMapType_8330_4660_41187#PolymorphicMapType_8330| UnfoldingMask@1))))) (and (and (InsidePredicate_4777_4777 (List this@@14) (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@55) null (List this@@14)) (List (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@55) this@@14 next)) (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@55) null (List (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@55) this@@14 next)))) (state Heap@@55 UnfoldingMask@2)) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 16) 15)))) anon4_correct))))
(let ((anon12_Else_correct  (=> (< count@@3 (length_1 Heap@@55 this@@14)) (=> (and (and (>= count@@3 0) (state Heap@@55 Mask@0)) (and (|List#trigger_4777| Heap@@55 (List this@@14)) (= (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@55) null (List this@@14)) (FrameFragment_4634 (ite (not (= this@@14 null)) (CombineFrames (FrameFragment_1739 (select (|PolymorphicMapType_8309_4708_1739#PolymorphicMapType_8309| Heap@@55) this@@14 value_1)) (CombineFrames (FrameFragment_4711 (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@55) this@@14 next)) (select (|PolymorphicMapType_8309_4777_4778#PolymorphicMapType_8309| Heap@@55) null (List (select (|PolymorphicMapType_8309_4531_4532#PolymorphicMapType_8309| Heap@@55) this@@14 next))))) EmptyFrame))))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| Mask@0) null (List this@@14))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| Mask@0) null (List this@@14)))) (and (=> (= (ControlFlow 0 18) 16) anon13_Then_correct) (=> (= (ControlFlow 0 18) 17) anon13_Else_correct))))))))
(let ((anon12_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| Mask@0) null (List this@@14)))))))
(let ((anon0_correct  (=> (state Heap@@55 ZeroMask) (=> (and (not AssumePermUpperBound) (select (|PolymorphicMapType_8309_4528_53#PolymorphicMapType_8309| Heap@@55) this@@14 $allocated)) (=> (and (and (= AssumeFunctionsAbove 0) (= Mask@0 (PolymorphicMapType_8330 (store (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| ZeroMask) null (List this@@14) (+ (select (|PolymorphicMapType_8330_4777_4778#PolymorphicMapType_8330| ZeroMask) null (List this@@14)) FullPerm)) (|PolymorphicMapType_8330_4708_1739#PolymorphicMapType_8330| ZeroMask) (|PolymorphicMapType_8330_4710_4711#PolymorphicMapType_8330| ZeroMask) (|PolymorphicMapType_8330_4660_1222#PolymorphicMapType_8330| ZeroMask) (|PolymorphicMapType_8330_4777_1739#PolymorphicMapType_8330| ZeroMask) (|PolymorphicMapType_8330_4777_4711#PolymorphicMapType_8330| ZeroMask) (|PolymorphicMapType_8330_4777_53#PolymorphicMapType_8330| ZeroMask) (|PolymorphicMapType_8330_4777_40374#PolymorphicMapType_8330| ZeroMask) (|PolymorphicMapType_8330_4708_4778#PolymorphicMapType_8330| ZeroMask) (|PolymorphicMapType_8330_4708_53#PolymorphicMapType_8330| ZeroMask) (|PolymorphicMapType_8330_4708_40773#PolymorphicMapType_8330| ZeroMask) (|PolymorphicMapType_8330_4660_4778#PolymorphicMapType_8330| ZeroMask) (|PolymorphicMapType_8330_4660_4711#PolymorphicMapType_8330| ZeroMask) (|PolymorphicMapType_8330_4660_53#PolymorphicMapType_8330| ZeroMask) (|PolymorphicMapType_8330_4660_41187#PolymorphicMapType_8330| ZeroMask)))) (and (state Heap@@55 Mask@0) (state Heap@@55 Mask@0))) (and (=> (= (ControlFlow 0 20) 2) anon12_Then_correct) (=> (= (ControlFlow 0 20) 18) anon12_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 21) 20) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
