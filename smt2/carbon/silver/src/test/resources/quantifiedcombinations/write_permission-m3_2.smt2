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
(declare-sort T@Field_30932_53 0)
(declare-sort T@Field_30945_30946 0)
(declare-sort T@Field_37093_3874 0)
(declare-sort T@Field_37170_37171 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_37183_37188 0)
(declare-sort T@Field_38090_38091 0)
(declare-sort T@Field_38103_38108 0)
(declare-sort T@Field_19508_19514 0)
(declare-sort T@Field_19508_37188 0)
(declare-sort T@Field_19513_3874 0)
(declare-sort T@Field_19513_53 0)
(declare-sort T@Field_19513_30946 0)
(declare-sort T@Field_19538_3874 0)
(declare-sort T@Field_19538_53 0)
(declare-sort T@Field_19538_30946 0)
(declare-datatypes ((T@PolymorphicMapType_30893 0)) (((PolymorphicMapType_30893 (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| (Array T@Ref T@Field_37093_3874 Real)) (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| (Array T@Ref T@Field_37170_37171 Real)) (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| (Array T@Ref T@Field_38090_38091 Real)) (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| (Array T@Ref T@Field_19508_19514 Real)) (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| (Array T@Ref T@Field_30932_53 Real)) (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| (Array T@Ref T@Field_30945_30946 Real)) (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| (Array T@Ref T@Field_19508_37188 Real)) (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| (Array T@Ref T@Field_19513_3874 Real)) (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| (Array T@Ref T@Field_19513_53 Real)) (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| (Array T@Ref T@Field_19513_30946 Real)) (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| (Array T@Ref T@Field_37183_37188 Real)) (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| (Array T@Ref T@Field_19538_3874 Real)) (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| (Array T@Ref T@Field_19538_53 Real)) (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| (Array T@Ref T@Field_19538_30946 Real)) (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| (Array T@Ref T@Field_38103_38108 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_31421 0)) (((PolymorphicMapType_31421 (|PolymorphicMapType_31421_19508_3874#PolymorphicMapType_31421| (Array T@Ref T@Field_37093_3874 Bool)) (|PolymorphicMapType_31421_19508_53#PolymorphicMapType_31421| (Array T@Ref T@Field_30932_53 Bool)) (|PolymorphicMapType_31421_19508_30946#PolymorphicMapType_31421| (Array T@Ref T@Field_30945_30946 Bool)) (|PolymorphicMapType_31421_19508_37171#PolymorphicMapType_31421| (Array T@Ref T@Field_19508_19514 Bool)) (|PolymorphicMapType_31421_19508_102018#PolymorphicMapType_31421| (Array T@Ref T@Field_19508_37188 Bool)) (|PolymorphicMapType_31421_37170_3874#PolymorphicMapType_31421| (Array T@Ref T@Field_19513_3874 Bool)) (|PolymorphicMapType_31421_37170_53#PolymorphicMapType_31421| (Array T@Ref T@Field_19513_53 Bool)) (|PolymorphicMapType_31421_37170_30946#PolymorphicMapType_31421| (Array T@Ref T@Field_19513_30946 Bool)) (|PolymorphicMapType_31421_37170_37171#PolymorphicMapType_31421| (Array T@Ref T@Field_37170_37171 Bool)) (|PolymorphicMapType_31421_37170_103066#PolymorphicMapType_31421| (Array T@Ref T@Field_37183_37188 Bool)) (|PolymorphicMapType_31421_38090_3874#PolymorphicMapType_31421| (Array T@Ref T@Field_19538_3874 Bool)) (|PolymorphicMapType_31421_38090_53#PolymorphicMapType_31421| (Array T@Ref T@Field_19538_53 Bool)) (|PolymorphicMapType_31421_38090_30946#PolymorphicMapType_31421| (Array T@Ref T@Field_19538_30946 Bool)) (|PolymorphicMapType_31421_38090_37171#PolymorphicMapType_31421| (Array T@Ref T@Field_38090_38091 Bool)) (|PolymorphicMapType_31421_38090_104114#PolymorphicMapType_31421| (Array T@Ref T@Field_38103_38108 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_30872 0)) (((PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| (Array T@Ref T@Field_30932_53 Bool)) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| (Array T@Ref T@Field_30945_30946 T@Ref)) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| (Array T@Ref T@Field_37093_3874 Int)) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| (Array T@Ref T@Field_37170_37171 T@FrameType)) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| (Array T@Ref T@Field_37183_37188 T@PolymorphicMapType_31421)) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| (Array T@Ref T@Field_38090_38091 T@FrameType)) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| (Array T@Ref T@Field_38103_38108 T@PolymorphicMapType_31421)) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| (Array T@Ref T@Field_19508_19514 T@FrameType)) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| (Array T@Ref T@Field_19508_37188 T@PolymorphicMapType_31421)) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| (Array T@Ref T@Field_19513_3874 Int)) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| (Array T@Ref T@Field_19513_53 Bool)) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| (Array T@Ref T@Field_19513_30946 T@Ref)) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| (Array T@Ref T@Field_19538_3874 Int)) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| (Array T@Ref T@Field_19538_53 Bool)) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| (Array T@Ref T@Field_19538_30946 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_30932_53)
(declare-fun f_7 () T@Field_37093_3874)
(declare-fun g () T@Field_37093_3874)
(declare-sort T@Seq_39163 0)
(declare-fun |Seq#Length_39163| (T@Seq_39163) Int)
(declare-fun |Seq#Drop_39163| (T@Seq_39163 Int) T@Seq_39163)
(declare-sort T@Seq_3752 0)
(declare-fun |Seq#Length_3752| (T@Seq_3752) Int)
(declare-fun |Seq#Drop_3752| (T@Seq_3752 Int) T@Seq_3752)
(declare-fun succHeap (T@PolymorphicMapType_30872 T@PolymorphicMapType_30872) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_30872 T@PolymorphicMapType_30872) Bool)
(declare-fun state (T@PolymorphicMapType_30872 T@PolymorphicMapType_30893) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_30893) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_31421)
(declare-fun p2 (T@Ref Int) T@Field_38090_38091)
(declare-fun IsPredicateField_19538_19539 (T@Field_38090_38091) Bool)
(declare-fun |p2#trigger_19538| (T@PolymorphicMapType_30872 T@Field_38090_38091) Bool)
(declare-fun |p2#everUsed_19538| (T@Field_38090_38091) Bool)
(declare-fun |Seq#Index_39163| (T@Seq_39163 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3752| (T@Seq_3752 Int) Int)
(declare-fun |Seq#Empty_39163| () T@Seq_39163)
(declare-fun |Seq#Empty_3752| () T@Seq_3752)
(declare-fun p_2 (T@Ref) T@Field_37170_37171)
(declare-fun IsPredicateField_19513_19514 (T@Field_37170_37171) Bool)
(declare-fun |p#trigger_19513| (T@PolymorphicMapType_30872 T@Field_37170_37171) Bool)
(declare-fun |p#everUsed_19513| (T@Field_37170_37171) Bool)
(declare-fun |Seq#Update_39163| (T@Seq_39163 Int T@Ref) T@Seq_39163)
(declare-fun |Seq#Update_3752| (T@Seq_3752 Int Int) T@Seq_3752)
(declare-fun |Seq#Take_39163| (T@Seq_39163 Int) T@Seq_39163)
(declare-fun |Seq#Take_3752| (T@Seq_3752 Int) T@Seq_3752)
(declare-fun |Seq#Contains_3752| (T@Seq_3752 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3752)
(declare-fun |Seq#Contains_19566| (T@Seq_39163 T@Ref) Bool)
(declare-fun |Seq#Skolem_19566| (T@Seq_39163 T@Ref) Int)
(declare-fun |Seq#Skolem_3752| (T@Seq_3752 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_30872 T@PolymorphicMapType_30872 T@PolymorphicMapType_30893) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_19538 (T@Field_38090_38091) T@Field_38103_38108)
(declare-fun HasDirectPerm_19538_19539 (T@PolymorphicMapType_30893 T@Ref T@Field_38090_38091) Bool)
(declare-fun PredicateMaskField_19513 (T@Field_37170_37171) T@Field_37183_37188)
(declare-fun HasDirectPerm_19513_19514 (T@PolymorphicMapType_30893 T@Ref T@Field_37170_37171) Bool)
(declare-fun IsPredicateField_19508_100221 (T@Field_19508_19514) Bool)
(declare-fun PredicateMaskField_19508 (T@Field_19508_19514) T@Field_19508_37188)
(declare-fun HasDirectPerm_19508_19514 (T@PolymorphicMapType_30893 T@Ref T@Field_19508_19514) Bool)
(declare-fun IsWandField_19538_105917 (T@Field_38090_38091) Bool)
(declare-fun WandMaskField_19538 (T@Field_38090_38091) T@Field_38103_38108)
(declare-fun IsWandField_19513_105560 (T@Field_37170_37171) Bool)
(declare-fun WandMaskField_19513 (T@Field_37170_37171) T@Field_37183_37188)
(declare-fun IsWandField_19508_105203 (T@Field_19508_19514) Bool)
(declare-fun WandMaskField_19508 (T@Field_19508_19514) T@Field_19508_37188)
(declare-fun |Seq#Singleton_39163| (T@Ref) T@Seq_39163)
(declare-fun |Seq#Singleton_3752| (Int) T@Seq_3752)
(declare-fun |p2#sm| (T@Ref Int) T@Field_38103_38108)
(declare-fun |p#sm| (T@Ref) T@Field_37183_37188)
(declare-fun |Seq#Append_39163| (T@Seq_39163 T@Seq_39163) T@Seq_39163)
(declare-fun |Seq#Append_3752| (T@Seq_3752 T@Seq_3752) T@Seq_3752)
(declare-fun dummyHeap () T@PolymorphicMapType_30872)
(declare-fun ZeroMask () T@PolymorphicMapType_30893)
(declare-fun InsidePredicate_38090_38090 (T@Field_38090_38091 T@FrameType T@Field_38090_38091 T@FrameType) Bool)
(declare-fun InsidePredicate_37170_37170 (T@Field_37170_37171 T@FrameType T@Field_37170_37171 T@FrameType) Bool)
(declare-fun InsidePredicate_30932_30932 (T@Field_19508_19514 T@FrameType T@Field_19508_19514 T@FrameType) Bool)
(declare-fun IsPredicateField_19508_3874 (T@Field_37093_3874) Bool)
(declare-fun IsWandField_19508_3874 (T@Field_37093_3874) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_19538_116235 (T@Field_38103_38108) Bool)
(declare-fun IsWandField_19538_116251 (T@Field_38103_38108) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_19538_30946 (T@Field_19538_30946) Bool)
(declare-fun IsWandField_19538_30946 (T@Field_19538_30946) Bool)
(declare-fun IsPredicateField_19538_53 (T@Field_19538_53) Bool)
(declare-fun IsWandField_19538_53 (T@Field_19538_53) Bool)
(declare-fun IsPredicateField_19538_3874 (T@Field_19538_3874) Bool)
(declare-fun IsWandField_19538_3874 (T@Field_19538_3874) Bool)
(declare-fun IsPredicateField_19513_115404 (T@Field_37183_37188) Bool)
(declare-fun IsWandField_19513_115420 (T@Field_37183_37188) Bool)
(declare-fun IsPredicateField_19513_30946 (T@Field_19513_30946) Bool)
(declare-fun IsWandField_19513_30946 (T@Field_19513_30946) Bool)
(declare-fun IsPredicateField_19513_53 (T@Field_19513_53) Bool)
(declare-fun IsWandField_19513_53 (T@Field_19513_53) Bool)
(declare-fun IsPredicateField_19513_3874 (T@Field_19513_3874) Bool)
(declare-fun IsWandField_19513_3874 (T@Field_19513_3874) Bool)
(declare-fun IsPredicateField_19508_114573 (T@Field_19508_37188) Bool)
(declare-fun IsWandField_19508_114589 (T@Field_19508_37188) Bool)
(declare-fun IsPredicateField_19508_30946 (T@Field_30945_30946) Bool)
(declare-fun IsWandField_19508_30946 (T@Field_30945_30946) Bool)
(declare-fun IsPredicateField_19508_53 (T@Field_30932_53) Bool)
(declare-fun IsWandField_19508_53 (T@Field_30932_53) Bool)
(declare-fun HasDirectPerm_19538_99976 (T@PolymorphicMapType_30893 T@Ref T@Field_38103_38108) Bool)
(declare-fun HasDirectPerm_19538_30946 (T@PolymorphicMapType_30893 T@Ref T@Field_19538_30946) Bool)
(declare-fun HasDirectPerm_19538_53 (T@PolymorphicMapType_30893 T@Ref T@Field_19538_53) Bool)
(declare-fun HasDirectPerm_19538_3874 (T@PolymorphicMapType_30893 T@Ref T@Field_19538_3874) Bool)
(declare-fun HasDirectPerm_19513_98878 (T@PolymorphicMapType_30893 T@Ref T@Field_37183_37188) Bool)
(declare-fun HasDirectPerm_19513_30946 (T@PolymorphicMapType_30893 T@Ref T@Field_19513_30946) Bool)
(declare-fun HasDirectPerm_19513_53 (T@PolymorphicMapType_30893 T@Ref T@Field_19513_53) Bool)
(declare-fun HasDirectPerm_19513_3874 (T@PolymorphicMapType_30893 T@Ref T@Field_19513_3874) Bool)
(declare-fun HasDirectPerm_19508_97737 (T@PolymorphicMapType_30893 T@Ref T@Field_19508_37188) Bool)
(declare-fun HasDirectPerm_19508_30946 (T@PolymorphicMapType_30893 T@Ref T@Field_30945_30946) Bool)
(declare-fun HasDirectPerm_19508_53 (T@PolymorphicMapType_30893 T@Ref T@Field_30932_53) Bool)
(declare-fun HasDirectPerm_19508_3874 (T@PolymorphicMapType_30893 T@Ref T@Field_37093_3874) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_30893 T@PolymorphicMapType_30893 T@PolymorphicMapType_30893) Bool)
(declare-fun |Seq#Equal_39163| (T@Seq_39163 T@Seq_39163) Bool)
(declare-fun |Seq#Equal_3752| (T@Seq_3752 T@Seq_3752) Bool)
(declare-fun |Seq#ContainsTrigger_19566| (T@Seq_39163 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3752| (T@Seq_3752 Int) Bool)
(declare-fun getPredWandId_19538_19539 (T@Field_38090_38091) Int)
(declare-fun getPredWandId_19513_19514 (T@Field_37170_37171) Int)
(declare-fun |Seq#SkolemDiff_39163| (T@Seq_39163 T@Seq_39163) Int)
(declare-fun |Seq#SkolemDiff_3752| (T@Seq_3752 T@Seq_3752) Int)
(declare-fun InsidePredicate_38090_37170 (T@Field_38090_38091 T@FrameType T@Field_37170_37171 T@FrameType) Bool)
(declare-fun InsidePredicate_38090_30932 (T@Field_38090_38091 T@FrameType T@Field_19508_19514 T@FrameType) Bool)
(declare-fun InsidePredicate_37170_38090 (T@Field_37170_37171 T@FrameType T@Field_38090_38091 T@FrameType) Bool)
(declare-fun InsidePredicate_37170_30932 (T@Field_37170_37171 T@FrameType T@Field_19508_19514 T@FrameType) Bool)
(declare-fun InsidePredicate_30932_38090 (T@Field_19508_19514 T@FrameType T@Field_38090_38091 T@FrameType) Bool)
(declare-fun InsidePredicate_30932_37170 (T@Field_19508_19514 T@FrameType T@Field_37170_37171 T@FrameType) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((s T@Seq_39163) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_39163| s)) (= (|Seq#Length_39163| (|Seq#Drop_39163| s n)) (- (|Seq#Length_39163| s) n))) (=> (< (|Seq#Length_39163| s) n) (= (|Seq#Length_39163| (|Seq#Drop_39163| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_39163| (|Seq#Drop_39163| s n)) (|Seq#Length_39163| s))))
 :qid |stdinbpl.393:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_39163| (|Seq#Drop_39163| s n)))
 :pattern ( (|Seq#Length_39163| s) (|Seq#Drop_39163| s n))
)))
(assert (forall ((s@@0 T@Seq_3752) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3752| s@@0)) (= (|Seq#Length_3752| (|Seq#Drop_3752| s@@0 n@@0)) (- (|Seq#Length_3752| s@@0) n@@0))) (=> (< (|Seq#Length_3752| s@@0) n@@0) (= (|Seq#Length_3752| (|Seq#Drop_3752| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3752| (|Seq#Drop_3752| s@@0 n@@0)) (|Seq#Length_3752| s@@0))))
 :qid |stdinbpl.393:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3752| (|Seq#Drop_3752| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3752| s@@0) (|Seq#Drop_3752| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_30872) (Heap1 T@PolymorphicMapType_30872) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_30872) (Mask T@PolymorphicMapType_30893) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_30872) (Heap1@@0 T@PolymorphicMapType_30872) (Heap2 T@PolymorphicMapType_30872) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_38103_38108) ) (!  (not (select (|PolymorphicMapType_31421_38090_104114#PolymorphicMapType_31421| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31421_38090_104114#PolymorphicMapType_31421| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_38090_38091) ) (!  (not (select (|PolymorphicMapType_31421_38090_37171#PolymorphicMapType_31421| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31421_38090_37171#PolymorphicMapType_31421| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_19538_30946) ) (!  (not (select (|PolymorphicMapType_31421_38090_30946#PolymorphicMapType_31421| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31421_38090_30946#PolymorphicMapType_31421| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_19538_53) ) (!  (not (select (|PolymorphicMapType_31421_38090_53#PolymorphicMapType_31421| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31421_38090_53#PolymorphicMapType_31421| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_19538_3874) ) (!  (not (select (|PolymorphicMapType_31421_38090_3874#PolymorphicMapType_31421| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31421_38090_3874#PolymorphicMapType_31421| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_37183_37188) ) (!  (not (select (|PolymorphicMapType_31421_37170_103066#PolymorphicMapType_31421| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31421_37170_103066#PolymorphicMapType_31421| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_37170_37171) ) (!  (not (select (|PolymorphicMapType_31421_37170_37171#PolymorphicMapType_31421| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31421_37170_37171#PolymorphicMapType_31421| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_19513_30946) ) (!  (not (select (|PolymorphicMapType_31421_37170_30946#PolymorphicMapType_31421| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31421_37170_30946#PolymorphicMapType_31421| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_19513_53) ) (!  (not (select (|PolymorphicMapType_31421_37170_53#PolymorphicMapType_31421| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31421_37170_53#PolymorphicMapType_31421| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_19513_3874) ) (!  (not (select (|PolymorphicMapType_31421_37170_3874#PolymorphicMapType_31421| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31421_37170_3874#PolymorphicMapType_31421| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_19508_37188) ) (!  (not (select (|PolymorphicMapType_31421_19508_102018#PolymorphicMapType_31421| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31421_19508_102018#PolymorphicMapType_31421| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_19508_19514) ) (!  (not (select (|PolymorphicMapType_31421_19508_37171#PolymorphicMapType_31421| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31421_19508_37171#PolymorphicMapType_31421| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_30945_30946) ) (!  (not (select (|PolymorphicMapType_31421_19508_30946#PolymorphicMapType_31421| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31421_19508_30946#PolymorphicMapType_31421| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_30932_53) ) (!  (not (select (|PolymorphicMapType_31421_19508_53#PolymorphicMapType_31421| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31421_19508_53#PolymorphicMapType_31421| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_37093_3874) ) (!  (not (select (|PolymorphicMapType_31421_19508_3874#PolymorphicMapType_31421| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31421_19508_3874#PolymorphicMapType_31421| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((r_1 T@Ref) (i Int) ) (! (IsPredicateField_19538_19539 (p2 r_1 i))
 :qid |stdinbpl.736:15|
 :skolemid |65|
 :pattern ( (p2 r_1 i))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_30872) (r_1@@0 T@Ref) (i@@0 Int) ) (! (|p2#everUsed_19538| (p2 r_1@@0 i@@0))
 :qid |stdinbpl.755:15|
 :skolemid |69|
 :pattern ( (|p2#trigger_19538| Heap@@0 (p2 r_1@@0 i@@0)))
)))
(assert (forall ((s@@1 T@Seq_39163) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_39163| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_39163| (|Seq#Drop_39163| s@@1 n@@1) j) (|Seq#Index_39163| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.414:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_39163| (|Seq#Drop_39163| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3752) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3752| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3752| (|Seq#Drop_3752| s@@2 n@@2) j@@0) (|Seq#Index_3752| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.414:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3752| (|Seq#Drop_3752| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_39163| |Seq#Empty_39163|) 0))
(assert (= (|Seq#Length_3752| |Seq#Empty_3752|) 0))
(assert (forall ((r_1@@1 T@Ref) ) (! (IsPredicateField_19513_19514 (p_2 r_1@@1))
 :qid |stdinbpl.682:15|
 :skolemid |59|
 :pattern ( (p_2 r_1@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_30872) (r_1@@2 T@Ref) ) (! (|p#everUsed_19513| (p_2 r_1@@2))
 :qid |stdinbpl.701:15|
 :skolemid |63|
 :pattern ( (|p#trigger_19513| Heap@@1 (p_2 r_1@@2)))
)))
(assert (forall ((s@@3 T@Seq_39163) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_39163| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_39163| (|Seq#Update_39163| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_39163| (|Seq#Update_39163| s@@3 i@@1 v) n@@3) (|Seq#Index_39163| s@@3 n@@3)))))
 :qid |stdinbpl.369:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_39163| (|Seq#Update_39163| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_39163| s@@3 n@@3) (|Seq#Update_39163| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3752) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3752| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3752| (|Seq#Update_3752| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3752| (|Seq#Update_3752| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3752| s@@4 n@@4)))))
 :qid |stdinbpl.369:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3752| (|Seq#Update_3752| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3752| s@@4 n@@4) (|Seq#Update_3752| s@@4 i@@2 v@@0))
)))
(assert (forall ((s@@5 T@Seq_39163) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_39163| s@@5)) (= (|Seq#Length_39163| (|Seq#Take_39163| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_39163| s@@5) n@@5) (= (|Seq#Length_39163| (|Seq#Take_39163| s@@5 n@@5)) (|Seq#Length_39163| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_39163| (|Seq#Take_39163| s@@5 n@@5)) 0)))
 :qid |stdinbpl.380:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_39163| (|Seq#Take_39163| s@@5 n@@5)))
 :pattern ( (|Seq#Take_39163| s@@5 n@@5) (|Seq#Length_39163| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3752) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3752| s@@6)) (= (|Seq#Length_3752| (|Seq#Take_3752| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3752| s@@6) n@@6) (= (|Seq#Length_3752| (|Seq#Take_3752| s@@6 n@@6)) (|Seq#Length_3752| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3752| (|Seq#Take_3752| s@@6 n@@6)) 0)))
 :qid |stdinbpl.380:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3752| (|Seq#Take_3752| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3752| s@@6 n@@6) (|Seq#Length_3752| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3752| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.654:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3752| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_39163) (x T@Ref) ) (!  (=> (|Seq#Contains_19566| s@@7 x) (and (and (<= 0 (|Seq#Skolem_19566| s@@7 x)) (< (|Seq#Skolem_19566| s@@7 x) (|Seq#Length_39163| s@@7))) (= (|Seq#Index_39163| s@@7 (|Seq#Skolem_19566| s@@7 x)) x)))
 :qid |stdinbpl.512:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_19566| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3752) (x@@0 Int) ) (!  (=> (|Seq#Contains_3752| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3752| s@@8 x@@0)) (< (|Seq#Skolem_3752| s@@8 x@@0) (|Seq#Length_3752| s@@8))) (= (|Seq#Index_3752| s@@8 (|Seq#Skolem_3752| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.512:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3752| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_39163) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_39163| s@@9 n@@7) s@@9))
 :qid |stdinbpl.496:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_39163| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3752) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3752| s@@10 n@@8) s@@10))
 :qid |stdinbpl.496:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3752| s@@10 n@@8))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@3 j@@1) (- i@@3 j@@1))
 :qid |stdinbpl.349:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@3 j@@1))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@4 j@@2) (+ i@@4 j@@2))
 :qid |stdinbpl.347:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@4 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_30872) (ExhaleHeap T@PolymorphicMapType_30872) (Mask@@0 T@PolymorphicMapType_30893) (pm_f_8 T@Field_38090_38091) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_19538_19539 Mask@@0 null pm_f_8) (IsPredicateField_19538_19539 pm_f_8)) (= (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@2) null (PredicateMaskField_19538 pm_f_8)) (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| ExhaleHeap) null (PredicateMaskField_19538 pm_f_8)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_19538_19539 pm_f_8) (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| ExhaleHeap) null (PredicateMaskField_19538 pm_f_8)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_30872) (ExhaleHeap@@0 T@PolymorphicMapType_30872) (Mask@@1 T@PolymorphicMapType_30893) (pm_f_8@@0 T@Field_37170_37171) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_19513_19514 Mask@@1 null pm_f_8@@0) (IsPredicateField_19513_19514 pm_f_8@@0)) (= (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@3) null (PredicateMaskField_19513 pm_f_8@@0)) (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| ExhaleHeap@@0) null (PredicateMaskField_19513 pm_f_8@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_19513_19514 pm_f_8@@0) (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| ExhaleHeap@@0) null (PredicateMaskField_19513 pm_f_8@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_30872) (ExhaleHeap@@1 T@PolymorphicMapType_30872) (Mask@@2 T@PolymorphicMapType_30893) (pm_f_8@@1 T@Field_19508_19514) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_19508_19514 Mask@@2 null pm_f_8@@1) (IsPredicateField_19508_100221 pm_f_8@@1)) (= (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@4) null (PredicateMaskField_19508 pm_f_8@@1)) (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| ExhaleHeap@@1) null (PredicateMaskField_19508 pm_f_8@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_19508_100221 pm_f_8@@1) (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| ExhaleHeap@@1) null (PredicateMaskField_19508 pm_f_8@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_30872) (ExhaleHeap@@2 T@PolymorphicMapType_30872) (Mask@@3 T@PolymorphicMapType_30893) (pm_f_8@@2 T@Field_38090_38091) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_19538_19539 Mask@@3 null pm_f_8@@2) (IsWandField_19538_105917 pm_f_8@@2)) (= (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@5) null (WandMaskField_19538 pm_f_8@@2)) (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| ExhaleHeap@@2) null (WandMaskField_19538 pm_f_8@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_19538_105917 pm_f_8@@2) (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| ExhaleHeap@@2) null (WandMaskField_19538 pm_f_8@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_30872) (ExhaleHeap@@3 T@PolymorphicMapType_30872) (Mask@@4 T@PolymorphicMapType_30893) (pm_f_8@@3 T@Field_37170_37171) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_19513_19514 Mask@@4 null pm_f_8@@3) (IsWandField_19513_105560 pm_f_8@@3)) (= (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@6) null (WandMaskField_19513 pm_f_8@@3)) (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| ExhaleHeap@@3) null (WandMaskField_19513 pm_f_8@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_19513_105560 pm_f_8@@3) (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| ExhaleHeap@@3) null (WandMaskField_19513 pm_f_8@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_30872) (ExhaleHeap@@4 T@PolymorphicMapType_30872) (Mask@@5 T@PolymorphicMapType_30893) (pm_f_8@@4 T@Field_19508_19514) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_19508_19514 Mask@@5 null pm_f_8@@4) (IsWandField_19508_105203 pm_f_8@@4)) (= (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@7) null (WandMaskField_19508 pm_f_8@@4)) (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| ExhaleHeap@@4) null (WandMaskField_19508 pm_f_8@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_19508_105203 pm_f_8@@4) (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| ExhaleHeap@@4) null (WandMaskField_19508 pm_f_8@@4)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_19566| (|Seq#Singleton_39163| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.637:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_19566| (|Seq#Singleton_39163| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3752| (|Seq#Singleton_3752| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.637:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3752| (|Seq#Singleton_3752| x@@2) y@@0))
)))
(assert (forall ((r_1@@3 T@Ref) (i@@5 Int) (r2 T@Ref) (i2 Int) ) (!  (=> (= (p2 r_1@@3 i@@5) (p2 r2 i2)) (and (= r_1@@3 r2) (= i@@5 i2)))
 :qid |stdinbpl.746:15|
 :skolemid |67|
 :pattern ( (p2 r_1@@3 i@@5) (p2 r2 i2))
)))
(assert (forall ((r_1@@4 T@Ref) (i@@6 Int) (r2@@0 T@Ref) (i2@@0 Int) ) (!  (=> (= (|p2#sm| r_1@@4 i@@6) (|p2#sm| r2@@0 i2@@0)) (and (= r_1@@4 r2@@0) (= i@@6 i2@@0)))
 :qid |stdinbpl.750:15|
 :skolemid |68|
 :pattern ( (|p2#sm| r_1@@4 i@@6) (|p2#sm| r2@@0 i2@@0))
)))
(assert (forall ((s@@11 T@Seq_39163) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_39163| s@@11))) (= (|Seq#Index_39163| (|Seq#Take_39163| s@@11 n@@9) j@@3) (|Seq#Index_39163| s@@11 j@@3)))
 :qid |stdinbpl.388:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_39163| (|Seq#Take_39163| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_39163| s@@11 j@@3) (|Seq#Take_39163| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3752) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3752| s@@12))) (= (|Seq#Index_3752| (|Seq#Take_3752| s@@12 n@@10) j@@4) (|Seq#Index_3752| s@@12 j@@4)))
 :qid |stdinbpl.388:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3752| (|Seq#Take_3752| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3752| s@@12 j@@4) (|Seq#Take_3752| s@@12 n@@10))
)))
(assert (forall ((r_1@@5 T@Ref) (r2@@1 T@Ref) ) (!  (=> (= (p_2 r_1@@5) (p_2 r2@@1)) (= r_1@@5 r2@@1))
 :qid |stdinbpl.692:15|
 :skolemid |61|
 :pattern ( (p_2 r_1@@5) (p_2 r2@@1))
)))
(assert (forall ((r_1@@6 T@Ref) (r2@@2 T@Ref) ) (!  (=> (= (|p#sm| r_1@@6) (|p#sm| r2@@2)) (= r_1@@6 r2@@2))
 :qid |stdinbpl.696:15|
 :skolemid |62|
 :pattern ( (|p#sm| r_1@@6) (|p#sm| r2@@2))
)))
(assert (forall ((s@@13 T@Seq_39163) (t T@Seq_39163) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_39163| s@@13))) (< n@@11 (|Seq#Length_39163| (|Seq#Append_39163| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_39163| s@@13)) (|Seq#Length_39163| s@@13)) n@@11) (= (|Seq#Take_39163| (|Seq#Append_39163| s@@13 t) n@@11) (|Seq#Append_39163| s@@13 (|Seq#Take_39163| t (|Seq#Sub| n@@11 (|Seq#Length_39163| s@@13)))))))
 :qid |stdinbpl.473:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_39163| (|Seq#Append_39163| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3752) (t@@0 T@Seq_3752) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3752| s@@14))) (< n@@12 (|Seq#Length_3752| (|Seq#Append_3752| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3752| s@@14)) (|Seq#Length_3752| s@@14)) n@@12) (= (|Seq#Take_3752| (|Seq#Append_3752| s@@14 t@@0) n@@12) (|Seq#Append_3752| s@@14 (|Seq#Take_3752| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3752| s@@14)))))))
 :qid |stdinbpl.473:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3752| (|Seq#Append_3752| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_30872) (ExhaleHeap@@5 T@PolymorphicMapType_30872) (Mask@@6 T@PolymorphicMapType_30893) (o_18 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@8) o_18 $allocated) (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| ExhaleHeap@@5) o_18 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| ExhaleHeap@@5) o_18 $allocated))
)))
(assert (forall ((p T@Field_38090_38091) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_38090_38090 p v_1 p w))
 :qid |stdinbpl.291:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_38090_38090 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_37170_37171) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_37170_37170 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.291:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_37170_37170 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_19508_19514) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_30932_30932 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.291:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_30932_30932 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((s0 T@Seq_39163) (s1 T@Seq_39163) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_39163|)) (not (= s1 |Seq#Empty_39163|))) (<= (|Seq#Length_39163| s0) n@@13)) (< n@@13 (|Seq#Length_39163| (|Seq#Append_39163| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_39163| s0)) (|Seq#Length_39163| s0)) n@@13) (= (|Seq#Index_39163| (|Seq#Append_39163| s0 s1) n@@13) (|Seq#Index_39163| s1 (|Seq#Sub| n@@13 (|Seq#Length_39163| s0))))))
 :qid |stdinbpl.360:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_39163| (|Seq#Append_39163| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3752) (s1@@0 T@Seq_3752) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3752|)) (not (= s1@@0 |Seq#Empty_3752|))) (<= (|Seq#Length_3752| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3752| (|Seq#Append_3752| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3752| s0@@0)) (|Seq#Length_3752| s0@@0)) n@@14) (= (|Seq#Index_3752| (|Seq#Append_3752| s0@@0 s1@@0) n@@14) (|Seq#Index_3752| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3752| s0@@0))))))
 :qid |stdinbpl.360:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3752| (|Seq#Append_3752| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_19508_3874 f_7)))
(assert  (not (IsWandField_19508_3874 f_7)))
(assert  (not (IsPredicateField_19508_3874 g)))
(assert  (not (IsWandField_19508_3874 g)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_30872) (ExhaleHeap@@6 T@PolymorphicMapType_30872) (Mask@@7 T@PolymorphicMapType_30893) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@9 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_30893) (o_2@@14 T@Ref) (f_4@@14 T@Field_38103_38108) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_19538_116235 f_4@@14))) (not (IsWandField_19538_116251 f_4@@14))) (<= (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_30893) (o_2@@15 T@Ref) (f_4@@15 T@Field_19538_30946) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_19538_30946 f_4@@15))) (not (IsWandField_19538_30946 f_4@@15))) (<= (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_30893) (o_2@@16 T@Ref) (f_4@@16 T@Field_19538_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_19538_53 f_4@@16))) (not (IsWandField_19538_53 f_4@@16))) (<= (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_30893) (o_2@@17 T@Ref) (f_4@@17 T@Field_38090_38091) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_19538_19539 f_4@@17))) (not (IsWandField_19538_105917 f_4@@17))) (<= (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_30893) (o_2@@18 T@Ref) (f_4@@18 T@Field_19538_3874) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_19538_3874 f_4@@18))) (not (IsWandField_19538_3874 f_4@@18))) (<= (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_30893) (o_2@@19 T@Ref) (f_4@@19 T@Field_37183_37188) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_19513_115404 f_4@@19))) (not (IsWandField_19513_115420 f_4@@19))) (<= (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_30893) (o_2@@20 T@Ref) (f_4@@20 T@Field_19513_30946) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_19513_30946 f_4@@20))) (not (IsWandField_19513_30946 f_4@@20))) (<= (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_30893) (o_2@@21 T@Ref) (f_4@@21 T@Field_19513_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_19513_53 f_4@@21))) (not (IsWandField_19513_53 f_4@@21))) (<= (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_30893) (o_2@@22 T@Ref) (f_4@@22 T@Field_37170_37171) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_19513_19514 f_4@@22))) (not (IsWandField_19513_105560 f_4@@22))) (<= (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_30893) (o_2@@23 T@Ref) (f_4@@23 T@Field_19513_3874) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_19513_3874 f_4@@23))) (not (IsWandField_19513_3874 f_4@@23))) (<= (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_30893) (o_2@@24 T@Ref) (f_4@@24 T@Field_19508_37188) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_19508_114573 f_4@@24))) (not (IsWandField_19508_114589 f_4@@24))) (<= (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_30893) (o_2@@25 T@Ref) (f_4@@25 T@Field_30945_30946) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_19508_30946 f_4@@25))) (not (IsWandField_19508_30946 f_4@@25))) (<= (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_30893) (o_2@@26 T@Ref) (f_4@@26 T@Field_30932_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_19508_53 f_4@@26))) (not (IsWandField_19508_53 f_4@@26))) (<= (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_30893) (o_2@@27 T@Ref) (f_4@@27 T@Field_19508_19514) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_19508_100221 f_4@@27))) (not (IsWandField_19508_105203 f_4@@27))) (<= (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_30893) (o_2@@28 T@Ref) (f_4@@28 T@Field_37093_3874) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_19508_3874 f_4@@28))) (not (IsWandField_19508_3874 f_4@@28))) (<= (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_30893) (o_2@@29 T@Ref) (f_4@@29 T@Field_38103_38108) ) (! (= (HasDirectPerm_19538_99976 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19538_99976 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_30893) (o_2@@30 T@Ref) (f_4@@30 T@Field_19538_30946) ) (! (= (HasDirectPerm_19538_30946 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19538_30946 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_30893) (o_2@@31 T@Ref) (f_4@@31 T@Field_19538_53) ) (! (= (HasDirectPerm_19538_53 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19538_53 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_30893) (o_2@@32 T@Ref) (f_4@@32 T@Field_38090_38091) ) (! (= (HasDirectPerm_19538_19539 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19538_19539 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_30893) (o_2@@33 T@Ref) (f_4@@33 T@Field_19538_3874) ) (! (= (HasDirectPerm_19538_3874 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19538_3874 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_30893) (o_2@@34 T@Ref) (f_4@@34 T@Field_37183_37188) ) (! (= (HasDirectPerm_19513_98878 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19513_98878 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_30893) (o_2@@35 T@Ref) (f_4@@35 T@Field_19513_30946) ) (! (= (HasDirectPerm_19513_30946 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19513_30946 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_30893) (o_2@@36 T@Ref) (f_4@@36 T@Field_19513_53) ) (! (= (HasDirectPerm_19513_53 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19513_53 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_30893) (o_2@@37 T@Ref) (f_4@@37 T@Field_37170_37171) ) (! (= (HasDirectPerm_19513_19514 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19513_19514 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_30893) (o_2@@38 T@Ref) (f_4@@38 T@Field_19513_3874) ) (! (= (HasDirectPerm_19513_3874 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19513_3874 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_30893) (o_2@@39 T@Ref) (f_4@@39 T@Field_19508_37188) ) (! (= (HasDirectPerm_19508_97737 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19508_97737 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_30893) (o_2@@40 T@Ref) (f_4@@40 T@Field_30945_30946) ) (! (= (HasDirectPerm_19508_30946 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19508_30946 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_30893) (o_2@@41 T@Ref) (f_4@@41 T@Field_30932_53) ) (! (= (HasDirectPerm_19508_53 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19508_53 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_30893) (o_2@@42 T@Ref) (f_4@@42 T@Field_19508_19514) ) (! (= (HasDirectPerm_19508_19514 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19508_19514 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_30893) (o_2@@43 T@Ref) (f_4@@43 T@Field_37093_3874) ) (! (= (HasDirectPerm_19508_3874 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19508_3874 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.279:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3752| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.652:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3752| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_30872) (ExhaleHeap@@7 T@PolymorphicMapType_30872) (Mask@@38 T@PolymorphicMapType_30893) (o_18@@0 T@Ref) (f_26 T@Field_38103_38108) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_19538_99976 Mask@@38 o_18@@0 f_26) (= (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@10) o_18@@0 f_26) (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| ExhaleHeap@@7) o_18@@0 f_26))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| ExhaleHeap@@7) o_18@@0 f_26))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_30872) (ExhaleHeap@@8 T@PolymorphicMapType_30872) (Mask@@39 T@PolymorphicMapType_30893) (o_18@@1 T@Ref) (f_26@@0 T@Field_19538_30946) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_19538_30946 Mask@@39 o_18@@1 f_26@@0) (= (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@11) o_18@@1 f_26@@0) (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| ExhaleHeap@@8) o_18@@1 f_26@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| ExhaleHeap@@8) o_18@@1 f_26@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_30872) (ExhaleHeap@@9 T@PolymorphicMapType_30872) (Mask@@40 T@PolymorphicMapType_30893) (o_18@@2 T@Ref) (f_26@@1 T@Field_19538_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_19538_53 Mask@@40 o_18@@2 f_26@@1) (= (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@12) o_18@@2 f_26@@1) (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| ExhaleHeap@@9) o_18@@2 f_26@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| ExhaleHeap@@9) o_18@@2 f_26@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_30872) (ExhaleHeap@@10 T@PolymorphicMapType_30872) (Mask@@41 T@PolymorphicMapType_30893) (o_18@@3 T@Ref) (f_26@@2 T@Field_38090_38091) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_19538_19539 Mask@@41 o_18@@3 f_26@@2) (= (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@13) o_18@@3 f_26@@2) (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| ExhaleHeap@@10) o_18@@3 f_26@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| ExhaleHeap@@10) o_18@@3 f_26@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_30872) (ExhaleHeap@@11 T@PolymorphicMapType_30872) (Mask@@42 T@PolymorphicMapType_30893) (o_18@@4 T@Ref) (f_26@@3 T@Field_19538_3874) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_19538_3874 Mask@@42 o_18@@4 f_26@@3) (= (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@14) o_18@@4 f_26@@3) (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| ExhaleHeap@@11) o_18@@4 f_26@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| ExhaleHeap@@11) o_18@@4 f_26@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_30872) (ExhaleHeap@@12 T@PolymorphicMapType_30872) (Mask@@43 T@PolymorphicMapType_30893) (o_18@@5 T@Ref) (f_26@@4 T@Field_37183_37188) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_19513_98878 Mask@@43 o_18@@5 f_26@@4) (= (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@15) o_18@@5 f_26@@4) (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| ExhaleHeap@@12) o_18@@5 f_26@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| ExhaleHeap@@12) o_18@@5 f_26@@4))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_30872) (ExhaleHeap@@13 T@PolymorphicMapType_30872) (Mask@@44 T@PolymorphicMapType_30893) (o_18@@6 T@Ref) (f_26@@5 T@Field_19513_30946) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_19513_30946 Mask@@44 o_18@@6 f_26@@5) (= (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@16) o_18@@6 f_26@@5) (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| ExhaleHeap@@13) o_18@@6 f_26@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| ExhaleHeap@@13) o_18@@6 f_26@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_30872) (ExhaleHeap@@14 T@PolymorphicMapType_30872) (Mask@@45 T@PolymorphicMapType_30893) (o_18@@7 T@Ref) (f_26@@6 T@Field_19513_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_19513_53 Mask@@45 o_18@@7 f_26@@6) (= (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@17) o_18@@7 f_26@@6) (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| ExhaleHeap@@14) o_18@@7 f_26@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| ExhaleHeap@@14) o_18@@7 f_26@@6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_30872) (ExhaleHeap@@15 T@PolymorphicMapType_30872) (Mask@@46 T@PolymorphicMapType_30893) (o_18@@8 T@Ref) (f_26@@7 T@Field_37170_37171) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_19513_19514 Mask@@46 o_18@@8 f_26@@7) (= (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@18) o_18@@8 f_26@@7) (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| ExhaleHeap@@15) o_18@@8 f_26@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| ExhaleHeap@@15) o_18@@8 f_26@@7))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_30872) (ExhaleHeap@@16 T@PolymorphicMapType_30872) (Mask@@47 T@PolymorphicMapType_30893) (o_18@@9 T@Ref) (f_26@@8 T@Field_19513_3874) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_19513_3874 Mask@@47 o_18@@9 f_26@@8) (= (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@19) o_18@@9 f_26@@8) (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| ExhaleHeap@@16) o_18@@9 f_26@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| ExhaleHeap@@16) o_18@@9 f_26@@8))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_30872) (ExhaleHeap@@17 T@PolymorphicMapType_30872) (Mask@@48 T@PolymorphicMapType_30893) (o_18@@10 T@Ref) (f_26@@9 T@Field_19508_37188) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_19508_97737 Mask@@48 o_18@@10 f_26@@9) (= (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@20) o_18@@10 f_26@@9) (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| ExhaleHeap@@17) o_18@@10 f_26@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| ExhaleHeap@@17) o_18@@10 f_26@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_30872) (ExhaleHeap@@18 T@PolymorphicMapType_30872) (Mask@@49 T@PolymorphicMapType_30893) (o_18@@11 T@Ref) (f_26@@10 T@Field_30945_30946) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_19508_30946 Mask@@49 o_18@@11 f_26@@10) (= (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@21) o_18@@11 f_26@@10) (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| ExhaleHeap@@18) o_18@@11 f_26@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| ExhaleHeap@@18) o_18@@11 f_26@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_30872) (ExhaleHeap@@19 T@PolymorphicMapType_30872) (Mask@@50 T@PolymorphicMapType_30893) (o_18@@12 T@Ref) (f_26@@11 T@Field_30932_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_19508_53 Mask@@50 o_18@@12 f_26@@11) (= (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@22) o_18@@12 f_26@@11) (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| ExhaleHeap@@19) o_18@@12 f_26@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| ExhaleHeap@@19) o_18@@12 f_26@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_30872) (ExhaleHeap@@20 T@PolymorphicMapType_30872) (Mask@@51 T@PolymorphicMapType_30893) (o_18@@13 T@Ref) (f_26@@12 T@Field_19508_19514) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_19508_19514 Mask@@51 o_18@@13 f_26@@12) (= (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@23) o_18@@13 f_26@@12) (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| ExhaleHeap@@20) o_18@@13 f_26@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| ExhaleHeap@@20) o_18@@13 f_26@@12))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_30872) (ExhaleHeap@@21 T@PolymorphicMapType_30872) (Mask@@52 T@PolymorphicMapType_30893) (o_18@@14 T@Ref) (f_26@@13 T@Field_37093_3874) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_19508_3874 Mask@@52 o_18@@14 f_26@@13) (= (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@24) o_18@@14 f_26@@13) (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| ExhaleHeap@@21) o_18@@14 f_26@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| ExhaleHeap@@21) o_18@@14 f_26@@13))
)))
(assert (forall ((s0@@1 T@Seq_39163) (s1@@1 T@Seq_39163) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_39163|)) (not (= s1@@1 |Seq#Empty_39163|))) (= (|Seq#Length_39163| (|Seq#Append_39163| s0@@1 s1@@1)) (+ (|Seq#Length_39163| s0@@1) (|Seq#Length_39163| s1@@1))))
 :qid |stdinbpl.329:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_39163| (|Seq#Append_39163| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3752) (s1@@2 T@Seq_3752) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3752|)) (not (= s1@@2 |Seq#Empty_3752|))) (= (|Seq#Length_3752| (|Seq#Append_3752| s0@@2 s1@@2)) (+ (|Seq#Length_3752| s0@@2) (|Seq#Length_3752| s1@@2))))
 :qid |stdinbpl.329:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3752| (|Seq#Append_3752| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_38103_38108) ) (! (= (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_19538_30946) ) (! (= (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_19538_53) ) (! (= (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_38090_38091) ) (! (= (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_19538_3874) ) (! (= (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_37183_37188) ) (! (= (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_19513_30946) ) (! (= (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_19513_53) ) (! (= (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_37170_37171) ) (! (= (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_19513_3874) ) (! (= (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_19508_37188) ) (! (= (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_30945_30946) ) (! (= (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_30932_53) ) (! (= (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_19508_19514) ) (! (= (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_37093_3874) ) (! (= (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((s@@15 T@Seq_39163) (t@@1 T@Seq_39163) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_39163| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_39163| s@@15)) (|Seq#Length_39163| s@@15)) n@@15) (= (|Seq#Drop_39163| (|Seq#Append_39163| s@@15 t@@1) n@@15) (|Seq#Drop_39163| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_39163| s@@15))))))
 :qid |stdinbpl.486:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_39163| (|Seq#Append_39163| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3752) (t@@2 T@Seq_3752) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3752| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3752| s@@16)) (|Seq#Length_3752| s@@16)) n@@16) (= (|Seq#Drop_3752| (|Seq#Append_3752| s@@16 t@@2) n@@16) (|Seq#Drop_3752| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3752| s@@16))))))
 :qid |stdinbpl.486:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3752| (|Seq#Append_3752| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_30893) (SummandMask1 T@PolymorphicMapType_30893) (SummandMask2 T@PolymorphicMapType_30893) (o_2@@59 T@Ref) (f_4@@59 T@Field_38103_38108) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_30893) (SummandMask1@@0 T@PolymorphicMapType_30893) (SummandMask2@@0 T@PolymorphicMapType_30893) (o_2@@60 T@Ref) (f_4@@60 T@Field_19538_30946) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_30893) (SummandMask1@@1 T@PolymorphicMapType_30893) (SummandMask2@@1 T@PolymorphicMapType_30893) (o_2@@61 T@Ref) (f_4@@61 T@Field_19538_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_30893) (SummandMask1@@2 T@PolymorphicMapType_30893) (SummandMask2@@2 T@PolymorphicMapType_30893) (o_2@@62 T@Ref) (f_4@@62 T@Field_38090_38091) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_30893) (SummandMask1@@3 T@PolymorphicMapType_30893) (SummandMask2@@3 T@PolymorphicMapType_30893) (o_2@@63 T@Ref) (f_4@@63 T@Field_19538_3874) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_30893) (SummandMask1@@4 T@PolymorphicMapType_30893) (SummandMask2@@4 T@PolymorphicMapType_30893) (o_2@@64 T@Ref) (f_4@@64 T@Field_37183_37188) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_30893) (SummandMask1@@5 T@PolymorphicMapType_30893) (SummandMask2@@5 T@PolymorphicMapType_30893) (o_2@@65 T@Ref) (f_4@@65 T@Field_19513_30946) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_30893) (SummandMask1@@6 T@PolymorphicMapType_30893) (SummandMask2@@6 T@PolymorphicMapType_30893) (o_2@@66 T@Ref) (f_4@@66 T@Field_19513_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_30893) (SummandMask1@@7 T@PolymorphicMapType_30893) (SummandMask2@@7 T@PolymorphicMapType_30893) (o_2@@67 T@Ref) (f_4@@67 T@Field_37170_37171) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_30893) (SummandMask1@@8 T@PolymorphicMapType_30893) (SummandMask2@@8 T@PolymorphicMapType_30893) (o_2@@68 T@Ref) (f_4@@68 T@Field_19513_3874) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_30893) (SummandMask1@@9 T@PolymorphicMapType_30893) (SummandMask2@@9 T@PolymorphicMapType_30893) (o_2@@69 T@Ref) (f_4@@69 T@Field_19508_37188) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_30893) (SummandMask1@@10 T@PolymorphicMapType_30893) (SummandMask2@@10 T@PolymorphicMapType_30893) (o_2@@70 T@Ref) (f_4@@70 T@Field_30945_30946) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_30893) (SummandMask1@@11 T@PolymorphicMapType_30893) (SummandMask2@@11 T@PolymorphicMapType_30893) (o_2@@71 T@Ref) (f_4@@71 T@Field_30932_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_30893) (SummandMask1@@12 T@PolymorphicMapType_30893) (SummandMask2@@12 T@PolymorphicMapType_30893) (o_2@@72 T@Ref) (f_4@@72 T@Field_19508_19514) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_30893) (SummandMask1@@13 T@PolymorphicMapType_30893) (SummandMask2@@13 T@PolymorphicMapType_30893) (o_2@@73 T@Ref) (f_4@@73 T@Field_37093_3874) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_30872) (ExhaleHeap@@22 T@PolymorphicMapType_30872) (Mask@@53 T@PolymorphicMapType_30893) (pm_f_8@@5 T@Field_38090_38091) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_19538_19539 Mask@@53 null pm_f_8@@5) (IsPredicateField_19538_19539 pm_f_8@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_8 T@Ref) (f_26@@14 T@Field_37093_3874) ) (!  (=> (select (|PolymorphicMapType_31421_19508_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@25) null (PredicateMaskField_19538 pm_f_8@@5))) o2_8 f_26@@14) (= (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@25) o2_8 f_26@@14) (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8 f_26@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8 f_26@@14))
)) (forall ((o2_8@@0 T@Ref) (f_26@@15 T@Field_30932_53) ) (!  (=> (select (|PolymorphicMapType_31421_19508_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@25) null (PredicateMaskField_19538 pm_f_8@@5))) o2_8@@0 f_26@@15) (= (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@25) o2_8@@0 f_26@@15) (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@0 f_26@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@0 f_26@@15))
))) (forall ((o2_8@@1 T@Ref) (f_26@@16 T@Field_30945_30946) ) (!  (=> (select (|PolymorphicMapType_31421_19508_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@25) null (PredicateMaskField_19538 pm_f_8@@5))) o2_8@@1 f_26@@16) (= (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@25) o2_8@@1 f_26@@16) (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@1 f_26@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@1 f_26@@16))
))) (forall ((o2_8@@2 T@Ref) (f_26@@17 T@Field_19508_19514) ) (!  (=> (select (|PolymorphicMapType_31421_19508_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@25) null (PredicateMaskField_19538 pm_f_8@@5))) o2_8@@2 f_26@@17) (= (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@25) o2_8@@2 f_26@@17) (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@2 f_26@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@2 f_26@@17))
))) (forall ((o2_8@@3 T@Ref) (f_26@@18 T@Field_19508_37188) ) (!  (=> (select (|PolymorphicMapType_31421_19508_102018#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@25) null (PredicateMaskField_19538 pm_f_8@@5))) o2_8@@3 f_26@@18) (= (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@25) o2_8@@3 f_26@@18) (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@3 f_26@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@3 f_26@@18))
))) (forall ((o2_8@@4 T@Ref) (f_26@@19 T@Field_19513_3874) ) (!  (=> (select (|PolymorphicMapType_31421_37170_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@25) null (PredicateMaskField_19538 pm_f_8@@5))) o2_8@@4 f_26@@19) (= (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@25) o2_8@@4 f_26@@19) (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@4 f_26@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@4 f_26@@19))
))) (forall ((o2_8@@5 T@Ref) (f_26@@20 T@Field_19513_53) ) (!  (=> (select (|PolymorphicMapType_31421_37170_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@25) null (PredicateMaskField_19538 pm_f_8@@5))) o2_8@@5 f_26@@20) (= (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@25) o2_8@@5 f_26@@20) (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@5 f_26@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@5 f_26@@20))
))) (forall ((o2_8@@6 T@Ref) (f_26@@21 T@Field_19513_30946) ) (!  (=> (select (|PolymorphicMapType_31421_37170_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@25) null (PredicateMaskField_19538 pm_f_8@@5))) o2_8@@6 f_26@@21) (= (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@25) o2_8@@6 f_26@@21) (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@6 f_26@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@6 f_26@@21))
))) (forall ((o2_8@@7 T@Ref) (f_26@@22 T@Field_37170_37171) ) (!  (=> (select (|PolymorphicMapType_31421_37170_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@25) null (PredicateMaskField_19538 pm_f_8@@5))) o2_8@@7 f_26@@22) (= (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@25) o2_8@@7 f_26@@22) (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@7 f_26@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@7 f_26@@22))
))) (forall ((o2_8@@8 T@Ref) (f_26@@23 T@Field_37183_37188) ) (!  (=> (select (|PolymorphicMapType_31421_37170_103066#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@25) null (PredicateMaskField_19538 pm_f_8@@5))) o2_8@@8 f_26@@23) (= (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@25) o2_8@@8 f_26@@23) (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@8 f_26@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@8 f_26@@23))
))) (forall ((o2_8@@9 T@Ref) (f_26@@24 T@Field_19538_3874) ) (!  (=> (select (|PolymorphicMapType_31421_38090_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@25) null (PredicateMaskField_19538 pm_f_8@@5))) o2_8@@9 f_26@@24) (= (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@25) o2_8@@9 f_26@@24) (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@9 f_26@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@9 f_26@@24))
))) (forall ((o2_8@@10 T@Ref) (f_26@@25 T@Field_19538_53) ) (!  (=> (select (|PolymorphicMapType_31421_38090_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@25) null (PredicateMaskField_19538 pm_f_8@@5))) o2_8@@10 f_26@@25) (= (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@25) o2_8@@10 f_26@@25) (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@10 f_26@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@10 f_26@@25))
))) (forall ((o2_8@@11 T@Ref) (f_26@@26 T@Field_19538_30946) ) (!  (=> (select (|PolymorphicMapType_31421_38090_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@25) null (PredicateMaskField_19538 pm_f_8@@5))) o2_8@@11 f_26@@26) (= (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@25) o2_8@@11 f_26@@26) (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@11 f_26@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@11 f_26@@26))
))) (forall ((o2_8@@12 T@Ref) (f_26@@27 T@Field_38090_38091) ) (!  (=> (select (|PolymorphicMapType_31421_38090_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@25) null (PredicateMaskField_19538 pm_f_8@@5))) o2_8@@12 f_26@@27) (= (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@25) o2_8@@12 f_26@@27) (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@12 f_26@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@12 f_26@@27))
))) (forall ((o2_8@@13 T@Ref) (f_26@@28 T@Field_38103_38108) ) (!  (=> (select (|PolymorphicMapType_31421_38090_104114#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@25) null (PredicateMaskField_19538 pm_f_8@@5))) o2_8@@13 f_26@@28) (= (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@25) o2_8@@13 f_26@@28) (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@13 f_26@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| ExhaleHeap@@22) o2_8@@13 f_26@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (IsPredicateField_19538_19539 pm_f_8@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_30872) (ExhaleHeap@@23 T@PolymorphicMapType_30872) (Mask@@54 T@PolymorphicMapType_30893) (pm_f_8@@6 T@Field_37170_37171) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_19513_19514 Mask@@54 null pm_f_8@@6) (IsPredicateField_19513_19514 pm_f_8@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_8@@14 T@Ref) (f_26@@29 T@Field_37093_3874) ) (!  (=> (select (|PolymorphicMapType_31421_19508_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@26) null (PredicateMaskField_19513 pm_f_8@@6))) o2_8@@14 f_26@@29) (= (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@26) o2_8@@14 f_26@@29) (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@14 f_26@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@14 f_26@@29))
)) (forall ((o2_8@@15 T@Ref) (f_26@@30 T@Field_30932_53) ) (!  (=> (select (|PolymorphicMapType_31421_19508_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@26) null (PredicateMaskField_19513 pm_f_8@@6))) o2_8@@15 f_26@@30) (= (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@26) o2_8@@15 f_26@@30) (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@15 f_26@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@15 f_26@@30))
))) (forall ((o2_8@@16 T@Ref) (f_26@@31 T@Field_30945_30946) ) (!  (=> (select (|PolymorphicMapType_31421_19508_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@26) null (PredicateMaskField_19513 pm_f_8@@6))) o2_8@@16 f_26@@31) (= (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@26) o2_8@@16 f_26@@31) (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@16 f_26@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@16 f_26@@31))
))) (forall ((o2_8@@17 T@Ref) (f_26@@32 T@Field_19508_19514) ) (!  (=> (select (|PolymorphicMapType_31421_19508_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@26) null (PredicateMaskField_19513 pm_f_8@@6))) o2_8@@17 f_26@@32) (= (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@26) o2_8@@17 f_26@@32) (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@17 f_26@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@17 f_26@@32))
))) (forall ((o2_8@@18 T@Ref) (f_26@@33 T@Field_19508_37188) ) (!  (=> (select (|PolymorphicMapType_31421_19508_102018#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@26) null (PredicateMaskField_19513 pm_f_8@@6))) o2_8@@18 f_26@@33) (= (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@26) o2_8@@18 f_26@@33) (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@18 f_26@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@18 f_26@@33))
))) (forall ((o2_8@@19 T@Ref) (f_26@@34 T@Field_19513_3874) ) (!  (=> (select (|PolymorphicMapType_31421_37170_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@26) null (PredicateMaskField_19513 pm_f_8@@6))) o2_8@@19 f_26@@34) (= (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@26) o2_8@@19 f_26@@34) (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@19 f_26@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@19 f_26@@34))
))) (forall ((o2_8@@20 T@Ref) (f_26@@35 T@Field_19513_53) ) (!  (=> (select (|PolymorphicMapType_31421_37170_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@26) null (PredicateMaskField_19513 pm_f_8@@6))) o2_8@@20 f_26@@35) (= (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@26) o2_8@@20 f_26@@35) (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@20 f_26@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@20 f_26@@35))
))) (forall ((o2_8@@21 T@Ref) (f_26@@36 T@Field_19513_30946) ) (!  (=> (select (|PolymorphicMapType_31421_37170_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@26) null (PredicateMaskField_19513 pm_f_8@@6))) o2_8@@21 f_26@@36) (= (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@26) o2_8@@21 f_26@@36) (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@21 f_26@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@21 f_26@@36))
))) (forall ((o2_8@@22 T@Ref) (f_26@@37 T@Field_37170_37171) ) (!  (=> (select (|PolymorphicMapType_31421_37170_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@26) null (PredicateMaskField_19513 pm_f_8@@6))) o2_8@@22 f_26@@37) (= (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@26) o2_8@@22 f_26@@37) (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@22 f_26@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@22 f_26@@37))
))) (forall ((o2_8@@23 T@Ref) (f_26@@38 T@Field_37183_37188) ) (!  (=> (select (|PolymorphicMapType_31421_37170_103066#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@26) null (PredicateMaskField_19513 pm_f_8@@6))) o2_8@@23 f_26@@38) (= (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@26) o2_8@@23 f_26@@38) (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@23 f_26@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@23 f_26@@38))
))) (forall ((o2_8@@24 T@Ref) (f_26@@39 T@Field_19538_3874) ) (!  (=> (select (|PolymorphicMapType_31421_38090_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@26) null (PredicateMaskField_19513 pm_f_8@@6))) o2_8@@24 f_26@@39) (= (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@26) o2_8@@24 f_26@@39) (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@24 f_26@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@24 f_26@@39))
))) (forall ((o2_8@@25 T@Ref) (f_26@@40 T@Field_19538_53) ) (!  (=> (select (|PolymorphicMapType_31421_38090_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@26) null (PredicateMaskField_19513 pm_f_8@@6))) o2_8@@25 f_26@@40) (= (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@26) o2_8@@25 f_26@@40) (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@25 f_26@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@25 f_26@@40))
))) (forall ((o2_8@@26 T@Ref) (f_26@@41 T@Field_19538_30946) ) (!  (=> (select (|PolymorphicMapType_31421_38090_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@26) null (PredicateMaskField_19513 pm_f_8@@6))) o2_8@@26 f_26@@41) (= (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@26) o2_8@@26 f_26@@41) (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@26 f_26@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@26 f_26@@41))
))) (forall ((o2_8@@27 T@Ref) (f_26@@42 T@Field_38090_38091) ) (!  (=> (select (|PolymorphicMapType_31421_38090_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@26) null (PredicateMaskField_19513 pm_f_8@@6))) o2_8@@27 f_26@@42) (= (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@26) o2_8@@27 f_26@@42) (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@27 f_26@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@27 f_26@@42))
))) (forall ((o2_8@@28 T@Ref) (f_26@@43 T@Field_38103_38108) ) (!  (=> (select (|PolymorphicMapType_31421_38090_104114#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@26) null (PredicateMaskField_19513 pm_f_8@@6))) o2_8@@28 f_26@@43) (= (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@26) o2_8@@28 f_26@@43) (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@28 f_26@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| ExhaleHeap@@23) o2_8@@28 f_26@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (IsPredicateField_19513_19514 pm_f_8@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_30872) (ExhaleHeap@@24 T@PolymorphicMapType_30872) (Mask@@55 T@PolymorphicMapType_30893) (pm_f_8@@7 T@Field_19508_19514) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_19508_19514 Mask@@55 null pm_f_8@@7) (IsPredicateField_19508_100221 pm_f_8@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_8@@29 T@Ref) (f_26@@44 T@Field_37093_3874) ) (!  (=> (select (|PolymorphicMapType_31421_19508_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@27) null (PredicateMaskField_19508 pm_f_8@@7))) o2_8@@29 f_26@@44) (= (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@27) o2_8@@29 f_26@@44) (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@29 f_26@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@29 f_26@@44))
)) (forall ((o2_8@@30 T@Ref) (f_26@@45 T@Field_30932_53) ) (!  (=> (select (|PolymorphicMapType_31421_19508_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@27) null (PredicateMaskField_19508 pm_f_8@@7))) o2_8@@30 f_26@@45) (= (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@27) o2_8@@30 f_26@@45) (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@30 f_26@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@30 f_26@@45))
))) (forall ((o2_8@@31 T@Ref) (f_26@@46 T@Field_30945_30946) ) (!  (=> (select (|PolymorphicMapType_31421_19508_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@27) null (PredicateMaskField_19508 pm_f_8@@7))) o2_8@@31 f_26@@46) (= (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@27) o2_8@@31 f_26@@46) (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@31 f_26@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@31 f_26@@46))
))) (forall ((o2_8@@32 T@Ref) (f_26@@47 T@Field_19508_19514) ) (!  (=> (select (|PolymorphicMapType_31421_19508_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@27) null (PredicateMaskField_19508 pm_f_8@@7))) o2_8@@32 f_26@@47) (= (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@27) o2_8@@32 f_26@@47) (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@32 f_26@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@32 f_26@@47))
))) (forall ((o2_8@@33 T@Ref) (f_26@@48 T@Field_19508_37188) ) (!  (=> (select (|PolymorphicMapType_31421_19508_102018#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@27) null (PredicateMaskField_19508 pm_f_8@@7))) o2_8@@33 f_26@@48) (= (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@27) o2_8@@33 f_26@@48) (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@33 f_26@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@33 f_26@@48))
))) (forall ((o2_8@@34 T@Ref) (f_26@@49 T@Field_19513_3874) ) (!  (=> (select (|PolymorphicMapType_31421_37170_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@27) null (PredicateMaskField_19508 pm_f_8@@7))) o2_8@@34 f_26@@49) (= (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@27) o2_8@@34 f_26@@49) (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@34 f_26@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@34 f_26@@49))
))) (forall ((o2_8@@35 T@Ref) (f_26@@50 T@Field_19513_53) ) (!  (=> (select (|PolymorphicMapType_31421_37170_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@27) null (PredicateMaskField_19508 pm_f_8@@7))) o2_8@@35 f_26@@50) (= (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@27) o2_8@@35 f_26@@50) (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@35 f_26@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@35 f_26@@50))
))) (forall ((o2_8@@36 T@Ref) (f_26@@51 T@Field_19513_30946) ) (!  (=> (select (|PolymorphicMapType_31421_37170_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@27) null (PredicateMaskField_19508 pm_f_8@@7))) o2_8@@36 f_26@@51) (= (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@27) o2_8@@36 f_26@@51) (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@36 f_26@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@36 f_26@@51))
))) (forall ((o2_8@@37 T@Ref) (f_26@@52 T@Field_37170_37171) ) (!  (=> (select (|PolymorphicMapType_31421_37170_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@27) null (PredicateMaskField_19508 pm_f_8@@7))) o2_8@@37 f_26@@52) (= (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@27) o2_8@@37 f_26@@52) (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@37 f_26@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@37 f_26@@52))
))) (forall ((o2_8@@38 T@Ref) (f_26@@53 T@Field_37183_37188) ) (!  (=> (select (|PolymorphicMapType_31421_37170_103066#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@27) null (PredicateMaskField_19508 pm_f_8@@7))) o2_8@@38 f_26@@53) (= (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@27) o2_8@@38 f_26@@53) (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@38 f_26@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@38 f_26@@53))
))) (forall ((o2_8@@39 T@Ref) (f_26@@54 T@Field_19538_3874) ) (!  (=> (select (|PolymorphicMapType_31421_38090_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@27) null (PredicateMaskField_19508 pm_f_8@@7))) o2_8@@39 f_26@@54) (= (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@27) o2_8@@39 f_26@@54) (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@39 f_26@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@39 f_26@@54))
))) (forall ((o2_8@@40 T@Ref) (f_26@@55 T@Field_19538_53) ) (!  (=> (select (|PolymorphicMapType_31421_38090_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@27) null (PredicateMaskField_19508 pm_f_8@@7))) o2_8@@40 f_26@@55) (= (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@27) o2_8@@40 f_26@@55) (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@40 f_26@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@40 f_26@@55))
))) (forall ((o2_8@@41 T@Ref) (f_26@@56 T@Field_19538_30946) ) (!  (=> (select (|PolymorphicMapType_31421_38090_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@27) null (PredicateMaskField_19508 pm_f_8@@7))) o2_8@@41 f_26@@56) (= (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@27) o2_8@@41 f_26@@56) (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@41 f_26@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@41 f_26@@56))
))) (forall ((o2_8@@42 T@Ref) (f_26@@57 T@Field_38090_38091) ) (!  (=> (select (|PolymorphicMapType_31421_38090_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@27) null (PredicateMaskField_19508 pm_f_8@@7))) o2_8@@42 f_26@@57) (= (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@27) o2_8@@42 f_26@@57) (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@42 f_26@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@42 f_26@@57))
))) (forall ((o2_8@@43 T@Ref) (f_26@@58 T@Field_38103_38108) ) (!  (=> (select (|PolymorphicMapType_31421_38090_104114#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@27) null (PredicateMaskField_19508 pm_f_8@@7))) o2_8@@43 f_26@@58) (= (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@27) o2_8@@43 f_26@@58) (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@43 f_26@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| ExhaleHeap@@24) o2_8@@43 f_26@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (IsPredicateField_19508_100221 pm_f_8@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_30872) (ExhaleHeap@@25 T@PolymorphicMapType_30872) (Mask@@56 T@PolymorphicMapType_30893) (pm_f_8@@8 T@Field_38090_38091) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_19538_19539 Mask@@56 null pm_f_8@@8) (IsWandField_19538_105917 pm_f_8@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_8@@44 T@Ref) (f_26@@59 T@Field_37093_3874) ) (!  (=> (select (|PolymorphicMapType_31421_19508_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@28) null (WandMaskField_19538 pm_f_8@@8))) o2_8@@44 f_26@@59) (= (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@28) o2_8@@44 f_26@@59) (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@44 f_26@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@44 f_26@@59))
)) (forall ((o2_8@@45 T@Ref) (f_26@@60 T@Field_30932_53) ) (!  (=> (select (|PolymorphicMapType_31421_19508_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@28) null (WandMaskField_19538 pm_f_8@@8))) o2_8@@45 f_26@@60) (= (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@28) o2_8@@45 f_26@@60) (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@45 f_26@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@45 f_26@@60))
))) (forall ((o2_8@@46 T@Ref) (f_26@@61 T@Field_30945_30946) ) (!  (=> (select (|PolymorphicMapType_31421_19508_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@28) null (WandMaskField_19538 pm_f_8@@8))) o2_8@@46 f_26@@61) (= (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@28) o2_8@@46 f_26@@61) (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@46 f_26@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@46 f_26@@61))
))) (forall ((o2_8@@47 T@Ref) (f_26@@62 T@Field_19508_19514) ) (!  (=> (select (|PolymorphicMapType_31421_19508_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@28) null (WandMaskField_19538 pm_f_8@@8))) o2_8@@47 f_26@@62) (= (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@28) o2_8@@47 f_26@@62) (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@47 f_26@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@47 f_26@@62))
))) (forall ((o2_8@@48 T@Ref) (f_26@@63 T@Field_19508_37188) ) (!  (=> (select (|PolymorphicMapType_31421_19508_102018#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@28) null (WandMaskField_19538 pm_f_8@@8))) o2_8@@48 f_26@@63) (= (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@28) o2_8@@48 f_26@@63) (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@48 f_26@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@48 f_26@@63))
))) (forall ((o2_8@@49 T@Ref) (f_26@@64 T@Field_19513_3874) ) (!  (=> (select (|PolymorphicMapType_31421_37170_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@28) null (WandMaskField_19538 pm_f_8@@8))) o2_8@@49 f_26@@64) (= (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@28) o2_8@@49 f_26@@64) (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@49 f_26@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@49 f_26@@64))
))) (forall ((o2_8@@50 T@Ref) (f_26@@65 T@Field_19513_53) ) (!  (=> (select (|PolymorphicMapType_31421_37170_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@28) null (WandMaskField_19538 pm_f_8@@8))) o2_8@@50 f_26@@65) (= (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@28) o2_8@@50 f_26@@65) (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@50 f_26@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@50 f_26@@65))
))) (forall ((o2_8@@51 T@Ref) (f_26@@66 T@Field_19513_30946) ) (!  (=> (select (|PolymorphicMapType_31421_37170_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@28) null (WandMaskField_19538 pm_f_8@@8))) o2_8@@51 f_26@@66) (= (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@28) o2_8@@51 f_26@@66) (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@51 f_26@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@51 f_26@@66))
))) (forall ((o2_8@@52 T@Ref) (f_26@@67 T@Field_37170_37171) ) (!  (=> (select (|PolymorphicMapType_31421_37170_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@28) null (WandMaskField_19538 pm_f_8@@8))) o2_8@@52 f_26@@67) (= (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@28) o2_8@@52 f_26@@67) (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@52 f_26@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@52 f_26@@67))
))) (forall ((o2_8@@53 T@Ref) (f_26@@68 T@Field_37183_37188) ) (!  (=> (select (|PolymorphicMapType_31421_37170_103066#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@28) null (WandMaskField_19538 pm_f_8@@8))) o2_8@@53 f_26@@68) (= (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@28) o2_8@@53 f_26@@68) (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@53 f_26@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@53 f_26@@68))
))) (forall ((o2_8@@54 T@Ref) (f_26@@69 T@Field_19538_3874) ) (!  (=> (select (|PolymorphicMapType_31421_38090_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@28) null (WandMaskField_19538 pm_f_8@@8))) o2_8@@54 f_26@@69) (= (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@28) o2_8@@54 f_26@@69) (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@54 f_26@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@54 f_26@@69))
))) (forall ((o2_8@@55 T@Ref) (f_26@@70 T@Field_19538_53) ) (!  (=> (select (|PolymorphicMapType_31421_38090_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@28) null (WandMaskField_19538 pm_f_8@@8))) o2_8@@55 f_26@@70) (= (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@28) o2_8@@55 f_26@@70) (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@55 f_26@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@55 f_26@@70))
))) (forall ((o2_8@@56 T@Ref) (f_26@@71 T@Field_19538_30946) ) (!  (=> (select (|PolymorphicMapType_31421_38090_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@28) null (WandMaskField_19538 pm_f_8@@8))) o2_8@@56 f_26@@71) (= (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@28) o2_8@@56 f_26@@71) (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@56 f_26@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@56 f_26@@71))
))) (forall ((o2_8@@57 T@Ref) (f_26@@72 T@Field_38090_38091) ) (!  (=> (select (|PolymorphicMapType_31421_38090_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@28) null (WandMaskField_19538 pm_f_8@@8))) o2_8@@57 f_26@@72) (= (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@28) o2_8@@57 f_26@@72) (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@57 f_26@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@57 f_26@@72))
))) (forall ((o2_8@@58 T@Ref) (f_26@@73 T@Field_38103_38108) ) (!  (=> (select (|PolymorphicMapType_31421_38090_104114#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@28) null (WandMaskField_19538 pm_f_8@@8))) o2_8@@58 f_26@@73) (= (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@28) o2_8@@58 f_26@@73) (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@58 f_26@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| ExhaleHeap@@25) o2_8@@58 f_26@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (IsWandField_19538_105917 pm_f_8@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_30872) (ExhaleHeap@@26 T@PolymorphicMapType_30872) (Mask@@57 T@PolymorphicMapType_30893) (pm_f_8@@9 T@Field_37170_37171) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_19513_19514 Mask@@57 null pm_f_8@@9) (IsWandField_19513_105560 pm_f_8@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_8@@59 T@Ref) (f_26@@74 T@Field_37093_3874) ) (!  (=> (select (|PolymorphicMapType_31421_19508_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@29) null (WandMaskField_19513 pm_f_8@@9))) o2_8@@59 f_26@@74) (= (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@29) o2_8@@59 f_26@@74) (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@59 f_26@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@59 f_26@@74))
)) (forall ((o2_8@@60 T@Ref) (f_26@@75 T@Field_30932_53) ) (!  (=> (select (|PolymorphicMapType_31421_19508_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@29) null (WandMaskField_19513 pm_f_8@@9))) o2_8@@60 f_26@@75) (= (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@29) o2_8@@60 f_26@@75) (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@60 f_26@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@60 f_26@@75))
))) (forall ((o2_8@@61 T@Ref) (f_26@@76 T@Field_30945_30946) ) (!  (=> (select (|PolymorphicMapType_31421_19508_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@29) null (WandMaskField_19513 pm_f_8@@9))) o2_8@@61 f_26@@76) (= (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@29) o2_8@@61 f_26@@76) (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@61 f_26@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@61 f_26@@76))
))) (forall ((o2_8@@62 T@Ref) (f_26@@77 T@Field_19508_19514) ) (!  (=> (select (|PolymorphicMapType_31421_19508_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@29) null (WandMaskField_19513 pm_f_8@@9))) o2_8@@62 f_26@@77) (= (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@29) o2_8@@62 f_26@@77) (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@62 f_26@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@62 f_26@@77))
))) (forall ((o2_8@@63 T@Ref) (f_26@@78 T@Field_19508_37188) ) (!  (=> (select (|PolymorphicMapType_31421_19508_102018#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@29) null (WandMaskField_19513 pm_f_8@@9))) o2_8@@63 f_26@@78) (= (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@29) o2_8@@63 f_26@@78) (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@63 f_26@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@63 f_26@@78))
))) (forall ((o2_8@@64 T@Ref) (f_26@@79 T@Field_19513_3874) ) (!  (=> (select (|PolymorphicMapType_31421_37170_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@29) null (WandMaskField_19513 pm_f_8@@9))) o2_8@@64 f_26@@79) (= (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@29) o2_8@@64 f_26@@79) (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@64 f_26@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@64 f_26@@79))
))) (forall ((o2_8@@65 T@Ref) (f_26@@80 T@Field_19513_53) ) (!  (=> (select (|PolymorphicMapType_31421_37170_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@29) null (WandMaskField_19513 pm_f_8@@9))) o2_8@@65 f_26@@80) (= (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@29) o2_8@@65 f_26@@80) (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@65 f_26@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@65 f_26@@80))
))) (forall ((o2_8@@66 T@Ref) (f_26@@81 T@Field_19513_30946) ) (!  (=> (select (|PolymorphicMapType_31421_37170_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@29) null (WandMaskField_19513 pm_f_8@@9))) o2_8@@66 f_26@@81) (= (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@29) o2_8@@66 f_26@@81) (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@66 f_26@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@66 f_26@@81))
))) (forall ((o2_8@@67 T@Ref) (f_26@@82 T@Field_37170_37171) ) (!  (=> (select (|PolymorphicMapType_31421_37170_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@29) null (WandMaskField_19513 pm_f_8@@9))) o2_8@@67 f_26@@82) (= (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@29) o2_8@@67 f_26@@82) (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@67 f_26@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@67 f_26@@82))
))) (forall ((o2_8@@68 T@Ref) (f_26@@83 T@Field_37183_37188) ) (!  (=> (select (|PolymorphicMapType_31421_37170_103066#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@29) null (WandMaskField_19513 pm_f_8@@9))) o2_8@@68 f_26@@83) (= (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@29) o2_8@@68 f_26@@83) (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@68 f_26@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@68 f_26@@83))
))) (forall ((o2_8@@69 T@Ref) (f_26@@84 T@Field_19538_3874) ) (!  (=> (select (|PolymorphicMapType_31421_38090_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@29) null (WandMaskField_19513 pm_f_8@@9))) o2_8@@69 f_26@@84) (= (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@29) o2_8@@69 f_26@@84) (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@69 f_26@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@69 f_26@@84))
))) (forall ((o2_8@@70 T@Ref) (f_26@@85 T@Field_19538_53) ) (!  (=> (select (|PolymorphicMapType_31421_38090_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@29) null (WandMaskField_19513 pm_f_8@@9))) o2_8@@70 f_26@@85) (= (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@29) o2_8@@70 f_26@@85) (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@70 f_26@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@70 f_26@@85))
))) (forall ((o2_8@@71 T@Ref) (f_26@@86 T@Field_19538_30946) ) (!  (=> (select (|PolymorphicMapType_31421_38090_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@29) null (WandMaskField_19513 pm_f_8@@9))) o2_8@@71 f_26@@86) (= (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@29) o2_8@@71 f_26@@86) (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@71 f_26@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@71 f_26@@86))
))) (forall ((o2_8@@72 T@Ref) (f_26@@87 T@Field_38090_38091) ) (!  (=> (select (|PolymorphicMapType_31421_38090_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@29) null (WandMaskField_19513 pm_f_8@@9))) o2_8@@72 f_26@@87) (= (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@29) o2_8@@72 f_26@@87) (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@72 f_26@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@72 f_26@@87))
))) (forall ((o2_8@@73 T@Ref) (f_26@@88 T@Field_38103_38108) ) (!  (=> (select (|PolymorphicMapType_31421_38090_104114#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@29) null (WandMaskField_19513 pm_f_8@@9))) o2_8@@73 f_26@@88) (= (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@29) o2_8@@73 f_26@@88) (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@73 f_26@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| ExhaleHeap@@26) o2_8@@73 f_26@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (IsWandField_19513_105560 pm_f_8@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_30872) (ExhaleHeap@@27 T@PolymorphicMapType_30872) (Mask@@58 T@PolymorphicMapType_30893) (pm_f_8@@10 T@Field_19508_19514) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_19508_19514 Mask@@58 null pm_f_8@@10) (IsWandField_19508_105203 pm_f_8@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_8@@74 T@Ref) (f_26@@89 T@Field_37093_3874) ) (!  (=> (select (|PolymorphicMapType_31421_19508_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@30) null (WandMaskField_19508 pm_f_8@@10))) o2_8@@74 f_26@@89) (= (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@30) o2_8@@74 f_26@@89) (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@74 f_26@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@74 f_26@@89))
)) (forall ((o2_8@@75 T@Ref) (f_26@@90 T@Field_30932_53) ) (!  (=> (select (|PolymorphicMapType_31421_19508_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@30) null (WandMaskField_19508 pm_f_8@@10))) o2_8@@75 f_26@@90) (= (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@30) o2_8@@75 f_26@@90) (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@75 f_26@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@75 f_26@@90))
))) (forall ((o2_8@@76 T@Ref) (f_26@@91 T@Field_30945_30946) ) (!  (=> (select (|PolymorphicMapType_31421_19508_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@30) null (WandMaskField_19508 pm_f_8@@10))) o2_8@@76 f_26@@91) (= (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@30) o2_8@@76 f_26@@91) (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@76 f_26@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@76 f_26@@91))
))) (forall ((o2_8@@77 T@Ref) (f_26@@92 T@Field_19508_19514) ) (!  (=> (select (|PolymorphicMapType_31421_19508_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@30) null (WandMaskField_19508 pm_f_8@@10))) o2_8@@77 f_26@@92) (= (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@30) o2_8@@77 f_26@@92) (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@77 f_26@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@77 f_26@@92))
))) (forall ((o2_8@@78 T@Ref) (f_26@@93 T@Field_19508_37188) ) (!  (=> (select (|PolymorphicMapType_31421_19508_102018#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@30) null (WandMaskField_19508 pm_f_8@@10))) o2_8@@78 f_26@@93) (= (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@30) o2_8@@78 f_26@@93) (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@78 f_26@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@78 f_26@@93))
))) (forall ((o2_8@@79 T@Ref) (f_26@@94 T@Field_19513_3874) ) (!  (=> (select (|PolymorphicMapType_31421_37170_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@30) null (WandMaskField_19508 pm_f_8@@10))) o2_8@@79 f_26@@94) (= (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@30) o2_8@@79 f_26@@94) (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@79 f_26@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@79 f_26@@94))
))) (forall ((o2_8@@80 T@Ref) (f_26@@95 T@Field_19513_53) ) (!  (=> (select (|PolymorphicMapType_31421_37170_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@30) null (WandMaskField_19508 pm_f_8@@10))) o2_8@@80 f_26@@95) (= (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@30) o2_8@@80 f_26@@95) (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@80 f_26@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@80 f_26@@95))
))) (forall ((o2_8@@81 T@Ref) (f_26@@96 T@Field_19513_30946) ) (!  (=> (select (|PolymorphicMapType_31421_37170_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@30) null (WandMaskField_19508 pm_f_8@@10))) o2_8@@81 f_26@@96) (= (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@30) o2_8@@81 f_26@@96) (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@81 f_26@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@81 f_26@@96))
))) (forall ((o2_8@@82 T@Ref) (f_26@@97 T@Field_37170_37171) ) (!  (=> (select (|PolymorphicMapType_31421_37170_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@30) null (WandMaskField_19508 pm_f_8@@10))) o2_8@@82 f_26@@97) (= (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@30) o2_8@@82 f_26@@97) (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@82 f_26@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@82 f_26@@97))
))) (forall ((o2_8@@83 T@Ref) (f_26@@98 T@Field_37183_37188) ) (!  (=> (select (|PolymorphicMapType_31421_37170_103066#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@30) null (WandMaskField_19508 pm_f_8@@10))) o2_8@@83 f_26@@98) (= (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@30) o2_8@@83 f_26@@98) (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@83 f_26@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@83 f_26@@98))
))) (forall ((o2_8@@84 T@Ref) (f_26@@99 T@Field_19538_3874) ) (!  (=> (select (|PolymorphicMapType_31421_38090_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@30) null (WandMaskField_19508 pm_f_8@@10))) o2_8@@84 f_26@@99) (= (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@30) o2_8@@84 f_26@@99) (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@84 f_26@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@84 f_26@@99))
))) (forall ((o2_8@@85 T@Ref) (f_26@@100 T@Field_19538_53) ) (!  (=> (select (|PolymorphicMapType_31421_38090_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@30) null (WandMaskField_19508 pm_f_8@@10))) o2_8@@85 f_26@@100) (= (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@30) o2_8@@85 f_26@@100) (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@85 f_26@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@85 f_26@@100))
))) (forall ((o2_8@@86 T@Ref) (f_26@@101 T@Field_19538_30946) ) (!  (=> (select (|PolymorphicMapType_31421_38090_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@30) null (WandMaskField_19508 pm_f_8@@10))) o2_8@@86 f_26@@101) (= (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@30) o2_8@@86 f_26@@101) (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@86 f_26@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@86 f_26@@101))
))) (forall ((o2_8@@87 T@Ref) (f_26@@102 T@Field_38090_38091) ) (!  (=> (select (|PolymorphicMapType_31421_38090_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@30) null (WandMaskField_19508 pm_f_8@@10))) o2_8@@87 f_26@@102) (= (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@30) o2_8@@87 f_26@@102) (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@87 f_26@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@87 f_26@@102))
))) (forall ((o2_8@@88 T@Ref) (f_26@@103 T@Field_38103_38108) ) (!  (=> (select (|PolymorphicMapType_31421_38090_104114#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@30) null (WandMaskField_19508 pm_f_8@@10))) o2_8@@88 f_26@@103) (= (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@30) o2_8@@88 f_26@@103) (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@88 f_26@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| ExhaleHeap@@27) o2_8@@88 f_26@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (IsWandField_19508_105203 pm_f_8@@10))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3752| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3752| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.651:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3752| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_39163) (b T@Seq_39163) ) (!  (=> (|Seq#Equal_39163| a b) (= a b))
 :qid |stdinbpl.624:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_39163| a b))
)))
(assert (forall ((a@@0 T@Seq_3752) (b@@0 T@Seq_3752) ) (!  (=> (|Seq#Equal_3752| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.624:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3752| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_39163) (i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_39163| s@@17))) (|Seq#ContainsTrigger_19566| s@@17 (|Seq#Index_39163| s@@17 i@@7)))
 :qid |stdinbpl.517:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_39163| s@@17 i@@7))
)))
(assert (forall ((s@@18 T@Seq_3752) (i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_3752| s@@18))) (|Seq#ContainsTrigger_3752| s@@18 (|Seq#Index_3752| s@@18 i@@8)))
 :qid |stdinbpl.517:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3752| s@@18 i@@8))
)))
(assert (forall ((s0@@3 T@Seq_39163) (s1@@3 T@Seq_39163) ) (!  (and (=> (= s0@@3 |Seq#Empty_39163|) (= (|Seq#Append_39163| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_39163|) (= (|Seq#Append_39163| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.335:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_39163| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3752) (s1@@4 T@Seq_3752) ) (!  (and (=> (= s0@@4 |Seq#Empty_3752|) (= (|Seq#Append_3752| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3752|) (= (|Seq#Append_3752| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.335:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3752| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_39163| (|Seq#Singleton_39163| t@@3) 0) t@@3)
 :qid |stdinbpl.339:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_39163| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3752| (|Seq#Singleton_3752| t@@4) 0) t@@4)
 :qid |stdinbpl.339:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3752| t@@4))
)))
(assert (forall ((s@@19 T@Seq_39163) ) (! (<= 0 (|Seq#Length_39163| s@@19))
 :qid |stdinbpl.318:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_39163| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3752) ) (! (<= 0 (|Seq#Length_3752| s@@20))
 :qid |stdinbpl.318:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3752| s@@20))
)))
(assert (forall ((r_1@@7 T@Ref) (i@@9 Int) ) (! (= (getPredWandId_19538_19539 (p2 r_1@@7 i@@9)) 1)
 :qid |stdinbpl.740:15|
 :skolemid |66|
 :pattern ( (p2 r_1@@7 i@@9))
)))
(assert (forall ((s0@@5 T@Seq_39163) (s1@@5 T@Seq_39163) ) (!  (=> (|Seq#Equal_39163| s0@@5 s1@@5) (and (= (|Seq#Length_39163| s0@@5) (|Seq#Length_39163| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_39163| s0@@5))) (= (|Seq#Index_39163| s0@@5 j@@6) (|Seq#Index_39163| s1@@5 j@@6)))
 :qid |stdinbpl.614:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_39163| s0@@5 j@@6))
 :pattern ( (|Seq#Index_39163| s1@@5 j@@6))
))))
 :qid |stdinbpl.611:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_39163| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3752) (s1@@6 T@Seq_3752) ) (!  (=> (|Seq#Equal_3752| s0@@6 s1@@6) (and (= (|Seq#Length_3752| s0@@6) (|Seq#Length_3752| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3752| s0@@6))) (= (|Seq#Index_3752| s0@@6 j@@7) (|Seq#Index_3752| s1@@6 j@@7)))
 :qid |stdinbpl.614:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3752| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3752| s1@@6 j@@7))
))))
 :qid |stdinbpl.611:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3752| s0@@6 s1@@6))
)))
(assert (forall ((r_1@@8 T@Ref) ) (! (= (getPredWandId_19513_19514 (p_2 r_1@@8)) 0)
 :qid |stdinbpl.686:15|
 :skolemid |60|
 :pattern ( (p_2 r_1@@8))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_39163| (|Seq#Singleton_39163| t@@5)) 1)
 :qid |stdinbpl.326:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_39163| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3752| (|Seq#Singleton_3752| t@@6)) 1)
 :qid |stdinbpl.326:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3752| t@@6))
)))
(assert (forall ((r_1@@9 T@Ref) (i@@10 Int) ) (! (= (PredicateMaskField_19538 (p2 r_1@@9 i@@10)) (|p2#sm| r_1@@9 i@@10))
 :qid |stdinbpl.732:15|
 :skolemid |64|
 :pattern ( (PredicateMaskField_19538 (p2 r_1@@9 i@@10)))
)))
(assert (forall ((s@@21 T@Seq_39163) (t@@7 T@Seq_39163) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_39163| s@@21))) (= (|Seq#Take_39163| (|Seq#Append_39163| s@@21 t@@7) n@@17) (|Seq#Take_39163| s@@21 n@@17)))
 :qid |stdinbpl.468:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_39163| (|Seq#Append_39163| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3752) (t@@8 T@Seq_3752) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3752| s@@22))) (= (|Seq#Take_3752| (|Seq#Append_3752| s@@22 t@@8) n@@18) (|Seq#Take_3752| s@@22 n@@18)))
 :qid |stdinbpl.468:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3752| (|Seq#Append_3752| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_39163) (i@@11 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length_39163| s@@23))) (= (|Seq#Length_39163| (|Seq#Update_39163| s@@23 i@@11 v@@2)) (|Seq#Length_39163| s@@23)))
 :qid |stdinbpl.367:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_39163| (|Seq#Update_39163| s@@23 i@@11 v@@2)))
 :pattern ( (|Seq#Length_39163| s@@23) (|Seq#Update_39163| s@@23 i@@11 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3752) (i@@12 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 (|Seq#Length_3752| s@@24))) (= (|Seq#Length_3752| (|Seq#Update_3752| s@@24 i@@12 v@@3)) (|Seq#Length_3752| s@@24)))
 :qid |stdinbpl.367:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3752| (|Seq#Update_3752| s@@24 i@@12 v@@3)))
 :pattern ( (|Seq#Length_3752| s@@24) (|Seq#Update_3752| s@@24 i@@12 v@@3))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_30872) (o_20 T@Ref) (f_30 T@Field_38103_38108) (v@@4 T@PolymorphicMapType_31421) ) (! (succHeap Heap@@31 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@31) (store (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@31) o_20 f_30 v@@4) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@31) (store (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@31) o_20 f_30 v@@4) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@31) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_30872) (o_20@@0 T@Ref) (f_30@@0 T@Field_38090_38091) (v@@5 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@32) (store (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@32) o_20@@0 f_30@@0 v@@5) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@32) (store (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@32) o_20@@0 f_30@@0 v@@5) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@32) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_30872) (o_20@@1 T@Ref) (f_30@@1 T@Field_19538_3874) (v@@6 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@33) (store (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@33) o_20@@1 f_30@@1 v@@6) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@33) (store (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@33) o_20@@1 f_30@@1 v@@6) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@33) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_30872) (o_20@@2 T@Ref) (f_30@@2 T@Field_19538_30946) (v@@7 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@34) (store (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@34) o_20@@2 f_30@@2 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@34) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@34) (store (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@34) o_20@@2 f_30@@2 v@@7)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_30872) (o_20@@3 T@Ref) (f_30@@3 T@Field_19538_53) (v@@8 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@35) (store (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@35) o_20@@3 f_30@@3 v@@8) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@35) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@35) (store (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@35) o_20@@3 f_30@@3 v@@8) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_30872) (o_20@@4 T@Ref) (f_30@@4 T@Field_37183_37188) (v@@9 T@PolymorphicMapType_31421) ) (! (succHeap Heap@@36 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@36) (store (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@36) o_20@@4 f_30@@4 v@@9) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@36) (store (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@36) o_20@@4 f_30@@4 v@@9) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@36) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_30872) (o_20@@5 T@Ref) (f_30@@5 T@Field_37170_37171) (v@@10 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@37) (store (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@37) o_20@@5 f_30@@5 v@@10) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@37) (store (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@37) o_20@@5 f_30@@5 v@@10) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@37) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_30872) (o_20@@6 T@Ref) (f_30@@6 T@Field_19513_3874) (v@@11 Int) ) (! (succHeap Heap@@38 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@38) (store (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@38) o_20@@6 f_30@@6 v@@11) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@38) (store (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@38) o_20@@6 f_30@@6 v@@11) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@38) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_30872) (o_20@@7 T@Ref) (f_30@@7 T@Field_19513_30946) (v@@12 T@Ref) ) (! (succHeap Heap@@39 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@39) (store (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@39) o_20@@7 f_30@@7 v@@12) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@39) (store (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@39) o_20@@7 f_30@@7 v@@12) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@39) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_30872) (o_20@@8 T@Ref) (f_30@@8 T@Field_19513_53) (v@@13 Bool) ) (! (succHeap Heap@@40 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@40) (store (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@40) o_20@@8 f_30@@8 v@@13) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@40) (store (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@40) o_20@@8 f_30@@8 v@@13) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@40) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_30872) (o_20@@9 T@Ref) (f_30@@9 T@Field_19508_37188) (v@@14 T@PolymorphicMapType_31421) ) (! (succHeap Heap@@41 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@41) (store (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@41) o_20@@9 f_30@@9 v@@14) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@41) (store (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@41) o_20@@9 f_30@@9 v@@14) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@41) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_30872) (o_20@@10 T@Ref) (f_30@@10 T@Field_19508_19514) (v@@15 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@42) (store (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@42) o_20@@10 f_30@@10 v@@15) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@42) (store (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@42) o_20@@10 f_30@@10 v@@15) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@42) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_30872) (o_20@@11 T@Ref) (f_30@@11 T@Field_37093_3874) (v@@16 Int) ) (! (succHeap Heap@@43 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@43) (store (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@43) o_20@@11 f_30@@11 v@@16) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@43) (store (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@43) o_20@@11 f_30@@11 v@@16) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@43) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_30872) (o_20@@12 T@Ref) (f_30@@12 T@Field_30945_30946) (v@@17 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@44) (store (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@44) o_20@@12 f_30@@12 v@@17) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@44) (store (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@44) o_20@@12 f_30@@12 v@@17) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@44) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_30872) (o_20@@13 T@Ref) (f_30@@13 T@Field_30932_53) (v@@18 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_30872 (store (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@45) o_20@@13 f_30@@13 v@@18) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_30872 (store (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@45) o_20@@13 f_30@@13 v@@18) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@45) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@45)))
)))
(assert (forall ((r_1@@10 T@Ref) ) (! (= (PredicateMaskField_19513 (p_2 r_1@@10)) (|p#sm| r_1@@10))
 :qid |stdinbpl.678:15|
 :skolemid |58|
 :pattern ( (PredicateMaskField_19513 (p_2 r_1@@10)))
)))
(assert (forall ((s@@25 T@Seq_39163) (t@@9 T@Seq_39163) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_39163| s@@25))) (= (|Seq#Drop_39163| (|Seq#Append_39163| s@@25 t@@9) n@@19) (|Seq#Append_39163| (|Seq#Drop_39163| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.482:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_39163| (|Seq#Append_39163| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3752) (t@@10 T@Seq_3752) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3752| s@@26))) (= (|Seq#Drop_3752| (|Seq#Append_3752| s@@26 t@@10) n@@20) (|Seq#Append_3752| (|Seq#Drop_3752| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.482:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3752| (|Seq#Append_3752| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_39163) (n@@21 Int) (i@@13 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@13)) (< i@@13 (|Seq#Length_39163| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@13 n@@21) n@@21) i@@13) (= (|Seq#Index_39163| (|Seq#Drop_39163| s@@27 n@@21) (|Seq#Sub| i@@13 n@@21)) (|Seq#Index_39163| s@@27 i@@13))))
 :qid |stdinbpl.418:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_39163| s@@27 n@@21) (|Seq#Index_39163| s@@27 i@@13))
)))
(assert (forall ((s@@28 T@Seq_3752) (n@@22 Int) (i@@14 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@14)) (< i@@14 (|Seq#Length_3752| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@14 n@@22) n@@22) i@@14) (= (|Seq#Index_3752| (|Seq#Drop_3752| s@@28 n@@22) (|Seq#Sub| i@@14 n@@22)) (|Seq#Index_3752| s@@28 i@@14))))
 :qid |stdinbpl.418:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3752| s@@28 n@@22) (|Seq#Index_3752| s@@28 i@@14))
)))
(assert (forall ((s0@@7 T@Seq_39163) (s1@@7 T@Seq_39163) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_39163|)) (not (= s1@@7 |Seq#Empty_39163|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_39163| s0@@7))) (= (|Seq#Index_39163| (|Seq#Append_39163| s0@@7 s1@@7) n@@23) (|Seq#Index_39163| s0@@7 n@@23)))
 :qid |stdinbpl.358:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_39163| (|Seq#Append_39163| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_39163| s0@@7 n@@23) (|Seq#Append_39163| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3752) (s1@@8 T@Seq_3752) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3752|)) (not (= s1@@8 |Seq#Empty_3752|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3752| s0@@8))) (= (|Seq#Index_3752| (|Seq#Append_3752| s0@@8 s1@@8) n@@24) (|Seq#Index_3752| s0@@8 n@@24)))
 :qid |stdinbpl.358:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3752| (|Seq#Append_3752| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3752| s0@@8 n@@24) (|Seq#Append_3752| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_39163) (s1@@9 T@Seq_39163) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_39163|)) (not (= s1@@9 |Seq#Empty_39163|))) (<= 0 m)) (< m (|Seq#Length_39163| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_39163| s0@@9)) (|Seq#Length_39163| s0@@9)) m) (= (|Seq#Index_39163| (|Seq#Append_39163| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_39163| s0@@9))) (|Seq#Index_39163| s1@@9 m))))
 :qid |stdinbpl.363:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_39163| s1@@9 m) (|Seq#Append_39163| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3752) (s1@@10 T@Seq_3752) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3752|)) (not (= s1@@10 |Seq#Empty_3752|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3752| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3752| s0@@10)) (|Seq#Length_3752| s0@@10)) m@@0) (= (|Seq#Index_3752| (|Seq#Append_3752| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3752| s0@@10))) (|Seq#Index_3752| s1@@10 m@@0))))
 :qid |stdinbpl.363:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3752| s1@@10 m@@0) (|Seq#Append_3752| s0@@10 s1@@10))
)))
(assert (forall ((o_20@@14 T@Ref) (f_29 T@Field_30945_30946) (Heap@@46 T@PolymorphicMapType_30872) ) (!  (=> (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@46) o_20@@14 $allocated) (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@46) (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@46) o_20@@14 f_29) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@46) o_20@@14 f_29))
)))
(assert (forall ((s@@29 T@Seq_39163) (x@@3 T@Ref) (i@@15 Int) ) (!  (=> (and (and (<= 0 i@@15) (< i@@15 (|Seq#Length_39163| s@@29))) (= (|Seq#Index_39163| s@@29 i@@15) x@@3)) (|Seq#Contains_19566| s@@29 x@@3))
 :qid |stdinbpl.515:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_19566| s@@29 x@@3) (|Seq#Index_39163| s@@29 i@@15))
)))
(assert (forall ((s@@30 T@Seq_3752) (x@@4 Int) (i@@16 Int) ) (!  (=> (and (and (<= 0 i@@16) (< i@@16 (|Seq#Length_3752| s@@30))) (= (|Seq#Index_3752| s@@30 i@@16) x@@4)) (|Seq#Contains_3752| s@@30 x@@4))
 :qid |stdinbpl.515:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3752| s@@30 x@@4) (|Seq#Index_3752| s@@30 i@@16))
)))
(assert (forall ((s0@@11 T@Seq_39163) (s1@@11 T@Seq_39163) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_39163| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_39163| s0@@11 s1@@11))) (not (= (|Seq#Length_39163| s0@@11) (|Seq#Length_39163| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_39163| s0@@11 s1@@11))) (= (|Seq#Length_39163| s0@@11) (|Seq#Length_39163| s1@@11))) (= (|Seq#SkolemDiff_39163| s0@@11 s1@@11) (|Seq#SkolemDiff_39163| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_39163| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_39163| s0@@11 s1@@11) (|Seq#Length_39163| s0@@11))) (not (= (|Seq#Index_39163| s0@@11 (|Seq#SkolemDiff_39163| s0@@11 s1@@11)) (|Seq#Index_39163| s1@@11 (|Seq#SkolemDiff_39163| s0@@11 s1@@11))))))
 :qid |stdinbpl.619:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_39163| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3752) (s1@@12 T@Seq_3752) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3752| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3752| s0@@12 s1@@12))) (not (= (|Seq#Length_3752| s0@@12) (|Seq#Length_3752| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3752| s0@@12 s1@@12))) (= (|Seq#Length_3752| s0@@12) (|Seq#Length_3752| s1@@12))) (= (|Seq#SkolemDiff_3752| s0@@12 s1@@12) (|Seq#SkolemDiff_3752| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3752| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3752| s0@@12 s1@@12) (|Seq#Length_3752| s0@@12))) (not (= (|Seq#Index_3752| s0@@12 (|Seq#SkolemDiff_3752| s0@@12 s1@@12)) (|Seq#Index_3752| s1@@12 (|Seq#SkolemDiff_3752| s0@@12 s1@@12))))))
 :qid |stdinbpl.619:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3752| s0@@12 s1@@12))
)))
(assert (forall ((p@@3 T@Field_38090_38091) (v_1@@2 T@FrameType) (q T@Field_38090_38091) (w@@2 T@FrameType) (r T@Field_38090_38091) (u T@FrameType) ) (!  (=> (and (InsidePredicate_38090_38090 p@@3 v_1@@2 q w@@2) (InsidePredicate_38090_38090 q w@@2 r u)) (InsidePredicate_38090_38090 p@@3 v_1@@2 r u))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38090_38090 p@@3 v_1@@2 q w@@2) (InsidePredicate_38090_38090 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_38090_38091) (v_1@@3 T@FrameType) (q@@0 T@Field_38090_38091) (w@@3 T@FrameType) (r@@0 T@Field_37170_37171) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_38090_38090 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_38090_37170 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_38090_37170 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38090_38090 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_38090_37170 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_38090_38091) (v_1@@4 T@FrameType) (q@@1 T@Field_38090_38091) (w@@4 T@FrameType) (r@@1 T@Field_19508_19514) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_38090_38090 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_38090_30932 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_38090_30932 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38090_38090 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_38090_30932 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_38090_38091) (v_1@@5 T@FrameType) (q@@2 T@Field_37170_37171) (w@@5 T@FrameType) (r@@2 T@Field_38090_38091) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_38090_37170 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_37170_38090 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_38090_38090 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38090_37170 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_37170_38090 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_38090_38091) (v_1@@6 T@FrameType) (q@@3 T@Field_37170_37171) (w@@6 T@FrameType) (r@@3 T@Field_37170_37171) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_38090_37170 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_37170_37170 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_38090_37170 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38090_37170 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_37170_37170 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_38090_38091) (v_1@@7 T@FrameType) (q@@4 T@Field_37170_37171) (w@@7 T@FrameType) (r@@4 T@Field_19508_19514) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_38090_37170 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_37170_30932 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_38090_30932 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38090_37170 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_37170_30932 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_38090_38091) (v_1@@8 T@FrameType) (q@@5 T@Field_19508_19514) (w@@8 T@FrameType) (r@@5 T@Field_38090_38091) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_38090_30932 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_30932_38090 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_38090_38090 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38090_30932 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_30932_38090 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_38090_38091) (v_1@@9 T@FrameType) (q@@6 T@Field_19508_19514) (w@@9 T@FrameType) (r@@6 T@Field_37170_37171) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_38090_30932 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_30932_37170 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_38090_37170 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38090_30932 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_30932_37170 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_38090_38091) (v_1@@10 T@FrameType) (q@@7 T@Field_19508_19514) (w@@10 T@FrameType) (r@@7 T@Field_19508_19514) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_38090_30932 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_30932_30932 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_38090_30932 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38090_30932 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_30932_30932 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_37170_37171) (v_1@@11 T@FrameType) (q@@8 T@Field_38090_38091) (w@@11 T@FrameType) (r@@8 T@Field_38090_38091) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_37170_38090 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_38090_38090 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_37170_38090 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37170_38090 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_38090_38090 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_37170_37171) (v_1@@12 T@FrameType) (q@@9 T@Field_38090_38091) (w@@12 T@FrameType) (r@@9 T@Field_37170_37171) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_37170_38090 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_38090_37170 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_37170_37170 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37170_38090 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_38090_37170 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_37170_37171) (v_1@@13 T@FrameType) (q@@10 T@Field_38090_38091) (w@@13 T@FrameType) (r@@10 T@Field_19508_19514) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_37170_38090 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_38090_30932 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_37170_30932 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37170_38090 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_38090_30932 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_37170_37171) (v_1@@14 T@FrameType) (q@@11 T@Field_37170_37171) (w@@14 T@FrameType) (r@@11 T@Field_38090_38091) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_37170_37170 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_37170_38090 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_37170_38090 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37170_37170 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_37170_38090 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_37170_37171) (v_1@@15 T@FrameType) (q@@12 T@Field_37170_37171) (w@@15 T@FrameType) (r@@12 T@Field_37170_37171) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_37170_37170 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_37170_37170 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_37170_37170 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37170_37170 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_37170_37170 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_37170_37171) (v_1@@16 T@FrameType) (q@@13 T@Field_37170_37171) (w@@16 T@FrameType) (r@@13 T@Field_19508_19514) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_37170_37170 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_37170_30932 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_37170_30932 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37170_37170 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_37170_30932 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_37170_37171) (v_1@@17 T@FrameType) (q@@14 T@Field_19508_19514) (w@@17 T@FrameType) (r@@14 T@Field_38090_38091) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_37170_30932 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_30932_38090 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_37170_38090 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37170_30932 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_30932_38090 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_37170_37171) (v_1@@18 T@FrameType) (q@@15 T@Field_19508_19514) (w@@18 T@FrameType) (r@@15 T@Field_37170_37171) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_37170_30932 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_30932_37170 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_37170_37170 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37170_30932 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_30932_37170 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_37170_37171) (v_1@@19 T@FrameType) (q@@16 T@Field_19508_19514) (w@@19 T@FrameType) (r@@16 T@Field_19508_19514) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_37170_30932 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_30932_30932 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_37170_30932 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37170_30932 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_30932_30932 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_19508_19514) (v_1@@20 T@FrameType) (q@@17 T@Field_38090_38091) (w@@20 T@FrameType) (r@@17 T@Field_38090_38091) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_30932_38090 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_38090_38090 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_30932_38090 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30932_38090 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_38090_38090 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_19508_19514) (v_1@@21 T@FrameType) (q@@18 T@Field_38090_38091) (w@@21 T@FrameType) (r@@18 T@Field_37170_37171) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_30932_38090 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_38090_37170 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_30932_37170 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30932_38090 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_38090_37170 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_19508_19514) (v_1@@22 T@FrameType) (q@@19 T@Field_38090_38091) (w@@22 T@FrameType) (r@@19 T@Field_19508_19514) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_30932_38090 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_38090_30932 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_30932_30932 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30932_38090 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_38090_30932 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_19508_19514) (v_1@@23 T@FrameType) (q@@20 T@Field_37170_37171) (w@@23 T@FrameType) (r@@20 T@Field_38090_38091) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_30932_37170 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_37170_38090 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_30932_38090 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30932_37170 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_37170_38090 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_19508_19514) (v_1@@24 T@FrameType) (q@@21 T@Field_37170_37171) (w@@24 T@FrameType) (r@@21 T@Field_37170_37171) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_30932_37170 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_37170_37170 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_30932_37170 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30932_37170 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_37170_37170 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_19508_19514) (v_1@@25 T@FrameType) (q@@22 T@Field_37170_37171) (w@@25 T@FrameType) (r@@22 T@Field_19508_19514) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_30932_37170 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_37170_30932 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_30932_30932 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30932_37170 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_37170_30932 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_19508_19514) (v_1@@26 T@FrameType) (q@@23 T@Field_19508_19514) (w@@26 T@FrameType) (r@@23 T@Field_38090_38091) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_30932_30932 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_30932_38090 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_30932_38090 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30932_30932 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_30932_38090 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_19508_19514) (v_1@@27 T@FrameType) (q@@24 T@Field_19508_19514) (w@@27 T@FrameType) (r@@24 T@Field_37170_37171) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_30932_30932 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_30932_37170 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_30932_37170 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30932_30932 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_30932_37170 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_19508_19514) (v_1@@28 T@FrameType) (q@@25 T@Field_19508_19514) (w@@28 T@FrameType) (r@@25 T@Field_19508_19514) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_30932_30932 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_30932_30932 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_30932_30932 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.286:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_30932_30932 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_30932_30932 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((s@@31 T@Seq_39163) ) (!  (=> (= (|Seq#Length_39163| s@@31) 0) (= s@@31 |Seq#Empty_39163|))
 :qid |stdinbpl.322:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_39163| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3752) ) (!  (=> (= (|Seq#Length_3752| s@@32) 0) (= s@@32 |Seq#Empty_3752|))
 :qid |stdinbpl.322:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3752| s@@32))
)))
(assert (forall ((s@@33 T@Seq_39163) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_39163| s@@33 n@@25) |Seq#Empty_39163|))
 :qid |stdinbpl.498:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_39163| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3752) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3752| s@@34 n@@26) |Seq#Empty_3752|))
 :qid |stdinbpl.498:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3752| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Invalid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i@@17 () Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_30893)
