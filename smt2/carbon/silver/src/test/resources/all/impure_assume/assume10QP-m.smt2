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
(declare-sort T@Field_11485_53 0)
(declare-sort T@Field_11498_11499 0)
(declare-sort T@Field_19125_4812 0)
(declare-sort T@Field_11485_28287 0)
(declare-sort T@Field_11485_28154 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_11446 0)) (((PolymorphicMapType_11446 (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| (Array T@Ref T@Field_19125_4812 Real)) (|PolymorphicMapType_11446_7767_53#PolymorphicMapType_11446| (Array T@Ref T@Field_11485_53 Real)) (|PolymorphicMapType_11446_7767_11499#PolymorphicMapType_11446| (Array T@Ref T@Field_11498_11499 Real)) (|PolymorphicMapType_11446_7767_28154#PolymorphicMapType_11446| (Array T@Ref T@Field_11485_28154 Real)) (|PolymorphicMapType_11446_7767_32409#PolymorphicMapType_11446| (Array T@Ref T@Field_11485_28287 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11974 0)) (((PolymorphicMapType_11974 (|PolymorphicMapType_11974_11485_53#PolymorphicMapType_11974| (Array T@Ref T@Field_11485_53 Bool)) (|PolymorphicMapType_11974_11485_11499#PolymorphicMapType_11974| (Array T@Ref T@Field_11498_11499 Bool)) (|PolymorphicMapType_11974_11485_4812#PolymorphicMapType_11974| (Array T@Ref T@Field_19125_4812 Bool)) (|PolymorphicMapType_11974_11485_28154#PolymorphicMapType_11974| (Array T@Ref T@Field_11485_28154 Bool)) (|PolymorphicMapType_11974_11485_29465#PolymorphicMapType_11974| (Array T@Ref T@Field_11485_28287 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11425 0)) (((PolymorphicMapType_11425 (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| (Array T@Ref T@Field_11485_53 Bool)) (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| (Array T@Ref T@Field_11498_11499 T@Ref)) (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| (Array T@Ref T@Field_19125_4812 Int)) (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| (Array T@Ref T@Field_11485_28287 T@PolymorphicMapType_11974)) (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| (Array T@Ref T@Field_11485_28154 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_11485_53)
(declare-fun f_7 () T@Field_19125_4812)
(declare-fun succHeap (T@PolymorphicMapType_11425 T@PolymorphicMapType_11425) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11425 T@PolymorphicMapType_11425) Bool)
(declare-fun __iar__assume_helper_8 (Bool Bool Bool Bool Bool Bool Bool Bool Real Real Real Real Real Real Real Real Real) Real)
(declare-fun NoPerm () Real)
(declare-fun state (T@PolymorphicMapType_11425 T@PolymorphicMapType_11446) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11446) Bool)
(declare-fun __iar__assume_helper_1 (Bool Real Real) Real)
(declare-fun ZeroPMask () T@PolymorphicMapType_11974)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun __iar__assume_helper_7 (Bool Bool Bool Bool Bool Bool Bool Real Real Real Real Real Real Real Real) Real)
(declare-fun |Set#Union_7804| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_7804| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_7804| (T@Ref) (Array T@Ref Bool))
(declare-fun __iar__assume_helper_6 (Bool Bool Bool Bool Bool Bool Real Real Real Real Real Real Real) Real)
(declare-fun |Set#Card_7804| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11425 T@PolymorphicMapType_11425 T@PolymorphicMapType_11446) Bool)
(declare-fun IsPredicateField_11485_28245 (T@Field_11485_28154) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11485 (T@Field_11485_28154) T@Field_11485_28287)
(declare-fun HasDirectPerm_11485_28218 (T@PolymorphicMapType_11446 T@Ref T@Field_11485_28154) Bool)
(declare-fun IsWandField_11485_29992 (T@Field_11485_28154) Bool)
(declare-fun WandMaskField_11485 (T@Field_11485_28154) T@Field_11485_28287)
(declare-fun dummyHeap () T@PolymorphicMapType_11425)
(declare-fun ZeroMask () T@PolymorphicMapType_11446)
(declare-fun __iar__assume_helper_9 (Bool Bool Bool Bool Bool Bool Bool Bool Bool Real Real Real Real Real Real Real Real Real Real) Real)
(declare-fun InsidePredicate_11485_11485 (T@Field_11485_28154 T@FrameType T@Field_11485_28154 T@FrameType) Bool)
(declare-fun __iar__assume_helper_2 (Bool Bool Real Real Real) Real)
(declare-fun IsPredicateField_7767_4812 (T@Field_19125_4812) Bool)
(declare-fun IsWandField_7767_4812 (T@Field_19125_4812) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7767_33538 (T@Field_11485_28287) Bool)
(declare-fun IsWandField_7767_33554 (T@Field_11485_28287) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7767_11499 (T@Field_11498_11499) Bool)
(declare-fun IsWandField_7767_11499 (T@Field_11498_11499) Bool)
(declare-fun IsPredicateField_7767_53 (T@Field_11485_53) Bool)
(declare-fun IsWandField_7767_53 (T@Field_11485_53) Bool)
(declare-fun HasDirectPerm_11485_33992 (T@PolymorphicMapType_11446 T@Ref T@Field_11485_28287) Bool)
(declare-fun HasDirectPerm_11485_4812 (T@PolymorphicMapType_11446 T@Ref T@Field_19125_4812) Bool)
(declare-fun HasDirectPerm_11485_11499 (T@PolymorphicMapType_11446 T@Ref T@Field_11498_11499) Bool)
(declare-fun HasDirectPerm_11485_53 (T@PolymorphicMapType_11446 T@Ref T@Field_11485_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun __iar__assume_helper_3 (Bool Bool Bool Real Real Real Real) Real)
(declare-fun sumMask (T@PolymorphicMapType_11446 T@PolymorphicMapType_11446 T@PolymorphicMapType_11446) Bool)
(declare-fun |Set#Difference_7804| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun __iar__assume_helper_10 (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Real Real Real Real Real Real Real Real Real Real Real) Real)
(declare-fun |Set#UnionOne_7804| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Empty_7804| () (Array T@Ref Bool))
(declare-fun __iar__assume_helper_4 (Bool Bool Bool Bool Real Real Real Real Real) Real)
(declare-fun __iar__assume_helper_5 (Bool Bool Bool Bool Bool Real Real Real Real Real Real) Real)
(assert (forall ((Heap0 T@PolymorphicMapType_11425) (Heap1 T@PolymorphicMapType_11425) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((c_8 Bool) (c_7 Bool) (c_6 Bool) (c_5_1 Bool) (c_4_2 Bool) (c_3 Bool) (c_2 Bool) (c_1 Bool) (p_8 Real) (p_7_3 Real) (p_6_1 Real) (p_5 Real) (p_4_1 Real) (p_3_1 Real) (p_2_1 Real) (p_1_1 Real) (p_0_1 Real) ) (! (= (__iar__assume_helper_8 c_8 c_7 c_6 c_5_1 c_4_2 c_3 c_2 c_1 p_8 p_7_3 p_6_1 p_5 p_4_1 p_3_1 p_2_1 p_1_1 p_0_1) (+ (+ (+ (+ (+ (+ (+ (+ p_0_1 (ite c_1 p_1_1 NoPerm)) (ite c_2 p_2_1 NoPerm)) (ite c_3 p_3_1 NoPerm)) (ite c_4_2 p_4_1 NoPerm)) (ite c_5_1 p_5 NoPerm)) (ite c_6 p_6_1 NoPerm)) (ite c_7 p_7_3 NoPerm)) (ite c_8 p_8 NoPerm)))
 :qid |stdinbpl.557:15|
 :skolemid |89|
 :pattern ( (__iar__assume_helper_8 c_8 c_7 c_6 c_5_1 c_4_2 c_3 c_2 c_1 p_8 p_7_3 p_6_1 p_5 p_4_1 p_3_1 p_2_1 p_1_1 p_0_1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11425) (Mask T@PolymorphicMapType_11446) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11425) (Heap1@@0 T@PolymorphicMapType_11425) (Heap2 T@PolymorphicMapType_11425) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((c_1@@0 Bool) (p_1_1@@0 Real) (p_0_1@@0 Real) ) (! (= (__iar__assume_helper_1 c_1@@0 p_1_1@@0 p_0_1@@0) (+ p_0_1@@0 (ite c_1@@0 p_1_1@@0 NoPerm)))
 :qid |stdinbpl.515:15|
 :skolemid |82|
 :pattern ( (__iar__assume_helper_1 c_1@@0 p_1_1@@0 p_0_1@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11485_28287) ) (!  (not (select (|PolymorphicMapType_11974_11485_29465#PolymorphicMapType_11974| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11974_11485_29465#PolymorphicMapType_11974| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11485_28154) ) (!  (not (select (|PolymorphicMapType_11974_11485_28154#PolymorphicMapType_11974| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11974_11485_28154#PolymorphicMapType_11974| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_19125_4812) ) (!  (not (select (|PolymorphicMapType_11974_11485_4812#PolymorphicMapType_11974| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11974_11485_4812#PolymorphicMapType_11974| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11498_11499) ) (!  (not (select (|PolymorphicMapType_11974_11485_11499#PolymorphicMapType_11974| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11974_11485_11499#PolymorphicMapType_11974| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11485_53) ) (!  (not (select (|PolymorphicMapType_11974_11485_53#PolymorphicMapType_11974| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11974_11485_53#PolymorphicMapType_11974| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.273:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((c_7@@0 Bool) (c_6@@0 Bool) (c_5_1@@0 Bool) (c_4_2@@0 Bool) (c_3@@0 Bool) (c_2@@0 Bool) (c_1@@1 Bool) (p_7_3@@0 Real) (p_6_1@@0 Real) (p_5@@0 Real) (p_4_1@@0 Real) (p_3_1@@0 Real) (p_2_1@@0 Real) (p_1_1@@1 Real) (p_0_1@@1 Real) ) (! (= (__iar__assume_helper_7 c_7@@0 c_6@@0 c_5_1@@0 c_4_2@@0 c_3@@0 c_2@@0 c_1@@1 p_7_3@@0 p_6_1@@0 p_5@@0 p_4_1@@0 p_3_1@@0 p_2_1@@0 p_1_1@@1 p_0_1@@1) (+ (+ (+ (+ (+ (+ (+ p_0_1@@1 (ite c_1@@1 p_1_1@@1 NoPerm)) (ite c_2@@0 p_2_1@@0 NoPerm)) (ite c_3@@0 p_3_1@@0 NoPerm)) (ite c_4_2@@0 p_4_1@@0 NoPerm)) (ite c_5_1@@0 p_5@@0 NoPerm)) (ite c_6@@0 p_6_1@@0 NoPerm)) (ite c_7@@0 p_7_3@@0 NoPerm)))
 :qid |stdinbpl.551:15|
 :skolemid |88|
 :pattern ( (__iar__assume_helper_7 c_7@@0 c_6@@0 c_5_1@@0 c_4_2@@0 c_3@@0 c_2@@0 c_1@@1 p_7_3@@0 p_6_1@@0 p_5@@0 p_4_1@@0 p_3_1@@0 p_2_1@@0 p_1_1@@1 p_0_1@@1))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_7804| (|Set#Union_7804| a@@0 b@@0) b@@0) (|Set#Union_7804| a@@0 b@@0))
 :qid |stdinbpl.225:18|
 :skolemid |38|
 :pattern ( (|Set#Union_7804| (|Set#Union_7804| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_7804| (|Set#Intersection_7804| a@@1 b@@1) b@@1) (|Set#Intersection_7804| a@@1 b@@1))
 :qid |stdinbpl.229:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_7804| (|Set#Intersection_7804| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_7804| r) o) (= r o))
 :qid |stdinbpl.194:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_7804| r) o))
)))
(assert (forall ((c_6@@1 Bool) (c_5_1@@1 Bool) (c_4_2@@1 Bool) (c_3@@1 Bool) (c_2@@1 Bool) (c_1@@2 Bool) (p_6_1@@1 Real) (p_5@@1 Real) (p_4_1@@1 Real) (p_3_1@@1 Real) (p_2_1@@1 Real) (p_1_1@@2 Real) (p_0_1@@2 Real) ) (! (= (__iar__assume_helper_6 c_6@@1 c_5_1@@1 c_4_2@@1 c_3@@1 c_2@@1 c_1@@2 p_6_1@@1 p_5@@1 p_4_1@@1 p_3_1@@1 p_2_1@@1 p_1_1@@2 p_0_1@@2) (+ (+ (+ (+ (+ (+ p_0_1@@2 (ite c_1@@2 p_1_1@@2 NoPerm)) (ite c_2@@1 p_2_1@@1 NoPerm)) (ite c_3@@1 p_3_1@@1 NoPerm)) (ite c_4_2@@1 p_4_1@@1 NoPerm)) (ite c_5_1@@1 p_5@@1 NoPerm)) (ite c_6@@1 p_6_1@@1 NoPerm)))
 :qid |stdinbpl.545:15|
 :skolemid |87|
 :pattern ( (__iar__assume_helper_6 c_6@@1 c_5_1@@1 c_4_2@@1 c_3@@1 c_2@@1 c_1@@2 p_6_1@@1 p_5@@1 p_4_1@@1 p_3_1@@1 p_2_1@@1 p_1_1@@2 p_0_1@@2))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_7804| (|Set#Union_7804| a@@2 b@@2)) (|Set#Card_7804| (|Set#Intersection_7804| a@@2 b@@2))) (+ (|Set#Card_7804| a@@2) (|Set#Card_7804| b@@2)))
 :qid |stdinbpl.233:18|
 :skolemid |42|
 :pattern ( (|Set#Card_7804| (|Set#Union_7804| a@@2 b@@2)))
 :pattern ( (|Set#Card_7804| (|Set#Intersection_7804| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.276:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11425) (ExhaleHeap T@PolymorphicMapType_11425) (Mask@@0 T@PolymorphicMapType_11446) (pm_f_40 T@Field_11485_28154) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11485_28218 Mask@@0 null pm_f_40) (IsPredicateField_11485_28245 pm_f_40)) (= (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@0) null (PredicateMaskField_11485 pm_f_40)) (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| ExhaleHeap) null (PredicateMaskField_11485 pm_f_40)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_11485_28245 pm_f_40) (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| ExhaleHeap) null (PredicateMaskField_11485 pm_f_40)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11425) (ExhaleHeap@@0 T@PolymorphicMapType_11425) (Mask@@1 T@PolymorphicMapType_11446) (pm_f_40@@0 T@Field_11485_28154) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11485_28218 Mask@@1 null pm_f_40@@0) (IsWandField_11485_29992 pm_f_40@@0)) (= (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@1) null (WandMaskField_11485 pm_f_40@@0)) (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| ExhaleHeap@@0) null (WandMaskField_11485 pm_f_40@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_11485_29992 pm_f_40@@0) (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| ExhaleHeap@@0) null (WandMaskField_11485 pm_f_40@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((c_9 Bool) (c_8@@0 Bool) (c_7@@1 Bool) (c_6@@2 Bool) (c_5_1@@2 Bool) (c_4_2@@2 Bool) (c_3@@2 Bool) (c_2@@2 Bool) (c_1@@3 Bool) (p_9_3 Real) (p_8@@0 Real) (p_7_3@@1 Real) (p_6_1@@2 Real) (p_5@@2 Real) (p_4_1@@2 Real) (p_3_1@@2 Real) (p_2_1@@2 Real) (p_1_1@@3 Real) (p_0_1@@3 Real) ) (! (= (__iar__assume_helper_9 c_9 c_8@@0 c_7@@1 c_6@@2 c_5_1@@2 c_4_2@@2 c_3@@2 c_2@@2 c_1@@3 p_9_3 p_8@@0 p_7_3@@1 p_6_1@@2 p_5@@2 p_4_1@@2 p_3_1@@2 p_2_1@@2 p_1_1@@3 p_0_1@@3) (+ (+ (+ (+ (+ (+ (+ (+ (+ p_0_1@@3 (ite c_1@@3 p_1_1@@3 NoPerm)) (ite c_2@@2 p_2_1@@2 NoPerm)) (ite c_3@@2 p_3_1@@2 NoPerm)) (ite c_4_2@@2 p_4_1@@2 NoPerm)) (ite c_5_1@@2 p_5@@2 NoPerm)) (ite c_6@@2 p_6_1@@2 NoPerm)) (ite c_7@@1 p_7_3@@1 NoPerm)) (ite c_8@@0 p_8@@0 NoPerm)) (ite c_9 p_9_3 NoPerm)))
 :qid |stdinbpl.563:15|
 :skolemid |90|
 :pattern ( (__iar__assume_helper_9 c_9 c_8@@0 c_7@@1 c_6@@2 c_5_1@@2 c_4_2@@2 c_3@@2 c_2@@2 c_1@@3 p_9_3 p_8@@0 p_7_3@@1 p_6_1@@2 p_5@@2 p_4_1@@2 p_3_1@@2 p_2_1@@2 p_1_1@@3 p_0_1@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11425) (ExhaleHeap@@1 T@PolymorphicMapType_11425) (Mask@@2 T@PolymorphicMapType_11446) (o_60 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| Heap@@2) o_60 $allocated) (select (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| ExhaleHeap@@1) o_60 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| ExhaleHeap@@1) o_60 $allocated))
)))
(assert (forall ((p T@Field_11485_28154) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11485_11485 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11485_11485 p v_1 p w))
)))
(assert (forall ((c_2@@3 Bool) (c_1@@4 Bool) (p_2_1@@3 Real) (p_1_1@@4 Real) (p_0_1@@4 Real) ) (! (= (__iar__assume_helper_2 c_2@@3 c_1@@4 p_2_1@@3 p_1_1@@4 p_0_1@@4) (+ (+ p_0_1@@4 (ite c_1@@4 p_1_1@@4 NoPerm)) (ite c_2@@3 p_2_1@@3 NoPerm)))
 :qid |stdinbpl.521:15|
 :skolemid |83|
 :pattern ( (__iar__assume_helper_2 c_2@@3 c_1@@4 p_2_1@@3 p_1_1@@4 p_0_1@@4))
)))
(assert  (not (IsPredicateField_7767_4812 f_7)))
(assert  (not (IsWandField_7767_4812 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11425) (ExhaleHeap@@2 T@PolymorphicMapType_11425) (Mask@@3 T@PolymorphicMapType_11446) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_11446) (o_2@@4 T@Ref) (f_4@@4 T@Field_11485_28287) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_11446_7767_32409#PolymorphicMapType_11446| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_7767_33538 f_4@@4))) (not (IsWandField_7767_33554 f_4@@4))) (<= (select (|PolymorphicMapType_11446_7767_32409#PolymorphicMapType_11446| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_11446_7767_32409#PolymorphicMapType_11446| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_11446) (o_2@@5 T@Ref) (f_4@@5 T@Field_11485_28154) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_11446_7767_28154#PolymorphicMapType_11446| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_11485_28245 f_4@@5))) (not (IsWandField_11485_29992 f_4@@5))) (<= (select (|PolymorphicMapType_11446_7767_28154#PolymorphicMapType_11446| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_11446_7767_28154#PolymorphicMapType_11446| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_11446) (o_2@@6 T@Ref) (f_4@@6 T@Field_11498_11499) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_11446_7767_11499#PolymorphicMapType_11446| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_7767_11499 f_4@@6))) (not (IsWandField_7767_11499 f_4@@6))) (<= (select (|PolymorphicMapType_11446_7767_11499#PolymorphicMapType_11446| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_11446_7767_11499#PolymorphicMapType_11446| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_11446) (o_2@@7 T@Ref) (f_4@@7 T@Field_11485_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_11446_7767_53#PolymorphicMapType_11446| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_7767_53 f_4@@7))) (not (IsWandField_7767_53 f_4@@7))) (<= (select (|PolymorphicMapType_11446_7767_53#PolymorphicMapType_11446| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_11446_7767_53#PolymorphicMapType_11446| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_11446) (o_2@@8 T@Ref) (f_4@@8 T@Field_19125_4812) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7767_4812 f_4@@8))) (not (IsWandField_7767_4812 f_4@@8))) (<= (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_11446) (o_2@@9 T@Ref) (f_4@@9 T@Field_11485_28287) ) (! (= (HasDirectPerm_11485_33992 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_11446_7767_32409#PolymorphicMapType_11446| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11485_33992 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11446) (o_2@@10 T@Ref) (f_4@@10 T@Field_11485_28154) ) (! (= (HasDirectPerm_11485_28218 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_11446_7767_28154#PolymorphicMapType_11446| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11485_28218 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11446) (o_2@@11 T@Ref) (f_4@@11 T@Field_19125_4812) ) (! (= (HasDirectPerm_11485_4812 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11485_4812 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11446) (o_2@@12 T@Ref) (f_4@@12 T@Field_11498_11499) ) (! (= (HasDirectPerm_11485_11499 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_11446_7767_11499#PolymorphicMapType_11446| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11485_11499 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11446) (o_2@@13 T@Ref) (f_4@@13 T@Field_11485_53) ) (! (= (HasDirectPerm_11485_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_11446_7767_53#PolymorphicMapType_11446| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11485_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11425) (ExhaleHeap@@3 T@PolymorphicMapType_11425) (Mask@@14 T@PolymorphicMapType_11446) (pm_f_40@@1 T@Field_11485_28154) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_11485_28218 Mask@@14 null pm_f_40@@1) (IsPredicateField_11485_28245 pm_f_40@@1)) (and (and (and (and (forall ((o2_40 T@Ref) (f_81 T@Field_11485_53) ) (!  (=> (select (|PolymorphicMapType_11974_11485_53#PolymorphicMapType_11974| (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@4) null (PredicateMaskField_11485 pm_f_40@@1))) o2_40 f_81) (= (select (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| Heap@@4) o2_40 f_81) (select (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| ExhaleHeap@@3) o2_40 f_81)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| ExhaleHeap@@3) o2_40 f_81))
)) (forall ((o2_40@@0 T@Ref) (f_81@@0 T@Field_11498_11499) ) (!  (=> (select (|PolymorphicMapType_11974_11485_11499#PolymorphicMapType_11974| (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@4) null (PredicateMaskField_11485 pm_f_40@@1))) o2_40@@0 f_81@@0) (= (select (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| Heap@@4) o2_40@@0 f_81@@0) (select (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| ExhaleHeap@@3) o2_40@@0 f_81@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| ExhaleHeap@@3) o2_40@@0 f_81@@0))
))) (forall ((o2_40@@1 T@Ref) (f_81@@1 T@Field_19125_4812) ) (!  (=> (select (|PolymorphicMapType_11974_11485_4812#PolymorphicMapType_11974| (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@4) null (PredicateMaskField_11485 pm_f_40@@1))) o2_40@@1 f_81@@1) (= (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@4) o2_40@@1 f_81@@1) (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| ExhaleHeap@@3) o2_40@@1 f_81@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| ExhaleHeap@@3) o2_40@@1 f_81@@1))
))) (forall ((o2_40@@2 T@Ref) (f_81@@2 T@Field_11485_28154) ) (!  (=> (select (|PolymorphicMapType_11974_11485_28154#PolymorphicMapType_11974| (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@4) null (PredicateMaskField_11485 pm_f_40@@1))) o2_40@@2 f_81@@2) (= (select (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| Heap@@4) o2_40@@2 f_81@@2) (select (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| ExhaleHeap@@3) o2_40@@2 f_81@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| ExhaleHeap@@3) o2_40@@2 f_81@@2))
))) (forall ((o2_40@@3 T@Ref) (f_81@@3 T@Field_11485_28287) ) (!  (=> (select (|PolymorphicMapType_11974_11485_29465#PolymorphicMapType_11974| (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@4) null (PredicateMaskField_11485 pm_f_40@@1))) o2_40@@3 f_81@@3) (= (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@4) o2_40@@3 f_81@@3) (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| ExhaleHeap@@3) o2_40@@3 f_81@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| ExhaleHeap@@3) o2_40@@3 f_81@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_11485_28245 pm_f_40@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11425) (ExhaleHeap@@4 T@PolymorphicMapType_11425) (Mask@@15 T@PolymorphicMapType_11446) (pm_f_40@@2 T@Field_11485_28154) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_11485_28218 Mask@@15 null pm_f_40@@2) (IsWandField_11485_29992 pm_f_40@@2)) (and (and (and (and (forall ((o2_40@@4 T@Ref) (f_81@@4 T@Field_11485_53) ) (!  (=> (select (|PolymorphicMapType_11974_11485_53#PolymorphicMapType_11974| (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@5) null (WandMaskField_11485 pm_f_40@@2))) o2_40@@4 f_81@@4) (= (select (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| Heap@@5) o2_40@@4 f_81@@4) (select (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| ExhaleHeap@@4) o2_40@@4 f_81@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| ExhaleHeap@@4) o2_40@@4 f_81@@4))
)) (forall ((o2_40@@5 T@Ref) (f_81@@5 T@Field_11498_11499) ) (!  (=> (select (|PolymorphicMapType_11974_11485_11499#PolymorphicMapType_11974| (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@5) null (WandMaskField_11485 pm_f_40@@2))) o2_40@@5 f_81@@5) (= (select (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| Heap@@5) o2_40@@5 f_81@@5) (select (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| ExhaleHeap@@4) o2_40@@5 f_81@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| ExhaleHeap@@4) o2_40@@5 f_81@@5))
))) (forall ((o2_40@@6 T@Ref) (f_81@@6 T@Field_19125_4812) ) (!  (=> (select (|PolymorphicMapType_11974_11485_4812#PolymorphicMapType_11974| (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@5) null (WandMaskField_11485 pm_f_40@@2))) o2_40@@6 f_81@@6) (= (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@5) o2_40@@6 f_81@@6) (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| ExhaleHeap@@4) o2_40@@6 f_81@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| ExhaleHeap@@4) o2_40@@6 f_81@@6))
))) (forall ((o2_40@@7 T@Ref) (f_81@@7 T@Field_11485_28154) ) (!  (=> (select (|PolymorphicMapType_11974_11485_28154#PolymorphicMapType_11974| (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@5) null (WandMaskField_11485 pm_f_40@@2))) o2_40@@7 f_81@@7) (= (select (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| Heap@@5) o2_40@@7 f_81@@7) (select (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| ExhaleHeap@@4) o2_40@@7 f_81@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| ExhaleHeap@@4) o2_40@@7 f_81@@7))
))) (forall ((o2_40@@8 T@Ref) (f_81@@8 T@Field_11485_28287) ) (!  (=> (select (|PolymorphicMapType_11974_11485_29465#PolymorphicMapType_11974| (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@5) null (WandMaskField_11485 pm_f_40@@2))) o2_40@@8 f_81@@8) (= (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@5) o2_40@@8 f_81@@8) (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| ExhaleHeap@@4) o2_40@@8 f_81@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| ExhaleHeap@@4) o2_40@@8 f_81@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_11485_29992 pm_f_40@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11425) (ExhaleHeap@@5 T@PolymorphicMapType_11425) (Mask@@16 T@PolymorphicMapType_11446) (o_60@@0 T@Ref) (f_81@@9 T@Field_11485_28287) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_11485_33992 Mask@@16 o_60@@0 f_81@@9) (= (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@6) o_60@@0 f_81@@9) (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| ExhaleHeap@@5) o_60@@0 f_81@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| ExhaleHeap@@5) o_60@@0 f_81@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11425) (ExhaleHeap@@6 T@PolymorphicMapType_11425) (Mask@@17 T@PolymorphicMapType_11446) (o_60@@1 T@Ref) (f_81@@10 T@Field_11485_28154) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_11485_28218 Mask@@17 o_60@@1 f_81@@10) (= (select (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| Heap@@7) o_60@@1 f_81@@10) (select (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| ExhaleHeap@@6) o_60@@1 f_81@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| ExhaleHeap@@6) o_60@@1 f_81@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11425) (ExhaleHeap@@7 T@PolymorphicMapType_11425) (Mask@@18 T@PolymorphicMapType_11446) (o_60@@2 T@Ref) (f_81@@11 T@Field_19125_4812) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_11485_4812 Mask@@18 o_60@@2 f_81@@11) (= (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@8) o_60@@2 f_81@@11) (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| ExhaleHeap@@7) o_60@@2 f_81@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| ExhaleHeap@@7) o_60@@2 f_81@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11425) (ExhaleHeap@@8 T@PolymorphicMapType_11425) (Mask@@19 T@PolymorphicMapType_11446) (o_60@@3 T@Ref) (f_81@@12 T@Field_11498_11499) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_11485_11499 Mask@@19 o_60@@3 f_81@@12) (= (select (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| Heap@@9) o_60@@3 f_81@@12) (select (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| ExhaleHeap@@8) o_60@@3 f_81@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| ExhaleHeap@@8) o_60@@3 f_81@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11425) (ExhaleHeap@@9 T@PolymorphicMapType_11425) (Mask@@20 T@PolymorphicMapType_11446) (o_60@@4 T@Ref) (f_81@@13 T@Field_11485_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_11485_53 Mask@@20 o_60@@4 f_81@@13) (= (select (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| Heap@@10) o_60@@4 f_81@@13) (select (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| ExhaleHeap@@9) o_60@@4 f_81@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| ExhaleHeap@@9) o_60@@4 f_81@@13))
)))
(assert (forall ((c_3@@3 Bool) (c_2@@4 Bool) (c_1@@5 Bool) (p_3_1@@3 Real) (p_2_1@@4 Real) (p_1_1@@5 Real) (p_0_1@@5 Real) ) (! (= (__iar__assume_helper_3 c_3@@3 c_2@@4 c_1@@5 p_3_1@@3 p_2_1@@4 p_1_1@@5 p_0_1@@5) (+ (+ (+ p_0_1@@5 (ite c_1@@5 p_1_1@@5 NoPerm)) (ite c_2@@4 p_2_1@@4 NoPerm)) (ite c_3@@3 p_3_1@@3 NoPerm)))
 :qid |stdinbpl.527:15|
 :skolemid |84|
 :pattern ( (__iar__assume_helper_3 c_3@@3 c_2@@4 c_1@@5 p_3_1@@3 p_2_1@@4 p_1_1@@5 p_0_1@@5))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_11485_28287) ) (! (= (select (|PolymorphicMapType_11446_7767_32409#PolymorphicMapType_11446| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11446_7767_32409#PolymorphicMapType_11446| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_11485_28154) ) (! (= (select (|PolymorphicMapType_11446_7767_28154#PolymorphicMapType_11446| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11446_7767_28154#PolymorphicMapType_11446| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_11498_11499) ) (! (= (select (|PolymorphicMapType_11446_7767_11499#PolymorphicMapType_11446| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11446_7767_11499#PolymorphicMapType_11446| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_11485_53) ) (! (= (select (|PolymorphicMapType_11446_7767_53#PolymorphicMapType_11446| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11446_7767_53#PolymorphicMapType_11446| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_19125_4812) ) (! (= (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11446) (SummandMask1 T@PolymorphicMapType_11446) (SummandMask2 T@PolymorphicMapType_11446) (o_2@@19 T@Ref) (f_4@@19 T@Field_11485_28287) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11446_7767_32409#PolymorphicMapType_11446| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_11446_7767_32409#PolymorphicMapType_11446| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_11446_7767_32409#PolymorphicMapType_11446| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11446_7767_32409#PolymorphicMapType_11446| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11446_7767_32409#PolymorphicMapType_11446| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11446_7767_32409#PolymorphicMapType_11446| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11446) (SummandMask1@@0 T@PolymorphicMapType_11446) (SummandMask2@@0 T@PolymorphicMapType_11446) (o_2@@20 T@Ref) (f_4@@20 T@Field_11485_28154) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11446_7767_28154#PolymorphicMapType_11446| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_11446_7767_28154#PolymorphicMapType_11446| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_11446_7767_28154#PolymorphicMapType_11446| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11446_7767_28154#PolymorphicMapType_11446| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11446_7767_28154#PolymorphicMapType_11446| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11446_7767_28154#PolymorphicMapType_11446| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11446) (SummandMask1@@1 T@PolymorphicMapType_11446) (SummandMask2@@1 T@PolymorphicMapType_11446) (o_2@@21 T@Ref) (f_4@@21 T@Field_11498_11499) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11446_7767_11499#PolymorphicMapType_11446| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_11446_7767_11499#PolymorphicMapType_11446| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_11446_7767_11499#PolymorphicMapType_11446| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11446_7767_11499#PolymorphicMapType_11446| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11446_7767_11499#PolymorphicMapType_11446| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11446_7767_11499#PolymorphicMapType_11446| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11446) (SummandMask1@@2 T@PolymorphicMapType_11446) (SummandMask2@@2 T@PolymorphicMapType_11446) (o_2@@22 T@Ref) (f_4@@22 T@Field_11485_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11446_7767_53#PolymorphicMapType_11446| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_11446_7767_53#PolymorphicMapType_11446| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_11446_7767_53#PolymorphicMapType_11446| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11446_7767_53#PolymorphicMapType_11446| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11446_7767_53#PolymorphicMapType_11446| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11446_7767_53#PolymorphicMapType_11446| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11446) (SummandMask1@@3 T@PolymorphicMapType_11446) (SummandMask2@@3 T@PolymorphicMapType_11446) (o_2@@23 T@Ref) (f_4@@23 T@Field_19125_4812) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_7804| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.222:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_7804| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_7804| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_7804| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_7804| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.237:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_7804| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_7804| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((c_10_2 Bool) (c_9@@0 Bool) (c_8@@1 Bool) (c_7@@2 Bool) (c_6@@3 Bool) (c_5_1@@3 Bool) (c_4_2@@3 Bool) (c_3@@4 Bool) (c_2@@5 Bool) (c_1@@6 Bool) (p_10 Real) (p_9_3@@0 Real) (p_8@@1 Real) (p_7_3@@2 Real) (p_6_1@@3 Real) (p_5@@3 Real) (p_4_1@@3 Real) (p_3_1@@4 Real) (p_2_1@@5 Real) (p_1_1@@6 Real) (p_0_1@@6 Real) ) (! (= (__iar__assume_helper_10 c_10_2 c_9@@0 c_8@@1 c_7@@2 c_6@@3 c_5_1@@3 c_4_2@@3 c_3@@4 c_2@@5 c_1@@6 p_10 p_9_3@@0 p_8@@1 p_7_3@@2 p_6_1@@3 p_5@@3 p_4_1@@3 p_3_1@@4 p_2_1@@5 p_1_1@@6 p_0_1@@6) (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ p_0_1@@6 (ite c_1@@6 p_1_1@@6 NoPerm)) (ite c_2@@5 p_2_1@@5 NoPerm)) (ite c_3@@4 p_3_1@@4 NoPerm)) (ite c_4_2@@3 p_4_1@@3 NoPerm)) (ite c_5_1@@3 p_5@@3 NoPerm)) (ite c_6@@3 p_6_1@@3 NoPerm)) (ite c_7@@2 p_7_3@@2 NoPerm)) (ite c_8@@1 p_8@@1 NoPerm)) (ite c_9@@0 p_9_3@@0 NoPerm)) (ite c_10_2 p_10 NoPerm)))
 :qid |stdinbpl.569:15|
 :skolemid |91|
 :pattern ( (__iar__assume_helper_10 c_10_2 c_9@@0 c_8@@1 c_7@@2 c_6@@3 c_5_1@@3 c_4_2@@3 c_3@@4 c_2@@5 c_1@@6 p_10 p_9_3@@0 p_8@@1 p_7_3@@2 p_6_1@@3 p_5@@3 p_4_1@@3 p_3_1@@4 p_2_1@@5 p_1_1@@6 p_0_1@@6))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_7804| a@@6 x) y))
 :qid |stdinbpl.202:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_7804| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_7804| a@@7 b@@5) y@@0))
 :qid |stdinbpl.212:18|
 :skolemid |35|
 :pattern ( (|Set#Union_7804| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_7804| a@@8 b@@6) y@@1))
 :qid |stdinbpl.214:18|
 :skolemid |36|
 :pattern ( (|Set#Union_7804| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_7804| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.198:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_7804| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_7804| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.239:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_7804| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_7804| (|Set#Difference_7804| a@@11 b@@8)) (|Set#Card_7804| (|Set#Difference_7804| b@@8 a@@11))) (|Set#Card_7804| (|Set#Intersection_7804| a@@11 b@@8))) (|Set#Card_7804| (|Set#Union_7804| a@@11 b@@8))) (= (|Set#Card_7804| (|Set#Difference_7804| a@@11 b@@8)) (- (|Set#Card_7804| a@@11) (|Set#Card_7804| (|Set#Intersection_7804| a@@11 b@@8)))))
 :qid |stdinbpl.241:18|
 :skolemid |45|
 :pattern ( (|Set#Card_7804| (|Set#Difference_7804| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_7804| s))
 :qid |stdinbpl.184:18|
 :skolemid |22|
 :pattern ( (|Set#Card_7804| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_7804| a@@12 x@@1) x@@1)
 :qid |stdinbpl.200:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_7804| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_7804| (|Set#UnionOne_7804| a@@13 x@@2)) (|Set#Card_7804| a@@13)))
 :qid |stdinbpl.204:18|
 :skolemid |32|
 :pattern ( (|Set#Card_7804| (|Set#UnionOne_7804| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_7804| (|Set#Singleton_7804| r@@0)) 1)
 :qid |stdinbpl.195:18|
 :skolemid |28|
 :pattern ( (|Set#Card_7804| (|Set#Singleton_7804| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_7804| r@@1) r@@1)
 :qid |stdinbpl.193:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_7804| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_7804| a@@14 (|Set#Union_7804| a@@14 b@@9)) (|Set#Union_7804| a@@14 b@@9))
 :qid |stdinbpl.227:18|
 :skolemid |39|
 :pattern ( (|Set#Union_7804| a@@14 (|Set#Union_7804| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_7804| a@@15 (|Set#Intersection_7804| a@@15 b@@10)) (|Set#Intersection_7804| a@@15 b@@10))
 :qid |stdinbpl.231:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_7804| a@@15 (|Set#Intersection_7804| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_7804| o@@3))
 :qid |stdinbpl.187:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_7804| o@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11425) (o_37 T@Ref) (f_32 T@Field_11485_28154) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_11425 (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| Heap@@11) (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| Heap@@11) (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@11) (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@11) (store (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| Heap@@11) o_37 f_32 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11425 (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| Heap@@11) (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| Heap@@11) (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@11) (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@11) (store (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| Heap@@11) o_37 f_32 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11425) (o_37@@0 T@Ref) (f_32@@0 T@Field_11485_28287) (v@@0 T@PolymorphicMapType_11974) ) (! (succHeap Heap@@12 (PolymorphicMapType_11425 (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| Heap@@12) (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| Heap@@12) (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@12) (store (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@12) o_37@@0 f_32@@0 v@@0) (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11425 (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| Heap@@12) (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| Heap@@12) (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@12) (store (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@12) o_37@@0 f_32@@0 v@@0) (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11425) (o_37@@1 T@Ref) (f_32@@1 T@Field_19125_4812) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_11425 (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| Heap@@13) (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| Heap@@13) (store (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@13) o_37@@1 f_32@@1 v@@1) (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@13) (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11425 (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| Heap@@13) (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| Heap@@13) (store (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@13) o_37@@1 f_32@@1 v@@1) (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@13) (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11425) (o_37@@2 T@Ref) (f_32@@2 T@Field_11498_11499) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_11425 (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| Heap@@14) (store (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| Heap@@14) o_37@@2 f_32@@2 v@@2) (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@14) (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@14) (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11425 (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| Heap@@14) (store (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| Heap@@14) o_37@@2 f_32@@2 v@@2) (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@14) (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@14) (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11425) (o_37@@3 T@Ref) (f_32@@3 T@Field_11485_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_11425 (store (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| Heap@@15) o_37@@3 f_32@@3 v@@3) (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| Heap@@15) (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@15) (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@15) (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11425 (store (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| Heap@@15) o_37@@3 f_32@@3 v@@3) (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| Heap@@15) (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@15) (|PolymorphicMapType_11425_11485_28331#PolymorphicMapType_11425| Heap@@15) (|PolymorphicMapType_11425_11485_28154#PolymorphicMapType_11425| Heap@@15)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.271:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.272:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_7804| s@@0) 0) (= s@@0 |Set#Empty_7804|)) (=> (not (= (|Set#Card_7804| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.190:33|
 :skolemid |24|
))))
 :qid |stdinbpl.188:18|
 :skolemid |25|
 :pattern ( (|Set#Card_7804| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_7804| (|Set#UnionOne_7804| a@@18 x@@4)) (+ (|Set#Card_7804| a@@18) 1)))
 :qid |stdinbpl.206:18|
 :skolemid |33|
 :pattern ( (|Set#Card_7804| (|Set#UnionOne_7804| a@@18 x@@4)))
)))
(assert (forall ((o_37@@4 T@Ref) (f_42 T@Field_11498_11499) (Heap@@16 T@PolymorphicMapType_11425) ) (!  (=> (select (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| Heap@@16) o_37@@4 $allocated) (select (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| Heap@@16) (select (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| Heap@@16) o_37@@4 f_42) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11425_7299_7300#PolymorphicMapType_11425| Heap@@16) o_37@@4 f_42))
)))
(assert (forall ((c_4_2@@4 Bool) (c_3@@5 Bool) (c_2@@6 Bool) (c_1@@7 Bool) (p_4_1@@4 Real) (p_3_1@@5 Real) (p_2_1@@6 Real) (p_1_1@@7 Real) (p_0_1@@7 Real) ) (! (= (__iar__assume_helper_4 c_4_2@@4 c_3@@5 c_2@@6 c_1@@7 p_4_1@@4 p_3_1@@5 p_2_1@@6 p_1_1@@7 p_0_1@@7) (+ (+ (+ (+ p_0_1@@7 (ite c_1@@7 p_1_1@@7 NoPerm)) (ite c_2@@6 p_2_1@@6 NoPerm)) (ite c_3@@5 p_3_1@@5 NoPerm)) (ite c_4_2@@4 p_4_1@@4 NoPerm)))
 :qid |stdinbpl.533:15|
 :skolemid |85|
 :pattern ( (__iar__assume_helper_4 c_4_2@@4 c_3@@5 c_2@@6 c_1@@7 p_4_1@@4 p_3_1@@5 p_2_1@@6 p_1_1@@7 p_0_1@@7))
)))
(assert (forall ((p@@1 T@Field_11485_28154) (v_1@@0 T@FrameType) (q T@Field_11485_28154) (w@@0 T@FrameType) (r@@2 T@Field_11485_28154) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11485_11485 p@@1 v_1@@0 q w@@0) (InsidePredicate_11485_11485 q w@@0 r@@2 u)) (InsidePredicate_11485_11485 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11485_11485 p@@1 v_1@@0 q w@@0) (InsidePredicate_11485_11485 q w@@0 r@@2 u))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.277:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (forall ((c_5_1@@4 Bool) (c_4_2@@5 Bool) (c_3@@6 Bool) (c_2@@7 Bool) (c_1@@8 Bool) (p_5@@4 Real) (p_4_1@@5 Real) (p_3_1@@6 Real) (p_2_1@@7 Real) (p_1_1@@8 Real) (p_0_1@@8 Real) ) (! (= (__iar__assume_helper_5 c_5_1@@4 c_4_2@@5 c_3@@6 c_2@@7 c_1@@8 p_5@@4 p_4_1@@5 p_3_1@@6 p_2_1@@7 p_1_1@@8 p_0_1@@8) (+ (+ (+ (+ (+ p_0_1@@8 (ite c_1@@8 p_1_1@@8 NoPerm)) (ite c_2@@7 p_2_1@@7 NoPerm)) (ite c_3@@6 p_3_1@@6 NoPerm)) (ite c_4_2@@5 p_4_1@@5 NoPerm)) (ite c_5_1@@4 p_5@@4 NoPerm)))
 :qid |stdinbpl.539:15|
 :skolemid |86|
 :pattern ( (__iar__assume_helper_5 c_5_1@@4 c_4_2@@5 c_3@@6 c_2@@7 c_1@@8 p_5@@4 p_4_1@@5 p_3_1@@6 p_2_1@@7 p_1_1@@8 p_0_1@@8))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_7804| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.210:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_7804| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun xs1 () (Array T@Ref Bool))
(declare-fun x@@5 () T@Ref)
(declare-fun p_1 () Real)
(declare-fun Heap@@17 () T@PolymorphicMapType_11425)
(declare-fun Mask@0 () T@PolymorphicMapType_11446)
(declare-fun AssertMask@0 () T@PolymorphicMapType_11446)
(declare-fun inv_66 (T@Ref) T@Ref)
(declare-fun xs11 () (Array T@Ref Bool))
(declare-fun inv_56 (T@Ref) T@Ref)
(declare-fun xs2 () (Array T@Ref Bool))
(declare-fun inv_57 (T@Ref) T@Ref)
(declare-fun xs3 () (Array T@Ref Bool))
(declare-fun inv_58 (T@Ref) T@Ref)
(declare-fun xs4 () (Array T@Ref Bool))
(declare-fun inv_59 (T@Ref) T@Ref)
(declare-fun xs5 () (Array T@Ref Bool))
(declare-fun inv_60 (T@Ref) T@Ref)
(declare-fun xs6 () (Array T@Ref Bool))
(declare-fun inv_61 (T@Ref) T@Ref)
(declare-fun xs7 () (Array T@Ref Bool))
(declare-fun inv_62 (T@Ref) T@Ref)
(declare-fun xs8 () (Array T@Ref Bool))
(declare-fun inv_63 (T@Ref) T@Ref)
(declare-fun xs9 () (Array T@Ref Bool))
(declare-fun inv_64 (T@Ref) T@Ref)
(declare-fun xs10 () (Array T@Ref Bool))
(declare-fun inv_65 (T@Ref) T@Ref)
(set-info :boogie-vc-id m)
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
 (=> (= (ControlFlow 0 0) 81) (let ((anon72_correct true))
(let ((anon108_Else_correct  (=> (and (not (and (> (|Set#Card_7804| xs1) 0) (select xs1 x@@5))) (= (ControlFlow 0 39) 36)) anon72_correct)))
(let ((anon108_Then_correct  (=> (and (> (|Set#Card_7804| xs1) 0) (select xs1 x@@5)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (< p_1 FullPerm)) (=> (< p_1 FullPerm) (=> (= (ControlFlow 0 37) 36) anon72_correct))))))
(let ((anon107_Else_correct  (=> (and (<= p_1 NoPerm) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 40) 37) anon108_Then_correct) (=> (= (ControlFlow 0 40) 39) anon108_Else_correct)))))
(let ((anon107_Then_correct  (=> (and (< NoPerm p_1) (= (ControlFlow 0 35) (- 0 34))) false)))
(let ((anon68_correct  (=> (and (= AssertMask@0 (PolymorphicMapType_11446 (store (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@0) x@@5 f_7 (- (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@0) x@@5 f_7) p_1)) (|PolymorphicMapType_11446_7767_53#PolymorphicMapType_11446| Mask@0) (|PolymorphicMapType_11446_7767_11499#PolymorphicMapType_11446| Mask@0) (|PolymorphicMapType_11446_7767_28154#PolymorphicMapType_11446| Mask@0) (|PolymorphicMapType_11446_7767_32409#PolymorphicMapType_11446| Mask@0))) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 41) 35) anon107_Then_correct) (=> (= (ControlFlow 0 41) 40) anon107_Else_correct)))))
(let ((anon106_Else_correct  (=> (and (= p_1 NoPerm) (= (ControlFlow 0 44) 41)) anon68_correct)))
(let ((anon106_Then_correct  (=> (not (= p_1 NoPerm)) (and (=> (= (ControlFlow 0 42) (- 0 43)) (<= p_1 (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@0) x@@5 f_7))) (=> (<= p_1 (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@0) x@@5 f_7)) (=> (= (ControlFlow 0 42) 41) anon68_correct))))))
(let ((anon105_Else_correct  (=> (forall ((r_43 T@Ref) ) (!  (=> (select xs11 (inv_66 r_43)) (<= (__iar__assume_helper_10  (and (select xs1 (inv_56 r_43)) (= r_43 r_43))  (and (select xs2 (inv_57 r_43)) (= r_43 r_43))  (and (select xs3 (inv_58 r_43)) (= r_43 r_43))  (and (select xs4 (inv_59 r_43)) (= r_43 r_43))  (and (select xs5 (inv_60 r_43)) (= r_43 r_43))  (and (select xs6 (inv_61 r_43)) (= r_43 r_43))  (and (select xs7 (inv_62 r_43)) (= r_43 r_43))  (and (select xs8 (inv_63 r_43)) (= r_43 r_43))  (and (select xs9 (inv_64 r_43)) (= r_43 r_43))  (and (select xs10 (inv_65 r_43)) (= r_43 r_43)) p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1) (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@0) r_43 f_7)))
 :qid |stdinbpl.1163:20|
 :skolemid |124|
 :pattern ( (inv_66 r_43))
)) (=> (and (and (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (select xs1 x@@5) (state Heap@@17 Mask@0))) (and (and (state Heap@@17 Mask@0) (select xs2 x@@5)) (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)))) (and (=> (= (ControlFlow 0 45) (- 0 46)) (>= p_1 NoPerm)) (=> (>= p_1 NoPerm) (and (=> (= (ControlFlow 0 45) 42) anon106_Then_correct) (=> (= (ControlFlow 0 45) 44) anon106_Else_correct))))))))
(let ((anon105_Then_correct true))
(let ((anon104_Else_correct  (=> (forall ((r_41_2 T@Ref) ) (!  (=> (select xs11 (inv_66 r_41_2)) (= (inv_66 r_41_2) r_41_2))
 :qid |stdinbpl.1139:20|
 :skolemid |123|
 :pattern ( (inv_66 r_41_2))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 47) 33) anon105_Then_correct) (=> (= (ControlFlow 0 47) 45) anon105_Else_correct))))))
(let ((anon104_Then_correct true))
(let ((anon103_Else_correct  (=> (forall ((x11_1 T@Ref) ) (!  (=> (select xs11 x11_1) (= (inv_66 x11_1) x11_1))
 :qid |stdinbpl.1124:20|
 :skolemid |122|
 :pattern ( (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@17) x11_1 f_7))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 48) 32) anon104_Then_correct) (=> (= (ControlFlow 0 48) 47) anon104_Else_correct))))))
(let ((anon103_Then_correct true))
(let ((anon102_Else_correct  (=> (forall ((r_39 T@Ref) ) (!  (=> (select xs10 (inv_65 r_39)) (<= (__iar__assume_helper_9  (and (select xs1 (inv_56 r_39)) (= r_39 r_39))  (and (select xs2 (inv_57 r_39)) (= r_39 r_39))  (and (select xs3 (inv_58 r_39)) (= r_39 r_39))  (and (select xs4 (inv_59 r_39)) (= r_39 r_39))  (and (select xs5 (inv_60 r_39)) (= r_39 r_39))  (and (select xs6 (inv_61 r_39)) (= r_39 r_39))  (and (select xs7 (inv_62 r_39)) (= r_39 r_39))  (and (select xs8 (inv_63 r_39)) (= r_39 r_39))  (and (select xs9 (inv_64 r_39)) (= r_39 r_39)) p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1) (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@0) r_39 f_7)))
 :qid |stdinbpl.1109:20|
 :skolemid |121|
 :pattern ( (inv_65 r_39))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 49) 31) anon103_Then_correct) (=> (= (ControlFlow 0 49) 48) anon103_Else_correct))))))
(let ((anon102_Then_correct true))
(let ((anon101_Else_correct  (=> (forall ((r_37 T@Ref) ) (!  (=> (select xs10 (inv_65 r_37)) (= (inv_65 r_37) r_37))
 :qid |stdinbpl.1087:20|
 :skolemid |120|
 :pattern ( (inv_65 r_37))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 50) 30) anon102_Then_correct) (=> (= (ControlFlow 0 50) 49) anon102_Else_correct))))))
(let ((anon101_Then_correct true))
(let ((anon100_Else_correct  (=> (forall ((x10_1 T@Ref) ) (!  (=> (select xs10 x10_1) (= (inv_65 x10_1) x10_1))
 :qid |stdinbpl.1072:20|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@17) x10_1 f_7))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 51) 29) anon101_Then_correct) (=> (= (ControlFlow 0 51) 50) anon101_Else_correct))))))
(let ((anon100_Then_correct true))
(let ((anon99_Else_correct  (=> (forall ((r_35 T@Ref) ) (!  (=> (select xs9 (inv_64 r_35)) (<= (__iar__assume_helper_8  (and (select xs1 (inv_56 r_35)) (= r_35 r_35))  (and (select xs2 (inv_57 r_35)) (= r_35 r_35))  (and (select xs3 (inv_58 r_35)) (= r_35 r_35))  (and (select xs4 (inv_59 r_35)) (= r_35 r_35))  (and (select xs5 (inv_60 r_35)) (= r_35 r_35))  (and (select xs6 (inv_61 r_35)) (= r_35 r_35))  (and (select xs7 (inv_62 r_35)) (= r_35 r_35))  (and (select xs8 (inv_63 r_35)) (= r_35 r_35)) p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1) (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@0) r_35 f_7)))
 :qid |stdinbpl.1057:20|
 :skolemid |118|
 :pattern ( (inv_64 r_35))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 52) 28) anon100_Then_correct) (=> (= (ControlFlow 0 52) 51) anon100_Else_correct))))))
(let ((anon99_Then_correct true))
(let ((anon98_Else_correct  (=> (forall ((r_33_1 T@Ref) ) (!  (=> (select xs9 (inv_64 r_33_1)) (= (inv_64 r_33_1) r_33_1))
 :qid |stdinbpl.1035:20|
 :skolemid |117|
 :pattern ( (inv_64 r_33_1))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 53) 27) anon99_Then_correct) (=> (= (ControlFlow 0 53) 52) anon99_Else_correct))))))
(let ((anon98_Then_correct true))
(let ((anon97_Else_correct  (=> (forall ((x9_1 T@Ref) ) (!  (=> (select xs9 x9_1) (= (inv_64 x9_1) x9_1))
 :qid |stdinbpl.1020:20|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@17) x9_1 f_7))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 54) 26) anon98_Then_correct) (=> (= (ControlFlow 0 54) 53) anon98_Else_correct))))))
(let ((anon97_Then_correct true))
(let ((anon96_Else_correct  (=> (forall ((r_31 T@Ref) ) (!  (=> (select xs8 (inv_63 r_31)) (<= (__iar__assume_helper_7  (and (select xs1 (inv_56 r_31)) (= r_31 r_31))  (and (select xs2 (inv_57 r_31)) (= r_31 r_31))  (and (select xs3 (inv_58 r_31)) (= r_31 r_31))  (and (select xs4 (inv_59 r_31)) (= r_31 r_31))  (and (select xs5 (inv_60 r_31)) (= r_31 r_31))  (and (select xs6 (inv_61 r_31)) (= r_31 r_31))  (and (select xs7 (inv_62 r_31)) (= r_31 r_31)) p_1 p_1 p_1 p_1 p_1 p_1 p_1 p_1) (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@0) r_31 f_7)))
 :qid |stdinbpl.1005:20|
 :skolemid |115|
 :pattern ( (inv_63 r_31))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 55) 25) anon97_Then_correct) (=> (= (ControlFlow 0 55) 54) anon97_Else_correct))))))
(let ((anon96_Then_correct true))
(let ((anon95_Else_correct  (=> (forall ((r_29 T@Ref) ) (!  (=> (select xs8 (inv_63 r_29)) (= (inv_63 r_29) r_29))
 :qid |stdinbpl.984:20|
 :skolemid |114|
 :pattern ( (inv_63 r_29))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 56) 24) anon96_Then_correct) (=> (= (ControlFlow 0 56) 55) anon96_Else_correct))))))
(let ((anon95_Then_correct true))
(let ((anon94_Else_correct  (=> (forall ((x8_1 T@Ref) ) (!  (=> (select xs8 x8_1) (= (inv_63 x8_1) x8_1))
 :qid |stdinbpl.969:20|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@17) x8_1 f_7))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 57) 23) anon95_Then_correct) (=> (= (ControlFlow 0 57) 56) anon95_Else_correct))))))
(let ((anon94_Then_correct true))
(let ((anon93_Else_correct  (=> (forall ((r_27_1 T@Ref) ) (!  (=> (select xs7 (inv_62 r_27_1)) (<= (__iar__assume_helper_6  (and (select xs1 (inv_56 r_27_1)) (= r_27_1 r_27_1))  (and (select xs2 (inv_57 r_27_1)) (= r_27_1 r_27_1))  (and (select xs3 (inv_58 r_27_1)) (= r_27_1 r_27_1))  (and (select xs4 (inv_59 r_27_1)) (= r_27_1 r_27_1))  (and (select xs5 (inv_60 r_27_1)) (= r_27_1 r_27_1))  (and (select xs6 (inv_61 r_27_1)) (= r_27_1 r_27_1)) p_1 p_1 p_1 p_1 p_1 p_1 p_1) (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@0) r_27_1 f_7)))
 :qid |stdinbpl.954:20|
 :skolemid |112|
 :pattern ( (inv_62 r_27_1))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 58) 22) anon94_Then_correct) (=> (= (ControlFlow 0 58) 57) anon94_Else_correct))))))
(let ((anon93_Then_correct true))
(let ((anon92_Else_correct  (=> (forall ((r_25 T@Ref) ) (!  (=> (select xs7 (inv_62 r_25)) (= (inv_62 r_25) r_25))
 :qid |stdinbpl.934:20|
 :skolemid |111|
 :pattern ( (inv_62 r_25))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 59) 21) anon93_Then_correct) (=> (= (ControlFlow 0 59) 58) anon93_Else_correct))))))
(let ((anon92_Then_correct true))
(let ((anon91_Else_correct  (=> (forall ((x7_1 T@Ref) ) (!  (=> (select xs7 x7_1) (= (inv_62 x7_1) x7_1))
 :qid |stdinbpl.919:20|
 :skolemid |110|
 :pattern ( (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@17) x7_1 f_7))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 60) 20) anon92_Then_correct) (=> (= (ControlFlow 0 60) 59) anon92_Else_correct))))))
(let ((anon91_Then_correct true))
(let ((anon90_Else_correct  (=> (forall ((r_23_2 T@Ref) ) (!  (=> (select xs6 (inv_61 r_23_2)) (<= (__iar__assume_helper_5  (and (select xs1 (inv_56 r_23_2)) (= r_23_2 r_23_2))  (and (select xs2 (inv_57 r_23_2)) (= r_23_2 r_23_2))  (and (select xs3 (inv_58 r_23_2)) (= r_23_2 r_23_2))  (and (select xs4 (inv_59 r_23_2)) (= r_23_2 r_23_2))  (and (select xs5 (inv_60 r_23_2)) (= r_23_2 r_23_2)) p_1 p_1 p_1 p_1 p_1 p_1) (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@0) r_23_2 f_7)))
 :qid |stdinbpl.904:20|
 :skolemid |109|
 :pattern ( (inv_61 r_23_2))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 61) 19) anon91_Then_correct) (=> (= (ControlFlow 0 61) 60) anon91_Else_correct))))))
(let ((anon90_Then_correct true))
(let ((anon89_Else_correct  (=> (forall ((r_21_2 T@Ref) ) (!  (=> (select xs6 (inv_61 r_21_2)) (= (inv_61 r_21_2) r_21_2))
 :qid |stdinbpl.884:20|
 :skolemid |108|
 :pattern ( (inv_61 r_21_2))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 62) 18) anon90_Then_correct) (=> (= (ControlFlow 0 62) 61) anon90_Else_correct))))))
(let ((anon89_Then_correct true))
(let ((anon88_Else_correct  (=> (forall ((x6_1_1 T@Ref) ) (!  (=> (select xs6 x6_1_1) (= (inv_61 x6_1_1) x6_1_1))
 :qid |stdinbpl.869:20|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@17) x6_1_1 f_7))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 63) 17) anon89_Then_correct) (=> (= (ControlFlow 0 63) 62) anon89_Else_correct))))))
(let ((anon88_Then_correct true))
(let ((anon87_Else_correct  (=> (forall ((r_19 T@Ref) ) (!  (=> (select xs5 (inv_60 r_19)) (<= (__iar__assume_helper_4  (and (select xs1 (inv_56 r_19)) (= r_19 r_19))  (and (select xs2 (inv_57 r_19)) (= r_19 r_19))  (and (select xs3 (inv_58 r_19)) (= r_19 r_19))  (and (select xs4 (inv_59 r_19)) (= r_19 r_19)) p_1 p_1 p_1 p_1 p_1) (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@0) r_19 f_7)))
 :qid |stdinbpl.854:20|
 :skolemid |106|
 :pattern ( (inv_60 r_19))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 64) 16) anon88_Then_correct) (=> (= (ControlFlow 0 64) 63) anon88_Else_correct))))))
(let ((anon87_Then_correct true))
(let ((anon86_Else_correct  (=> (forall ((r_17 T@Ref) ) (!  (=> (select xs5 (inv_60 r_17)) (= (inv_60 r_17) r_17))
 :qid |stdinbpl.835:20|
 :skolemid |105|
 :pattern ( (inv_60 r_17))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 65) 15) anon87_Then_correct) (=> (= (ControlFlow 0 65) 64) anon87_Else_correct))))))
(let ((anon86_Then_correct true))
(let ((anon85_Else_correct  (=> (forall ((x5_1_1 T@Ref) ) (!  (=> (select xs5 x5_1_1) (= (inv_60 x5_1_1) x5_1_1))
 :qid |stdinbpl.820:20|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@17) x5_1_1 f_7))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 66) 14) anon86_Then_correct) (=> (= (ControlFlow 0 66) 65) anon86_Else_correct))))))
(let ((anon85_Then_correct true))
(let ((anon84_Else_correct  (=> (forall ((r_15_2 T@Ref) ) (!  (=> (select xs4 (inv_59 r_15_2)) (<= (__iar__assume_helper_3  (and (select xs1 (inv_56 r_15_2)) (= r_15_2 r_15_2))  (and (select xs2 (inv_57 r_15_2)) (= r_15_2 r_15_2))  (and (select xs3 (inv_58 r_15_2)) (= r_15_2 r_15_2)) p_1 p_1 p_1 p_1) (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@0) r_15_2 f_7)))
 :qid |stdinbpl.805:20|
 :skolemid |103|
 :pattern ( (inv_59 r_15_2))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 67) 13) anon85_Then_correct) (=> (= (ControlFlow 0 67) 66) anon85_Else_correct))))))
(let ((anon84_Then_correct true))
(let ((anon83_Else_correct  (=> (forall ((r_13_2 T@Ref) ) (!  (=> (select xs4 (inv_59 r_13_2)) (= (inv_59 r_13_2) r_13_2))
 :qid |stdinbpl.787:20|
 :skolemid |102|
 :pattern ( (inv_59 r_13_2))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 68) 12) anon84_Then_correct) (=> (= (ControlFlow 0 68) 67) anon84_Else_correct))))))
(let ((anon83_Then_correct true))
(let ((anon82_Else_correct  (=> (forall ((x4_1_1 T@Ref) ) (!  (=> (select xs4 x4_1_1) (= (inv_59 x4_1_1) x4_1_1))
 :qid |stdinbpl.772:20|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@17) x4_1_1 f_7))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 69) 11) anon83_Then_correct) (=> (= (ControlFlow 0 69) 68) anon83_Else_correct))))))
(let ((anon82_Then_correct true))
(let ((anon81_Else_correct  (=> (forall ((r_11_2 T@Ref) ) (!  (=> (select xs3 (inv_58 r_11_2)) (<= (__iar__assume_helper_2  (and (select xs1 (inv_56 r_11_2)) (= r_11_2 r_11_2))  (and (select xs2 (inv_57 r_11_2)) (= r_11_2 r_11_2)) p_1 p_1 p_1) (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@0) r_11_2 f_7)))
 :qid |stdinbpl.757:20|
 :skolemid |100|
 :pattern ( (inv_58 r_11_2))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 70) 10) anon82_Then_correct) (=> (= (ControlFlow 0 70) 69) anon82_Else_correct))))))
(let ((anon81_Then_correct true))
(let ((anon80_Else_correct  (=> (forall ((r_9 T@Ref) ) (!  (=> (select xs3 (inv_58 r_9)) (= (inv_58 r_9) r_9))
 :qid |stdinbpl.739:20|
 :skolemid |99|
 :pattern ( (inv_58 r_9))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 71) 9) anon81_Then_correct) (=> (= (ControlFlow 0 71) 70) anon81_Else_correct))))))
(let ((anon80_Then_correct true))
(let ((anon79_Else_correct  (=> (forall ((x3_1_1 T@Ref) ) (!  (=> (select xs3 x3_1_1) (= (inv_58 x3_1_1) x3_1_1))
 :qid |stdinbpl.724:20|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@17) x3_1_1 f_7))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 72) 8) anon80_Then_correct) (=> (= (ControlFlow 0 72) 71) anon80_Else_correct))))))
(let ((anon79_Then_correct true))
(let ((anon78_Else_correct  (=> (forall ((r_7 T@Ref) ) (!  (=> (select xs2 (inv_57 r_7)) (<= (__iar__assume_helper_1  (and (select xs1 (inv_56 r_7)) (= r_7 r_7)) p_1 p_1) (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@0) r_7 f_7)))
 :qid |stdinbpl.709:20|
 :skolemid |97|
 :pattern ( (inv_57 r_7))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 73) 7) anon79_Then_correct) (=> (= (ControlFlow 0 73) 72) anon79_Else_correct))))))
(let ((anon78_Then_correct true))
(let ((anon77_Else_correct  (=> (forall ((r_5 T@Ref) ) (!  (=> (select xs2 (inv_57 r_5)) (= (inv_57 r_5) r_5))
 :qid |stdinbpl.693:20|
 :skolemid |96|
 :pattern ( (inv_57 r_5))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 74) 6) anon78_Then_correct) (=> (= (ControlFlow 0 74) 73) anon78_Else_correct))))))
(let ((anon77_Then_correct true))
(let ((anon76_Else_correct  (=> (forall ((x2_1_1 T@Ref) ) (!  (=> (select xs2 x2_1_1) (= (inv_57 x2_1_1) x2_1_1))
 :qid |stdinbpl.678:20|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@17) x2_1_1 f_7))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 75) 5) anon77_Then_correct) (=> (= (ControlFlow 0 75) 74) anon77_Else_correct))))))
(let ((anon76_Then_correct true))
(let ((anon75_Else_correct  (=> (forall ((r_3_2 T@Ref) ) (!  (=> (select xs1 (inv_56 r_3_2)) (<= p_1 (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| Mask@0) r_3_2 f_7)))
 :qid |stdinbpl.663:20|
 :skolemid |94|
 :pattern ( (inv_56 r_3_2))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 76) 4) anon76_Then_correct) (=> (= (ControlFlow 0 76) 75) anon76_Else_correct))))))
(let ((anon75_Then_correct true))
(let ((anon74_Else_correct  (=> (forall ((r_1_1 T@Ref) ) (!  (=> (select xs1 (inv_56 r_1_1)) (= (inv_56 r_1_1) r_1_1))
 :qid |stdinbpl.648:20|
 :skolemid |93|
 :pattern ( (inv_56 r_1_1))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 77) 3) anon75_Then_correct) (=> (= (ControlFlow 0 77) 76) anon75_Else_correct))))))
(let ((anon74_Then_correct true))
(let ((anon73_Else_correct  (=> (forall ((x1_1 T@Ref) ) (!  (=> (select xs1 x1_1) (= (inv_56 x1_1) x1_1))
 :qid |stdinbpl.633:20|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_11425_7767_4812#PolymorphicMapType_11425| Heap@@17) x1_1 f_7))
)) (=> (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0)) (and (=> (= (ControlFlow 0 78) 2) anon74_Then_correct) (=> (= (ControlFlow 0 78) 77) anon74_Else_correct))))))
(let ((anon73_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_11425_7296_53#PolymorphicMapType_11425| Heap@@17) x@@5 $allocated)) (and (<= NoPerm p_1) (state Heap@@17 ZeroMask))) (and (=> (= (ControlFlow 0 79) (- 0 80)) (>= p_1 NoPerm)) (=> (>= p_1 NoPerm) (=> (=> (> p_1 NoPerm) (not (= x@@5 null))) (=> (and (and (= Mask@0 (PolymorphicMapType_11446 (store (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| ZeroMask) x@@5 f_7 (+ (select (|PolymorphicMapType_11446_7767_4812#PolymorphicMapType_11446| ZeroMask) x@@5 f_7) p_1)) (|PolymorphicMapType_11446_7767_53#PolymorphicMapType_11446| ZeroMask) (|PolymorphicMapType_11446_7767_11499#PolymorphicMapType_11446| ZeroMask) (|PolymorphicMapType_11446_7767_28154#PolymorphicMapType_11446| ZeroMask) (|PolymorphicMapType_11446_7767_32409#PolymorphicMapType_11446| ZeroMask))) (state Heap@@17 Mask@0)) (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0))) (and (=> (= (ControlFlow 0 79) 1) anon73_Then_correct) (=> (= (ControlFlow 0 79) 78) anon73_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 81) 79) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 35) (- 34))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
