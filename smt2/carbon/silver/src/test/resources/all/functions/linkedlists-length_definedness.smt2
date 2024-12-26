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
(declare-fun sum (T@PolymorphicMapType_40006 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun null () T@Ref)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun length (T@PolymorphicMapType_40006 T@Ref) Int)
(declare-fun head_3 (T@PolymorphicMapType_40006 T@Ref) Int)
(declare-fun tail_2 (T@PolymorphicMapType_40006 T@Ref) T@Ref)
(declare-fun last_1 (T@PolymorphicMapType_40006 T@Ref) Int)
(declare-fun elems_1 (T@PolymorphicMapType_40006 T@Ref) T@Seq_2867)
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
(assert (forall ((Heap@@10 T@PolymorphicMapType_40006) (Mask@@0 T@PolymorphicMapType_40027) (xs@@10 T@Ref) ) (!  (=> (and (state Heap@@10 Mask@@0) (< AssumeFunctionsAbove 1)) (=> (not (= xs@@10 null)) (= (sum Heap@@10 xs@@10) (+ (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@10) xs@@10 val) (ite (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@10) xs@@10 next) null) 0 (|sum'| Heap@@10 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@10) xs@@10 next)))))))
 :qid |stdinbpl.726:15|
 :skolemid |66|
 :pattern ( (state Heap@@10 Mask@@0) (sum Heap@@10 xs@@10))
 :pattern ( (state Heap@@10 Mask@@0) (|sum#triggerStateless| xs@@10) (|list#trigger_20923| Heap@@10 (list xs@@10)))
)))
(assert (forall ((s@@3 T@Seq_2867) (x@@0 Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x@@0) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x@@0)) (< (|Seq#Skolem_2867| s@@3 x@@0) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x@@0)) x@@0)))
 :qid |stdinbpl.403:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_40006) (xs@@11 T@Ref) ) (!  (and (= (length Heap@@11 xs@@11) (|length'| Heap@@11 xs@@11)) (dummyFunction_3287 (|length#triggerStateless| xs@@11)))
 :qid |stdinbpl.569:15|
 :skolemid |58|
 :pattern ( (length Heap@@11 xs@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_40006) (xs@@12 T@Ref) ) (!  (and (= (sum Heap@@12 xs@@12) (|sum'| Heap@@12 xs@@12)) (dummyFunction_3287 (|sum#triggerStateless| xs@@12)))
 :qid |stdinbpl.716:15|
 :skolemid |64|
 :pattern ( (sum Heap@@12 xs@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_40006) (xs@@13 T@Ref) ) (!  (and (= (head_3 Heap@@13 xs@@13) (|head'| Heap@@13 xs@@13)) (dummyFunction_3287 (|head#triggerStateless| xs@@13)))
 :qid |stdinbpl.853:15|
 :skolemid |69|
 :pattern ( (head_3 Heap@@13 xs@@13))
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
(assert (forall ((Heap@@16 T@PolymorphicMapType_40006) (xs@@16 T@Ref) ) (!  (and (= (elems_1 Heap@@16 xs@@16) (|elems'| Heap@@16 xs@@16)) (dummyFunction_69361 (|elems#triggerStateless| xs@@16)))
 :qid |stdinbpl.1348:15|
 :skolemid |89|
 :pattern ( (elems_1 Heap@@16 xs@@16))
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
(assert (forall ((Heap@@17 T@PolymorphicMapType_40006) (ExhaleHeap T@PolymorphicMapType_40006) (Mask@@1 T@PolymorphicMapType_40027) (pm_f_53 T@Field_46529_46530) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_20923_20924 Mask@@1 null pm_f_53) (IsPredicateField_20923_20924 pm_f_53)) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@17) null (PredicateMaskField_20923 pm_f_53)) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap) null (PredicateMaskField_20923 pm_f_53)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap Mask@@1) (IsPredicateField_20923_20924 pm_f_53) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap) null (PredicateMaskField_20923 pm_f_53)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_40006) (ExhaleHeap@@0 T@PolymorphicMapType_40006) (Mask@@2 T@PolymorphicMapType_40027) (pm_f_53@@0 T@Field_20632_20924) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_20632_20924 Mask@@2 null pm_f_53@@0) (IsPredicateField_20632_141175 pm_f_53@@0)) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@18) null (PredicateMaskField_20632 pm_f_53@@0)) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@0) null (PredicateMaskField_20632 pm_f_53@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@0 Mask@@2) (IsPredicateField_20632_141175 pm_f_53@@0) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@0) null (PredicateMaskField_20632 pm_f_53@@0)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_40006) (ExhaleHeap@@1 T@PolymorphicMapType_40006) (Mask@@3 T@PolymorphicMapType_40027) (pm_f_53@@1 T@Field_46529_46530) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_20923_20924 Mask@@3 null pm_f_53@@1) (IsWandField_20923_144845 pm_f_53@@1)) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@19) null (WandMaskField_20923 pm_f_53@@1)) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@1) null (WandMaskField_20923 pm_f_53@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@1 Mask@@3) (IsWandField_20923_144845 pm_f_53@@1) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@1) null (WandMaskField_20923 pm_f_53@@1)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_40006) (ExhaleHeap@@2 T@PolymorphicMapType_40006) (Mask@@4 T@PolymorphicMapType_40027) (pm_f_53@@2 T@Field_20632_20924) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_20632_20924 Mask@@4 null pm_f_53@@2) (IsWandField_20632_144488 pm_f_53@@2)) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@20) null (WandMaskField_20632 pm_f_53@@2)) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@2) null (WandMaskField_20632 pm_f_53@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@2 Mask@@4) (IsWandField_20632_144488 pm_f_53@@2) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@2) null (WandMaskField_20632 pm_f_53@@2)))
)))
(assert (forall ((x@@1 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3004| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.528:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3004| x@@1) y))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_40006) (Mask@@5 T@PolymorphicMapType_40027) (xs@@17 T@Ref) ) (!  (=> (and (state Heap@@21 Mask@@5) (< AssumeFunctionsAbove 8)) (=> (not (= xs@@17 null)) (= (length Heap@@21 xs@@17) (+ 1 (ite (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@21) xs@@17 next) null) 0 (|length'| Heap@@21 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@21) xs@@17 next)))))))
 :qid |stdinbpl.579:15|
 :skolemid |60|
 :pattern ( (state Heap@@21 Mask@@5) (length Heap@@21 xs@@17))
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
(assert (forall ((Heap@@23 T@PolymorphicMapType_40006) (ExhaleHeap@@3 T@PolymorphicMapType_40006) (Mask@@7 T@PolymorphicMapType_40027) (pm_f_53@@3 T@Field_46529_46530) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@3 Mask@@7) (=> (and (HasDirectPerm_20923_20924 Mask@@7 null pm_f_53@@3) (IsPredicateField_20923_20924 pm_f_53@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_53 T@Ref) (f_86 T@Field_40079_40080) ) (!  (=> (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53 f_86) (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@23) o2_53 f_86) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53 f_86)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53 f_86))
)) (forall ((o2_53@@0 T@Ref) (f_86@@0 T@Field_46134_3004) ) (!  (=> (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53@@0 f_86@@0) (= (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@23) o2_53@@0 f_86@@0) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@0 f_86@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@0 f_86@@0))
))) (forall ((o2_53@@1 T@Ref) (f_86@@1 T@Field_40066_53) ) (!  (=> (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53@@1 f_86@@1) (= (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@23) o2_53@@1 f_86@@1) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@1 f_86@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@1 f_86@@1))
))) (forall ((o2_53@@2 T@Ref) (f_86@@2 T@Field_20632_20924) ) (!  (=> (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53@@2 f_86@@2) (= (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@23) o2_53@@2 f_86@@2) (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@2 f_86@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@2 f_86@@2))
))) (forall ((o2_53@@3 T@Ref) (f_86@@3 T@Field_20632_49495) ) (!  (=> (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53@@3 f_86@@3) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@23) o2_53@@3 f_86@@3) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@3 f_86@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@3 f_86@@3))
))) (forall ((o2_53@@4 T@Ref) (f_86@@4 T@Field_20923_20633) ) (!  (=> (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53@@4 f_86@@4) (= (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@23) o2_53@@4 f_86@@4) (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@4 f_86@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@4 f_86@@4))
))) (forall ((o2_53@@5 T@Ref) (f_86@@5 T@Field_20923_3004) ) (!  (=> (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53@@5 f_86@@5) (= (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@23) o2_53@@5 f_86@@5) (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@5 f_86@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@5 f_86@@5))
))) (forall ((o2_53@@6 T@Ref) (f_86@@6 T@Field_20923_53) ) (!  (=> (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53@@6 f_86@@6) (= (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@23) o2_53@@6 f_86@@6) (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@6 f_86@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@6 f_86@@6))
))) (forall ((o2_53@@7 T@Ref) (f_86@@7 T@Field_46529_46530) ) (!  (=> (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53@@7 f_86@@7) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@23) o2_53@@7 f_86@@7) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@7 f_86@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@7 f_86@@7))
))) (forall ((o2_53@@8 T@Ref) (f_86@@8 T@Field_49490_49495) ) (!  (=> (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53@@8 f_86@@8) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) o2_53@@8 f_86@@8) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@8 f_86@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@8 f_86@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@3 Mask@@7) (IsPredicateField_20923_20924 pm_f_53@@3))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_40006) (ExhaleHeap@@4 T@PolymorphicMapType_40006) (Mask@@8 T@PolymorphicMapType_40027) (pm_f_53@@4 T@Field_20632_20924) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@4 Mask@@8) (=> (and (HasDirectPerm_20632_20924 Mask@@8 null pm_f_53@@4) (IsPredicateField_20632_141175 pm_f_53@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_53@@9 T@Ref) (f_86@@9 T@Field_40079_40080) ) (!  (=> (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@9 f_86@@9) (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@24) o2_53@@9 f_86@@9) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@9 f_86@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@9 f_86@@9))
)) (forall ((o2_53@@10 T@Ref) (f_86@@10 T@Field_46134_3004) ) (!  (=> (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@10 f_86@@10) (= (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@24) o2_53@@10 f_86@@10) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@10 f_86@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@10 f_86@@10))
))) (forall ((o2_53@@11 T@Ref) (f_86@@11 T@Field_40066_53) ) (!  (=> (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@11 f_86@@11) (= (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@24) o2_53@@11 f_86@@11) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@11 f_86@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@11 f_86@@11))
))) (forall ((o2_53@@12 T@Ref) (f_86@@12 T@Field_20632_20924) ) (!  (=> (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@12 f_86@@12) (= (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@24) o2_53@@12 f_86@@12) (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@12 f_86@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@12 f_86@@12))
))) (forall ((o2_53@@13 T@Ref) (f_86@@13 T@Field_20632_49495) ) (!  (=> (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@13 f_86@@13) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) o2_53@@13 f_86@@13) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@13 f_86@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@13 f_86@@13))
))) (forall ((o2_53@@14 T@Ref) (f_86@@14 T@Field_20923_20633) ) (!  (=> (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@14 f_86@@14) (= (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@24) o2_53@@14 f_86@@14) (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@14 f_86@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@14 f_86@@14))
))) (forall ((o2_53@@15 T@Ref) (f_86@@15 T@Field_20923_3004) ) (!  (=> (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@15 f_86@@15) (= (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@24) o2_53@@15 f_86@@15) (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@15 f_86@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@15 f_86@@15))
))) (forall ((o2_53@@16 T@Ref) (f_86@@16 T@Field_20923_53) ) (!  (=> (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@16 f_86@@16) (= (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@24) o2_53@@16 f_86@@16) (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@16 f_86@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@16 f_86@@16))
))) (forall ((o2_53@@17 T@Ref) (f_86@@17 T@Field_46529_46530) ) (!  (=> (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@17 f_86@@17) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@24) o2_53@@17 f_86@@17) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@17 f_86@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@17 f_86@@17))
))) (forall ((o2_53@@18 T@Ref) (f_86@@18 T@Field_49490_49495) ) (!  (=> (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@18 f_86@@18) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@24) o2_53@@18 f_86@@18) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@18 f_86@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@18 f_86@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@4 Mask@@8) (IsPredicateField_20632_141175 pm_f_53@@4))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_40006) (ExhaleHeap@@5 T@PolymorphicMapType_40006) (Mask@@9 T@PolymorphicMapType_40027) (pm_f_53@@5 T@Field_46529_46530) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@5 Mask@@9) (=> (and (HasDirectPerm_20923_20924 Mask@@9 null pm_f_53@@5) (IsWandField_20923_144845 pm_f_53@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_53@@19 T@Ref) (f_86@@19 T@Field_40079_40080) ) (!  (=> (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@19 f_86@@19) (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@25) o2_53@@19 f_86@@19) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@19 f_86@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@19 f_86@@19))
)) (forall ((o2_53@@20 T@Ref) (f_86@@20 T@Field_46134_3004) ) (!  (=> (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@20 f_86@@20) (= (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@25) o2_53@@20 f_86@@20) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@20 f_86@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@20 f_86@@20))
))) (forall ((o2_53@@21 T@Ref) (f_86@@21 T@Field_40066_53) ) (!  (=> (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@21 f_86@@21) (= (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@25) o2_53@@21 f_86@@21) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@21 f_86@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@21 f_86@@21))
))) (forall ((o2_53@@22 T@Ref) (f_86@@22 T@Field_20632_20924) ) (!  (=> (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@22 f_86@@22) (= (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@25) o2_53@@22 f_86@@22) (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@22 f_86@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@22 f_86@@22))
))) (forall ((o2_53@@23 T@Ref) (f_86@@23 T@Field_20632_49495) ) (!  (=> (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@23 f_86@@23) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@25) o2_53@@23 f_86@@23) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@23 f_86@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@23 f_86@@23))
))) (forall ((o2_53@@24 T@Ref) (f_86@@24 T@Field_20923_20633) ) (!  (=> (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@24 f_86@@24) (= (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@25) o2_53@@24 f_86@@24) (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@24 f_86@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@24 f_86@@24))
))) (forall ((o2_53@@25 T@Ref) (f_86@@25 T@Field_20923_3004) ) (!  (=> (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@25 f_86@@25) (= (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@25) o2_53@@25 f_86@@25) (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@25 f_86@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@25 f_86@@25))
))) (forall ((o2_53@@26 T@Ref) (f_86@@26 T@Field_20923_53) ) (!  (=> (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@26 f_86@@26) (= (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@25) o2_53@@26 f_86@@26) (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@26 f_86@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@26 f_86@@26))
))) (forall ((o2_53@@27 T@Ref) (f_86@@27 T@Field_46529_46530) ) (!  (=> (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@27 f_86@@27) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@25) o2_53@@27 f_86@@27) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@27 f_86@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@27 f_86@@27))
))) (forall ((o2_53@@28 T@Ref) (f_86@@28 T@Field_49490_49495) ) (!  (=> (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@28 f_86@@28) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) o2_53@@28 f_86@@28) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@28 f_86@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@28 f_86@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@5 Mask@@9) (IsWandField_20923_144845 pm_f_53@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_40006) (ExhaleHeap@@6 T@PolymorphicMapType_40006) (Mask@@10 T@PolymorphicMapType_40027) (pm_f_53@@6 T@Field_20632_20924) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@6 Mask@@10) (=> (and (HasDirectPerm_20632_20924 Mask@@10 null pm_f_53@@6) (IsWandField_20632_144488 pm_f_53@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_53@@29 T@Ref) (f_86@@29 T@Field_40079_40080) ) (!  (=> (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@29 f_86@@29) (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@26) o2_53@@29 f_86@@29) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@29 f_86@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@29 f_86@@29))
)) (forall ((o2_53@@30 T@Ref) (f_86@@30 T@Field_46134_3004) ) (!  (=> (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@30 f_86@@30) (= (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@26) o2_53@@30 f_86@@30) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@30 f_86@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@30 f_86@@30))
))) (forall ((o2_53@@31 T@Ref) (f_86@@31 T@Field_40066_53) ) (!  (=> (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@31 f_86@@31) (= (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@26) o2_53@@31 f_86@@31) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@31 f_86@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@31 f_86@@31))
))) (forall ((o2_53@@32 T@Ref) (f_86@@32 T@Field_20632_20924) ) (!  (=> (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@32 f_86@@32) (= (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@26) o2_53@@32 f_86@@32) (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@32 f_86@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@32 f_86@@32))
))) (forall ((o2_53@@33 T@Ref) (f_86@@33 T@Field_20632_49495) ) (!  (=> (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@33 f_86@@33) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) o2_53@@33 f_86@@33) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@33 f_86@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@33 f_86@@33))
))) (forall ((o2_53@@34 T@Ref) (f_86@@34 T@Field_20923_20633) ) (!  (=> (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@34 f_86@@34) (= (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@26) o2_53@@34 f_86@@34) (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@34 f_86@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@34 f_86@@34))
))) (forall ((o2_53@@35 T@Ref) (f_86@@35 T@Field_20923_3004) ) (!  (=> (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@35 f_86@@35) (= (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@26) o2_53@@35 f_86@@35) (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@35 f_86@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@35 f_86@@35))
))) (forall ((o2_53@@36 T@Ref) (f_86@@36 T@Field_20923_53) ) (!  (=> (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@36 f_86@@36) (= (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@26) o2_53@@36 f_86@@36) (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@36 f_86@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@36 f_86@@36))
))) (forall ((o2_53@@37 T@Ref) (f_86@@37 T@Field_46529_46530) ) (!  (=> (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@37 f_86@@37) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@26) o2_53@@37 f_86@@37) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@37 f_86@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@37 f_86@@37))
))) (forall ((o2_53@@38 T@Ref) (f_86@@38 T@Field_49490_49495) ) (!  (=> (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@38 f_86@@38) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@26) o2_53@@38 f_86@@38) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@38 f_86@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@38 f_86@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@6 Mask@@10) (IsWandField_20632_144488 pm_f_53@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_40006) (Mask@@11 T@PolymorphicMapType_40027) (xs@@21 T@Ref) ) (!  (=> (and (state Heap@@27 Mask@@11) (< AssumeFunctionsAbove 2)) (=> (not (= xs@@21 null)) (= (ascending Heap@@27 xs@@21)  (or (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@27) xs@@21 next) null) (and (<= (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@27) xs@@21 val) (head_3 Heap@@27 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@27) xs@@21 next))) (|ascending'| Heap@@27 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@27) xs@@21 next)))))))
 :qid |stdinbpl.1656:15|
 :skolemid |101|
 :pattern ( (state Heap@@27 Mask@@11) (ascending Heap@@27 xs@@21))
 :pattern ( (state Heap@@27 Mask@@11) (|ascending#triggerStateless| xs@@21) (|list#trigger_20923| Heap@@27 (list xs@@21)) (|list#trigger_20923| Heap@@27 (list xs@@21)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@28 T@PolymorphicMapType_40006) (ExhaleHeap@@7 T@PolymorphicMapType_40006) (Mask@@12 T@PolymorphicMapType_40027) (o_61 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@7 Mask@@12) (=> (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@28) o_61 $allocated) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@7) o_61 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@7 Mask@@12) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@7) o_61 $allocated))
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
(assert (forall ((Heap@@30 T@PolymorphicMapType_40006) (ExhaleHeap@@9 T@PolymorphicMapType_40006) (Mask@@34 T@PolymorphicMapType_40027) (o_61@@0 T@Ref) (f_86@@39 T@Field_49490_49495) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@9 Mask@@34) (=> (HasDirectPerm_20923_140930 Mask@@34 o_61@@0 f_86@@39) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@30) o_61@@0 f_86@@39) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@9) o_61@@0 f_86@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@9 Mask@@34) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@9) o_61@@0 f_86@@39))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_40006) (ExhaleHeap@@10 T@PolymorphicMapType_40006) (Mask@@35 T@PolymorphicMapType_40027) (o_61@@1 T@Ref) (f_86@@40 T@Field_20923_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@10 Mask@@35) (=> (HasDirectPerm_20923_53 Mask@@35 o_61@@1 f_86@@40) (= (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@31) o_61@@1 f_86@@40) (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@10) o_61@@1 f_86@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@10 Mask@@35) (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@10) o_61@@1 f_86@@40))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_40006) (ExhaleHeap@@11 T@PolymorphicMapType_40006) (Mask@@36 T@PolymorphicMapType_40027) (o_61@@2 T@Ref) (f_86@@41 T@Field_46529_46530) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@11 Mask@@36) (=> (HasDirectPerm_20923_20924 Mask@@36 o_61@@2 f_86@@41) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@32) o_61@@2 f_86@@41) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@11) o_61@@2 f_86@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@11 Mask@@36) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@11) o_61@@2 f_86@@41))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_40006) (ExhaleHeap@@12 T@PolymorphicMapType_40006) (Mask@@37 T@PolymorphicMapType_40027) (o_61@@3 T@Ref) (f_86@@42 T@Field_20923_3004) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@12 Mask@@37) (=> (HasDirectPerm_20923_3004 Mask@@37 o_61@@3 f_86@@42) (= (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@33) o_61@@3 f_86@@42) (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@12) o_61@@3 f_86@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@12 Mask@@37) (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@12) o_61@@3 f_86@@42))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_40006) (ExhaleHeap@@13 T@PolymorphicMapType_40006) (Mask@@38 T@PolymorphicMapType_40027) (o_61@@4 T@Ref) (f_86@@43 T@Field_20923_20633) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@13 Mask@@38) (=> (HasDirectPerm_20923_20633 Mask@@38 o_61@@4 f_86@@43) (= (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@34) o_61@@4 f_86@@43) (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@13) o_61@@4 f_86@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@13 Mask@@38) (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@13) o_61@@4 f_86@@43))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_40006) (ExhaleHeap@@14 T@PolymorphicMapType_40006) (Mask@@39 T@PolymorphicMapType_40027) (o_61@@5 T@Ref) (f_86@@44 T@Field_20632_49495) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@14 Mask@@39) (=> (HasDirectPerm_20632_139789 Mask@@39 o_61@@5 f_86@@44) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@35) o_61@@5 f_86@@44) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@14) o_61@@5 f_86@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@14 Mask@@39) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@14) o_61@@5 f_86@@44))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_40006) (ExhaleHeap@@15 T@PolymorphicMapType_40006) (Mask@@40 T@PolymorphicMapType_40027) (o_61@@6 T@Ref) (f_86@@45 T@Field_40066_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@15 Mask@@40) (=> (HasDirectPerm_20632_53 Mask@@40 o_61@@6 f_86@@45) (= (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@36) o_61@@6 f_86@@45) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@15) o_61@@6 f_86@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@15 Mask@@40) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@15) o_61@@6 f_86@@45))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_40006) (ExhaleHeap@@16 T@PolymorphicMapType_40006) (Mask@@41 T@PolymorphicMapType_40027) (o_61@@7 T@Ref) (f_86@@46 T@Field_20632_20924) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@16 Mask@@41) (=> (HasDirectPerm_20632_20924 Mask@@41 o_61@@7 f_86@@46) (= (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@37) o_61@@7 f_86@@46) (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@16) o_61@@7 f_86@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@16 Mask@@41) (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@16) o_61@@7 f_86@@46))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_40006) (ExhaleHeap@@17 T@PolymorphicMapType_40006) (Mask@@42 T@PolymorphicMapType_40027) (o_61@@8 T@Ref) (f_86@@47 T@Field_46134_3004) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@17 Mask@@42) (=> (HasDirectPerm_20635_3004 Mask@@42 o_61@@8 f_86@@47) (= (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@38) o_61@@8 f_86@@47) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@17) o_61@@8 f_86@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@17 Mask@@42) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@17) o_61@@8 f_86@@47))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_40006) (ExhaleHeap@@18 T@PolymorphicMapType_40006) (Mask@@43 T@PolymorphicMapType_40027) (o_61@@9 T@Ref) (f_86@@48 T@Field_40079_40080) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@18 Mask@@43) (=> (HasDirectPerm_20632_20633 Mask@@43 o_61@@9 f_86@@48) (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@39) o_61@@9 f_86@@48) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@18) o_61@@9 f_86@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@18 Mask@@43) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@18) o_61@@9 f_86@@48))
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
(assert (forall ((Heap@@45 T@PolymorphicMapType_40006) (Mask@@48 T@PolymorphicMapType_40027) (xs@@27 T@Ref) ) (!  (=> (and (state Heap@@45 Mask@@48) (< AssumeFunctionsAbove 7)) (=> (not (= xs@@27 null)) (= (head_3 Heap@@45 xs@@27) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@45) xs@@27 val))))
 :qid |stdinbpl.863:15|
 :skolemid |71|
 :pattern ( (state Heap@@45 Mask@@48) (head_3 Heap@@45 xs@@27))
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
(assert (forall ((Heap@@54 T@PolymorphicMapType_40006) (Mask@@56 T@PolymorphicMapType_40027) (xs@@37 T@Ref) (index@@2 Int) ) (!  (=> (and (state Heap@@54 Mask@@56) (< AssumeFunctionsAbove 3)) (=> (and (not (= xs@@37 null)) (and (<= 0 index@@2) (< index@@2 (length Heap@@54 xs@@37)))) (= (get Heap@@54 xs@@37 index@@2) (ite (= index@@2 0) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@54) xs@@37 val) (|get'| Heap@@54 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@54) xs@@37 next) (- index@@2 1))))))
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
(assert (forall ((Heap@@55 T@PolymorphicMapType_40006) (o_60 T@Ref) (f_33 T@Field_49490_49495) (v@@2 T@PolymorphicMapType_40555) ) (! (succHeap Heap@@55 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@55) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@55) o_60 f_33 v@@2) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@55) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@55) o_60 f_33 v@@2) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_40006) (o_60@@0 T@Ref) (f_33@@0 T@Field_20923_3004) (v@@3 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@56) (store (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@56) o_60@@0 f_33@@0 v@@3) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@56) (store (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@56) o_60@@0 f_33@@0 v@@3) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_40006) (o_60@@1 T@Ref) (f_33@@1 T@Field_46529_46530) (v@@4 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@57) (store (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@57) o_60@@1 f_33@@1 v@@4) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@57) (store (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@57) o_60@@1 f_33@@1 v@@4) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_40006) (o_60@@2 T@Ref) (f_33@@2 T@Field_20923_20633) (v@@5 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@58) (store (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@58) o_60@@2 f_33@@2 v@@5) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@58) (store (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@58) o_60@@2 f_33@@2 v@@5) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_40006) (o_60@@3 T@Ref) (f_33@@3 T@Field_20923_53) (v@@6 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@59) (store (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@59) o_60@@3 f_33@@3 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@59) (store (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@59) o_60@@3 f_33@@3 v@@6)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_40006) (o_60@@4 T@Ref) (f_33@@4 T@Field_20632_49495) (v@@7 T@PolymorphicMapType_40555) ) (! (succHeap Heap@@60 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@60) (store (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@60) o_60@@4 f_33@@4 v@@7) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@60) (store (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@60) o_60@@4 f_33@@4 v@@7) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_40006) (o_60@@5 T@Ref) (f_33@@5 T@Field_46134_3004) (v@@8 Int) ) (! (succHeap Heap@@61 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@61) (store (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@61) o_60@@5 f_33@@5 v@@8) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@61) (store (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@61) o_60@@5 f_33@@5 v@@8) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_40006) (o_60@@6 T@Ref) (f_33@@6 T@Field_20632_20924) (v@@9 T@FrameType) ) (! (succHeap Heap@@62 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@62) (store (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@62) o_60@@6 f_33@@6 v@@9) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@62) (store (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@62) o_60@@6 f_33@@6 v@@9) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_40006) (o_60@@7 T@Ref) (f_33@@7 T@Field_40079_40080) (v@@10 T@Ref) ) (! (succHeap Heap@@63 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@63) (store (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@63) o_60@@7 f_33@@7 v@@10) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@63) (store (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@63) o_60@@7 f_33@@7 v@@10) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_40006) (o_60@@8 T@Ref) (f_33@@8 T@Field_40066_53) (v@@11 Bool) ) (! (succHeap Heap@@64 (PolymorphicMapType_40006 (store (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@64) o_60@@8 f_33@@8 v@@11) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (store (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@64) o_60@@8 f_33@@8 v@@11) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@64)))
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
(assert (forall ((Heap@@65 T@PolymorphicMapType_40006) (Mask@@57 T@PolymorphicMapType_40027) (xs@@39 T@Ref) ) (!  (=> (and (state Heap@@65 Mask@@57) (< AssumeFunctionsAbove 6)) (=> (not (= xs@@39 null)) (= (elems_1 Heap@@65 xs@@39) (|Seq#Append_3004| (|Seq#Singleton_3004| (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@65) xs@@39 val)) (ite (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@65) xs@@39 next) null) |Seq#Empty_7726| (|elems'| Heap@@65 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@65) xs@@39 next)))))))
 :qid |stdinbpl.1358:15|
 :skolemid |91|
 :pattern ( (state Heap@@65 Mask@@57) (elems_1 Heap@@65 xs@@39))
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
(assert (forall ((o_60@@9 T@Ref) (f_81 T@Field_40079_40080) (Heap@@66 T@PolymorphicMapType_40006) ) (!  (=> (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@66) o_60@@9 $allocated) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@66) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@66) o_60@@9 f_81) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@66) o_60@@9 f_81))
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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@3 () T@PolymorphicMapType_40006)
(declare-fun Mask@0 () T@PolymorphicMapType_40027)
(declare-fun Result@0 () Int)
(declare-fun xs@@42 () T@Ref)
(declare-fun Heap@1 () T@PolymorphicMapType_40006)
(declare-fun newPMask@0 () T@PolymorphicMapType_40555)
(declare-fun Heap@2 () T@PolymorphicMapType_40006)
(declare-fun Heap@0 () T@PolymorphicMapType_40006)
(declare-fun Heap@@69 () T@PolymorphicMapType_40006)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_40027)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_40027)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_40027)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_20633 (T@Ref) T@FrameType)
(declare-fun FrameFragment_3004 (Int) T@FrameType)
(declare-fun FrameFragment_20924 (T@FrameType) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_40027)
(set-info :boogie-vc-id |length#definedness|)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon9_correct  (=> (state Heap@3 Mask@0) (=> (and (= Result@0 (+ 1 (ite (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next) null) 0 (length Heap@3 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@3) xs@@42 next))))) (= (ControlFlow 0 5) (- 0 4))) (> Result@0 0)))))
(let ((anon13_Else_correct  (=> (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 7) 5)) anon9_correct))))
(let ((anon13_Then_correct  (=> (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_40079_40080) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| xs@@42))) o_15 f_20) (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) o_15 f_20)) (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| newPMask@0) o_15 f_20))
 :qid |stdinbpl.691:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_46134_3004) ) (!  (=> (or (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| xs@@42))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.691:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_40066_53) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| xs@@42))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.691:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_20632_20924) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| xs@@42))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.691:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_20632_49495) ) (!  (=> (or (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| xs@@42))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.691:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_20923_20633) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| xs@@42))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.691:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_20923_3004) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| xs@@42))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.691:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_20923_53) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| xs@@42))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.691:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| newPMask@0) o_15@@6 f_20@@6))
))) (forall ((o_15@@7 T@Ref) (f_20@@7 T@Field_46529_46530) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| xs@@42))) o_15@@7 f_20@@7) (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) o_15@@7 f_20@@7)) (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| newPMask@0) o_15@@7 f_20@@7))
 :qid |stdinbpl.691:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| newPMask@0) o_15@@7 f_20@@7))
))) (forall ((o_15@@8 T@Ref) (f_20@@8 T@Field_49490_49495) ) (!  (=> (or (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| xs@@42))) o_15@@8 f_20@@8) (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) xs@@42 next)))) o_15@@8 f_20@@8)) (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| newPMask@0) o_15@@8 f_20@@8))
 :qid |stdinbpl.691:33|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| newPMask@0) o_15@@8 f_20@@8))
))) (= Heap@2 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@1) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@1) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@1) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@1) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@1) null (|list#sm| xs@@42) newPMask@0) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@1) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@1) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@1) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@1) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 6) 5))) anon9_correct))))
(let ((anon7_correct  (=> (and (= Heap@0 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@69) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@69) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@69) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@69) null (|list#sm| xs@@42) (PolymorphicMapType_40555 (store (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@69) null (|list#sm| xs@@42))) xs@@42 next true) (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@69) null (|list#sm| xs@@42))) (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@69) null (|list#sm| xs@@42))) (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@69) null (|list#sm| xs@@42))) (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@69) null (|list#sm| xs@@42))) (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@69) null (|list#sm| xs@@42))) (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@69) null (|list#sm| xs@@42))) (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@69) null (|list#sm| xs@@42))) (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@69) null (|list#sm| xs@@42))) (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@69) null (|list#sm| xs@@42))))) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@69) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@69) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@69) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@69) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@69))) (= Heap@1 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@0) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@0) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@0) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@0) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@0) null (|list#sm| xs@@42) (PolymorphicMapType_40555 (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@0) null (|list#sm| xs@@42))) (store (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@0) null (|list#sm| xs@@42))) xs@@42 val true) (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@0) null (|list#sm| xs@@42))) (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@0) null (|list#sm| xs@@42))) (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@0) null (|list#sm| xs@@42))) (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@0) null (|list#sm| xs@@42))) (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@0) null (|list#sm| xs@@42))) (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@0) null (|list#sm| xs@@42))) (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@0) null (|list#sm| xs@@42))) (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@0) null (|list#sm| xs@@42))))) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@0) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@0) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@0) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@0) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@0)))) (and (=> (= (ControlFlow 0 8) 6) anon13_Then_correct) (=> (= (ControlFlow 0 8) 7) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (|length#trigger| (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@69) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next))) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next)) (= (ControlFlow 0 10) 8)) anon7_correct)))
(let ((anon11_Then_correct  (=> (and (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next) null) (= (ControlFlow 0 9) 8)) anon7_correct)))
(let ((anon12_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| UnfoldingMask@3) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next)))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| UnfoldingMask@3) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next))))) (=> (= (ControlFlow 0 2) (- 0 1)) (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next) null)))))))
(let ((anon11_Else_correct  (=> (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next) null)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_20632_20633 UnfoldingMask@3 xs@@42 next)) (=> (HasDirectPerm_20632_20633 UnfoldingMask@3 xs@@42 next) (and (=> (= (ControlFlow 0 11) 2) anon12_Then_correct) (=> (= (ControlFlow 0 11) 10) anon12_Else_correct)))))))
(let ((anon2_correct  (=> (state Heap@@69 UnfoldingMask@3) (and (=> (= (ControlFlow 0 13) (- 0 14)) (HasDirectPerm_20632_20633 UnfoldingMask@3 xs@@42 next)) (=> (HasDirectPerm_20632_20633 UnfoldingMask@3 xs@@42 next) (and (=> (= (ControlFlow 0 13) 9) anon11_Then_correct) (=> (= (ControlFlow 0 13) 11) anon11_Else_correct)))))))
(let ((anon10_Else_correct  (=> (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next) null) (=> (and (= UnfoldingMask@3 UnfoldingMask@1) (= (ControlFlow 0 16) 13)) anon2_correct))))
(let ((anon10_Then_correct  (=> (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next) null)) (=> (and (= UnfoldingMask@2 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| UnfoldingMask@1) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next)) (+ (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| UnfoldingMask@1) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next))) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| UnfoldingMask@1) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| UnfoldingMask@1) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| UnfoldingMask@1) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| UnfoldingMask@1) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| UnfoldingMask@1) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| UnfoldingMask@1) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| UnfoldingMask@1) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| UnfoldingMask@1) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| UnfoldingMask@1))) (InsidePredicate_20923_20923 (list xs@@42) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@69) null (list xs@@42)) (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next)) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@69) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next))))) (=> (and (and (state Heap@@69 UnfoldingMask@2) (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next) null))) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 15) 13))) anon2_correct)))))
(let ((anon0_correct  (=> (and (state Heap@@69 ZeroMask) (not AssumePermUpperBound)) (=> (and (and (and (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@69) xs@@42 $allocated) (= AssumeFunctionsAbove 8)) (and (= Mask@0 (PolymorphicMapType_40027 (store (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| ZeroMask) null (list xs@@42) (+ (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| ZeroMask) null (list xs@@42)) FullPerm)) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| ZeroMask) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| ZeroMask))) (state Heap@@69 Mask@0))) (and (and (not (= xs@@42 null)) (state Heap@@69 Mask@0)) (and (|list#trigger_20923| Heap@@69 (list xs@@42)) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@69) null (list xs@@42)) (CombineFrames (FrameFragment_20633 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next)) (CombineFrames (FrameFragment_3004 (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@69) xs@@42 val)) (FrameFragment_20924 (ite (not (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next) null)) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@69) null (list (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@69) xs@@42 next))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) null (list xs@@42)))) (=> (and (not (= xs@@42 null)) (= UnfoldingMask@0 (PolymorphicMapType_40027 (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| Mask@0) (store (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@0) xs@@42 next (+ (select (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| Mask@0) xs@@42 next) FullPerm)) (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| Mask@0) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| Mask@0)))) (=> (and (and (state Heap@@69 UnfoldingMask@0) (not (= xs@@42 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_40027 (|PolymorphicMapType_40027_20923_20924#PolymorphicMapType_40027| UnfoldingMask@0) (|PolymorphicMapType_40027_20632_20633#PolymorphicMapType_40027| UnfoldingMask@0) (store (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| UnfoldingMask@0) xs@@42 val (+ (select (|PolymorphicMapType_40027_20635_3004#PolymorphicMapType_40027| UnfoldingMask@0) xs@@42 val) FullPerm)) (|PolymorphicMapType_40027_20923_20633#PolymorphicMapType_40027| UnfoldingMask@0) (|PolymorphicMapType_40027_20923_3004#PolymorphicMapType_40027| UnfoldingMask@0) (|PolymorphicMapType_40027_20923_53#PolymorphicMapType_40027| UnfoldingMask@0) (|PolymorphicMapType_40027_20923_149071#PolymorphicMapType_40027| UnfoldingMask@0) (|PolymorphicMapType_40027_20632_20924#PolymorphicMapType_40027| UnfoldingMask@0) (|PolymorphicMapType_40027_20632_53#PolymorphicMapType_40027| UnfoldingMask@0) (|PolymorphicMapType_40027_20632_149470#PolymorphicMapType_40027| UnfoldingMask@0))) (state Heap@@69 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 17) 15) anon10_Then_correct) (=> (= (ControlFlow 0 17) 16) anon10_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19) 17) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
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
(declare-fun sum (T@PolymorphicMapType_40006 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun null () T@Ref)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun length (T@PolymorphicMapType_40006 T@Ref) Int)
(declare-fun head_3 (T@PolymorphicMapType_40006 T@Ref) Int)
(declare-fun tail_2 (T@PolymorphicMapType_40006 T@Ref) T@Ref)
(declare-fun last_1 (T@PolymorphicMapType_40006 T@Ref) Int)
(declare-fun elems_1 (T@PolymorphicMapType_40006 T@Ref) T@Seq_2867)
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
(assert (forall ((Heap@@10 T@PolymorphicMapType_40006) (Mask@@0 T@PolymorphicMapType_40027) (xs@@10 T@Ref) ) (!  (=> (and (state Heap@@10 Mask@@0) (< AssumeFunctionsAbove 1)) (=> (not (= xs@@10 null)) (= (sum Heap@@10 xs@@10) (+ (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@10) xs@@10 val) (ite (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@10) xs@@10 next) null) 0 (|sum'| Heap@@10 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@10) xs@@10 next)))))))
 :qid |stdinbpl.726:15|
 :skolemid |66|
 :pattern ( (state Heap@@10 Mask@@0) (sum Heap@@10 xs@@10))
 :pattern ( (state Heap@@10 Mask@@0) (|sum#triggerStateless| xs@@10) (|list#trigger_20923| Heap@@10 (list xs@@10)))
)))
(assert (forall ((s@@3 T@Seq_2867) (x@@0 Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x@@0) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x@@0)) (< (|Seq#Skolem_2867| s@@3 x@@0) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x@@0)) x@@0)))
 :qid |stdinbpl.403:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_40006) (xs@@11 T@Ref) ) (!  (and (= (length Heap@@11 xs@@11) (|length'| Heap@@11 xs@@11)) (dummyFunction_3287 (|length#triggerStateless| xs@@11)))
 :qid |stdinbpl.569:15|
 :skolemid |58|
 :pattern ( (length Heap@@11 xs@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_40006) (xs@@12 T@Ref) ) (!  (and (= (sum Heap@@12 xs@@12) (|sum'| Heap@@12 xs@@12)) (dummyFunction_3287 (|sum#triggerStateless| xs@@12)))
 :qid |stdinbpl.716:15|
 :skolemid |64|
 :pattern ( (sum Heap@@12 xs@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_40006) (xs@@13 T@Ref) ) (!  (and (= (head_3 Heap@@13 xs@@13) (|head'| Heap@@13 xs@@13)) (dummyFunction_3287 (|head#triggerStateless| xs@@13)))
 :qid |stdinbpl.853:15|
 :skolemid |69|
 :pattern ( (head_3 Heap@@13 xs@@13))
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
(assert (forall ((Heap@@16 T@PolymorphicMapType_40006) (xs@@16 T@Ref) ) (!  (and (= (elems_1 Heap@@16 xs@@16) (|elems'| Heap@@16 xs@@16)) (dummyFunction_69361 (|elems#triggerStateless| xs@@16)))
 :qid |stdinbpl.1348:15|
 :skolemid |89|
 :pattern ( (elems_1 Heap@@16 xs@@16))
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
(assert (forall ((Heap@@17 T@PolymorphicMapType_40006) (ExhaleHeap T@PolymorphicMapType_40006) (Mask@@1 T@PolymorphicMapType_40027) (pm_f_53 T@Field_46529_46530) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_20923_20924 Mask@@1 null pm_f_53) (IsPredicateField_20923_20924 pm_f_53)) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@17) null (PredicateMaskField_20923 pm_f_53)) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap) null (PredicateMaskField_20923 pm_f_53)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap Mask@@1) (IsPredicateField_20923_20924 pm_f_53) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap) null (PredicateMaskField_20923 pm_f_53)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_40006) (ExhaleHeap@@0 T@PolymorphicMapType_40006) (Mask@@2 T@PolymorphicMapType_40027) (pm_f_53@@0 T@Field_20632_20924) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_20632_20924 Mask@@2 null pm_f_53@@0) (IsPredicateField_20632_141175 pm_f_53@@0)) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@18) null (PredicateMaskField_20632 pm_f_53@@0)) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@0) null (PredicateMaskField_20632 pm_f_53@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@0 Mask@@2) (IsPredicateField_20632_141175 pm_f_53@@0) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@0) null (PredicateMaskField_20632 pm_f_53@@0)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_40006) (ExhaleHeap@@1 T@PolymorphicMapType_40006) (Mask@@3 T@PolymorphicMapType_40027) (pm_f_53@@1 T@Field_46529_46530) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_20923_20924 Mask@@3 null pm_f_53@@1) (IsWandField_20923_144845 pm_f_53@@1)) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@19) null (WandMaskField_20923 pm_f_53@@1)) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@1) null (WandMaskField_20923 pm_f_53@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@1 Mask@@3) (IsWandField_20923_144845 pm_f_53@@1) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@1) null (WandMaskField_20923 pm_f_53@@1)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_40006) (ExhaleHeap@@2 T@PolymorphicMapType_40006) (Mask@@4 T@PolymorphicMapType_40027) (pm_f_53@@2 T@Field_20632_20924) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_20632_20924 Mask@@4 null pm_f_53@@2) (IsWandField_20632_144488 pm_f_53@@2)) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@20) null (WandMaskField_20632 pm_f_53@@2)) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@2) null (WandMaskField_20632 pm_f_53@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@2 Mask@@4) (IsWandField_20632_144488 pm_f_53@@2) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@2) null (WandMaskField_20632 pm_f_53@@2)))
)))
(assert (forall ((x@@1 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3004| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.528:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3004| x@@1) y))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_40006) (Mask@@5 T@PolymorphicMapType_40027) (xs@@17 T@Ref) ) (!  (=> (and (state Heap@@21 Mask@@5) (< AssumeFunctionsAbove 8)) (=> (not (= xs@@17 null)) (= (length Heap@@21 xs@@17) (+ 1 (ite (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@21) xs@@17 next) null) 0 (|length'| Heap@@21 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@21) xs@@17 next)))))))
 :qid |stdinbpl.579:15|
 :skolemid |60|
 :pattern ( (state Heap@@21 Mask@@5) (length Heap@@21 xs@@17))
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
(assert (forall ((Heap@@23 T@PolymorphicMapType_40006) (ExhaleHeap@@3 T@PolymorphicMapType_40006) (Mask@@7 T@PolymorphicMapType_40027) (pm_f_53@@3 T@Field_46529_46530) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@3 Mask@@7) (=> (and (HasDirectPerm_20923_20924 Mask@@7 null pm_f_53@@3) (IsPredicateField_20923_20924 pm_f_53@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_53 T@Ref) (f_86 T@Field_40079_40080) ) (!  (=> (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53 f_86) (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@23) o2_53 f_86) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53 f_86)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53 f_86))
)) (forall ((o2_53@@0 T@Ref) (f_86@@0 T@Field_46134_3004) ) (!  (=> (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53@@0 f_86@@0) (= (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@23) o2_53@@0 f_86@@0) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@0 f_86@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@0 f_86@@0))
))) (forall ((o2_53@@1 T@Ref) (f_86@@1 T@Field_40066_53) ) (!  (=> (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53@@1 f_86@@1) (= (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@23) o2_53@@1 f_86@@1) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@1 f_86@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@1 f_86@@1))
))) (forall ((o2_53@@2 T@Ref) (f_86@@2 T@Field_20632_20924) ) (!  (=> (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53@@2 f_86@@2) (= (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@23) o2_53@@2 f_86@@2) (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@2 f_86@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@2 f_86@@2))
))) (forall ((o2_53@@3 T@Ref) (f_86@@3 T@Field_20632_49495) ) (!  (=> (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53@@3 f_86@@3) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@23) o2_53@@3 f_86@@3) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@3 f_86@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@3 f_86@@3))
))) (forall ((o2_53@@4 T@Ref) (f_86@@4 T@Field_20923_20633) ) (!  (=> (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53@@4 f_86@@4) (= (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@23) o2_53@@4 f_86@@4) (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@4 f_86@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@4 f_86@@4))
))) (forall ((o2_53@@5 T@Ref) (f_86@@5 T@Field_20923_3004) ) (!  (=> (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53@@5 f_86@@5) (= (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@23) o2_53@@5 f_86@@5) (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@5 f_86@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@5 f_86@@5))
))) (forall ((o2_53@@6 T@Ref) (f_86@@6 T@Field_20923_53) ) (!  (=> (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53@@6 f_86@@6) (= (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@23) o2_53@@6 f_86@@6) (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@6 f_86@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@6 f_86@@6))
))) (forall ((o2_53@@7 T@Ref) (f_86@@7 T@Field_46529_46530) ) (!  (=> (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53@@7 f_86@@7) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@23) o2_53@@7 f_86@@7) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@7 f_86@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@7 f_86@@7))
))) (forall ((o2_53@@8 T@Ref) (f_86@@8 T@Field_49490_49495) ) (!  (=> (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) null (PredicateMaskField_20923 pm_f_53@@3))) o2_53@@8 f_86@@8) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@23) o2_53@@8 f_86@@8) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@8 f_86@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@3) o2_53@@8 f_86@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@3 Mask@@7) (IsPredicateField_20923_20924 pm_f_53@@3))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_40006) (ExhaleHeap@@4 T@PolymorphicMapType_40006) (Mask@@8 T@PolymorphicMapType_40027) (pm_f_53@@4 T@Field_20632_20924) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@4 Mask@@8) (=> (and (HasDirectPerm_20632_20924 Mask@@8 null pm_f_53@@4) (IsPredicateField_20632_141175 pm_f_53@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_53@@9 T@Ref) (f_86@@9 T@Field_40079_40080) ) (!  (=> (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@9 f_86@@9) (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@24) o2_53@@9 f_86@@9) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@9 f_86@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@9 f_86@@9))
)) (forall ((o2_53@@10 T@Ref) (f_86@@10 T@Field_46134_3004) ) (!  (=> (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@10 f_86@@10) (= (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@24) o2_53@@10 f_86@@10) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@10 f_86@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@10 f_86@@10))
))) (forall ((o2_53@@11 T@Ref) (f_86@@11 T@Field_40066_53) ) (!  (=> (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@11 f_86@@11) (= (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@24) o2_53@@11 f_86@@11) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@11 f_86@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@11 f_86@@11))
))) (forall ((o2_53@@12 T@Ref) (f_86@@12 T@Field_20632_20924) ) (!  (=> (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@12 f_86@@12) (= (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@24) o2_53@@12 f_86@@12) (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@12 f_86@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@12 f_86@@12))
))) (forall ((o2_53@@13 T@Ref) (f_86@@13 T@Field_20632_49495) ) (!  (=> (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@13 f_86@@13) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) o2_53@@13 f_86@@13) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@13 f_86@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@13 f_86@@13))
))) (forall ((o2_53@@14 T@Ref) (f_86@@14 T@Field_20923_20633) ) (!  (=> (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@14 f_86@@14) (= (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@24) o2_53@@14 f_86@@14) (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@14 f_86@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@14 f_86@@14))
))) (forall ((o2_53@@15 T@Ref) (f_86@@15 T@Field_20923_3004) ) (!  (=> (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@15 f_86@@15) (= (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@24) o2_53@@15 f_86@@15) (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@15 f_86@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@15 f_86@@15))
))) (forall ((o2_53@@16 T@Ref) (f_86@@16 T@Field_20923_53) ) (!  (=> (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@16 f_86@@16) (= (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@24) o2_53@@16 f_86@@16) (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@16 f_86@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@16 f_86@@16))
))) (forall ((o2_53@@17 T@Ref) (f_86@@17 T@Field_46529_46530) ) (!  (=> (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@17 f_86@@17) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@24) o2_53@@17 f_86@@17) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@17 f_86@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@17 f_86@@17))
))) (forall ((o2_53@@18 T@Ref) (f_86@@18 T@Field_49490_49495) ) (!  (=> (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@24) null (PredicateMaskField_20632 pm_f_53@@4))) o2_53@@18 f_86@@18) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@24) o2_53@@18 f_86@@18) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@18 f_86@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@4) o2_53@@18 f_86@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@4 Mask@@8) (IsPredicateField_20632_141175 pm_f_53@@4))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_40006) (ExhaleHeap@@5 T@PolymorphicMapType_40006) (Mask@@9 T@PolymorphicMapType_40027) (pm_f_53@@5 T@Field_46529_46530) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@5 Mask@@9) (=> (and (HasDirectPerm_20923_20924 Mask@@9 null pm_f_53@@5) (IsWandField_20923_144845 pm_f_53@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_53@@19 T@Ref) (f_86@@19 T@Field_40079_40080) ) (!  (=> (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@19 f_86@@19) (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@25) o2_53@@19 f_86@@19) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@19 f_86@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@19 f_86@@19))
)) (forall ((o2_53@@20 T@Ref) (f_86@@20 T@Field_46134_3004) ) (!  (=> (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@20 f_86@@20) (= (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@25) o2_53@@20 f_86@@20) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@20 f_86@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@20 f_86@@20))
))) (forall ((o2_53@@21 T@Ref) (f_86@@21 T@Field_40066_53) ) (!  (=> (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@21 f_86@@21) (= (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@25) o2_53@@21 f_86@@21) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@21 f_86@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@21 f_86@@21))
))) (forall ((o2_53@@22 T@Ref) (f_86@@22 T@Field_20632_20924) ) (!  (=> (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@22 f_86@@22) (= (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@25) o2_53@@22 f_86@@22) (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@22 f_86@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@22 f_86@@22))
))) (forall ((o2_53@@23 T@Ref) (f_86@@23 T@Field_20632_49495) ) (!  (=> (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@23 f_86@@23) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@25) o2_53@@23 f_86@@23) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@23 f_86@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@23 f_86@@23))
))) (forall ((o2_53@@24 T@Ref) (f_86@@24 T@Field_20923_20633) ) (!  (=> (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@24 f_86@@24) (= (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@25) o2_53@@24 f_86@@24) (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@24 f_86@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@24 f_86@@24))
))) (forall ((o2_53@@25 T@Ref) (f_86@@25 T@Field_20923_3004) ) (!  (=> (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@25 f_86@@25) (= (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@25) o2_53@@25 f_86@@25) (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@25 f_86@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@25 f_86@@25))
))) (forall ((o2_53@@26 T@Ref) (f_86@@26 T@Field_20923_53) ) (!  (=> (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@26 f_86@@26) (= (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@25) o2_53@@26 f_86@@26) (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@26 f_86@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@26 f_86@@26))
))) (forall ((o2_53@@27 T@Ref) (f_86@@27 T@Field_46529_46530) ) (!  (=> (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@27 f_86@@27) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@25) o2_53@@27 f_86@@27) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@27 f_86@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@27 f_86@@27))
))) (forall ((o2_53@@28 T@Ref) (f_86@@28 T@Field_49490_49495) ) (!  (=> (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) null (WandMaskField_20923 pm_f_53@@5))) o2_53@@28 f_86@@28) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@25) o2_53@@28 f_86@@28) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@28 f_86@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@5) o2_53@@28 f_86@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@5 Mask@@9) (IsWandField_20923_144845 pm_f_53@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_40006) (ExhaleHeap@@6 T@PolymorphicMapType_40006) (Mask@@10 T@PolymorphicMapType_40027) (pm_f_53@@6 T@Field_20632_20924) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@6 Mask@@10) (=> (and (HasDirectPerm_20632_20924 Mask@@10 null pm_f_53@@6) (IsWandField_20632_144488 pm_f_53@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_53@@29 T@Ref) (f_86@@29 T@Field_40079_40080) ) (!  (=> (select (|PolymorphicMapType_40555_20632_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@29 f_86@@29) (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@26) o2_53@@29 f_86@@29) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@29 f_86@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@29 f_86@@29))
)) (forall ((o2_53@@30 T@Ref) (f_86@@30 T@Field_46134_3004) ) (!  (=> (select (|PolymorphicMapType_40555_20635_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@30 f_86@@30) (= (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@26) o2_53@@30 f_86@@30) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@30 f_86@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@30 f_86@@30))
))) (forall ((o2_53@@31 T@Ref) (f_86@@31 T@Field_40066_53) ) (!  (=> (select (|PolymorphicMapType_40555_20632_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@31 f_86@@31) (= (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@26) o2_53@@31 f_86@@31) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@31 f_86@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@31 f_86@@31))
))) (forall ((o2_53@@32 T@Ref) (f_86@@32 T@Field_20632_20924) ) (!  (=> (select (|PolymorphicMapType_40555_20632_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@32 f_86@@32) (= (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@26) o2_53@@32 f_86@@32) (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@32 f_86@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@32 f_86@@32))
))) (forall ((o2_53@@33 T@Ref) (f_86@@33 T@Field_20632_49495) ) (!  (=> (select (|PolymorphicMapType_40555_20632_142632#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@33 f_86@@33) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) o2_53@@33 f_86@@33) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@33 f_86@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@33 f_86@@33))
))) (forall ((o2_53@@34 T@Ref) (f_86@@34 T@Field_20923_20633) ) (!  (=> (select (|PolymorphicMapType_40555_46529_20633#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@34 f_86@@34) (= (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@26) o2_53@@34 f_86@@34) (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@34 f_86@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@34 f_86@@34))
))) (forall ((o2_53@@35 T@Ref) (f_86@@35 T@Field_20923_3004) ) (!  (=> (select (|PolymorphicMapType_40555_46529_3004#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@35 f_86@@35) (= (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@26) o2_53@@35 f_86@@35) (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@35 f_86@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@35 f_86@@35))
))) (forall ((o2_53@@36 T@Ref) (f_86@@36 T@Field_20923_53) ) (!  (=> (select (|PolymorphicMapType_40555_46529_53#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@36 f_86@@36) (= (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@26) o2_53@@36 f_86@@36) (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@36 f_86@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@36 f_86@@36))
))) (forall ((o2_53@@37 T@Ref) (f_86@@37 T@Field_46529_46530) ) (!  (=> (select (|PolymorphicMapType_40555_46529_46530#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@37 f_86@@37) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@26) o2_53@@37 f_86@@37) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@37 f_86@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@37 f_86@@37))
))) (forall ((o2_53@@38 T@Ref) (f_86@@38 T@Field_49490_49495) ) (!  (=> (select (|PolymorphicMapType_40555_46529_143680#PolymorphicMapType_40555| (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@26) null (WandMaskField_20632 pm_f_53@@6))) o2_53@@38 f_86@@38) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@26) o2_53@@38 f_86@@38) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@38 f_86@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@6) o2_53@@38 f_86@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@6 Mask@@10) (IsWandField_20632_144488 pm_f_53@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_40006) (Mask@@11 T@PolymorphicMapType_40027) (xs@@21 T@Ref) ) (!  (=> (and (state Heap@@27 Mask@@11) (< AssumeFunctionsAbove 2)) (=> (not (= xs@@21 null)) (= (ascending Heap@@27 xs@@21)  (or (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@27) xs@@21 next) null) (and (<= (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@27) xs@@21 val) (head_3 Heap@@27 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@27) xs@@21 next))) (|ascending'| Heap@@27 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@27) xs@@21 next)))))))
 :qid |stdinbpl.1656:15|
 :skolemid |101|
 :pattern ( (state Heap@@27 Mask@@11) (ascending Heap@@27 xs@@21))
 :pattern ( (state Heap@@27 Mask@@11) (|ascending#triggerStateless| xs@@21) (|list#trigger_20923| Heap@@27 (list xs@@21)) (|list#trigger_20923| Heap@@27 (list xs@@21)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@28 T@PolymorphicMapType_40006) (ExhaleHeap@@7 T@PolymorphicMapType_40006) (Mask@@12 T@PolymorphicMapType_40027) (o_61 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@7 Mask@@12) (=> (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@28) o_61 $allocated) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@7) o_61 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@7 Mask@@12) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@7) o_61 $allocated))
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
(assert (forall ((Heap@@30 T@PolymorphicMapType_40006) (ExhaleHeap@@9 T@PolymorphicMapType_40006) (Mask@@34 T@PolymorphicMapType_40027) (o_61@@0 T@Ref) (f_86@@39 T@Field_49490_49495) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@9 Mask@@34) (=> (HasDirectPerm_20923_140930 Mask@@34 o_61@@0 f_86@@39) (= (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@30) o_61@@0 f_86@@39) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@9) o_61@@0 f_86@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@9 Mask@@34) (select (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| ExhaleHeap@@9) o_61@@0 f_86@@39))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_40006) (ExhaleHeap@@10 T@PolymorphicMapType_40006) (Mask@@35 T@PolymorphicMapType_40027) (o_61@@1 T@Ref) (f_86@@40 T@Field_20923_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@10 Mask@@35) (=> (HasDirectPerm_20923_53 Mask@@35 o_61@@1 f_86@@40) (= (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@31) o_61@@1 f_86@@40) (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@10) o_61@@1 f_86@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@10 Mask@@35) (select (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| ExhaleHeap@@10) o_61@@1 f_86@@40))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_40006) (ExhaleHeap@@11 T@PolymorphicMapType_40006) (Mask@@36 T@PolymorphicMapType_40027) (o_61@@2 T@Ref) (f_86@@41 T@Field_46529_46530) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@11 Mask@@36) (=> (HasDirectPerm_20923_20924 Mask@@36 o_61@@2 f_86@@41) (= (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@32) o_61@@2 f_86@@41) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@11) o_61@@2 f_86@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@11 Mask@@36) (select (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| ExhaleHeap@@11) o_61@@2 f_86@@41))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_40006) (ExhaleHeap@@12 T@PolymorphicMapType_40006) (Mask@@37 T@PolymorphicMapType_40027) (o_61@@3 T@Ref) (f_86@@42 T@Field_20923_3004) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@12 Mask@@37) (=> (HasDirectPerm_20923_3004 Mask@@37 o_61@@3 f_86@@42) (= (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@33) o_61@@3 f_86@@42) (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@12) o_61@@3 f_86@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@12 Mask@@37) (select (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| ExhaleHeap@@12) o_61@@3 f_86@@42))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_40006) (ExhaleHeap@@13 T@PolymorphicMapType_40006) (Mask@@38 T@PolymorphicMapType_40027) (o_61@@4 T@Ref) (f_86@@43 T@Field_20923_20633) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@13 Mask@@38) (=> (HasDirectPerm_20923_20633 Mask@@38 o_61@@4 f_86@@43) (= (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@34) o_61@@4 f_86@@43) (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@13) o_61@@4 f_86@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@13 Mask@@38) (select (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| ExhaleHeap@@13) o_61@@4 f_86@@43))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_40006) (ExhaleHeap@@14 T@PolymorphicMapType_40006) (Mask@@39 T@PolymorphicMapType_40027) (o_61@@5 T@Ref) (f_86@@44 T@Field_20632_49495) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@14 Mask@@39) (=> (HasDirectPerm_20632_139789 Mask@@39 o_61@@5 f_86@@44) (= (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@35) o_61@@5 f_86@@44) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@14) o_61@@5 f_86@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@14 Mask@@39) (select (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| ExhaleHeap@@14) o_61@@5 f_86@@44))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_40006) (ExhaleHeap@@15 T@PolymorphicMapType_40006) (Mask@@40 T@PolymorphicMapType_40027) (o_61@@6 T@Ref) (f_86@@45 T@Field_40066_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@15 Mask@@40) (=> (HasDirectPerm_20632_53 Mask@@40 o_61@@6 f_86@@45) (= (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@36) o_61@@6 f_86@@45) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@15) o_61@@6 f_86@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@15 Mask@@40) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| ExhaleHeap@@15) o_61@@6 f_86@@45))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_40006) (ExhaleHeap@@16 T@PolymorphicMapType_40006) (Mask@@41 T@PolymorphicMapType_40027) (o_61@@7 T@Ref) (f_86@@46 T@Field_20632_20924) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@16 Mask@@41) (=> (HasDirectPerm_20632_20924 Mask@@41 o_61@@7 f_86@@46) (= (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@37) o_61@@7 f_86@@46) (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@16) o_61@@7 f_86@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@16 Mask@@41) (select (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| ExhaleHeap@@16) o_61@@7 f_86@@46))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_40006) (ExhaleHeap@@17 T@PolymorphicMapType_40006) (Mask@@42 T@PolymorphicMapType_40027) (o_61@@8 T@Ref) (f_86@@47 T@Field_46134_3004) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@17 Mask@@42) (=> (HasDirectPerm_20635_3004 Mask@@42 o_61@@8 f_86@@47) (= (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@38) o_61@@8 f_86@@47) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@17) o_61@@8 f_86@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@17 Mask@@42) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| ExhaleHeap@@17) o_61@@8 f_86@@47))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_40006) (ExhaleHeap@@18 T@PolymorphicMapType_40006) (Mask@@43 T@PolymorphicMapType_40027) (o_61@@9 T@Ref) (f_86@@48 T@Field_40079_40080) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@18 Mask@@43) (=> (HasDirectPerm_20632_20633 Mask@@43 o_61@@9 f_86@@48) (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@39) o_61@@9 f_86@@48) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@18) o_61@@9 f_86@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@18 Mask@@43) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| ExhaleHeap@@18) o_61@@9 f_86@@48))
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
(assert (forall ((Heap@@45 T@PolymorphicMapType_40006) (Mask@@48 T@PolymorphicMapType_40027) (xs@@27 T@Ref) ) (!  (=> (and (state Heap@@45 Mask@@48) (< AssumeFunctionsAbove 7)) (=> (not (= xs@@27 null)) (= (head_3 Heap@@45 xs@@27) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@45) xs@@27 val))))
 :qid |stdinbpl.863:15|
 :skolemid |71|
 :pattern ( (state Heap@@45 Mask@@48) (head_3 Heap@@45 xs@@27))
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
(assert (forall ((Heap@@54 T@PolymorphicMapType_40006) (Mask@@56 T@PolymorphicMapType_40027) (xs@@37 T@Ref) (index@@2 Int) ) (!  (=> (and (state Heap@@54 Mask@@56) (< AssumeFunctionsAbove 3)) (=> (and (not (= xs@@37 null)) (and (<= 0 index@@2) (< index@@2 (length Heap@@54 xs@@37)))) (= (get Heap@@54 xs@@37 index@@2) (ite (= index@@2 0) (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@54) xs@@37 val) (|get'| Heap@@54 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@54) xs@@37 next) (- index@@2 1))))))
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
(assert (forall ((Heap@@55 T@PolymorphicMapType_40006) (o_60 T@Ref) (f_33 T@Field_49490_49495) (v@@2 T@PolymorphicMapType_40555) ) (! (succHeap Heap@@55 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@55) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@55) o_60 f_33 v@@2) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@55) (store (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@55) o_60 f_33 v@@2) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@55) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_40006) (o_60@@0 T@Ref) (f_33@@0 T@Field_20923_3004) (v@@3 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@56) (store (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@56) o_60@@0 f_33@@0 v@@3) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@56) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@56) (store (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@56) o_60@@0 f_33@@0 v@@3) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_40006) (o_60@@1 T@Ref) (f_33@@1 T@Field_46529_46530) (v@@4 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@57) (store (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@57) o_60@@1 f_33@@1 v@@4) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@57) (store (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@57) o_60@@1 f_33@@1 v@@4) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@57) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_40006) (o_60@@2 T@Ref) (f_33@@2 T@Field_20923_20633) (v@@5 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@58) (store (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@58) o_60@@2 f_33@@2 v@@5) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@58) (store (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@58) o_60@@2 f_33@@2 v@@5) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@58) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_40006) (o_60@@3 T@Ref) (f_33@@3 T@Field_20923_53) (v@@6 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@59) (store (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@59) o_60@@3 f_33@@3 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@59) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@59) (store (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@59) o_60@@3 f_33@@3 v@@6)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_40006) (o_60@@4 T@Ref) (f_33@@4 T@Field_20632_49495) (v@@7 T@PolymorphicMapType_40555) ) (! (succHeap Heap@@60 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@60) (store (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@60) o_60@@4 f_33@@4 v@@7) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@60) (store (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@60) o_60@@4 f_33@@4 v@@7) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@60) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_40006) (o_60@@5 T@Ref) (f_33@@5 T@Field_46134_3004) (v@@8 Int) ) (! (succHeap Heap@@61 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@61) (store (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@61) o_60@@5 f_33@@5 v@@8) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@61) (store (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@61) o_60@@5 f_33@@5 v@@8) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@61) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_40006) (o_60@@6 T@Ref) (f_33@@6 T@Field_20632_20924) (v@@9 T@FrameType) ) (! (succHeap Heap@@62 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@62) (store (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@62) o_60@@6 f_33@@6 v@@9) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@62) (store (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@62) o_60@@6 f_33@@6 v@@9) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@62) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_40006) (o_60@@7 T@Ref) (f_33@@7 T@Field_40079_40080) (v@@10 T@Ref) ) (! (succHeap Heap@@63 (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@63) (store (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@63) o_60@@7 f_33@@7 v@@10) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@63) (store (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@63) o_60@@7 f_33@@7 v@@10) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@63) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_40006) (o_60@@8 T@Ref) (f_33@@8 T@Field_40066_53) (v@@11 Bool) ) (! (succHeap Heap@@64 (PolymorphicMapType_40006 (store (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@64) o_60@@8 f_33@@8 v@@11) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_40006 (store (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@64) o_60@@8 f_33@@8 v@@11) (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_20924#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20927_49582#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20632_20924#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20632_139831#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_20633#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_3004#PolymorphicMapType_40006| Heap@@64) (|PolymorphicMapType_40006_20923_53#PolymorphicMapType_40006| Heap@@64)))
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
(assert (forall ((Heap@@65 T@PolymorphicMapType_40006) (Mask@@57 T@PolymorphicMapType_40027) (xs@@39 T@Ref) ) (!  (=> (and (state Heap@@65 Mask@@57) (< AssumeFunctionsAbove 6)) (=> (not (= xs@@39 null)) (= (elems_1 Heap@@65 xs@@39) (|Seq#Append_3004| (|Seq#Singleton_3004| (select (|PolymorphicMapType_40006_20635_3004#PolymorphicMapType_40006| Heap@@65) xs@@39 val)) (ite (= (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@65) xs@@39 next) null) |Seq#Empty_7726| (|elems'| Heap@@65 (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@65) xs@@39 next)))))))
 :qid |stdinbpl.1358:15|
 :skolemid |91|
 :pattern ( (state Heap@@65 Mask@@57) (elems_1 Heap@@65 xs@@39))
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
(assert (forall ((o_60@@9 T@Ref) (f_81 T@Field_40079_40080) (Heap@@66 T@PolymorphicMapType_40006) ) (!  (=> (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@66) o_60@@9 $allocated) (select (|PolymorphicMapType_40006_20444_53#PolymorphicMapType_40006| Heap@@66) (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@66) o_60@@9 f_81) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_40006_20447_20448#PolymorphicMapType_40006| Heap@@66) o_60@@9 f_81))
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

