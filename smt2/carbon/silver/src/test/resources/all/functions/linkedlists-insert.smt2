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
(declare-sort T@Field_40066_53 0)
(declare-sort T@Field_40079_40080 0)
(declare-sort T@Field_46529_46530 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_46134_3004 0)
(declare-sort T@Field_49490_49495 0)
(declare-sort T@Field_20632_20924 0)
(declare-sort T@Field_20632_49495 0)
(declare-sort T@Field_20923_20633 0)
(declare-sort T@Field_20923_3004 0)
(declare-sort T@Field_20923_53 0)
(declare-datatypes ((T@PolymorphicMapType_40027 0)) (((PolymorphicMapType_40027 (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| (Array T@Ref T@Field_46529_46530 Real)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| (Array T@Ref T@Field_40079_40080 Real)) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| (Array T@Ref T@Field_46134_3004 Real)) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| (Array T@Ref T@Field_20923_20633 Real)) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| (Array T@Ref T@Field_20923_3004 Real)) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| (Array T@Ref T@Field_20923_53 Real)) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| (Array T@Ref T@Field_49490_49495 Real)) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| (Array T@Ref T@Field_20632_20924 Real)) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| (Array T@Ref T@Field_40066_53 Real)) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| (Array T@Ref T@Field_20632_49495 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_40555 0)) (((PolymorphicMapType_40555 (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (Array T@Ref T@Field_40079_40080 Bool)) (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (Array T@Ref T@Field_46134_3004 Bool)) (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (Array T@Ref T@Field_40066_53 Bool)) (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (Array T@Ref T@Field_20632_20924 Bool)) (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (Array T@Ref T@Field_20632_49495 Bool)) (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (Array T@Ref T@Field_20923_20633 Bool)) (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (Array T@Ref T@Field_20923_3004 Bool)) (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (Array T@Ref T@Field_20923_53 Bool)) (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (Array T@Ref T@Field_46529_46530 Bool)) (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (Array T@Ref T@Field_49490_49495 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_40006 0)) (((PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| (Array T@Ref T@Field_40066_53 Bool)) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| (Array T@Ref T@Field_40079_40080 T@Ref)) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| (Array T@Ref T@Field_46529_46530 T@FrameType)) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| (Array T@Ref T@Field_46134_3004 Int)) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| (Array T@Ref T@Field_49490_49495 T@PolymorphicMapType_40555)) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| (Array T@Ref T@Field_20632_20924 T@FrameType)) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| (Array T@Ref T@Field_20632_49495 T@PolymorphicMapType_40555)) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| (Array T@Ref T@Field_20923_20633 T@Ref)) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| (Array T@Ref T@Field_20923_3004 Int)) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| (Array T@Ref T@Field_20923_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_40066_53)
(declare-fun next () T@Field_40079_40080)
(declare-fun val () T@Field_46134_3004)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_7600| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_40006 T@PolymorphicMapType_40006) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_40006 T@PolymorphicMapType_40006) Bool)
(declare-fun state (T@PolymorphicMapType_40006 T@PolymorphicMapType_40027) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_40027) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_40555)
(declare-fun |contains'| (T@PolymorphicMapType_40006 T@Ref Int) Bool)
(declare-fun dummyFunction_6999 (Bool) Bool)
(declare-fun |contains#triggerStateless| (T@Ref Int) Bool)
(declare-fun |get'| (T@PolymorphicMapType_40006 T@Ref Int) Int)
(declare-fun dummyFunction_3287 (Int) Bool)
(declare-fun |get#triggerStateless| (T@Ref Int) Int)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_7726| () T@Seq_2867)
(declare-fun list (T@Ref) T@Field_46529_46530)
(declare-fun IsPredicateField_20923_20924 (T@Field_46529_46530) Bool)
(declare-fun |length'| (T@PolymorphicMapType_40006 T@Ref) Int)
(declare-fun |length#triggerStateless| (T@Ref) Int)
(declare-fun |sum'| (T@PolymorphicMapType_40006 T@Ref) Int)
(declare-fun |sum#triggerStateless| (T@Ref) Int)
(declare-fun |head'| (T@PolymorphicMapType_40006 T@Ref) Int)
(declare-fun |head#triggerStateless| (T@Ref) Int)
(declare-fun |tail'| (T@PolymorphicMapType_40006 T@Ref) T@Ref)
(declare-fun dummyFunction_20751 (T@Ref) Bool)
(declare-fun |tail#triggerStateless| (T@Ref) T@Ref)
(declare-fun |last'| (T@PolymorphicMapType_40006 T@Ref) Int)
(declare-fun |last#triggerStateless| (T@Ref) Int)
(declare-fun |elems'| (T@PolymorphicMapType_40006 T@Ref) T@Seq_2867)
(declare-fun dummyFunction_69361 (T@Seq_2867) Bool)
(declare-fun |elems#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |ascending'| (T@PolymorphicMapType_40006 T@Ref) Bool)
(declare-fun |ascending#triggerStateless| (T@Ref) Bool)
(declare-fun |list#trigger_20923| (T@PolymorphicMapType_40006 T@Field_46529_46530) Bool)
(declare-fun |list#everUsed_20923| (T@Field_46529_46530) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_7600| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun sum_1 (T@PolymorphicMapType_40006 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun null () T@Ref)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun length_1 (T@PolymorphicMapType_40006 T@Ref) Int)
(declare-fun head_2 (T@PolymorphicMapType_40006 T@Ref) Int)
(declare-fun tail_2 (T@PolymorphicMapType_40006 T@Ref) T@Ref)
(declare-fun last_1 (T@PolymorphicMapType_40006 T@Ref) Int)
(declare-fun elems (T@PolymorphicMapType_40006 T@Ref) T@Seq_2867)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_40006 T@PolymorphicMapType_40006 T@PolymorphicMapType_40027) Bool)
(declare-fun PredicateMaskField_20923 (T@Field_46529_46530) T@Field_49490_49495)
(declare-fun HasDirectPerm_20923_20924 (T@PolymorphicMapType_40027 T@Ref T@Field_46529_46530) Bool)
(declare-fun IsPredicateField_20632_141175 (T@Field_20632_20924) Bool)
(declare-fun PredicateMaskField_20632 (T@Field_20632_20924) T@Field_20632_49495)
(declare-fun HasDirectPerm_20632_20924 (T@PolymorphicMapType_40027 T@Ref T@Field_20632_20924) Bool)
(declare-fun IsWandField_20923_144845 (T@Field_46529_46530) Bool)
(declare-fun WandMaskField_20923 (T@Field_46529_46530) T@Field_49490_49495)
(declare-fun IsWandField_20632_144488 (T@Field_20632_20924) Bool)
(declare-fun WandMaskField_20632 (T@Field_20632_20924) T@Field_20632_49495)
(declare-fun |Seq#Singleton_3004| (Int) T@Seq_2867)
(declare-fun |list#sm| (T@Ref) T@Field_49490_49495)
(declare-fun |Seq#Append_3004| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun |length#trigger| (T@FrameType T@Ref) Bool)
(declare-fun ascending (T@PolymorphicMapType_40006 T@Ref) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_40006)
(declare-fun ZeroMask () T@PolymorphicMapType_40027)
(declare-fun InsidePredicate_40066_40066 (T@Field_20632_20924 T@FrameType T@Field_20632_20924 T@FrameType) Bool)
(declare-fun InsidePredicate_20923_20923 (T@Field_46529_46530 T@FrameType T@Field_46529_46530 T@FrameType) Bool)
(declare-fun IsPredicateField_20632_20633 (T@Field_40079_40080) Bool)
(declare-fun IsWandField_20632_20633 (T@Field_40079_40080) Bool)
(declare-fun IsPredicateField_20635_3004 (T@Field_46134_3004) Bool)
(declare-fun IsWandField_20635_3004 (T@Field_46134_3004) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_20632_151748 (T@Field_20632_49495) Bool)
(declare-fun IsWandField_20632_151764 (T@Field_20632_49495) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_20632_53 (T@Field_40066_53) Bool)
(declare-fun IsWandField_20632_53 (T@Field_40066_53) Bool)
(declare-fun IsPredicateField_20923_150945 (T@Field_49490_49495) Bool)
(declare-fun IsWandField_20923_150961 (T@Field_49490_49495) Bool)
(declare-fun IsPredicateField_20923_53 (T@Field_20923_53) Bool)
(declare-fun IsWandField_20923_53 (T@Field_20923_53) Bool)
(declare-fun IsPredicateField_20923_3004 (T@Field_20923_3004) Bool)
(declare-fun IsWandField_20923_3004 (T@Field_20923_3004) Bool)
(declare-fun IsPredicateField_20923_20633 (T@Field_20923_20633) Bool)
(declare-fun IsWandField_20923_20633 (T@Field_20923_20633) Bool)
(declare-fun HasDirectPerm_20923_140930 (T@PolymorphicMapType_40027 T@Ref T@Field_49490_49495) Bool)
(declare-fun HasDirectPerm_20923_53 (T@PolymorphicMapType_40027 T@Ref T@Field_20923_53) Bool)
(declare-fun HasDirectPerm_20923_3004 (T@PolymorphicMapType_40027 T@Ref T@Field_20923_3004) Bool)
(declare-fun HasDirectPerm_20923_20633 (T@PolymorphicMapType_40027 T@Ref T@Field_20923_20633) Bool)
(declare-fun HasDirectPerm_20632_139789 (T@PolymorphicMapType_40027 T@Ref T@Field_20632_49495) Bool)
(declare-fun HasDirectPerm_20632_53 (T@PolymorphicMapType_40027 T@Ref T@Field_40066_53) Bool)
(declare-fun HasDirectPerm_20635_3004 (T@PolymorphicMapType_40027 T@Ref T@Field_46134_3004) Bool)
(declare-fun HasDirectPerm_20632_20633 (T@PolymorphicMapType_40027 T@Ref T@Field_40079_40080) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun get (T@PolymorphicMapType_40006 T@Ref Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_40027 T@PolymorphicMapType_40027 T@PolymorphicMapType_40027) Bool)
(declare-fun |contains#frame| (T@FrameType T@Ref Int) Bool)
(declare-fun |Seq#Equal_7600| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |ascending#frame| (T@FrameType T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun |get#frame| (T@FrameType T@Ref Int) Int)
(declare-fun |length#frame| (T@FrameType T@Ref) Int)
(declare-fun |sum#frame| (T@FrameType T@Ref) Int)
(declare-fun |head#frame| (T@FrameType T@Ref) Int)
(declare-fun |tail#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |last#frame| (T@FrameType T@Ref) Int)
(declare-fun |elems#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun getPredWandId_20923_20924 (T@Field_46529_46530) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_40066_20923 (T@Field_20632_20924 T@FrameType T@Field_46529_46530 T@FrameType) Bool)
(declare-fun InsidePredicate_20923_40066 (T@Field_46529_46530 T@FrameType T@Field_20632_20924 T@FrameType) Bool)
(declare-fun contains (T@PolymorphicMapType_40006 T@Ref Int) Bool)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_7600| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_7600| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_7600| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.284:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_7600| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_7600| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_40006) (Heap1 T@PolymorphicMapType_40006) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_40006) (Mask T@PolymorphicMapType_40027) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_40006) (Heap1@@0 T@PolymorphicMapType_40006) (Heap2 T@PolymorphicMapType_40006) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_49490_49495) ) (!  (not (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_46529_46530) ) (!  (not (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20923_53) ) (!  (not (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20923_3004) ) (!  (not (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_20923_20633) ) (!  (not (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_20632_49495) ) (!  (not (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_20632_20924) ) (!  (not (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_40066_53) ) (!  (not (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_46134_3004) ) (!  (not (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_40079_40080) ) (!  (not (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_40006) (xs T@Ref) (x Int) ) (! (dummyFunction_6999 (|contains#triggerStateless| xs x))
 :qid |stdinbpl.1214:15|
 :skolemid |85|
 :pattern ( (|contains'| Heap@@0 xs x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_40006) (xs@@0 T@Ref) (index Int) ) (! (dummyFunction_3287 (|get#triggerStateless| xs@@0 index))
 :qid |stdinbpl.1489:15|
 :skolemid |95|
 :pattern ( (|get'| Heap@@1 xs@@0 index))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_7600| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.305:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_7600| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_7726|) 0))
(assert (forall ((xs@@1 T@Ref) ) (! (IsPredicateField_20923_20924 (list xs@@1))
 :qid |stdinbpl.1806:15|
 :skolemid |105|
 :pattern ( (list xs@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_40006) (xs@@2 T@Ref) ) (! (dummyFunction_3287 (|length#triggerStateless| xs@@2))
 :qid |stdinbpl.573:15|
 :skolemid |59|
 :pattern ( (|length'| Heap@@2 xs@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_40006) (xs@@3 T@Ref) ) (! (dummyFunction_3287 (|sum#triggerStateless| xs@@3))
 :qid |stdinbpl.720:15|
 :skolemid |65|
 :pattern ( (|sum'| Heap@@3 xs@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_40006) (xs@@4 T@Ref) ) (! (dummyFunction_3287 (|head#triggerStateless| xs@@4))
 :qid |stdinbpl.857:15|
 :skolemid |70|
 :pattern ( (|head'| Heap@@4 xs@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_40006) (xs@@5 T@Ref) ) (! (dummyFunction_20751 (|tail#triggerStateless| xs@@5))
 :qid |stdinbpl.967:15|
 :skolemid |75|
 :pattern ( (|tail'| Heap@@5 xs@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_40006) (xs@@6 T@Ref) ) (! (dummyFunction_3287 (|last#triggerStateless| xs@@6))
 :qid |stdinbpl.1077:15|
 :skolemid |80|
 :pattern ( (|last'| Heap@@6 xs@@6))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_40006) (xs@@7 T@Ref) ) (! (dummyFunction_69361 (|elems#triggerStateless| xs@@7))
 :qid |stdinbpl.1352:15|
 :skolemid |90|
 :pattern ( (|elems'| Heap@@7 xs@@7))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_40006) (xs@@8 T@Ref) ) (! (dummyFunction_6999 (|ascending#triggerStateless| xs@@8))
 :qid |stdinbpl.1650:15|
 :skolemid |100|
 :pattern ( (|ascending'| Heap@@8 xs@@8))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_40006) (xs@@9 T@Ref) ) (! (|list#everUsed_20923| (list xs@@9))
 :qid |stdinbpl.1825:15|
 :skolemid |109|
 :pattern ( (|list#trigger_20923| Heap@@9 (list xs@@9)))
)))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.260:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_7600| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_7600| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_7600| s@@2 n@@2)) 0)))
 :qid |stdinbpl.271:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_7600| s@@2 n@@2)))
 :pattern ( (|Seq#Take_7600| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.545:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_40006) (Mask@@0 T@PolymorphicMapType_40027) (xs@@10 T@Ref) ) (!  (=> (and (state Heap@@10 Mask@@0) (< AssumeFunctionsAbove 1)) (=> (not (= xs@@10 null)) (= (sum_1 Heap@@10 xs@@10) (+ (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@10) xs@@10 val) (ite (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@10) xs@@10 next) null) 0 (|sum'| Heap@@10 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@10) xs@@10 next)))))))
 :qid |stdinbpl.726:15|
 :skolemid |66|
 :pattern ( (state Heap@@10 Mask@@0) (sum_1 Heap@@10 xs@@10))
 :pattern ( (state Heap@@10 Mask@@0) (|sum#triggerStateless| xs@@10) (|list#trigger_20923| Heap@@10 (list xs@@10)))
)))
(assert (forall ((s@@3 T@Seq_2867) (x@@0 Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x@@0) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x@@0)) (< (|Seq#Skolem_2867| s@@3 x@@0) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x@@0)) x@@0)))
 :qid |stdinbpl.403:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_40006) (xs@@11 T@Ref) ) (!  (and (= (length_1 Heap@@11 xs@@11) (|length'| Heap@@11 xs@@11)) (dummyFunction_3287 (|length#triggerStateless| xs@@11)))
 :qid |stdinbpl.569:15|
 :skolemid |58|
 :pattern ( (length_1 Heap@@11 xs@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_40006) (xs@@12 T@Ref) ) (!  (and (= (sum_1 Heap@@12 xs@@12) (|sum'| Heap@@12 xs@@12)) (dummyFunction_3287 (|sum#triggerStateless| xs@@12)))
 :qid |stdinbpl.716:15|
 :skolemid |64|
 :pattern ( (sum_1 Heap@@12 xs@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_40006) (xs@@13 T@Ref) ) (!  (and (= (head_2 Heap@@13 xs@@13) (|head'| Heap@@13 xs@@13)) (dummyFunction_3287 (|head#triggerStateless| xs@@13)))
 :qid |stdinbpl.853:15|
 :skolemid |69|
 :pattern ( (head_2 Heap@@13 xs@@13))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_40006) (xs@@14 T@Ref) ) (!  (and (= (tail_2 Heap@@14 xs@@14) (|tail'| Heap@@14 xs@@14)) (dummyFunction_20751 (|tail#triggerStateless| xs@@14)))
 :qid |stdinbpl.963:15|
 :skolemid |74|
 :pattern ( (tail_2 Heap@@14 xs@@14))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_40006) (xs@@15 T@Ref) ) (!  (and (= (last_1 Heap@@15 xs@@15) (|last'| Heap@@15 xs@@15)) (dummyFunction_3287 (|last#triggerStateless| xs@@15)))
 :qid |stdinbpl.1073:15|
 :skolemid |79|
 :pattern ( (last_1 Heap@@15 xs@@15))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_40006) (xs@@16 T@Ref) ) (!  (and (= (elems Heap@@16 xs@@16) (|elems'| Heap@@16 xs@@16)) (dummyFunction_69361 (|elems#triggerStateless| xs@@16)))
 :qid |stdinbpl.1348:15|
 :skolemid |89|
 :pattern ( (elems Heap@@16 xs@@16))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_7600| s@@4 n@@3) s@@4))
 :qid |stdinbpl.387:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_7600| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.240:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.238:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_40006) (ExhaleHeap T@PolymorphicMapType_40006) (Mask@@1 T@PolymorphicMapType_40027) (pm_f_29 T@Field_46529_46530) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_20923_20924 Mask@@1 null pm_f_29) (IsPredicateField_20923_20924 pm_f_29)) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@17) null (PredicateMaskField_20923 pm_f_29)) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap) null (PredicateMaskField_20923 pm_f_29)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap Mask@@1) (IsPredicateField_20923_20924 pm_f_29) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap) null (PredicateMaskField_20923 pm_f_29)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_40006) (ExhaleHeap@@0 T@PolymorphicMapType_40006) (Mask@@2 T@PolymorphicMapType_40027) (pm_f_29@@0 T@Field_20632_20924) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_20632_20924 Mask@@2 null pm_f_29@@0) (IsPredicateField_20632_141175 pm_f_29@@0)) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@18) null (PredicateMaskField_20632 pm_f_29@@0)) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@0) null (PredicateMaskField_20632 pm_f_29@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@0 Mask@@2) (IsPredicateField_20632_141175 pm_f_29@@0) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@0) null (PredicateMaskField_20632 pm_f_29@@0)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_40006) (ExhaleHeap@@1 T@PolymorphicMapType_40006) (Mask@@3 T@PolymorphicMapType_40027) (pm_f_29@@1 T@Field_46529_46530) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_20923_20924 Mask@@3 null pm_f_29@@1) (IsWandField_20923_144845 pm_f_29@@1)) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@19) null (WandMaskField_20923 pm_f_29@@1)) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@1) null (WandMaskField_20923 pm_f_29@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@1 Mask@@3) (IsWandField_20923_144845 pm_f_29@@1) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@1) null (WandMaskField_20923 pm_f_29@@1)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_40006) (ExhaleHeap@@2 T@PolymorphicMapType_40006) (Mask@@4 T@PolymorphicMapType_40027) (pm_f_29@@2 T@Field_20632_20924) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_20632_20924 Mask@@4 null pm_f_29@@2) (IsWandField_20632_144488 pm_f_29@@2)) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@20) null (WandMaskField_20632 pm_f_29@@2)) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@2) null (WandMaskField_20632 pm_f_29@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@2 Mask@@4) (IsWandField_20632_144488 pm_f_29@@2) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@2) null (WandMaskField_20632 pm_f_29@@2)))
)))
(assert (forall ((x@@1 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3004| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.528:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3004| x@@1) y))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_40006) (Mask@@5 T@PolymorphicMapType_40027) (xs@@17 T@Ref) ) (!  (=> (and (state Heap@@21 Mask@@5) (< AssumeFunctionsAbove 8)) (=> (not (= xs@@17 null)) (= (length_1 Heap@@21 xs@@17) (+ 1 (ite (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@21) xs@@17 next) null) 0 (|length'| Heap@@21 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@21) xs@@17 next)))))))
 :qid |stdinbpl.579:15|
 :skolemid |60|
 :pattern ( (state Heap@@21 Mask@@5) (length_1 Heap@@21 xs@@17))
 :pattern ( (state Heap@@21 Mask@@5) (|length#triggerStateless| xs@@17) (|list#trigger_20923| Heap@@21 (list xs@@17)))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_7600| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.279:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_7600| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_7600| s@@5 n@@4))
)))
(assert (forall ((xs@@18 T@Ref) (xs2 T@Ref) ) (!  (=> (= (list xs@@18) (list xs2)) (= xs@@18 xs2))
 :qid |stdinbpl.1816:15|
 :skolemid |107|
 :pattern ( (list xs@@18) (list xs2))
)))
(assert (forall ((xs@@19 T@Ref) (xs2@@0 T@Ref) ) (!  (=> (= (|list#sm| xs@@19) (|list#sm| xs2@@0)) (= xs@@19 xs2@@0))
 :qid |stdinbpl.1820:15|
 :skolemid |108|
 :pattern ( (|list#sm| xs@@19) (|list#sm| xs2@@0))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_3004| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_7600| (|Seq#Append_3004| s@@6 t) n@@5) (|Seq#Append_3004| s@@6 (|Seq#Take_7600| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.364:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_7600| (|Seq#Append_3004| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_40006) (Mask@@6 T@PolymorphicMapType_40027) (xs@@20 T@Ref) ) (!  (=> (and (state Heap@@22 Mask@@6) (or (< AssumeFunctionsAbove 8) (|length#trigger| (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@22) null (list xs@@20)) xs@@20))) (=> (not (= xs@@20 null)) (> (|length'| Heap@@22 xs@@20) 0)))
 :qid |stdinbpl.592:15|
 :skolemid |62|
 :pattern ( (state Heap@@22 Mask@@6) (|length'| Heap@@22 xs@@20))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_40006) (ExhaleHeap@@3 T@PolymorphicMapType_40006) (Mask@@7 T@PolymorphicMapType_40027) (pm_f_29@@3 T@Field_46529_46530) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@3 Mask@@7) (=> (and (HasDirectPerm_20923_20924 Mask@@7 null pm_f_29@@3) (IsPredicateField_20923_20924 pm_f_29@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_29 T@Ref) (f_69 T@Field_40079_40080) ) (!  (=> (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_29@@3))) o2_29 f_69) (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@23) o2_29 f_69) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29 f_69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29 f_69))
)) (forall ((o2_29@@0 T@Ref) (f_69@@0 T@Field_46134_3004) ) (!  (=> (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_29@@3))) o2_29@@0 f_69@@0) (= (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@23) o2_29@@0 f_69@@0) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29@@0 f_69@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29@@0 f_69@@0))
))) (forall ((o2_29@@1 T@Ref) (f_69@@1 T@Field_40066_53) ) (!  (=> (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_29@@3))) o2_29@@1 f_69@@1) (= (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@23) o2_29@@1 f_69@@1) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29@@1 f_69@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29@@1 f_69@@1))
))) (forall ((o2_29@@2 T@Ref) (f_69@@2 T@Field_20632_20924) ) (!  (=> (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_29@@3))) o2_29@@2 f_69@@2) (= (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@23) o2_29@@2 f_69@@2) (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29@@2 f_69@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29@@2 f_69@@2))
))) (forall ((o2_29@@3 T@Ref) (f_69@@3 T@Field_20632_49495) ) (!  (=> (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_29@@3))) o2_29@@3 f_69@@3) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@23) o2_29@@3 f_69@@3) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29@@3 f_69@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29@@3 f_69@@3))
))) (forall ((o2_29@@4 T@Ref) (f_69@@4 T@Field_20923_20633) ) (!  (=> (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_29@@3))) o2_29@@4 f_69@@4) (= (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@23) o2_29@@4 f_69@@4) (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29@@4 f_69@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29@@4 f_69@@4))
))) (forall ((o2_29@@5 T@Ref) (f_69@@5 T@Field_20923_3004) ) (!  (=> (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_29@@3))) o2_29@@5 f_69@@5) (= (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@23) o2_29@@5 f_69@@5) (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29@@5 f_69@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29@@5 f_69@@5))
))) (forall ((o2_29@@6 T@Ref) (f_69@@6 T@Field_20923_53) ) (!  (=> (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_29@@3))) o2_29@@6 f_69@@6) (= (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@23) o2_29@@6 f_69@@6) (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29@@6 f_69@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29@@6 f_69@@6))
))) (forall ((o2_29@@7 T@Ref) (f_69@@7 T@Field_46529_46530) ) (!  (=> (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_29@@3))) o2_29@@7 f_69@@7) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@23) o2_29@@7 f_69@@7) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29@@7 f_69@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29@@7 f_69@@7))
))) (forall ((o2_29@@8 T@Ref) (f_69@@8 T@Field_49490_49495) ) (!  (=> (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_29@@3))) o2_29@@8 f_69@@8) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) o2_29@@8 f_69@@8) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29@@8 f_69@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@3) o2_29@@8 f_69@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@3 Mask@@7) (IsPredicateField_20923_20924 pm_f_29@@3))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_40006) (ExhaleHeap@@4 T@PolymorphicMapType_40006) (Mask@@8 T@PolymorphicMapType_40027) (pm_f_29@@4 T@Field_20632_20924) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@4 Mask@@8) (=> (and (HasDirectPerm_20632_20924 Mask@@8 null pm_f_29@@4) (IsPredicateField_20632_141175 pm_f_29@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_29@@9 T@Ref) (f_69@@9 T@Field_40079_40080) ) (!  (=> (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_29@@4))) o2_29@@9 f_69@@9) (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@24) o2_29@@9 f_69@@9) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@9 f_69@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@9 f_69@@9))
)) (forall ((o2_29@@10 T@Ref) (f_69@@10 T@Field_46134_3004) ) (!  (=> (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_29@@4))) o2_29@@10 f_69@@10) (= (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@24) o2_29@@10 f_69@@10) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@10 f_69@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@10 f_69@@10))
))) (forall ((o2_29@@11 T@Ref) (f_69@@11 T@Field_40066_53) ) (!  (=> (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_29@@4))) o2_29@@11 f_69@@11) (= (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@24) o2_29@@11 f_69@@11) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@11 f_69@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@11 f_69@@11))
))) (forall ((o2_29@@12 T@Ref) (f_69@@12 T@Field_20632_20924) ) (!  (=> (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_29@@4))) o2_29@@12 f_69@@12) (= (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@24) o2_29@@12 f_69@@12) (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@12 f_69@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@12 f_69@@12))
))) (forall ((o2_29@@13 T@Ref) (f_69@@13 T@Field_20632_49495) ) (!  (=> (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_29@@4))) o2_29@@13 f_69@@13) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) o2_29@@13 f_69@@13) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@13 f_69@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@13 f_69@@13))
))) (forall ((o2_29@@14 T@Ref) (f_69@@14 T@Field_20923_20633) ) (!  (=> (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_29@@4))) o2_29@@14 f_69@@14) (= (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@24) o2_29@@14 f_69@@14) (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@14 f_69@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@14 f_69@@14))
))) (forall ((o2_29@@15 T@Ref) (f_69@@15 T@Field_20923_3004) ) (!  (=> (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_29@@4))) o2_29@@15 f_69@@15) (= (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@24) o2_29@@15 f_69@@15) (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@15 f_69@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@15 f_69@@15))
))) (forall ((o2_29@@16 T@Ref) (f_69@@16 T@Field_20923_53) ) (!  (=> (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_29@@4))) o2_29@@16 f_69@@16) (= (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@24) o2_29@@16 f_69@@16) (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@16 f_69@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@16 f_69@@16))
))) (forall ((o2_29@@17 T@Ref) (f_69@@17 T@Field_46529_46530) ) (!  (=> (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_29@@4))) o2_29@@17 f_69@@17) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@24) o2_29@@17 f_69@@17) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@17 f_69@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@17 f_69@@17))
))) (forall ((o2_29@@18 T@Ref) (f_69@@18 T@Field_49490_49495) ) (!  (=> (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_29@@4))) o2_29@@18 f_69@@18) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@24) o2_29@@18 f_69@@18) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@18 f_69@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@4) o2_29@@18 f_69@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@4 Mask@@8) (IsPredicateField_20632_141175 pm_f_29@@4))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_40006) (ExhaleHeap@@5 T@PolymorphicMapType_40006) (Mask@@9 T@PolymorphicMapType_40027) (pm_f_29@@5 T@Field_46529_46530) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@5 Mask@@9) (=> (and (HasDirectPerm_20923_20924 Mask@@9 null pm_f_29@@5) (IsWandField_20923_144845 pm_f_29@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_29@@19 T@Ref) (f_69@@19 T@Field_40079_40080) ) (!  (=> (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_29@@5))) o2_29@@19 f_69@@19) (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@25) o2_29@@19 f_69@@19) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@19 f_69@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@19 f_69@@19))
)) (forall ((o2_29@@20 T@Ref) (f_69@@20 T@Field_46134_3004) ) (!  (=> (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_29@@5))) o2_29@@20 f_69@@20) (= (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@25) o2_29@@20 f_69@@20) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@20 f_69@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@20 f_69@@20))
))) (forall ((o2_29@@21 T@Ref) (f_69@@21 T@Field_40066_53) ) (!  (=> (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_29@@5))) o2_29@@21 f_69@@21) (= (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@25) o2_29@@21 f_69@@21) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@21 f_69@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@21 f_69@@21))
))) (forall ((o2_29@@22 T@Ref) (f_69@@22 T@Field_20632_20924) ) (!  (=> (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_29@@5))) o2_29@@22 f_69@@22) (= (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@25) o2_29@@22 f_69@@22) (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@22 f_69@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@22 f_69@@22))
))) (forall ((o2_29@@23 T@Ref) (f_69@@23 T@Field_20632_49495) ) (!  (=> (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_29@@5))) o2_29@@23 f_69@@23) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@25) o2_29@@23 f_69@@23) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@23 f_69@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@23 f_69@@23))
))) (forall ((o2_29@@24 T@Ref) (f_69@@24 T@Field_20923_20633) ) (!  (=> (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_29@@5))) o2_29@@24 f_69@@24) (= (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@25) o2_29@@24 f_69@@24) (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@24 f_69@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@24 f_69@@24))
))) (forall ((o2_29@@25 T@Ref) (f_69@@25 T@Field_20923_3004) ) (!  (=> (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_29@@5))) o2_29@@25 f_69@@25) (= (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@25) o2_29@@25 f_69@@25) (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@25 f_69@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@25 f_69@@25))
))) (forall ((o2_29@@26 T@Ref) (f_69@@26 T@Field_20923_53) ) (!  (=> (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_29@@5))) o2_29@@26 f_69@@26) (= (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@25) o2_29@@26 f_69@@26) (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@26 f_69@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@26 f_69@@26))
))) (forall ((o2_29@@27 T@Ref) (f_69@@27 T@Field_46529_46530) ) (!  (=> (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_29@@5))) o2_29@@27 f_69@@27) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@25) o2_29@@27 f_69@@27) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@27 f_69@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@27 f_69@@27))
))) (forall ((o2_29@@28 T@Ref) (f_69@@28 T@Field_49490_49495) ) (!  (=> (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_29@@5))) o2_29@@28 f_69@@28) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) o2_29@@28 f_69@@28) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@28 f_69@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@5) o2_29@@28 f_69@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@5 Mask@@9) (IsWandField_20923_144845 pm_f_29@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_40006) (ExhaleHeap@@6 T@PolymorphicMapType_40006) (Mask@@10 T@PolymorphicMapType_40027) (pm_f_29@@6 T@Field_20632_20924) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@6 Mask@@10) (=> (and (HasDirectPerm_20632_20924 Mask@@10 null pm_f_29@@6) (IsWandField_20632_144488 pm_f_29@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_29@@29 T@Ref) (f_69@@29 T@Field_40079_40080) ) (!  (=> (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_29@@6))) o2_29@@29 f_69@@29) (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@26) o2_29@@29 f_69@@29) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@29 f_69@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@29 f_69@@29))
)) (forall ((o2_29@@30 T@Ref) (f_69@@30 T@Field_46134_3004) ) (!  (=> (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_29@@6))) o2_29@@30 f_69@@30) (= (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@26) o2_29@@30 f_69@@30) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@30 f_69@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@30 f_69@@30))
))) (forall ((o2_29@@31 T@Ref) (f_69@@31 T@Field_40066_53) ) (!  (=> (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_29@@6))) o2_29@@31 f_69@@31) (= (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@26) o2_29@@31 f_69@@31) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@31 f_69@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@31 f_69@@31))
))) (forall ((o2_29@@32 T@Ref) (f_69@@32 T@Field_20632_20924) ) (!  (=> (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_29@@6))) o2_29@@32 f_69@@32) (= (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@26) o2_29@@32 f_69@@32) (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@32 f_69@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@32 f_69@@32))
))) (forall ((o2_29@@33 T@Ref) (f_69@@33 T@Field_20632_49495) ) (!  (=> (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_29@@6))) o2_29@@33 f_69@@33) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) o2_29@@33 f_69@@33) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@33 f_69@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@33 f_69@@33))
))) (forall ((o2_29@@34 T@Ref) (f_69@@34 T@Field_20923_20633) ) (!  (=> (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_29@@6))) o2_29@@34 f_69@@34) (= (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@26) o2_29@@34 f_69@@34) (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@34 f_69@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@34 f_69@@34))
))) (forall ((o2_29@@35 T@Ref) (f_69@@35 T@Field_20923_3004) ) (!  (=> (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_29@@6))) o2_29@@35 f_69@@35) (= (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@26) o2_29@@35 f_69@@35) (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@35 f_69@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@35 f_69@@35))
))) (forall ((o2_29@@36 T@Ref) (f_69@@36 T@Field_20923_53) ) (!  (=> (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_29@@6))) o2_29@@36 f_69@@36) (= (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@26) o2_29@@36 f_69@@36) (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@36 f_69@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@36 f_69@@36))
))) (forall ((o2_29@@37 T@Ref) (f_69@@37 T@Field_46529_46530) ) (!  (=> (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_29@@6))) o2_29@@37 f_69@@37) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@26) o2_29@@37 f_69@@37) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@37 f_69@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@37 f_69@@37))
))) (forall ((o2_29@@38 T@Ref) (f_69@@38 T@Field_49490_49495) ) (!  (=> (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_29@@6))) o2_29@@38 f_69@@38) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@26) o2_29@@38 f_69@@38) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@38 f_69@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@6) o2_29@@38 f_69@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@6 Mask@@10) (IsWandField_20632_144488 pm_f_29@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_40006) (Mask@@11 T@PolymorphicMapType_40027) (xs@@21 T@Ref) ) (!  (=> (and (state Heap@@27 Mask@@11) (< AssumeFunctionsAbove 2)) (=> (not (= xs@@21 null)) (= (ascending Heap@@27 xs@@21)  (or (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@27) xs@@21 next) null) (and (<= (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@27) xs@@21 val) (head_2 Heap@@27 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@27) xs@@21 next))) (|ascending'| Heap@@27 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@27) xs@@21 next)))))))
 :qid |stdinbpl.1656:15|
 :skolemid |101|
 :pattern ( (state Heap@@27 Mask@@11) (ascending Heap@@27 xs@@21))
 :pattern ( (state Heap@@27 Mask@@11) (|ascending#triggerStateless| xs@@21) (|list#trigger_20923| Heap@@27 (list xs@@21)) (|list#trigger_20923| Heap@@27 (list xs@@21)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@28 T@PolymorphicMapType_40006) (ExhaleHeap@@7 T@PolymorphicMapType_40006) (Mask@@12 T@PolymorphicMapType_40027) (o_57 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@7 Mask@@12) (=> (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@28) o_57 $allocated) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@7) o_57 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@7 Mask@@12) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@7) o_57 $allocated))
)))
(assert (forall ((p T@Field_20632_20924) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_40066_40066 p v_1 p w))
 :qid |stdinbpl.182:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_40066_40066 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_46529_46530) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_20923_20923 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.182:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20923_20923 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_7726|)) (not (= s1 |Seq#Empty_7726|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_3004| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_3004| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.251:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3004| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_20632_20633 next)))
(assert  (not (IsWandField_20632_20633 next)))
(assert  (not (IsPredicateField_20635_3004 val)))
(assert  (not (IsWandField_20635_3004 val)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_40006) (ExhaleHeap@@8 T@PolymorphicMapType_40006) (Mask@@13 T@PolymorphicMapType_40027) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@8 Mask@@13) (succHeap Heap@@29 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@8 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_40027) (o_2@@9 T@Ref) (f_4@@9 T@Field_20632_49495) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@@14) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_20632_151748 f_4@@9))) (not (IsWandField_20632_151764 f_4@@9))) (<= (select (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@@14) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@@14) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_40027) (o_2@@10 T@Ref) (f_4@@10 T@Field_40066_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@@15) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_20632_53 f_4@@10))) (not (IsWandField_20632_53 f_4@@10))) (<= (select (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@@15) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@@15) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_40027) (o_2@@11 T@Ref) (f_4@@11 T@Field_46134_3004) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@@16) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_20635_3004 f_4@@11))) (not (IsWandField_20635_3004 f_4@@11))) (<= (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@@16) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@@16) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_40027) (o_2@@12 T@Ref) (f_4@@12 T@Field_40079_40080) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@@17) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_20632_20633 f_4@@12))) (not (IsWandField_20632_20633 f_4@@12))) (<= (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@@17) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@@17) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_40027) (o_2@@13 T@Ref) (f_4@@13 T@Field_20632_20924) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@@18) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_20632_141175 f_4@@13))) (not (IsWandField_20632_144488 f_4@@13))) (<= (select (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@@18) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@@18) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_40027) (o_2@@14 T@Ref) (f_4@@14 T@Field_49490_49495) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@@19) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_20923_150945 f_4@@14))) (not (IsWandField_20923_150961 f_4@@14))) (<= (select (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@@19) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@@19) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_40027) (o_2@@15 T@Ref) (f_4@@15 T@Field_20923_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@@20) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_20923_53 f_4@@15))) (not (IsWandField_20923_53 f_4@@15))) (<= (select (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@@20) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@@20) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_40027) (o_2@@16 T@Ref) (f_4@@16 T@Field_20923_3004) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@@21) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_20923_3004 f_4@@16))) (not (IsWandField_20923_3004 f_4@@16))) (<= (select (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@@21) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@@21) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_40027) (o_2@@17 T@Ref) (f_4@@17 T@Field_20923_20633) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@@22) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_20923_20633 f_4@@17))) (not (IsWandField_20923_20633 f_4@@17))) (<= (select (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@@22) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@@22) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_40027) (o_2@@18 T@Ref) (f_4@@18 T@Field_46529_46530) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@@23) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_20923_20924 f_4@@18))) (not (IsWandField_20923_144845 f_4@@18))) (<= (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@@23) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@@23) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_40027) (o_2@@19 T@Ref) (f_4@@19 T@Field_49490_49495) ) (! (= (HasDirectPerm_20923_140930 Mask@@24 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@@24) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20923_140930 Mask@@24 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_40027) (o_2@@20 T@Ref) (f_4@@20 T@Field_20923_53) ) (! (= (HasDirectPerm_20923_53 Mask@@25 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@@25) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20923_53 Mask@@25 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_40027) (o_2@@21 T@Ref) (f_4@@21 T@Field_46529_46530) ) (! (= (HasDirectPerm_20923_20924 Mask@@26 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@@26) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20923_20924 Mask@@26 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_40027) (o_2@@22 T@Ref) (f_4@@22 T@Field_20923_3004) ) (! (= (HasDirectPerm_20923_3004 Mask@@27 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@@27) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20923_3004 Mask@@27 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_40027) (o_2@@23 T@Ref) (f_4@@23 T@Field_20923_20633) ) (! (= (HasDirectPerm_20923_20633 Mask@@28 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@@28) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20923_20633 Mask@@28 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_40027) (o_2@@24 T@Ref) (f_4@@24 T@Field_20632_49495) ) (! (= (HasDirectPerm_20632_139789 Mask@@29 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@@29) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20632_139789 Mask@@29 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_40027) (o_2@@25 T@Ref) (f_4@@25 T@Field_40066_53) ) (! (= (HasDirectPerm_20632_53 Mask@@30 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@@30) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20632_53 Mask@@30 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_40027) (o_2@@26 T@Ref) (f_4@@26 T@Field_20632_20924) ) (! (= (HasDirectPerm_20632_20924 Mask@@31 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@@31) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20632_20924 Mask@@31 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_40027) (o_2@@27 T@Ref) (f_4@@27 T@Field_46134_3004) ) (! (= (HasDirectPerm_20635_3004 Mask@@32 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@@32) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20635_3004 Mask@@32 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_40027) (o_2@@28 T@Ref) (f_4@@28 T@Field_40079_40080) ) (! (= (HasDirectPerm_20632_20633 Mask@@33 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@@33) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20632_20633 Mask@@33 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.170:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.543:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_40006) (ExhaleHeap@@9 T@PolymorphicMapType_40006) (Mask@@34 T@PolymorphicMapType_40027) (o_57@@0 T@Ref) (f_69@@39 T@Field_49490_49495) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@9 Mask@@34) (=> (HasDirectPerm_20923_140930 Mask@@34 o_57@@0 f_69@@39) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@30) o_57@@0 f_69@@39) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@9) o_57@@0 f_69@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@9 Mask@@34) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@9) o_57@@0 f_69@@39))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_40006) (ExhaleHeap@@10 T@PolymorphicMapType_40006) (Mask@@35 T@PolymorphicMapType_40027) (o_57@@1 T@Ref) (f_69@@40 T@Field_20923_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@10 Mask@@35) (=> (HasDirectPerm_20923_53 Mask@@35 o_57@@1 f_69@@40) (= (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@31) o_57@@1 f_69@@40) (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@10) o_57@@1 f_69@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@10 Mask@@35) (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@10) o_57@@1 f_69@@40))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_40006) (ExhaleHeap@@11 T@PolymorphicMapType_40006) (Mask@@36 T@PolymorphicMapType_40027) (o_57@@2 T@Ref) (f_69@@41 T@Field_46529_46530) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@11 Mask@@36) (=> (HasDirectPerm_20923_20924 Mask@@36 o_57@@2 f_69@@41) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@32) o_57@@2 f_69@@41) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@11) o_57@@2 f_69@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@11 Mask@@36) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@11) o_57@@2 f_69@@41))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_40006) (ExhaleHeap@@12 T@PolymorphicMapType_40006) (Mask@@37 T@PolymorphicMapType_40027) (o_57@@3 T@Ref) (f_69@@42 T@Field_20923_3004) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@12 Mask@@37) (=> (HasDirectPerm_20923_3004 Mask@@37 o_57@@3 f_69@@42) (= (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@33) o_57@@3 f_69@@42) (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@12) o_57@@3 f_69@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@12 Mask@@37) (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@12) o_57@@3 f_69@@42))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_40006) (ExhaleHeap@@13 T@PolymorphicMapType_40006) (Mask@@38 T@PolymorphicMapType_40027) (o_57@@4 T@Ref) (f_69@@43 T@Field_20923_20633) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@13 Mask@@38) (=> (HasDirectPerm_20923_20633 Mask@@38 o_57@@4 f_69@@43) (= (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@34) o_57@@4 f_69@@43) (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@13) o_57@@4 f_69@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@13 Mask@@38) (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@13) o_57@@4 f_69@@43))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_40006) (ExhaleHeap@@14 T@PolymorphicMapType_40006) (Mask@@39 T@PolymorphicMapType_40027) (o_57@@5 T@Ref) (f_69@@44 T@Field_20632_49495) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@14 Mask@@39) (=> (HasDirectPerm_20632_139789 Mask@@39 o_57@@5 f_69@@44) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@35) o_57@@5 f_69@@44) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@14) o_57@@5 f_69@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@14 Mask@@39) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@14) o_57@@5 f_69@@44))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_40006) (ExhaleHeap@@15 T@PolymorphicMapType_40006) (Mask@@40 T@PolymorphicMapType_40027) (o_57@@6 T@Ref) (f_69@@45 T@Field_40066_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@15 Mask@@40) (=> (HasDirectPerm_20632_53 Mask@@40 o_57@@6 f_69@@45) (= (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@36) o_57@@6 f_69@@45) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@15) o_57@@6 f_69@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@15 Mask@@40) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@15) o_57@@6 f_69@@45))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_40006) (ExhaleHeap@@16 T@PolymorphicMapType_40006) (Mask@@41 T@PolymorphicMapType_40027) (o_57@@7 T@Ref) (f_69@@46 T@Field_20632_20924) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@16 Mask@@41) (=> (HasDirectPerm_20632_20924 Mask@@41 o_57@@7 f_69@@46) (= (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@37) o_57@@7 f_69@@46) (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@16) o_57@@7 f_69@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@16 Mask@@41) (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@16) o_57@@7 f_69@@46))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_40006) (ExhaleHeap@@17 T@PolymorphicMapType_40006) (Mask@@42 T@PolymorphicMapType_40027) (o_57@@8 T@Ref) (f_69@@47 T@Field_46134_3004) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@17 Mask@@42) (=> (HasDirectPerm_20635_3004 Mask@@42 o_57@@8 f_69@@47) (= (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@38) o_57@@8 f_69@@47) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@17) o_57@@8 f_69@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@17 Mask@@42) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@17) o_57@@8 f_69@@47))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_40006) (ExhaleHeap@@18 T@PolymorphicMapType_40006) (Mask@@43 T@PolymorphicMapType_40027) (o_57@@9 T@Ref) (f_69@@48 T@Field_40079_40080) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@18 Mask@@43) (=> (HasDirectPerm_20632_20633 Mask@@43 o_57@@9 f_69@@48) (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@39) o_57@@9 f_69@@48) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@18) o_57@@9 f_69@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@18 Mask@@43) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@18) o_57@@9 f_69@@48))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_7726|)) (not (= s1@@0 |Seq#Empty_7726|))) (= (|Seq#Length_2867| (|Seq#Append_3004| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.220:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_3004| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_20632_49495) ) (! (= (select (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_40066_53) ) (! (= (select (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_46134_3004) ) (! (= (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_40079_40080) ) (! (= (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_20632_20924) ) (! (= (select (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_49490_49495) ) (! (= (select (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_20923_53) ) (! (= (select (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_20923_3004) ) (! (= (select (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_20923_20633) ) (! (= (select (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_46529_46530) ) (! (= (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_7600| (|Seq#Append_3004| s@@7 t@@0) n@@7) (|Seq#Drop_7600| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.377:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_7600| (|Seq#Append_3004| s@@7 t@@0) n@@7))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_40006) (xs@@22 T@Ref) (index@@0 Int) ) (!  (and (= (get Heap@@40 xs@@22 index@@0) (|get'| Heap@@40 xs@@22 index@@0)) (dummyFunction_3287 (|get#triggerStateless| xs@@22 index@@0)))
 :qid |stdinbpl.1485:15|
 :skolemid |94|
 :pattern ( (get Heap@@40 xs@@22 index@@0))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_40027) (SummandMask1 T@PolymorphicMapType_40027) (SummandMask2 T@PolymorphicMapType_40027) (o_2@@39 T@Ref) (f_4@@39 T@Field_20632_49495) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_40027) (SummandMask1@@0 T@PolymorphicMapType_40027) (SummandMask2@@0 T@PolymorphicMapType_40027) (o_2@@40 T@Ref) (f_4@@40 T@Field_40066_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_40027) (SummandMask1@@1 T@PolymorphicMapType_40027) (SummandMask2@@1 T@PolymorphicMapType_40027) (o_2@@41 T@Ref) (f_4@@41 T@Field_46134_3004) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_40027) (SummandMask1@@2 T@PolymorphicMapType_40027) (SummandMask2@@2 T@PolymorphicMapType_40027) (o_2@@42 T@Ref) (f_4@@42 T@Field_40079_40080) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_40027) (SummandMask1@@3 T@PolymorphicMapType_40027) (SummandMask2@@3 T@PolymorphicMapType_40027) (o_2@@43 T@Ref) (f_4@@43 T@Field_20632_20924) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_40027) (SummandMask1@@4 T@PolymorphicMapType_40027) (SummandMask2@@4 T@PolymorphicMapType_40027) (o_2@@44 T@Ref) (f_4@@44 T@Field_49490_49495) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_40027) (SummandMask1@@5 T@PolymorphicMapType_40027) (SummandMask2@@5 T@PolymorphicMapType_40027) (o_2@@45 T@Ref) (f_4@@45 T@Field_20923_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_40027) (SummandMask1@@6 T@PolymorphicMapType_40027) (SummandMask2@@6 T@PolymorphicMapType_40027) (o_2@@46 T@Ref) (f_4@@46 T@Field_20923_3004) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_40027) (SummandMask1@@7 T@PolymorphicMapType_40027) (SummandMask2@@7 T@PolymorphicMapType_40027) (o_2@@47 T@Ref) (f_4@@47 T@Field_20923_20633) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_40027) (SummandMask1@@8 T@PolymorphicMapType_40027) (SummandMask2@@8 T@PolymorphicMapType_40027) (o_2@@48 T@Ref) (f_4@@48 T@Field_46529_46530) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.542:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_40006) (Mask@@44 T@PolymorphicMapType_40027) (xs@@23 T@Ref) (x@@2 Int) ) (!  (=> (state Heap@@41 Mask@@44) (= (|contains'| Heap@@41 xs@@23 x@@2) (|contains#frame| (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@41) null (list xs@@23)) xs@@23 x@@2)))
 :qid |stdinbpl.1227:15|
 :skolemid |87|
 :pattern ( (state Heap@@41 Mask@@44) (|contains'| Heap@@41 xs@@23 x@@2))
 :pattern ( (state Heap@@41 Mask@@44) (|contains#triggerStateless| xs@@23 x@@2) (|list#trigger_20923| Heap@@41 (list xs@@23)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_40006) (Mask@@45 T@PolymorphicMapType_40027) (xs@@24 T@Ref) ) (!  (=> (and (state Heap@@42 Mask@@45) (< AssumeFunctionsAbove 0)) (=> (not (= xs@@24 null)) (= (last_1 Heap@@42 xs@@24) (ite (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@42) xs@@24 next) null) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@42) xs@@24 val) (|last'| Heap@@42 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@42) xs@@24 next))))))
 :qid |stdinbpl.1083:15|
 :skolemid |81|
 :pattern ( (state Heap@@42 Mask@@45) (last_1 Heap@@42 xs@@24))
 :pattern ( (state Heap@@42 Mask@@45) (|last#triggerStateless| xs@@24) (|list#trigger_20923| Heap@@42 (list xs@@24)))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_7600| a b) (= a b))
 :qid |stdinbpl.515:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_7600| a b))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_40006) (Mask@@46 T@PolymorphicMapType_40027) (xs@@25 T@Ref) ) (!  (=> (state Heap@@43 Mask@@46) (= (|ascending'| Heap@@43 xs@@25) (|ascending#frame| (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@43) null (list xs@@25)) xs@@25)))
 :qid |stdinbpl.1663:15|
 :skolemid |102|
 :pattern ( (state Heap@@43 Mask@@46) (|ascending'| Heap@@43 xs@@25))
 :pattern ( (state Heap@@43 Mask@@46) (|ascending#triggerStateless| xs@@25) (|list#trigger_20923| Heap@@43 (list xs@@25)) (|list#trigger_20923| Heap@@43 (list xs@@25)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_40006) (Mask@@47 T@PolymorphicMapType_40027) (xs@@26 T@Ref) ) (!  (=> (and (state Heap@@44 Mask@@47) (< AssumeFunctionsAbove 4)) (=> (not (= xs@@26 null)) (= (tail_2 Heap@@44 xs@@26) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@44) xs@@26 next))))
 :qid |stdinbpl.973:15|
 :skolemid |76|
 :pattern ( (state Heap@@44 Mask@@47) (tail_2 Heap@@44 xs@@26))
 :pattern ( (state Heap@@44 Mask@@47) (|tail#triggerStateless| xs@@26) (|list#trigger_20923| Heap@@44 (list xs@@26)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_40006) (Mask@@48 T@PolymorphicMapType_40027) (xs@@27 T@Ref) ) (!  (=> (and (state Heap@@45 Mask@@48) (< AssumeFunctionsAbove 7)) (=> (not (= xs@@27 null)) (= (head_2 Heap@@45 xs@@27) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@45) xs@@27 val))))
 :qid |stdinbpl.863:15|
 :skolemid |71|
 :pattern ( (state Heap@@45 Mask@@48) (head_2 Heap@@45 xs@@27))
 :pattern ( (state Heap@@45 Mask@@48) (|head#triggerStateless| xs@@27) (|list#trigger_20923| Heap@@45 (list xs@@27)))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@2)))
 :qid |stdinbpl.408:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_7726|) (= (|Seq#Append_3004| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_7726|) (= (|Seq#Append_3004| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.226:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3004| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_3004| t@@1) 0) t@@1)
 :qid |stdinbpl.230:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3004| t@@1))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_40006) (Mask@@49 T@PolymorphicMapType_40027) (xs@@28 T@Ref) (index@@1 Int) ) (!  (=> (state Heap@@46 Mask@@49) (= (|get'| Heap@@46 xs@@28 index@@1) (|get#frame| (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@46) null (list xs@@28)) xs@@28 index@@1)))
 :qid |stdinbpl.1502:15|
 :skolemid |97|
 :pattern ( (state Heap@@46 Mask@@49) (|get'| Heap@@46 xs@@28 index@@1))
 :pattern ( (state Heap@@46 Mask@@49) (|get#triggerStateless| xs@@28 index@@1) (|list#trigger_20923| Heap@@46 (list xs@@28)))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.209:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_40006) (xs@@29 T@Ref) ) (!  (and (= (ascending Heap@@47 xs@@29) (|ascending'| Heap@@47 xs@@29)) (dummyFunction_6999 (|ascending#triggerStateless| xs@@29)))
 :qid |stdinbpl.1646:15|
 :skolemid |99|
 :pattern ( (ascending Heap@@47 xs@@29))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_7600| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@4) (|Seq#Index_2867| s1@@2 j@@4)))
 :qid |stdinbpl.505:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@4))
))))
 :qid |stdinbpl.502:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_7600| s0@@2 s1@@2))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_40006) (Mask@@50 T@PolymorphicMapType_40027) (xs@@30 T@Ref) ) (!  (=> (state Heap@@48 Mask@@50) (= (|length'| Heap@@48 xs@@30) (|length#frame| (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@48) null (list xs@@30)) xs@@30)))
 :qid |stdinbpl.586:15|
 :skolemid |61|
 :pattern ( (state Heap@@48 Mask@@50) (|length'| Heap@@48 xs@@30))
 :pattern ( (state Heap@@48 Mask@@50) (|length#triggerStateless| xs@@30) (|list#trigger_20923| Heap@@48 (list xs@@30)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_40006) (Mask@@51 T@PolymorphicMapType_40027) (xs@@31 T@Ref) ) (!  (=> (state Heap@@49 Mask@@51) (= (|sum'| Heap@@49 xs@@31) (|sum#frame| (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@49) null (list xs@@31)) xs@@31)))
 :qid |stdinbpl.733:15|
 :skolemid |67|
 :pattern ( (state Heap@@49 Mask@@51) (|sum'| Heap@@49 xs@@31))
 :pattern ( (state Heap@@49 Mask@@51) (|sum#triggerStateless| xs@@31) (|list#trigger_20923| Heap@@49 (list xs@@31)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_40006) (Mask@@52 T@PolymorphicMapType_40027) (xs@@32 T@Ref) ) (!  (=> (state Heap@@50 Mask@@52) (= (|head'| Heap@@50 xs@@32) (|head#frame| (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@50) null (list xs@@32)) xs@@32)))
 :qid |stdinbpl.870:15|
 :skolemid |72|
 :pattern ( (state Heap@@50 Mask@@52) (|head'| Heap@@50 xs@@32))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_40006) (Mask@@53 T@PolymorphicMapType_40027) (xs@@33 T@Ref) ) (!  (=> (state Heap@@51 Mask@@53) (= (|tail'| Heap@@51 xs@@33) (|tail#frame| (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@51) null (list xs@@33)) xs@@33)))
 :qid |stdinbpl.980:15|
 :skolemid |77|
 :pattern ( (state Heap@@51 Mask@@53) (|tail'| Heap@@51 xs@@33))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_40006) (Mask@@54 T@PolymorphicMapType_40027) (xs@@34 T@Ref) ) (!  (=> (state Heap@@52 Mask@@54) (= (|last'| Heap@@52 xs@@34) (|last#frame| (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@52) null (list xs@@34)) xs@@34)))
 :qid |stdinbpl.1090:15|
 :skolemid |82|
 :pattern ( (state Heap@@52 Mask@@54) (|last'| Heap@@52 xs@@34))
 :pattern ( (state Heap@@52 Mask@@54) (|last#triggerStateless| xs@@34) (|list#trigger_20923| Heap@@52 (list xs@@34)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_40006) (Mask@@55 T@PolymorphicMapType_40027) (xs@@35 T@Ref) ) (!  (=> (state Heap@@53 Mask@@55) (= (|elems'| Heap@@53 xs@@35) (|elems#frame| (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@53) null (list xs@@35)) xs@@35)))
 :qid |stdinbpl.1365:15|
 :skolemid |92|
 :pattern ( (state Heap@@53 Mask@@55) (|elems'| Heap@@53 xs@@35))
 :pattern ( (state Heap@@53 Mask@@55) (|elems#triggerStateless| xs@@35) (|list#trigger_20923| Heap@@53 (list xs@@35)))
)))
(assert (forall ((xs@@36 T@Ref) ) (! (= (getPredWandId_20923_20924 (list xs@@36)) 0)
 :qid |stdinbpl.1810:15|
 :skolemid |106|
 :pattern ( (list xs@@36))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3004| t@@2)) 1)
 :qid |stdinbpl.217:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3004| t@@2))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_7600| (|Seq#Append_3004| s@@10 t@@3) n@@8) (|Seq#Take_7600| s@@10 n@@8)))
 :qid |stdinbpl.359:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_7600| (|Seq#Append_3004| s@@10 t@@3) n@@8))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_40006) (Mask@@56 T@PolymorphicMapType_40027) (xs@@37 T@Ref) (index@@2 Int) ) (!  (=> (and (state Heap@@54 Mask@@56) (< AssumeFunctionsAbove 3)) (=> (and (not (= xs@@37 null)) (and (<= 0 index@@2) (< index@@2 (length_1 Heap@@54 xs@@37)))) (= (get Heap@@54 xs@@37 index@@2) (ite (= index@@2 0) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@54) xs@@37 val) (|get'| Heap@@54 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@54) xs@@37 next) (- index@@2 1))))))
 :qid |stdinbpl.1495:15|
 :skolemid |96|
 :pattern ( (state Heap@@54 Mask@@56) (get Heap@@54 xs@@37 index@@2))
 :pattern ( (state Heap@@54 Mask@@56) (|get#triggerStateless| xs@@37 index@@2) (|list#trigger_20923| Heap@@54 (list xs@@37)))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.258:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_40006) (o_25 T@Ref) (f_56 T@Field_49490_49495) (v@@2 T@PolymorphicMapType_40555) ) (! (succHeap Heap@@55 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@55) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@55) o_25 f_56 v@@2) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@55) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@55) o_25 f_56 v@@2) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_40006) (o_25@@0 T@Ref) (f_56@@0 T@Field_20923_3004) (v@@3 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@56) (store (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@56) o_25@@0 f_56@@0 v@@3) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@56) (store (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@56) o_25@@0 f_56@@0 v@@3) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_40006) (o_25@@1 T@Ref) (f_56@@1 T@Field_46529_46530) (v@@4 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@57) (store (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@57) o_25@@1 f_56@@1 v@@4) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@57) (store (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@57) o_25@@1 f_56@@1 v@@4) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_40006) (o_25@@2 T@Ref) (f_56@@2 T@Field_20923_20633) (v@@5 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@58) (store (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@58) o_25@@2 f_56@@2 v@@5) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@58) (store (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@58) o_25@@2 f_56@@2 v@@5) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_40006) (o_25@@3 T@Ref) (f_56@@3 T@Field_20923_53) (v@@6 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@59) (store (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@59) o_25@@3 f_56@@3 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@59) (store (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@59) o_25@@3 f_56@@3 v@@6)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_40006) (o_25@@4 T@Ref) (f_56@@4 T@Field_20632_49495) (v@@7 T@PolymorphicMapType_40555) ) (! (succHeap Heap@@60 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@60) (store (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@60) o_25@@4 f_56@@4 v@@7) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@60) (store (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@60) o_25@@4 f_56@@4 v@@7) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_40006) (o_25@@5 T@Ref) (f_56@@5 T@Field_46134_3004) (v@@8 Int) ) (! (succHeap Heap@@61 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@61) (store (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@61) o_25@@5 f_56@@5 v@@8) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@61) (store (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@61) o_25@@5 f_56@@5 v@@8) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_40006) (o_25@@6 T@Ref) (f_56@@6 T@Field_20632_20924) (v@@9 T@FrameType) ) (! (succHeap Heap@@62 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@62) (store (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@62) o_25@@6 f_56@@6 v@@9) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@62) (store (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@62) o_25@@6 f_56@@6 v@@9) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_40006) (o_25@@7 T@Ref) (f_56@@7 T@Field_40079_40080) (v@@10 T@Ref) ) (! (succHeap Heap@@63 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@63) (store (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@63) o_25@@7 f_56@@7 v@@10) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@63) (store (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@63) o_25@@7 f_56@@7 v@@10) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_40006) (o_25@@8 T@Ref) (f_56@@8 T@Field_40066_53) (v@@11 Bool) ) (! (succHeap Heap@@64 (PolymorphicMapType_40006 (store (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@64) o_25@@8 f_56@@8 v@@11) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (store (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@64) o_25@@8 f_56@@8 v@@11) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@64)))
)))
(assert (forall ((xs@@38 T@Ref) ) (! (= (PredicateMaskField_20923 (list xs@@38)) (|list#sm| xs@@38))
 :qid |stdinbpl.1802:15|
 :skolemid |104|
 :pattern ( (PredicateMaskField_20923 (list xs@@38)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_7600| (|Seq#Append_3004| s@@12 t@@4) n@@9) (|Seq#Append_3004| (|Seq#Drop_7600| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.373:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_7600| (|Seq#Append_3004| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2867| (|Seq#Drop_7600| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2867| s@@13 i@@4))))
 :qid |stdinbpl.309:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_7600| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@4))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_40006) (Mask@@57 T@PolymorphicMapType_40027) (xs@@39 T@Ref) ) (!  (=> (and (state Heap@@65 Mask@@57) (< AssumeFunctionsAbove 6)) (=> (not (= xs@@39 null)) (= (elems Heap@@65 xs@@39) (|Seq#Append_3004| (|Seq#Singleton_3004| (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@65) xs@@39 val)) (ite (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@65) xs@@39 next) null) |Seq#Empty_7726| (|elems'| Heap@@65 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@65) xs@@39 next)))))))
 :qid |stdinbpl.1358:15|
 :skolemid |91|
 :pattern ( (state Heap@@65 Mask@@57) (elems Heap@@65 xs@@39))
 :pattern ( (state Heap@@65 Mask@@57) (|elems#triggerStateless| xs@@39) (|list#trigger_20923| Heap@@65 (list xs@@39)))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_7726|)) (not (= s1@@3 |Seq#Empty_7726|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_3004| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.249:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3004| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_3004| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_7726|)) (not (= s1@@4 |Seq#Empty_7726|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_3004| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.254:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_3004| s0@@4 s1@@4))
)))
(assert (forall ((o_25@@9 T@Ref) (f_33 T@Field_40079_40080) (Heap@@66 T@PolymorphicMapType_40006) ) (!  (=> (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@66) o_25@@9 $allocated) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@66) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@66) o_25@@9 f_33) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@66) o_25@@9 f_33))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@3 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@5) x@@3)) (|Seq#Contains_2867| s@@14 x@@3))
 :qid |stdinbpl.406:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@3) (|Seq#Index_2867| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_7600| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_7600| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_7600| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.510:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_7600| s0@@5 s1@@5))
)))
(assert (forall ((p@@2 T@Field_20632_20924) (v_1@@1 T@FrameType) (q T@Field_20632_20924) (w@@1 T@FrameType) (r T@Field_20632_20924) (u T@FrameType) ) (!  (=> (and (InsidePredicate_40066_40066 p@@2 v_1@@1 q w@@1) (InsidePredicate_40066_40066 q w@@1 r u)) (InsidePredicate_40066_40066 p@@2 v_1@@1 r u))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40066_40066 p@@2 v_1@@1 q w@@1) (InsidePredicate_40066_40066 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_20632_20924) (v_1@@2 T@FrameType) (q@@0 T@Field_20632_20924) (w@@2 T@FrameType) (r@@0 T@Field_46529_46530) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_40066_40066 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_40066_20923 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_40066_20923 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40066_40066 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_40066_20923 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_20632_20924) (v_1@@3 T@FrameType) (q@@1 T@Field_46529_46530) (w@@3 T@FrameType) (r@@1 T@Field_20632_20924) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_40066_20923 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_20923_40066 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_40066_40066 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40066_20923 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_20923_40066 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_20632_20924) (v_1@@4 T@FrameType) (q@@2 T@Field_46529_46530) (w@@4 T@FrameType) (r@@2 T@Field_46529_46530) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_40066_20923 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_20923_20923 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_40066_20923 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_40066_20923 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_20923_20923 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_46529_46530) (v_1@@5 T@FrameType) (q@@3 T@Field_20632_20924) (w@@5 T@FrameType) (r@@3 T@Field_20632_20924) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_20923_40066 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_40066_40066 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_20923_40066 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20923_40066 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_40066_40066 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_46529_46530) (v_1@@6 T@FrameType) (q@@4 T@Field_20632_20924) (w@@6 T@FrameType) (r@@4 T@Field_46529_46530) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_20923_40066 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_40066_20923 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_20923_20923 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20923_40066 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_40066_20923 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_46529_46530) (v_1@@7 T@FrameType) (q@@5 T@Field_46529_46530) (w@@7 T@FrameType) (r@@5 T@Field_20632_20924) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_20923_20923 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_20923_40066 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_20923_40066 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20923_20923 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_20923_40066 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_46529_46530) (v_1@@8 T@FrameType) (q@@6 T@Field_46529_46530) (w@@8 T@FrameType) (r@@6 T@Field_46529_46530) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_20923_20923 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_20923_20923 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_20923_20923 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20923_20923 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_20923_20923 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_40006) (Mask@@58 T@PolymorphicMapType_40027) (xs@@40 T@Ref) (x@@4 Int) ) (!  (=> (and (state Heap@@67 Mask@@58) (< AssumeFunctionsAbove 5)) (=> (not (= xs@@40 null)) (= (contains Heap@@67 xs@@40 x@@4)  (or (= x@@4 (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@67) xs@@40 val)) (and (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@67) xs@@40 next) null)) (|contains'| Heap@@67 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@67) xs@@40 next) x@@4))))))
 :qid |stdinbpl.1220:15|
 :skolemid |86|
 :pattern ( (state Heap@@67 Mask@@58) (contains Heap@@67 xs@@40 x@@4))
 :pattern ( (state Heap@@67 Mask@@58) (|contains#triggerStateless| xs@@40 x@@4) (|list#trigger_20923| Heap@@67 (list xs@@40)))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_7726|))
 :qid |stdinbpl.213:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_7600| s@@16 n@@12) |Seq#Empty_7726|))
 :qid |stdinbpl.389:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_7600| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@68 T@PolymorphicMapType_40006) (xs@@41 T@Ref) (x@@5 Int) ) (!  (and (= (contains Heap@@68 xs@@41 x@@5) (|contains'| Heap@@68 xs@@41 x@@5)) (dummyFunction_6999 (|contains#triggerStateless| xs@@41 x@@5)))
 :qid |stdinbpl.1210:15|
 :skolemid |84|
 :pattern ( (contains Heap@@68 xs@@41 x@@5))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_40027)
(declare-fun xs@@42 () T@Ref)
(declare-fun PostMask@0 () T@PolymorphicMapType_40027)
(declare-fun ys () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_40006)
(declare-fun Heap@@69 () T@PolymorphicMapType_40006)
(declare-fun i@@6 () Int)
(declare-fun y@@0 () Int)
(declare-fun Heap@31 () T@PolymorphicMapType_40006)
(declare-fun ys@4 () T@Ref)
(declare-fun i@4 () Int)
(declare-fun Mask@27 () T@PolymorphicMapType_40027)
(declare-fun Mask@26 () T@PolymorphicMapType_40027)
(declare-fun ExhaleHeap@7 () T@PolymorphicMapType_40006)
(declare-fun Mask@25 () T@PolymorphicMapType_40027)
(declare-fun ys@3 () T@Ref)
(declare-fun Mask@24 () T@PolymorphicMapType_40027)
(declare-fun Heap@30 () T@PolymorphicMapType_40006)
(declare-fun Mask@23 () T@PolymorphicMapType_40027)
(declare-fun ys@2 () T@Ref)
(declare-fun i@3 () Int)
(declare-fun ExhaleHeap@6 () T@PolymorphicMapType_40006)
(declare-fun Mask@22 () T@PolymorphicMapType_40027)
(declare-fun Mask@21 () T@PolymorphicMapType_40027)
(declare-fun Heap@29 () T@PolymorphicMapType_40006)
(declare-fun Mask@20 () T@PolymorphicMapType_40027)
(declare-fun ys@1 () T@Ref)
(declare-fun i@2 () Int)
(declare-fun Heap@27 () T@PolymorphicMapType_40006)
(declare-fun newPMask@3 () T@PolymorphicMapType_40555)
(declare-fun Heap@28 () T@PolymorphicMapType_40006)
(declare-fun Heap@26 () T@PolymorphicMapType_40006)
(declare-fun Heap@25 () T@PolymorphicMapType_40006)
(declare-fun Heap@22 () T@PolymorphicMapType_40006)
(declare-fun Heap@23 () T@PolymorphicMapType_40006)
(declare-fun Heap@24 () T@PolymorphicMapType_40006)
(declare-fun freshVersion@1 () T@FrameType)
(declare-fun Mask@19 () T@PolymorphicMapType_40027)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_20633 (T@Ref) T@FrameType)
(declare-fun FrameFragment_3004 (Int) T@FrameType)
(declare-fun FrameFragment_20924 (T@FrameType) T@FrameType)
(declare-fun Mask@18 () T@PolymorphicMapType_40027)
(declare-fun Mask@17 () T@PolymorphicMapType_40027)
(declare-fun Mask@16 () T@PolymorphicMapType_40027)
(declare-fun Mask@15 () T@PolymorphicMapType_40027)
(declare-fun Heap@20 () T@PolymorphicMapType_40006)
(declare-fun Mask@14 () T@PolymorphicMapType_40027)
(declare-fun Heap@21 () T@PolymorphicMapType_40006)
(declare-fun freshObj@0 () T@Ref)
(declare-fun Heap@18 () T@PolymorphicMapType_40006)
(declare-fun newPMask@2 () T@PolymorphicMapType_40555)
(declare-fun Heap@19 () T@PolymorphicMapType_40006)
(declare-fun Heap@17 () T@PolymorphicMapType_40006)
(declare-fun Heap@16 () T@PolymorphicMapType_40006)
(declare-fun Heap@12 () T@PolymorphicMapType_40006)
(declare-fun Heap@14 () T@PolymorphicMapType_40006)
(declare-fun Heap@15 () T@PolymorphicMapType_40006)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@13 () T@PolymorphicMapType_40027)
(declare-fun Mask@12 () T@PolymorphicMapType_40027)
(declare-fun Mask@11 () T@PolymorphicMapType_40027)
(declare-fun Mask@10 () T@PolymorphicMapType_40027)
(declare-fun Mask@7 () T@PolymorphicMapType_40027)
(declare-fun Heap@9 () T@PolymorphicMapType_40006)
(declare-fun Heap@10 () T@PolymorphicMapType_40006)
(declare-fun Mask@6 () T@PolymorphicMapType_40027)
(declare-fun Mask@5 () T@PolymorphicMapType_40027)
(declare-fun Heap@11 () T@PolymorphicMapType_40006)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_40006)
(declare-fun Mask@9 () T@PolymorphicMapType_40027)
(declare-fun ys@0 () T@Ref)
(declare-fun Heap@13 () T@PolymorphicMapType_40006)
(declare-fun i@1 () Int)
(declare-fun i@0 () Int)
(declare-fun arg_xs@0 () T@Ref)
(declare-fun Mask@8 () T@PolymorphicMapType_40027)
(declare-fun Heap@7 () T@PolymorphicMapType_40006)
(declare-fun newPMask@1 () T@PolymorphicMapType_40555)
(declare-fun Heap@8 () T@PolymorphicMapType_40006)
(declare-fun Heap@5 () T@PolymorphicMapType_40006)
(declare-fun Heap@6 () T@PolymorphicMapType_40006)
(declare-fun Heap@3 () T@PolymorphicMapType_40006)
(declare-fun newPMask@0 () T@PolymorphicMapType_40555)
(declare-fun Heap@4 () T@PolymorphicMapType_40006)
(declare-fun Heap@1 () T@PolymorphicMapType_40006)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_40027)
(declare-fun Heap@2 () T@PolymorphicMapType_40006)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_40027)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_40027)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_40027)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_40027)
(declare-fun Mask@3 () T@PolymorphicMapType_40027)
(declare-fun Mask@4 () T@PolymorphicMapType_40027)
(declare-fun Mask@2 () T@PolymorphicMapType_40027)
(declare-fun Mask@1 () T@PolymorphicMapType_40027)
(declare-fun Heap@0 () T@PolymorphicMapType_40006)
(declare-fun newVersion@0 () T@FrameType)
(set-info :boogie-vc-id insert)
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
 (=> (= (ControlFlow 0 0) 201) (let ((anon116_Then_correct  (and (=> (= (ControlFlow 0 194) (- 0 195)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42)))) (=> (= (ControlFlow 0 194) (- 0 193)) (not (= xs@@42 null)))))))
(let ((anon115_Then_correct  (and (=> (= (ControlFlow 0 191) (- 0 192)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| PostMask@0) null (list ys))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| PostMask@0) null (list ys)))) (=> (= (ControlFlow 0 191) (- 0 190)) (not (= ys null)))))))
(let ((anon118_Then_correct  (and (=> (= (ControlFlow 0 185) (- 0 186)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| PostMask@0) null (list ys))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| PostMask@0) null (list ys)))) (=> (= (ControlFlow 0 185) (- 0 184)) (not (= ys null)))))))
(let ((anon126_Then_correct  (and (=> (= (ControlFlow 0 176) (- 0 177)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| PostMask@0) null (list ys))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| PostMask@0) null (list ys)))) (=> (= (ControlFlow 0 176) (- 0 175)) (not (= ys null)))))))
(let ((anon29_correct true))
(let ((anon126_Else_correct  (=> (and (ascending PostHeap@0 ys) (= (ControlFlow 0 178) 173)) anon29_correct)))
(let ((anon125_Then_correct  (=> (and (ascending Heap@@69 xs@@42) (state PostHeap@0 PostMask@0)) (and (=> (= (ControlFlow 0 179) 176) anon126_Then_correct) (=> (= (ControlFlow 0 179) 178) anon126_Else_correct)))))
(let ((anon125_Else_correct  (=> (and (not (ascending Heap@@69 xs@@42)) (= (ControlFlow 0 174) 173)) anon29_correct)))
(let ((anon124_Then_correct  (and (=> (= (ControlFlow 0 171) (- 0 172)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42)))) (=> (= (ControlFlow 0 171) (- 0 170)) (not (= xs@@42 null)))))))
(let ((anon123_Else_correct  (=> (and (|Seq#Equal_7600| (elems PostHeap@0 ys) (|Seq#Append_3004| (|Seq#Append_3004| (|Seq#Drop_7600| (|Seq#Take_7600| (elems Heap@@69 xs@@42) i@@6) 0) (|Seq#Singleton_3004| y@@0)) (|Seq#Drop_7600| (elems Heap@@69 xs@@42) i@@6))) (state PostHeap@0 PostMask@0)) (and (and (=> (= (ControlFlow 0 180) 171) anon124_Then_correct) (=> (= (ControlFlow 0 180) 179) anon125_Then_correct)) (=> (= (ControlFlow 0 180) 174) anon125_Else_correct)))))
(let ((anon123_Then_correct  (and (=> (= (ControlFlow 0 168) (- 0 169)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42)))) (=> (= (ControlFlow 0 168) (- 0 167)) (not (= xs@@42 null)))))))
(let ((anon122_Then_correct  (and (=> (= (ControlFlow 0 165) (- 0 166)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42)))) (=> (= (ControlFlow 0 165) (- 0 164)) (not (= xs@@42 null)))))))
(let ((anon121_Then_correct  (and (=> (= (ControlFlow 0 162) (- 0 163)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| PostMask@0) null (list ys))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| PostMask@0) null (list ys)))) (=> (= (ControlFlow 0 162) (- 0 161)) (not (= ys null)))))))
(let ((anon120_Else_correct  (=> (= (length_1 PostHeap@0 ys) (+ (length_1 Heap@@69 xs@@42) 1)) (=> (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)) (and (and (and (=> (= (ControlFlow 0 181) 162) anon121_Then_correct) (=> (= (ControlFlow 0 181) 165) anon122_Then_correct)) (=> (= (ControlFlow 0 181) 168) anon123_Then_correct)) (=> (= (ControlFlow 0 181) 180) anon123_Else_correct))))))
(let ((anon120_Then_correct  (and (=> (= (ControlFlow 0 159) (- 0 160)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42)))) (=> (= (ControlFlow 0 159) (- 0 158)) (not (= xs@@42 null)))))))
(let ((anon119_Then_correct  (and (=> (= (ControlFlow 0 156) (- 0 157)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| PostMask@0) null (list ys))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| PostMask@0) null (list ys)))) (=> (= (ControlFlow 0 156) (- 0 155)) (not (= ys null)))))))
(let ((anon13_correct  (=> (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)) (and (and (=> (= (ControlFlow 0 182) 156) anon119_Then_correct) (=> (= (ControlFlow 0 182) 159) anon120_Then_correct)) (=> (= (ControlFlow 0 182) 181) anon120_Else_correct)))))
(let ((anon118_Else_correct  (=> (and (= (head_2 PostHeap@0 ys) y@@0) (= (ControlFlow 0 187) 182)) anon13_correct)))
(let ((anon117_Then_correct  (=> (and (= i@@6 0) (state PostHeap@0 PostMask@0)) (and (=> (= (ControlFlow 0 188) 185) anon118_Then_correct) (=> (= (ControlFlow 0 188) 187) anon118_Else_correct)))))
(let ((anon117_Else_correct  (=> (and (not (= i@@6 0)) (= (ControlFlow 0 183) 182)) anon13_correct)))
(let ((anon116_Else_correct  (=> (= (head_2 PostHeap@0 ys) (head_2 Heap@@69 xs@@42)) (and (=> (= (ControlFlow 0 196) 188) anon117_Then_correct) (=> (= (ControlFlow 0 196) 183) anon117_Else_correct)))))
(let ((anon114_Then_correct  (=> (and (> i@@6 0) (state PostHeap@0 PostMask@0)) (and (and (=> (= (ControlFlow 0 197) 191) anon115_Then_correct) (=> (= (ControlFlow 0 197) 194) anon116_Then_correct)) (=> (= (ControlFlow 0 197) 196) anon116_Else_correct)))))
(let ((anon114_Else_correct  (=> (>= 0 i@@6) (and (=> (= (ControlFlow 0 189) 188) anon117_Then_correct) (=> (= (ControlFlow 0 189) 183) anon117_Else_correct)))))
(let ((anon113_Else_correct  (=> (and (<= i@@6 (length_1 Heap@@69 xs@@42)) (state PostHeap@0 PostMask@0)) (and (=> (= (ControlFlow 0 198) 197) anon114_Then_correct) (=> (= (ControlFlow 0 198) 189) anon114_Else_correct)))))
(let ((anon113_Then_correct  (and (=> (= (ControlFlow 0 153) (- 0 154)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42)))) (=> (= (ControlFlow 0 153) (- 0 152)) (not (= xs@@42 null)))))))
(let ((anon112_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (= PostMask@0 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| ZeroMask) null (list ys) (+ (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| ZeroMask) null (list ys)) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| ZeroMask))) (state PostHeap@0 PostMask@0)) (=> (and (and (not (= ys null)) (state PostHeap@0 PostMask@0)) (and (<= 0 i@@6) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 199) 153) anon113_Then_correct) (=> (= (ControlFlow 0 199) 198) anon113_Else_correct)))))))
(let ((anon135_Then_correct  (and (=> (= (ControlFlow 0 129) (- 0 130)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42)))) (=> (= (ControlFlow 0 129) (- 0 128)) (not (= xs@@42 null)))))))
(let ((anon134_Then_correct  (and (=> (= (ControlFlow 0 126) (- 0 127)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42)))) (=> (= (ControlFlow 0 126) (- 0 125)) (not (= xs@@42 null)))))))
(let ((anon133_Then_correct  (and (=> (= (ControlFlow 0 123) (- 0 124)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42)))) (=> (= (ControlFlow 0 123) (- 0 122)) (not (= xs@@42 null)))))))
(let ((anon111_correct true))
(let ((anon165_Else_correct  (=> (and (not (ascending Heap@@69 xs@@42)) (= (ControlFlow 0 10) 7)) anon111_correct)))
(let ((anon165_Then_correct  (=> (ascending Heap@@69 xs@@42) (and (=> (= (ControlFlow 0 8) (- 0 9)) (ascending Heap@31 ys@4)) (=> (ascending Heap@31 ys@4) (=> (= (ControlFlow 0 8) 7) anon111_correct))))))
(let ((anon109_correct  (and (=> (= (ControlFlow 0 11) (- 0 13)) (= (length_1 Heap@31 ys@4) (+ (length_1 Heap@@69 xs@@42) 1))) (=> (= (length_1 Heap@31 ys@4) (+ (length_1 Heap@@69 xs@@42) 1)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (|Seq#Equal_7600| (elems Heap@31 ys@4) (|Seq#Append_3004| (|Seq#Append_3004| (|Seq#Drop_7600| (|Seq#Take_7600| (elems Heap@@69 xs@@42) i@4) 0) (|Seq#Singleton_3004| y@@0)) (|Seq#Drop_7600| (elems Heap@@69 xs@@42) i@4)))) (=> (|Seq#Equal_7600| (elems Heap@31 ys@4) (|Seq#Append_3004| (|Seq#Append_3004| (|Seq#Drop_7600| (|Seq#Take_7600| (elems Heap@@69 xs@@42) i@4) 0) (|Seq#Singleton_3004| y@@0)) (|Seq#Drop_7600| (elems Heap@@69 xs@@42) i@4))) (and (=> (= (ControlFlow 0 11) 8) anon165_Then_correct) (=> (= (ControlFlow 0 11) 10) anon165_Else_correct))))))))
(let ((anon164_Else_correct  (=> (and (not (= i@4 0)) (= (ControlFlow 0 16) 11)) anon109_correct)))
(let ((anon164_Then_correct  (=> (= i@4 0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (= (head_2 Heap@31 ys@4) y@@0)) (=> (= (head_2 Heap@31 ys@4) y@@0) (=> (= (ControlFlow 0 14) 11) anon109_correct))))))
(let ((anon163_Else_correct  (=> (>= 0 i@4) (and (=> (= (ControlFlow 0 19) 14) anon164_Then_correct) (=> (= (ControlFlow 0 19) 16) anon164_Else_correct)))))
(let ((anon163_Then_correct  (=> (> i@4 0) (and (=> (= (ControlFlow 0 17) (- 0 18)) (= (head_2 Heap@31 ys@4) (head_2 Heap@@69 xs@@42))) (=> (= (head_2 Heap@31 ys@4) (head_2 Heap@@69 xs@@42)) (and (=> (= (ControlFlow 0 17) 14) anon164_Then_correct) (=> (= (ControlFlow 0 17) 16) anon164_Else_correct)))))))
(let ((anon105_correct  (=> (= Mask@27 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@26) null (list ys@4) (- (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@26) null (list ys@4)) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@26) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@26) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@26) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@26) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@26) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@26) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@26) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@26) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@26))) (and (=> (= (ControlFlow 0 20) (- 0 23)) (not (= ys@4 null))) (=> (not (= ys@4 null)) (and (=> (= (ControlFlow 0 20) (- 0 22)) (<= 0 i@4)) (=> (<= 0 i@4) (and (=> (= (ControlFlow 0 20) (- 0 21)) (<= i@4 (length_1 Heap@@69 xs@@42))) (=> (<= i@4 (length_1 Heap@@69 xs@@42)) (and (=> (= (ControlFlow 0 20) 17) anon163_Then_correct) (=> (= (ControlFlow 0 20) 19) anon163_Else_correct)))))))))))
(let ((anon162_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 26) 20)) anon105_correct)))
(let ((anon162_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (<= FullPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@26) null (list ys@4)))) (=> (<= FullPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@26) null (list ys@4))) (=> (= (ControlFlow 0 24) 20) anon105_correct))))))
(let ((anon103_correct  (=> (state Heap@31 Mask@26) (and (=> (= (ControlFlow 0 27) 24) anon162_Then_correct) (=> (= (ControlFlow 0 27) 26) anon162_Else_correct)))))
(let ((anon37_correct  (=> (state ExhaleHeap@7 Mask@25) (=> (and (and (and (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@7) ys@3 $allocated) (state ExhaleHeap@7 Mask@25)) (and (state ExhaleHeap@7 Mask@25) (= Mask@26 Mask@25))) (and (and (= Heap@31 ExhaleHeap@7) (= ys@4 ys@3)) (and (= i@4 0) (= (ControlFlow 0 143) 27)))) anon103_correct))))
(let ((anon130_Else_correct  (=> (and (not (and (<= y@@0 (head_2 Heap@@69 xs@@42)) (ascending Heap@@69 xs@@42))) (= (ControlFlow 0 145) 143)) anon37_correct)))
(let ((anon130_Then_correct  (=> (and (and (and (<= y@@0 (head_2 Heap@@69 xs@@42)) (ascending Heap@@69 xs@@42)) (state ExhaleHeap@7 Mask@25)) (and (ascending ExhaleHeap@7 ys@3) (= (ControlFlow 0 144) 143))) anon37_correct)))
(let ((anon35_correct  (=> (= Mask@24 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42) (- (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42)) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@0))) (and (=> (= (ControlFlow 0 146) (- 0 147)) (not (= xs@@42 null))) (=> (not (= xs@@42 null)) (=> (and (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@7 Mask@24) (= Mask@25 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@24) null (list ys@3) (+ (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@24) null (list ys@3)) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@24) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@24) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@24) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@24) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@24) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@24) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@24) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@24) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@24)))) (=> (and (and (and (state ExhaleHeap@7 Mask@25) (not (= ys@3 null))) (and (state ExhaleHeap@7 Mask@25) (= (length_1 ExhaleHeap@7 ys@3) (+ (length_1 Heap@@69 xs@@42) 1)))) (and (and (state ExhaleHeap@7 Mask@25) (|Seq#Equal_7600| (elems ExhaleHeap@7 ys@3) (|Seq#Append_3004| (|Seq#Singleton_3004| y@@0) (elems Heap@@69 xs@@42)))) (and (state ExhaleHeap@7 Mask@25) (= (head_2 ExhaleHeap@7 ys@3) y@@0)))) (and (=> (= (ControlFlow 0 146) 144) anon130_Then_correct) (=> (= (ControlFlow 0 146) 145) anon130_Else_correct)))))))))
(let ((anon129_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 150) 146)) anon35_correct)))
(let ((anon129_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 148) (- 0 149)) (<= FullPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42)))) (=> (<= FullPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42))) (=> (= (ControlFlow 0 148) 146) anon35_correct))))))
(let ((anon128_Then_correct  (=> (<= y@@0 (head_2 Heap@@69 xs@@42)) (and (=> (= (ControlFlow 0 151) 148) anon129_Then_correct) (=> (= (ControlFlow 0 151) 150) anon129_Else_correct)))))
(let ((anon102_correct  (=> (and (state Heap@30 Mask@23) (= Mask@26 Mask@23)) (=> (and (and (= Heap@31 Heap@30) (= ys@4 ys@2)) (and (= i@4 i@3) (= (ControlFlow 0 28) 27))) anon103_correct))))
(let ((anon51_correct  (=> (state ExhaleHeap@6 Mask@22) (=> (and (and (and (state ExhaleHeap@6 Mask@22) (state ExhaleHeap@6 Mask@22)) (and (state ExhaleHeap@6 Mask@22) (= Mask@23 Mask@22))) (and (and (= Heap@30 ExhaleHeap@6) (= ys@2 xs@@42)) (and (= i@3 1) (= (ControlFlow 0 131) 28)))) anon102_correct))))
(let ((anon137_Else_correct  (=> (and (not (and (>= y@@0 (last_1 Heap@@69 xs@@42)) (ascending Heap@@69 xs@@42))) (= (ControlFlow 0 133) 131)) anon51_correct)))
(let ((anon137_Then_correct  (=> (and (and (and (>= y@@0 (last_1 Heap@@69 xs@@42)) (ascending Heap@@69 xs@@42)) (state ExhaleHeap@6 Mask@22)) (and (ascending ExhaleHeap@6 xs@@42) (= (ControlFlow 0 132) 131))) anon51_correct)))
(let ((anon49_correct  (=> (= Mask@21 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42) (- (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42)) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@0))) (and (=> (= (ControlFlow 0 134) (- 0 135)) (not (= xs@@42 null))) (=> (not (= xs@@42 null)) (=> (and (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@6 Mask@21) (= Mask@22 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@21) null (list xs@@42) (+ (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@21) null (list xs@@42)) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@21) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@21) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@21) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@21) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@21) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@21) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@21) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@21) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@21)))) (=> (and (and (and (state ExhaleHeap@6 Mask@22) (not (= xs@@42 null))) (and (state ExhaleHeap@6 Mask@22) (= (length_1 ExhaleHeap@6 xs@@42) (+ (length_1 Heap@@69 xs@@42) 1)))) (and (and (state ExhaleHeap@6 Mask@22) (|Seq#Equal_7600| (elems ExhaleHeap@6 xs@@42) (|Seq#Append_3004| (elems Heap@@69 xs@@42) (|Seq#Singleton_3004| y@@0)))) (and (state ExhaleHeap@6 Mask@22) (= (head_2 ExhaleHeap@6 xs@@42) (head_2 Heap@@69 xs@@42))))) (and (=> (= (ControlFlow 0 134) 132) anon137_Then_correct) (=> (= (ControlFlow 0 134) 133) anon137_Else_correct)))))))))
(let ((anon136_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 138) 134)) anon49_correct)))
(let ((anon136_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 136) (- 0 137)) (<= FullPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42)))) (=> (<= FullPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42))) (=> (= (ControlFlow 0 136) 134) anon49_correct))))))
(let ((anon135_Else_correct  (=> (= (|Seq#Length_2867| (elems Heap@@69 xs@@42)) 1) (=> (and (state Heap@@69 Mask@0) (state Heap@@69 Mask@0)) (and (=> (= (ControlFlow 0 139) 136) anon136_Then_correct) (=> (= (ControlFlow 0 139) 138) anon136_Else_correct))))))
(let ((anon134_Else_correct  (=> (and (and (= (head_2 Heap@@69 xs@@42) (last_1 Heap@@69 xs@@42)) (state Heap@@69 Mask@0)) (and (state Heap@@69 Mask@0) (state Heap@@69 Mask@0))) (and (=> (= (ControlFlow 0 140) 129) anon135_Then_correct) (=> (= (ControlFlow 0 140) 139) anon135_Else_correct)))))
(let ((anon132_Then_correct  (=> (and (= (tail_2 Heap@@69 xs@@42) null) (state Heap@@69 Mask@0)) (and (and (=> (= (ControlFlow 0 141) 123) anon133_Then_correct) (=> (= (ControlFlow 0 141) 126) anon134_Then_correct)) (=> (= (ControlFlow 0 141) 140) anon134_Else_correct)))))
(let ((anon101_correct  (=> (state Heap@29 Mask@20) (=> (and (state Heap@29 Mask@20) (= Mask@23 Mask@20)) (=> (and (and (= Heap@30 Heap@29) (= ys@2 ys@1)) (and (= i@3 i@2) (= (ControlFlow 0 29) 28))) anon102_correct)))))
(let ((anon161_Else_correct  (=> (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@27) ys@1 next) null) (=> (and (= Heap@29 Heap@27) (= (ControlFlow 0 31) 29)) anon101_correct))))
(let ((anon161_Then_correct  (=> (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@27) ys@1 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_51 T@Ref) (f_66 T@Field_40079_40080) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| ys@1))) o_51 f_66) (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@27) ys@1 next)))) o_51 f_66)) (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| newPMask@3) o_51 f_66))
 :qid |stdinbpl.3400:37|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| newPMask@3) o_51 f_66))
)) (forall ((o_51@@0 T@Ref) (f_66@@0 T@Field_46134_3004) ) (!  (=> (or (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| ys@1))) o_51@@0 f_66@@0) (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@27) ys@1 next)))) o_51@@0 f_66@@0)) (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| newPMask@3) o_51@@0 f_66@@0))
 :qid |stdinbpl.3400:37|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| newPMask@3) o_51@@0 f_66@@0))
))) (forall ((o_51@@1 T@Ref) (f_66@@1 T@Field_40066_53) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| ys@1))) o_51@@1 f_66@@1) (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@27) ys@1 next)))) o_51@@1 f_66@@1)) (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| newPMask@3) o_51@@1 f_66@@1))
 :qid |stdinbpl.3400:37|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| newPMask@3) o_51@@1 f_66@@1))
))) (forall ((o_51@@2 T@Ref) (f_66@@2 T@Field_20632_20924) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| ys@1))) o_51@@2 f_66@@2) (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@27) ys@1 next)))) o_51@@2 f_66@@2)) (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| newPMask@3) o_51@@2 f_66@@2))
 :qid |stdinbpl.3400:37|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| newPMask@3) o_51@@2 f_66@@2))
))) (forall ((o_51@@3 T@Ref) (f_66@@3 T@Field_20632_49495) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| ys@1))) o_51@@3 f_66@@3) (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@27) ys@1 next)))) o_51@@3 f_66@@3)) (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| newPMask@3) o_51@@3 f_66@@3))
 :qid |stdinbpl.3400:37|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| newPMask@3) o_51@@3 f_66@@3))
))) (forall ((o_51@@4 T@Ref) (f_66@@4 T@Field_20923_20633) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| ys@1))) o_51@@4 f_66@@4) (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@27) ys@1 next)))) o_51@@4 f_66@@4)) (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| newPMask@3) o_51@@4 f_66@@4))
 :qid |stdinbpl.3400:37|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| newPMask@3) o_51@@4 f_66@@4))
))) (forall ((o_51@@5 T@Ref) (f_66@@5 T@Field_20923_3004) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| ys@1))) o_51@@5 f_66@@5) (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@27) ys@1 next)))) o_51@@5 f_66@@5)) (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| newPMask@3) o_51@@5 f_66@@5))
 :qid |stdinbpl.3400:37|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| newPMask@3) o_51@@5 f_66@@5))
))) (forall ((o_51@@6 T@Ref) (f_66@@6 T@Field_20923_53) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| ys@1))) o_51@@6 f_66@@6) (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@27) ys@1 next)))) o_51@@6 f_66@@6)) (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| newPMask@3) o_51@@6 f_66@@6))
 :qid |stdinbpl.3400:37|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| newPMask@3) o_51@@6 f_66@@6))
))) (forall ((o_51@@7 T@Ref) (f_66@@7 T@Field_46529_46530) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| ys@1))) o_51@@7 f_66@@7) (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@27) ys@1 next)))) o_51@@7 f_66@@7)) (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| newPMask@3) o_51@@7 f_66@@7))
 :qid |stdinbpl.3400:37|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| newPMask@3) o_51@@7 f_66@@7))
))) (forall ((o_51@@8 T@Ref) (f_66@@8 T@Field_49490_49495) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| ys@1))) o_51@@8 f_66@@8) (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@27) ys@1 next)))) o_51@@8 f_66@@8)) (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| newPMask@3) o_51@@8 f_66@@8))
 :qid |stdinbpl.3400:37|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| newPMask@3) o_51@@8 f_66@@8))
))) (= Heap@28 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@27) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@27) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@27) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@27) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@27) null (|list#sm| ys@1) newPMask@3) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@27) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@27) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@27) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@27) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@27)))) (and (= Heap@29 Heap@28) (= (ControlFlow 0 30) 29))) anon101_correct))))
(let ((anon99_correct  (=> (and (= Heap@26 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@25) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@25) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@25) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@25) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@25) null (|list#sm| ys@1) (PolymorphicMapType_40555 (store (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@25) null (|list#sm| ys@1))) ys@1 next true) (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@25) null (|list#sm| ys@1))) (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@25) null (|list#sm| ys@1))) (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@25) null (|list#sm| ys@1))) (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@25) null (|list#sm| ys@1))) (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@25) null (|list#sm| ys@1))) (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@25) null (|list#sm| ys@1))) (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@25) null (|list#sm| ys@1))) (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@25) null (|list#sm| ys@1))) (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@25) null (|list#sm| ys@1))))) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@25) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@25) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@25) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@25) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@25))) (= Heap@27 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@26) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@26) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@26) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@26) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@26) null (|list#sm| ys@1) (PolymorphicMapType_40555 (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@26) null (|list#sm| ys@1))) (store (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@26) null (|list#sm| ys@1))) ys@1 val true) (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@26) null (|list#sm| ys@1))) (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@26) null (|list#sm| ys@1))) (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@26) null (|list#sm| ys@1))) (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@26) null (|list#sm| ys@1))) (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@26) null (|list#sm| ys@1))) (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@26) null (|list#sm| ys@1))) (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@26) null (|list#sm| ys@1))) (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@26) null (|list#sm| ys@1))))) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@26) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@26) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@26) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@26) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@26)))) (and (=> (= (ControlFlow 0 32) 30) anon161_Then_correct) (=> (= (ControlFlow 0 32) 31) anon161_Else_correct)))))
(let ((anon160_Else_correct  (=> (HasDirectPerm_20923_20924 Mask@20 null (list ys@1)) (=> (and (= Heap@25 Heap@22) (= (ControlFlow 0 34) 32)) anon99_correct))))
(let ((anon160_Then_correct  (=> (not (HasDirectPerm_20923_20924 Mask@20 null (list ys@1))) (=> (and (and (= Heap@23 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@22) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@22) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@22) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@22) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@22) null (|list#sm| ys@1) ZeroPMask) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@22) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@22) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@22) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@22) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@22))) (= Heap@24 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@23) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@23) (store (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@23) null (list ys@1) freshVersion@1) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@23) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@23) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@23) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@23) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@23) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@23) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@23)))) (and (= Heap@25 Heap@24) (= (ControlFlow 0 33) 32))) anon99_correct))))
(let ((anon97_correct  (=> (= Mask@20 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@19) null (list ys@1) (+ (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@19) null (list ys@1)) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@19) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@19) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@19) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@19) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@19) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@19) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@19) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@19) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@19))) (=> (and (and (state Heap@22 Mask@20) (state Heap@22 Mask@20)) (and (|list#trigger_20923| Heap@22 (list ys@1)) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@22) null (list ys@1)) (CombineFrames (FrameFragment_20633 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@22) ys@1 next)) (CombineFrames (FrameFragment_3004 (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@22) ys@1 val)) (FrameFragment_20924 (ite (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@22) ys@1 next) null)) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@22) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@22) ys@1 next))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 35) 33) anon160_Then_correct) (=> (= (ControlFlow 0 35) 34) anon160_Else_correct))))))
(let ((anon96_correct  (=> (and (= Mask@18 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@17) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@22) ys@1 next)) (- (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@17) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@22) ys@1 next))) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@17) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@17) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@17) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@17) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@17) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@17) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@17) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@17) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@17))) (InsidePredicate_20923_20923 (list ys@1) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@22) null (list ys@1)) (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@22) ys@1 next)) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@22) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@22) ys@1 next))))) (and (=> (= (ControlFlow 0 37) (- 0 38)) (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@22) ys@1 next) null))) (=> (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@22) ys@1 next) null)) (=> (and (= Mask@19 Mask@18) (= (ControlFlow 0 37) 35)) anon97_correct))))))
(let ((anon159_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 41) 37)) anon96_correct)))
(let ((anon159_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 39) (- 0 40)) (<= FullPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@17) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@22) ys@1 next))))) (=> (<= FullPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@17) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@22) ys@1 next)))) (=> (= (ControlFlow 0 39) 37) anon96_correct))))))
(let ((anon158_Then_correct  (=> (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@22) ys@1 next) null)) (and (=> (= (ControlFlow 0 42) 39) anon159_Then_correct) (=> (= (ControlFlow 0 42) 41) anon159_Else_correct)))))
(let ((anon158_Else_correct  (=> (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@22) ys@1 next) null) (=> (and (= Mask@19 Mask@17) (= (ControlFlow 0 36) 35)) anon97_correct))))
(let ((anon93_correct  (=> (= Mask@17 (PolymorphicMapType_40027 (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@16) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@16) (store (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@16) ys@1 val (- (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@16) ys@1 val) FullPerm)) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@16) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@16) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@16) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@16) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@16) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@16) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@16))) (and (=> (= (ControlFlow 0 43) 42) anon158_Then_correct) (=> (= (ControlFlow 0 43) 36) anon158_Else_correct)))))
(let ((anon157_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 46) 43)) anon93_correct)))
(let ((anon157_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 44) (- 0 45)) (<= FullPerm (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@16) ys@1 val))) (=> (<= FullPerm (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@16) ys@1 val)) (=> (= (ControlFlow 0 44) 43) anon93_correct))))))
(let ((anon91_correct  (=> (= Mask@16 (PolymorphicMapType_40027 (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@15) (store (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@15) ys@1 next (- (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@15) ys@1 next) FullPerm)) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@15) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@15) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@15) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@15) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@15) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@15) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@15) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@15))) (and (=> (= (ControlFlow 0 47) 44) anon157_Then_correct) (=> (= (ControlFlow 0 47) 46) anon157_Else_correct)))))
(let ((anon156_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 50) 47)) anon91_correct)))
(let ((anon156_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 48) (- 0 49)) (<= FullPerm (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@15) ys@1 next))) (=> (<= FullPerm (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@15) ys@1 next)) (=> (= (ControlFlow 0 48) 47) anon91_correct))))))
(let ((anon89_correct  (=> (state Heap@22 Mask@15) (and (=> (= (ControlFlow 0 51) 48) anon156_Then_correct) (=> (= (ControlFlow 0 51) 50) anon156_Else_correct)))))
(let ((anon79_correct  (=> (and (state Heap@20 Mask@14) (state Heap@20 Mask@14)) (and (=> (= (ControlFlow 0 68) (- 0 69)) (= FullPerm (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@14) xs@@42 next))) (=> (= FullPerm (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@14) xs@@42 next)) (=> (= Heap@21 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@20) (store (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@20) xs@@42 next freshObj@0) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@20) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@20) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@20) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@20) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@20) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@20) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@20) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@20))) (=> (and (and (and (state Heap@21 Mask@14) (state Heap@21 Mask@14)) (and (state Heap@21 Mask@14) (= Heap@22 Heap@21))) (and (and (= ys@1 xs@@42) (= Mask@15 Mask@14)) (and (= i@2 1) (= (ControlFlow 0 68) 51)))) anon89_correct)))))))
(let ((anon151_Else_correct  (=> (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@18) freshObj@0 next) null) (=> (and (= Heap@20 Heap@18) (= (ControlFlow 0 71) 68)) anon79_correct))))
(let ((anon151_Then_correct  (=> (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@18) freshObj@0 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_13 T@Ref) (f_65 T@Field_40079_40080) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| freshObj@0))) o_13 f_65) (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@18) freshObj@0 next)))) o_13 f_65)) (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| newPMask@2) o_13 f_65))
 :qid |stdinbpl.3261:41|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| newPMask@2) o_13 f_65))
)) (forall ((o_13@@0 T@Ref) (f_65@@0 T@Field_46134_3004) ) (!  (=> (or (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| freshObj@0))) o_13@@0 f_65@@0) (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@18) freshObj@0 next)))) o_13@@0 f_65@@0)) (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| newPMask@2) o_13@@0 f_65@@0))
 :qid |stdinbpl.3261:41|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| newPMask@2) o_13@@0 f_65@@0))
))) (forall ((o_13@@1 T@Ref) (f_65@@1 T@Field_40066_53) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| freshObj@0))) o_13@@1 f_65@@1) (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@18) freshObj@0 next)))) o_13@@1 f_65@@1)) (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| newPMask@2) o_13@@1 f_65@@1))
 :qid |stdinbpl.3261:41|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| newPMask@2) o_13@@1 f_65@@1))
))) (forall ((o_13@@2 T@Ref) (f_65@@2 T@Field_20632_20924) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| freshObj@0))) o_13@@2 f_65@@2) (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@18) freshObj@0 next)))) o_13@@2 f_65@@2)) (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| newPMask@2) o_13@@2 f_65@@2))
 :qid |stdinbpl.3261:41|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| newPMask@2) o_13@@2 f_65@@2))
))) (forall ((o_13@@3 T@Ref) (f_65@@3 T@Field_20632_49495) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| freshObj@0))) o_13@@3 f_65@@3) (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@18) freshObj@0 next)))) o_13@@3 f_65@@3)) (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| newPMask@2) o_13@@3 f_65@@3))
 :qid |stdinbpl.3261:41|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| newPMask@2) o_13@@3 f_65@@3))
))) (forall ((o_13@@4 T@Ref) (f_65@@4 T@Field_20923_20633) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| freshObj@0))) o_13@@4 f_65@@4) (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@18) freshObj@0 next)))) o_13@@4 f_65@@4)) (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| newPMask@2) o_13@@4 f_65@@4))
 :qid |stdinbpl.3261:41|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| newPMask@2) o_13@@4 f_65@@4))
))) (forall ((o_13@@5 T@Ref) (f_65@@5 T@Field_20923_3004) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| freshObj@0))) o_13@@5 f_65@@5) (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@18) freshObj@0 next)))) o_13@@5 f_65@@5)) (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| newPMask@2) o_13@@5 f_65@@5))
 :qid |stdinbpl.3261:41|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| newPMask@2) o_13@@5 f_65@@5))
))) (forall ((o_13@@6 T@Ref) (f_65@@6 T@Field_20923_53) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| freshObj@0))) o_13@@6 f_65@@6) (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@18) freshObj@0 next)))) o_13@@6 f_65@@6)) (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| newPMask@2) o_13@@6 f_65@@6))
 :qid |stdinbpl.3261:41|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| newPMask@2) o_13@@6 f_65@@6))
))) (forall ((o_13@@7 T@Ref) (f_65@@7 T@Field_46529_46530) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| freshObj@0))) o_13@@7 f_65@@7) (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@18) freshObj@0 next)))) o_13@@7 f_65@@7)) (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| newPMask@2) o_13@@7 f_65@@7))
 :qid |stdinbpl.3261:41|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| newPMask@2) o_13@@7 f_65@@7))
))) (forall ((o_13@@8 T@Ref) (f_65@@8 T@Field_49490_49495) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| freshObj@0))) o_13@@8 f_65@@8) (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@18) freshObj@0 next)))) o_13@@8 f_65@@8)) (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| newPMask@2) o_13@@8 f_65@@8))
 :qid |stdinbpl.3261:41|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| newPMask@2) o_13@@8 f_65@@8))
))) (= Heap@19 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@18) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@18) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@18) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@18) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@18) null (|list#sm| freshObj@0) newPMask@2) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@18) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@18) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@18) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@18) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@18)))) (and (= Heap@20 Heap@19) (= (ControlFlow 0 70) 68))) anon79_correct))))
(let ((anon77_correct  (=> (and (= Heap@17 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@16) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@16) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@16) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@16) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@16) null (|list#sm| freshObj@0) (PolymorphicMapType_40555 (store (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@16) null (|list#sm| freshObj@0))) freshObj@0 next true) (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@16) null (|list#sm| freshObj@0))) (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@16) null (|list#sm| freshObj@0))) (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@16) null (|list#sm| freshObj@0))) (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@16) null (|list#sm| freshObj@0))) (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@16) null (|list#sm| freshObj@0))) (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@16) null (|list#sm| freshObj@0))) (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@16) null (|list#sm| freshObj@0))) (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@16) null (|list#sm| freshObj@0))) (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@16) null (|list#sm| freshObj@0))))) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@16) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@16) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@16) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@16) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@16))) (= Heap@18 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@17) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@17) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@17) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@17) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@17) null (|list#sm| freshObj@0) (PolymorphicMapType_40555 (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@17) null (|list#sm| freshObj@0))) (store (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@17) null (|list#sm| freshObj@0))) freshObj@0 val true) (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@17) null (|list#sm| freshObj@0))) (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@17) null (|list#sm| freshObj@0))) (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@17) null (|list#sm| freshObj@0))) (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@17) null (|list#sm| freshObj@0))) (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@17) null (|list#sm| freshObj@0))) (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@17) null (|list#sm| freshObj@0))) (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@17) null (|list#sm| freshObj@0))) (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@17) null (|list#sm| freshObj@0))))) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@17) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@17) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@17) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@17) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@17)))) (and (=> (= (ControlFlow 0 72) 70) anon151_Then_correct) (=> (= (ControlFlow 0 72) 71) anon151_Else_correct)))))
(let ((anon150_Else_correct  (=> (HasDirectPerm_20923_20924 Mask@14 null (list freshObj@0)) (=> (and (= Heap@16 Heap@12) (= (ControlFlow 0 74) 72)) anon77_correct))))
(let ((anon150_Then_correct  (=> (not (HasDirectPerm_20923_20924 Mask@14 null (list freshObj@0))) (=> (and (and (= Heap@14 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@12) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@12) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@12) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@12) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@12) null (|list#sm| freshObj@0) ZeroPMask) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@12) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@12) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@12) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@12) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@12))) (= Heap@15 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@14) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@14) (store (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@14) null (list freshObj@0) freshVersion@0) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@14) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@14) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@14) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@14) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@14) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@14) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@14)))) (and (= Heap@16 Heap@15) (= (ControlFlow 0 73) 72))) anon77_correct))))
(let ((anon75_correct  (=> (= Mask@14 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@13) null (list freshObj@0) (+ (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@13) null (list freshObj@0)) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@13) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@13) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@13) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@13) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@13) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@13) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@13) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@13) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@13))) (=> (and (and (state Heap@12 Mask@14) (state Heap@12 Mask@14)) (and (|list#trigger_20923| Heap@12 (list freshObj@0)) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@12) null (list freshObj@0)) (CombineFrames (FrameFragment_20633 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@12) freshObj@0 next)) (CombineFrames (FrameFragment_3004 (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@12) freshObj@0 val)) (FrameFragment_20924 (ite (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@12) freshObj@0 next) null)) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@12) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@12) freshObj@0 next))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 75) 73) anon150_Then_correct) (=> (= (ControlFlow 0 75) 74) anon150_Else_correct))))))
(let ((anon74_correct  (=> (and (= Mask@12 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@11) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@12) freshObj@0 next)) (- (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@11) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@12) freshObj@0 next))) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@11) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@11) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@11) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@11) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@11) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@11) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@11) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@11) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@11))) (InsidePredicate_20923_20923 (list freshObj@0) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@12) null (list freshObj@0)) (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@12) freshObj@0 next)) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@12) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@12) freshObj@0 next))))) (and (=> (= (ControlFlow 0 77) (- 0 78)) (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@12) freshObj@0 next) null))) (=> (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@12) freshObj@0 next) null)) (=> (and (= Mask@13 Mask@12) (= (ControlFlow 0 77) 75)) anon75_correct))))))
(let ((anon149_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 81) 77)) anon74_correct)))
(let ((anon149_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 79) (- 0 80)) (<= FullPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@11) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@12) freshObj@0 next))))) (=> (<= FullPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@11) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@12) freshObj@0 next)))) (=> (= (ControlFlow 0 79) 77) anon74_correct))))))
(let ((anon148_Then_correct  (=> (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@12) freshObj@0 next) null)) (and (=> (= (ControlFlow 0 82) 79) anon149_Then_correct) (=> (= (ControlFlow 0 82) 81) anon149_Else_correct)))))
(let ((anon148_Else_correct  (=> (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@12) freshObj@0 next) null) (=> (and (= Mask@13 Mask@11) (= (ControlFlow 0 76) 75)) anon75_correct))))
(let ((anon71_correct  (=> (= Mask@11 (PolymorphicMapType_40027 (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@10) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@10) (store (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@10) freshObj@0 val (- (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@10) freshObj@0 val) FullPerm)) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@10) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@10) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@10) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@10) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@10) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@10) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@10))) (and (=> (= (ControlFlow 0 83) 82) anon148_Then_correct) (=> (= (ControlFlow 0 83) 76) anon148_Else_correct)))))
(let ((anon147_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 86) 83)) anon71_correct)))
(let ((anon147_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 84) (- 0 85)) (<= FullPerm (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@10) freshObj@0 val))) (=> (<= FullPerm (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@10) freshObj@0 val)) (=> (= (ControlFlow 0 84) 83) anon71_correct))))))
(let ((anon69_correct  (=> (= Mask@10 (PolymorphicMapType_40027 (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@7) (store (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@7) freshObj@0 next (- (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@7) freshObj@0 next) FullPerm)) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@7) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@7) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@7) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@7) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@7) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@7) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@7) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@7))) (and (=> (= (ControlFlow 0 87) 84) anon147_Then_correct) (=> (= (ControlFlow 0 87) 86) anon147_Else_correct)))))
(let ((anon146_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 90) 87)) anon69_correct)))
(let ((anon146_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 88) (- 0 89)) (<= FullPerm (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@7) freshObj@0 next))) (=> (<= FullPerm (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@7) freshObj@0 next)) (=> (= (ControlFlow 0 88) 87) anon69_correct))))))
(let ((anon145_Then_correct  (=> (<= y@@0 (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@9) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@9) xs@@42 next) val)) (=> (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@9) freshObj@0 $allocated))) (=> (and (and (= Heap@10 (PolymorphicMapType_40006 (store (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@9) freshObj@0 $allocated true) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@9) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@9) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@9) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@9) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@9) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@9) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@9) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@9) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@9))) (= Mask@6 (PolymorphicMapType_40027 (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@5) (store (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@5) freshObj@0 val (+ (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@5) freshObj@0 val) FullPerm)) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@5)))) (and (= Mask@7 (PolymorphicMapType_40027 (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@6) (store (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@6) freshObj@0 next (+ (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@6) freshObj@0 next) FullPerm)) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@6) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@6) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@6) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@6) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@6) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@6) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@6) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@6))) (state Heap@10 Mask@7))) (and (=> (= (ControlFlow 0 91) (- 0 94)) (= FullPerm (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@7) freshObj@0 val))) (=> (= FullPerm (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@7) freshObj@0 val)) (=> (and (= Heap@11 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@10) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@10) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@10) (store (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@10) freshObj@0 val y@@0) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@10) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@10) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@10) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@10) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@10) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@10))) (state Heap@11 Mask@7)) (and (=> (= (ControlFlow 0 91) (- 0 93)) (HasDirectPerm_20632_20633 Mask@7 xs@@42 next)) (=> (HasDirectPerm_20632_20633 Mask@7 xs@@42 next) (and (=> (= (ControlFlow 0 91) (- 0 92)) (= FullPerm (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@7) freshObj@0 next))) (=> (= FullPerm (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@7) freshObj@0 next)) (=> (and (= Heap@12 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@11) (store (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@11) freshObj@0 next (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@11) xs@@42 next)) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@11) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@11) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@11) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@11) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@11) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@11) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@11) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@11))) (state Heap@12 Mask@7)) (and (=> (= (ControlFlow 0 91) 88) anon146_Then_correct) (=> (= (ControlFlow 0 91) 90) anon146_Else_correct)))))))))))))))
(let ((anon88_correct  (=> (state ExhaleHeap@2 Mask@9) (=> (and (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@2) ys@0 $allocated) (state ExhaleHeap@2 Mask@9)) (and (=> (= (ControlFlow 0 52) (- 0 53)) (= FullPerm (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@9) xs@@42 next))) (=> (= FullPerm (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@9) xs@@42 next)) (=> (and (= Heap@13 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@2) (store (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@2) xs@@42 next ys@0) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@2) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@2) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@2) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@2) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@2) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@2) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@2) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@2))) (state Heap@13 Mask@9)) (=> (and (and (and (state Heap@13 Mask@9) (= i@1 (+ i@0 1))) (and (state Heap@13 Mask@9) (= Heap@22 Heap@13))) (and (and (= ys@1 xs@@42) (= Mask@15 Mask@9)) (and (= i@2 i@1) (= (ControlFlow 0 52) 51)))) anon89_correct))))))))
(let ((anon155_Else_correct  (=> (and (not (ascending Heap@9 arg_xs@0)) (= (ControlFlow 0 55) 52)) anon88_correct)))
(let ((anon155_Then_correct  (=> (and (and (ascending Heap@9 arg_xs@0) (state ExhaleHeap@2 Mask@9)) (and (ascending ExhaleHeap@2 ys@0) (= (ControlFlow 0 54) 52))) anon88_correct)))
(let ((anon86_correct  (=> (and (and (state ExhaleHeap@2 Mask@9) (= (length_1 ExhaleHeap@2 ys@0) (+ (length_1 Heap@9 arg_xs@0) 1))) (and (state ExhaleHeap@2 Mask@9) (|Seq#Equal_7600| (elems ExhaleHeap@2 ys@0) (|Seq#Append_3004| (|Seq#Append_3004| (|Seq#Drop_7600| (|Seq#Take_7600| (elems Heap@9 arg_xs@0) i@0) 0) (|Seq#Singleton_3004| y@@0)) (|Seq#Drop_7600| (elems Heap@9 arg_xs@0) i@0))))) (and (=> (= (ControlFlow 0 56) 54) anon155_Then_correct) (=> (= (ControlFlow 0 56) 55) anon155_Else_correct)))))
(let ((anon154_Else_correct  (=> (and (not (= i@0 0)) (= (ControlFlow 0 58) 56)) anon86_correct)))
(let ((anon154_Then_correct  (=> (and (and (= i@0 0) (state ExhaleHeap@2 Mask@9)) (and (= (head_2 ExhaleHeap@2 ys@0) y@@0) (= (ControlFlow 0 57) 56))) anon86_correct)))
(let ((anon153_Else_correct  (=> (>= 0 i@0) (and (=> (= (ControlFlow 0 60) 57) anon154_Then_correct) (=> (= (ControlFlow 0 60) 58) anon154_Else_correct)))))
(let ((anon153_Then_correct  (=> (> i@0 0) (=> (and (state ExhaleHeap@2 Mask@9) (= (head_2 ExhaleHeap@2 ys@0) (head_2 Heap@9 arg_xs@0))) (and (=> (= (ControlFlow 0 59) 57) anon154_Then_correct) (=> (= (ControlFlow 0 59) 58) anon154_Else_correct))))))
(let ((anon82_correct  (=> (= Mask@8 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@5) null (list arg_xs@0) (- (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@5) null (list arg_xs@0)) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@5))) (and (=> (= (ControlFlow 0 61) (- 0 62)) (not (= arg_xs@0 null))) (=> (not (= arg_xs@0 null)) (=> (IdenticalOnKnownLocations Heap@9 ExhaleHeap@2 Mask@8) (=> (and (= Mask@9 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@8) null (list ys@0) (+ (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@8) null (list ys@0)) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@8) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@8) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@8) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@8) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@8) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@8) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@8) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@8) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@8))) (state ExhaleHeap@2 Mask@9)) (=> (and (and (not (= ys@0 null)) (<= 0 i@0)) (and (state ExhaleHeap@2 Mask@9) (<= i@0 (length_1 Heap@9 arg_xs@0)))) (and (=> (= (ControlFlow 0 61) 59) anon153_Then_correct) (=> (= (ControlFlow 0 61) 60) anon153_Else_correct))))))))))
(let ((anon152_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 65) 61)) anon82_correct)))
(let ((anon152_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 63) (- 0 64)) (<= FullPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@5) null (list arg_xs@0)))) (=> (<= FullPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@5) null (list arg_xs@0))) (=> (= (ControlFlow 0 63) 61) anon82_correct))))))
(let ((anon145_Else_correct  (=> (< (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@9) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@9) xs@@42 next) val) y@@0) (and (=> (= (ControlFlow 0 66) (- 0 67)) (HasDirectPerm_20632_20633 Mask@5 xs@@42 next)) (=> (HasDirectPerm_20632_20633 Mask@5 xs@@42 next) (=> (= arg_xs@0 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@9) xs@@42 next)) (and (=> (= (ControlFlow 0 66) 63) anon152_Then_correct) (=> (= (ControlFlow 0 66) 65) anon152_Else_correct))))))))
(let ((anon66_correct  (=> (state Heap@9 Mask@5) (and (=> (= (ControlFlow 0 95) 91) anon145_Then_correct) (=> (= (ControlFlow 0 95) 66) anon145_Else_correct)))))
(let ((anon144_Else_correct  (=> (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next) next) null) (=> (and (= Heap@9 Heap@7) (= (ControlFlow 0 97) 95)) anon66_correct))))
(let ((anon144_Then_correct  (=> (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next) next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_23 T@Ref) (f_13 T@Field_40079_40080) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next)))) o_23 f_13) (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next) next)))) o_23 f_13)) (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| newPMask@1) o_23 f_13))
 :qid |stdinbpl.3184:41|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| newPMask@1) o_23 f_13))
)) (forall ((o_23@@0 T@Ref) (f_13@@0 T@Field_46134_3004) ) (!  (=> (or (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next)))) o_23@@0 f_13@@0) (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next) next)))) o_23@@0 f_13@@0)) (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| newPMask@1) o_23@@0 f_13@@0))
 :qid |stdinbpl.3184:41|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| newPMask@1) o_23@@0 f_13@@0))
))) (forall ((o_23@@1 T@Ref) (f_13@@1 T@Field_40066_53) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next)))) o_23@@1 f_13@@1) (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next) next)))) o_23@@1 f_13@@1)) (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| newPMask@1) o_23@@1 f_13@@1))
 :qid |stdinbpl.3184:41|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| newPMask@1) o_23@@1 f_13@@1))
))) (forall ((o_23@@2 T@Ref) (f_13@@2 T@Field_20632_20924) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next)))) o_23@@2 f_13@@2) (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next) next)))) o_23@@2 f_13@@2)) (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| newPMask@1) o_23@@2 f_13@@2))
 :qid |stdinbpl.3184:41|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| newPMask@1) o_23@@2 f_13@@2))
))) (forall ((o_23@@3 T@Ref) (f_13@@3 T@Field_20632_49495) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next)))) o_23@@3 f_13@@3) (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next) next)))) o_23@@3 f_13@@3)) (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| newPMask@1) o_23@@3 f_13@@3))
 :qid |stdinbpl.3184:41|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| newPMask@1) o_23@@3 f_13@@3))
))) (forall ((o_23@@4 T@Ref) (f_13@@4 T@Field_20923_20633) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next)))) o_23@@4 f_13@@4) (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next) next)))) o_23@@4 f_13@@4)) (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| newPMask@1) o_23@@4 f_13@@4))
 :qid |stdinbpl.3184:41|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| newPMask@1) o_23@@4 f_13@@4))
))) (forall ((o_23@@5 T@Ref) (f_13@@5 T@Field_20923_3004) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next)))) o_23@@5 f_13@@5) (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next) next)))) o_23@@5 f_13@@5)) (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| newPMask@1) o_23@@5 f_13@@5))
 :qid |stdinbpl.3184:41|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| newPMask@1) o_23@@5 f_13@@5))
))) (forall ((o_23@@6 T@Ref) (f_13@@6 T@Field_20923_53) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next)))) o_23@@6 f_13@@6) (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next) next)))) o_23@@6 f_13@@6)) (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| newPMask@1) o_23@@6 f_13@@6))
 :qid |stdinbpl.3184:41|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| newPMask@1) o_23@@6 f_13@@6))
))) (forall ((o_23@@7 T@Ref) (f_13@@7 T@Field_46529_46530) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next)))) o_23@@7 f_13@@7) (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next) next)))) o_23@@7 f_13@@7)) (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| newPMask@1) o_23@@7 f_13@@7))
 :qid |stdinbpl.3184:41|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| newPMask@1) o_23@@7 f_13@@7))
))) (forall ((o_23@@8 T@Ref) (f_13@@8 T@Field_49490_49495) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next)))) o_23@@8 f_13@@8) (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next) next)))) o_23@@8 f_13@@8)) (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| newPMask@1) o_23@@8 f_13@@8))
 :qid |stdinbpl.3184:41|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| newPMask@1) o_23@@8 f_13@@8))
))) (= Heap@8 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@7) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@7) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@7) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@7) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@7) xs@@42 next)) newPMask@1) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@7) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@7) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@7) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@7) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@7)))) (and (= Heap@9 Heap@8) (= (ControlFlow 0 96) 95))) anon66_correct))))
(let ((anon64_correct  (=> (state Heap@5 Mask@5) (=> (and (= Heap@6 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@5) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@5) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@5) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@5) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@5) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@5) xs@@42 next)) (PolymorphicMapType_40555 (store (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@5) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@5) xs@@42 next)))) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@5) xs@@42 next) next true) (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@5) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@5) xs@@42 next)))) (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@5) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@5) xs@@42 next)))) (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@5) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@5) xs@@42 next)))) (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@5) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@5) xs@@42 next)))) (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@5) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@5) xs@@42 next)))) (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@5) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@5) xs@@42 next)))) (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@5) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@5) xs@@42 next)))) (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@5) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@5) xs@@42 next)))) (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@5) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@5) xs@@42 next)))))) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@5) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@5) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@5) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@5) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@5))) (= Heap@7 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@6) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@6) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@6) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@6) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@6) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@6) xs@@42 next)) (PolymorphicMapType_40555 (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@6) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@6) xs@@42 next)))) (store (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@6) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@6) xs@@42 next)))) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@6) xs@@42 next) val true) (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@6) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@6) xs@@42 next)))) (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@6) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@6) xs@@42 next)))) (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@6) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@6) xs@@42 next)))) (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@6) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@6) xs@@42 next)))) (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@6) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@6) xs@@42 next)))) (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@6) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@6) xs@@42 next)))) (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@6) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@6) xs@@42 next)))) (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@6) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@6) xs@@42 next)))))) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@6) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@6) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@6) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@6) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@6)))) (and (=> (= (ControlFlow 0 98) 96) anon144_Then_correct) (=> (= (ControlFlow 0 98) 97) anon144_Else_correct))))))
(let ((anon143_Else_correct  (=> (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next) next) null) (=> (and (= Heap@5 Heap@3) (= (ControlFlow 0 100) 98)) anon64_correct))))
(let ((anon143_Then_correct  (=> (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next) next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_41 T@Ref) (f_21 T@Field_40079_40080) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next)))) o_41 f_21) (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next) next)))) o_41 f_21)) (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| newPMask@0) o_41 f_21))
 :qid |stdinbpl.3171:41|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| newPMask@0) o_41 f_21))
)) (forall ((o_41@@0 T@Ref) (f_21@@0 T@Field_46134_3004) ) (!  (=> (or (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next)))) o_41@@0 f_21@@0) (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next) next)))) o_41@@0 f_21@@0)) (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| newPMask@0) o_41@@0 f_21@@0))
 :qid |stdinbpl.3171:41|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| newPMask@0) o_41@@0 f_21@@0))
))) (forall ((o_41@@1 T@Ref) (f_21@@1 T@Field_40066_53) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next)))) o_41@@1 f_21@@1) (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next) next)))) o_41@@1 f_21@@1)) (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| newPMask@0) o_41@@1 f_21@@1))
 :qid |stdinbpl.3171:41|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| newPMask@0) o_41@@1 f_21@@1))
))) (forall ((o_41@@2 T@Ref) (f_21@@2 T@Field_20632_20924) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next)))) o_41@@2 f_21@@2) (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next) next)))) o_41@@2 f_21@@2)) (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| newPMask@0) o_41@@2 f_21@@2))
 :qid |stdinbpl.3171:41|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| newPMask@0) o_41@@2 f_21@@2))
))) (forall ((o_41@@3 T@Ref) (f_21@@3 T@Field_20632_49495) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next)))) o_41@@3 f_21@@3) (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next) next)))) o_41@@3 f_21@@3)) (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| newPMask@0) o_41@@3 f_21@@3))
 :qid |stdinbpl.3171:41|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| newPMask@0) o_41@@3 f_21@@3))
))) (forall ((o_41@@4 T@Ref) (f_21@@4 T@Field_20923_20633) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next)))) o_41@@4 f_21@@4) (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next) next)))) o_41@@4 f_21@@4)) (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| newPMask@0) o_41@@4 f_21@@4))
 :qid |stdinbpl.3171:41|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| newPMask@0) o_41@@4 f_21@@4))
))) (forall ((o_41@@5 T@Ref) (f_21@@5 T@Field_20923_3004) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next)))) o_41@@5 f_21@@5) (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next) next)))) o_41@@5 f_21@@5)) (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| newPMask@0) o_41@@5 f_21@@5))
 :qid |stdinbpl.3171:41|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| newPMask@0) o_41@@5 f_21@@5))
))) (forall ((o_41@@6 T@Ref) (f_21@@6 T@Field_20923_53) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next)))) o_41@@6 f_21@@6) (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next) next)))) o_41@@6 f_21@@6)) (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| newPMask@0) o_41@@6 f_21@@6))
 :qid |stdinbpl.3171:41|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| newPMask@0) o_41@@6 f_21@@6))
))) (forall ((o_41@@7 T@Ref) (f_21@@7 T@Field_46529_46530) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next)))) o_41@@7 f_21@@7) (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next) next)))) o_41@@7 f_21@@7)) (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| newPMask@0) o_41@@7 f_21@@7))
 :qid |stdinbpl.3171:41|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| newPMask@0) o_41@@7 f_21@@7))
))) (forall ((o_41@@8 T@Ref) (f_21@@8 T@Field_49490_49495) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next)))) o_41@@8 f_21@@8) (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next) next)))) o_41@@8 f_21@@8)) (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| newPMask@0) o_41@@8 f_21@@8))
 :qid |stdinbpl.3171:41|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| newPMask@0) o_41@@8 f_21@@8))
))) (= Heap@4 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@3) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@3) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@3) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@3) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next)) newPMask@0) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@3) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@3) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@3) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@3) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@3)))) (and (= Heap@5 Heap@4) (= (ControlFlow 0 99) 98))) anon64_correct))))
(let ((anon62_correct  (=> (state Heap@1 UnfoldingMask@4) (and (=> (= (ControlFlow 0 101) (- 0 104)) (HasDirectPerm_20632_20633 UnfoldingMask@4 xs@@42 next)) (=> (HasDirectPerm_20632_20633 UnfoldingMask@4 xs@@42 next) (and (=> (= (ControlFlow 0 101) (- 0 103)) (HasDirectPerm_20632_20633 UnfoldingMask@4 xs@@42 next)) (=> (HasDirectPerm_20632_20633 UnfoldingMask@4 xs@@42 next) (and (=> (= (ControlFlow 0 101) (- 0 102)) (HasDirectPerm_20635_3004 UnfoldingMask@4 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) val)) (=> (HasDirectPerm_20635_3004 UnfoldingMask@4 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) val) (=> (and (= Heap@2 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@1) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@1) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@1) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)) (PolymorphicMapType_40555 (store (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) next true) (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))))) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@1) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@1) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@1) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@1) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@1))) (= Heap@3 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@2) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@2) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@2) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@2) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@2) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@2) xs@@42 next)) (PolymorphicMapType_40555 (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@2) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@2) xs@@42 next)))) (store (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@2) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@2) xs@@42 next)))) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@2) xs@@42 next) val true) (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@2) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@2) xs@@42 next)))) (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@2) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@2) xs@@42 next)))) (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@2) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@2) xs@@42 next)))) (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@2) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@2) xs@@42 next)))) (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@2) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@2) xs@@42 next)))) (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@2) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@2) xs@@42 next)))) (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@2) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@2) xs@@42 next)))) (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@2) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@2) xs@@42 next)))))) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@2) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@2) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@2) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@2) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@2)))) (and (=> (= (ControlFlow 0 101) 99) anon143_Then_correct) (=> (= (ControlFlow 0 101) 100) anon143_Else_correct))))))))))))
(let ((anon142_Else_correct  (=> (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) next) null) (=> (and (= UnfoldingMask@4 UnfoldingMask@2) (= (ControlFlow 0 106) 101)) anon62_correct))))
(let ((anon142_Then_correct  (=> (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) next) null)) (=> (and (= UnfoldingMask@3 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| UnfoldingMask@2) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) next)) (+ (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| UnfoldingMask@2) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) next))) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| UnfoldingMask@2) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| UnfoldingMask@2) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| UnfoldingMask@2) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| UnfoldingMask@2) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| UnfoldingMask@2) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| UnfoldingMask@2) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| UnfoldingMask@2) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| UnfoldingMask@2) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| UnfoldingMask@2))) (InsidePredicate_20923_20923 (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@1) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next))) (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) next)) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@1) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) next))))) (=> (and (and (state Heap@1 UnfoldingMask@3) (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) next) null))) (and (= UnfoldingMask@4 UnfoldingMask@3) (= (ControlFlow 0 105) 101))) anon62_correct)))))
(let ((anon60_correct  (=> (= UnfoldingMask@0 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@5) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)) (- (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@5) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next))) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@5) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@5))) (=> (and (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) null)) (= UnfoldingMask@1 (PolymorphicMapType_40027 (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| UnfoldingMask@0) (store (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| UnfoldingMask@0) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) next (+ (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| UnfoldingMask@0) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) next) FullPerm)) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| UnfoldingMask@0) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| UnfoldingMask@0) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| UnfoldingMask@0) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| UnfoldingMask@0) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| UnfoldingMask@0) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| UnfoldingMask@0) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| UnfoldingMask@0) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| UnfoldingMask@0)))) (=> (and (and (state Heap@1 UnfoldingMask@1) (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) null))) (and (= UnfoldingMask@2 (PolymorphicMapType_40027 (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| UnfoldingMask@1) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| UnfoldingMask@1) (store (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| UnfoldingMask@1) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) val (+ (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| UnfoldingMask@1) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) val) FullPerm)) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| UnfoldingMask@1) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| UnfoldingMask@1) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| UnfoldingMask@1) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| UnfoldingMask@1) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| UnfoldingMask@1) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| UnfoldingMask@1) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| UnfoldingMask@1))) (state Heap@1 UnfoldingMask@2))) (and (=> (= (ControlFlow 0 107) 105) anon142_Then_correct) (=> (= (ControlFlow 0 107) 106) anon142_Else_correct)))))))
(let ((anon141_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 110) 107)) anon60_correct)))
(let ((anon141_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 108) (- 0 109)) (<= FullPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@5) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next))))) (=> (<= FullPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@5) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) (=> (= (ControlFlow 0 108) 107) anon60_correct))))))
(let ((anon58_correct  (=> (and (and (state Heap@1 Mask@5) (state Heap@1 Mask@5)) (and (|list#trigger_20923| Heap@1 (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next))) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@1) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next))) (CombineFrames (FrameFragment_20633 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) next)) (CombineFrames (FrameFragment_3004 (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@1) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) val)) (FrameFragment_20924 (ite (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) next) null)) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@1) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) next))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 111) 108) anon141_Then_correct) (=> (= (ControlFlow 0 111) 110) anon141_Else_correct)))))
(let ((anon140_Else_correct  (=> (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) null) (=> (and (= Mask@5 Mask@3) (= (ControlFlow 0 113) 111)) anon58_correct))))
(let ((anon140_Then_correct  (=> (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) null)) (=> (and (= Mask@4 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@3) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)) (+ (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@3) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next))) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@3) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@3) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@3) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@3) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@3) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@3) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@3) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@3) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@3))) (InsidePredicate_20923_20923 (list xs@@42) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@1) null (list xs@@42)) (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@1) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next))))) (=> (and (and (state Heap@1 Mask@4) (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) null))) (and (= Mask@5 Mask@4) (= (ControlFlow 0 112) 111))) anon58_correct)))))
(let ((anon56_correct  (=> (and (not (= xs@@42 null)) (= Mask@2 (PolymorphicMapType_40027 (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@1) (store (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@1) xs@@42 next (+ (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@1) xs@@42 next) FullPerm)) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@1) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@1) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@1) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@1) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@1) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@1) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@1) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@1)))) (=> (and (and (state Heap@1 Mask@2) (not (= xs@@42 null))) (and (= Mask@3 (PolymorphicMapType_40027 (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@2) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@2) (store (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@2) xs@@42 val (+ (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@2) xs@@42 val) FullPerm)) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@2) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@2) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@2) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@2) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@2) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@2) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@2))) (state Heap@1 Mask@3))) (and (=> (= (ControlFlow 0 114) 112) anon140_Then_correct) (=> (= (ControlFlow 0 114) 113) anon140_Else_correct))))))
(let ((anon139_Else_correct  (=> (HasDirectPerm_20923_20924 Mask@1 null (list xs@@42)) (=> (and (= Heap@1 Heap@@69) (= (ControlFlow 0 116) 114)) anon56_correct))))
(let ((anon139_Then_correct  (=> (and (and (not (HasDirectPerm_20923_20924 Mask@1 null (list xs@@42))) (= Heap@0 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@69) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) (store (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@69) null (list xs@@42) newVersion@0) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@69) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@69) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@69) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@69) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@69) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@69) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@69)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 115) 114))) anon56_correct)))
(let ((anon54_correct  (=> (= Mask@1 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42) (- (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42)) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@0))) (and (=> (= (ControlFlow 0 117) 115) anon139_Then_correct) (=> (= (ControlFlow 0 117) 116) anon139_Else_correct)))))
(let ((anon138_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 120) 117)) anon54_correct)))
(let ((anon138_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 118) (- 0 119)) (<= FullPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42)))) (=> (<= FullPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42))) (=> (= (ControlFlow 0 118) 117) anon54_correct))))))
(let ((anon132_Else_correct  (=> (not (= (tail_2 Heap@@69 xs@@42) null)) (=> (and (|list#trigger_20923| Heap@@69 (list xs@@42)) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@69) null (list xs@@42)) (CombineFrames (FrameFragment_20633 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next)) (CombineFrames (FrameFragment_3004 (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@69) xs@@42 val)) (FrameFragment_20924 (ite (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next) null)) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@69) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next))) EmptyFrame)))))) (and (=> (= (ControlFlow 0 121) 118) anon138_Then_correct) (=> (= (ControlFlow 0 121) 120) anon138_Else_correct))))))
(let ((anon131_Then_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42)))) (=> (= (ControlFlow 0 5) (- 0 4)) (not (= xs@@42 null)))))))
(let ((anon128_Else_correct  (=> (< (head_2 Heap@@69 xs@@42) y@@0) (and (and (=> (= (ControlFlow 0 142) 5) anon131_Then_correct) (=> (= (ControlFlow 0 142) 141) anon132_Then_correct)) (=> (= (ControlFlow 0 142) 121) anon132_Else_correct)))))
(let ((anon127_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42)))) (=> (= (ControlFlow 0 2) (- 0 1)) (not (= xs@@42 null)))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@69 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@69) xs@@42 $allocated))) (and (and (= Mask@0 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| ZeroMask) null (list xs@@42) (+ (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| ZeroMask) null (list xs@@42)) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| ZeroMask))) (state Heap@@69 Mask@0)) (and (not (= xs@@42 null)) (state Heap@@69 Mask@0)))) (and (and (and (=> (= (ControlFlow 0 200) 199) anon112_Then_correct) (=> (= (ControlFlow 0 200) 2) anon127_Then_correct)) (=> (= (ControlFlow 0 200) 151) anon128_Then_correct)) (=> (= (ControlFlow 0 200) 142) anon128_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 201) 200) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
