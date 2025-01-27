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
(declare-sort T@Field_5932_53 0)
(declare-sort T@Field_5945_5946 0)
(declare-sort T@Field_9260_9261 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_10013_10014 0)
(declare-sort T@Field_3103_53 0)
(declare-sort T@Field_3103_5946 0)
(declare-sort T@Field_9273_9278 0)
(declare-sort T@Field_3127_53 0)
(declare-sort T@Field_3127_5946 0)
(declare-sort T@Field_10026_10031 0)
(declare-sort T@Field_5932_3104 0)
(declare-sort T@Field_5932_9278 0)
(declare-sort T@Field_10766_10767 0)
(declare-sort T@Field_10766_53 0)
(declare-sort T@Field_10766_5946 0)
(declare-sort T@Field_10779_10784 0)
(declare-datatypes ((T@PolymorphicMapType_5893 0)) (((PolymorphicMapType_5893 (|PolymorphicMapType_5893_3103_3104#PolymorphicMapType_5893| (Array T@Ref T@Field_9260_9261 Real)) (|PolymorphicMapType_5893_3127_3128#PolymorphicMapType_5893| (Array T@Ref T@Field_10013_10014 Real)) (|PolymorphicMapType_5893_3151_3152#PolymorphicMapType_5893| (Array T@Ref T@Field_10766_10767 Real)) (|PolymorphicMapType_5893_3103_53#PolymorphicMapType_5893| (Array T@Ref T@Field_3103_53 Real)) (|PolymorphicMapType_5893_3103_5946#PolymorphicMapType_5893| (Array T@Ref T@Field_3103_5946 Real)) (|PolymorphicMapType_5893_3103_34861#PolymorphicMapType_5893| (Array T@Ref T@Field_9273_9278 Real)) (|PolymorphicMapType_5893_3127_53#PolymorphicMapType_5893| (Array T@Ref T@Field_3127_53 Real)) (|PolymorphicMapType_5893_3127_5946#PolymorphicMapType_5893| (Array T@Ref T@Field_3127_5946 Real)) (|PolymorphicMapType_5893_3127_35192#PolymorphicMapType_5893| (Array T@Ref T@Field_10026_10031 Real)) (|PolymorphicMapType_5893_3151_53#PolymorphicMapType_5893| (Array T@Ref T@Field_10766_53 Real)) (|PolymorphicMapType_5893_3151_5946#PolymorphicMapType_5893| (Array T@Ref T@Field_10766_5946 Real)) (|PolymorphicMapType_5893_3151_35523#PolymorphicMapType_5893| (Array T@Ref T@Field_10779_10784 Real)) (|PolymorphicMapType_5893_5932_3104#PolymorphicMapType_5893| (Array T@Ref T@Field_5932_3104 Real)) (|PolymorphicMapType_5893_5932_53#PolymorphicMapType_5893| (Array T@Ref T@Field_5932_53 Real)) (|PolymorphicMapType_5893_5932_5946#PolymorphicMapType_5893| (Array T@Ref T@Field_5945_5946 Real)) (|PolymorphicMapType_5893_5932_35869#PolymorphicMapType_5893| (Array T@Ref T@Field_5932_9278 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6421 0)) (((PolymorphicMapType_6421 (|PolymorphicMapType_6421_5932_53#PolymorphicMapType_6421| (Array T@Ref T@Field_5932_53 Bool)) (|PolymorphicMapType_6421_5932_5946#PolymorphicMapType_6421| (Array T@Ref T@Field_5945_5946 Bool)) (|PolymorphicMapType_6421_5932_9261#PolymorphicMapType_6421| (Array T@Ref T@Field_5932_3104 Bool)) (|PolymorphicMapType_6421_5932_23280#PolymorphicMapType_6421| (Array T@Ref T@Field_5932_9278 Bool)) (|PolymorphicMapType_6421_9260_53#PolymorphicMapType_6421| (Array T@Ref T@Field_3103_53 Bool)) (|PolymorphicMapType_6421_9260_5946#PolymorphicMapType_6421| (Array T@Ref T@Field_3103_5946 Bool)) (|PolymorphicMapType_6421_9260_9261#PolymorphicMapType_6421| (Array T@Ref T@Field_9260_9261 Bool)) (|PolymorphicMapType_6421_9260_24130#PolymorphicMapType_6421| (Array T@Ref T@Field_9273_9278 Bool)) (|PolymorphicMapType_6421_10013_53#PolymorphicMapType_6421| (Array T@Ref T@Field_3127_53 Bool)) (|PolymorphicMapType_6421_10013_5946#PolymorphicMapType_6421| (Array T@Ref T@Field_3127_5946 Bool)) (|PolymorphicMapType_6421_10013_9261#PolymorphicMapType_6421| (Array T@Ref T@Field_10013_10014 Bool)) (|PolymorphicMapType_6421_10013_24980#PolymorphicMapType_6421| (Array T@Ref T@Field_10026_10031 Bool)) (|PolymorphicMapType_6421_10766_53#PolymorphicMapType_6421| (Array T@Ref T@Field_10766_53 Bool)) (|PolymorphicMapType_6421_10766_5946#PolymorphicMapType_6421| (Array T@Ref T@Field_10766_5946 Bool)) (|PolymorphicMapType_6421_10766_9261#PolymorphicMapType_6421| (Array T@Ref T@Field_10766_10767 Bool)) (|PolymorphicMapType_6421_10766_25830#PolymorphicMapType_6421| (Array T@Ref T@Field_10779_10784 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5872 0)) (((PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| (Array T@Ref T@Field_5932_53 Bool)) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| (Array T@Ref T@Field_5945_5946 T@Ref)) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| (Array T@Ref T@Field_9260_9261 T@FrameType)) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| (Array T@Ref T@Field_10013_10014 T@FrameType)) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| (Array T@Ref T@Field_3103_53 Bool)) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| (Array T@Ref T@Field_3103_5946 T@Ref)) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| (Array T@Ref T@Field_9273_9278 T@PolymorphicMapType_6421)) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| (Array T@Ref T@Field_3127_53 Bool)) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| (Array T@Ref T@Field_3127_5946 T@Ref)) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| (Array T@Ref T@Field_10026_10031 T@PolymorphicMapType_6421)) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| (Array T@Ref T@Field_5932_3104 T@FrameType)) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| (Array T@Ref T@Field_5932_9278 T@PolymorphicMapType_6421)) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| (Array T@Ref T@Field_10766_10767 T@FrameType)) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| (Array T@Ref T@Field_10766_53 Bool)) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| (Array T@Ref T@Field_10766_5946 T@Ref)) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| (Array T@Ref T@Field_10779_10784 T@PolymorphicMapType_6421)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_5872 T@PolymorphicMapType_5872) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5872 T@PolymorphicMapType_5872) Bool)
(declare-fun state (T@PolymorphicMapType_5872 T@PolymorphicMapType_5893) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5893) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6421)
(declare-fun P1 (T@Ref) T@Field_9260_9261)
(declare-fun IsPredicateField_3103_3104 (T@Field_9260_9261) Bool)
(declare-fun P2 (T@Ref) T@Field_10013_10014)
(declare-fun IsPredicateField_3127_3128 (T@Field_10013_10014) Bool)
(declare-fun P3 (T@Ref) T@Field_10766_10767)
(declare-fun IsPredicateField_3151_3152 (T@Field_10766_10767) Bool)
(declare-fun |P1#trigger_3103| (T@PolymorphicMapType_5872 T@Field_9260_9261) Bool)
(declare-fun |P1#everUsed_3103| (T@Field_9260_9261) Bool)
(declare-fun |P2#trigger_3127| (T@PolymorphicMapType_5872 T@Field_10013_10014) Bool)
(declare-fun |P2#everUsed_3127| (T@Field_10013_10014) Bool)
(declare-fun |P3#trigger_3151| (T@PolymorphicMapType_5872 T@Field_10766_10767) Bool)
(declare-fun |P3#everUsed_3151| (T@Field_10766_10767) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5872 T@PolymorphicMapType_5872 T@PolymorphicMapType_5893) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3151 (T@Field_10766_10767) T@Field_10779_10784)
(declare-fun HasDirectPerm_10766_3104 (T@PolymorphicMapType_5893 T@Ref T@Field_10766_10767) Bool)
(declare-fun IsPredicateField_5932_21994 (T@Field_5932_3104) Bool)
(declare-fun PredicateMaskField_5932 (T@Field_5932_3104) T@Field_5932_9278)
(declare-fun HasDirectPerm_5932_3104 (T@PolymorphicMapType_5893 T@Ref T@Field_5932_3104) Bool)
(declare-fun PredicateMaskField_3127 (T@Field_10013_10014) T@Field_10026_10031)
(declare-fun HasDirectPerm_3127_3128 (T@PolymorphicMapType_5893 T@Ref T@Field_10013_10014) Bool)
(declare-fun PredicateMaskField_3103 (T@Field_9260_9261) T@Field_9273_9278)
(declare-fun HasDirectPerm_3103_3104 (T@PolymorphicMapType_5893 T@Ref T@Field_9260_9261) Bool)
(declare-fun IsWandField_10766_28271 (T@Field_10766_10767) Bool)
(declare-fun WandMaskField_10766 (T@Field_10766_10767) T@Field_10779_10784)
(declare-fun IsWandField_5932_27914 (T@Field_5932_3104) Bool)
(declare-fun WandMaskField_5932 (T@Field_5932_3104) T@Field_5932_9278)
(declare-fun IsWandField_3127_27557 (T@Field_10013_10014) Bool)
(declare-fun WandMaskField_3127 (T@Field_10013_10014) T@Field_10026_10031)
(declare-fun IsWandField_3103_27200 (T@Field_9260_9261) Bool)
(declare-fun WandMaskField_3103 (T@Field_9260_9261) T@Field_9273_9278)
(declare-fun |P1#sm| (T@Ref) T@Field_9273_9278)
(declare-fun |P2#sm| (T@Ref) T@Field_10026_10031)
(declare-fun |P3#sm| (T@Ref) T@Field_10779_10784)
(declare-fun dummyHeap () T@PolymorphicMapType_5872)
(declare-fun ZeroMask () T@PolymorphicMapType_5893)
(declare-fun $allocated () T@Field_5932_53)
(declare-fun InsidePredicate_10766_10766 (T@Field_10766_10767 T@FrameType T@Field_10766_10767 T@FrameType) Bool)
(declare-fun InsidePredicate_10013_10013 (T@Field_10013_10014 T@FrameType T@Field_10013_10014 T@FrameType) Bool)
(declare-fun InsidePredicate_9260_9260 (T@Field_9260_9261 T@FrameType T@Field_9260_9261 T@FrameType) Bool)
(declare-fun InsidePredicate_5932_5932 (T@Field_5932_3104 T@FrameType T@Field_5932_3104 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5932_39565 (T@Field_5932_9278) Bool)
(declare-fun IsWandField_5932_39581 (T@Field_5932_9278) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5932_5946 (T@Field_5945_5946) Bool)
(declare-fun IsWandField_5932_5946 (T@Field_5945_5946) Bool)
(declare-fun IsPredicateField_5932_53 (T@Field_5932_53) Bool)
(declare-fun IsWandField_5932_53 (T@Field_5932_53) Bool)
(declare-fun IsPredicateField_3151_38902 (T@Field_10779_10784) Bool)
(declare-fun IsWandField_3151_38918 (T@Field_10779_10784) Bool)
(declare-fun IsPredicateField_3151_5946 (T@Field_10766_5946) Bool)
(declare-fun IsWandField_3151_5946 (T@Field_10766_5946) Bool)
(declare-fun IsPredicateField_3151_53 (T@Field_10766_53) Bool)
(declare-fun IsWandField_3151_53 (T@Field_10766_53) Bool)
(declare-fun IsPredicateField_3127_38239 (T@Field_10026_10031) Bool)
(declare-fun IsWandField_3127_38255 (T@Field_10026_10031) Bool)
(declare-fun IsPredicateField_3127_5946 (T@Field_3127_5946) Bool)
(declare-fun IsWandField_3127_5946 (T@Field_3127_5946) Bool)
(declare-fun IsPredicateField_3127_53 (T@Field_3127_53) Bool)
(declare-fun IsWandField_3127_53 (T@Field_3127_53) Bool)
(declare-fun IsPredicateField_3103_37576 (T@Field_9273_9278) Bool)
(declare-fun IsWandField_3103_37592 (T@Field_9273_9278) Bool)
(declare-fun IsPredicateField_3103_5946 (T@Field_3103_5946) Bool)
(declare-fun IsWandField_3103_5946 (T@Field_3103_5946) Bool)
(declare-fun IsPredicateField_3103_53 (T@Field_3103_53) Bool)
(declare-fun IsWandField_3103_53 (T@Field_3103_53) Bool)
(declare-fun HasDirectPerm_10766_21056 (T@PolymorphicMapType_5893 T@Ref T@Field_10779_10784) Bool)
(declare-fun HasDirectPerm_10766_5946 (T@PolymorphicMapType_5893 T@Ref T@Field_10766_5946) Bool)
(declare-fun HasDirectPerm_10766_53 (T@PolymorphicMapType_5893 T@Ref T@Field_10766_53) Bool)
(declare-fun HasDirectPerm_5932_20099 (T@PolymorphicMapType_5893 T@Ref T@Field_5932_9278) Bool)
(declare-fun HasDirectPerm_5932_5946 (T@PolymorphicMapType_5893 T@Ref T@Field_5945_5946) Bool)
(declare-fun HasDirectPerm_5932_53 (T@PolymorphicMapType_5893 T@Ref T@Field_5932_53) Bool)
(declare-fun HasDirectPerm_3127_19171 (T@PolymorphicMapType_5893 T@Ref T@Field_10026_10031) Bool)
(declare-fun HasDirectPerm_3127_5946 (T@PolymorphicMapType_5893 T@Ref T@Field_3127_5946) Bool)
(declare-fun HasDirectPerm_3127_53 (T@PolymorphicMapType_5893 T@Ref T@Field_3127_53) Bool)
(declare-fun HasDirectPerm_3103_18251 (T@PolymorphicMapType_5893 T@Ref T@Field_9273_9278) Bool)
(declare-fun HasDirectPerm_3103_5946 (T@PolymorphicMapType_5893 T@Ref T@Field_3103_5946) Bool)
(declare-fun HasDirectPerm_3103_53 (T@PolymorphicMapType_5893 T@Ref T@Field_3103_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5893 T@PolymorphicMapType_5893 T@PolymorphicMapType_5893) Bool)
(declare-fun getPredWandId_3103_3104 (T@Field_9260_9261) Int)
(declare-fun getPredWandId_3127_3128 (T@Field_10013_10014) Int)
(declare-fun getPredWandId_3151_3152 (T@Field_10766_10767) Int)
(declare-fun InsidePredicate_10766_10013 (T@Field_10766_10767 T@FrameType T@Field_10013_10014 T@FrameType) Bool)
(declare-fun InsidePredicate_10766_9260 (T@Field_10766_10767 T@FrameType T@Field_9260_9261 T@FrameType) Bool)
(declare-fun InsidePredicate_10766_5932 (T@Field_10766_10767 T@FrameType T@Field_5932_3104 T@FrameType) Bool)
(declare-fun InsidePredicate_10013_10766 (T@Field_10013_10014 T@FrameType T@Field_10766_10767 T@FrameType) Bool)
(declare-fun InsidePredicate_10013_9260 (T@Field_10013_10014 T@FrameType T@Field_9260_9261 T@FrameType) Bool)
(declare-fun InsidePredicate_10013_5932 (T@Field_10013_10014 T@FrameType T@Field_5932_3104 T@FrameType) Bool)
(declare-fun InsidePredicate_9260_10766 (T@Field_9260_9261 T@FrameType T@Field_10766_10767 T@FrameType) Bool)
(declare-fun InsidePredicate_9260_10013 (T@Field_9260_9261 T@FrameType T@Field_10013_10014 T@FrameType) Bool)
(declare-fun InsidePredicate_9260_5932 (T@Field_9260_9261 T@FrameType T@Field_5932_3104 T@FrameType) Bool)
(declare-fun InsidePredicate_5932_10766 (T@Field_5932_3104 T@FrameType T@Field_10766_10767 T@FrameType) Bool)
(declare-fun InsidePredicate_5932_10013 (T@Field_5932_3104 T@FrameType T@Field_10013_10014 T@FrameType) Bool)
(declare-fun InsidePredicate_5932_9260 (T@Field_5932_3104 T@FrameType T@Field_9260_9261 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5872) (Heap1 T@PolymorphicMapType_5872) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5872) (Mask T@PolymorphicMapType_5893) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5872) (Heap1@@0 T@PolymorphicMapType_5872) (Heap2 T@PolymorphicMapType_5872) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10779_10784) ) (!  (not (select (|PolymorphicMapType_6421_10766_25830#PolymorphicMapType_6421| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6421_10766_25830#PolymorphicMapType_6421| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10766_10767) ) (!  (not (select (|PolymorphicMapType_6421_10766_9261#PolymorphicMapType_6421| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6421_10766_9261#PolymorphicMapType_6421| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10766_5946) ) (!  (not (select (|PolymorphicMapType_6421_10766_5946#PolymorphicMapType_6421| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6421_10766_5946#PolymorphicMapType_6421| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10766_53) ) (!  (not (select (|PolymorphicMapType_6421_10766_53#PolymorphicMapType_6421| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6421_10766_53#PolymorphicMapType_6421| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10026_10031) ) (!  (not (select (|PolymorphicMapType_6421_10013_24980#PolymorphicMapType_6421| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6421_10013_24980#PolymorphicMapType_6421| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_10013_10014) ) (!  (not (select (|PolymorphicMapType_6421_10013_9261#PolymorphicMapType_6421| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6421_10013_9261#PolymorphicMapType_6421| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3127_5946) ) (!  (not (select (|PolymorphicMapType_6421_10013_5946#PolymorphicMapType_6421| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6421_10013_5946#PolymorphicMapType_6421| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_3127_53) ) (!  (not (select (|PolymorphicMapType_6421_10013_53#PolymorphicMapType_6421| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6421_10013_53#PolymorphicMapType_6421| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_9273_9278) ) (!  (not (select (|PolymorphicMapType_6421_9260_24130#PolymorphicMapType_6421| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6421_9260_24130#PolymorphicMapType_6421| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_9260_9261) ) (!  (not (select (|PolymorphicMapType_6421_9260_9261#PolymorphicMapType_6421| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6421_9260_9261#PolymorphicMapType_6421| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_3103_5946) ) (!  (not (select (|PolymorphicMapType_6421_9260_5946#PolymorphicMapType_6421| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6421_9260_5946#PolymorphicMapType_6421| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_3103_53) ) (!  (not (select (|PolymorphicMapType_6421_9260_53#PolymorphicMapType_6421| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6421_9260_53#PolymorphicMapType_6421| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5932_9278) ) (!  (not (select (|PolymorphicMapType_6421_5932_23280#PolymorphicMapType_6421| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6421_5932_23280#PolymorphicMapType_6421| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5932_3104) ) (!  (not (select (|PolymorphicMapType_6421_5932_9261#PolymorphicMapType_6421| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6421_5932_9261#PolymorphicMapType_6421| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5945_5946) ) (!  (not (select (|PolymorphicMapType_6421_5932_5946#PolymorphicMapType_6421| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6421_5932_5946#PolymorphicMapType_6421| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5932_53) ) (!  (not (select (|PolymorphicMapType_6421_5932_53#PolymorphicMapType_6421| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6421_5932_53#PolymorphicMapType_6421| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_3103_3104 (P1 this))
 :qid |stdinbpl.187:15|
 :skolemid |23|
 :pattern ( (P1 this))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_3127_3128 (P2 this@@0))
 :qid |stdinbpl.236:15|
 :skolemid |29|
 :pattern ( (P2 this@@0))
)))
(assert (forall ((this@@1 T@Ref) ) (! (IsPredicateField_3151_3152 (P3 this@@1))
 :qid |stdinbpl.285:15|
 :skolemid |35|
 :pattern ( (P3 this@@1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5872) (this@@2 T@Ref) ) (! (|P1#everUsed_3103| (P1 this@@2))
 :qid |stdinbpl.206:15|
 :skolemid |27|
 :pattern ( (|P1#trigger_3103| Heap@@0 (P1 this@@2)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5872) (this@@3 T@Ref) ) (! (|P2#everUsed_3127| (P2 this@@3))
 :qid |stdinbpl.255:15|
 :skolemid |33|
 :pattern ( (|P2#trigger_3127| Heap@@1 (P2 this@@3)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5872) (this@@4 T@Ref) ) (! (|P3#everUsed_3151| (P3 this@@4))
 :qid |stdinbpl.304:15|
 :skolemid |39|
 :pattern ( (|P3#trigger_3151| Heap@@2 (P3 this@@4)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5872) (ExhaleHeap T@PolymorphicMapType_5872) (Mask@@0 T@PolymorphicMapType_5893) (pm_f_30 T@Field_10766_10767) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10766_3104 Mask@@0 null pm_f_30) (IsPredicateField_3151_3152 pm_f_30)) (= (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@3) null (PredicateMaskField_3151 pm_f_30)) (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap) null (PredicateMaskField_3151 pm_f_30)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_3151_3152 pm_f_30) (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap) null (PredicateMaskField_3151 pm_f_30)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5872) (ExhaleHeap@@0 T@PolymorphicMapType_5872) (Mask@@1 T@PolymorphicMapType_5893) (pm_f_30@@0 T@Field_5932_3104) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5932_3104 Mask@@1 null pm_f_30@@0) (IsPredicateField_5932_21994 pm_f_30@@0)) (= (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@4) null (PredicateMaskField_5932 pm_f_30@@0)) (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@0) null (PredicateMaskField_5932 pm_f_30@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5932_21994 pm_f_30@@0) (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@0) null (PredicateMaskField_5932 pm_f_30@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5872) (ExhaleHeap@@1 T@PolymorphicMapType_5872) (Mask@@2 T@PolymorphicMapType_5893) (pm_f_30@@1 T@Field_10013_10014) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3127_3128 Mask@@2 null pm_f_30@@1) (IsPredicateField_3127_3128 pm_f_30@@1)) (= (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@5) null (PredicateMaskField_3127 pm_f_30@@1)) (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@1) null (PredicateMaskField_3127 pm_f_30@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3127_3128 pm_f_30@@1) (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@1) null (PredicateMaskField_3127 pm_f_30@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5872) (ExhaleHeap@@2 T@PolymorphicMapType_5872) (Mask@@3 T@PolymorphicMapType_5893) (pm_f_30@@2 T@Field_9260_9261) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3103_3104 Mask@@3 null pm_f_30@@2) (IsPredicateField_3103_3104 pm_f_30@@2)) (= (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@6) null (PredicateMaskField_3103 pm_f_30@@2)) (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@2) null (PredicateMaskField_3103 pm_f_30@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsPredicateField_3103_3104 pm_f_30@@2) (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@2) null (PredicateMaskField_3103 pm_f_30@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5872) (ExhaleHeap@@3 T@PolymorphicMapType_5872) (Mask@@4 T@PolymorphicMapType_5893) (pm_f_30@@3 T@Field_10766_10767) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_10766_3104 Mask@@4 null pm_f_30@@3) (IsWandField_10766_28271 pm_f_30@@3)) (= (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@7) null (WandMaskField_10766 pm_f_30@@3)) (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@3) null (WandMaskField_10766 pm_f_30@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsWandField_10766_28271 pm_f_30@@3) (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@3) null (WandMaskField_10766 pm_f_30@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5872) (ExhaleHeap@@4 T@PolymorphicMapType_5872) (Mask@@5 T@PolymorphicMapType_5893) (pm_f_30@@4 T@Field_5932_3104) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5932_3104 Mask@@5 null pm_f_30@@4) (IsWandField_5932_27914 pm_f_30@@4)) (= (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@8) null (WandMaskField_5932 pm_f_30@@4)) (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@4) null (WandMaskField_5932 pm_f_30@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsWandField_5932_27914 pm_f_30@@4) (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@4) null (WandMaskField_5932 pm_f_30@@4)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5872) (ExhaleHeap@@5 T@PolymorphicMapType_5872) (Mask@@6 T@PolymorphicMapType_5893) (pm_f_30@@5 T@Field_10013_10014) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_3127_3128 Mask@@6 null pm_f_30@@5) (IsWandField_3127_27557 pm_f_30@@5)) (= (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@9) null (WandMaskField_3127 pm_f_30@@5)) (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@5) null (WandMaskField_3127 pm_f_30@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_3127_27557 pm_f_30@@5) (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@5) null (WandMaskField_3127 pm_f_30@@5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5872) (ExhaleHeap@@6 T@PolymorphicMapType_5872) (Mask@@7 T@PolymorphicMapType_5893) (pm_f_30@@6 T@Field_9260_9261) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3103_3104 Mask@@7 null pm_f_30@@6) (IsWandField_3103_27200 pm_f_30@@6)) (= (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@10) null (WandMaskField_3103 pm_f_30@@6)) (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@6) null (WandMaskField_3103 pm_f_30@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_3103_27200 pm_f_30@@6) (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@6) null (WandMaskField_3103 pm_f_30@@6)))
)))
(assert (forall ((this@@5 T@Ref) (this2 T@Ref) ) (!  (=> (= (P1 this@@5) (P1 this2)) (= this@@5 this2))
 :qid |stdinbpl.197:15|
 :skolemid |25|
 :pattern ( (P1 this@@5) (P1 this2))
)))
(assert (forall ((this@@6 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|P1#sm| this@@6) (|P1#sm| this2@@0)) (= this@@6 this2@@0))
 :qid |stdinbpl.201:15|
 :skolemid |26|
 :pattern ( (|P1#sm| this@@6) (|P1#sm| this2@@0))
)))
(assert (forall ((this@@7 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (P2 this@@7) (P2 this2@@1)) (= this@@7 this2@@1))
 :qid |stdinbpl.246:15|
 :skolemid |31|
 :pattern ( (P2 this@@7) (P2 this2@@1))
)))
(assert (forall ((this@@8 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|P2#sm| this@@8) (|P2#sm| this2@@2)) (= this@@8 this2@@2))
 :qid |stdinbpl.250:15|
 :skolemid |32|
 :pattern ( (|P2#sm| this@@8) (|P2#sm| this2@@2))
)))
(assert (forall ((this@@9 T@Ref) (this2@@3 T@Ref) ) (!  (=> (= (P3 this@@9) (P3 this2@@3)) (= this@@9 this2@@3))
 :qid |stdinbpl.295:15|
 :skolemid |37|
 :pattern ( (P3 this@@9) (P3 this2@@3))
)))
(assert (forall ((this@@10 T@Ref) (this2@@4 T@Ref) ) (!  (=> (= (|P3#sm| this@@10) (|P3#sm| this2@@4)) (= this@@10 this2@@4))
 :qid |stdinbpl.299:15|
 :skolemid |38|
 :pattern ( (|P3#sm| this@@10) (|P3#sm| this2@@4))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5872) (ExhaleHeap@@7 T@PolymorphicMapType_5872) (Mask@@8 T@PolymorphicMapType_5893) (o_7 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@11) o_7 $allocated) (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@7) o_7 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@7) o_7 $allocated))
)))
(assert (forall ((p T@Field_10766_10767) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10766_10766 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10766_10766 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_10013_10014) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_10013_10013 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10013_10013 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_9260_9261) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_9260_9260 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9260_9260 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_5932_3104) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_5932_5932 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5932_5932 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5872) (ExhaleHeap@@8 T@PolymorphicMapType_5872) (Mask@@9 T@PolymorphicMapType_5893) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5893) (o_2@@15 T@Ref) (f_4@@15 T@Field_5932_9278) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_5893_5932_35869#PolymorphicMapType_5893| Mask@@10) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5932_39565 f_4@@15))) (not (IsWandField_5932_39581 f_4@@15))) (<= (select (|PolymorphicMapType_5893_5932_35869#PolymorphicMapType_5893| Mask@@10) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_5893_5932_35869#PolymorphicMapType_5893| Mask@@10) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5893) (o_2@@16 T@Ref) (f_4@@16 T@Field_5945_5946) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_5893_5932_5946#PolymorphicMapType_5893| Mask@@11) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5932_5946 f_4@@16))) (not (IsWandField_5932_5946 f_4@@16))) (<= (select (|PolymorphicMapType_5893_5932_5946#PolymorphicMapType_5893| Mask@@11) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_5893_5932_5946#PolymorphicMapType_5893| Mask@@11) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5893) (o_2@@17 T@Ref) (f_4@@17 T@Field_5932_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_5893_5932_53#PolymorphicMapType_5893| Mask@@12) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5932_53 f_4@@17))) (not (IsWandField_5932_53 f_4@@17))) (<= (select (|PolymorphicMapType_5893_5932_53#PolymorphicMapType_5893| Mask@@12) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_5893_5932_53#PolymorphicMapType_5893| Mask@@12) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5893) (o_2@@18 T@Ref) (f_4@@18 T@Field_5932_3104) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5893_5932_3104#PolymorphicMapType_5893| Mask@@13) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5932_21994 f_4@@18))) (not (IsWandField_5932_27914 f_4@@18))) (<= (select (|PolymorphicMapType_5893_5932_3104#PolymorphicMapType_5893| Mask@@13) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5893_5932_3104#PolymorphicMapType_5893| Mask@@13) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5893) (o_2@@19 T@Ref) (f_4@@19 T@Field_10779_10784) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_5893_3151_35523#PolymorphicMapType_5893| Mask@@14) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3151_38902 f_4@@19))) (not (IsWandField_3151_38918 f_4@@19))) (<= (select (|PolymorphicMapType_5893_3151_35523#PolymorphicMapType_5893| Mask@@14) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_5893_3151_35523#PolymorphicMapType_5893| Mask@@14) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5893) (o_2@@20 T@Ref) (f_4@@20 T@Field_10766_5946) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_5893_3151_5946#PolymorphicMapType_5893| Mask@@15) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3151_5946 f_4@@20))) (not (IsWandField_3151_5946 f_4@@20))) (<= (select (|PolymorphicMapType_5893_3151_5946#PolymorphicMapType_5893| Mask@@15) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_5893_3151_5946#PolymorphicMapType_5893| Mask@@15) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5893) (o_2@@21 T@Ref) (f_4@@21 T@Field_10766_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_5893_3151_53#PolymorphicMapType_5893| Mask@@16) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3151_53 f_4@@21))) (not (IsWandField_3151_53 f_4@@21))) (<= (select (|PolymorphicMapType_5893_3151_53#PolymorphicMapType_5893| Mask@@16) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_5893_3151_53#PolymorphicMapType_5893| Mask@@16) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5893) (o_2@@22 T@Ref) (f_4@@22 T@Field_10766_10767) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_5893_3151_3152#PolymorphicMapType_5893| Mask@@17) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3151_3152 f_4@@22))) (not (IsWandField_10766_28271 f_4@@22))) (<= (select (|PolymorphicMapType_5893_3151_3152#PolymorphicMapType_5893| Mask@@17) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_5893_3151_3152#PolymorphicMapType_5893| Mask@@17) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5893) (o_2@@23 T@Ref) (f_4@@23 T@Field_10026_10031) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_5893_3127_35192#PolymorphicMapType_5893| Mask@@18) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3127_38239 f_4@@23))) (not (IsWandField_3127_38255 f_4@@23))) (<= (select (|PolymorphicMapType_5893_3127_35192#PolymorphicMapType_5893| Mask@@18) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_5893_3127_35192#PolymorphicMapType_5893| Mask@@18) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_5893) (o_2@@24 T@Ref) (f_4@@24 T@Field_3127_5946) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_5893_3127_5946#PolymorphicMapType_5893| Mask@@19) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3127_5946 f_4@@24))) (not (IsWandField_3127_5946 f_4@@24))) (<= (select (|PolymorphicMapType_5893_3127_5946#PolymorphicMapType_5893| Mask@@19) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_5893_3127_5946#PolymorphicMapType_5893| Mask@@19) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_5893) (o_2@@25 T@Ref) (f_4@@25 T@Field_3127_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_5893_3127_53#PolymorphicMapType_5893| Mask@@20) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_3127_53 f_4@@25))) (not (IsWandField_3127_53 f_4@@25))) (<= (select (|PolymorphicMapType_5893_3127_53#PolymorphicMapType_5893| Mask@@20) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_5893_3127_53#PolymorphicMapType_5893| Mask@@20) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_5893) (o_2@@26 T@Ref) (f_4@@26 T@Field_10013_10014) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_5893_3127_3128#PolymorphicMapType_5893| Mask@@21) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_3127_3128 f_4@@26))) (not (IsWandField_3127_27557 f_4@@26))) (<= (select (|PolymorphicMapType_5893_3127_3128#PolymorphicMapType_5893| Mask@@21) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_5893_3127_3128#PolymorphicMapType_5893| Mask@@21) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_5893) (o_2@@27 T@Ref) (f_4@@27 T@Field_9273_9278) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_5893_3103_34861#PolymorphicMapType_5893| Mask@@22) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_3103_37576 f_4@@27))) (not (IsWandField_3103_37592 f_4@@27))) (<= (select (|PolymorphicMapType_5893_3103_34861#PolymorphicMapType_5893| Mask@@22) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_5893_3103_34861#PolymorphicMapType_5893| Mask@@22) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_5893) (o_2@@28 T@Ref) (f_4@@28 T@Field_3103_5946) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_5893_3103_5946#PolymorphicMapType_5893| Mask@@23) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_3103_5946 f_4@@28))) (not (IsWandField_3103_5946 f_4@@28))) (<= (select (|PolymorphicMapType_5893_3103_5946#PolymorphicMapType_5893| Mask@@23) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_5893_3103_5946#PolymorphicMapType_5893| Mask@@23) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_5893) (o_2@@29 T@Ref) (f_4@@29 T@Field_3103_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_5893_3103_53#PolymorphicMapType_5893| Mask@@24) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_3103_53 f_4@@29))) (not (IsWandField_3103_53 f_4@@29))) (<= (select (|PolymorphicMapType_5893_3103_53#PolymorphicMapType_5893| Mask@@24) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_5893_3103_53#PolymorphicMapType_5893| Mask@@24) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_5893) (o_2@@30 T@Ref) (f_4@@30 T@Field_9260_9261) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_5893_3103_3104#PolymorphicMapType_5893| Mask@@25) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_3103_3104 f_4@@30))) (not (IsWandField_3103_27200 f_4@@30))) (<= (select (|PolymorphicMapType_5893_3103_3104#PolymorphicMapType_5893| Mask@@25) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_5893_3103_3104#PolymorphicMapType_5893| Mask@@25) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_5893) (o_2@@31 T@Ref) (f_4@@31 T@Field_10779_10784) ) (! (= (HasDirectPerm_10766_21056 Mask@@26 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_5893_3151_35523#PolymorphicMapType_5893| Mask@@26) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10766_21056 Mask@@26 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_5893) (o_2@@32 T@Ref) (f_4@@32 T@Field_10766_5946) ) (! (= (HasDirectPerm_10766_5946 Mask@@27 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_5893_3151_5946#PolymorphicMapType_5893| Mask@@27) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10766_5946 Mask@@27 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_5893) (o_2@@33 T@Ref) (f_4@@33 T@Field_10766_53) ) (! (= (HasDirectPerm_10766_53 Mask@@28 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_5893_3151_53#PolymorphicMapType_5893| Mask@@28) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10766_53 Mask@@28 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_5893) (o_2@@34 T@Ref) (f_4@@34 T@Field_10766_10767) ) (! (= (HasDirectPerm_10766_3104 Mask@@29 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_5893_3151_3152#PolymorphicMapType_5893| Mask@@29) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10766_3104 Mask@@29 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_5893) (o_2@@35 T@Ref) (f_4@@35 T@Field_5932_9278) ) (! (= (HasDirectPerm_5932_20099 Mask@@30 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_5893_5932_35869#PolymorphicMapType_5893| Mask@@30) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5932_20099 Mask@@30 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_5893) (o_2@@36 T@Ref) (f_4@@36 T@Field_5945_5946) ) (! (= (HasDirectPerm_5932_5946 Mask@@31 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_5893_5932_5946#PolymorphicMapType_5893| Mask@@31) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5932_5946 Mask@@31 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_5893) (o_2@@37 T@Ref) (f_4@@37 T@Field_5932_53) ) (! (= (HasDirectPerm_5932_53 Mask@@32 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_5893_5932_53#PolymorphicMapType_5893| Mask@@32) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5932_53 Mask@@32 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_5893) (o_2@@38 T@Ref) (f_4@@38 T@Field_5932_3104) ) (! (= (HasDirectPerm_5932_3104 Mask@@33 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_5893_5932_3104#PolymorphicMapType_5893| Mask@@33) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5932_3104 Mask@@33 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_5893) (o_2@@39 T@Ref) (f_4@@39 T@Field_10026_10031) ) (! (= (HasDirectPerm_3127_19171 Mask@@34 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_5893_3127_35192#PolymorphicMapType_5893| Mask@@34) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3127_19171 Mask@@34 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_5893) (o_2@@40 T@Ref) (f_4@@40 T@Field_3127_5946) ) (! (= (HasDirectPerm_3127_5946 Mask@@35 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_5893_3127_5946#PolymorphicMapType_5893| Mask@@35) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3127_5946 Mask@@35 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_5893) (o_2@@41 T@Ref) (f_4@@41 T@Field_3127_53) ) (! (= (HasDirectPerm_3127_53 Mask@@36 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_5893_3127_53#PolymorphicMapType_5893| Mask@@36) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3127_53 Mask@@36 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_5893) (o_2@@42 T@Ref) (f_4@@42 T@Field_10013_10014) ) (! (= (HasDirectPerm_3127_3128 Mask@@37 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_5893_3127_3128#PolymorphicMapType_5893| Mask@@37) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3127_3128 Mask@@37 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_5893) (o_2@@43 T@Ref) (f_4@@43 T@Field_9273_9278) ) (! (= (HasDirectPerm_3103_18251 Mask@@38 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_5893_3103_34861#PolymorphicMapType_5893| Mask@@38) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3103_18251 Mask@@38 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_5893) (o_2@@44 T@Ref) (f_4@@44 T@Field_3103_5946) ) (! (= (HasDirectPerm_3103_5946 Mask@@39 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_5893_3103_5946#PolymorphicMapType_5893| Mask@@39) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3103_5946 Mask@@39 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_5893) (o_2@@45 T@Ref) (f_4@@45 T@Field_3103_53) ) (! (= (HasDirectPerm_3103_53 Mask@@40 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_5893_3103_53#PolymorphicMapType_5893| Mask@@40) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3103_53 Mask@@40 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_5893) (o_2@@46 T@Ref) (f_4@@46 T@Field_9260_9261) ) (! (= (HasDirectPerm_3103_3104 Mask@@41 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_5893_3103_3104#PolymorphicMapType_5893| Mask@@41) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3103_3104 Mask@@41 o_2@@46 f_4@@46))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5872) (ExhaleHeap@@9 T@PolymorphicMapType_5872) (Mask@@42 T@PolymorphicMapType_5893) (o_7@@0 T@Ref) (f_13 T@Field_10779_10784) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@42) (=> (HasDirectPerm_10766_21056 Mask@@42 o_7@@0 f_13) (= (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@13) o_7@@0 f_13) (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@9) o_7@@0 f_13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@42) (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@9) o_7@@0 f_13))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5872) (ExhaleHeap@@10 T@PolymorphicMapType_5872) (Mask@@43 T@PolymorphicMapType_5893) (o_7@@1 T@Ref) (f_13@@0 T@Field_10766_5946) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@43) (=> (HasDirectPerm_10766_5946 Mask@@43 o_7@@1 f_13@@0) (= (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@14) o_7@@1 f_13@@0) (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| ExhaleHeap@@10) o_7@@1 f_13@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@43) (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| ExhaleHeap@@10) o_7@@1 f_13@@0))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5872) (ExhaleHeap@@11 T@PolymorphicMapType_5872) (Mask@@44 T@PolymorphicMapType_5893) (o_7@@2 T@Ref) (f_13@@1 T@Field_10766_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@44) (=> (HasDirectPerm_10766_53 Mask@@44 o_7@@2 f_13@@1) (= (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@15) o_7@@2 f_13@@1) (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| ExhaleHeap@@11) o_7@@2 f_13@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@44) (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| ExhaleHeap@@11) o_7@@2 f_13@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5872) (ExhaleHeap@@12 T@PolymorphicMapType_5872) (Mask@@45 T@PolymorphicMapType_5893) (o_7@@3 T@Ref) (f_13@@2 T@Field_10766_10767) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@45) (=> (HasDirectPerm_10766_3104 Mask@@45 o_7@@3 f_13@@2) (= (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@16) o_7@@3 f_13@@2) (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| ExhaleHeap@@12) o_7@@3 f_13@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@45) (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| ExhaleHeap@@12) o_7@@3 f_13@@2))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5872) (ExhaleHeap@@13 T@PolymorphicMapType_5872) (Mask@@46 T@PolymorphicMapType_5893) (o_7@@4 T@Ref) (f_13@@3 T@Field_5932_9278) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@46) (=> (HasDirectPerm_5932_20099 Mask@@46 o_7@@4 f_13@@3) (= (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@17) o_7@@4 f_13@@3) (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@13) o_7@@4 f_13@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@46) (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@13) o_7@@4 f_13@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5872) (ExhaleHeap@@14 T@PolymorphicMapType_5872) (Mask@@47 T@PolymorphicMapType_5893) (o_7@@5 T@Ref) (f_13@@4 T@Field_5945_5946) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@47) (=> (HasDirectPerm_5932_5946 Mask@@47 o_7@@5 f_13@@4) (= (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@18) o_7@@5 f_13@@4) (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| ExhaleHeap@@14) o_7@@5 f_13@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@47) (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| ExhaleHeap@@14) o_7@@5 f_13@@4))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5872) (ExhaleHeap@@15 T@PolymorphicMapType_5872) (Mask@@48 T@PolymorphicMapType_5893) (o_7@@6 T@Ref) (f_13@@5 T@Field_5932_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@48) (=> (HasDirectPerm_5932_53 Mask@@48 o_7@@6 f_13@@5) (= (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@19) o_7@@6 f_13@@5) (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@15) o_7@@6 f_13@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@48) (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@15) o_7@@6 f_13@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5872) (ExhaleHeap@@16 T@PolymorphicMapType_5872) (Mask@@49 T@PolymorphicMapType_5893) (o_7@@7 T@Ref) (f_13@@6 T@Field_5932_3104) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@49) (=> (HasDirectPerm_5932_3104 Mask@@49 o_7@@7 f_13@@6) (= (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@20) o_7@@7 f_13@@6) (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| ExhaleHeap@@16) o_7@@7 f_13@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@49) (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| ExhaleHeap@@16) o_7@@7 f_13@@6))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5872) (ExhaleHeap@@17 T@PolymorphicMapType_5872) (Mask@@50 T@PolymorphicMapType_5893) (o_7@@8 T@Ref) (f_13@@7 T@Field_10026_10031) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@50) (=> (HasDirectPerm_3127_19171 Mask@@50 o_7@@8 f_13@@7) (= (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@21) o_7@@8 f_13@@7) (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@17) o_7@@8 f_13@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@50) (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@17) o_7@@8 f_13@@7))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5872) (ExhaleHeap@@18 T@PolymorphicMapType_5872) (Mask@@51 T@PolymorphicMapType_5893) (o_7@@9 T@Ref) (f_13@@8 T@Field_3127_5946) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@51) (=> (HasDirectPerm_3127_5946 Mask@@51 o_7@@9 f_13@@8) (= (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@22) o_7@@9 f_13@@8) (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| ExhaleHeap@@18) o_7@@9 f_13@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@51) (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| ExhaleHeap@@18) o_7@@9 f_13@@8))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5872) (ExhaleHeap@@19 T@PolymorphicMapType_5872) (Mask@@52 T@PolymorphicMapType_5893) (o_7@@10 T@Ref) (f_13@@9 T@Field_3127_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@52) (=> (HasDirectPerm_3127_53 Mask@@52 o_7@@10 f_13@@9) (= (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@23) o_7@@10 f_13@@9) (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| ExhaleHeap@@19) o_7@@10 f_13@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@52) (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| ExhaleHeap@@19) o_7@@10 f_13@@9))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5872) (ExhaleHeap@@20 T@PolymorphicMapType_5872) (Mask@@53 T@PolymorphicMapType_5893) (o_7@@11 T@Ref) (f_13@@10 T@Field_10013_10014) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@53) (=> (HasDirectPerm_3127_3128 Mask@@53 o_7@@11 f_13@@10) (= (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@24) o_7@@11 f_13@@10) (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| ExhaleHeap@@20) o_7@@11 f_13@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@53) (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| ExhaleHeap@@20) o_7@@11 f_13@@10))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5872) (ExhaleHeap@@21 T@PolymorphicMapType_5872) (Mask@@54 T@PolymorphicMapType_5893) (o_7@@12 T@Ref) (f_13@@11 T@Field_9273_9278) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@54) (=> (HasDirectPerm_3103_18251 Mask@@54 o_7@@12 f_13@@11) (= (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@25) o_7@@12 f_13@@11) (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@21) o_7@@12 f_13@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@54) (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@21) o_7@@12 f_13@@11))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5872) (ExhaleHeap@@22 T@PolymorphicMapType_5872) (Mask@@55 T@PolymorphicMapType_5893) (o_7@@13 T@Ref) (f_13@@12 T@Field_3103_5946) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@55) (=> (HasDirectPerm_3103_5946 Mask@@55 o_7@@13 f_13@@12) (= (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@26) o_7@@13 f_13@@12) (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| ExhaleHeap@@22) o_7@@13 f_13@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@55) (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| ExhaleHeap@@22) o_7@@13 f_13@@12))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5872) (ExhaleHeap@@23 T@PolymorphicMapType_5872) (Mask@@56 T@PolymorphicMapType_5893) (o_7@@14 T@Ref) (f_13@@13 T@Field_3103_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@56) (=> (HasDirectPerm_3103_53 Mask@@56 o_7@@14 f_13@@13) (= (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@27) o_7@@14 f_13@@13) (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| ExhaleHeap@@23) o_7@@14 f_13@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@56) (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| ExhaleHeap@@23) o_7@@14 f_13@@13))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5872) (ExhaleHeap@@24 T@PolymorphicMapType_5872) (Mask@@57 T@PolymorphicMapType_5893) (o_7@@15 T@Ref) (f_13@@14 T@Field_9260_9261) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@57) (=> (HasDirectPerm_3103_3104 Mask@@57 o_7@@15 f_13@@14) (= (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@28) o_7@@15 f_13@@14) (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| ExhaleHeap@@24) o_7@@15 f_13@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@57) (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| ExhaleHeap@@24) o_7@@15 f_13@@14))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_5932_9278) ) (! (= (select (|PolymorphicMapType_5893_5932_35869#PolymorphicMapType_5893| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5893_5932_35869#PolymorphicMapType_5893| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_5945_5946) ) (! (= (select (|PolymorphicMapType_5893_5932_5946#PolymorphicMapType_5893| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5893_5932_5946#PolymorphicMapType_5893| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_5932_53) ) (! (= (select (|PolymorphicMapType_5893_5932_53#PolymorphicMapType_5893| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5893_5932_53#PolymorphicMapType_5893| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_5932_3104) ) (! (= (select (|PolymorphicMapType_5893_5932_3104#PolymorphicMapType_5893| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5893_5932_3104#PolymorphicMapType_5893| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_10779_10784) ) (! (= (select (|PolymorphicMapType_5893_3151_35523#PolymorphicMapType_5893| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5893_3151_35523#PolymorphicMapType_5893| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_10766_5946) ) (! (= (select (|PolymorphicMapType_5893_3151_5946#PolymorphicMapType_5893| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5893_3151_5946#PolymorphicMapType_5893| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_10766_53) ) (! (= (select (|PolymorphicMapType_5893_3151_53#PolymorphicMapType_5893| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5893_3151_53#PolymorphicMapType_5893| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_10766_10767) ) (! (= (select (|PolymorphicMapType_5893_3151_3152#PolymorphicMapType_5893| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5893_3151_3152#PolymorphicMapType_5893| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_10026_10031) ) (! (= (select (|PolymorphicMapType_5893_3127_35192#PolymorphicMapType_5893| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5893_3127_35192#PolymorphicMapType_5893| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_3127_5946) ) (! (= (select (|PolymorphicMapType_5893_3127_5946#PolymorphicMapType_5893| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5893_3127_5946#PolymorphicMapType_5893| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_3127_53) ) (! (= (select (|PolymorphicMapType_5893_3127_53#PolymorphicMapType_5893| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5893_3127_53#PolymorphicMapType_5893| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_10013_10014) ) (! (= (select (|PolymorphicMapType_5893_3127_3128#PolymorphicMapType_5893| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5893_3127_3128#PolymorphicMapType_5893| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_9273_9278) ) (! (= (select (|PolymorphicMapType_5893_3103_34861#PolymorphicMapType_5893| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5893_3103_34861#PolymorphicMapType_5893| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_3103_5946) ) (! (= (select (|PolymorphicMapType_5893_3103_5946#PolymorphicMapType_5893| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5893_3103_5946#PolymorphicMapType_5893| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_3103_53) ) (! (= (select (|PolymorphicMapType_5893_3103_53#PolymorphicMapType_5893| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5893_3103_53#PolymorphicMapType_5893| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_9260_9261) ) (! (= (select (|PolymorphicMapType_5893_3103_3104#PolymorphicMapType_5893| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5893_3103_3104#PolymorphicMapType_5893| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5893) (SummandMask1 T@PolymorphicMapType_5893) (SummandMask2 T@PolymorphicMapType_5893) (o_2@@63 T@Ref) (f_4@@63 T@Field_5932_9278) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5893_5932_35869#PolymorphicMapType_5893| ResultMask) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_5893_5932_35869#PolymorphicMapType_5893| SummandMask1) o_2@@63 f_4@@63) (select (|PolymorphicMapType_5893_5932_35869#PolymorphicMapType_5893| SummandMask2) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5893_5932_35869#PolymorphicMapType_5893| ResultMask) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5893_5932_35869#PolymorphicMapType_5893| SummandMask1) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5893_5932_35869#PolymorphicMapType_5893| SummandMask2) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5893) (SummandMask1@@0 T@PolymorphicMapType_5893) (SummandMask2@@0 T@PolymorphicMapType_5893) (o_2@@64 T@Ref) (f_4@@64 T@Field_5945_5946) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5893_5932_5946#PolymorphicMapType_5893| ResultMask@@0) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_5893_5932_5946#PolymorphicMapType_5893| SummandMask1@@0) o_2@@64 f_4@@64) (select (|PolymorphicMapType_5893_5932_5946#PolymorphicMapType_5893| SummandMask2@@0) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5893_5932_5946#PolymorphicMapType_5893| ResultMask@@0) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5893_5932_5946#PolymorphicMapType_5893| SummandMask1@@0) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5893_5932_5946#PolymorphicMapType_5893| SummandMask2@@0) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5893) (SummandMask1@@1 T@PolymorphicMapType_5893) (SummandMask2@@1 T@PolymorphicMapType_5893) (o_2@@65 T@Ref) (f_4@@65 T@Field_5932_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5893_5932_53#PolymorphicMapType_5893| ResultMask@@1) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_5893_5932_53#PolymorphicMapType_5893| SummandMask1@@1) o_2@@65 f_4@@65) (select (|PolymorphicMapType_5893_5932_53#PolymorphicMapType_5893| SummandMask2@@1) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5893_5932_53#PolymorphicMapType_5893| ResultMask@@1) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5893_5932_53#PolymorphicMapType_5893| SummandMask1@@1) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5893_5932_53#PolymorphicMapType_5893| SummandMask2@@1) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5893) (SummandMask1@@2 T@PolymorphicMapType_5893) (SummandMask2@@2 T@PolymorphicMapType_5893) (o_2@@66 T@Ref) (f_4@@66 T@Field_5932_3104) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5893_5932_3104#PolymorphicMapType_5893| ResultMask@@2) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_5893_5932_3104#PolymorphicMapType_5893| SummandMask1@@2) o_2@@66 f_4@@66) (select (|PolymorphicMapType_5893_5932_3104#PolymorphicMapType_5893| SummandMask2@@2) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5893_5932_3104#PolymorphicMapType_5893| ResultMask@@2) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5893_5932_3104#PolymorphicMapType_5893| SummandMask1@@2) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5893_5932_3104#PolymorphicMapType_5893| SummandMask2@@2) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5893) (SummandMask1@@3 T@PolymorphicMapType_5893) (SummandMask2@@3 T@PolymorphicMapType_5893) (o_2@@67 T@Ref) (f_4@@67 T@Field_10779_10784) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5893_3151_35523#PolymorphicMapType_5893| ResultMask@@3) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_5893_3151_35523#PolymorphicMapType_5893| SummandMask1@@3) o_2@@67 f_4@@67) (select (|PolymorphicMapType_5893_3151_35523#PolymorphicMapType_5893| SummandMask2@@3) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5893_3151_35523#PolymorphicMapType_5893| ResultMask@@3) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5893_3151_35523#PolymorphicMapType_5893| SummandMask1@@3) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5893_3151_35523#PolymorphicMapType_5893| SummandMask2@@3) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_5893) (SummandMask1@@4 T@PolymorphicMapType_5893) (SummandMask2@@4 T@PolymorphicMapType_5893) (o_2@@68 T@Ref) (f_4@@68 T@Field_10766_5946) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_5893_3151_5946#PolymorphicMapType_5893| ResultMask@@4) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_5893_3151_5946#PolymorphicMapType_5893| SummandMask1@@4) o_2@@68 f_4@@68) (select (|PolymorphicMapType_5893_3151_5946#PolymorphicMapType_5893| SummandMask2@@4) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5893_3151_5946#PolymorphicMapType_5893| ResultMask@@4) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5893_3151_5946#PolymorphicMapType_5893| SummandMask1@@4) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5893_3151_5946#PolymorphicMapType_5893| SummandMask2@@4) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_5893) (SummandMask1@@5 T@PolymorphicMapType_5893) (SummandMask2@@5 T@PolymorphicMapType_5893) (o_2@@69 T@Ref) (f_4@@69 T@Field_10766_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_5893_3151_53#PolymorphicMapType_5893| ResultMask@@5) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_5893_3151_53#PolymorphicMapType_5893| SummandMask1@@5) o_2@@69 f_4@@69) (select (|PolymorphicMapType_5893_3151_53#PolymorphicMapType_5893| SummandMask2@@5) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5893_3151_53#PolymorphicMapType_5893| ResultMask@@5) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5893_3151_53#PolymorphicMapType_5893| SummandMask1@@5) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5893_3151_53#PolymorphicMapType_5893| SummandMask2@@5) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_5893) (SummandMask1@@6 T@PolymorphicMapType_5893) (SummandMask2@@6 T@PolymorphicMapType_5893) (o_2@@70 T@Ref) (f_4@@70 T@Field_10766_10767) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_5893_3151_3152#PolymorphicMapType_5893| ResultMask@@6) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_5893_3151_3152#PolymorphicMapType_5893| SummandMask1@@6) o_2@@70 f_4@@70) (select (|PolymorphicMapType_5893_3151_3152#PolymorphicMapType_5893| SummandMask2@@6) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5893_3151_3152#PolymorphicMapType_5893| ResultMask@@6) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5893_3151_3152#PolymorphicMapType_5893| SummandMask1@@6) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5893_3151_3152#PolymorphicMapType_5893| SummandMask2@@6) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_5893) (SummandMask1@@7 T@PolymorphicMapType_5893) (SummandMask2@@7 T@PolymorphicMapType_5893) (o_2@@71 T@Ref) (f_4@@71 T@Field_10026_10031) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_5893_3127_35192#PolymorphicMapType_5893| ResultMask@@7) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_5893_3127_35192#PolymorphicMapType_5893| SummandMask1@@7) o_2@@71 f_4@@71) (select (|PolymorphicMapType_5893_3127_35192#PolymorphicMapType_5893| SummandMask2@@7) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5893_3127_35192#PolymorphicMapType_5893| ResultMask@@7) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5893_3127_35192#PolymorphicMapType_5893| SummandMask1@@7) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5893_3127_35192#PolymorphicMapType_5893| SummandMask2@@7) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_5893) (SummandMask1@@8 T@PolymorphicMapType_5893) (SummandMask2@@8 T@PolymorphicMapType_5893) (o_2@@72 T@Ref) (f_4@@72 T@Field_3127_5946) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_5893_3127_5946#PolymorphicMapType_5893| ResultMask@@8) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_5893_3127_5946#PolymorphicMapType_5893| SummandMask1@@8) o_2@@72 f_4@@72) (select (|PolymorphicMapType_5893_3127_5946#PolymorphicMapType_5893| SummandMask2@@8) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5893_3127_5946#PolymorphicMapType_5893| ResultMask@@8) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5893_3127_5946#PolymorphicMapType_5893| SummandMask1@@8) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5893_3127_5946#PolymorphicMapType_5893| SummandMask2@@8) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_5893) (SummandMask1@@9 T@PolymorphicMapType_5893) (SummandMask2@@9 T@PolymorphicMapType_5893) (o_2@@73 T@Ref) (f_4@@73 T@Field_3127_53) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_5893_3127_53#PolymorphicMapType_5893| ResultMask@@9) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_5893_3127_53#PolymorphicMapType_5893| SummandMask1@@9) o_2@@73 f_4@@73) (select (|PolymorphicMapType_5893_3127_53#PolymorphicMapType_5893| SummandMask2@@9) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5893_3127_53#PolymorphicMapType_5893| ResultMask@@9) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5893_3127_53#PolymorphicMapType_5893| SummandMask1@@9) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5893_3127_53#PolymorphicMapType_5893| SummandMask2@@9) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_5893) (SummandMask1@@10 T@PolymorphicMapType_5893) (SummandMask2@@10 T@PolymorphicMapType_5893) (o_2@@74 T@Ref) (f_4@@74 T@Field_10013_10014) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_5893_3127_3128#PolymorphicMapType_5893| ResultMask@@10) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_5893_3127_3128#PolymorphicMapType_5893| SummandMask1@@10) o_2@@74 f_4@@74) (select (|PolymorphicMapType_5893_3127_3128#PolymorphicMapType_5893| SummandMask2@@10) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5893_3127_3128#PolymorphicMapType_5893| ResultMask@@10) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5893_3127_3128#PolymorphicMapType_5893| SummandMask1@@10) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5893_3127_3128#PolymorphicMapType_5893| SummandMask2@@10) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_5893) (SummandMask1@@11 T@PolymorphicMapType_5893) (SummandMask2@@11 T@PolymorphicMapType_5893) (o_2@@75 T@Ref) (f_4@@75 T@Field_9273_9278) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_5893_3103_34861#PolymorphicMapType_5893| ResultMask@@11) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_5893_3103_34861#PolymorphicMapType_5893| SummandMask1@@11) o_2@@75 f_4@@75) (select (|PolymorphicMapType_5893_3103_34861#PolymorphicMapType_5893| SummandMask2@@11) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5893_3103_34861#PolymorphicMapType_5893| ResultMask@@11) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5893_3103_34861#PolymorphicMapType_5893| SummandMask1@@11) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5893_3103_34861#PolymorphicMapType_5893| SummandMask2@@11) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_5893) (SummandMask1@@12 T@PolymorphicMapType_5893) (SummandMask2@@12 T@PolymorphicMapType_5893) (o_2@@76 T@Ref) (f_4@@76 T@Field_3103_5946) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_5893_3103_5946#PolymorphicMapType_5893| ResultMask@@12) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_5893_3103_5946#PolymorphicMapType_5893| SummandMask1@@12) o_2@@76 f_4@@76) (select (|PolymorphicMapType_5893_3103_5946#PolymorphicMapType_5893| SummandMask2@@12) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5893_3103_5946#PolymorphicMapType_5893| ResultMask@@12) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5893_3103_5946#PolymorphicMapType_5893| SummandMask1@@12) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5893_3103_5946#PolymorphicMapType_5893| SummandMask2@@12) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_5893) (SummandMask1@@13 T@PolymorphicMapType_5893) (SummandMask2@@13 T@PolymorphicMapType_5893) (o_2@@77 T@Ref) (f_4@@77 T@Field_3103_53) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_5893_3103_53#PolymorphicMapType_5893| ResultMask@@13) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_5893_3103_53#PolymorphicMapType_5893| SummandMask1@@13) o_2@@77 f_4@@77) (select (|PolymorphicMapType_5893_3103_53#PolymorphicMapType_5893| SummandMask2@@13) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5893_3103_53#PolymorphicMapType_5893| ResultMask@@13) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5893_3103_53#PolymorphicMapType_5893| SummandMask1@@13) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5893_3103_53#PolymorphicMapType_5893| SummandMask2@@13) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_5893) (SummandMask1@@14 T@PolymorphicMapType_5893) (SummandMask2@@14 T@PolymorphicMapType_5893) (o_2@@78 T@Ref) (f_4@@78 T@Field_9260_9261) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_5893_3103_3104#PolymorphicMapType_5893| ResultMask@@14) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_5893_3103_3104#PolymorphicMapType_5893| SummandMask1@@14) o_2@@78 f_4@@78) (select (|PolymorphicMapType_5893_3103_3104#PolymorphicMapType_5893| SummandMask2@@14) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_5893_3103_3104#PolymorphicMapType_5893| ResultMask@@14) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_5893_3103_3104#PolymorphicMapType_5893| SummandMask1@@14) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_5893_3103_3104#PolymorphicMapType_5893| SummandMask2@@14) o_2@@78 f_4@@78))
)))
(assert (forall ((this@@11 T@Ref) ) (! (= (getPredWandId_3103_3104 (P1 this@@11)) 0)
 :qid |stdinbpl.191:15|
 :skolemid |24|
 :pattern ( (P1 this@@11))
)))
(assert (forall ((this@@12 T@Ref) ) (! (= (getPredWandId_3127_3128 (P2 this@@12)) 1)
 :qid |stdinbpl.240:15|
 :skolemid |30|
 :pattern ( (P2 this@@12))
)))
(assert (forall ((this@@13 T@Ref) ) (! (= (getPredWandId_3151_3152 (P3 this@@13)) 2)
 :qid |stdinbpl.289:15|
 :skolemid |36|
 :pattern ( (P3 this@@13))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5872) (o_55 T@Ref) (f_9 T@Field_10779_10784) (v T@PolymorphicMapType_6421) ) (! (succHeap Heap@@29 (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@29) (store (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@29) o_55 f_9 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@29) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@29) (store (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@29) o_55 f_9 v)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5872) (o_55@@0 T@Ref) (f_9@@0 T@Field_10766_10767) (v@@0 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@30) (store (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@30) o_55@@0 f_9@@0 v@@0) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@30) (store (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@30) o_55@@0 f_9@@0 v@@0) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@30) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_5872) (o_55@@1 T@Ref) (f_9@@1 T@Field_10766_5946) (v@@1 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@31) (store (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@31) o_55@@1 f_9@@1 v@@1) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@31) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@31) (store (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@31) o_55@@1 f_9@@1 v@@1) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_5872) (o_55@@2 T@Ref) (f_9@@2 T@Field_10766_53) (v@@2 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@32) (store (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@32) o_55@@2 f_9@@2 v@@2) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@32) (store (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@32) o_55@@2 f_9@@2 v@@2) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@32) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_5872) (o_55@@3 T@Ref) (f_9@@3 T@Field_10026_10031) (v@@3 T@PolymorphicMapType_6421) ) (! (succHeap Heap@@33 (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@33) (store (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@33) o_55@@3 f_9@@3 v@@3) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@33) (store (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@33) o_55@@3 f_9@@3 v@@3) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@33) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_5872) (o_55@@4 T@Ref) (f_9@@4 T@Field_10013_10014) (v@@4 T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@34) (store (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@34) o_55@@4 f_9@@4 v@@4) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@34) (store (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@34) o_55@@4 f_9@@4 v@@4) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@34) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_5872) (o_55@@5 T@Ref) (f_9@@5 T@Field_3127_5946) (v@@5 T@Ref) ) (! (succHeap Heap@@35 (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@35) (store (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@35) o_55@@5 f_9@@5 v@@5) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@35) (store (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@35) o_55@@5 f_9@@5 v@@5) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@35) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_5872) (o_55@@6 T@Ref) (f_9@@6 T@Field_3127_53) (v@@6 Bool) ) (! (succHeap Heap@@36 (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@36) (store (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@36) o_55@@6 f_9@@6 v@@6) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@36) (store (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@36) o_55@@6 f_9@@6 v@@6) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@36) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_5872) (o_55@@7 T@Ref) (f_9@@7 T@Field_9273_9278) (v@@7 T@PolymorphicMapType_6421) ) (! (succHeap Heap@@37 (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@37) (store (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@37) o_55@@7 f_9@@7 v@@7) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@37) (store (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@37) o_55@@7 f_9@@7 v@@7) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@37) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_5872) (o_55@@8 T@Ref) (f_9@@8 T@Field_9260_9261) (v@@8 T@FrameType) ) (! (succHeap Heap@@38 (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@38) (store (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@38) o_55@@8 f_9@@8 v@@8) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@38) (store (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@38) o_55@@8 f_9@@8 v@@8) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@38) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_5872) (o_55@@9 T@Ref) (f_9@@9 T@Field_3103_5946) (v@@9 T@Ref) ) (! (succHeap Heap@@39 (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@39) (store (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@39) o_55@@9 f_9@@9 v@@9) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@39) (store (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@39) o_55@@9 f_9@@9 v@@9) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@39) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_5872) (o_55@@10 T@Ref) (f_9@@10 T@Field_3103_53) (v@@10 Bool) ) (! (succHeap Heap@@40 (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@40) (store (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@40) o_55@@10 f_9@@10 v@@10) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@40) (store (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@40) o_55@@10 f_9@@10 v@@10) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@40) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_5872) (o_55@@11 T@Ref) (f_9@@11 T@Field_5932_9278) (v@@11 T@PolymorphicMapType_6421) ) (! (succHeap Heap@@41 (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@41) (store (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@41) o_55@@11 f_9@@11 v@@11) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@41) (store (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@41) o_55@@11 f_9@@11 v@@11) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@41) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_5872) (o_55@@12 T@Ref) (f_9@@12 T@Field_5932_3104) (v@@12 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@42) (store (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@42) o_55@@12 f_9@@12 v@@12) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@42) (store (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@42) o_55@@12 f_9@@12 v@@12) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@42) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_5872) (o_55@@13 T@Ref) (f_9@@13 T@Field_5945_5946) (v@@13 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@43) (store (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@43) o_55@@13 f_9@@13 v@@13) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5872 (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@43) (store (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@43) o_55@@13 f_9@@13 v@@13) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@43) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_5872) (o_55@@14 T@Ref) (f_9@@14 T@Field_5932_53) (v@@14 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_5872 (store (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@44) o_55@@14 f_9@@14 v@@14) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5872 (store (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@44) o_55@@14 f_9@@14 v@@14) (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@44) (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@44)))
)))
(assert (forall ((this@@14 T@Ref) ) (! (= (PredicateMaskField_3103 (P1 this@@14)) (|P1#sm| this@@14))
 :qid |stdinbpl.183:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_3103 (P1 this@@14)))
)))
(assert (forall ((this@@15 T@Ref) ) (! (= (PredicateMaskField_3127 (P2 this@@15)) (|P2#sm| this@@15))
 :qid |stdinbpl.232:15|
 :skolemid |28|
 :pattern ( (PredicateMaskField_3127 (P2 this@@15)))
)))
(assert (forall ((this@@16 T@Ref) ) (! (= (PredicateMaskField_3151 (P3 this@@16)) (|P3#sm| this@@16))
 :qid |stdinbpl.281:15|
 :skolemid |34|
 :pattern ( (PredicateMaskField_3151 (P3 this@@16)))
)))
(assert (forall ((o_55@@15 T@Ref) (f_54 T@Field_5945_5946) (Heap@@45 T@PolymorphicMapType_5872) ) (!  (=> (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@45) o_55@@15 $allocated) (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@45) (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@45) o_55@@15 f_54) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@45) o_55@@15 f_54))
)))
(assert (forall ((p@@4 T@Field_10766_10767) (v_1@@3 T@FrameType) (q T@Field_10766_10767) (w@@3 T@FrameType) (r T@Field_10766_10767) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10766_10766 p@@4 v_1@@3 q w@@3) (InsidePredicate_10766_10766 q w@@3 r u)) (InsidePredicate_10766_10766 p@@4 v_1@@3 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10766_10766 p@@4 v_1@@3 q w@@3) (InsidePredicate_10766_10766 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_10766_10767) (v_1@@4 T@FrameType) (q@@0 T@Field_10766_10767) (w@@4 T@FrameType) (r@@0 T@Field_10013_10014) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_10766_10766 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_10766_10013 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_10766_10013 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10766_10766 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_10766_10013 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_10766_10767) (v_1@@5 T@FrameType) (q@@1 T@Field_10766_10767) (w@@5 T@FrameType) (r@@1 T@Field_9260_9261) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_10766_10766 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_10766_9260 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_10766_9260 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10766_10766 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_10766_9260 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_10766_10767) (v_1@@6 T@FrameType) (q@@2 T@Field_10766_10767) (w@@6 T@FrameType) (r@@2 T@Field_5932_3104) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_10766_10766 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_10766_5932 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_10766_5932 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10766_10766 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_10766_5932 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_10766_10767) (v_1@@7 T@FrameType) (q@@3 T@Field_10013_10014) (w@@7 T@FrameType) (r@@3 T@Field_10766_10767) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_10766_10013 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_10013_10766 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_10766_10766 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10766_10013 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_10013_10766 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_10766_10767) (v_1@@8 T@FrameType) (q@@4 T@Field_10013_10014) (w@@8 T@FrameType) (r@@4 T@Field_10013_10014) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_10766_10013 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_10013_10013 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_10766_10013 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10766_10013 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_10013_10013 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_10766_10767) (v_1@@9 T@FrameType) (q@@5 T@Field_10013_10014) (w@@9 T@FrameType) (r@@5 T@Field_9260_9261) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_10766_10013 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_10013_9260 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_10766_9260 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10766_10013 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_10013_9260 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_10766_10767) (v_1@@10 T@FrameType) (q@@6 T@Field_10013_10014) (w@@10 T@FrameType) (r@@6 T@Field_5932_3104) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_10766_10013 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_10013_5932 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_10766_5932 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10766_10013 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_10013_5932 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_10766_10767) (v_1@@11 T@FrameType) (q@@7 T@Field_9260_9261) (w@@11 T@FrameType) (r@@7 T@Field_10766_10767) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_10766_9260 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_9260_10766 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_10766_10766 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10766_9260 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_9260_10766 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_10766_10767) (v_1@@12 T@FrameType) (q@@8 T@Field_9260_9261) (w@@12 T@FrameType) (r@@8 T@Field_10013_10014) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_10766_9260 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_9260_10013 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_10766_10013 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10766_9260 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_9260_10013 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_10766_10767) (v_1@@13 T@FrameType) (q@@9 T@Field_9260_9261) (w@@13 T@FrameType) (r@@9 T@Field_9260_9261) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_10766_9260 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_9260_9260 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_10766_9260 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10766_9260 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_9260_9260 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_10766_10767) (v_1@@14 T@FrameType) (q@@10 T@Field_9260_9261) (w@@14 T@FrameType) (r@@10 T@Field_5932_3104) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_10766_9260 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_9260_5932 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_10766_5932 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10766_9260 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_9260_5932 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_10766_10767) (v_1@@15 T@FrameType) (q@@11 T@Field_5932_3104) (w@@15 T@FrameType) (r@@11 T@Field_10766_10767) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_10766_5932 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_5932_10766 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_10766_10766 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10766_5932 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_5932_10766 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_10766_10767) (v_1@@16 T@FrameType) (q@@12 T@Field_5932_3104) (w@@16 T@FrameType) (r@@12 T@Field_10013_10014) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_10766_5932 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_5932_10013 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_10766_10013 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10766_5932 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_5932_10013 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_10766_10767) (v_1@@17 T@FrameType) (q@@13 T@Field_5932_3104) (w@@17 T@FrameType) (r@@13 T@Field_9260_9261) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_10766_5932 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_5932_9260 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_10766_9260 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10766_5932 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_5932_9260 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_10766_10767) (v_1@@18 T@FrameType) (q@@14 T@Field_5932_3104) (w@@18 T@FrameType) (r@@14 T@Field_5932_3104) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_10766_5932 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_5932_5932 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_10766_5932 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10766_5932 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_5932_5932 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_10013_10014) (v_1@@19 T@FrameType) (q@@15 T@Field_10766_10767) (w@@19 T@FrameType) (r@@15 T@Field_10766_10767) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_10013_10766 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_10766_10766 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_10013_10766 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10013_10766 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_10766_10766 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_10013_10014) (v_1@@20 T@FrameType) (q@@16 T@Field_10766_10767) (w@@20 T@FrameType) (r@@16 T@Field_10013_10014) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_10013_10766 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_10766_10013 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_10013_10013 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10013_10766 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_10766_10013 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_10013_10014) (v_1@@21 T@FrameType) (q@@17 T@Field_10766_10767) (w@@21 T@FrameType) (r@@17 T@Field_9260_9261) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_10013_10766 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_10766_9260 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_10013_9260 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10013_10766 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_10766_9260 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_10013_10014) (v_1@@22 T@FrameType) (q@@18 T@Field_10766_10767) (w@@22 T@FrameType) (r@@18 T@Field_5932_3104) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_10013_10766 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_10766_5932 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_10013_5932 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10013_10766 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_10766_5932 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_10013_10014) (v_1@@23 T@FrameType) (q@@19 T@Field_10013_10014) (w@@23 T@FrameType) (r@@19 T@Field_10766_10767) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_10013_10013 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_10013_10766 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_10013_10766 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10013_10013 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_10013_10766 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_10013_10014) (v_1@@24 T@FrameType) (q@@20 T@Field_10013_10014) (w@@24 T@FrameType) (r@@20 T@Field_10013_10014) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_10013_10013 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_10013_10013 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_10013_10013 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10013_10013 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_10013_10013 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_10013_10014) (v_1@@25 T@FrameType) (q@@21 T@Field_10013_10014) (w@@25 T@FrameType) (r@@21 T@Field_9260_9261) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_10013_10013 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_10013_9260 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_10013_9260 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10013_10013 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_10013_9260 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_10013_10014) (v_1@@26 T@FrameType) (q@@22 T@Field_10013_10014) (w@@26 T@FrameType) (r@@22 T@Field_5932_3104) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_10013_10013 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_10013_5932 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_10013_5932 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10013_10013 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_10013_5932 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_10013_10014) (v_1@@27 T@FrameType) (q@@23 T@Field_9260_9261) (w@@27 T@FrameType) (r@@23 T@Field_10766_10767) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_10013_9260 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_9260_10766 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_10013_10766 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10013_9260 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_9260_10766 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_10013_10014) (v_1@@28 T@FrameType) (q@@24 T@Field_9260_9261) (w@@28 T@FrameType) (r@@24 T@Field_10013_10014) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_10013_9260 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_9260_10013 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_10013_10013 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10013_9260 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_9260_10013 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_10013_10014) (v_1@@29 T@FrameType) (q@@25 T@Field_9260_9261) (w@@29 T@FrameType) (r@@25 T@Field_9260_9261) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_10013_9260 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_9260_9260 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_10013_9260 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10013_9260 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_9260_9260 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_10013_10014) (v_1@@30 T@FrameType) (q@@26 T@Field_9260_9261) (w@@30 T@FrameType) (r@@26 T@Field_5932_3104) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_10013_9260 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_9260_5932 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_10013_5932 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10013_9260 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_9260_5932 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_10013_10014) (v_1@@31 T@FrameType) (q@@27 T@Field_5932_3104) (w@@31 T@FrameType) (r@@27 T@Field_10766_10767) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_10013_5932 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_5932_10766 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_10013_10766 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10013_5932 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_5932_10766 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_10013_10014) (v_1@@32 T@FrameType) (q@@28 T@Field_5932_3104) (w@@32 T@FrameType) (r@@28 T@Field_10013_10014) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_10013_5932 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_5932_10013 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_10013_10013 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10013_5932 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_5932_10013 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_10013_10014) (v_1@@33 T@FrameType) (q@@29 T@Field_5932_3104) (w@@33 T@FrameType) (r@@29 T@Field_9260_9261) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_10013_5932 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_5932_9260 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_10013_9260 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10013_5932 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_5932_9260 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_10013_10014) (v_1@@34 T@FrameType) (q@@30 T@Field_5932_3104) (w@@34 T@FrameType) (r@@30 T@Field_5932_3104) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_10013_5932 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_5932_5932 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_10013_5932 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10013_5932 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_5932_5932 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_9260_9261) (v_1@@35 T@FrameType) (q@@31 T@Field_10766_10767) (w@@35 T@FrameType) (r@@31 T@Field_10766_10767) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_9260_10766 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_10766_10766 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_9260_10766 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9260_10766 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_10766_10766 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_9260_9261) (v_1@@36 T@FrameType) (q@@32 T@Field_10766_10767) (w@@36 T@FrameType) (r@@32 T@Field_10013_10014) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_9260_10766 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_10766_10013 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_9260_10013 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9260_10766 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_10766_10013 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_9260_9261) (v_1@@37 T@FrameType) (q@@33 T@Field_10766_10767) (w@@37 T@FrameType) (r@@33 T@Field_9260_9261) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_9260_10766 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_10766_9260 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_9260_9260 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9260_10766 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_10766_9260 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_9260_9261) (v_1@@38 T@FrameType) (q@@34 T@Field_10766_10767) (w@@38 T@FrameType) (r@@34 T@Field_5932_3104) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_9260_10766 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_10766_5932 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_9260_5932 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9260_10766 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_10766_5932 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_9260_9261) (v_1@@39 T@FrameType) (q@@35 T@Field_10013_10014) (w@@39 T@FrameType) (r@@35 T@Field_10766_10767) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_9260_10013 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_10013_10766 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_9260_10766 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9260_10013 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_10013_10766 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_9260_9261) (v_1@@40 T@FrameType) (q@@36 T@Field_10013_10014) (w@@40 T@FrameType) (r@@36 T@Field_10013_10014) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_9260_10013 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_10013_10013 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_9260_10013 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9260_10013 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_10013_10013 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_9260_9261) (v_1@@41 T@FrameType) (q@@37 T@Field_10013_10014) (w@@41 T@FrameType) (r@@37 T@Field_9260_9261) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_9260_10013 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_10013_9260 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_9260_9260 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9260_10013 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_10013_9260 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_9260_9261) (v_1@@42 T@FrameType) (q@@38 T@Field_10013_10014) (w@@42 T@FrameType) (r@@38 T@Field_5932_3104) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_9260_10013 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_10013_5932 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_9260_5932 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9260_10013 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_10013_5932 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_9260_9261) (v_1@@43 T@FrameType) (q@@39 T@Field_9260_9261) (w@@43 T@FrameType) (r@@39 T@Field_10766_10767) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_9260_9260 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_9260_10766 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_9260_10766 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9260_9260 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_9260_10766 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_9260_9261) (v_1@@44 T@FrameType) (q@@40 T@Field_9260_9261) (w@@44 T@FrameType) (r@@40 T@Field_10013_10014) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_9260_9260 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_9260_10013 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_9260_10013 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9260_9260 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_9260_10013 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_9260_9261) (v_1@@45 T@FrameType) (q@@41 T@Field_9260_9261) (w@@45 T@FrameType) (r@@41 T@Field_9260_9261) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_9260_9260 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_9260_9260 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_9260_9260 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9260_9260 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_9260_9260 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_9260_9261) (v_1@@46 T@FrameType) (q@@42 T@Field_9260_9261) (w@@46 T@FrameType) (r@@42 T@Field_5932_3104) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_9260_9260 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_9260_5932 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_9260_5932 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9260_9260 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_9260_5932 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_9260_9261) (v_1@@47 T@FrameType) (q@@43 T@Field_5932_3104) (w@@47 T@FrameType) (r@@43 T@Field_10766_10767) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_9260_5932 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_5932_10766 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_9260_10766 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9260_5932 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_5932_10766 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_9260_9261) (v_1@@48 T@FrameType) (q@@44 T@Field_5932_3104) (w@@48 T@FrameType) (r@@44 T@Field_10013_10014) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_9260_5932 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_5932_10013 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_9260_10013 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9260_5932 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_5932_10013 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_9260_9261) (v_1@@49 T@FrameType) (q@@45 T@Field_5932_3104) (w@@49 T@FrameType) (r@@45 T@Field_9260_9261) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_9260_5932 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_5932_9260 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_9260_9260 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9260_5932 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_5932_9260 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_9260_9261) (v_1@@50 T@FrameType) (q@@46 T@Field_5932_3104) (w@@50 T@FrameType) (r@@46 T@Field_5932_3104) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_9260_5932 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_5932_5932 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_9260_5932 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9260_5932 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_5932_5932 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_5932_3104) (v_1@@51 T@FrameType) (q@@47 T@Field_10766_10767) (w@@51 T@FrameType) (r@@47 T@Field_10766_10767) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_5932_10766 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_10766_10766 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_5932_10766 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5932_10766 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_10766_10766 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_5932_3104) (v_1@@52 T@FrameType) (q@@48 T@Field_10766_10767) (w@@52 T@FrameType) (r@@48 T@Field_10013_10014) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_5932_10766 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_10766_10013 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_5932_10013 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5932_10766 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_10766_10013 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_5932_3104) (v_1@@53 T@FrameType) (q@@49 T@Field_10766_10767) (w@@53 T@FrameType) (r@@49 T@Field_9260_9261) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_5932_10766 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_10766_9260 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_5932_9260 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5932_10766 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_10766_9260 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_5932_3104) (v_1@@54 T@FrameType) (q@@50 T@Field_10766_10767) (w@@54 T@FrameType) (r@@50 T@Field_5932_3104) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_5932_10766 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_10766_5932 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_5932_5932 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5932_10766 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_10766_5932 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_5932_3104) (v_1@@55 T@FrameType) (q@@51 T@Field_10013_10014) (w@@55 T@FrameType) (r@@51 T@Field_10766_10767) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_5932_10013 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_10013_10766 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_5932_10766 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5932_10013 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_10013_10766 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_5932_3104) (v_1@@56 T@FrameType) (q@@52 T@Field_10013_10014) (w@@56 T@FrameType) (r@@52 T@Field_10013_10014) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_5932_10013 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_10013_10013 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_5932_10013 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5932_10013 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_10013_10013 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_5932_3104) (v_1@@57 T@FrameType) (q@@53 T@Field_10013_10014) (w@@57 T@FrameType) (r@@53 T@Field_9260_9261) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_5932_10013 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_10013_9260 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_5932_9260 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5932_10013 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_10013_9260 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_5932_3104) (v_1@@58 T@FrameType) (q@@54 T@Field_10013_10014) (w@@58 T@FrameType) (r@@54 T@Field_5932_3104) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_5932_10013 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_10013_5932 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_5932_5932 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5932_10013 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_10013_5932 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_5932_3104) (v_1@@59 T@FrameType) (q@@55 T@Field_9260_9261) (w@@59 T@FrameType) (r@@55 T@Field_10766_10767) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_5932_9260 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_9260_10766 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_5932_10766 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5932_9260 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_9260_10766 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_5932_3104) (v_1@@60 T@FrameType) (q@@56 T@Field_9260_9261) (w@@60 T@FrameType) (r@@56 T@Field_10013_10014) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_5932_9260 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_9260_10013 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_5932_10013 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5932_9260 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_9260_10013 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_5932_3104) (v_1@@61 T@FrameType) (q@@57 T@Field_9260_9261) (w@@61 T@FrameType) (r@@57 T@Field_9260_9261) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_5932_9260 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_9260_9260 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_5932_9260 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5932_9260 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_9260_9260 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_5932_3104) (v_1@@62 T@FrameType) (q@@58 T@Field_9260_9261) (w@@62 T@FrameType) (r@@58 T@Field_5932_3104) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_5932_9260 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_9260_5932 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_5932_5932 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5932_9260 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_9260_5932 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_5932_3104) (v_1@@63 T@FrameType) (q@@59 T@Field_5932_3104) (w@@63 T@FrameType) (r@@59 T@Field_10766_10767) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_5932_5932 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_5932_10766 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_5932_10766 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5932_5932 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_5932_10766 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_5932_3104) (v_1@@64 T@FrameType) (q@@60 T@Field_5932_3104) (w@@64 T@FrameType) (r@@60 T@Field_10013_10014) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_5932_5932 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_5932_10013 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_5932_10013 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5932_5932 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_5932_10013 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_5932_3104) (v_1@@65 T@FrameType) (q@@61 T@Field_5932_3104) (w@@65 T@FrameType) (r@@61 T@Field_9260_9261) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_5932_5932 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_5932_9260 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_5932_9260 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5932_5932 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_5932_9260 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_5932_3104) (v_1@@66 T@FrameType) (q@@62 T@Field_5932_3104) (w@@66 T@FrameType) (r@@62 T@Field_5932_3104) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_5932_5932 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_5932_5932 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_5932_5932 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5932_5932 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_5932_5932 q@@62 w@@66 r@@62 u@@62))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_5872) (ExhaleHeap@@25 T@PolymorphicMapType_5872) (Mask@@58 T@PolymorphicMapType_5893) (pm_f_30@@7 T@Field_10766_10767) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@25 Mask@@58) (=> (and (HasDirectPerm_10766_3104 Mask@@58 null pm_f_30@@7) (IsPredicateField_3151_3152 pm_f_30@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30 T@Ref) (f_13@@15 T@Field_5932_53) ) (!  (=> (select (|PolymorphicMapType_6421_5932_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@46) null (PredicateMaskField_3151 pm_f_30@@7))) o2_30 f_13@@15) (= (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@46) o2_30 f_13@@15) (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30 f_13@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30 f_13@@15))
)) (forall ((o2_30@@0 T@Ref) (f_13@@16 T@Field_5945_5946) ) (!  (=> (select (|PolymorphicMapType_6421_5932_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@46) null (PredicateMaskField_3151 pm_f_30@@7))) o2_30@@0 f_13@@16) (= (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@46) o2_30@@0 f_13@@16) (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@0 f_13@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@0 f_13@@16))
))) (forall ((o2_30@@1 T@Ref) (f_13@@17 T@Field_5932_3104) ) (!  (=> (select (|PolymorphicMapType_6421_5932_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@46) null (PredicateMaskField_3151 pm_f_30@@7))) o2_30@@1 f_13@@17) (= (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@46) o2_30@@1 f_13@@17) (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@1 f_13@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@1 f_13@@17))
))) (forall ((o2_30@@2 T@Ref) (f_13@@18 T@Field_5932_9278) ) (!  (=> (select (|PolymorphicMapType_6421_5932_23280#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@46) null (PredicateMaskField_3151 pm_f_30@@7))) o2_30@@2 f_13@@18) (= (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@46) o2_30@@2 f_13@@18) (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@2 f_13@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@2 f_13@@18))
))) (forall ((o2_30@@3 T@Ref) (f_13@@19 T@Field_3103_53) ) (!  (=> (select (|PolymorphicMapType_6421_9260_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@46) null (PredicateMaskField_3151 pm_f_30@@7))) o2_30@@3 f_13@@19) (= (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@46) o2_30@@3 f_13@@19) (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@3 f_13@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@3 f_13@@19))
))) (forall ((o2_30@@4 T@Ref) (f_13@@20 T@Field_3103_5946) ) (!  (=> (select (|PolymorphicMapType_6421_9260_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@46) null (PredicateMaskField_3151 pm_f_30@@7))) o2_30@@4 f_13@@20) (= (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@46) o2_30@@4 f_13@@20) (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@4 f_13@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@4 f_13@@20))
))) (forall ((o2_30@@5 T@Ref) (f_13@@21 T@Field_9260_9261) ) (!  (=> (select (|PolymorphicMapType_6421_9260_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@46) null (PredicateMaskField_3151 pm_f_30@@7))) o2_30@@5 f_13@@21) (= (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@46) o2_30@@5 f_13@@21) (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@5 f_13@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@5 f_13@@21))
))) (forall ((o2_30@@6 T@Ref) (f_13@@22 T@Field_9273_9278) ) (!  (=> (select (|PolymorphicMapType_6421_9260_24130#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@46) null (PredicateMaskField_3151 pm_f_30@@7))) o2_30@@6 f_13@@22) (= (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@46) o2_30@@6 f_13@@22) (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@6 f_13@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@6 f_13@@22))
))) (forall ((o2_30@@7 T@Ref) (f_13@@23 T@Field_3127_53) ) (!  (=> (select (|PolymorphicMapType_6421_10013_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@46) null (PredicateMaskField_3151 pm_f_30@@7))) o2_30@@7 f_13@@23) (= (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@46) o2_30@@7 f_13@@23) (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@7 f_13@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@7 f_13@@23))
))) (forall ((o2_30@@8 T@Ref) (f_13@@24 T@Field_3127_5946) ) (!  (=> (select (|PolymorphicMapType_6421_10013_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@46) null (PredicateMaskField_3151 pm_f_30@@7))) o2_30@@8 f_13@@24) (= (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@46) o2_30@@8 f_13@@24) (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@8 f_13@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@8 f_13@@24))
))) (forall ((o2_30@@9 T@Ref) (f_13@@25 T@Field_10013_10014) ) (!  (=> (select (|PolymorphicMapType_6421_10013_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@46) null (PredicateMaskField_3151 pm_f_30@@7))) o2_30@@9 f_13@@25) (= (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@46) o2_30@@9 f_13@@25) (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@9 f_13@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@9 f_13@@25))
))) (forall ((o2_30@@10 T@Ref) (f_13@@26 T@Field_10026_10031) ) (!  (=> (select (|PolymorphicMapType_6421_10013_24980#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@46) null (PredicateMaskField_3151 pm_f_30@@7))) o2_30@@10 f_13@@26) (= (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@46) o2_30@@10 f_13@@26) (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@10 f_13@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@10 f_13@@26))
))) (forall ((o2_30@@11 T@Ref) (f_13@@27 T@Field_10766_53) ) (!  (=> (select (|PolymorphicMapType_6421_10766_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@46) null (PredicateMaskField_3151 pm_f_30@@7))) o2_30@@11 f_13@@27) (= (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@46) o2_30@@11 f_13@@27) (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@11 f_13@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@11 f_13@@27))
))) (forall ((o2_30@@12 T@Ref) (f_13@@28 T@Field_10766_5946) ) (!  (=> (select (|PolymorphicMapType_6421_10766_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@46) null (PredicateMaskField_3151 pm_f_30@@7))) o2_30@@12 f_13@@28) (= (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@46) o2_30@@12 f_13@@28) (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@12 f_13@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@12 f_13@@28))
))) (forall ((o2_30@@13 T@Ref) (f_13@@29 T@Field_10766_10767) ) (!  (=> (select (|PolymorphicMapType_6421_10766_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@46) null (PredicateMaskField_3151 pm_f_30@@7))) o2_30@@13 f_13@@29) (= (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@46) o2_30@@13 f_13@@29) (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@13 f_13@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@13 f_13@@29))
))) (forall ((o2_30@@14 T@Ref) (f_13@@30 T@Field_10779_10784) ) (!  (=> (select (|PolymorphicMapType_6421_10766_25830#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@46) null (PredicateMaskField_3151 pm_f_30@@7))) o2_30@@14 f_13@@30) (= (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@46) o2_30@@14 f_13@@30) (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@14 f_13@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@25) o2_30@@14 f_13@@30))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@25 Mask@@58) (IsPredicateField_3151_3152 pm_f_30@@7))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_5872) (ExhaleHeap@@26 T@PolymorphicMapType_5872) (Mask@@59 T@PolymorphicMapType_5893) (pm_f_30@@8 T@Field_5932_3104) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@26 Mask@@59) (=> (and (HasDirectPerm_5932_3104 Mask@@59 null pm_f_30@@8) (IsPredicateField_5932_21994 pm_f_30@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30@@15 T@Ref) (f_13@@31 T@Field_5932_53) ) (!  (=> (select (|PolymorphicMapType_6421_5932_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@47) null (PredicateMaskField_5932 pm_f_30@@8))) o2_30@@15 f_13@@31) (= (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@47) o2_30@@15 f_13@@31) (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@15 f_13@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@15 f_13@@31))
)) (forall ((o2_30@@16 T@Ref) (f_13@@32 T@Field_5945_5946) ) (!  (=> (select (|PolymorphicMapType_6421_5932_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@47) null (PredicateMaskField_5932 pm_f_30@@8))) o2_30@@16 f_13@@32) (= (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@47) o2_30@@16 f_13@@32) (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@16 f_13@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@16 f_13@@32))
))) (forall ((o2_30@@17 T@Ref) (f_13@@33 T@Field_5932_3104) ) (!  (=> (select (|PolymorphicMapType_6421_5932_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@47) null (PredicateMaskField_5932 pm_f_30@@8))) o2_30@@17 f_13@@33) (= (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@47) o2_30@@17 f_13@@33) (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@17 f_13@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@17 f_13@@33))
))) (forall ((o2_30@@18 T@Ref) (f_13@@34 T@Field_5932_9278) ) (!  (=> (select (|PolymorphicMapType_6421_5932_23280#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@47) null (PredicateMaskField_5932 pm_f_30@@8))) o2_30@@18 f_13@@34) (= (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@47) o2_30@@18 f_13@@34) (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@18 f_13@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@18 f_13@@34))
))) (forall ((o2_30@@19 T@Ref) (f_13@@35 T@Field_3103_53) ) (!  (=> (select (|PolymorphicMapType_6421_9260_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@47) null (PredicateMaskField_5932 pm_f_30@@8))) o2_30@@19 f_13@@35) (= (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@47) o2_30@@19 f_13@@35) (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@19 f_13@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@19 f_13@@35))
))) (forall ((o2_30@@20 T@Ref) (f_13@@36 T@Field_3103_5946) ) (!  (=> (select (|PolymorphicMapType_6421_9260_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@47) null (PredicateMaskField_5932 pm_f_30@@8))) o2_30@@20 f_13@@36) (= (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@47) o2_30@@20 f_13@@36) (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@20 f_13@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@20 f_13@@36))
))) (forall ((o2_30@@21 T@Ref) (f_13@@37 T@Field_9260_9261) ) (!  (=> (select (|PolymorphicMapType_6421_9260_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@47) null (PredicateMaskField_5932 pm_f_30@@8))) o2_30@@21 f_13@@37) (= (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@47) o2_30@@21 f_13@@37) (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@21 f_13@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@21 f_13@@37))
))) (forall ((o2_30@@22 T@Ref) (f_13@@38 T@Field_9273_9278) ) (!  (=> (select (|PolymorphicMapType_6421_9260_24130#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@47) null (PredicateMaskField_5932 pm_f_30@@8))) o2_30@@22 f_13@@38) (= (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@47) o2_30@@22 f_13@@38) (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@22 f_13@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@22 f_13@@38))
))) (forall ((o2_30@@23 T@Ref) (f_13@@39 T@Field_3127_53) ) (!  (=> (select (|PolymorphicMapType_6421_10013_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@47) null (PredicateMaskField_5932 pm_f_30@@8))) o2_30@@23 f_13@@39) (= (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@47) o2_30@@23 f_13@@39) (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@23 f_13@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@23 f_13@@39))
))) (forall ((o2_30@@24 T@Ref) (f_13@@40 T@Field_3127_5946) ) (!  (=> (select (|PolymorphicMapType_6421_10013_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@47) null (PredicateMaskField_5932 pm_f_30@@8))) o2_30@@24 f_13@@40) (= (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@47) o2_30@@24 f_13@@40) (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@24 f_13@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@24 f_13@@40))
))) (forall ((o2_30@@25 T@Ref) (f_13@@41 T@Field_10013_10014) ) (!  (=> (select (|PolymorphicMapType_6421_10013_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@47) null (PredicateMaskField_5932 pm_f_30@@8))) o2_30@@25 f_13@@41) (= (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@47) o2_30@@25 f_13@@41) (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@25 f_13@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@25 f_13@@41))
))) (forall ((o2_30@@26 T@Ref) (f_13@@42 T@Field_10026_10031) ) (!  (=> (select (|PolymorphicMapType_6421_10013_24980#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@47) null (PredicateMaskField_5932 pm_f_30@@8))) o2_30@@26 f_13@@42) (= (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@47) o2_30@@26 f_13@@42) (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@26 f_13@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@26 f_13@@42))
))) (forall ((o2_30@@27 T@Ref) (f_13@@43 T@Field_10766_53) ) (!  (=> (select (|PolymorphicMapType_6421_10766_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@47) null (PredicateMaskField_5932 pm_f_30@@8))) o2_30@@27 f_13@@43) (= (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@47) o2_30@@27 f_13@@43) (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@27 f_13@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@27 f_13@@43))
))) (forall ((o2_30@@28 T@Ref) (f_13@@44 T@Field_10766_5946) ) (!  (=> (select (|PolymorphicMapType_6421_10766_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@47) null (PredicateMaskField_5932 pm_f_30@@8))) o2_30@@28 f_13@@44) (= (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@47) o2_30@@28 f_13@@44) (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@28 f_13@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@28 f_13@@44))
))) (forall ((o2_30@@29 T@Ref) (f_13@@45 T@Field_10766_10767) ) (!  (=> (select (|PolymorphicMapType_6421_10766_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@47) null (PredicateMaskField_5932 pm_f_30@@8))) o2_30@@29 f_13@@45) (= (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@47) o2_30@@29 f_13@@45) (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@29 f_13@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@29 f_13@@45))
))) (forall ((o2_30@@30 T@Ref) (f_13@@46 T@Field_10779_10784) ) (!  (=> (select (|PolymorphicMapType_6421_10766_25830#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@47) null (PredicateMaskField_5932 pm_f_30@@8))) o2_30@@30 f_13@@46) (= (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@47) o2_30@@30 f_13@@46) (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@30 f_13@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@26) o2_30@@30 f_13@@46))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@26 Mask@@59) (IsPredicateField_5932_21994 pm_f_30@@8))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_5872) (ExhaleHeap@@27 T@PolymorphicMapType_5872) (Mask@@60 T@PolymorphicMapType_5893) (pm_f_30@@9 T@Field_10013_10014) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@27 Mask@@60) (=> (and (HasDirectPerm_3127_3128 Mask@@60 null pm_f_30@@9) (IsPredicateField_3127_3128 pm_f_30@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30@@31 T@Ref) (f_13@@47 T@Field_5932_53) ) (!  (=> (select (|PolymorphicMapType_6421_5932_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@48) null (PredicateMaskField_3127 pm_f_30@@9))) o2_30@@31 f_13@@47) (= (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@48) o2_30@@31 f_13@@47) (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@31 f_13@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@31 f_13@@47))
)) (forall ((o2_30@@32 T@Ref) (f_13@@48 T@Field_5945_5946) ) (!  (=> (select (|PolymorphicMapType_6421_5932_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@48) null (PredicateMaskField_3127 pm_f_30@@9))) o2_30@@32 f_13@@48) (= (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@48) o2_30@@32 f_13@@48) (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@32 f_13@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@32 f_13@@48))
))) (forall ((o2_30@@33 T@Ref) (f_13@@49 T@Field_5932_3104) ) (!  (=> (select (|PolymorphicMapType_6421_5932_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@48) null (PredicateMaskField_3127 pm_f_30@@9))) o2_30@@33 f_13@@49) (= (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@48) o2_30@@33 f_13@@49) (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@33 f_13@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@33 f_13@@49))
))) (forall ((o2_30@@34 T@Ref) (f_13@@50 T@Field_5932_9278) ) (!  (=> (select (|PolymorphicMapType_6421_5932_23280#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@48) null (PredicateMaskField_3127 pm_f_30@@9))) o2_30@@34 f_13@@50) (= (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@48) o2_30@@34 f_13@@50) (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@34 f_13@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@34 f_13@@50))
))) (forall ((o2_30@@35 T@Ref) (f_13@@51 T@Field_3103_53) ) (!  (=> (select (|PolymorphicMapType_6421_9260_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@48) null (PredicateMaskField_3127 pm_f_30@@9))) o2_30@@35 f_13@@51) (= (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@48) o2_30@@35 f_13@@51) (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@35 f_13@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@35 f_13@@51))
))) (forall ((o2_30@@36 T@Ref) (f_13@@52 T@Field_3103_5946) ) (!  (=> (select (|PolymorphicMapType_6421_9260_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@48) null (PredicateMaskField_3127 pm_f_30@@9))) o2_30@@36 f_13@@52) (= (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@48) o2_30@@36 f_13@@52) (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@36 f_13@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@36 f_13@@52))
))) (forall ((o2_30@@37 T@Ref) (f_13@@53 T@Field_9260_9261) ) (!  (=> (select (|PolymorphicMapType_6421_9260_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@48) null (PredicateMaskField_3127 pm_f_30@@9))) o2_30@@37 f_13@@53) (= (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@48) o2_30@@37 f_13@@53) (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@37 f_13@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@37 f_13@@53))
))) (forall ((o2_30@@38 T@Ref) (f_13@@54 T@Field_9273_9278) ) (!  (=> (select (|PolymorphicMapType_6421_9260_24130#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@48) null (PredicateMaskField_3127 pm_f_30@@9))) o2_30@@38 f_13@@54) (= (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@48) o2_30@@38 f_13@@54) (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@38 f_13@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@38 f_13@@54))
))) (forall ((o2_30@@39 T@Ref) (f_13@@55 T@Field_3127_53) ) (!  (=> (select (|PolymorphicMapType_6421_10013_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@48) null (PredicateMaskField_3127 pm_f_30@@9))) o2_30@@39 f_13@@55) (= (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@48) o2_30@@39 f_13@@55) (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@39 f_13@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@39 f_13@@55))
))) (forall ((o2_30@@40 T@Ref) (f_13@@56 T@Field_3127_5946) ) (!  (=> (select (|PolymorphicMapType_6421_10013_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@48) null (PredicateMaskField_3127 pm_f_30@@9))) o2_30@@40 f_13@@56) (= (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@48) o2_30@@40 f_13@@56) (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@40 f_13@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@40 f_13@@56))
))) (forall ((o2_30@@41 T@Ref) (f_13@@57 T@Field_10013_10014) ) (!  (=> (select (|PolymorphicMapType_6421_10013_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@48) null (PredicateMaskField_3127 pm_f_30@@9))) o2_30@@41 f_13@@57) (= (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@48) o2_30@@41 f_13@@57) (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@41 f_13@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@41 f_13@@57))
))) (forall ((o2_30@@42 T@Ref) (f_13@@58 T@Field_10026_10031) ) (!  (=> (select (|PolymorphicMapType_6421_10013_24980#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@48) null (PredicateMaskField_3127 pm_f_30@@9))) o2_30@@42 f_13@@58) (= (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@48) o2_30@@42 f_13@@58) (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@42 f_13@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@42 f_13@@58))
))) (forall ((o2_30@@43 T@Ref) (f_13@@59 T@Field_10766_53) ) (!  (=> (select (|PolymorphicMapType_6421_10766_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@48) null (PredicateMaskField_3127 pm_f_30@@9))) o2_30@@43 f_13@@59) (= (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@48) o2_30@@43 f_13@@59) (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@43 f_13@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@43 f_13@@59))
))) (forall ((o2_30@@44 T@Ref) (f_13@@60 T@Field_10766_5946) ) (!  (=> (select (|PolymorphicMapType_6421_10766_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@48) null (PredicateMaskField_3127 pm_f_30@@9))) o2_30@@44 f_13@@60) (= (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@48) o2_30@@44 f_13@@60) (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@44 f_13@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@44 f_13@@60))
))) (forall ((o2_30@@45 T@Ref) (f_13@@61 T@Field_10766_10767) ) (!  (=> (select (|PolymorphicMapType_6421_10766_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@48) null (PredicateMaskField_3127 pm_f_30@@9))) o2_30@@45 f_13@@61) (= (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@48) o2_30@@45 f_13@@61) (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@45 f_13@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@45 f_13@@61))
))) (forall ((o2_30@@46 T@Ref) (f_13@@62 T@Field_10779_10784) ) (!  (=> (select (|PolymorphicMapType_6421_10766_25830#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@48) null (PredicateMaskField_3127 pm_f_30@@9))) o2_30@@46 f_13@@62) (= (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@48) o2_30@@46 f_13@@62) (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@46 f_13@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@27) o2_30@@46 f_13@@62))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@27 Mask@@60) (IsPredicateField_3127_3128 pm_f_30@@9))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_5872) (ExhaleHeap@@28 T@PolymorphicMapType_5872) (Mask@@61 T@PolymorphicMapType_5893) (pm_f_30@@10 T@Field_9260_9261) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@28 Mask@@61) (=> (and (HasDirectPerm_3103_3104 Mask@@61 null pm_f_30@@10) (IsPredicateField_3103_3104 pm_f_30@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30@@47 T@Ref) (f_13@@63 T@Field_5932_53) ) (!  (=> (select (|PolymorphicMapType_6421_5932_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@49) null (PredicateMaskField_3103 pm_f_30@@10))) o2_30@@47 f_13@@63) (= (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@49) o2_30@@47 f_13@@63) (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@47 f_13@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@47 f_13@@63))
)) (forall ((o2_30@@48 T@Ref) (f_13@@64 T@Field_5945_5946) ) (!  (=> (select (|PolymorphicMapType_6421_5932_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@49) null (PredicateMaskField_3103 pm_f_30@@10))) o2_30@@48 f_13@@64) (= (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@49) o2_30@@48 f_13@@64) (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@48 f_13@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@48 f_13@@64))
))) (forall ((o2_30@@49 T@Ref) (f_13@@65 T@Field_5932_3104) ) (!  (=> (select (|PolymorphicMapType_6421_5932_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@49) null (PredicateMaskField_3103 pm_f_30@@10))) o2_30@@49 f_13@@65) (= (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@49) o2_30@@49 f_13@@65) (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@49 f_13@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@49 f_13@@65))
))) (forall ((o2_30@@50 T@Ref) (f_13@@66 T@Field_5932_9278) ) (!  (=> (select (|PolymorphicMapType_6421_5932_23280#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@49) null (PredicateMaskField_3103 pm_f_30@@10))) o2_30@@50 f_13@@66) (= (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@49) o2_30@@50 f_13@@66) (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@50 f_13@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@50 f_13@@66))
))) (forall ((o2_30@@51 T@Ref) (f_13@@67 T@Field_3103_53) ) (!  (=> (select (|PolymorphicMapType_6421_9260_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@49) null (PredicateMaskField_3103 pm_f_30@@10))) o2_30@@51 f_13@@67) (= (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@49) o2_30@@51 f_13@@67) (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@51 f_13@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@51 f_13@@67))
))) (forall ((o2_30@@52 T@Ref) (f_13@@68 T@Field_3103_5946) ) (!  (=> (select (|PolymorphicMapType_6421_9260_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@49) null (PredicateMaskField_3103 pm_f_30@@10))) o2_30@@52 f_13@@68) (= (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@49) o2_30@@52 f_13@@68) (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@52 f_13@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@52 f_13@@68))
))) (forall ((o2_30@@53 T@Ref) (f_13@@69 T@Field_9260_9261) ) (!  (=> (select (|PolymorphicMapType_6421_9260_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@49) null (PredicateMaskField_3103 pm_f_30@@10))) o2_30@@53 f_13@@69) (= (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@49) o2_30@@53 f_13@@69) (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@53 f_13@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@53 f_13@@69))
))) (forall ((o2_30@@54 T@Ref) (f_13@@70 T@Field_9273_9278) ) (!  (=> (select (|PolymorphicMapType_6421_9260_24130#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@49) null (PredicateMaskField_3103 pm_f_30@@10))) o2_30@@54 f_13@@70) (= (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@49) o2_30@@54 f_13@@70) (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@54 f_13@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@54 f_13@@70))
))) (forall ((o2_30@@55 T@Ref) (f_13@@71 T@Field_3127_53) ) (!  (=> (select (|PolymorphicMapType_6421_10013_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@49) null (PredicateMaskField_3103 pm_f_30@@10))) o2_30@@55 f_13@@71) (= (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@49) o2_30@@55 f_13@@71) (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@55 f_13@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@55 f_13@@71))
))) (forall ((o2_30@@56 T@Ref) (f_13@@72 T@Field_3127_5946) ) (!  (=> (select (|PolymorphicMapType_6421_10013_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@49) null (PredicateMaskField_3103 pm_f_30@@10))) o2_30@@56 f_13@@72) (= (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@49) o2_30@@56 f_13@@72) (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@56 f_13@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@56 f_13@@72))
))) (forall ((o2_30@@57 T@Ref) (f_13@@73 T@Field_10013_10014) ) (!  (=> (select (|PolymorphicMapType_6421_10013_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@49) null (PredicateMaskField_3103 pm_f_30@@10))) o2_30@@57 f_13@@73) (= (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@49) o2_30@@57 f_13@@73) (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@57 f_13@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@57 f_13@@73))
))) (forall ((o2_30@@58 T@Ref) (f_13@@74 T@Field_10026_10031) ) (!  (=> (select (|PolymorphicMapType_6421_10013_24980#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@49) null (PredicateMaskField_3103 pm_f_30@@10))) o2_30@@58 f_13@@74) (= (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@49) o2_30@@58 f_13@@74) (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@58 f_13@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@58 f_13@@74))
))) (forall ((o2_30@@59 T@Ref) (f_13@@75 T@Field_10766_53) ) (!  (=> (select (|PolymorphicMapType_6421_10766_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@49) null (PredicateMaskField_3103 pm_f_30@@10))) o2_30@@59 f_13@@75) (= (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@49) o2_30@@59 f_13@@75) (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@59 f_13@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@59 f_13@@75))
))) (forall ((o2_30@@60 T@Ref) (f_13@@76 T@Field_10766_5946) ) (!  (=> (select (|PolymorphicMapType_6421_10766_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@49) null (PredicateMaskField_3103 pm_f_30@@10))) o2_30@@60 f_13@@76) (= (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@49) o2_30@@60 f_13@@76) (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@60 f_13@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@60 f_13@@76))
))) (forall ((o2_30@@61 T@Ref) (f_13@@77 T@Field_10766_10767) ) (!  (=> (select (|PolymorphicMapType_6421_10766_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@49) null (PredicateMaskField_3103 pm_f_30@@10))) o2_30@@61 f_13@@77) (= (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@49) o2_30@@61 f_13@@77) (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@61 f_13@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@61 f_13@@77))
))) (forall ((o2_30@@62 T@Ref) (f_13@@78 T@Field_10779_10784) ) (!  (=> (select (|PolymorphicMapType_6421_10766_25830#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@49) null (PredicateMaskField_3103 pm_f_30@@10))) o2_30@@62 f_13@@78) (= (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@49) o2_30@@62 f_13@@78) (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@62 f_13@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@28) o2_30@@62 f_13@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@28 Mask@@61) (IsPredicateField_3103_3104 pm_f_30@@10))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_5872) (ExhaleHeap@@29 T@PolymorphicMapType_5872) (Mask@@62 T@PolymorphicMapType_5893) (pm_f_30@@11 T@Field_10766_10767) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@29 Mask@@62) (=> (and (HasDirectPerm_10766_3104 Mask@@62 null pm_f_30@@11) (IsWandField_10766_28271 pm_f_30@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30@@63 T@Ref) (f_13@@79 T@Field_5932_53) ) (!  (=> (select (|PolymorphicMapType_6421_5932_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@50) null (WandMaskField_10766 pm_f_30@@11))) o2_30@@63 f_13@@79) (= (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@50) o2_30@@63 f_13@@79) (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@63 f_13@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@63 f_13@@79))
)) (forall ((o2_30@@64 T@Ref) (f_13@@80 T@Field_5945_5946) ) (!  (=> (select (|PolymorphicMapType_6421_5932_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@50) null (WandMaskField_10766 pm_f_30@@11))) o2_30@@64 f_13@@80) (= (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@50) o2_30@@64 f_13@@80) (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@64 f_13@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@64 f_13@@80))
))) (forall ((o2_30@@65 T@Ref) (f_13@@81 T@Field_5932_3104) ) (!  (=> (select (|PolymorphicMapType_6421_5932_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@50) null (WandMaskField_10766 pm_f_30@@11))) o2_30@@65 f_13@@81) (= (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@50) o2_30@@65 f_13@@81) (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@65 f_13@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@65 f_13@@81))
))) (forall ((o2_30@@66 T@Ref) (f_13@@82 T@Field_5932_9278) ) (!  (=> (select (|PolymorphicMapType_6421_5932_23280#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@50) null (WandMaskField_10766 pm_f_30@@11))) o2_30@@66 f_13@@82) (= (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@50) o2_30@@66 f_13@@82) (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@66 f_13@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@66 f_13@@82))
))) (forall ((o2_30@@67 T@Ref) (f_13@@83 T@Field_3103_53) ) (!  (=> (select (|PolymorphicMapType_6421_9260_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@50) null (WandMaskField_10766 pm_f_30@@11))) o2_30@@67 f_13@@83) (= (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@50) o2_30@@67 f_13@@83) (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@67 f_13@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@67 f_13@@83))
))) (forall ((o2_30@@68 T@Ref) (f_13@@84 T@Field_3103_5946) ) (!  (=> (select (|PolymorphicMapType_6421_9260_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@50) null (WandMaskField_10766 pm_f_30@@11))) o2_30@@68 f_13@@84) (= (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@50) o2_30@@68 f_13@@84) (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@68 f_13@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@68 f_13@@84))
))) (forall ((o2_30@@69 T@Ref) (f_13@@85 T@Field_9260_9261) ) (!  (=> (select (|PolymorphicMapType_6421_9260_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@50) null (WandMaskField_10766 pm_f_30@@11))) o2_30@@69 f_13@@85) (= (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@50) o2_30@@69 f_13@@85) (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@69 f_13@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@69 f_13@@85))
))) (forall ((o2_30@@70 T@Ref) (f_13@@86 T@Field_9273_9278) ) (!  (=> (select (|PolymorphicMapType_6421_9260_24130#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@50) null (WandMaskField_10766 pm_f_30@@11))) o2_30@@70 f_13@@86) (= (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@50) o2_30@@70 f_13@@86) (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@70 f_13@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@70 f_13@@86))
))) (forall ((o2_30@@71 T@Ref) (f_13@@87 T@Field_3127_53) ) (!  (=> (select (|PolymorphicMapType_6421_10013_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@50) null (WandMaskField_10766 pm_f_30@@11))) o2_30@@71 f_13@@87) (= (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@50) o2_30@@71 f_13@@87) (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@71 f_13@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@71 f_13@@87))
))) (forall ((o2_30@@72 T@Ref) (f_13@@88 T@Field_3127_5946) ) (!  (=> (select (|PolymorphicMapType_6421_10013_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@50) null (WandMaskField_10766 pm_f_30@@11))) o2_30@@72 f_13@@88) (= (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@50) o2_30@@72 f_13@@88) (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@72 f_13@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@72 f_13@@88))
))) (forall ((o2_30@@73 T@Ref) (f_13@@89 T@Field_10013_10014) ) (!  (=> (select (|PolymorphicMapType_6421_10013_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@50) null (WandMaskField_10766 pm_f_30@@11))) o2_30@@73 f_13@@89) (= (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@50) o2_30@@73 f_13@@89) (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@73 f_13@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@73 f_13@@89))
))) (forall ((o2_30@@74 T@Ref) (f_13@@90 T@Field_10026_10031) ) (!  (=> (select (|PolymorphicMapType_6421_10013_24980#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@50) null (WandMaskField_10766 pm_f_30@@11))) o2_30@@74 f_13@@90) (= (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@50) o2_30@@74 f_13@@90) (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@74 f_13@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@74 f_13@@90))
))) (forall ((o2_30@@75 T@Ref) (f_13@@91 T@Field_10766_53) ) (!  (=> (select (|PolymorphicMapType_6421_10766_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@50) null (WandMaskField_10766 pm_f_30@@11))) o2_30@@75 f_13@@91) (= (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@50) o2_30@@75 f_13@@91) (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@75 f_13@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@75 f_13@@91))
))) (forall ((o2_30@@76 T@Ref) (f_13@@92 T@Field_10766_5946) ) (!  (=> (select (|PolymorphicMapType_6421_10766_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@50) null (WandMaskField_10766 pm_f_30@@11))) o2_30@@76 f_13@@92) (= (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@50) o2_30@@76 f_13@@92) (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@76 f_13@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@76 f_13@@92))
))) (forall ((o2_30@@77 T@Ref) (f_13@@93 T@Field_10766_10767) ) (!  (=> (select (|PolymorphicMapType_6421_10766_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@50) null (WandMaskField_10766 pm_f_30@@11))) o2_30@@77 f_13@@93) (= (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@50) o2_30@@77 f_13@@93) (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@77 f_13@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@77 f_13@@93))
))) (forall ((o2_30@@78 T@Ref) (f_13@@94 T@Field_10779_10784) ) (!  (=> (select (|PolymorphicMapType_6421_10766_25830#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@50) null (WandMaskField_10766 pm_f_30@@11))) o2_30@@78 f_13@@94) (= (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@50) o2_30@@78 f_13@@94) (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@78 f_13@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@29) o2_30@@78 f_13@@94))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@29 Mask@@62) (IsWandField_10766_28271 pm_f_30@@11))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_5872) (ExhaleHeap@@30 T@PolymorphicMapType_5872) (Mask@@63 T@PolymorphicMapType_5893) (pm_f_30@@12 T@Field_5932_3104) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@30 Mask@@63) (=> (and (HasDirectPerm_5932_3104 Mask@@63 null pm_f_30@@12) (IsWandField_5932_27914 pm_f_30@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30@@79 T@Ref) (f_13@@95 T@Field_5932_53) ) (!  (=> (select (|PolymorphicMapType_6421_5932_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@51) null (WandMaskField_5932 pm_f_30@@12))) o2_30@@79 f_13@@95) (= (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@51) o2_30@@79 f_13@@95) (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@79 f_13@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@79 f_13@@95))
)) (forall ((o2_30@@80 T@Ref) (f_13@@96 T@Field_5945_5946) ) (!  (=> (select (|PolymorphicMapType_6421_5932_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@51) null (WandMaskField_5932 pm_f_30@@12))) o2_30@@80 f_13@@96) (= (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@51) o2_30@@80 f_13@@96) (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@80 f_13@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@80 f_13@@96))
))) (forall ((o2_30@@81 T@Ref) (f_13@@97 T@Field_5932_3104) ) (!  (=> (select (|PolymorphicMapType_6421_5932_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@51) null (WandMaskField_5932 pm_f_30@@12))) o2_30@@81 f_13@@97) (= (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@51) o2_30@@81 f_13@@97) (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@81 f_13@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@81 f_13@@97))
))) (forall ((o2_30@@82 T@Ref) (f_13@@98 T@Field_5932_9278) ) (!  (=> (select (|PolymorphicMapType_6421_5932_23280#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@51) null (WandMaskField_5932 pm_f_30@@12))) o2_30@@82 f_13@@98) (= (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@51) o2_30@@82 f_13@@98) (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@82 f_13@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@82 f_13@@98))
))) (forall ((o2_30@@83 T@Ref) (f_13@@99 T@Field_3103_53) ) (!  (=> (select (|PolymorphicMapType_6421_9260_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@51) null (WandMaskField_5932 pm_f_30@@12))) o2_30@@83 f_13@@99) (= (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@51) o2_30@@83 f_13@@99) (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@83 f_13@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@83 f_13@@99))
))) (forall ((o2_30@@84 T@Ref) (f_13@@100 T@Field_3103_5946) ) (!  (=> (select (|PolymorphicMapType_6421_9260_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@51) null (WandMaskField_5932 pm_f_30@@12))) o2_30@@84 f_13@@100) (= (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@51) o2_30@@84 f_13@@100) (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@84 f_13@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@84 f_13@@100))
))) (forall ((o2_30@@85 T@Ref) (f_13@@101 T@Field_9260_9261) ) (!  (=> (select (|PolymorphicMapType_6421_9260_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@51) null (WandMaskField_5932 pm_f_30@@12))) o2_30@@85 f_13@@101) (= (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@51) o2_30@@85 f_13@@101) (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@85 f_13@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@85 f_13@@101))
))) (forall ((o2_30@@86 T@Ref) (f_13@@102 T@Field_9273_9278) ) (!  (=> (select (|PolymorphicMapType_6421_9260_24130#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@51) null (WandMaskField_5932 pm_f_30@@12))) o2_30@@86 f_13@@102) (= (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@51) o2_30@@86 f_13@@102) (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@86 f_13@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@86 f_13@@102))
))) (forall ((o2_30@@87 T@Ref) (f_13@@103 T@Field_3127_53) ) (!  (=> (select (|PolymorphicMapType_6421_10013_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@51) null (WandMaskField_5932 pm_f_30@@12))) o2_30@@87 f_13@@103) (= (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@51) o2_30@@87 f_13@@103) (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@87 f_13@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@87 f_13@@103))
))) (forall ((o2_30@@88 T@Ref) (f_13@@104 T@Field_3127_5946) ) (!  (=> (select (|PolymorphicMapType_6421_10013_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@51) null (WandMaskField_5932 pm_f_30@@12))) o2_30@@88 f_13@@104) (= (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@51) o2_30@@88 f_13@@104) (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@88 f_13@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@88 f_13@@104))
))) (forall ((o2_30@@89 T@Ref) (f_13@@105 T@Field_10013_10014) ) (!  (=> (select (|PolymorphicMapType_6421_10013_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@51) null (WandMaskField_5932 pm_f_30@@12))) o2_30@@89 f_13@@105) (= (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@51) o2_30@@89 f_13@@105) (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@89 f_13@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@89 f_13@@105))
))) (forall ((o2_30@@90 T@Ref) (f_13@@106 T@Field_10026_10031) ) (!  (=> (select (|PolymorphicMapType_6421_10013_24980#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@51) null (WandMaskField_5932 pm_f_30@@12))) o2_30@@90 f_13@@106) (= (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@51) o2_30@@90 f_13@@106) (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@90 f_13@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@90 f_13@@106))
))) (forall ((o2_30@@91 T@Ref) (f_13@@107 T@Field_10766_53) ) (!  (=> (select (|PolymorphicMapType_6421_10766_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@51) null (WandMaskField_5932 pm_f_30@@12))) o2_30@@91 f_13@@107) (= (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@51) o2_30@@91 f_13@@107) (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@91 f_13@@107)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@91 f_13@@107))
))) (forall ((o2_30@@92 T@Ref) (f_13@@108 T@Field_10766_5946) ) (!  (=> (select (|PolymorphicMapType_6421_10766_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@51) null (WandMaskField_5932 pm_f_30@@12))) o2_30@@92 f_13@@108) (= (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@51) o2_30@@92 f_13@@108) (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@92 f_13@@108)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@92 f_13@@108))
))) (forall ((o2_30@@93 T@Ref) (f_13@@109 T@Field_10766_10767) ) (!  (=> (select (|PolymorphicMapType_6421_10766_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@51) null (WandMaskField_5932 pm_f_30@@12))) o2_30@@93 f_13@@109) (= (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@51) o2_30@@93 f_13@@109) (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@93 f_13@@109)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@93 f_13@@109))
))) (forall ((o2_30@@94 T@Ref) (f_13@@110 T@Field_10779_10784) ) (!  (=> (select (|PolymorphicMapType_6421_10766_25830#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@51) null (WandMaskField_5932 pm_f_30@@12))) o2_30@@94 f_13@@110) (= (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@51) o2_30@@94 f_13@@110) (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@94 f_13@@110)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@30) o2_30@@94 f_13@@110))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@30 Mask@@63) (IsWandField_5932_27914 pm_f_30@@12))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_5872) (ExhaleHeap@@31 T@PolymorphicMapType_5872) (Mask@@64 T@PolymorphicMapType_5893) (pm_f_30@@13 T@Field_10013_10014) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@31 Mask@@64) (=> (and (HasDirectPerm_3127_3128 Mask@@64 null pm_f_30@@13) (IsWandField_3127_27557 pm_f_30@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30@@95 T@Ref) (f_13@@111 T@Field_5932_53) ) (!  (=> (select (|PolymorphicMapType_6421_5932_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@52) null (WandMaskField_3127 pm_f_30@@13))) o2_30@@95 f_13@@111) (= (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@52) o2_30@@95 f_13@@111) (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@95 f_13@@111)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@95 f_13@@111))
)) (forall ((o2_30@@96 T@Ref) (f_13@@112 T@Field_5945_5946) ) (!  (=> (select (|PolymorphicMapType_6421_5932_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@52) null (WandMaskField_3127 pm_f_30@@13))) o2_30@@96 f_13@@112) (= (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@52) o2_30@@96 f_13@@112) (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@96 f_13@@112)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@96 f_13@@112))
))) (forall ((o2_30@@97 T@Ref) (f_13@@113 T@Field_5932_3104) ) (!  (=> (select (|PolymorphicMapType_6421_5932_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@52) null (WandMaskField_3127 pm_f_30@@13))) o2_30@@97 f_13@@113) (= (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@52) o2_30@@97 f_13@@113) (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@97 f_13@@113)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@97 f_13@@113))
))) (forall ((o2_30@@98 T@Ref) (f_13@@114 T@Field_5932_9278) ) (!  (=> (select (|PolymorphicMapType_6421_5932_23280#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@52) null (WandMaskField_3127 pm_f_30@@13))) o2_30@@98 f_13@@114) (= (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@52) o2_30@@98 f_13@@114) (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@98 f_13@@114)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@98 f_13@@114))
))) (forall ((o2_30@@99 T@Ref) (f_13@@115 T@Field_3103_53) ) (!  (=> (select (|PolymorphicMapType_6421_9260_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@52) null (WandMaskField_3127 pm_f_30@@13))) o2_30@@99 f_13@@115) (= (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@52) o2_30@@99 f_13@@115) (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@99 f_13@@115)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@99 f_13@@115))
))) (forall ((o2_30@@100 T@Ref) (f_13@@116 T@Field_3103_5946) ) (!  (=> (select (|PolymorphicMapType_6421_9260_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@52) null (WandMaskField_3127 pm_f_30@@13))) o2_30@@100 f_13@@116) (= (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@52) o2_30@@100 f_13@@116) (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@100 f_13@@116)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@100 f_13@@116))
))) (forall ((o2_30@@101 T@Ref) (f_13@@117 T@Field_9260_9261) ) (!  (=> (select (|PolymorphicMapType_6421_9260_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@52) null (WandMaskField_3127 pm_f_30@@13))) o2_30@@101 f_13@@117) (= (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@52) o2_30@@101 f_13@@117) (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@101 f_13@@117)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@101 f_13@@117))
))) (forall ((o2_30@@102 T@Ref) (f_13@@118 T@Field_9273_9278) ) (!  (=> (select (|PolymorphicMapType_6421_9260_24130#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@52) null (WandMaskField_3127 pm_f_30@@13))) o2_30@@102 f_13@@118) (= (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@52) o2_30@@102 f_13@@118) (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@102 f_13@@118)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@102 f_13@@118))
))) (forall ((o2_30@@103 T@Ref) (f_13@@119 T@Field_3127_53) ) (!  (=> (select (|PolymorphicMapType_6421_10013_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@52) null (WandMaskField_3127 pm_f_30@@13))) o2_30@@103 f_13@@119) (= (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@52) o2_30@@103 f_13@@119) (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@103 f_13@@119)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@103 f_13@@119))
))) (forall ((o2_30@@104 T@Ref) (f_13@@120 T@Field_3127_5946) ) (!  (=> (select (|PolymorphicMapType_6421_10013_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@52) null (WandMaskField_3127 pm_f_30@@13))) o2_30@@104 f_13@@120) (= (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@52) o2_30@@104 f_13@@120) (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@104 f_13@@120)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@104 f_13@@120))
))) (forall ((o2_30@@105 T@Ref) (f_13@@121 T@Field_10013_10014) ) (!  (=> (select (|PolymorphicMapType_6421_10013_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@52) null (WandMaskField_3127 pm_f_30@@13))) o2_30@@105 f_13@@121) (= (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@52) o2_30@@105 f_13@@121) (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@105 f_13@@121)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@105 f_13@@121))
))) (forall ((o2_30@@106 T@Ref) (f_13@@122 T@Field_10026_10031) ) (!  (=> (select (|PolymorphicMapType_6421_10013_24980#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@52) null (WandMaskField_3127 pm_f_30@@13))) o2_30@@106 f_13@@122) (= (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@52) o2_30@@106 f_13@@122) (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@106 f_13@@122)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@106 f_13@@122))
))) (forall ((o2_30@@107 T@Ref) (f_13@@123 T@Field_10766_53) ) (!  (=> (select (|PolymorphicMapType_6421_10766_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@52) null (WandMaskField_3127 pm_f_30@@13))) o2_30@@107 f_13@@123) (= (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@52) o2_30@@107 f_13@@123) (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@107 f_13@@123)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@107 f_13@@123))
))) (forall ((o2_30@@108 T@Ref) (f_13@@124 T@Field_10766_5946) ) (!  (=> (select (|PolymorphicMapType_6421_10766_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@52) null (WandMaskField_3127 pm_f_30@@13))) o2_30@@108 f_13@@124) (= (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@52) o2_30@@108 f_13@@124) (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@108 f_13@@124)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@108 f_13@@124))
))) (forall ((o2_30@@109 T@Ref) (f_13@@125 T@Field_10766_10767) ) (!  (=> (select (|PolymorphicMapType_6421_10766_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@52) null (WandMaskField_3127 pm_f_30@@13))) o2_30@@109 f_13@@125) (= (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@52) o2_30@@109 f_13@@125) (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@109 f_13@@125)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@109 f_13@@125))
))) (forall ((o2_30@@110 T@Ref) (f_13@@126 T@Field_10779_10784) ) (!  (=> (select (|PolymorphicMapType_6421_10766_25830#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@52) null (WandMaskField_3127 pm_f_30@@13))) o2_30@@110 f_13@@126) (= (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@52) o2_30@@110 f_13@@126) (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@110 f_13@@126)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@31) o2_30@@110 f_13@@126))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@31 Mask@@64) (IsWandField_3127_27557 pm_f_30@@13))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_5872) (ExhaleHeap@@32 T@PolymorphicMapType_5872) (Mask@@65 T@PolymorphicMapType_5893) (pm_f_30@@14 T@Field_9260_9261) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@32 Mask@@65) (=> (and (HasDirectPerm_3103_3104 Mask@@65 null pm_f_30@@14) (IsWandField_3103_27200 pm_f_30@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30@@111 T@Ref) (f_13@@127 T@Field_5932_53) ) (!  (=> (select (|PolymorphicMapType_6421_5932_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@53) null (WandMaskField_3103 pm_f_30@@14))) o2_30@@111 f_13@@127) (= (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@53) o2_30@@111 f_13@@127) (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@111 f_13@@127)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@111 f_13@@127))
)) (forall ((o2_30@@112 T@Ref) (f_13@@128 T@Field_5945_5946) ) (!  (=> (select (|PolymorphicMapType_6421_5932_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@53) null (WandMaskField_3103 pm_f_30@@14))) o2_30@@112 f_13@@128) (= (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| Heap@@53) o2_30@@112 f_13@@128) (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@112 f_13@@128)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_2977_2978#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@112 f_13@@128))
))) (forall ((o2_30@@113 T@Ref) (f_13@@129 T@Field_5932_3104) ) (!  (=> (select (|PolymorphicMapType_6421_5932_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@53) null (WandMaskField_3103 pm_f_30@@14))) o2_30@@113 f_13@@129) (= (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| Heap@@53) o2_30@@113 f_13@@129) (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@113 f_13@@129)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_5932_3104#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@113 f_13@@129))
))) (forall ((o2_30@@114 T@Ref) (f_13@@130 T@Field_5932_9278) ) (!  (=> (select (|PolymorphicMapType_6421_5932_23280#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@53) null (WandMaskField_3103 pm_f_30@@14))) o2_30@@114 f_13@@130) (= (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| Heap@@53) o2_30@@114 f_13@@130) (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@114 f_13@@130)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_5932_20141#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@114 f_13@@130))
))) (forall ((o2_30@@115 T@Ref) (f_13@@131 T@Field_3103_53) ) (!  (=> (select (|PolymorphicMapType_6421_9260_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@53) null (WandMaskField_3103 pm_f_30@@14))) o2_30@@115 f_13@@131) (= (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| Heap@@53) o2_30@@115 f_13@@131) (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@115 f_13@@131)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3103_53#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@115 f_13@@131))
))) (forall ((o2_30@@116 T@Ref) (f_13@@132 T@Field_3103_5946) ) (!  (=> (select (|PolymorphicMapType_6421_9260_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@53) null (WandMaskField_3103 pm_f_30@@14))) o2_30@@116 f_13@@132) (= (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| Heap@@53) o2_30@@116 f_13@@132) (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@116 f_13@@132)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3103_5946#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@116 f_13@@132))
))) (forall ((o2_30@@117 T@Ref) (f_13@@133 T@Field_9260_9261) ) (!  (=> (select (|PolymorphicMapType_6421_9260_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@53) null (WandMaskField_3103 pm_f_30@@14))) o2_30@@117 f_13@@133) (= (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@53) o2_30@@117 f_13@@133) (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@117 f_13@@133)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@117 f_13@@133))
))) (forall ((o2_30@@118 T@Ref) (f_13@@134 T@Field_9273_9278) ) (!  (=> (select (|PolymorphicMapType_6421_9260_24130#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@53) null (WandMaskField_3103 pm_f_30@@14))) o2_30@@118 f_13@@134) (= (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@53) o2_30@@118 f_13@@134) (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@118 f_13@@134)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@118 f_13@@134))
))) (forall ((o2_30@@119 T@Ref) (f_13@@135 T@Field_3127_53) ) (!  (=> (select (|PolymorphicMapType_6421_10013_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@53) null (WandMaskField_3103 pm_f_30@@14))) o2_30@@119 f_13@@135) (= (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| Heap@@53) o2_30@@119 f_13@@135) (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@119 f_13@@135)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3127_53#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@119 f_13@@135))
))) (forall ((o2_30@@120 T@Ref) (f_13@@136 T@Field_3127_5946) ) (!  (=> (select (|PolymorphicMapType_6421_10013_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@53) null (WandMaskField_3103 pm_f_30@@14))) o2_30@@120 f_13@@136) (= (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| Heap@@53) o2_30@@120 f_13@@136) (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@120 f_13@@136)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3127_5946#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@120 f_13@@136))
))) (forall ((o2_30@@121 T@Ref) (f_13@@137 T@Field_10013_10014) ) (!  (=> (select (|PolymorphicMapType_6421_10013_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@53) null (WandMaskField_3103 pm_f_30@@14))) o2_30@@121 f_13@@137) (= (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@53) o2_30@@121 f_13@@137) (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@121 f_13@@137)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@121 f_13@@137))
))) (forall ((o2_30@@122 T@Ref) (f_13@@138 T@Field_10026_10031) ) (!  (=> (select (|PolymorphicMapType_6421_10013_24980#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@53) null (WandMaskField_3103 pm_f_30@@14))) o2_30@@122 f_13@@138) (= (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| Heap@@53) o2_30@@122 f_13@@138) (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@122 f_13@@138)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_3127_19213#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@122 f_13@@138))
))) (forall ((o2_30@@123 T@Ref) (f_13@@139 T@Field_10766_53) ) (!  (=> (select (|PolymorphicMapType_6421_10766_53#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@53) null (WandMaskField_3103 pm_f_30@@14))) o2_30@@123 f_13@@139) (= (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| Heap@@53) o2_30@@123 f_13@@139) (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@123 f_13@@139)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_10766_53#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@123 f_13@@139))
))) (forall ((o2_30@@124 T@Ref) (f_13@@140 T@Field_10766_5946) ) (!  (=> (select (|PolymorphicMapType_6421_10766_5946#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@53) null (WandMaskField_3103 pm_f_30@@14))) o2_30@@124 f_13@@140) (= (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| Heap@@53) o2_30@@124 f_13@@140) (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@124 f_13@@140)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_10766_5946#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@124 f_13@@140))
))) (forall ((o2_30@@125 T@Ref) (f_13@@141 T@Field_10766_10767) ) (!  (=> (select (|PolymorphicMapType_6421_10766_9261#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@53) null (WandMaskField_3103 pm_f_30@@14))) o2_30@@125 f_13@@141) (= (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| Heap@@53) o2_30@@125 f_13@@141) (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@125 f_13@@141)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_10766_3104#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@125 f_13@@141))
))) (forall ((o2_30@@126 T@Ref) (f_13@@142 T@Field_10779_10784) ) (!  (=> (select (|PolymorphicMapType_6421_10766_25830#PolymorphicMapType_6421| (select (|PolymorphicMapType_5872_3103_18293#PolymorphicMapType_5872| Heap@@53) null (WandMaskField_3103 pm_f_30@@14))) o2_30@@126 f_13@@142) (= (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| Heap@@53) o2_30@@126 f_13@@142) (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@126 f_13@@142)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5872_10766_21098#PolymorphicMapType_5872| ExhaleHeap@@32) o2_30@@126 f_13@@142))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@32 Mask@@65) (IsWandField_3103_27200 pm_f_30@@14))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_5893)
(declare-fun r_24 () T@Ref)
(declare-fun Heap@@54 () T@PolymorphicMapType_5872)
(declare-fun r_22 () T@Ref)
(declare-fun ref () T@Ref)
(set-info :boogie-vc-id permOnlyOnePredicate2)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon7_correct true))
(let ((anon12_Else_correct  (=> (and (not (HasDirectPerm_3103_3104 Mask@0 null (P1 r_24))) (= (ControlFlow 0 10) 7)) anon7_correct)))
(let ((anon12_Then_correct  (=> (HasDirectPerm_3103_3104 Mask@0 null (P1 r_24)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_3103_3104 Mask@0 null (P1 r_24))) (=> (HasDirectPerm_3103_3104 Mask@0 null (P1 r_24)) (=> (= (ControlFlow 0 8) 7) anon7_correct))))))
(let ((anon11_Else_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (forall ((r_3 T@Ref) ) (!  (=> (HasDirectPerm_3103_3104 Mask@0 null (P1 r_3)) false)
 :qid |stdinbpl.588:15|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_5893_3103_3104#PolymorphicMapType_5893| Mask@0) null (P1 r_3)))
 :pattern ( (select (|PolymorphicMapType_5872_3103_3104#PolymorphicMapType_5872| Heap@@54) null (P1 r_3)))
)))))
(let ((anon9_Else_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (forall ((r_1_1 T@Ref) ) (!  (=> (HasDirectPerm_3127_3128 Mask@0 null (P2 r_1_1)) false)
 :qid |stdinbpl.569:15|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_5893_3127_3128#PolymorphicMapType_5893| Mask@0) null (P2 r_1_1)))
 :pattern ( (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@54) null (P2 r_1_1)))
))) (=> (forall ((r_1_1@@0 T@Ref) ) (!  (=> (HasDirectPerm_3127_3128 Mask@0 null (P2 r_1_1@@0)) false)
 :qid |stdinbpl.569:15|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_5893_3127_3128#PolymorphicMapType_5893| Mask@0) null (P2 r_1_1@@0)))
 :pattern ( (select (|PolymorphicMapType_5872_3127_3128#PolymorphicMapType_5872| Heap@@54) null (P2 r_1_1@@0)))
)) (=> (state Heap@@54 Mask@0) (and (and (=> (= (ControlFlow 0 11) 6) anon11_Else_correct) (=> (= (ControlFlow 0 11) 8) anon12_Then_correct)) (=> (= (ControlFlow 0 11) 10) anon12_Else_correct)))))))
(let ((anon3_correct true))
(let ((anon10_Else_correct  (=> (and (not (HasDirectPerm_3127_3128 Mask@0 null (P2 r_22))) (= (ControlFlow 0 4) 1)) anon3_correct)))
(let ((anon10_Then_correct  (=> (HasDirectPerm_3127_3128 Mask@0 null (P2 r_22)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_3127_3128 Mask@0 null (P2 r_22))) (=> (HasDirectPerm_3127_3128 Mask@0 null (P2 r_22)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))
(let ((anon0_correct  (=> (state Heap@@54 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_5872_2974_53#PolymorphicMapType_5872| Heap@@54) ref $allocated)) (=> (and (and (= Mask@0 (PolymorphicMapType_5893 (store (|PolymorphicMapType_5893_3103_3104#PolymorphicMapType_5893| ZeroMask) null (P1 ref) (+ (select (|PolymorphicMapType_5893_3103_3104#PolymorphicMapType_5893| ZeroMask) null (P1 ref)) FullPerm)) (|PolymorphicMapType_5893_3127_3128#PolymorphicMapType_5893| ZeroMask) (|PolymorphicMapType_5893_3151_3152#PolymorphicMapType_5893| ZeroMask) (|PolymorphicMapType_5893_3103_53#PolymorphicMapType_5893| ZeroMask) (|PolymorphicMapType_5893_3103_5946#PolymorphicMapType_5893| ZeroMask) (|PolymorphicMapType_5893_3103_34861#PolymorphicMapType_5893| ZeroMask) (|PolymorphicMapType_5893_3127_53#PolymorphicMapType_5893| ZeroMask) (|PolymorphicMapType_5893_3127_5946#PolymorphicMapType_5893| ZeroMask) (|PolymorphicMapType_5893_3127_35192#PolymorphicMapType_5893| ZeroMask) (|PolymorphicMapType_5893_3151_53#PolymorphicMapType_5893| ZeroMask) (|PolymorphicMapType_5893_3151_5946#PolymorphicMapType_5893| ZeroMask) (|PolymorphicMapType_5893_3151_35523#PolymorphicMapType_5893| ZeroMask) (|PolymorphicMapType_5893_5932_3104#PolymorphicMapType_5893| ZeroMask) (|PolymorphicMapType_5893_5932_53#PolymorphicMapType_5893| ZeroMask) (|PolymorphicMapType_5893_5932_5946#PolymorphicMapType_5893| ZeroMask) (|PolymorphicMapType_5893_5932_35869#PolymorphicMapType_5893| ZeroMask))) (state Heap@@54 Mask@0)) (and (state Heap@@54 Mask@0) (state Heap@@54 Mask@0))) (and (and (=> (= (ControlFlow 0 13) 11) anon9_Else_correct) (=> (= (ControlFlow 0 13) 2) anon10_Then_correct)) (=> (= (ControlFlow 0 13) 4) anon10_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 14) 13) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