(declare-fun r_1@@11 () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_30872)
(declare-fun xs () T@Seq_39163)
(declare-fun qpRange28 (T@Ref) Bool)
(declare-fun invRecv28 (T@Ref) T@Ref)
(declare-fun QPMask@4 () T@PolymorphicMapType_30893)
(declare-fun neverTriggered27 (T@Ref) Bool)
(declare-fun invRecv27 (T@Ref) T@Ref)
(declare-fun qpRange27 (T@Ref) Bool)
(declare-fun getPredWandId_19508_3874 (T@Field_37093_3874) Int)
(declare-fun getPredWandId_19508_19514 (T@Field_19508_19514) Int)
(declare-fun getPredWandId_19508_53 (T@Field_30932_53) Int)
(declare-fun getPredWandId_19508_30946 (T@Field_30945_30946) Int)
(declare-fun getPredWandId_19508_165163 (T@Field_19508_37188) Int)
(declare-fun getPredWandId_19513_3874 (T@Field_19513_3874) Int)
(declare-fun getPredWandId_19513_53 (T@Field_19513_53) Int)
(declare-fun getPredWandId_19513_30946 (T@Field_19513_30946) Int)
(declare-fun getPredWandId_19513_165972 (T@Field_37183_37188) Int)
(declare-fun getPredWandId_19538_3874 (T@Field_19538_3874) Int)
(declare-fun getPredWandId_19538_53 (T@Field_19538_53) Int)
(declare-fun getPredWandId_19538_30946 (T@Field_19538_30946) Int)
(declare-fun getPredWandId_19538_166781 (T@Field_38103_38108) Int)
(declare-fun Heap@8 () T@PolymorphicMapType_30872)
(declare-fun Mask@4 () T@PolymorphicMapType_30893)
(declare-fun neverTriggered29 (T@Ref) Bool)
(declare-fun invRecv29 (T@Ref) T@Ref)
(declare-fun qpRange29 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_30893)
(declare-fun neverTriggered30 (T@Ref) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_30893)
(declare-fun qpRange30 (T@Ref) Bool)
(declare-fun invRecv30 (T@Ref) T@Ref)
(declare-fun Heap@7 () T@PolymorphicMapType_30872)
(declare-fun Heap@6 () T@PolymorphicMapType_30872)
(declare-fun Mask@3 () T@PolymorphicMapType_30893)
(declare-fun Heap@3 () T@PolymorphicMapType_30872)
(declare-fun Heap@4 () T@PolymorphicMapType_30872)
(declare-fun Heap@5 () T@PolymorphicMapType_30872)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@2 () T@PolymorphicMapType_30893)
(declare-fun Mask@1 () T@PolymorphicMapType_30893)
(declare-fun FrameFragment_3874 (Int) T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_30893)
(declare-fun Heap@1 () T@PolymorphicMapType_30872)
(declare-fun Heap@2 () T@PolymorphicMapType_30872)
(declare-fun Heap@@47 () T@PolymorphicMapType_30872)
(declare-fun Heap@0 () T@PolymorphicMapType_30872)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun QPMask@1 () T@PolymorphicMapType_30893)
(declare-fun qpRange26 (T@Ref) Bool)
(declare-fun invRecv26 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_30893)
(declare-fun neverTriggered25 (T@Ref) Bool)
(declare-fun invRecv25 (T@Ref) T@Ref)
(declare-fun qpRange25 (T@Ref) Bool)
(set-info :boogie-vc-id m3_2)
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
 (=> (= (ControlFlow 0 0) 46) (let ((anon11_correct true))
(let ((anon30_Else_correct  (=> (and (< 0 i@@17) (= (ControlFlow 0 35) 32)) anon11_correct)))
(let ((anon30_Then_correct  (=> (<= i@@17 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (HasDirectPerm_19508_3874 QPMask@5 r_1@@11 g)) (=> (HasDirectPerm_19508_3874 QPMask@5 r_1@@11 g) (=> (and (= (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| PostHeap@0) r_1@@11 g) 4) (= (ControlFlow 0 33) 32)) anon11_correct))))))
(let ((anon29_Else_correct  (and (=> (= (ControlFlow 0 36) (- 0 37)) (forall ((x_9 T@Ref) (x_9_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_9 x_9_1)) (and (|Seq#Contains_19566| xs x_9) (<= i@@17 0))) (and (|Seq#Contains_19566| xs x_9_1) (<= i@@17 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_9 x_9_1)))
 :qid |stdinbpl.2395:15|
 :skolemid |233|
))) (=> (forall ((x_9@@0 T@Ref) (x_9_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_9@@0 x_9_1@@0)) (and (|Seq#Contains_19566| xs x_9@@0) (<= i@@17 0))) (and (|Seq#Contains_19566| xs x_9_1@@0) (<= i@@17 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_9@@0 x_9_1@@0)))
 :qid |stdinbpl.2395:15|
 :skolemid |233|
)) (=> (and (and (forall ((x_9@@1 T@Ref) ) (!  (=> (and (and (|Seq#Contains_19566| xs x_9@@1) (<= i@@17 0)) (< NoPerm FullPerm)) (and (qpRange28 x_9@@1) (= (invRecv28 x_9@@1) x_9@@1)))
 :qid |stdinbpl.2401:22|
 :skolemid |234|
 :pattern ( (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| PostHeap@0) x_9@@1 g))
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@5) x_9@@1 g))
 :pattern ( (|Seq#ContainsTrigger_19566| xs x_9@@1))
 :pattern ( (|Seq#Contains_19566| xs x_9@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (|Seq#Contains_19566| xs (invRecv28 o_9)) (<= i@@17 0)) (< NoPerm FullPerm)) (qpRange28 o_9)) (= (invRecv28 o_9) o_9))
 :qid |stdinbpl.2405:22|
 :skolemid |235|
 :pattern ( (invRecv28 o_9))
))) (and (forall ((x_9@@2 T@Ref) ) (!  (=> (and (|Seq#Contains_19566| xs x_9@@2) (<= i@@17 0)) (not (= x_9@@2 null)))
 :qid |stdinbpl.2411:22|
 :skolemid |236|
 :pattern ( (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| PostHeap@0) x_9@@2 g))
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@5) x_9@@2 g))
 :pattern ( (|Seq#ContainsTrigger_19566| xs x_9@@2))
 :pattern ( (|Seq#Contains_19566| xs x_9@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (|Seq#Contains_19566| xs (invRecv28 o_9@@0)) (<= i@@17 0)) (< NoPerm FullPerm)) (qpRange28 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv28 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@5) o_9@@0 g) (+ (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@4) o_9@@0 g) FullPerm)))) (=> (not (and (and (and (|Seq#Contains_19566| xs (invRecv28 o_9@@0)) (<= i@@17 0)) (< NoPerm FullPerm)) (qpRange28 o_9@@0))) (= (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@5) o_9@@0 g) (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@4) o_9@@0 g))))
 :qid |stdinbpl.2417:22|
 :skolemid |237|
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@5) o_9@@0 g))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_30932_53) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| QPMask@4) o_9@@1 f_5) (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| QPMask@5) o_9@@1 f_5)))
 :qid |stdinbpl.2421:29|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| QPMask@4) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| QPMask@5) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_30945_30946) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| QPMask@4) o_9@@2 f_5@@0) (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| QPMask@5) o_9@@2 f_5@@0)))
 :qid |stdinbpl.2421:29|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| QPMask@4) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| QPMask@5) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_37093_3874) ) (!  (=> (not (= f_5@@1 g)) (= (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@4) o_9@@3 f_5@@1) (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@5) o_9@@3 f_5@@1)))
 :qid |stdinbpl.2421:29|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@4) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@5) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_19508_19514) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| QPMask@4) o_9@@4 f_5@@2) (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| QPMask@5) o_9@@4 f_5@@2)))
 :qid |stdinbpl.2421:29|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| QPMask@4) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| QPMask@5) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_19508_37188) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| QPMask@4) o_9@@5 f_5@@3) (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| QPMask@5) o_9@@5 f_5@@3)))
 :qid |stdinbpl.2421:29|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| QPMask@4) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| QPMask@5) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_19513_53) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| QPMask@4) o_9@@6 f_5@@4) (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| QPMask@5) o_9@@6 f_5@@4)))
 :qid |stdinbpl.2421:29|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| QPMask@4) o_9@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| QPMask@5) o_9@@6 f_5@@4))
))) (forall ((o_9@@7 T@Ref) (f_5@@5 T@Field_19513_30946) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| QPMask@4) o_9@@7 f_5@@5) (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| QPMask@5) o_9@@7 f_5@@5)))
 :qid |stdinbpl.2421:29|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| QPMask@4) o_9@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| QPMask@5) o_9@@7 f_5@@5))
))) (forall ((o_9@@8 T@Ref) (f_5@@6 T@Field_19513_3874) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| QPMask@4) o_9@@8 f_5@@6) (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| QPMask@5) o_9@@8 f_5@@6)))
 :qid |stdinbpl.2421:29|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| QPMask@4) o_9@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| QPMask@5) o_9@@8 f_5@@6))
))) (forall ((o_9@@9 T@Ref) (f_5@@7 T@Field_37170_37171) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@4) o_9@@9 f_5@@7) (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@5) o_9@@9 f_5@@7)))
 :qid |stdinbpl.2421:29|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@4) o_9@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@5) o_9@@9 f_5@@7))
))) (forall ((o_9@@10 T@Ref) (f_5@@8 T@Field_37183_37188) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| QPMask@4) o_9@@10 f_5@@8) (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| QPMask@5) o_9@@10 f_5@@8)))
 :qid |stdinbpl.2421:29|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| QPMask@4) o_9@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| QPMask@5) o_9@@10 f_5@@8))
))) (forall ((o_9@@11 T@Ref) (f_5@@9 T@Field_19538_53) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| QPMask@4) o_9@@11 f_5@@9) (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| QPMask@5) o_9@@11 f_5@@9)))
 :qid |stdinbpl.2421:29|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| QPMask@4) o_9@@11 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| QPMask@5) o_9@@11 f_5@@9))
))) (forall ((o_9@@12 T@Ref) (f_5@@10 T@Field_19538_30946) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| QPMask@4) o_9@@12 f_5@@10) (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| QPMask@5) o_9@@12 f_5@@10)))
 :qid |stdinbpl.2421:29|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| QPMask@4) o_9@@12 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| QPMask@5) o_9@@12 f_5@@10))
))) (forall ((o_9@@13 T@Ref) (f_5@@11 T@Field_19538_3874) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| QPMask@4) o_9@@13 f_5@@11) (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| QPMask@5) o_9@@13 f_5@@11)))
 :qid |stdinbpl.2421:29|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| QPMask@4) o_9@@13 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| QPMask@5) o_9@@13 f_5@@11))
))) (forall ((o_9@@14 T@Ref) (f_5@@12 T@Field_38090_38091) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| QPMask@4) o_9@@14 f_5@@12) (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| QPMask@5) o_9@@14 f_5@@12)))
 :qid |stdinbpl.2421:29|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| QPMask@4) o_9@@14 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| QPMask@5) o_9@@14 f_5@@12))
))) (forall ((o_9@@15 T@Ref) (f_5@@13 T@Field_38103_38108) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| QPMask@4) o_9@@15 f_5@@13) (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| QPMask@5) o_9@@15 f_5@@13)))
 :qid |stdinbpl.2421:29|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| QPMask@4) o_9@@15 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| QPMask@5) o_9@@15 f_5@@13))
))) (and (state PostHeap@0 QPMask@5) (state PostHeap@0 QPMask@5))) (and (=> (= (ControlFlow 0 36) 33) anon30_Then_correct) (=> (= (ControlFlow 0 36) 35) anon30_Else_correct))))))))
(let ((anon29_Then_correct true))
(let ((anon28_Else_correct  (and (=> (= (ControlFlow 0 38) (- 0 39)) (forall ((x_6 T@Ref) (x_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_6 x_6_1)) (and (|Seq#Contains_19566| xs x_6) (> i@@17 0))) (and (|Seq#Contains_19566| xs x_6_1) (> i@@17 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_6 x_6_1)))
 :qid |stdinbpl.2356:17|
 :skolemid |227|
 :pattern ( (neverTriggered27 x_6) (neverTriggered27 x_6_1))
))) (=> (forall ((x_6@@0 T@Ref) (x_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_6@@0 x_6_1@@0)) (and (|Seq#Contains_19566| xs x_6@@0) (> i@@17 0))) (and (|Seq#Contains_19566| xs x_6_1@@0) (> i@@17 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_6@@0 x_6_1@@0)))
 :qid |stdinbpl.2356:17|
 :skolemid |227|
 :pattern ( (neverTriggered27 x_6@@0) (neverTriggered27 x_6_1@@0))
)) (=> (forall ((x_6@@1 T@Ref) ) (!  (=> (and (and (|Seq#Contains_19566| xs x_6@@1) (> i@@17 0)) (< NoPerm FullPerm)) (and (= (invRecv27 x_6@@1) x_6@@1) (qpRange27 x_6@@1)))
 :qid |stdinbpl.2362:22|
 :skolemid |228|
 :pattern ( (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| PostHeap@0) null (p_2 x_6@@1)))
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| ZeroMask) null (p_2 x_6@@1)))
 :pattern ( (|Seq#ContainsTrigger_19566| xs x_6@@1))
 :pattern ( (|Seq#Contains_19566| xs x_6@@1))
)) (=> (and (forall ((r_2_1 T@Ref) ) (!  (=> (and (and (and (|Seq#Contains_19566| xs (invRecv27 r_2_1)) (> i@@17 0)) (< NoPerm FullPerm)) (qpRange27 r_2_1)) (= (invRecv27 r_2_1) r_2_1))
 :qid |stdinbpl.2366:22|
 :skolemid |229|
 :pattern ( (invRecv27 r_2_1))
)) (forall ((r_2_1@@0 T@Ref) ) (!  (=> (and (and (and (|Seq#Contains_19566| xs (invRecv27 r_2_1@@0)) (> i@@17 0)) (< NoPerm FullPerm)) (qpRange27 r_2_1@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv27 r_2_1@@0) r_2_1@@0)) (= (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@4) null (p_2 r_2_1@@0)) (+ (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| ZeroMask) null (p_2 r_2_1@@0)) FullPerm))))
 :qid |stdinbpl.2372:22|
 :skolemid |230|
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@4) null (p_2 r_2_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@16 T@Ref) (f_5@@14 T@Field_37093_3874) ) (!  (=> (or (or (not (= o_9@@16 null)) (not (IsPredicateField_19508_3874 f_5@@14))) (not (= (getPredWandId_19508_3874 f_5@@14) 0))) (= (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| ZeroMask) o_9@@16 f_5@@14) (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@4) o_9@@16 f_5@@14)))
 :qid |stdinbpl.2378:29|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| ZeroMask) o_9@@16 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@4) o_9@@16 f_5@@14))
)) (forall ((o_9@@17 T@Ref) (f_5@@15 T@Field_19508_19514) ) (!  (=> (or (or (not (= o_9@@17 null)) (not (IsPredicateField_19508_100221 f_5@@15))) (not (= (getPredWandId_19508_19514 f_5@@15) 0))) (= (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| ZeroMask) o_9@@17 f_5@@15) (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| QPMask@4) o_9@@17 f_5@@15)))
 :qid |stdinbpl.2378:29|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| ZeroMask) o_9@@17 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| QPMask@4) o_9@@17 f_5@@15))
))) (forall ((o_9@@18 T@Ref) (f_5@@16 T@Field_30932_53) ) (!  (=> (or (or (not (= o_9@@18 null)) (not (IsPredicateField_19508_53 f_5@@16))) (not (= (getPredWandId_19508_53 f_5@@16) 0))) (= (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| ZeroMask) o_9@@18 f_5@@16) (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| QPMask@4) o_9@@18 f_5@@16)))
 :qid |stdinbpl.2378:29|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| ZeroMask) o_9@@18 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| QPMask@4) o_9@@18 f_5@@16))
))) (forall ((o_9@@19 T@Ref) (f_5@@17 T@Field_30945_30946) ) (!  (=> (or (or (not (= o_9@@19 null)) (not (IsPredicateField_19508_30946 f_5@@17))) (not (= (getPredWandId_19508_30946 f_5@@17) 0))) (= (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| ZeroMask) o_9@@19 f_5@@17) (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| QPMask@4) o_9@@19 f_5@@17)))
 :qid |stdinbpl.2378:29|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| ZeroMask) o_9@@19 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| QPMask@4) o_9@@19 f_5@@17))
))) (forall ((o_9@@20 T@Ref) (f_5@@18 T@Field_19508_37188) ) (!  (=> (or (or (not (= o_9@@20 null)) (not (IsPredicateField_19508_114573 f_5@@18))) (not (= (getPredWandId_19508_165163 f_5@@18) 0))) (= (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| ZeroMask) o_9@@20 f_5@@18) (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| QPMask@4) o_9@@20 f_5@@18)))
 :qid |stdinbpl.2378:29|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| ZeroMask) o_9@@20 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| QPMask@4) o_9@@20 f_5@@18))
))) (forall ((o_9@@21 T@Ref) (f_5@@19 T@Field_19513_3874) ) (!  (=> (or (or (not (= o_9@@21 null)) (not (IsPredicateField_19513_3874 f_5@@19))) (not (= (getPredWandId_19513_3874 f_5@@19) 0))) (= (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| ZeroMask) o_9@@21 f_5@@19) (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| QPMask@4) o_9@@21 f_5@@19)))
 :qid |stdinbpl.2378:29|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| ZeroMask) o_9@@21 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| QPMask@4) o_9@@21 f_5@@19))
))) (forall ((o_9@@22 T@Ref) (f_5@@20 T@Field_37170_37171) ) (!  (=> (or (or (not (= o_9@@22 null)) (not (IsPredicateField_19513_19514 f_5@@20))) (not (= (getPredWandId_19513_19514 f_5@@20) 0))) (= (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| ZeroMask) o_9@@22 f_5@@20) (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@4) o_9@@22 f_5@@20)))
 :qid |stdinbpl.2378:29|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| ZeroMask) o_9@@22 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@4) o_9@@22 f_5@@20))
))) (forall ((o_9@@23 T@Ref) (f_5@@21 T@Field_19513_53) ) (!  (=> (or (or (not (= o_9@@23 null)) (not (IsPredicateField_19513_53 f_5@@21))) (not (= (getPredWandId_19513_53 f_5@@21) 0))) (= (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| ZeroMask) o_9@@23 f_5@@21) (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| QPMask@4) o_9@@23 f_5@@21)))
 :qid |stdinbpl.2378:29|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| ZeroMask) o_9@@23 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| QPMask@4) o_9@@23 f_5@@21))
))) (forall ((o_9@@24 T@Ref) (f_5@@22 T@Field_19513_30946) ) (!  (=> (or (or (not (= o_9@@24 null)) (not (IsPredicateField_19513_30946 f_5@@22))) (not (= (getPredWandId_19513_30946 f_5@@22) 0))) (= (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| ZeroMask) o_9@@24 f_5@@22) (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| QPMask@4) o_9@@24 f_5@@22)))
 :qid |stdinbpl.2378:29|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| ZeroMask) o_9@@24 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| QPMask@4) o_9@@24 f_5@@22))
))) (forall ((o_9@@25 T@Ref) (f_5@@23 T@Field_37183_37188) ) (!  (=> (or (or (not (= o_9@@25 null)) (not (IsPredicateField_19513_115404 f_5@@23))) (not (= (getPredWandId_19513_165972 f_5@@23) 0))) (= (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| ZeroMask) o_9@@25 f_5@@23) (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| QPMask@4) o_9@@25 f_5@@23)))
 :qid |stdinbpl.2378:29|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| ZeroMask) o_9@@25 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| QPMask@4) o_9@@25 f_5@@23))
))) (forall ((o_9@@26 T@Ref) (f_5@@24 T@Field_19538_3874) ) (!  (=> (or (or (not (= o_9@@26 null)) (not (IsPredicateField_19538_3874 f_5@@24))) (not (= (getPredWandId_19538_3874 f_5@@24) 0))) (= (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| ZeroMask) o_9@@26 f_5@@24) (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| QPMask@4) o_9@@26 f_5@@24)))
 :qid |stdinbpl.2378:29|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| ZeroMask) o_9@@26 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| QPMask@4) o_9@@26 f_5@@24))
))) (forall ((o_9@@27 T@Ref) (f_5@@25 T@Field_38090_38091) ) (!  (=> (or (or (not (= o_9@@27 null)) (not (IsPredicateField_19538_19539 f_5@@25))) (not (= (getPredWandId_19538_19539 f_5@@25) 0))) (= (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| ZeroMask) o_9@@27 f_5@@25) (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| QPMask@4) o_9@@27 f_5@@25)))
 :qid |stdinbpl.2378:29|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| ZeroMask) o_9@@27 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| QPMask@4) o_9@@27 f_5@@25))
))) (forall ((o_9@@28 T@Ref) (f_5@@26 T@Field_19538_53) ) (!  (=> (or (or (not (= o_9@@28 null)) (not (IsPredicateField_19538_53 f_5@@26))) (not (= (getPredWandId_19538_53 f_5@@26) 0))) (= (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| ZeroMask) o_9@@28 f_5@@26) (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| QPMask@4) o_9@@28 f_5@@26)))
 :qid |stdinbpl.2378:29|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| ZeroMask) o_9@@28 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| QPMask@4) o_9@@28 f_5@@26))
))) (forall ((o_9@@29 T@Ref) (f_5@@27 T@Field_19538_30946) ) (!  (=> (or (or (not (= o_9@@29 null)) (not (IsPredicateField_19538_30946 f_5@@27))) (not (= (getPredWandId_19538_30946 f_5@@27) 0))) (= (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| ZeroMask) o_9@@29 f_5@@27) (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| QPMask@4) o_9@@29 f_5@@27)))
 :qid |stdinbpl.2378:29|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| ZeroMask) o_9@@29 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| QPMask@4) o_9@@29 f_5@@27))
))) (forall ((o_9@@30 T@Ref) (f_5@@28 T@Field_38103_38108) ) (!  (=> (or (or (not (= o_9@@30 null)) (not (IsPredicateField_19538_116235 f_5@@28))) (not (= (getPredWandId_19538_166781 f_5@@28) 0))) (= (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| ZeroMask) o_9@@30 f_5@@28) (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| QPMask@4) o_9@@30 f_5@@28)))
 :qid |stdinbpl.2378:29|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| ZeroMask) o_9@@30 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| QPMask@4) o_9@@30 f_5@@28))
))) (and (forall ((r_2_1@@1 T@Ref) ) (!  (=> (not (and (and (and (|Seq#Contains_19566| xs (invRecv27 r_2_1@@1)) (> i@@17 0)) (< NoPerm FullPerm)) (qpRange27 r_2_1@@1))) (= (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@4) null (p_2 r_2_1@@1)) (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| ZeroMask) null (p_2 r_2_1@@1))))
 :qid |stdinbpl.2382:22|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@4) null (p_2 r_2_1@@1)))
)) (state PostHeap@0 QPMask@4))) (and (=> (= (ControlFlow 0 38) 31) anon29_Then_correct) (=> (= (ControlFlow 0 38) 36) anon29_Else_correct)))))))))
(let ((anon28_Then_correct true))
(let ((anon27_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 40) 30) anon28_Then_correct) (=> (= (ControlFlow 0 40) 38) anon28_Else_correct)))))
(let ((anon24_correct true))
(let ((anon36_Else_correct  (=> (and (< 0 i@@17) (= (ControlFlow 0 6) 3)) anon24_correct)))
(let ((anon36_Then_correct  (=> (<= i@@17 0) (and (=> (= (ControlFlow 0 4) (- 0 5)) (= (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@8) r_1@@11 g) 4)) (=> (= (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@8) r_1@@11 g) 4) (=> (= (ControlFlow 0 4) 3) anon24_correct))))))
(let ((anon22_correct  (=> (state Heap@8 Mask@4) (and (=> (= (ControlFlow 0 7) (- 0 11)) (forall ((x_10 T@Ref) (x_10_2 T@Ref) ) (!  (=> (and (and (and (and (not (= x_10 x_10_2)) (and (|Seq#Contains_19566| xs x_10) (> i@@17 0))) (and (|Seq#Contains_19566| xs x_10_2) (> i@@17 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_10 x_10_2)))
 :qid |stdinbpl.2515:17|
 :skolemid |239|
 :pattern ( (neverTriggered29 x_10) (neverTriggered29 x_10_2))
))) (=> (forall ((x_10@@0 T@Ref) (x_10_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_10@@0 x_10_2@@0)) (and (|Seq#Contains_19566| xs x_10@@0) (> i@@17 0))) (and (|Seq#Contains_19566| xs x_10_2@@0) (> i@@17 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_10@@0 x_10_2@@0)))
 :qid |stdinbpl.2515:17|
 :skolemid |239|
 :pattern ( (neverTriggered29 x_10@@0) (neverTriggered29 x_10_2@@0))
)) (and (=> (= (ControlFlow 0 7) (- 0 10)) (forall ((x_10@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_19566| xs x_10@@1) (> i@@17 0)) (>= (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| Mask@4) null (p_2 x_10@@1)) FullPerm))
 :qid |stdinbpl.2522:17|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@8) null (p_2 x_10@@1)))
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| Mask@4) null (p_2 x_10@@1)))
 :pattern ( (|Seq#ContainsTrigger_19566| xs x_10@@1))
 :pattern ( (|Seq#Contains_19566| xs x_10@@1))
))) (=> (forall ((x_10@@2 T@Ref) ) (!  (=> (and (|Seq#Contains_19566| xs x_10@@2) (> i@@17 0)) (>= (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| Mask@4) null (p_2 x_10@@2)) FullPerm))
 :qid |stdinbpl.2522:17|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@8) null (p_2 x_10@@2)))
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| Mask@4) null (p_2 x_10@@2)))
 :pattern ( (|Seq#ContainsTrigger_19566| xs x_10@@2))
 :pattern ( (|Seq#Contains_19566| xs x_10@@2))
)) (=> (and (and (forall ((x_10@@3 T@Ref) ) (!  (=> (and (and (|Seq#Contains_19566| xs x_10@@3) (> i@@17 0)) (< NoPerm FullPerm)) (and (= (invRecv29 x_10@@3) x_10@@3) (qpRange29 x_10@@3)))
 :qid |stdinbpl.2528:22|
 :skolemid |241|
 :pattern ( (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@8) null (p_2 x_10@@3)))
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| Mask@4) null (p_2 x_10@@3)))
 :pattern ( (|Seq#ContainsTrigger_19566| xs x_10@@3))
 :pattern ( (|Seq#Contains_19566| xs x_10@@3))
)) (forall ((r_3_1 T@Ref) ) (!  (=> (and (and (and (|Seq#Contains_19566| xs (invRecv29 r_3_1)) (> i@@17 0)) (< NoPerm FullPerm)) (qpRange29 r_3_1)) (= (invRecv29 r_3_1) r_3_1))
 :qid |stdinbpl.2532:22|
 :skolemid |242|
 :pattern ( (invRecv29 r_3_1))
))) (and (forall ((r_3_1@@0 T@Ref) ) (!  (=> (and (and (and (|Seq#Contains_19566| xs (invRecv29 r_3_1@@0)) (> i@@17 0)) (< NoPerm FullPerm)) (qpRange29 r_3_1@@0)) (and (= (invRecv29 r_3_1@@0) r_3_1@@0) (= (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@2) null (p_2 r_3_1@@0)) (- (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| Mask@4) null (p_2 r_3_1@@0)) FullPerm))))
 :qid |stdinbpl.2538:22|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@2) null (p_2 r_3_1@@0)))
)) (forall ((r_3_1@@1 T@Ref) ) (!  (=> (not (and (and (and (|Seq#Contains_19566| xs (invRecv29 r_3_1@@1)) (> i@@17 0)) (< NoPerm FullPerm)) (qpRange29 r_3_1@@1))) (= (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@2) null (p_2 r_3_1@@1)) (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| Mask@4) null (p_2 r_3_1@@1))))
 :qid |stdinbpl.2542:22|
 :skolemid |244|
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@2) null (p_2 r_3_1@@1)))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@31 T@Ref) (f_5@@29 T@Field_37093_3874) ) (!  (=> (or (or (not (= o_9@@31 null)) (not (IsPredicateField_19508_3874 f_5@@29))) (not (= (getPredWandId_19508_3874 f_5@@29) 0))) (= (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| Mask@4) o_9@@31 f_5@@29) (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@2) o_9@@31 f_5@@29)))
 :qid |stdinbpl.2548:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| Mask@4) o_9@@31 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@2) o_9@@31 f_5@@29))
)) (forall ((o_9@@32 T@Ref) (f_5@@30 T@Field_19508_19514) ) (!  (=> (or (or (not (= o_9@@32 null)) (not (IsPredicateField_19508_100221 f_5@@30))) (not (= (getPredWandId_19508_19514 f_5@@30) 0))) (= (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| Mask@4) o_9@@32 f_5@@30) (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| QPMask@2) o_9@@32 f_5@@30)))
 :qid |stdinbpl.2548:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| Mask@4) o_9@@32 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| QPMask@2) o_9@@32 f_5@@30))
))) (forall ((o_9@@33 T@Ref) (f_5@@31 T@Field_30932_53) ) (!  (=> (or (or (not (= o_9@@33 null)) (not (IsPredicateField_19508_53 f_5@@31))) (not (= (getPredWandId_19508_53 f_5@@31) 0))) (= (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| Mask@4) o_9@@33 f_5@@31) (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| QPMask@2) o_9@@33 f_5@@31)))
 :qid |stdinbpl.2548:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| Mask@4) o_9@@33 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| QPMask@2) o_9@@33 f_5@@31))
))) (forall ((o_9@@34 T@Ref) (f_5@@32 T@Field_30945_30946) ) (!  (=> (or (or (not (= o_9@@34 null)) (not (IsPredicateField_19508_30946 f_5@@32))) (not (= (getPredWandId_19508_30946 f_5@@32) 0))) (= (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| Mask@4) o_9@@34 f_5@@32) (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| QPMask@2) o_9@@34 f_5@@32)))
 :qid |stdinbpl.2548:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| Mask@4) o_9@@34 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| QPMask@2) o_9@@34 f_5@@32))
))) (forall ((o_9@@35 T@Ref) (f_5@@33 T@Field_19508_37188) ) (!  (=> (or (or (not (= o_9@@35 null)) (not (IsPredicateField_19508_114573 f_5@@33))) (not (= (getPredWandId_19508_165163 f_5@@33) 0))) (= (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| Mask@4) o_9@@35 f_5@@33) (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| QPMask@2) o_9@@35 f_5@@33)))
 :qid |stdinbpl.2548:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| Mask@4) o_9@@35 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| QPMask@2) o_9@@35 f_5@@33))
))) (forall ((o_9@@36 T@Ref) (f_5@@34 T@Field_19513_3874) ) (!  (=> (or (or (not (= o_9@@36 null)) (not (IsPredicateField_19513_3874 f_5@@34))) (not (= (getPredWandId_19513_3874 f_5@@34) 0))) (= (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| Mask@4) o_9@@36 f_5@@34) (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| QPMask@2) o_9@@36 f_5@@34)))
 :qid |stdinbpl.2548:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| Mask@4) o_9@@36 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| QPMask@2) o_9@@36 f_5@@34))
))) (forall ((o_9@@37 T@Ref) (f_5@@35 T@Field_37170_37171) ) (!  (=> (or (or (not (= o_9@@37 null)) (not (IsPredicateField_19513_19514 f_5@@35))) (not (= (getPredWandId_19513_19514 f_5@@35) 0))) (= (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| Mask@4) o_9@@37 f_5@@35) (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@2) o_9@@37 f_5@@35)))
 :qid |stdinbpl.2548:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| Mask@4) o_9@@37 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@2) o_9@@37 f_5@@35))
))) (forall ((o_9@@38 T@Ref) (f_5@@36 T@Field_19513_53) ) (!  (=> (or (or (not (= o_9@@38 null)) (not (IsPredicateField_19513_53 f_5@@36))) (not (= (getPredWandId_19513_53 f_5@@36) 0))) (= (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| Mask@4) o_9@@38 f_5@@36) (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| QPMask@2) o_9@@38 f_5@@36)))
 :qid |stdinbpl.2548:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| Mask@4) o_9@@38 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| QPMask@2) o_9@@38 f_5@@36))
))) (forall ((o_9@@39 T@Ref) (f_5@@37 T@Field_19513_30946) ) (!  (=> (or (or (not (= o_9@@39 null)) (not (IsPredicateField_19513_30946 f_5@@37))) (not (= (getPredWandId_19513_30946 f_5@@37) 0))) (= (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| Mask@4) o_9@@39 f_5@@37) (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| QPMask@2) o_9@@39 f_5@@37)))
 :qid |stdinbpl.2548:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| Mask@4) o_9@@39 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| QPMask@2) o_9@@39 f_5@@37))
))) (forall ((o_9@@40 T@Ref) (f_5@@38 T@Field_37183_37188) ) (!  (=> (or (or (not (= o_9@@40 null)) (not (IsPredicateField_19513_115404 f_5@@38))) (not (= (getPredWandId_19513_165972 f_5@@38) 0))) (= (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| Mask@4) o_9@@40 f_5@@38) (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| QPMask@2) o_9@@40 f_5@@38)))
 :qid |stdinbpl.2548:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| Mask@4) o_9@@40 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| QPMask@2) o_9@@40 f_5@@38))
))) (forall ((o_9@@41 T@Ref) (f_5@@39 T@Field_19538_3874) ) (!  (=> (or (or (not (= o_9@@41 null)) (not (IsPredicateField_19538_3874 f_5@@39))) (not (= (getPredWandId_19538_3874 f_5@@39) 0))) (= (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| Mask@4) o_9@@41 f_5@@39) (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| QPMask@2) o_9@@41 f_5@@39)))
 :qid |stdinbpl.2548:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| Mask@4) o_9@@41 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| QPMask@2) o_9@@41 f_5@@39))
))) (forall ((o_9@@42 T@Ref) (f_5@@40 T@Field_38090_38091) ) (!  (=> (or (or (not (= o_9@@42 null)) (not (IsPredicateField_19538_19539 f_5@@40))) (not (= (getPredWandId_19538_19539 f_5@@40) 0))) (= (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| Mask@4) o_9@@42 f_5@@40) (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| QPMask@2) o_9@@42 f_5@@40)))
 :qid |stdinbpl.2548:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| Mask@4) o_9@@42 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| QPMask@2) o_9@@42 f_5@@40))
))) (forall ((o_9@@43 T@Ref) (f_5@@41 T@Field_19538_53) ) (!  (=> (or (or (not (= o_9@@43 null)) (not (IsPredicateField_19538_53 f_5@@41))) (not (= (getPredWandId_19538_53 f_5@@41) 0))) (= (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| Mask@4) o_9@@43 f_5@@41) (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| QPMask@2) o_9@@43 f_5@@41)))
 :qid |stdinbpl.2548:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| Mask@4) o_9@@43 f_5@@41))
 :pattern ( (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| QPMask@2) o_9@@43 f_5@@41))
))) (forall ((o_9@@44 T@Ref) (f_5@@42 T@Field_19538_30946) ) (!  (=> (or (or (not (= o_9@@44 null)) (not (IsPredicateField_19538_30946 f_5@@42))) (not (= (getPredWandId_19538_30946 f_5@@42) 0))) (= (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| Mask@4) o_9@@44 f_5@@42) (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| QPMask@2) o_9@@44 f_5@@42)))
 :qid |stdinbpl.2548:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| Mask@4) o_9@@44 f_5@@42))
 :pattern ( (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| QPMask@2) o_9@@44 f_5@@42))
))) (forall ((o_9@@45 T@Ref) (f_5@@43 T@Field_38103_38108) ) (!  (=> (or (or (not (= o_9@@45 null)) (not (IsPredicateField_19538_116235 f_5@@43))) (not (= (getPredWandId_19538_166781 f_5@@43) 0))) (= (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| Mask@4) o_9@@45 f_5@@43) (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| QPMask@2) o_9@@45 f_5@@43)))
 :qid |stdinbpl.2548:29|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| Mask@4) o_9@@45 f_5@@43))
 :pattern ( (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| QPMask@2) o_9@@45 f_5@@43))
))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (forall ((x_11 T@Ref) (x_11_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_11 x_11_1)) (and (|Seq#Contains_19566| xs x_11) (<= i@@17 0))) (and (|Seq#Contains_19566| xs x_11_1) (<= i@@17 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_11 x_11_1)))
 :qid |stdinbpl.2560:17|
 :skolemid |246|
 :pattern ( (neverTriggered30 x_11) (neverTriggered30 x_11_1))
))) (=> (forall ((x_11@@0 T@Ref) (x_11_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_11@@0 x_11_1@@0)) (and (|Seq#Contains_19566| xs x_11@@0) (<= i@@17 0))) (and (|Seq#Contains_19566| xs x_11_1@@0) (<= i@@17 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_11@@0 x_11_1@@0)))
 :qid |stdinbpl.2560:17|
 :skolemid |246|
 :pattern ( (neverTriggered30 x_11@@0) (neverTriggered30 x_11_1@@0))
)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (forall ((x_11@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_19566| xs x_11@@1) (<= i@@17 0)) (>= (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@2) x_11@@1 g) FullPerm))
 :qid |stdinbpl.2567:17|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@8) x_11@@1 g))
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@3) x_11@@1 g))
 :pattern ( (|Seq#ContainsTrigger_19566| xs x_11@@1))
 :pattern ( (|Seq#Contains_19566| xs x_11@@1))
))) (=> (forall ((x_11@@2 T@Ref) ) (!  (=> (and (|Seq#Contains_19566| xs x_11@@2) (<= i@@17 0)) (>= (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@2) x_11@@2 g) FullPerm))
 :qid |stdinbpl.2567:17|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@8) x_11@@2 g))
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@3) x_11@@2 g))
 :pattern ( (|Seq#ContainsTrigger_19566| xs x_11@@2))
 :pattern ( (|Seq#Contains_19566| xs x_11@@2))
)) (=> (forall ((x_11@@3 T@Ref) ) (!  (=> (and (and (|Seq#Contains_19566| xs x_11@@3) (<= i@@17 0)) (< NoPerm FullPerm)) (and (qpRange30 x_11@@3) (= (invRecv30 x_11@@3) x_11@@3)))
 :qid |stdinbpl.2573:22|
 :skolemid |248|
 :pattern ( (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@8) x_11@@3 g))
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@3) x_11@@3 g))
 :pattern ( (|Seq#ContainsTrigger_19566| xs x_11@@3))
 :pattern ( (|Seq#Contains_19566| xs x_11@@3))
)) (=> (and (forall ((o_9@@46 T@Ref) ) (!  (=> (and (and (|Seq#Contains_19566| xs (invRecv30 o_9@@46)) (<= i@@17 0)) (and (< NoPerm FullPerm) (qpRange30 o_9@@46))) (= (invRecv30 o_9@@46) o_9@@46))
 :qid |stdinbpl.2577:22|
 :skolemid |249|
 :pattern ( (invRecv30 o_9@@46))
)) (forall ((o_9@@47 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_19566| xs (invRecv30 o_9@@47)) (<= i@@17 0)) (and (< NoPerm FullPerm) (qpRange30 o_9@@47))) (and (= (invRecv30 o_9@@47) o_9@@47) (= (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@3) o_9@@47 g) (- (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@2) o_9@@47 g) FullPerm)))) (=> (not (and (and (|Seq#Contains_19566| xs (invRecv30 o_9@@47)) (<= i@@17 0)) (and (< NoPerm FullPerm) (qpRange30 o_9@@47)))) (= (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@3) o_9@@47 g) (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@2) o_9@@47 g))))
 :qid |stdinbpl.2583:22|
 :skolemid |250|
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@3) o_9@@47 g))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@48 T@Ref) (f_5@@44 T@Field_30932_53) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| QPMask@2) o_9@@48 f_5@@44) (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| QPMask@3) o_9@@48 f_5@@44)))
 :qid |stdinbpl.2589:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| QPMask@3) o_9@@48 f_5@@44))
)) (forall ((o_9@@49 T@Ref) (f_5@@45 T@Field_30945_30946) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| QPMask@2) o_9@@49 f_5@@45) (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| QPMask@3) o_9@@49 f_5@@45)))
 :qid |stdinbpl.2589:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| QPMask@3) o_9@@49 f_5@@45))
))) (forall ((o_9@@50 T@Ref) (f_5@@46 T@Field_37093_3874) ) (!  (=> (not (= f_5@@46 g)) (= (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@2) o_9@@50 f_5@@46) (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@3) o_9@@50 f_5@@46)))
 :qid |stdinbpl.2589:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@3) o_9@@50 f_5@@46))
))) (forall ((o_9@@51 T@Ref) (f_5@@47 T@Field_19508_19514) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| QPMask@2) o_9@@51 f_5@@47) (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| QPMask@3) o_9@@51 f_5@@47)))
 :qid |stdinbpl.2589:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| QPMask@3) o_9@@51 f_5@@47))
))) (forall ((o_9@@52 T@Ref) (f_5@@48 T@Field_19508_37188) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| QPMask@2) o_9@@52 f_5@@48) (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| QPMask@3) o_9@@52 f_5@@48)))
 :qid |stdinbpl.2589:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| QPMask@3) o_9@@52 f_5@@48))
))) (forall ((o_9@@53 T@Ref) (f_5@@49 T@Field_19513_53) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| QPMask@2) o_9@@53 f_5@@49) (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| QPMask@3) o_9@@53 f_5@@49)))
 :qid |stdinbpl.2589:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| QPMask@3) o_9@@53 f_5@@49))
))) (forall ((o_9@@54 T@Ref) (f_5@@50 T@Field_19513_30946) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| QPMask@2) o_9@@54 f_5@@50) (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| QPMask@3) o_9@@54 f_5@@50)))
 :qid |stdinbpl.2589:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| QPMask@3) o_9@@54 f_5@@50))
))) (forall ((o_9@@55 T@Ref) (f_5@@51 T@Field_19513_3874) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| QPMask@2) o_9@@55 f_5@@51) (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| QPMask@3) o_9@@55 f_5@@51)))
 :qid |stdinbpl.2589:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| QPMask@3) o_9@@55 f_5@@51))
))) (forall ((o_9@@56 T@Ref) (f_5@@52 T@Field_37170_37171) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@2) o_9@@56 f_5@@52) (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@3) o_9@@56 f_5@@52)))
 :qid |stdinbpl.2589:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@3) o_9@@56 f_5@@52))
))) (forall ((o_9@@57 T@Ref) (f_5@@53 T@Field_37183_37188) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| QPMask@2) o_9@@57 f_5@@53) (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| QPMask@3) o_9@@57 f_5@@53)))
 :qid |stdinbpl.2589:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| QPMask@3) o_9@@57 f_5@@53))
))) (forall ((o_9@@58 T@Ref) (f_5@@54 T@Field_19538_53) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| QPMask@2) o_9@@58 f_5@@54) (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| QPMask@3) o_9@@58 f_5@@54)))
 :qid |stdinbpl.2589:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| QPMask@3) o_9@@58 f_5@@54))
))) (forall ((o_9@@59 T@Ref) (f_5@@55 T@Field_19538_30946) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| QPMask@2) o_9@@59 f_5@@55) (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| QPMask@3) o_9@@59 f_5@@55)))
 :qid |stdinbpl.2589:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| QPMask@3) o_9@@59 f_5@@55))
))) (forall ((o_9@@60 T@Ref) (f_5@@56 T@Field_19538_3874) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| QPMask@2) o_9@@60 f_5@@56) (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| QPMask@3) o_9@@60 f_5@@56)))
 :qid |stdinbpl.2589:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| QPMask@3) o_9@@60 f_5@@56))
))) (forall ((o_9@@61 T@Ref) (f_5@@57 T@Field_38090_38091) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| QPMask@2) o_9@@61 f_5@@57) (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| QPMask@3) o_9@@61 f_5@@57)))
 :qid |stdinbpl.2589:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| QPMask@3) o_9@@61 f_5@@57))
))) (forall ((o_9@@62 T@Ref) (f_5@@58 T@Field_38103_38108) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| QPMask@2) o_9@@62 f_5@@58) (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| QPMask@3) o_9@@62 f_5@@58)))
 :qid |stdinbpl.2589:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| QPMask@3) o_9@@62 f_5@@58))
))) (and (=> (= (ControlFlow 0 7) 4) anon36_Then_correct) (=> (= (ControlFlow 0 7) 6) anon36_Else_correct))))))))))))))))))
(let ((anon21_correct  (=> (and (= Heap@7 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@6) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@6) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@6) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@6) (store (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@6) null (|p#sm| r_1@@11) (PolymorphicMapType_31421 (store (|PolymorphicMapType_31421_19508_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@6) null (|p#sm| r_1@@11))) r_1@@11 f_7 true) (|PolymorphicMapType_31421_19508_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@6) null (|p#sm| r_1@@11))) (|PolymorphicMapType_31421_19508_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@6) null (|p#sm| r_1@@11))) (|PolymorphicMapType_31421_19508_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@6) null (|p#sm| r_1@@11))) (|PolymorphicMapType_31421_19508_102018#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@6) null (|p#sm| r_1@@11))) (|PolymorphicMapType_31421_37170_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@6) null (|p#sm| r_1@@11))) (|PolymorphicMapType_31421_37170_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@6) null (|p#sm| r_1@@11))) (|PolymorphicMapType_31421_37170_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@6) null (|p#sm| r_1@@11))) (|PolymorphicMapType_31421_37170_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@6) null (|p#sm| r_1@@11))) (|PolymorphicMapType_31421_37170_103066#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@6) null (|p#sm| r_1@@11))) (|PolymorphicMapType_31421_38090_3874#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@6) null (|p#sm| r_1@@11))) (|PolymorphicMapType_31421_38090_53#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@6) null (|p#sm| r_1@@11))) (|PolymorphicMapType_31421_38090_30946#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@6) null (|p#sm| r_1@@11))) (|PolymorphicMapType_31421_38090_37171#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@6) null (|p#sm| r_1@@11))) (|PolymorphicMapType_31421_38090_104114#PolymorphicMapType_31421| (select (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@6) null (|p#sm| r_1@@11))))) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@6) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@6) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@6) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@6) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@6) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@6) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@6) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@6) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@6) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@6))) (state Heap@7 Mask@3)) (=> (and (and (state Heap@7 Mask@3) (= Mask@4 Mask@3)) (and (= Heap@8 Heap@7) (= (ControlFlow 0 13) 7))) anon22_correct))))
(let ((anon35_Else_correct  (=> (HasDirectPerm_19513_19514 Mask@3 null (p_2 r_1@@11)) (=> (and (= Heap@6 Heap@3) (= (ControlFlow 0 15) 13)) anon21_correct))))
(let ((anon35_Then_correct  (=> (not (HasDirectPerm_19513_19514 Mask@3 null (p_2 r_1@@11))) (=> (and (and (= Heap@4 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@3) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@3) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@3) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@3) (store (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@3) null (|p#sm| r_1@@11) ZeroPMask) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@3) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@3) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@3) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@3) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@3) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@3) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@3) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@3) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@3) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@3))) (= Heap@5 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@4) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@4) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@4) (store (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@4) null (p_2 r_1@@11) freshVersion@0) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@4) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@4) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@4) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@4) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@4) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@4) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@4) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@4) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@4) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@4) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@4)))) (and (= Heap@6 Heap@5) (= (ControlFlow 0 14) 13))) anon21_correct))))
(let ((anon19_correct  (=> (and (= Mask@2 (PolymorphicMapType_30893 (store (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| Mask@1) r_1@@11 f_7 (- (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| Mask@1) r_1@@11 f_7) FullPerm)) (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| Mask@1) (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| Mask@1) (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| Mask@1) (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| Mask@1) (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| Mask@1) (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| Mask@1) (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| Mask@1) (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| Mask@1) (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| Mask@1) (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| Mask@1) (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| Mask@1) (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| Mask@1) (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| Mask@1) (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| Mask@1))) (= Mask@3 (PolymorphicMapType_30893 (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| Mask@2) (store (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| Mask@2) null (p_2 r_1@@11) (+ (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| Mask@2) null (p_2 r_1@@11)) FullPerm)) (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| Mask@2) (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| Mask@2) (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| Mask@2) (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| Mask@2) (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| Mask@2) (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| Mask@2) (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| Mask@2) (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| Mask@2) (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| Mask@2) (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| Mask@2) (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| Mask@2) (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| Mask@2) (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| Mask@2)))) (=> (and (and (state Heap@3 Mask@3) (state Heap@3 Mask@3)) (and (|p#trigger_19513| Heap@3 (p_2 r_1@@11)) (= (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@3) null (p_2 r_1@@11)) (FrameFragment_3874 (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@3) r_1@@11 f_7))))) (and (=> (= (ControlFlow 0 16) 14) anon35_Then_correct) (=> (= (ControlFlow 0 16) 15) anon35_Else_correct))))))
(let ((anon34_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 19) 16)) anon19_correct)))
(let ((anon34_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (<= FullPerm (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| Mask@1) r_1@@11 f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| Mask@1) r_1@@11 f_7)) (=> (= (ControlFlow 0 17) 16) anon19_correct))))))
(let ((anon17_correct  (=> (not (= r_1@@11 null)) (=> (and (and (= Mask@1 (PolymorphicMapType_30893 (store (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| Mask@0) r_1@@11 f_7 (+ (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| Mask@0) r_1@@11 f_7) FullPerm)) (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| Mask@0) (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| Mask@0) (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| Mask@0) (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| Mask@0) (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| Mask@0) (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| Mask@0) (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| Mask@0) (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| Mask@0) (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| Mask@0) (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| Mask@0) (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| Mask@0) (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| Mask@0) (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| Mask@0) (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| Mask@0))) (state Heap@1 Mask@1)) (and (state Heap@1 Mask@1) (state Heap@1 Mask@1))) (and (=> (= (ControlFlow 0 20) (- 0 22)) (= FullPerm (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| Mask@1) r_1@@11 f_7))) (=> (= FullPerm (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| Mask@1) r_1@@11 f_7)) (=> (and (= Heap@2 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@1) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@1) (store (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@1) r_1@@11 f_7 3) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@1) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@1) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@1) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@1) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@1) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@1) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@1) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@1) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@1) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@1) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@1) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@1))) (state Heap@2 Mask@1)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (= FullPerm (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| Mask@1) r_1@@11 g))) (=> (= FullPerm (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| Mask@1) r_1@@11 g)) (=> (and (= Heap@3 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@2) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@2) (store (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@2) r_1@@11 g 4) (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@2) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@2) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@2) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@2) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@2) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@2) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@2) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@2) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@2) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@2) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@2) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@2))) (state Heap@3 Mask@1)) (and (=> (= (ControlFlow 0 20) 17) anon34_Then_correct) (=> (= (ControlFlow 0 20) 19) anon34_Else_correct))))))))))))
(let ((anon33_Else_correct  (=> (HasDirectPerm_19513_19514 Mask@0 null (p_2 r_1@@11)) (=> (and (= Heap@1 Heap@@47) (= (ControlFlow 0 24) 20)) anon17_correct))))
(let ((anon33_Then_correct  (=> (and (and (not (HasDirectPerm_19513_19514 Mask@0 null (p_2 r_1@@11))) (= Heap@0 (PolymorphicMapType_30872 (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@47) (|PolymorphicMapType_30872_19179_19180#PolymorphicMapType_30872| Heap@@47) (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@47) (store (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@47) null (p_2 r_1@@11) newVersion@0) (|PolymorphicMapType_30872_19517_65242#PolymorphicMapType_30872| Heap@@47) (|PolymorphicMapType_30872_19538_19539#PolymorphicMapType_30872| Heap@@47) (|PolymorphicMapType_30872_19542_85402#PolymorphicMapType_30872| Heap@@47) (|PolymorphicMapType_30872_19508_19514#PolymorphicMapType_30872| Heap@@47) (|PolymorphicMapType_30872_19508_97779#PolymorphicMapType_30872| Heap@@47) (|PolymorphicMapType_30872_19513_3874#PolymorphicMapType_30872| Heap@@47) (|PolymorphicMapType_30872_19513_53#PolymorphicMapType_30872| Heap@@47) (|PolymorphicMapType_30872_19513_30946#PolymorphicMapType_30872| Heap@@47) (|PolymorphicMapType_30872_19538_3874#PolymorphicMapType_30872| Heap@@47) (|PolymorphicMapType_30872_19538_53#PolymorphicMapType_30872| Heap@@47) (|PolymorphicMapType_30872_19538_30946#PolymorphicMapType_30872| Heap@@47)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 23) 20))) anon17_correct)))
(let ((anon15_correct  (=> (= Mask@0 (PolymorphicMapType_30893 (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@1) (store (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@1) null (p_2 r_1@@11) (- (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@1) null (p_2 r_1@@11)) FullPerm)) (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| QPMask@1) (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| QPMask@1) (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| QPMask@1) (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| QPMask@1) (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| QPMask@1) (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| QPMask@1) (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| QPMask@1) (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| QPMask@1) (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| QPMask@1) (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| QPMask@1) (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| QPMask@1) (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| QPMask@1) (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| QPMask@1))) (and (=> (= (ControlFlow 0 25) 23) anon33_Then_correct) (=> (= (ControlFlow 0 25) 24) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 28) 25)) anon15_correct)))
(let ((anon32_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (<= FullPerm (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@1) null (p_2 r_1@@11)))) (=> (<= FullPerm (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@1) null (p_2 r_1@@11))) (=> (= (ControlFlow 0 26) 25) anon15_correct))))))
(let ((anon31_Then_correct  (=> (<= i@@17 0) (=> (and (|p#trigger_19513| Heap@@47 (p_2 r_1@@11)) (= (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@47) null (p_2 r_1@@11)) (FrameFragment_3874 (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@47) r_1@@11 f_7)))) (and (=> (= (ControlFlow 0 29) 26) anon32_Then_correct) (=> (= (ControlFlow 0 29) 28) anon32_Else_correct))))))
(let ((anon31_Else_correct  (=> (and (and (< 0 i@@17) (= Mask@4 QPMask@1)) (and (= Heap@8 Heap@@47) (= (ControlFlow 0 12) 7))) anon22_correct)))
(let ((anon26_Else_correct  (and (=> (= (ControlFlow 0 41) (- 0 42)) (forall ((x_4_2 T@Ref) (x_4_3 T@Ref) ) (!  (=> (and (and (and (and (not (= x_4_2 x_4_3)) (and (|Seq#Contains_19566| xs x_4_2) (<= i@@17 0))) (and (|Seq#Contains_19566| xs x_4_3) (<= i@@17 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_4_2 x_4_3)))
 :qid |stdinbpl.2303:15|
 :skolemid |221|
))) (=> (forall ((x_4_2@@0 T@Ref) (x_4_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_4_2@@0 x_4_3@@0)) (and (|Seq#Contains_19566| xs x_4_2@@0) (<= i@@17 0))) (and (|Seq#Contains_19566| xs x_4_3@@0) (<= i@@17 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_4_2@@0 x_4_3@@0)))
 :qid |stdinbpl.2303:15|
 :skolemid |221|
)) (=> (and (and (forall ((x_4_2@@1 T@Ref) ) (!  (=> (and (and (|Seq#Contains_19566| xs x_4_2@@1) (<= i@@17 0)) (< NoPerm FullPerm)) (and (qpRange26 x_4_2@@1) (= (invRecv26 x_4_2@@1) x_4_2@@1)))
 :qid |stdinbpl.2309:22|
 :skolemid |222|
 :pattern ( (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@47) x_4_2@@1 g))
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@1) x_4_2@@1 g))
 :pattern ( (|Seq#ContainsTrigger_19566| xs x_4_2@@1))
 :pattern ( (|Seq#Contains_19566| xs x_4_2@@1))
)) (forall ((o_9@@63 T@Ref) ) (!  (=> (and (and (and (|Seq#Contains_19566| xs (invRecv26 o_9@@63)) (<= i@@17 0)) (< NoPerm FullPerm)) (qpRange26 o_9@@63)) (= (invRecv26 o_9@@63) o_9@@63))
 :qid |stdinbpl.2313:22|
 :skolemid |223|
 :pattern ( (invRecv26 o_9@@63))
))) (and (forall ((x_4_2@@2 T@Ref) ) (!  (=> (and (|Seq#Contains_19566| xs x_4_2@@2) (<= i@@17 0)) (not (= x_4_2@@2 null)))
 :qid |stdinbpl.2319:22|
 :skolemid |224|
 :pattern ( (select (|PolymorphicMapType_30872_19508_3874#PolymorphicMapType_30872| Heap@@47) x_4_2@@2 g))
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@1) x_4_2@@2 g))
 :pattern ( (|Seq#ContainsTrigger_19566| xs x_4_2@@2))
 :pattern ( (|Seq#Contains_19566| xs x_4_2@@2))
)) (forall ((o_9@@64 T@Ref) ) (!  (and (=> (and (and (and (|Seq#Contains_19566| xs (invRecv26 o_9@@64)) (<= i@@17 0)) (< NoPerm FullPerm)) (qpRange26 o_9@@64)) (and (=> (< NoPerm FullPerm) (= (invRecv26 o_9@@64) o_9@@64)) (= (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@1) o_9@@64 g) (+ (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@0) o_9@@64 g) FullPerm)))) (=> (not (and (and (and (|Seq#Contains_19566| xs (invRecv26 o_9@@64)) (<= i@@17 0)) (< NoPerm FullPerm)) (qpRange26 o_9@@64))) (= (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@1) o_9@@64 g) (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@0) o_9@@64 g))))
 :qid |stdinbpl.2325:22|
 :skolemid |225|
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@1) o_9@@64 g))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@65 T@Ref) (f_5@@59 T@Field_30932_53) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| QPMask@0) o_9@@65 f_5@@59) (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| QPMask@1) o_9@@65 f_5@@59)))
 :qid |stdinbpl.2329:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| QPMask@0) o_9@@65 f_5@@59))
 :pattern ( (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| QPMask@1) o_9@@65 f_5@@59))
)) (forall ((o_9@@66 T@Ref) (f_5@@60 T@Field_30945_30946) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| QPMask@0) o_9@@66 f_5@@60) (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| QPMask@1) o_9@@66 f_5@@60)))
 :qid |stdinbpl.2329:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| QPMask@0) o_9@@66 f_5@@60))
 :pattern ( (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| QPMask@1) o_9@@66 f_5@@60))
))) (forall ((o_9@@67 T@Ref) (f_5@@61 T@Field_37093_3874) ) (!  (=> (not (= f_5@@61 g)) (= (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@0) o_9@@67 f_5@@61) (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@1) o_9@@67 f_5@@61)))
 :qid |stdinbpl.2329:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@0) o_9@@67 f_5@@61))
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@1) o_9@@67 f_5@@61))
))) (forall ((o_9@@68 T@Ref) (f_5@@62 T@Field_19508_19514) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| QPMask@0) o_9@@68 f_5@@62) (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| QPMask@1) o_9@@68 f_5@@62)))
 :qid |stdinbpl.2329:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| QPMask@0) o_9@@68 f_5@@62))
 :pattern ( (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| QPMask@1) o_9@@68 f_5@@62))
))) (forall ((o_9@@69 T@Ref) (f_5@@63 T@Field_19508_37188) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| QPMask@0) o_9@@69 f_5@@63) (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| QPMask@1) o_9@@69 f_5@@63)))
 :qid |stdinbpl.2329:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| QPMask@0) o_9@@69 f_5@@63))
 :pattern ( (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| QPMask@1) o_9@@69 f_5@@63))
))) (forall ((o_9@@70 T@Ref) (f_5@@64 T@Field_19513_53) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| QPMask@0) o_9@@70 f_5@@64) (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| QPMask@1) o_9@@70 f_5@@64)))
 :qid |stdinbpl.2329:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| QPMask@0) o_9@@70 f_5@@64))
 :pattern ( (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| QPMask@1) o_9@@70 f_5@@64))
))) (forall ((o_9@@71 T@Ref) (f_5@@65 T@Field_19513_30946) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| QPMask@0) o_9@@71 f_5@@65) (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| QPMask@1) o_9@@71 f_5@@65)))
 :qid |stdinbpl.2329:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| QPMask@0) o_9@@71 f_5@@65))
 :pattern ( (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| QPMask@1) o_9@@71 f_5@@65))
))) (forall ((o_9@@72 T@Ref) (f_5@@66 T@Field_19513_3874) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| QPMask@0) o_9@@72 f_5@@66) (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| QPMask@1) o_9@@72 f_5@@66)))
 :qid |stdinbpl.2329:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| QPMask@0) o_9@@72 f_5@@66))
 :pattern ( (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| QPMask@1) o_9@@72 f_5@@66))
))) (forall ((o_9@@73 T@Ref) (f_5@@67 T@Field_37170_37171) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@0) o_9@@73 f_5@@67) (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@1) o_9@@73 f_5@@67)))
 :qid |stdinbpl.2329:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@0) o_9@@73 f_5@@67))
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@1) o_9@@73 f_5@@67))
))) (forall ((o_9@@74 T@Ref) (f_5@@68 T@Field_37183_37188) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| QPMask@0) o_9@@74 f_5@@68) (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| QPMask@1) o_9@@74 f_5@@68)))
 :qid |stdinbpl.2329:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| QPMask@0) o_9@@74 f_5@@68))
 :pattern ( (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| QPMask@1) o_9@@74 f_5@@68))
))) (forall ((o_9@@75 T@Ref) (f_5@@69 T@Field_19538_53) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| QPMask@0) o_9@@75 f_5@@69) (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| QPMask@1) o_9@@75 f_5@@69)))
 :qid |stdinbpl.2329:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| QPMask@0) o_9@@75 f_5@@69))
 :pattern ( (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| QPMask@1) o_9@@75 f_5@@69))
))) (forall ((o_9@@76 T@Ref) (f_5@@70 T@Field_19538_30946) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| QPMask@0) o_9@@76 f_5@@70) (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| QPMask@1) o_9@@76 f_5@@70)))
 :qid |stdinbpl.2329:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| QPMask@0) o_9@@76 f_5@@70))
 :pattern ( (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| QPMask@1) o_9@@76 f_5@@70))
))) (forall ((o_9@@77 T@Ref) (f_5@@71 T@Field_19538_3874) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| QPMask@0) o_9@@77 f_5@@71) (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| QPMask@1) o_9@@77 f_5@@71)))
 :qid |stdinbpl.2329:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| QPMask@0) o_9@@77 f_5@@71))
 :pattern ( (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| QPMask@1) o_9@@77 f_5@@71))
))) (forall ((o_9@@78 T@Ref) (f_5@@72 T@Field_38090_38091) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| QPMask@0) o_9@@78 f_5@@72) (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| QPMask@1) o_9@@78 f_5@@72)))
 :qid |stdinbpl.2329:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| QPMask@0) o_9@@78 f_5@@72))
 :pattern ( (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| QPMask@1) o_9@@78 f_5@@72))
))) (forall ((o_9@@79 T@Ref) (f_5@@73 T@Field_38103_38108) ) (!  (=> true (= (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| QPMask@0) o_9@@79 f_5@@73) (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| QPMask@1) o_9@@79 f_5@@73)))
 :qid |stdinbpl.2329:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| QPMask@0) o_9@@79 f_5@@73))
 :pattern ( (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| QPMask@1) o_9@@79 f_5@@73))
))) (and (state Heap@@47 QPMask@1) (state Heap@@47 QPMask@1))) (and (and (=> (= (ControlFlow 0 41) 40) anon27_Then_correct) (=> (= (ControlFlow 0 41) 29) anon31_Then_correct)) (=> (= (ControlFlow 0 41) 12) anon31_Else_correct))))))))
(let ((anon26_Then_correct true))
(let ((anon25_Else_correct  (and (=> (= (ControlFlow 0 43) (- 0 44)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (and (|Seq#Contains_19566| xs x_1) (> i@@17 0))) (and (|Seq#Contains_19566| xs x_1_1) (> i@@17 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.2264:17|
 :skolemid |215|
 :pattern ( (neverTriggered25 x_1) (neverTriggered25 x_1_1))
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (and (|Seq#Contains_19566| xs x_1@@0) (> i@@17 0))) (and (|Seq#Contains_19566| xs x_1_1@@0) (> i@@17 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.2264:17|
 :skolemid |215|
 :pattern ( (neverTriggered25 x_1@@0) (neverTriggered25 x_1_1@@0))
)) (=> (forall ((x_1@@1 T@Ref) ) (!  (=> (and (and (|Seq#Contains_19566| xs x_1@@1) (> i@@17 0)) (< NoPerm FullPerm)) (and (= (invRecv25 x_1@@1) x_1@@1) (qpRange25 x_1@@1)))
 :qid |stdinbpl.2270:22|
 :skolemid |216|
 :pattern ( (select (|PolymorphicMapType_30872_19513_19514#PolymorphicMapType_30872| Heap@@47) null (p_2 x_1@@1)))
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| ZeroMask) null (p_2 x_1@@1)))
 :pattern ( (|Seq#ContainsTrigger_19566| xs x_1@@1))
 :pattern ( (|Seq#Contains_19566| xs x_1@@1))
)) (=> (and (forall ((r_1_1_1 T@Ref) ) (!  (=> (and (and (and (|Seq#Contains_19566| xs (invRecv25 r_1_1_1)) (> i@@17 0)) (< NoPerm FullPerm)) (qpRange25 r_1_1_1)) (= (invRecv25 r_1_1_1) r_1_1_1))
 :qid |stdinbpl.2274:22|
 :skolemid |217|
 :pattern ( (invRecv25 r_1_1_1))
)) (forall ((r_1_1_1@@0 T@Ref) ) (!  (=> (and (and (and (|Seq#Contains_19566| xs (invRecv25 r_1_1_1@@0)) (> i@@17 0)) (< NoPerm FullPerm)) (qpRange25 r_1_1_1@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv25 r_1_1_1@@0) r_1_1_1@@0)) (= (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@0) null (p_2 r_1_1_1@@0)) (+ (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| ZeroMask) null (p_2 r_1_1_1@@0)) FullPerm))))
 :qid |stdinbpl.2280:22|
 :skolemid |218|
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@0) null (p_2 r_1_1_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@80 T@Ref) (f_5@@74 T@Field_37093_3874) ) (!  (=> (or (or (not (= o_9@@80 null)) (not (IsPredicateField_19508_3874 f_5@@74))) (not (= (getPredWandId_19508_3874 f_5@@74) 0))) (= (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| ZeroMask) o_9@@80 f_5@@74) (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@0) o_9@@80 f_5@@74)))
 :qid |stdinbpl.2286:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| ZeroMask) o_9@@80 f_5@@74))
 :pattern ( (select (|PolymorphicMapType_30893_19508_3874#PolymorphicMapType_30893| QPMask@0) o_9@@80 f_5@@74))
)) (forall ((o_9@@81 T@Ref) (f_5@@75 T@Field_19508_19514) ) (!  (=> (or (or (not (= o_9@@81 null)) (not (IsPredicateField_19508_100221 f_5@@75))) (not (= (getPredWandId_19508_19514 f_5@@75) 0))) (= (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| ZeroMask) o_9@@81 f_5@@75) (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| QPMask@0) o_9@@81 f_5@@75)))
 :qid |stdinbpl.2286:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| ZeroMask) o_9@@81 f_5@@75))
 :pattern ( (select (|PolymorphicMapType_30893_19508_19514#PolymorphicMapType_30893| QPMask@0) o_9@@81 f_5@@75))
))) (forall ((o_9@@82 T@Ref) (f_5@@76 T@Field_30932_53) ) (!  (=> (or (or (not (= o_9@@82 null)) (not (IsPredicateField_19508_53 f_5@@76))) (not (= (getPredWandId_19508_53 f_5@@76) 0))) (= (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| ZeroMask) o_9@@82 f_5@@76) (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| QPMask@0) o_9@@82 f_5@@76)))
 :qid |stdinbpl.2286:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| ZeroMask) o_9@@82 f_5@@76))
 :pattern ( (select (|PolymorphicMapType_30893_19508_53#PolymorphicMapType_30893| QPMask@0) o_9@@82 f_5@@76))
))) (forall ((o_9@@83 T@Ref) (f_5@@77 T@Field_30945_30946) ) (!  (=> (or (or (not (= o_9@@83 null)) (not (IsPredicateField_19508_30946 f_5@@77))) (not (= (getPredWandId_19508_30946 f_5@@77) 0))) (= (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| ZeroMask) o_9@@83 f_5@@77) (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| QPMask@0) o_9@@83 f_5@@77)))
 :qid |stdinbpl.2286:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| ZeroMask) o_9@@83 f_5@@77))
 :pattern ( (select (|PolymorphicMapType_30893_19508_30946#PolymorphicMapType_30893| QPMask@0) o_9@@83 f_5@@77))
))) (forall ((o_9@@84 T@Ref) (f_5@@78 T@Field_19508_37188) ) (!  (=> (or (or (not (= o_9@@84 null)) (not (IsPredicateField_19508_114573 f_5@@78))) (not (= (getPredWandId_19508_165163 f_5@@78) 0))) (= (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| ZeroMask) o_9@@84 f_5@@78) (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| QPMask@0) o_9@@84 f_5@@78)))
 :qid |stdinbpl.2286:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| ZeroMask) o_9@@84 f_5@@78))
 :pattern ( (select (|PolymorphicMapType_30893_19508_111958#PolymorphicMapType_30893| QPMask@0) o_9@@84 f_5@@78))
))) (forall ((o_9@@85 T@Ref) (f_5@@79 T@Field_19513_3874) ) (!  (=> (or (or (not (= o_9@@85 null)) (not (IsPredicateField_19513_3874 f_5@@79))) (not (= (getPredWandId_19513_3874 f_5@@79) 0))) (= (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| ZeroMask) o_9@@85 f_5@@79) (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| QPMask@0) o_9@@85 f_5@@79)))
 :qid |stdinbpl.2286:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| ZeroMask) o_9@@85 f_5@@79))
 :pattern ( (select (|PolymorphicMapType_30893_19513_3874#PolymorphicMapType_30893| QPMask@0) o_9@@85 f_5@@79))
))) (forall ((o_9@@86 T@Ref) (f_5@@80 T@Field_37170_37171) ) (!  (=> (or (or (not (= o_9@@86 null)) (not (IsPredicateField_19513_19514 f_5@@80))) (not (= (getPredWandId_19513_19514 f_5@@80) 0))) (= (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| ZeroMask) o_9@@86 f_5@@80) (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@0) o_9@@86 f_5@@80)))
 :qid |stdinbpl.2286:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| ZeroMask) o_9@@86 f_5@@80))
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@0) o_9@@86 f_5@@80))
))) (forall ((o_9@@87 T@Ref) (f_5@@81 T@Field_19513_53) ) (!  (=> (or (or (not (= o_9@@87 null)) (not (IsPredicateField_19513_53 f_5@@81))) (not (= (getPredWandId_19513_53 f_5@@81) 0))) (= (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| ZeroMask) o_9@@87 f_5@@81) (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| QPMask@0) o_9@@87 f_5@@81)))
 :qid |stdinbpl.2286:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| ZeroMask) o_9@@87 f_5@@81))
 :pattern ( (select (|PolymorphicMapType_30893_19513_53#PolymorphicMapType_30893| QPMask@0) o_9@@87 f_5@@81))
))) (forall ((o_9@@88 T@Ref) (f_5@@82 T@Field_19513_30946) ) (!  (=> (or (or (not (= o_9@@88 null)) (not (IsPredicateField_19513_30946 f_5@@82))) (not (= (getPredWandId_19513_30946 f_5@@82) 0))) (= (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| ZeroMask) o_9@@88 f_5@@82) (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| QPMask@0) o_9@@88 f_5@@82)))
 :qid |stdinbpl.2286:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| ZeroMask) o_9@@88 f_5@@82))
 :pattern ( (select (|PolymorphicMapType_30893_19513_30946#PolymorphicMapType_30893| QPMask@0) o_9@@88 f_5@@82))
))) (forall ((o_9@@89 T@Ref) (f_5@@83 T@Field_37183_37188) ) (!  (=> (or (or (not (= o_9@@89 null)) (not (IsPredicateField_19513_115404 f_5@@83))) (not (= (getPredWandId_19513_165972 f_5@@83) 0))) (= (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| ZeroMask) o_9@@89 f_5@@83) (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| QPMask@0) o_9@@89 f_5@@83)))
 :qid |stdinbpl.2286:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| ZeroMask) o_9@@89 f_5@@83))
 :pattern ( (select (|PolymorphicMapType_30893_19513_112369#PolymorphicMapType_30893| QPMask@0) o_9@@89 f_5@@83))
))) (forall ((o_9@@90 T@Ref) (f_5@@84 T@Field_19538_3874) ) (!  (=> (or (or (not (= o_9@@90 null)) (not (IsPredicateField_19538_3874 f_5@@84))) (not (= (getPredWandId_19538_3874 f_5@@84) 0))) (= (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| ZeroMask) o_9@@90 f_5@@84) (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| QPMask@0) o_9@@90 f_5@@84)))
 :qid |stdinbpl.2286:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| ZeroMask) o_9@@90 f_5@@84))
 :pattern ( (select (|PolymorphicMapType_30893_19538_3874#PolymorphicMapType_30893| QPMask@0) o_9@@90 f_5@@84))
))) (forall ((o_9@@91 T@Ref) (f_5@@85 T@Field_38090_38091) ) (!  (=> (or (or (not (= o_9@@91 null)) (not (IsPredicateField_19538_19539 f_5@@85))) (not (= (getPredWandId_19538_19539 f_5@@85) 0))) (= (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| ZeroMask) o_9@@91 f_5@@85) (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| QPMask@0) o_9@@91 f_5@@85)))
 :qid |stdinbpl.2286:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| ZeroMask) o_9@@91 f_5@@85))
 :pattern ( (select (|PolymorphicMapType_30893_19538_19539#PolymorphicMapType_30893| QPMask@0) o_9@@91 f_5@@85))
))) (forall ((o_9@@92 T@Ref) (f_5@@86 T@Field_19538_53) ) (!  (=> (or (or (not (= o_9@@92 null)) (not (IsPredicateField_19538_53 f_5@@86))) (not (= (getPredWandId_19538_53 f_5@@86) 0))) (= (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| ZeroMask) o_9@@92 f_5@@86) (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| QPMask@0) o_9@@92 f_5@@86)))
 :qid |stdinbpl.2286:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| ZeroMask) o_9@@92 f_5@@86))
 :pattern ( (select (|PolymorphicMapType_30893_19538_53#PolymorphicMapType_30893| QPMask@0) o_9@@92 f_5@@86))
))) (forall ((o_9@@93 T@Ref) (f_5@@87 T@Field_19538_30946) ) (!  (=> (or (or (not (= o_9@@93 null)) (not (IsPredicateField_19538_30946 f_5@@87))) (not (= (getPredWandId_19538_30946 f_5@@87) 0))) (= (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| ZeroMask) o_9@@93 f_5@@87) (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| QPMask@0) o_9@@93 f_5@@87)))
 :qid |stdinbpl.2286:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| ZeroMask) o_9@@93 f_5@@87))
 :pattern ( (select (|PolymorphicMapType_30893_19538_30946#PolymorphicMapType_30893| QPMask@0) o_9@@93 f_5@@87))
))) (forall ((o_9@@94 T@Ref) (f_5@@88 T@Field_38103_38108) ) (!  (=> (or (or (not (= o_9@@94 null)) (not (IsPredicateField_19538_116235 f_5@@88))) (not (= (getPredWandId_19538_166781 f_5@@88) 0))) (= (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| ZeroMask) o_9@@94 f_5@@88) (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| QPMask@0) o_9@@94 f_5@@88)))
 :qid |stdinbpl.2286:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| ZeroMask) o_9@@94 f_5@@88))
 :pattern ( (select (|PolymorphicMapType_30893_19538_112780#PolymorphicMapType_30893| QPMask@0) o_9@@94 f_5@@88))
))) (and (forall ((r_1_1_1@@1 T@Ref) ) (!  (=> (not (and (and (and (|Seq#Contains_19566| xs (invRecv25 r_1_1_1@@1)) (> i@@17 0)) (< NoPerm FullPerm)) (qpRange25 r_1_1_1@@1))) (= (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@0) null (p_2 r_1_1_1@@1)) (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| ZeroMask) null (p_2 r_1_1_1@@1))))
 :qid |stdinbpl.2290:22|
 :skolemid |220|
 :pattern ( (select (|PolymorphicMapType_30893_19513_19514#PolymorphicMapType_30893| QPMask@0) null (p_2 r_1_1_1@@1)))
)) (state Heap@@47 QPMask@0))) (and (=> (= (ControlFlow 0 43) 2) anon26_Then_correct) (=> (= (ControlFlow 0 43) 41) anon26_Else_correct)))))))))
(let ((anon25_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@47 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_30872_19176_53#PolymorphicMapType_30872| Heap@@47) r_1@@11 $allocated)) (and (|Seq#Contains_19566| xs r_1@@11) (state Heap@@47 ZeroMask))) (and (=> (= (ControlFlow 0 45) 1) anon25_Then_correct) (=> (= (ControlFlow 0 45) 43) anon25_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 46) 45) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))
))
(check-sat)
