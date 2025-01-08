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
(declare-sort T@Field_17904_53 0)
(declare-sort T@Field_17917_17918 0)
(declare-sort T@Field_25095_25096 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_24158_3217 0)
(declare-sort T@Field_25108_25113 0)
(declare-sort T@Field_9461_9520 0)
(declare-sort T@Field_9461_24232 0)
(declare-sort T@Field_9519_9462 0)
(declare-sort T@Field_9519_3217 0)
(declare-sort T@Field_9519_53 0)
(declare-sort T@Field_24210_9462 0)
(declare-sort T@Field_24210_24211 0)
(declare-sort T@Field_24210_3217 0)
(declare-sort T@Field_24210_53 0)
(declare-sort T@Field_24227_24232 0)
(declare-datatypes ((T@PolymorphicMapType_17865 0)) (((PolymorphicMapType_17865 (|PolymorphicMapType_17865_9467_3217#PolymorphicMapType_17865| (Array T@Ref T@Field_24158_3217 Real)) (|PolymorphicMapType_17865_9472_9473#PolymorphicMapType_17865| (Array T@Ref T@Field_24210_24211 Real)) (|PolymorphicMapType_17865_9461_9462#PolymorphicMapType_17865| (Array T@Ref T@Field_17917_17918 Real)) (|PolymorphicMapType_17865_9519_9520#PolymorphicMapType_17865| (Array T@Ref T@Field_25095_25096 Real)) (|PolymorphicMapType_17865_9467_9473#PolymorphicMapType_17865| (Array T@Ref T@Field_9461_9520 Real)) (|PolymorphicMapType_17865_9467_53#PolymorphicMapType_17865| (Array T@Ref T@Field_17904_53 Real)) (|PolymorphicMapType_17865_9467_70680#PolymorphicMapType_17865| (Array T@Ref T@Field_9461_24232 Real)) (|PolymorphicMapType_17865_9472_3217#PolymorphicMapType_17865| (Array T@Ref T@Field_24210_3217 Real)) (|PolymorphicMapType_17865_9472_9462#PolymorphicMapType_17865| (Array T@Ref T@Field_24210_9462 Real)) (|PolymorphicMapType_17865_9472_53#PolymorphicMapType_17865| (Array T@Ref T@Field_24210_53 Real)) (|PolymorphicMapType_17865_9472_71091#PolymorphicMapType_17865| (Array T@Ref T@Field_24227_24232 Real)) (|PolymorphicMapType_17865_9519_3217#PolymorphicMapType_17865| (Array T@Ref T@Field_9519_3217 Real)) (|PolymorphicMapType_17865_9519_9462#PolymorphicMapType_17865| (Array T@Ref T@Field_9519_9462 Real)) (|PolymorphicMapType_17865_9519_53#PolymorphicMapType_17865| (Array T@Ref T@Field_9519_53 Real)) (|PolymorphicMapType_17865_9519_71502#PolymorphicMapType_17865| (Array T@Ref T@Field_25108_25113 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18393 0)) (((PolymorphicMapType_18393 (|PolymorphicMapType_18393_9467_3217#PolymorphicMapType_18393| (Array T@Ref T@Field_24158_3217 Bool)) (|PolymorphicMapType_18393_9467_53#PolymorphicMapType_18393| (Array T@Ref T@Field_17904_53 Bool)) (|PolymorphicMapType_18393_9467_17918#PolymorphicMapType_18393| (Array T@Ref T@Field_17917_17918 Bool)) (|PolymorphicMapType_18393_9467_24211#PolymorphicMapType_18393| (Array T@Ref T@Field_9461_9520 Bool)) (|PolymorphicMapType_18393_9467_60755#PolymorphicMapType_18393| (Array T@Ref T@Field_9461_24232 Bool)) (|PolymorphicMapType_18393_24210_3217#PolymorphicMapType_18393| (Array T@Ref T@Field_24210_3217 Bool)) (|PolymorphicMapType_18393_24210_53#PolymorphicMapType_18393| (Array T@Ref T@Field_24210_53 Bool)) (|PolymorphicMapType_18393_24210_17918#PolymorphicMapType_18393| (Array T@Ref T@Field_24210_9462 Bool)) (|PolymorphicMapType_18393_24210_24211#PolymorphicMapType_18393| (Array T@Ref T@Field_24210_24211 Bool)) (|PolymorphicMapType_18393_24210_61803#PolymorphicMapType_18393| (Array T@Ref T@Field_24227_24232 Bool)) (|PolymorphicMapType_18393_25095_3217#PolymorphicMapType_18393| (Array T@Ref T@Field_9519_3217 Bool)) (|PolymorphicMapType_18393_25095_53#PolymorphicMapType_18393| (Array T@Ref T@Field_9519_53 Bool)) (|PolymorphicMapType_18393_25095_17918#PolymorphicMapType_18393| (Array T@Ref T@Field_9519_9462 Bool)) (|PolymorphicMapType_18393_25095_24211#PolymorphicMapType_18393| (Array T@Ref T@Field_25095_25096 Bool)) (|PolymorphicMapType_18393_25095_62851#PolymorphicMapType_18393| (Array T@Ref T@Field_25108_25113 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17844 0)) (((PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| (Array T@Ref T@Field_17904_53 Bool)) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| (Array T@Ref T@Field_17917_17918 T@Ref)) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| (Array T@Ref T@Field_25095_25096 T@FrameType)) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| (Array T@Ref T@Field_24158_3217 Int)) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| (Array T@Ref T@Field_25108_25113 T@PolymorphicMapType_18393)) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| (Array T@Ref T@Field_9461_9520 T@FrameType)) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| (Array T@Ref T@Field_9461_24232 T@PolymorphicMapType_18393)) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| (Array T@Ref T@Field_9519_9462 T@Ref)) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| (Array T@Ref T@Field_9519_3217 Int)) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| (Array T@Ref T@Field_9519_53 Bool)) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| (Array T@Ref T@Field_24210_9462 T@Ref)) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| (Array T@Ref T@Field_24210_24211 T@FrameType)) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| (Array T@Ref T@Field_24210_3217 Int)) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| (Array T@Ref T@Field_24210_53 Bool)) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| (Array T@Ref T@Field_24227_24232 T@PolymorphicMapType_18393)) ) ) ))
(declare-fun $allocated () T@Field_17904_53)
(declare-fun Lock__owner () T@Field_17917_17918)
(declare-fun Lock__user () T@Field_17917_17918)
(declare-fun Client__x () T@Field_24158_3217)
(declare-fun succHeap (T@PolymorphicMapType_17844 T@PolymorphicMapType_17844) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_17844 T@PolymorphicMapType_17844) Bool)
(declare-sort T@MultiSet_24204 0)
(declare-fun |MultiSet#Card_24204| (T@MultiSet_24204) Int)
(declare-fun |MultiSet#Difference_9588| (T@MultiSet_24204 T@MultiSet_24204) T@MultiSet_24204)
(declare-fun |MultiSet#Intersection_9588| (T@MultiSet_24204 T@MultiSet_24204) T@MultiSet_24204)
(declare-fun |MultiSet#Union_9588| (T@MultiSet_24204 T@MultiSet_24204) T@MultiSet_24204)
(declare-fun state (T@PolymorphicMapType_17844 T@PolymorphicMapType_17865) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_17865) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_18393)
(declare-fun LockSet__lockset (T@Ref T@MultiSet_24204) T@Field_24210_24211)
(declare-fun IsPredicateField_9472_9473 (T@Field_24210_24211) Bool)
(declare-fun Client__inv (T@Ref Real) T@Field_25095_25096)
(declare-fun IsPredicateField_9519_9520 (T@Field_25095_25096) Bool)
(declare-fun |LockSet__lockset#trigger_9472| (T@PolymorphicMapType_17844 T@Field_24210_24211) Bool)
(declare-fun |LockSet__lockset#everUsed_9472| (T@Field_24210_24211) Bool)
(declare-fun |Client__inv#trigger_9519| (T@PolymorphicMapType_17844 T@Field_25095_25096) Bool)
(declare-fun |Client__inv#everUsed_9519| (T@Field_25095_25096) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |MultiSet#Select_9588| (T@MultiSet_24204 T@Ref) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_17844 T@PolymorphicMapType_17844 T@PolymorphicMapType_17865) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9472 (T@Field_24210_24211) T@Field_24227_24232)
(declare-fun HasDirectPerm_24210_9520 (T@PolymorphicMapType_17865 T@Ref T@Field_24210_24211) Bool)
(declare-fun PredicateMaskField_9519 (T@Field_25095_25096) T@Field_25108_25113)
(declare-fun HasDirectPerm_9519_9520 (T@PolymorphicMapType_17865 T@Ref T@Field_25095_25096) Bool)
(declare-fun IsPredicateField_9461_58958 (T@Field_9461_9520) Bool)
(declare-fun PredicateMaskField_9461 (T@Field_9461_9520) T@Field_9461_24232)
(declare-fun HasDirectPerm_9461_9520 (T@PolymorphicMapType_17865 T@Ref T@Field_9461_9520) Bool)
(declare-fun IsWandField_24210_64654 (T@Field_24210_24211) Bool)
(declare-fun WandMaskField_24210 (T@Field_24210_24211) T@Field_24227_24232)
(declare-fun IsWandField_9519_64297 (T@Field_25095_25096) Bool)
(declare-fun WandMaskField_9519 (T@Field_25095_25096) T@Field_25108_25113)
(declare-fun IsWandField_9461_63940 (T@Field_9461_9520) Bool)
(declare-fun WandMaskField_9461 (T@Field_9461_9520) T@Field_9461_24232)
(declare-fun |LockSet__lockset#sm| (T@Ref T@MultiSet_24204) T@Field_24227_24232)
(declare-fun |Client__inv#sm| (T@Ref Real) T@Field_25108_25113)
(declare-fun dummyHeap () T@PolymorphicMapType_17844)
(declare-fun ZeroMask () T@PolymorphicMapType_17865)
(declare-fun |MultiSet#UnionOne_9587| (T@MultiSet_24204 T@Ref) T@MultiSet_24204)
(declare-fun |MultiSet#Disjoint_24204| (T@MultiSet_24204 T@MultiSet_24204) Bool)
(declare-fun InsidePredicate_25095_25095 (T@Field_25095_25096 T@FrameType T@Field_25095_25096 T@FrameType) Bool)
(declare-fun InsidePredicate_24210_24210 (T@Field_24210_24211 T@FrameType T@Field_24210_24211 T@FrameType) Bool)
(declare-fun InsidePredicate_17904_17904 (T@Field_9461_9520 T@FrameType T@Field_9461_9520 T@FrameType) Bool)
(declare-fun |MultiSet#Singleton_9587| (T@Ref) T@MultiSet_24204)
(declare-fun IsPredicateField_9461_9462 (T@Field_17917_17918) Bool)
(declare-fun IsWandField_9461_9462 (T@Field_17917_17918) Bool)
(declare-fun IsPredicateField_9467_3217 (T@Field_24158_3217) Bool)
(declare-fun IsWandField_9467_3217 (T@Field_24158_3217) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9519_74943 (T@Field_25108_25113) Bool)
(declare-fun IsWandField_9519_74959 (T@Field_25108_25113) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9519_53 (T@Field_9519_53) Bool)
(declare-fun IsWandField_9519_53 (T@Field_9519_53) Bool)
(declare-fun IsPredicateField_9519_9462 (T@Field_9519_9462) Bool)
(declare-fun IsWandField_9519_9462 (T@Field_9519_9462) Bool)
(declare-fun IsPredicateField_9519_3217 (T@Field_9519_3217) Bool)
(declare-fun IsWandField_9519_3217 (T@Field_9519_3217) Bool)
(declare-fun IsPredicateField_9472_74112 (T@Field_24227_24232) Bool)
(declare-fun IsWandField_9472_74128 (T@Field_24227_24232) Bool)
(declare-fun IsPredicateField_9472_53 (T@Field_24210_53) Bool)
(declare-fun IsWandField_9472_53 (T@Field_24210_53) Bool)
(declare-fun IsPredicateField_9472_9462 (T@Field_24210_9462) Bool)
(declare-fun IsWandField_9472_9462 (T@Field_24210_9462) Bool)
(declare-fun IsPredicateField_9472_3217 (T@Field_24210_3217) Bool)
(declare-fun IsWandField_9472_3217 (T@Field_24210_3217) Bool)
(declare-fun IsPredicateField_9467_73281 (T@Field_9461_24232) Bool)
(declare-fun IsWandField_9467_73297 (T@Field_9461_24232) Bool)
(declare-fun IsPredicateField_9467_53 (T@Field_17904_53) Bool)
(declare-fun IsWandField_9467_53 (T@Field_17904_53) Bool)
(declare-fun HasDirectPerm_24210_58670 (T@PolymorphicMapType_17865 T@Ref T@Field_24227_24232) Bool)
(declare-fun HasDirectPerm_24210_53 (T@PolymorphicMapType_17865 T@Ref T@Field_24210_53) Bool)
(declare-fun HasDirectPerm_24210_3217 (T@PolymorphicMapType_17865 T@Ref T@Field_24210_3217) Bool)
(declare-fun HasDirectPerm_24210_9462 (T@PolymorphicMapType_17865 T@Ref T@Field_24210_9462) Bool)
(declare-fun HasDirectPerm_9519_57535 (T@PolymorphicMapType_17865 T@Ref T@Field_25108_25113) Bool)
(declare-fun HasDirectPerm_9519_53 (T@PolymorphicMapType_17865 T@Ref T@Field_9519_53) Bool)
(declare-fun HasDirectPerm_9519_3217 (T@PolymorphicMapType_17865 T@Ref T@Field_9519_3217) Bool)
(declare-fun HasDirectPerm_9519_9462 (T@PolymorphicMapType_17865 T@Ref T@Field_9519_9462) Bool)
(declare-fun HasDirectPerm_9461_56394 (T@PolymorphicMapType_17865 T@Ref T@Field_9461_24232) Bool)
(declare-fun HasDirectPerm_9461_53 (T@PolymorphicMapType_17865 T@Ref T@Field_17904_53) Bool)
(declare-fun HasDirectPerm_9467_3217 (T@PolymorphicMapType_17865 T@Ref T@Field_24158_3217) Bool)
(declare-fun HasDirectPerm_9461_9462 (T@PolymorphicMapType_17865 T@Ref T@Field_17917_17918) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_17865 T@PolymorphicMapType_17865 T@PolymorphicMapType_17865) Bool)
(declare-fun |MultiSet#Equal_24204| (T@MultiSet_24204 T@MultiSet_24204) Bool)
(declare-fun |MultiSet#Empty_9568| () T@MultiSet_24204)
(declare-fun getPredWandId_9472_9473 (T@Field_24210_24211) Int)
(declare-fun getPredWandId_9519_9520 (T@Field_25095_25096) Int)
(declare-fun InsidePredicate_25095_24210 (T@Field_25095_25096 T@FrameType T@Field_24210_24211 T@FrameType) Bool)
(declare-fun InsidePredicate_25095_17904 (T@Field_25095_25096 T@FrameType T@Field_9461_9520 T@FrameType) Bool)
(declare-fun InsidePredicate_24210_25095 (T@Field_24210_24211 T@FrameType T@Field_25095_25096 T@FrameType) Bool)
(declare-fun InsidePredicate_24210_17904 (T@Field_24210_24211 T@FrameType T@Field_9461_9520 T@FrameType) Bool)
(declare-fun InsidePredicate_17904_25095 (T@Field_9461_9520 T@FrameType T@Field_25095_25096 T@FrameType) Bool)
(declare-fun InsidePredicate_17904_24210 (T@Field_9461_9520 T@FrameType T@Field_24210_24211 T@FrameType) Bool)
(declare-fun |MultiSet#Subset_24204| (T@MultiSet_24204 T@MultiSet_24204) Bool)
(assert (distinct Lock__owner Lock__user)
)
(assert (forall ((Heap0 T@PolymorphicMapType_17844) (Heap1 T@PolymorphicMapType_17844) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((a T@MultiSet_24204) (b T@MultiSet_24204) ) (!  (and (= (+ (+ (|MultiSet#Card_24204| (|MultiSet#Difference_9588| a b)) (|MultiSet#Card_24204| (|MultiSet#Difference_9588| b a))) (* 2 (|MultiSet#Card_24204| (|MultiSet#Intersection_9588| a b)))) (|MultiSet#Card_24204| (|MultiSet#Union_9588| a b))) (= (|MultiSet#Card_24204| (|MultiSet#Difference_9588| a b)) (- (|MultiSet#Card_24204| a) (|MultiSet#Card_24204| (|MultiSet#Intersection_9588| a b)))))
 :qid |stdinbpl.342:18|
 :skolemid |74|
 :pattern ( (|MultiSet#Card_24204| (|MultiSet#Difference_9588| a b)))
)))
(assert (forall ((Heap T@PolymorphicMapType_17844) (Mask T@PolymorphicMapType_17865) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_17844) (Heap1@@0 T@PolymorphicMapType_17844) (Heap2 T@PolymorphicMapType_17844) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_25108_25113) ) (!  (not (select (|PolymorphicMapType_18393_25095_62851#PolymorphicMapType_18393| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18393_25095_62851#PolymorphicMapType_18393| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_25095_25096) ) (!  (not (select (|PolymorphicMapType_18393_25095_24211#PolymorphicMapType_18393| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18393_25095_24211#PolymorphicMapType_18393| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9519_9462) ) (!  (not (select (|PolymorphicMapType_18393_25095_17918#PolymorphicMapType_18393| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18393_25095_17918#PolymorphicMapType_18393| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9519_53) ) (!  (not (select (|PolymorphicMapType_18393_25095_53#PolymorphicMapType_18393| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18393_25095_53#PolymorphicMapType_18393| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9519_3217) ) (!  (not (select (|PolymorphicMapType_18393_25095_3217#PolymorphicMapType_18393| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18393_25095_3217#PolymorphicMapType_18393| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_24227_24232) ) (!  (not (select (|PolymorphicMapType_18393_24210_61803#PolymorphicMapType_18393| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18393_24210_61803#PolymorphicMapType_18393| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_24210_24211) ) (!  (not (select (|PolymorphicMapType_18393_24210_24211#PolymorphicMapType_18393| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18393_24210_24211#PolymorphicMapType_18393| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_24210_9462) ) (!  (not (select (|PolymorphicMapType_18393_24210_17918#PolymorphicMapType_18393| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18393_24210_17918#PolymorphicMapType_18393| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_24210_53) ) (!  (not (select (|PolymorphicMapType_18393_24210_53#PolymorphicMapType_18393| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18393_24210_53#PolymorphicMapType_18393| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_24210_3217) ) (!  (not (select (|PolymorphicMapType_18393_24210_3217#PolymorphicMapType_18393| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18393_24210_3217#PolymorphicMapType_18393| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_9461_24232) ) (!  (not (select (|PolymorphicMapType_18393_9467_60755#PolymorphicMapType_18393| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18393_9467_60755#PolymorphicMapType_18393| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_9461_9520) ) (!  (not (select (|PolymorphicMapType_18393_9467_24211#PolymorphicMapType_18393| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18393_9467_24211#PolymorphicMapType_18393| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_17917_17918) ) (!  (not (select (|PolymorphicMapType_18393_9467_17918#PolymorphicMapType_18393| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18393_9467_17918#PolymorphicMapType_18393| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_17904_53) ) (!  (not (select (|PolymorphicMapType_18393_9467_53#PolymorphicMapType_18393| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18393_9467_53#PolymorphicMapType_18393| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_24158_3217) ) (!  (not (select (|PolymorphicMapType_18393_9467_3217#PolymorphicMapType_18393| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18393_9467_3217#PolymorphicMapType_18393| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((diz T@Ref) (S T@MultiSet_24204) ) (! (IsPredicateField_9472_9473 (LockSet__lockset diz S))
 :qid |stdinbpl.392:15|
 :skolemid |83|
 :pattern ( (LockSet__lockset diz S))
)))
(assert (forall ((diz@@0 T@Ref) (p_1 Real) ) (! (IsPredicateField_9519_9520 (Client__inv diz@@0 p_1))
 :qid |stdinbpl.441:15|
 :skolemid |89|
 :pattern ( (Client__inv diz@@0 p_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_17844) (diz@@1 T@Ref) (S@@0 T@MultiSet_24204) ) (! (|LockSet__lockset#everUsed_9472| (LockSet__lockset diz@@1 S@@0))
 :qid |stdinbpl.411:15|
 :skolemid |87|
 :pattern ( (|LockSet__lockset#trigger_9472| Heap@@0 (LockSet__lockset diz@@1 S@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_17844) (diz@@2 T@Ref) (p_1@@0 Real) ) (! (|Client__inv#everUsed_9519| (Client__inv diz@@2 p_1@@0))
 :qid |stdinbpl.460:15|
 :skolemid |93|
 :pattern ( (|Client__inv#trigger_9519| Heap@@1 (Client__inv diz@@2 p_1@@0)))
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (or (= (|Math#min| a@@0 b@@0) a@@0) (= (|Math#min| a@@0 b@@0) b@@0))
 :qid |stdinbpl.273:15|
 :skolemid |53|
 :pattern ( (|Math#min| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@MultiSet_24204) (b@@1 T@MultiSet_24204) (y T@Ref) ) (!  (=> (<= (|MultiSet#Select_9588| a@@1 y) (|MultiSet#Select_9588| b@@1 y)) (= (|MultiSet#Select_9588| (|MultiSet#Difference_9588| a@@1 b@@1) y) 0))
 :qid |stdinbpl.340:18|
 :skolemid |73|
 :pattern ( (|MultiSet#Difference_9588| a@@1 b@@1) (|MultiSet#Select_9588| b@@1 y) (|MultiSet#Select_9588| a@@1 y))
)))
(assert (forall ((a@@2 T@MultiSet_24204) (b@@2 T@MultiSet_24204) ) (! (= (|MultiSet#Intersection_9588| (|MultiSet#Intersection_9588| a@@2 b@@2) b@@2) (|MultiSet#Intersection_9588| a@@2 b@@2))
 :qid |stdinbpl.331:18|
 :skolemid |70|
 :pattern ( (|MultiSet#Intersection_9588| (|MultiSet#Intersection_9588| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.276:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((a@@4 T@MultiSet_24204) (b@@3 T@MultiSet_24204) (o T@Ref) ) (! (= (|MultiSet#Select_9588| (|MultiSet#Intersection_9588| a@@4 b@@3) o) (|Math#min| (|MultiSet#Select_9588| a@@4 o) (|MultiSet#Select_9588| b@@3 o)))
 :qid |stdinbpl.327:18|
 :skolemid |69|
 :pattern ( (|MultiSet#Select_9588| (|MultiSet#Intersection_9588| a@@4 b@@3) o))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_17844) (ExhaleHeap T@PolymorphicMapType_17844) (Mask@@0 T@PolymorphicMapType_17865) (pm_f T@Field_24210_24211) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_24210_9520 Mask@@0 null pm_f) (IsPredicateField_9472_9473 pm_f)) (= (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@2) null (PredicateMaskField_9472 pm_f)) (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| ExhaleHeap) null (PredicateMaskField_9472 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_9472_9473 pm_f) (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| ExhaleHeap) null (PredicateMaskField_9472 pm_f)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_17844) (ExhaleHeap@@0 T@PolymorphicMapType_17844) (Mask@@1 T@PolymorphicMapType_17865) (pm_f@@0 T@Field_25095_25096) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9519_9520 Mask@@1 null pm_f@@0) (IsPredicateField_9519_9520 pm_f@@0)) (= (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@3) null (PredicateMaskField_9519 pm_f@@0)) (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| ExhaleHeap@@0) null (PredicateMaskField_9519 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_9519_9520 pm_f@@0) (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| ExhaleHeap@@0) null (PredicateMaskField_9519 pm_f@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_17844) (ExhaleHeap@@1 T@PolymorphicMapType_17844) (Mask@@2 T@PolymorphicMapType_17865) (pm_f@@1 T@Field_9461_9520) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_9461_9520 Mask@@2 null pm_f@@1) (IsPredicateField_9461_58958 pm_f@@1)) (= (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@4) null (PredicateMaskField_9461 pm_f@@1)) (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| ExhaleHeap@@1) null (PredicateMaskField_9461 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_9461_58958 pm_f@@1) (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| ExhaleHeap@@1) null (PredicateMaskField_9461 pm_f@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_17844) (ExhaleHeap@@2 T@PolymorphicMapType_17844) (Mask@@3 T@PolymorphicMapType_17865) (pm_f@@2 T@Field_24210_24211) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_24210_9520 Mask@@3 null pm_f@@2) (IsWandField_24210_64654 pm_f@@2)) (= (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@5) null (WandMaskField_24210 pm_f@@2)) (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| ExhaleHeap@@2) null (WandMaskField_24210 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_24210_64654 pm_f@@2) (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| ExhaleHeap@@2) null (WandMaskField_24210 pm_f@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_17844) (ExhaleHeap@@3 T@PolymorphicMapType_17844) (Mask@@4 T@PolymorphicMapType_17865) (pm_f@@3 T@Field_25095_25096) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_9519_9520 Mask@@4 null pm_f@@3) (IsWandField_9519_64297 pm_f@@3)) (= (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@6) null (WandMaskField_9519 pm_f@@3)) (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| ExhaleHeap@@3) null (WandMaskField_9519 pm_f@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_9519_64297 pm_f@@3) (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| ExhaleHeap@@3) null (WandMaskField_9519 pm_f@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_17844) (ExhaleHeap@@4 T@PolymorphicMapType_17844) (Mask@@5 T@PolymorphicMapType_17865) (pm_f@@4 T@Field_9461_9520) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_9461_9520 Mask@@5 null pm_f@@4) (IsWandField_9461_63940 pm_f@@4)) (= (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@7) null (WandMaskField_9461 pm_f@@4)) (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| ExhaleHeap@@4) null (WandMaskField_9461 pm_f@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_9461_63940 pm_f@@4) (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| ExhaleHeap@@4) null (WandMaskField_9461 pm_f@@4)))
)))
(assert (forall ((diz@@3 T@Ref) (S@@1 T@MultiSet_24204) (diz2 T@Ref) (S2 T@MultiSet_24204) ) (!  (=> (= (LockSet__lockset diz@@3 S@@1) (LockSet__lockset diz2 S2)) (and (= diz@@3 diz2) (= S@@1 S2)))
 :qid |stdinbpl.402:15|
 :skolemid |85|
 :pattern ( (LockSet__lockset diz@@3 S@@1) (LockSet__lockset diz2 S2))
)))
(assert (forall ((diz@@4 T@Ref) (S@@2 T@MultiSet_24204) (diz2@@0 T@Ref) (S2@@0 T@MultiSet_24204) ) (!  (=> (= (|LockSet__lockset#sm| diz@@4 S@@2) (|LockSet__lockset#sm| diz2@@0 S2@@0)) (and (= diz@@4 diz2@@0) (= S@@2 S2@@0)))
 :qid |stdinbpl.406:15|
 :skolemid |86|
 :pattern ( (|LockSet__lockset#sm| diz@@4 S@@2) (|LockSet__lockset#sm| diz2@@0 S2@@0))
)))
(assert (forall ((diz@@5 T@Ref) (p_1@@1 Real) (diz2@@1 T@Ref) (p2_1 Real) ) (!  (=> (= (Client__inv diz@@5 p_1@@1) (Client__inv diz2@@1 p2_1)) (and (= diz@@5 diz2@@1) (= p_1@@1 p2_1)))
 :qid |stdinbpl.451:15|
 :skolemid |91|
 :pattern ( (Client__inv diz@@5 p_1@@1) (Client__inv diz2@@1 p2_1))
)))
(assert (forall ((diz@@6 T@Ref) (p_1@@2 Real) (diz2@@2 T@Ref) (p2_1@@0 Real) ) (!  (=> (= (|Client__inv#sm| diz@@6 p_1@@2) (|Client__inv#sm| diz2@@2 p2_1@@0)) (and (= diz@@6 diz2@@2) (= p_1@@2 p2_1@@0)))
 :qid |stdinbpl.455:15|
 :skolemid |92|
 :pattern ( (|Client__inv#sm| diz@@6 p_1@@2) (|Client__inv#sm| diz2@@2 p2_1@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((a@@5 T@MultiSet_24204) (x T@Ref) ) (! (= (|MultiSet#Card_24204| (|MultiSet#UnionOne_9587| a@@5 x)) (+ (|MultiSet#Card_24204| a@@5) 1))
 :qid |stdinbpl.313:18|
 :skolemid |65|
 :pattern ( (|MultiSet#Card_24204| (|MultiSet#UnionOne_9587| a@@5 x)))
 :pattern ( (|MultiSet#UnionOne_9587| a@@5 x) (|MultiSet#Card_24204| a@@5))
)))
(assert (forall ((a@@6 T@MultiSet_24204) (b@@4 T@MultiSet_24204) ) (! (= (|MultiSet#Disjoint_24204| a@@6 b@@4) (forall ((o@@0 T@Ref) ) (!  (or (= (|MultiSet#Select_9588| a@@6 o@@0) 0) (= (|MultiSet#Select_9588| b@@4 o@@0) 0))
 :qid |stdinbpl.363:39|
 :skolemid |80|
 :pattern ( (|MultiSet#Select_9588| a@@6 o@@0))
 :pattern ( (|MultiSet#Select_9588| b@@4 o@@0))
)))
 :qid |stdinbpl.362:18|
 :skolemid |81|
 :pattern ( (|MultiSet#Disjoint_24204| a@@6 b@@4))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_17844) (ExhaleHeap@@5 T@PolymorphicMapType_17844) (Mask@@6 T@PolymorphicMapType_17865) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@8) o_1 $allocated) (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| ExhaleHeap@@5) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| ExhaleHeap@@5) o_1 $allocated))
)))
(assert (forall ((p T@Field_25095_25096) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_25095_25095 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25095_25095 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_24210_24211) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_24210_24210 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_24210_24210 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_9461_9520) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_17904_17904 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17904_17904 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((r T@Ref) ) (!  (and (= (|MultiSet#Card_24204| (|MultiSet#Singleton_9587| r)) 1) (= (|MultiSet#Select_9588| (|MultiSet#Singleton_9587| r) r) 1))
 :qid |stdinbpl.305:18|
 :skolemid |62|
 :pattern ( (|MultiSet#Singleton_9587| r))
)))
(assert  (not (IsPredicateField_9461_9462 Lock__owner)))
(assert  (not (IsWandField_9461_9462 Lock__owner)))
(assert  (not (IsPredicateField_9461_9462 Lock__user)))
(assert  (not (IsWandField_9461_9462 Lock__user)))
(assert  (not (IsPredicateField_9467_3217 Client__x)))
(assert  (not (IsWandField_9467_3217 Client__x)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_17844) (ExhaleHeap@@6 T@PolymorphicMapType_17844) (Mask@@7 T@PolymorphicMapType_17865) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@9 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_17865) (o_2@@14 T@Ref) (f_4@@14 T@Field_25108_25113) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_17865_9519_71502#PolymorphicMapType_17865| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_9519_74943 f_4@@14))) (not (IsWandField_9519_74959 f_4@@14))) (<= (select (|PolymorphicMapType_17865_9519_71502#PolymorphicMapType_17865| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_17865_9519_71502#PolymorphicMapType_17865| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_17865) (o_2@@15 T@Ref) (f_4@@15 T@Field_9519_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_17865_9519_53#PolymorphicMapType_17865| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_9519_53 f_4@@15))) (not (IsWandField_9519_53 f_4@@15))) (<= (select (|PolymorphicMapType_17865_9519_53#PolymorphicMapType_17865| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_17865_9519_53#PolymorphicMapType_17865| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_17865) (o_2@@16 T@Ref) (f_4@@16 T@Field_9519_9462) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_17865_9519_9462#PolymorphicMapType_17865| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_9519_9462 f_4@@16))) (not (IsWandField_9519_9462 f_4@@16))) (<= (select (|PolymorphicMapType_17865_9519_9462#PolymorphicMapType_17865| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_17865_9519_9462#PolymorphicMapType_17865| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_17865) (o_2@@17 T@Ref) (f_4@@17 T@Field_25095_25096) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_17865_9519_9520#PolymorphicMapType_17865| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_9519_9520 f_4@@17))) (not (IsWandField_9519_64297 f_4@@17))) (<= (select (|PolymorphicMapType_17865_9519_9520#PolymorphicMapType_17865| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_17865_9519_9520#PolymorphicMapType_17865| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_17865) (o_2@@18 T@Ref) (f_4@@18 T@Field_9519_3217) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_17865_9519_3217#PolymorphicMapType_17865| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_9519_3217 f_4@@18))) (not (IsWandField_9519_3217 f_4@@18))) (<= (select (|PolymorphicMapType_17865_9519_3217#PolymorphicMapType_17865| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_17865_9519_3217#PolymorphicMapType_17865| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_17865) (o_2@@19 T@Ref) (f_4@@19 T@Field_24227_24232) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_17865_9472_71091#PolymorphicMapType_17865| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_9472_74112 f_4@@19))) (not (IsWandField_9472_74128 f_4@@19))) (<= (select (|PolymorphicMapType_17865_9472_71091#PolymorphicMapType_17865| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_17865_9472_71091#PolymorphicMapType_17865| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_17865) (o_2@@20 T@Ref) (f_4@@20 T@Field_24210_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_17865_9472_53#PolymorphicMapType_17865| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_9472_53 f_4@@20))) (not (IsWandField_9472_53 f_4@@20))) (<= (select (|PolymorphicMapType_17865_9472_53#PolymorphicMapType_17865| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_17865_9472_53#PolymorphicMapType_17865| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_17865) (o_2@@21 T@Ref) (f_4@@21 T@Field_24210_9462) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_17865_9472_9462#PolymorphicMapType_17865| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_9472_9462 f_4@@21))) (not (IsWandField_9472_9462 f_4@@21))) (<= (select (|PolymorphicMapType_17865_9472_9462#PolymorphicMapType_17865| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_17865_9472_9462#PolymorphicMapType_17865| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_17865) (o_2@@22 T@Ref) (f_4@@22 T@Field_24210_24211) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_17865_9472_9473#PolymorphicMapType_17865| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_9472_9473 f_4@@22))) (not (IsWandField_24210_64654 f_4@@22))) (<= (select (|PolymorphicMapType_17865_9472_9473#PolymorphicMapType_17865| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_17865_9472_9473#PolymorphicMapType_17865| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_17865) (o_2@@23 T@Ref) (f_4@@23 T@Field_24210_3217) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_17865_9472_3217#PolymorphicMapType_17865| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_9472_3217 f_4@@23))) (not (IsWandField_9472_3217 f_4@@23))) (<= (select (|PolymorphicMapType_17865_9472_3217#PolymorphicMapType_17865| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_17865_9472_3217#PolymorphicMapType_17865| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_17865) (o_2@@24 T@Ref) (f_4@@24 T@Field_9461_24232) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_17865_9467_70680#PolymorphicMapType_17865| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_9467_73281 f_4@@24))) (not (IsWandField_9467_73297 f_4@@24))) (<= (select (|PolymorphicMapType_17865_9467_70680#PolymorphicMapType_17865| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_17865_9467_70680#PolymorphicMapType_17865| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_17865) (o_2@@25 T@Ref) (f_4@@25 T@Field_17904_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_17865_9467_53#PolymorphicMapType_17865| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_9467_53 f_4@@25))) (not (IsWandField_9467_53 f_4@@25))) (<= (select (|PolymorphicMapType_17865_9467_53#PolymorphicMapType_17865| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_17865_9467_53#PolymorphicMapType_17865| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_17865) (o_2@@26 T@Ref) (f_4@@26 T@Field_17917_17918) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_17865_9461_9462#PolymorphicMapType_17865| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_9461_9462 f_4@@26))) (not (IsWandField_9461_9462 f_4@@26))) (<= (select (|PolymorphicMapType_17865_9461_9462#PolymorphicMapType_17865| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_17865_9461_9462#PolymorphicMapType_17865| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_17865) (o_2@@27 T@Ref) (f_4@@27 T@Field_9461_9520) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_17865_9467_9473#PolymorphicMapType_17865| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_9461_58958 f_4@@27))) (not (IsWandField_9461_63940 f_4@@27))) (<= (select (|PolymorphicMapType_17865_9467_9473#PolymorphicMapType_17865| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_17865_9467_9473#PolymorphicMapType_17865| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_17865) (o_2@@28 T@Ref) (f_4@@28 T@Field_24158_3217) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_17865_9467_3217#PolymorphicMapType_17865| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_9467_3217 f_4@@28))) (not (IsWandField_9467_3217 f_4@@28))) (<= (select (|PolymorphicMapType_17865_9467_3217#PolymorphicMapType_17865| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_17865_9467_3217#PolymorphicMapType_17865| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_17865) (o_2@@29 T@Ref) (f_4@@29 T@Field_24227_24232) ) (! (= (HasDirectPerm_24210_58670 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_17865_9472_71091#PolymorphicMapType_17865| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24210_58670 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_17865) (o_2@@30 T@Ref) (f_4@@30 T@Field_24210_53) ) (! (= (HasDirectPerm_24210_53 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_17865_9472_53#PolymorphicMapType_17865| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24210_53 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_17865) (o_2@@31 T@Ref) (f_4@@31 T@Field_24210_3217) ) (! (= (HasDirectPerm_24210_3217 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_17865_9472_3217#PolymorphicMapType_17865| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24210_3217 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_17865) (o_2@@32 T@Ref) (f_4@@32 T@Field_24210_24211) ) (! (= (HasDirectPerm_24210_9520 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_17865_9472_9473#PolymorphicMapType_17865| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24210_9520 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_17865) (o_2@@33 T@Ref) (f_4@@33 T@Field_24210_9462) ) (! (= (HasDirectPerm_24210_9462 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_17865_9472_9462#PolymorphicMapType_17865| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24210_9462 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_17865) (o_2@@34 T@Ref) (f_4@@34 T@Field_25108_25113) ) (! (= (HasDirectPerm_9519_57535 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_17865_9519_71502#PolymorphicMapType_17865| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9519_57535 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_17865) (o_2@@35 T@Ref) (f_4@@35 T@Field_9519_53) ) (! (= (HasDirectPerm_9519_53 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_17865_9519_53#PolymorphicMapType_17865| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9519_53 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_17865) (o_2@@36 T@Ref) (f_4@@36 T@Field_9519_3217) ) (! (= (HasDirectPerm_9519_3217 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_17865_9519_3217#PolymorphicMapType_17865| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9519_3217 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_17865) (o_2@@37 T@Ref) (f_4@@37 T@Field_25095_25096) ) (! (= (HasDirectPerm_9519_9520 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_17865_9519_9520#PolymorphicMapType_17865| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9519_9520 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_17865) (o_2@@38 T@Ref) (f_4@@38 T@Field_9519_9462) ) (! (= (HasDirectPerm_9519_9462 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_17865_9519_9462#PolymorphicMapType_17865| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9519_9462 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_17865) (o_2@@39 T@Ref) (f_4@@39 T@Field_9461_24232) ) (! (= (HasDirectPerm_9461_56394 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_17865_9467_70680#PolymorphicMapType_17865| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9461_56394 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_17865) (o_2@@40 T@Ref) (f_4@@40 T@Field_17904_53) ) (! (= (HasDirectPerm_9461_53 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_17865_9467_53#PolymorphicMapType_17865| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9461_53 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_17865) (o_2@@41 T@Ref) (f_4@@41 T@Field_24158_3217) ) (! (= (HasDirectPerm_9467_3217 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_17865_9467_3217#PolymorphicMapType_17865| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9467_3217 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_17865) (o_2@@42 T@Ref) (f_4@@42 T@Field_9461_9520) ) (! (= (HasDirectPerm_9461_9520 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_17865_9467_9473#PolymorphicMapType_17865| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9461_9520 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_17865) (o_2@@43 T@Ref) (f_4@@43 T@Field_17917_17918) ) (! (= (HasDirectPerm_9461_9462 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_17865_9461_9462#PolymorphicMapType_17865| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9461_9462 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((a@@7 T@MultiSet_24204) (b@@5 T@MultiSet_24204) ) (! (= (|MultiSet#Card_24204| (|MultiSet#Union_9588| a@@7 b@@5)) (+ (|MultiSet#Card_24204| a@@7) (|MultiSet#Card_24204| b@@5)))
 :qid |stdinbpl.323:18|
 :skolemid |68|
 :pattern ( (|MultiSet#Card_24204| (|MultiSet#Union_9588| a@@7 b@@5)))
 :pattern ( (|MultiSet#Card_24204| a@@7) (|MultiSet#Union_9588| a@@7 b@@5))
 :pattern ( (|MultiSet#Card_24204| b@@5) (|MultiSet#Union_9588| a@@7 b@@5))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_17844) (ExhaleHeap@@7 T@PolymorphicMapType_17844) (Mask@@38 T@PolymorphicMapType_17865) (o_1@@0 T@Ref) (f_2 T@Field_24227_24232) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_24210_58670 Mask@@38 o_1@@0 f_2) (= (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@10) o_1@@0 f_2) (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| ExhaleHeap@@7) o_1@@0 f_2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| ExhaleHeap@@7) o_1@@0 f_2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_17844) (ExhaleHeap@@8 T@PolymorphicMapType_17844) (Mask@@39 T@PolymorphicMapType_17865) (o_1@@1 T@Ref) (f_2@@0 T@Field_24210_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_24210_53 Mask@@39 o_1@@1 f_2@@0) (= (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@11) o_1@@1 f_2@@0) (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| ExhaleHeap@@8) o_1@@1 f_2@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| ExhaleHeap@@8) o_1@@1 f_2@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_17844) (ExhaleHeap@@9 T@PolymorphicMapType_17844) (Mask@@40 T@PolymorphicMapType_17865) (o_1@@2 T@Ref) (f_2@@1 T@Field_24210_3217) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_24210_3217 Mask@@40 o_1@@2 f_2@@1) (= (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@12) o_1@@2 f_2@@1) (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| ExhaleHeap@@9) o_1@@2 f_2@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| ExhaleHeap@@9) o_1@@2 f_2@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_17844) (ExhaleHeap@@10 T@PolymorphicMapType_17844) (Mask@@41 T@PolymorphicMapType_17865) (o_1@@3 T@Ref) (f_2@@2 T@Field_24210_24211) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_24210_9520 Mask@@41 o_1@@3 f_2@@2) (= (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@13) o_1@@3 f_2@@2) (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| ExhaleHeap@@10) o_1@@3 f_2@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| ExhaleHeap@@10) o_1@@3 f_2@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_17844) (ExhaleHeap@@11 T@PolymorphicMapType_17844) (Mask@@42 T@PolymorphicMapType_17865) (o_1@@4 T@Ref) (f_2@@3 T@Field_24210_9462) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_24210_9462 Mask@@42 o_1@@4 f_2@@3) (= (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@14) o_1@@4 f_2@@3) (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| ExhaleHeap@@11) o_1@@4 f_2@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| ExhaleHeap@@11) o_1@@4 f_2@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_17844) (ExhaleHeap@@12 T@PolymorphicMapType_17844) (Mask@@43 T@PolymorphicMapType_17865) (o_1@@5 T@Ref) (f_2@@4 T@Field_25108_25113) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_9519_57535 Mask@@43 o_1@@5 f_2@@4) (= (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@15) o_1@@5 f_2@@4) (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| ExhaleHeap@@12) o_1@@5 f_2@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| ExhaleHeap@@12) o_1@@5 f_2@@4))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_17844) (ExhaleHeap@@13 T@PolymorphicMapType_17844) (Mask@@44 T@PolymorphicMapType_17865) (o_1@@6 T@Ref) (f_2@@5 T@Field_9519_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_9519_53 Mask@@44 o_1@@6 f_2@@5) (= (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@16) o_1@@6 f_2@@5) (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| ExhaleHeap@@13) o_1@@6 f_2@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| ExhaleHeap@@13) o_1@@6 f_2@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_17844) (ExhaleHeap@@14 T@PolymorphicMapType_17844) (Mask@@45 T@PolymorphicMapType_17865) (o_1@@7 T@Ref) (f_2@@6 T@Field_9519_3217) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_9519_3217 Mask@@45 o_1@@7 f_2@@6) (= (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@17) o_1@@7 f_2@@6) (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| ExhaleHeap@@14) o_1@@7 f_2@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| ExhaleHeap@@14) o_1@@7 f_2@@6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_17844) (ExhaleHeap@@15 T@PolymorphicMapType_17844) (Mask@@46 T@PolymorphicMapType_17865) (o_1@@8 T@Ref) (f_2@@7 T@Field_25095_25096) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_9519_9520 Mask@@46 o_1@@8 f_2@@7) (= (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@18) o_1@@8 f_2@@7) (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| ExhaleHeap@@15) o_1@@8 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| ExhaleHeap@@15) o_1@@8 f_2@@7))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_17844) (ExhaleHeap@@16 T@PolymorphicMapType_17844) (Mask@@47 T@PolymorphicMapType_17865) (o_1@@9 T@Ref) (f_2@@8 T@Field_9519_9462) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_9519_9462 Mask@@47 o_1@@9 f_2@@8) (= (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@19) o_1@@9 f_2@@8) (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| ExhaleHeap@@16) o_1@@9 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| ExhaleHeap@@16) o_1@@9 f_2@@8))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_17844) (ExhaleHeap@@17 T@PolymorphicMapType_17844) (Mask@@48 T@PolymorphicMapType_17865) (o_1@@10 T@Ref) (f_2@@9 T@Field_9461_24232) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_9461_56394 Mask@@48 o_1@@10 f_2@@9) (= (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@20) o_1@@10 f_2@@9) (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| ExhaleHeap@@17) o_1@@10 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| ExhaleHeap@@17) o_1@@10 f_2@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_17844) (ExhaleHeap@@18 T@PolymorphicMapType_17844) (Mask@@49 T@PolymorphicMapType_17865) (o_1@@11 T@Ref) (f_2@@10 T@Field_17904_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_9461_53 Mask@@49 o_1@@11 f_2@@10) (= (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@21) o_1@@11 f_2@@10) (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| ExhaleHeap@@18) o_1@@11 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| ExhaleHeap@@18) o_1@@11 f_2@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_17844) (ExhaleHeap@@19 T@PolymorphicMapType_17844) (Mask@@50 T@PolymorphicMapType_17865) (o_1@@12 T@Ref) (f_2@@11 T@Field_24158_3217) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_9467_3217 Mask@@50 o_1@@12 f_2@@11) (= (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@22) o_1@@12 f_2@@11) (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| ExhaleHeap@@19) o_1@@12 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| ExhaleHeap@@19) o_1@@12 f_2@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_17844) (ExhaleHeap@@20 T@PolymorphicMapType_17844) (Mask@@51 T@PolymorphicMapType_17865) (o_1@@13 T@Ref) (f_2@@12 T@Field_9461_9520) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_9461_9520 Mask@@51 o_1@@13 f_2@@12) (= (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@23) o_1@@13 f_2@@12) (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| ExhaleHeap@@20) o_1@@13 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| ExhaleHeap@@20) o_1@@13 f_2@@12))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_17844) (ExhaleHeap@@21 T@PolymorphicMapType_17844) (Mask@@52 T@PolymorphicMapType_17865) (o_1@@14 T@Ref) (f_2@@13 T@Field_17917_17918) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_9461_9462 Mask@@52 o_1@@14 f_2@@13) (= (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@24) o_1@@14 f_2@@13) (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| ExhaleHeap@@21) o_1@@14 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| ExhaleHeap@@21) o_1@@14 f_2@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_25108_25113) ) (! (= (select (|PolymorphicMapType_17865_9519_71502#PolymorphicMapType_17865| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17865_9519_71502#PolymorphicMapType_17865| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_9519_53) ) (! (= (select (|PolymorphicMapType_17865_9519_53#PolymorphicMapType_17865| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17865_9519_53#PolymorphicMapType_17865| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_9519_9462) ) (! (= (select (|PolymorphicMapType_17865_9519_9462#PolymorphicMapType_17865| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17865_9519_9462#PolymorphicMapType_17865| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_25095_25096) ) (! (= (select (|PolymorphicMapType_17865_9519_9520#PolymorphicMapType_17865| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17865_9519_9520#PolymorphicMapType_17865| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_9519_3217) ) (! (= (select (|PolymorphicMapType_17865_9519_3217#PolymorphicMapType_17865| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17865_9519_3217#PolymorphicMapType_17865| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_24227_24232) ) (! (= (select (|PolymorphicMapType_17865_9472_71091#PolymorphicMapType_17865| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17865_9472_71091#PolymorphicMapType_17865| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_24210_53) ) (! (= (select (|PolymorphicMapType_17865_9472_53#PolymorphicMapType_17865| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17865_9472_53#PolymorphicMapType_17865| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_24210_9462) ) (! (= (select (|PolymorphicMapType_17865_9472_9462#PolymorphicMapType_17865| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17865_9472_9462#PolymorphicMapType_17865| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_24210_24211) ) (! (= (select (|PolymorphicMapType_17865_9472_9473#PolymorphicMapType_17865| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17865_9472_9473#PolymorphicMapType_17865| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_24210_3217) ) (! (= (select (|PolymorphicMapType_17865_9472_3217#PolymorphicMapType_17865| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17865_9472_3217#PolymorphicMapType_17865| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_9461_24232) ) (! (= (select (|PolymorphicMapType_17865_9467_70680#PolymorphicMapType_17865| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17865_9467_70680#PolymorphicMapType_17865| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_17904_53) ) (! (= (select (|PolymorphicMapType_17865_9467_53#PolymorphicMapType_17865| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17865_9467_53#PolymorphicMapType_17865| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_17917_17918) ) (! (= (select (|PolymorphicMapType_17865_9461_9462#PolymorphicMapType_17865| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17865_9461_9462#PolymorphicMapType_17865| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_9461_9520) ) (! (= (select (|PolymorphicMapType_17865_9467_9473#PolymorphicMapType_17865| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17865_9467_9473#PolymorphicMapType_17865| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_24158_3217) ) (! (= (select (|PolymorphicMapType_17865_9467_3217#PolymorphicMapType_17865| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17865_9467_3217#PolymorphicMapType_17865| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_17865) (SummandMask1 T@PolymorphicMapType_17865) (SummandMask2 T@PolymorphicMapType_17865) (o_2@@59 T@Ref) (f_4@@59 T@Field_25108_25113) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_17865_9519_71502#PolymorphicMapType_17865| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_17865_9519_71502#PolymorphicMapType_17865| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_17865_9519_71502#PolymorphicMapType_17865| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17865_9519_71502#PolymorphicMapType_17865| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17865_9519_71502#PolymorphicMapType_17865| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17865_9519_71502#PolymorphicMapType_17865| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_17865) (SummandMask1@@0 T@PolymorphicMapType_17865) (SummandMask2@@0 T@PolymorphicMapType_17865) (o_2@@60 T@Ref) (f_4@@60 T@Field_9519_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_17865_9519_53#PolymorphicMapType_17865| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_17865_9519_53#PolymorphicMapType_17865| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_17865_9519_53#PolymorphicMapType_17865| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17865_9519_53#PolymorphicMapType_17865| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17865_9519_53#PolymorphicMapType_17865| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17865_9519_53#PolymorphicMapType_17865| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_17865) (SummandMask1@@1 T@PolymorphicMapType_17865) (SummandMask2@@1 T@PolymorphicMapType_17865) (o_2@@61 T@Ref) (f_4@@61 T@Field_9519_9462) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_17865_9519_9462#PolymorphicMapType_17865| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_17865_9519_9462#PolymorphicMapType_17865| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_17865_9519_9462#PolymorphicMapType_17865| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17865_9519_9462#PolymorphicMapType_17865| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17865_9519_9462#PolymorphicMapType_17865| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17865_9519_9462#PolymorphicMapType_17865| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_17865) (SummandMask1@@2 T@PolymorphicMapType_17865) (SummandMask2@@2 T@PolymorphicMapType_17865) (o_2@@62 T@Ref) (f_4@@62 T@Field_25095_25096) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_17865_9519_9520#PolymorphicMapType_17865| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_17865_9519_9520#PolymorphicMapType_17865| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_17865_9519_9520#PolymorphicMapType_17865| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17865_9519_9520#PolymorphicMapType_17865| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17865_9519_9520#PolymorphicMapType_17865| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17865_9519_9520#PolymorphicMapType_17865| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_17865) (SummandMask1@@3 T@PolymorphicMapType_17865) (SummandMask2@@3 T@PolymorphicMapType_17865) (o_2@@63 T@Ref) (f_4@@63 T@Field_9519_3217) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_17865_9519_3217#PolymorphicMapType_17865| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_17865_9519_3217#PolymorphicMapType_17865| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_17865_9519_3217#PolymorphicMapType_17865| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17865_9519_3217#PolymorphicMapType_17865| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17865_9519_3217#PolymorphicMapType_17865| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17865_9519_3217#PolymorphicMapType_17865| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_17865) (SummandMask1@@4 T@PolymorphicMapType_17865) (SummandMask2@@4 T@PolymorphicMapType_17865) (o_2@@64 T@Ref) (f_4@@64 T@Field_24227_24232) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_17865_9472_71091#PolymorphicMapType_17865| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_17865_9472_71091#PolymorphicMapType_17865| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_17865_9472_71091#PolymorphicMapType_17865| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_17865_9472_71091#PolymorphicMapType_17865| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_17865_9472_71091#PolymorphicMapType_17865| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_17865_9472_71091#PolymorphicMapType_17865| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_17865) (SummandMask1@@5 T@PolymorphicMapType_17865) (SummandMask2@@5 T@PolymorphicMapType_17865) (o_2@@65 T@Ref) (f_4@@65 T@Field_24210_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_17865_9472_53#PolymorphicMapType_17865| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_17865_9472_53#PolymorphicMapType_17865| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_17865_9472_53#PolymorphicMapType_17865| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_17865_9472_53#PolymorphicMapType_17865| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_17865_9472_53#PolymorphicMapType_17865| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_17865_9472_53#PolymorphicMapType_17865| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_17865) (SummandMask1@@6 T@PolymorphicMapType_17865) (SummandMask2@@6 T@PolymorphicMapType_17865) (o_2@@66 T@Ref) (f_4@@66 T@Field_24210_9462) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_17865_9472_9462#PolymorphicMapType_17865| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_17865_9472_9462#PolymorphicMapType_17865| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_17865_9472_9462#PolymorphicMapType_17865| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_17865_9472_9462#PolymorphicMapType_17865| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_17865_9472_9462#PolymorphicMapType_17865| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_17865_9472_9462#PolymorphicMapType_17865| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_17865) (SummandMask1@@7 T@PolymorphicMapType_17865) (SummandMask2@@7 T@PolymorphicMapType_17865) (o_2@@67 T@Ref) (f_4@@67 T@Field_24210_24211) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_17865_9472_9473#PolymorphicMapType_17865| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_17865_9472_9473#PolymorphicMapType_17865| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_17865_9472_9473#PolymorphicMapType_17865| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_17865_9472_9473#PolymorphicMapType_17865| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_17865_9472_9473#PolymorphicMapType_17865| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_17865_9472_9473#PolymorphicMapType_17865| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_17865) (SummandMask1@@8 T@PolymorphicMapType_17865) (SummandMask2@@8 T@PolymorphicMapType_17865) (o_2@@68 T@Ref) (f_4@@68 T@Field_24210_3217) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_17865_9472_3217#PolymorphicMapType_17865| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_17865_9472_3217#PolymorphicMapType_17865| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_17865_9472_3217#PolymorphicMapType_17865| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_17865_9472_3217#PolymorphicMapType_17865| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_17865_9472_3217#PolymorphicMapType_17865| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_17865_9472_3217#PolymorphicMapType_17865| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_17865) (SummandMask1@@9 T@PolymorphicMapType_17865) (SummandMask2@@9 T@PolymorphicMapType_17865) (o_2@@69 T@Ref) (f_4@@69 T@Field_9461_24232) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_17865_9467_70680#PolymorphicMapType_17865| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_17865_9467_70680#PolymorphicMapType_17865| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_17865_9467_70680#PolymorphicMapType_17865| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_17865_9467_70680#PolymorphicMapType_17865| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_17865_9467_70680#PolymorphicMapType_17865| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_17865_9467_70680#PolymorphicMapType_17865| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_17865) (SummandMask1@@10 T@PolymorphicMapType_17865) (SummandMask2@@10 T@PolymorphicMapType_17865) (o_2@@70 T@Ref) (f_4@@70 T@Field_17904_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_17865_9467_53#PolymorphicMapType_17865| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_17865_9467_53#PolymorphicMapType_17865| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_17865_9467_53#PolymorphicMapType_17865| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_17865_9467_53#PolymorphicMapType_17865| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_17865_9467_53#PolymorphicMapType_17865| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_17865_9467_53#PolymorphicMapType_17865| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_17865) (SummandMask1@@11 T@PolymorphicMapType_17865) (SummandMask2@@11 T@PolymorphicMapType_17865) (o_2@@71 T@Ref) (f_4@@71 T@Field_17917_17918) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_17865_9461_9462#PolymorphicMapType_17865| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_17865_9461_9462#PolymorphicMapType_17865| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_17865_9461_9462#PolymorphicMapType_17865| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_17865_9461_9462#PolymorphicMapType_17865| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_17865_9461_9462#PolymorphicMapType_17865| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_17865_9461_9462#PolymorphicMapType_17865| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_17865) (SummandMask1@@12 T@PolymorphicMapType_17865) (SummandMask2@@12 T@PolymorphicMapType_17865) (o_2@@72 T@Ref) (f_4@@72 T@Field_9461_9520) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_17865_9467_9473#PolymorphicMapType_17865| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_17865_9467_9473#PolymorphicMapType_17865| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_17865_9467_9473#PolymorphicMapType_17865| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_17865_9467_9473#PolymorphicMapType_17865| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_17865_9467_9473#PolymorphicMapType_17865| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_17865_9467_9473#PolymorphicMapType_17865| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_17865) (SummandMask1@@13 T@PolymorphicMapType_17865) (SummandMask2@@13 T@PolymorphicMapType_17865) (o_2@@73 T@Ref) (f_4@@73 T@Field_24158_3217) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_17865_9467_3217#PolymorphicMapType_17865| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_17865_9467_3217#PolymorphicMapType_17865| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_17865_9467_3217#PolymorphicMapType_17865| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_17865_9467_3217#PolymorphicMapType_17865| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_17865_9467_3217#PolymorphicMapType_17865| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_17865_9467_3217#PolymorphicMapType_17865| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_17844) (ExhaleHeap@@22 T@PolymorphicMapType_17844) (Mask@@53 T@PolymorphicMapType_17865) (pm_f@@5 T@Field_24210_24211) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_24210_9520 Mask@@53 null pm_f@@5) (IsPredicateField_9472_9473 pm_f@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2@@14 T@Field_24158_3217) ) (!  (=> (select (|PolymorphicMapType_18393_9467_3217#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@25) null (PredicateMaskField_9472 pm_f@@5))) o2 f_2@@14) (= (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@25) o2 f_2@@14) (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| ExhaleHeap@@22) o2 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| ExhaleHeap@@22) o2 f_2@@14))
)) (forall ((o2@@0 T@Ref) (f_2@@15 T@Field_17904_53) ) (!  (=> (select (|PolymorphicMapType_18393_9467_53#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@25) null (PredicateMaskField_9472 pm_f@@5))) o2@@0 f_2@@15) (= (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@25) o2@@0 f_2@@15) (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@0 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@0 f_2@@15))
))) (forall ((o2@@1 T@Ref) (f_2@@16 T@Field_17917_17918) ) (!  (=> (select (|PolymorphicMapType_18393_9467_17918#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@25) null (PredicateMaskField_9472 pm_f@@5))) o2@@1 f_2@@16) (= (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@25) o2@@1 f_2@@16) (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@1 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@1 f_2@@16))
))) (forall ((o2@@2 T@Ref) (f_2@@17 T@Field_9461_9520) ) (!  (=> (select (|PolymorphicMapType_18393_9467_24211#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@25) null (PredicateMaskField_9472 pm_f@@5))) o2@@2 f_2@@17) (= (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@25) o2@@2 f_2@@17) (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@2 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@2 f_2@@17))
))) (forall ((o2@@3 T@Ref) (f_2@@18 T@Field_9461_24232) ) (!  (=> (select (|PolymorphicMapType_18393_9467_60755#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@25) null (PredicateMaskField_9472 pm_f@@5))) o2@@3 f_2@@18) (= (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@25) o2@@3 f_2@@18) (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@3 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@3 f_2@@18))
))) (forall ((o2@@4 T@Ref) (f_2@@19 T@Field_24210_3217) ) (!  (=> (select (|PolymorphicMapType_18393_24210_3217#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@25) null (PredicateMaskField_9472 pm_f@@5))) o2@@4 f_2@@19) (= (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@25) o2@@4 f_2@@19) (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@4 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@4 f_2@@19))
))) (forall ((o2@@5 T@Ref) (f_2@@20 T@Field_24210_53) ) (!  (=> (select (|PolymorphicMapType_18393_24210_53#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@25) null (PredicateMaskField_9472 pm_f@@5))) o2@@5 f_2@@20) (= (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@25) o2@@5 f_2@@20) (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@5 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@5 f_2@@20))
))) (forall ((o2@@6 T@Ref) (f_2@@21 T@Field_24210_9462) ) (!  (=> (select (|PolymorphicMapType_18393_24210_17918#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@25) null (PredicateMaskField_9472 pm_f@@5))) o2@@6 f_2@@21) (= (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@25) o2@@6 f_2@@21) (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@6 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@6 f_2@@21))
))) (forall ((o2@@7 T@Ref) (f_2@@22 T@Field_24210_24211) ) (!  (=> (select (|PolymorphicMapType_18393_24210_24211#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@25) null (PredicateMaskField_9472 pm_f@@5))) o2@@7 f_2@@22) (= (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@25) o2@@7 f_2@@22) (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@7 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@7 f_2@@22))
))) (forall ((o2@@8 T@Ref) (f_2@@23 T@Field_24227_24232) ) (!  (=> (select (|PolymorphicMapType_18393_24210_61803#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@25) null (PredicateMaskField_9472 pm_f@@5))) o2@@8 f_2@@23) (= (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@25) o2@@8 f_2@@23) (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@8 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@8 f_2@@23))
))) (forall ((o2@@9 T@Ref) (f_2@@24 T@Field_9519_3217) ) (!  (=> (select (|PolymorphicMapType_18393_25095_3217#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@25) null (PredicateMaskField_9472 pm_f@@5))) o2@@9 f_2@@24) (= (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@25) o2@@9 f_2@@24) (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@9 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@9 f_2@@24))
))) (forall ((o2@@10 T@Ref) (f_2@@25 T@Field_9519_53) ) (!  (=> (select (|PolymorphicMapType_18393_25095_53#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@25) null (PredicateMaskField_9472 pm_f@@5))) o2@@10 f_2@@25) (= (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@25) o2@@10 f_2@@25) (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@10 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@10 f_2@@25))
))) (forall ((o2@@11 T@Ref) (f_2@@26 T@Field_9519_9462) ) (!  (=> (select (|PolymorphicMapType_18393_25095_17918#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@25) null (PredicateMaskField_9472 pm_f@@5))) o2@@11 f_2@@26) (= (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@25) o2@@11 f_2@@26) (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@11 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@11 f_2@@26))
))) (forall ((o2@@12 T@Ref) (f_2@@27 T@Field_25095_25096) ) (!  (=> (select (|PolymorphicMapType_18393_25095_24211#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@25) null (PredicateMaskField_9472 pm_f@@5))) o2@@12 f_2@@27) (= (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@25) o2@@12 f_2@@27) (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@12 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@12 f_2@@27))
))) (forall ((o2@@13 T@Ref) (f_2@@28 T@Field_25108_25113) ) (!  (=> (select (|PolymorphicMapType_18393_25095_62851#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@25) null (PredicateMaskField_9472 pm_f@@5))) o2@@13 f_2@@28) (= (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@25) o2@@13 f_2@@28) (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@13 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| ExhaleHeap@@22) o2@@13 f_2@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (IsPredicateField_9472_9473 pm_f@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_17844) (ExhaleHeap@@23 T@PolymorphicMapType_17844) (Mask@@54 T@PolymorphicMapType_17865) (pm_f@@6 T@Field_25095_25096) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_9519_9520 Mask@@54 null pm_f@@6) (IsPredicateField_9519_9520 pm_f@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@14 T@Ref) (f_2@@29 T@Field_24158_3217) ) (!  (=> (select (|PolymorphicMapType_18393_9467_3217#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@26) null (PredicateMaskField_9519 pm_f@@6))) o2@@14 f_2@@29) (= (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@26) o2@@14 f_2@@29) (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@14 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@14 f_2@@29))
)) (forall ((o2@@15 T@Ref) (f_2@@30 T@Field_17904_53) ) (!  (=> (select (|PolymorphicMapType_18393_9467_53#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@26) null (PredicateMaskField_9519 pm_f@@6))) o2@@15 f_2@@30) (= (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@26) o2@@15 f_2@@30) (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@15 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@15 f_2@@30))
))) (forall ((o2@@16 T@Ref) (f_2@@31 T@Field_17917_17918) ) (!  (=> (select (|PolymorphicMapType_18393_9467_17918#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@26) null (PredicateMaskField_9519 pm_f@@6))) o2@@16 f_2@@31) (= (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@26) o2@@16 f_2@@31) (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@16 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@16 f_2@@31))
))) (forall ((o2@@17 T@Ref) (f_2@@32 T@Field_9461_9520) ) (!  (=> (select (|PolymorphicMapType_18393_9467_24211#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@26) null (PredicateMaskField_9519 pm_f@@6))) o2@@17 f_2@@32) (= (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@26) o2@@17 f_2@@32) (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@17 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@17 f_2@@32))
))) (forall ((o2@@18 T@Ref) (f_2@@33 T@Field_9461_24232) ) (!  (=> (select (|PolymorphicMapType_18393_9467_60755#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@26) null (PredicateMaskField_9519 pm_f@@6))) o2@@18 f_2@@33) (= (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@26) o2@@18 f_2@@33) (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@18 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@18 f_2@@33))
))) (forall ((o2@@19 T@Ref) (f_2@@34 T@Field_24210_3217) ) (!  (=> (select (|PolymorphicMapType_18393_24210_3217#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@26) null (PredicateMaskField_9519 pm_f@@6))) o2@@19 f_2@@34) (= (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@26) o2@@19 f_2@@34) (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@19 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@19 f_2@@34))
))) (forall ((o2@@20 T@Ref) (f_2@@35 T@Field_24210_53) ) (!  (=> (select (|PolymorphicMapType_18393_24210_53#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@26) null (PredicateMaskField_9519 pm_f@@6))) o2@@20 f_2@@35) (= (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@26) o2@@20 f_2@@35) (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@20 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@20 f_2@@35))
))) (forall ((o2@@21 T@Ref) (f_2@@36 T@Field_24210_9462) ) (!  (=> (select (|PolymorphicMapType_18393_24210_17918#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@26) null (PredicateMaskField_9519 pm_f@@6))) o2@@21 f_2@@36) (= (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@26) o2@@21 f_2@@36) (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@21 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@21 f_2@@36))
))) (forall ((o2@@22 T@Ref) (f_2@@37 T@Field_24210_24211) ) (!  (=> (select (|PolymorphicMapType_18393_24210_24211#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@26) null (PredicateMaskField_9519 pm_f@@6))) o2@@22 f_2@@37) (= (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@26) o2@@22 f_2@@37) (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@22 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@22 f_2@@37))
))) (forall ((o2@@23 T@Ref) (f_2@@38 T@Field_24227_24232) ) (!  (=> (select (|PolymorphicMapType_18393_24210_61803#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@26) null (PredicateMaskField_9519 pm_f@@6))) o2@@23 f_2@@38) (= (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@26) o2@@23 f_2@@38) (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@23 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@23 f_2@@38))
))) (forall ((o2@@24 T@Ref) (f_2@@39 T@Field_9519_3217) ) (!  (=> (select (|PolymorphicMapType_18393_25095_3217#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@26) null (PredicateMaskField_9519 pm_f@@6))) o2@@24 f_2@@39) (= (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@26) o2@@24 f_2@@39) (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@24 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@24 f_2@@39))
))) (forall ((o2@@25 T@Ref) (f_2@@40 T@Field_9519_53) ) (!  (=> (select (|PolymorphicMapType_18393_25095_53#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@26) null (PredicateMaskField_9519 pm_f@@6))) o2@@25 f_2@@40) (= (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@26) o2@@25 f_2@@40) (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@25 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@25 f_2@@40))
))) (forall ((o2@@26 T@Ref) (f_2@@41 T@Field_9519_9462) ) (!  (=> (select (|PolymorphicMapType_18393_25095_17918#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@26) null (PredicateMaskField_9519 pm_f@@6))) o2@@26 f_2@@41) (= (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@26) o2@@26 f_2@@41) (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@26 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@26 f_2@@41))
))) (forall ((o2@@27 T@Ref) (f_2@@42 T@Field_25095_25096) ) (!  (=> (select (|PolymorphicMapType_18393_25095_24211#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@26) null (PredicateMaskField_9519 pm_f@@6))) o2@@27 f_2@@42) (= (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@26) o2@@27 f_2@@42) (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@27 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@27 f_2@@42))
))) (forall ((o2@@28 T@Ref) (f_2@@43 T@Field_25108_25113) ) (!  (=> (select (|PolymorphicMapType_18393_25095_62851#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@26) null (PredicateMaskField_9519 pm_f@@6))) o2@@28 f_2@@43) (= (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@26) o2@@28 f_2@@43) (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@28 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| ExhaleHeap@@23) o2@@28 f_2@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (IsPredicateField_9519_9520 pm_f@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_17844) (ExhaleHeap@@24 T@PolymorphicMapType_17844) (Mask@@55 T@PolymorphicMapType_17865) (pm_f@@7 T@Field_9461_9520) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_9461_9520 Mask@@55 null pm_f@@7) (IsPredicateField_9461_58958 pm_f@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@44 T@Field_24158_3217) ) (!  (=> (select (|PolymorphicMapType_18393_9467_3217#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@27) null (PredicateMaskField_9461 pm_f@@7))) o2@@29 f_2@@44) (= (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@27) o2@@29 f_2@@44) (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@29 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@29 f_2@@44))
)) (forall ((o2@@30 T@Ref) (f_2@@45 T@Field_17904_53) ) (!  (=> (select (|PolymorphicMapType_18393_9467_53#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@27) null (PredicateMaskField_9461 pm_f@@7))) o2@@30 f_2@@45) (= (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@27) o2@@30 f_2@@45) (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@30 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@30 f_2@@45))
))) (forall ((o2@@31 T@Ref) (f_2@@46 T@Field_17917_17918) ) (!  (=> (select (|PolymorphicMapType_18393_9467_17918#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@27) null (PredicateMaskField_9461 pm_f@@7))) o2@@31 f_2@@46) (= (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@27) o2@@31 f_2@@46) (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@31 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@31 f_2@@46))
))) (forall ((o2@@32 T@Ref) (f_2@@47 T@Field_9461_9520) ) (!  (=> (select (|PolymorphicMapType_18393_9467_24211#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@27) null (PredicateMaskField_9461 pm_f@@7))) o2@@32 f_2@@47) (= (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@27) o2@@32 f_2@@47) (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@32 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@32 f_2@@47))
))) (forall ((o2@@33 T@Ref) (f_2@@48 T@Field_9461_24232) ) (!  (=> (select (|PolymorphicMapType_18393_9467_60755#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@27) null (PredicateMaskField_9461 pm_f@@7))) o2@@33 f_2@@48) (= (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@27) o2@@33 f_2@@48) (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@33 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@33 f_2@@48))
))) (forall ((o2@@34 T@Ref) (f_2@@49 T@Field_24210_3217) ) (!  (=> (select (|PolymorphicMapType_18393_24210_3217#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@27) null (PredicateMaskField_9461 pm_f@@7))) o2@@34 f_2@@49) (= (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@27) o2@@34 f_2@@49) (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@34 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@34 f_2@@49))
))) (forall ((o2@@35 T@Ref) (f_2@@50 T@Field_24210_53) ) (!  (=> (select (|PolymorphicMapType_18393_24210_53#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@27) null (PredicateMaskField_9461 pm_f@@7))) o2@@35 f_2@@50) (= (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@27) o2@@35 f_2@@50) (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@35 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@35 f_2@@50))
))) (forall ((o2@@36 T@Ref) (f_2@@51 T@Field_24210_9462) ) (!  (=> (select (|PolymorphicMapType_18393_24210_17918#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@27) null (PredicateMaskField_9461 pm_f@@7))) o2@@36 f_2@@51) (= (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@27) o2@@36 f_2@@51) (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@36 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@36 f_2@@51))
))) (forall ((o2@@37 T@Ref) (f_2@@52 T@Field_24210_24211) ) (!  (=> (select (|PolymorphicMapType_18393_24210_24211#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@27) null (PredicateMaskField_9461 pm_f@@7))) o2@@37 f_2@@52) (= (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@27) o2@@37 f_2@@52) (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@37 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@37 f_2@@52))
))) (forall ((o2@@38 T@Ref) (f_2@@53 T@Field_24227_24232) ) (!  (=> (select (|PolymorphicMapType_18393_24210_61803#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@27) null (PredicateMaskField_9461 pm_f@@7))) o2@@38 f_2@@53) (= (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@27) o2@@38 f_2@@53) (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@38 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@38 f_2@@53))
))) (forall ((o2@@39 T@Ref) (f_2@@54 T@Field_9519_3217) ) (!  (=> (select (|PolymorphicMapType_18393_25095_3217#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@27) null (PredicateMaskField_9461 pm_f@@7))) o2@@39 f_2@@54) (= (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@27) o2@@39 f_2@@54) (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@39 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@39 f_2@@54))
))) (forall ((o2@@40 T@Ref) (f_2@@55 T@Field_9519_53) ) (!  (=> (select (|PolymorphicMapType_18393_25095_53#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@27) null (PredicateMaskField_9461 pm_f@@7))) o2@@40 f_2@@55) (= (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@27) o2@@40 f_2@@55) (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@40 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@40 f_2@@55))
))) (forall ((o2@@41 T@Ref) (f_2@@56 T@Field_9519_9462) ) (!  (=> (select (|PolymorphicMapType_18393_25095_17918#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@27) null (PredicateMaskField_9461 pm_f@@7))) o2@@41 f_2@@56) (= (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@27) o2@@41 f_2@@56) (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@41 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@41 f_2@@56))
))) (forall ((o2@@42 T@Ref) (f_2@@57 T@Field_25095_25096) ) (!  (=> (select (|PolymorphicMapType_18393_25095_24211#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@27) null (PredicateMaskField_9461 pm_f@@7))) o2@@42 f_2@@57) (= (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@27) o2@@42 f_2@@57) (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@42 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@42 f_2@@57))
))) (forall ((o2@@43 T@Ref) (f_2@@58 T@Field_25108_25113) ) (!  (=> (select (|PolymorphicMapType_18393_25095_62851#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@27) null (PredicateMaskField_9461 pm_f@@7))) o2@@43 f_2@@58) (= (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@27) o2@@43 f_2@@58) (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@43 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| ExhaleHeap@@24) o2@@43 f_2@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (IsPredicateField_9461_58958 pm_f@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_17844) (ExhaleHeap@@25 T@PolymorphicMapType_17844) (Mask@@56 T@PolymorphicMapType_17865) (pm_f@@8 T@Field_24210_24211) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_24210_9520 Mask@@56 null pm_f@@8) (IsWandField_24210_64654 pm_f@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@44 T@Ref) (f_2@@59 T@Field_24158_3217) ) (!  (=> (select (|PolymorphicMapType_18393_9467_3217#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@28) null (WandMaskField_24210 pm_f@@8))) o2@@44 f_2@@59) (= (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@28) o2@@44 f_2@@59) (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@44 f_2@@59)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@44 f_2@@59))
)) (forall ((o2@@45 T@Ref) (f_2@@60 T@Field_17904_53) ) (!  (=> (select (|PolymorphicMapType_18393_9467_53#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@28) null (WandMaskField_24210 pm_f@@8))) o2@@45 f_2@@60) (= (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@28) o2@@45 f_2@@60) (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@45 f_2@@60)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@45 f_2@@60))
))) (forall ((o2@@46 T@Ref) (f_2@@61 T@Field_17917_17918) ) (!  (=> (select (|PolymorphicMapType_18393_9467_17918#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@28) null (WandMaskField_24210 pm_f@@8))) o2@@46 f_2@@61) (= (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@28) o2@@46 f_2@@61) (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@46 f_2@@61)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@46 f_2@@61))
))) (forall ((o2@@47 T@Ref) (f_2@@62 T@Field_9461_9520) ) (!  (=> (select (|PolymorphicMapType_18393_9467_24211#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@28) null (WandMaskField_24210 pm_f@@8))) o2@@47 f_2@@62) (= (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@28) o2@@47 f_2@@62) (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@47 f_2@@62)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@47 f_2@@62))
))) (forall ((o2@@48 T@Ref) (f_2@@63 T@Field_9461_24232) ) (!  (=> (select (|PolymorphicMapType_18393_9467_60755#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@28) null (WandMaskField_24210 pm_f@@8))) o2@@48 f_2@@63) (= (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@28) o2@@48 f_2@@63) (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@48 f_2@@63)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@48 f_2@@63))
))) (forall ((o2@@49 T@Ref) (f_2@@64 T@Field_24210_3217) ) (!  (=> (select (|PolymorphicMapType_18393_24210_3217#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@28) null (WandMaskField_24210 pm_f@@8))) o2@@49 f_2@@64) (= (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@28) o2@@49 f_2@@64) (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@49 f_2@@64)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@49 f_2@@64))
))) (forall ((o2@@50 T@Ref) (f_2@@65 T@Field_24210_53) ) (!  (=> (select (|PolymorphicMapType_18393_24210_53#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@28) null (WandMaskField_24210 pm_f@@8))) o2@@50 f_2@@65) (= (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@28) o2@@50 f_2@@65) (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@50 f_2@@65)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@50 f_2@@65))
))) (forall ((o2@@51 T@Ref) (f_2@@66 T@Field_24210_9462) ) (!  (=> (select (|PolymorphicMapType_18393_24210_17918#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@28) null (WandMaskField_24210 pm_f@@8))) o2@@51 f_2@@66) (= (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@28) o2@@51 f_2@@66) (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@51 f_2@@66)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@51 f_2@@66))
))) (forall ((o2@@52 T@Ref) (f_2@@67 T@Field_24210_24211) ) (!  (=> (select (|PolymorphicMapType_18393_24210_24211#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@28) null (WandMaskField_24210 pm_f@@8))) o2@@52 f_2@@67) (= (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@28) o2@@52 f_2@@67) (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@52 f_2@@67)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@52 f_2@@67))
))) (forall ((o2@@53 T@Ref) (f_2@@68 T@Field_24227_24232) ) (!  (=> (select (|PolymorphicMapType_18393_24210_61803#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@28) null (WandMaskField_24210 pm_f@@8))) o2@@53 f_2@@68) (= (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@28) o2@@53 f_2@@68) (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@53 f_2@@68)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@53 f_2@@68))
))) (forall ((o2@@54 T@Ref) (f_2@@69 T@Field_9519_3217) ) (!  (=> (select (|PolymorphicMapType_18393_25095_3217#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@28) null (WandMaskField_24210 pm_f@@8))) o2@@54 f_2@@69) (= (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@28) o2@@54 f_2@@69) (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@54 f_2@@69)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@54 f_2@@69))
))) (forall ((o2@@55 T@Ref) (f_2@@70 T@Field_9519_53) ) (!  (=> (select (|PolymorphicMapType_18393_25095_53#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@28) null (WandMaskField_24210 pm_f@@8))) o2@@55 f_2@@70) (= (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@28) o2@@55 f_2@@70) (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@55 f_2@@70)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@55 f_2@@70))
))) (forall ((o2@@56 T@Ref) (f_2@@71 T@Field_9519_9462) ) (!  (=> (select (|PolymorphicMapType_18393_25095_17918#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@28) null (WandMaskField_24210 pm_f@@8))) o2@@56 f_2@@71) (= (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@28) o2@@56 f_2@@71) (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@56 f_2@@71)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@56 f_2@@71))
))) (forall ((o2@@57 T@Ref) (f_2@@72 T@Field_25095_25096) ) (!  (=> (select (|PolymorphicMapType_18393_25095_24211#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@28) null (WandMaskField_24210 pm_f@@8))) o2@@57 f_2@@72) (= (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@28) o2@@57 f_2@@72) (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@57 f_2@@72)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@57 f_2@@72))
))) (forall ((o2@@58 T@Ref) (f_2@@73 T@Field_25108_25113) ) (!  (=> (select (|PolymorphicMapType_18393_25095_62851#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@28) null (WandMaskField_24210 pm_f@@8))) o2@@58 f_2@@73) (= (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@28) o2@@58 f_2@@73) (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@58 f_2@@73)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| ExhaleHeap@@25) o2@@58 f_2@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (IsWandField_24210_64654 pm_f@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_17844) (ExhaleHeap@@26 T@PolymorphicMapType_17844) (Mask@@57 T@PolymorphicMapType_17865) (pm_f@@9 T@Field_25095_25096) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_9519_9520 Mask@@57 null pm_f@@9) (IsWandField_9519_64297 pm_f@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@59 T@Ref) (f_2@@74 T@Field_24158_3217) ) (!  (=> (select (|PolymorphicMapType_18393_9467_3217#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@29) null (WandMaskField_9519 pm_f@@9))) o2@@59 f_2@@74) (= (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@29) o2@@59 f_2@@74) (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@59 f_2@@74)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@59 f_2@@74))
)) (forall ((o2@@60 T@Ref) (f_2@@75 T@Field_17904_53) ) (!  (=> (select (|PolymorphicMapType_18393_9467_53#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@29) null (WandMaskField_9519 pm_f@@9))) o2@@60 f_2@@75) (= (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@29) o2@@60 f_2@@75) (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@60 f_2@@75)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@60 f_2@@75))
))) (forall ((o2@@61 T@Ref) (f_2@@76 T@Field_17917_17918) ) (!  (=> (select (|PolymorphicMapType_18393_9467_17918#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@29) null (WandMaskField_9519 pm_f@@9))) o2@@61 f_2@@76) (= (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@29) o2@@61 f_2@@76) (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@61 f_2@@76)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@61 f_2@@76))
))) (forall ((o2@@62 T@Ref) (f_2@@77 T@Field_9461_9520) ) (!  (=> (select (|PolymorphicMapType_18393_9467_24211#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@29) null (WandMaskField_9519 pm_f@@9))) o2@@62 f_2@@77) (= (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@29) o2@@62 f_2@@77) (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@62 f_2@@77)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@62 f_2@@77))
))) (forall ((o2@@63 T@Ref) (f_2@@78 T@Field_9461_24232) ) (!  (=> (select (|PolymorphicMapType_18393_9467_60755#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@29) null (WandMaskField_9519 pm_f@@9))) o2@@63 f_2@@78) (= (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@29) o2@@63 f_2@@78) (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@63 f_2@@78)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@63 f_2@@78))
))) (forall ((o2@@64 T@Ref) (f_2@@79 T@Field_24210_3217) ) (!  (=> (select (|PolymorphicMapType_18393_24210_3217#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@29) null (WandMaskField_9519 pm_f@@9))) o2@@64 f_2@@79) (= (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@29) o2@@64 f_2@@79) (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@64 f_2@@79)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@64 f_2@@79))
))) (forall ((o2@@65 T@Ref) (f_2@@80 T@Field_24210_53) ) (!  (=> (select (|PolymorphicMapType_18393_24210_53#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@29) null (WandMaskField_9519 pm_f@@9))) o2@@65 f_2@@80) (= (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@29) o2@@65 f_2@@80) (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@65 f_2@@80)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@65 f_2@@80))
))) (forall ((o2@@66 T@Ref) (f_2@@81 T@Field_24210_9462) ) (!  (=> (select (|PolymorphicMapType_18393_24210_17918#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@29) null (WandMaskField_9519 pm_f@@9))) o2@@66 f_2@@81) (= (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@29) o2@@66 f_2@@81) (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@66 f_2@@81)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@66 f_2@@81))
))) (forall ((o2@@67 T@Ref) (f_2@@82 T@Field_24210_24211) ) (!  (=> (select (|PolymorphicMapType_18393_24210_24211#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@29) null (WandMaskField_9519 pm_f@@9))) o2@@67 f_2@@82) (= (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@29) o2@@67 f_2@@82) (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@67 f_2@@82)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@67 f_2@@82))
))) (forall ((o2@@68 T@Ref) (f_2@@83 T@Field_24227_24232) ) (!  (=> (select (|PolymorphicMapType_18393_24210_61803#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@29) null (WandMaskField_9519 pm_f@@9))) o2@@68 f_2@@83) (= (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@29) o2@@68 f_2@@83) (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@68 f_2@@83)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@68 f_2@@83))
))) (forall ((o2@@69 T@Ref) (f_2@@84 T@Field_9519_3217) ) (!  (=> (select (|PolymorphicMapType_18393_25095_3217#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@29) null (WandMaskField_9519 pm_f@@9))) o2@@69 f_2@@84) (= (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@29) o2@@69 f_2@@84) (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@69 f_2@@84)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@69 f_2@@84))
))) (forall ((o2@@70 T@Ref) (f_2@@85 T@Field_9519_53) ) (!  (=> (select (|PolymorphicMapType_18393_25095_53#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@29) null (WandMaskField_9519 pm_f@@9))) o2@@70 f_2@@85) (= (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@29) o2@@70 f_2@@85) (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@70 f_2@@85)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@70 f_2@@85))
))) (forall ((o2@@71 T@Ref) (f_2@@86 T@Field_9519_9462) ) (!  (=> (select (|PolymorphicMapType_18393_25095_17918#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@29) null (WandMaskField_9519 pm_f@@9))) o2@@71 f_2@@86) (= (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@29) o2@@71 f_2@@86) (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@71 f_2@@86)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@71 f_2@@86))
))) (forall ((o2@@72 T@Ref) (f_2@@87 T@Field_25095_25096) ) (!  (=> (select (|PolymorphicMapType_18393_25095_24211#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@29) null (WandMaskField_9519 pm_f@@9))) o2@@72 f_2@@87) (= (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@29) o2@@72 f_2@@87) (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@72 f_2@@87)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@72 f_2@@87))
))) (forall ((o2@@73 T@Ref) (f_2@@88 T@Field_25108_25113) ) (!  (=> (select (|PolymorphicMapType_18393_25095_62851#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@29) null (WandMaskField_9519 pm_f@@9))) o2@@73 f_2@@88) (= (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@29) o2@@73 f_2@@88) (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@73 f_2@@88)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| ExhaleHeap@@26) o2@@73 f_2@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (IsWandField_9519_64297 pm_f@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_17844) (ExhaleHeap@@27 T@PolymorphicMapType_17844) (Mask@@58 T@PolymorphicMapType_17865) (pm_f@@10 T@Field_9461_9520) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_9461_9520 Mask@@58 null pm_f@@10) (IsWandField_9461_63940 pm_f@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@74 T@Ref) (f_2@@89 T@Field_24158_3217) ) (!  (=> (select (|PolymorphicMapType_18393_9467_3217#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@30) null (WandMaskField_9461 pm_f@@10))) o2@@74 f_2@@89) (= (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@30) o2@@74 f_2@@89) (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@74 f_2@@89)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@74 f_2@@89))
)) (forall ((o2@@75 T@Ref) (f_2@@90 T@Field_17904_53) ) (!  (=> (select (|PolymorphicMapType_18393_9467_53#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@30) null (WandMaskField_9461 pm_f@@10))) o2@@75 f_2@@90) (= (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@30) o2@@75 f_2@@90) (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@75 f_2@@90)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@75 f_2@@90))
))) (forall ((o2@@76 T@Ref) (f_2@@91 T@Field_17917_17918) ) (!  (=> (select (|PolymorphicMapType_18393_9467_17918#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@30) null (WandMaskField_9461 pm_f@@10))) o2@@76 f_2@@91) (= (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@30) o2@@76 f_2@@91) (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@76 f_2@@91)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@76 f_2@@91))
))) (forall ((o2@@77 T@Ref) (f_2@@92 T@Field_9461_9520) ) (!  (=> (select (|PolymorphicMapType_18393_9467_24211#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@30) null (WandMaskField_9461 pm_f@@10))) o2@@77 f_2@@92) (= (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@30) o2@@77 f_2@@92) (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@77 f_2@@92)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@77 f_2@@92))
))) (forall ((o2@@78 T@Ref) (f_2@@93 T@Field_9461_24232) ) (!  (=> (select (|PolymorphicMapType_18393_9467_60755#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@30) null (WandMaskField_9461 pm_f@@10))) o2@@78 f_2@@93) (= (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@30) o2@@78 f_2@@93) (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@78 f_2@@93)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@78 f_2@@93))
))) (forall ((o2@@79 T@Ref) (f_2@@94 T@Field_24210_3217) ) (!  (=> (select (|PolymorphicMapType_18393_24210_3217#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@30) null (WandMaskField_9461 pm_f@@10))) o2@@79 f_2@@94) (= (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@30) o2@@79 f_2@@94) (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@79 f_2@@94)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@79 f_2@@94))
))) (forall ((o2@@80 T@Ref) (f_2@@95 T@Field_24210_53) ) (!  (=> (select (|PolymorphicMapType_18393_24210_53#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@30) null (WandMaskField_9461 pm_f@@10))) o2@@80 f_2@@95) (= (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@30) o2@@80 f_2@@95) (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@80 f_2@@95)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@80 f_2@@95))
))) (forall ((o2@@81 T@Ref) (f_2@@96 T@Field_24210_9462) ) (!  (=> (select (|PolymorphicMapType_18393_24210_17918#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@30) null (WandMaskField_9461 pm_f@@10))) o2@@81 f_2@@96) (= (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@30) o2@@81 f_2@@96) (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@81 f_2@@96)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@81 f_2@@96))
))) (forall ((o2@@82 T@Ref) (f_2@@97 T@Field_24210_24211) ) (!  (=> (select (|PolymorphicMapType_18393_24210_24211#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@30) null (WandMaskField_9461 pm_f@@10))) o2@@82 f_2@@97) (= (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@30) o2@@82 f_2@@97) (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@82 f_2@@97)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@82 f_2@@97))
))) (forall ((o2@@83 T@Ref) (f_2@@98 T@Field_24227_24232) ) (!  (=> (select (|PolymorphicMapType_18393_24210_61803#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@30) null (WandMaskField_9461 pm_f@@10))) o2@@83 f_2@@98) (= (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@30) o2@@83 f_2@@98) (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@83 f_2@@98)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@83 f_2@@98))
))) (forall ((o2@@84 T@Ref) (f_2@@99 T@Field_9519_3217) ) (!  (=> (select (|PolymorphicMapType_18393_25095_3217#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@30) null (WandMaskField_9461 pm_f@@10))) o2@@84 f_2@@99) (= (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@30) o2@@84 f_2@@99) (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@84 f_2@@99)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@84 f_2@@99))
))) (forall ((o2@@85 T@Ref) (f_2@@100 T@Field_9519_53) ) (!  (=> (select (|PolymorphicMapType_18393_25095_53#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@30) null (WandMaskField_9461 pm_f@@10))) o2@@85 f_2@@100) (= (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@30) o2@@85 f_2@@100) (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@85 f_2@@100)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@85 f_2@@100))
))) (forall ((o2@@86 T@Ref) (f_2@@101 T@Field_9519_9462) ) (!  (=> (select (|PolymorphicMapType_18393_25095_17918#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@30) null (WandMaskField_9461 pm_f@@10))) o2@@86 f_2@@101) (= (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@30) o2@@86 f_2@@101) (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@86 f_2@@101)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@86 f_2@@101))
))) (forall ((o2@@87 T@Ref) (f_2@@102 T@Field_25095_25096) ) (!  (=> (select (|PolymorphicMapType_18393_25095_24211#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@30) null (WandMaskField_9461 pm_f@@10))) o2@@87 f_2@@102) (= (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@30) o2@@87 f_2@@102) (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@87 f_2@@102)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@87 f_2@@102))
))) (forall ((o2@@88 T@Ref) (f_2@@103 T@Field_25108_25113) ) (!  (=> (select (|PolymorphicMapType_18393_25095_62851#PolymorphicMapType_18393| (select (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@30) null (WandMaskField_9461 pm_f@@10))) o2@@88 f_2@@103) (= (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@30) o2@@88 f_2@@103) (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@88 f_2@@103)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| ExhaleHeap@@27) o2@@88 f_2@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (IsWandField_9461_63940 pm_f@@10))
)))
(assert (forall ((a@@8 T@MultiSet_24204) (b@@6 T@MultiSet_24204) ) (!  (=> (|MultiSet#Equal_24204| a@@8 b@@6) (= a@@8 b@@6))
 :qid |stdinbpl.358:17|
 :skolemid |79|
 :pattern ( (|MultiSet#Equal_24204| a@@8 b@@6))
)))
(assert (forall ((ms T@MultiSet_24204) (x@@0 T@Ref) ) (! (>= (|MultiSet#Select_9588| ms x@@0) 0)
 :qid |stdinbpl.289:18|
 :skolemid |56|
 :pattern ( (|MultiSet#Select_9588| ms x@@0))
)))
(assert (forall ((s T@MultiSet_24204) ) (! (<= 0 (|MultiSet#Card_24204| s))
 :qid |stdinbpl.292:18|
 :skolemid |57|
 :pattern ( (|MultiSet#Card_24204| s))
)))
(assert (forall ((o@@1 T@Ref) ) (! (= (|MultiSet#Select_9588| |MultiSet#Empty_9568| o@@1) 0)
 :qid |stdinbpl.297:18|
 :skolemid |58|
 :pattern ( (|MultiSet#Select_9588| |MultiSet#Empty_9568| o@@1))
)))
(assert (forall ((diz@@7 T@Ref) (S@@3 T@MultiSet_24204) ) (! (= (getPredWandId_9472_9473 (LockSet__lockset diz@@7 S@@3)) 0)
 :qid |stdinbpl.396:15|
 :skolemid |84|
 :pattern ( (LockSet__lockset diz@@7 S@@3))
)))
(assert (forall ((diz@@8 T@Ref) (p_1@@3 Real) ) (! (= (getPredWandId_9519_9520 (Client__inv diz@@8 p_1@@3)) 1)
 :qid |stdinbpl.445:15|
 :skolemid |90|
 :pattern ( (Client__inv diz@@8 p_1@@3))
)))
(assert (forall ((a@@9 T@MultiSet_24204) (x@@1 T@Ref) ) (!  (and (> (|MultiSet#Select_9588| (|MultiSet#UnionOne_9587| a@@9 x@@1) x@@1) 0) (> (|MultiSet#Card_24204| (|MultiSet#UnionOne_9587| a@@9 x@@1)) 0))
 :qid |stdinbpl.316:18|
 :skolemid |66|
 :pattern ( (|MultiSet#UnionOne_9587| a@@9 x@@1))
)))
(assert (forall ((a@@10 T@MultiSet_24204) (b@@7 T@MultiSet_24204) ) (! (= (|MultiSet#Intersection_9588| a@@10 (|MultiSet#Intersection_9588| a@@10 b@@7)) (|MultiSet#Intersection_9588| a@@10 b@@7))
 :qid |stdinbpl.333:18|
 :skolemid |71|
 :pattern ( (|MultiSet#Intersection_9588| a@@10 (|MultiSet#Intersection_9588| a@@10 b@@7)))
)))
(assert (forall ((s@@0 T@MultiSet_24204) ) (!  (and (= (= (|MultiSet#Card_24204| s@@0) 0) (= s@@0 |MultiSet#Empty_9568|)) (=> (not (= (|MultiSet#Card_24204| s@@0) 0)) (exists ((x@@2 T@Ref) ) (! (< 0 (|MultiSet#Select_9588| s@@0 x@@2))
 :qid |stdinbpl.300:38|
 :skolemid |59|
))))
 :qid |stdinbpl.298:18|
 :skolemid |60|
 :pattern ( (|MultiSet#Card_24204| s@@0))
)))
(assert (forall ((r@@0 T@Ref) (o@@2 T@Ref) ) (!  (and (= (= (|MultiSet#Select_9588| (|MultiSet#Singleton_9587| r@@0) o@@2) 1) (= r@@0 o@@2)) (= (= (|MultiSet#Select_9588| (|MultiSet#Singleton_9587| r@@0) o@@2) 0) (not (= r@@0 o@@2))))
 :qid |stdinbpl.303:18|
 :skolemid |61|
 :pattern ( (|MultiSet#Select_9588| (|MultiSet#Singleton_9587| r@@0) o@@2))
)))
(assert (forall ((diz@@9 T@Ref) (S@@4 T@MultiSet_24204) ) (! (= (PredicateMaskField_9472 (LockSet__lockset diz@@9 S@@4)) (|LockSet__lockset#sm| diz@@9 S@@4))
 :qid |stdinbpl.388:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_9472 (LockSet__lockset diz@@9 S@@4)))
)))
(assert (forall ((diz@@10 T@Ref) (p_1@@4 Real) ) (! (= (PredicateMaskField_9519 (Client__inv diz@@10 p_1@@4)) (|Client__inv#sm| diz@@10 p_1@@4))
 :qid |stdinbpl.437:15|
 :skolemid |88|
 :pattern ( (PredicateMaskField_9519 (Client__inv diz@@10 p_1@@4)))
)))
(assert (forall ((a@@11 T@MultiSet_24204) (b@@8 T@MultiSet_24204) (o@@3 T@Ref) ) (! (= (|MultiSet#Select_9588| (|MultiSet#Union_9588| a@@11 b@@8) o@@3) (+ (|MultiSet#Select_9588| a@@11 o@@3) (|MultiSet#Select_9588| b@@8 o@@3)))
 :qid |stdinbpl.321:18|
 :skolemid |67|
 :pattern ( (|MultiSet#Select_9588| (|MultiSet#Union_9588| a@@11 b@@8) o@@3))
 :pattern ( (|MultiSet#Union_9588| a@@11 b@@8) (|MultiSet#Select_9588| a@@11 o@@3) (|MultiSet#Select_9588| b@@8 o@@3))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_17844) (o@@4 T@Ref) (f_3 T@Field_24227_24232) (v T@PolymorphicMapType_18393) ) (! (succHeap Heap@@31 (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@31) (store (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@31) o@@4 f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@31) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@31) (store (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@31) o@@4 f_3 v)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_17844) (o@@5 T@Ref) (f_3@@0 T@Field_24210_3217) (v@@0 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@32) (store (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@32) o@@5 f_3@@0 v@@0) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@32) (store (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@32) o@@5 f_3@@0 v@@0) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@32) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_17844) (o@@6 T@Ref) (f_3@@1 T@Field_24210_24211) (v@@1 T@FrameType) ) (! (succHeap Heap@@33 (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@33) (store (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@33) o@@6 f_3@@1 v@@1) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@33) (store (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@33) o@@6 f_3@@1 v@@1) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@33) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_17844) (o@@7 T@Ref) (f_3@@2 T@Field_24210_9462) (v@@2 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@34) (store (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@34) o@@7 f_3@@2 v@@2) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@34) (store (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@34) o@@7 f_3@@2 v@@2) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@34) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_17844) (o@@8 T@Ref) (f_3@@3 T@Field_24210_53) (v@@3 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@35) (store (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@35) o@@8 f_3@@3 v@@3) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@35) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@35) (store (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@35) o@@8 f_3@@3 v@@3) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_17844) (o@@9 T@Ref) (f_3@@4 T@Field_25108_25113) (v@@4 T@PolymorphicMapType_18393) ) (! (succHeap Heap@@36 (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@36) (store (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@36) o@@9 f_3@@4 v@@4) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@36) (store (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@36) o@@9 f_3@@4 v@@4) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@36) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_17844) (o@@10 T@Ref) (f_3@@5 T@Field_9519_3217) (v@@5 Int) ) (! (succHeap Heap@@37 (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@37) (store (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@37) o@@10 f_3@@5 v@@5) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@37) (store (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@37) o@@10 f_3@@5 v@@5) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@37) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_17844) (o@@11 T@Ref) (f_3@@6 T@Field_25095_25096) (v@@6 T@FrameType) ) (! (succHeap Heap@@38 (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@38) (store (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@38) o@@11 f_3@@6 v@@6) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@38) (store (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@38) o@@11 f_3@@6 v@@6) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@38) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_17844) (o@@12 T@Ref) (f_3@@7 T@Field_9519_9462) (v@@7 T@Ref) ) (! (succHeap Heap@@39 (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@39) (store (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@39) o@@12 f_3@@7 v@@7) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@39) (store (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@39) o@@12 f_3@@7 v@@7) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@39) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_17844) (o@@13 T@Ref) (f_3@@8 T@Field_9519_53) (v@@8 Bool) ) (! (succHeap Heap@@40 (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@40) (store (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@40) o@@13 f_3@@8 v@@8) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@40) (store (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@40) o@@13 f_3@@8 v@@8) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@40) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_17844) (o@@14 T@Ref) (f_3@@9 T@Field_9461_24232) (v@@9 T@PolymorphicMapType_18393) ) (! (succHeap Heap@@41 (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@41) (store (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@41) o@@14 f_3@@9 v@@9) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@41) (store (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@41) o@@14 f_3@@9 v@@9) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@41) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_17844) (o@@15 T@Ref) (f_3@@10 T@Field_24158_3217) (v@@10 Int) ) (! (succHeap Heap@@42 (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@42) (store (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@42) o@@15 f_3@@10 v@@10) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@42) (store (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@42) o@@15 f_3@@10 v@@10) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@42) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_17844) (o@@16 T@Ref) (f_3@@11 T@Field_9461_9520) (v@@11 T@FrameType) ) (! (succHeap Heap@@43 (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@43) (store (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@43) o@@16 f_3@@11 v@@11) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@43) (store (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@43) o@@16 f_3@@11 v@@11) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@43) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_17844) (o@@17 T@Ref) (f_3@@12 T@Field_17917_17918) (v@@12 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@44) (store (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@44) o@@17 f_3@@12 v@@12) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17844 (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@44) (store (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@44) o@@17 f_3@@12 v@@12) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@44) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_17844) (o@@18 T@Ref) (f_3@@13 T@Field_17904_53) (v@@13 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_17844 (store (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@45) o@@18 f_3@@13 v@@13) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17844 (store (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@45) o@@18 f_3@@13 v@@13) (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_9519_9520#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_9467_3217#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_9524_40508#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_9461_9520#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_9461_56436#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_9519_9462#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_9519_3217#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_9519_53#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_24210_9462#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_24210_9520#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_24210_3217#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_24210_53#PolymorphicMapType_17844| Heap@@45) (|PolymorphicMapType_17844_24210_58712#PolymorphicMapType_17844| Heap@@45)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (= (|MultiSet#Singleton_9587| r@@1) (|MultiSet#UnionOne_9587| |MultiSet#Empty_9568| r@@1))
 :qid |stdinbpl.306:18|
 :skolemid |63|
 :pattern ( (|MultiSet#Singleton_9587| r@@1))
)))
(assert (forall ((a@@12 Int) (b@@9 Int) ) (! (= (<= a@@12 b@@9) (= (|Math#min| a@@12 b@@9) a@@12))
 :qid |stdinbpl.271:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@12 b@@9))
)))
(assert (forall ((a@@13 Int) (b@@10 Int) ) (! (= (<= b@@10 a@@13) (= (|Math#min| a@@13 b@@10) b@@10))
 :qid |stdinbpl.272:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@13 b@@10))
)))
(assert (forall ((a@@14 T@MultiSet_24204) (b@@11 T@MultiSet_24204) (o@@19 T@Ref) ) (! (= (|MultiSet#Select_9588| (|MultiSet#Difference_9588| a@@14 b@@11) o@@19) (|Math#clip| (- (|MultiSet#Select_9588| a@@14 o@@19) (|MultiSet#Select_9588| b@@11 o@@19))))
 :qid |stdinbpl.338:18|
 :skolemid |72|
 :pattern ( (|MultiSet#Select_9588| (|MultiSet#Difference_9588| a@@14 b@@11) o@@19))
)))
(assert (forall ((o@@20 T@Ref) (f T@Field_17917_17918) (Heap@@46 T@PolymorphicMapType_17844) ) (!  (=> (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@46) o@@20 $allocated) (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@46) (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@46) o@@20 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| Heap@@46) o@@20 f))
)))
(assert (forall ((p@@3 T@Field_25095_25096) (v_1@@2 T@FrameType) (q T@Field_25095_25096) (w@@2 T@FrameType) (r@@2 T@Field_25095_25096) (u T@FrameType) ) (!  (=> (and (InsidePredicate_25095_25095 p@@3 v_1@@2 q w@@2) (InsidePredicate_25095_25095 q w@@2 r@@2 u)) (InsidePredicate_25095_25095 p@@3 v_1@@2 r@@2 u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25095_25095 p@@3 v_1@@2 q w@@2) (InsidePredicate_25095_25095 q w@@2 r@@2 u))
)))
(assert (forall ((p@@4 T@Field_25095_25096) (v_1@@3 T@FrameType) (q@@0 T@Field_25095_25096) (w@@3 T@FrameType) (r@@3 T@Field_24210_24211) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_25095_25095 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_25095_24210 q@@0 w@@3 r@@3 u@@0)) (InsidePredicate_25095_24210 p@@4 v_1@@3 r@@3 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25095_25095 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_25095_24210 q@@0 w@@3 r@@3 u@@0))
)))
(assert (forall ((p@@5 T@Field_25095_25096) (v_1@@4 T@FrameType) (q@@1 T@Field_25095_25096) (w@@4 T@FrameType) (r@@4 T@Field_9461_9520) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_25095_25095 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_25095_17904 q@@1 w@@4 r@@4 u@@1)) (InsidePredicate_25095_17904 p@@5 v_1@@4 r@@4 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25095_25095 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_25095_17904 q@@1 w@@4 r@@4 u@@1))
)))
(assert (forall ((p@@6 T@Field_25095_25096) (v_1@@5 T@FrameType) (q@@2 T@Field_24210_24211) (w@@5 T@FrameType) (r@@5 T@Field_25095_25096) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_25095_24210 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_24210_25095 q@@2 w@@5 r@@5 u@@2)) (InsidePredicate_25095_25095 p@@6 v_1@@5 r@@5 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25095_24210 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_24210_25095 q@@2 w@@5 r@@5 u@@2))
)))
(assert (forall ((p@@7 T@Field_25095_25096) (v_1@@6 T@FrameType) (q@@3 T@Field_24210_24211) (w@@6 T@FrameType) (r@@6 T@Field_24210_24211) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_25095_24210 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_24210_24210 q@@3 w@@6 r@@6 u@@3)) (InsidePredicate_25095_24210 p@@7 v_1@@6 r@@6 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25095_24210 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_24210_24210 q@@3 w@@6 r@@6 u@@3))
)))
(assert (forall ((p@@8 T@Field_25095_25096) (v_1@@7 T@FrameType) (q@@4 T@Field_24210_24211) (w@@7 T@FrameType) (r@@7 T@Field_9461_9520) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_25095_24210 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_24210_17904 q@@4 w@@7 r@@7 u@@4)) (InsidePredicate_25095_17904 p@@8 v_1@@7 r@@7 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25095_24210 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_24210_17904 q@@4 w@@7 r@@7 u@@4))
)))
(assert (forall ((p@@9 T@Field_25095_25096) (v_1@@8 T@FrameType) (q@@5 T@Field_9461_9520) (w@@8 T@FrameType) (r@@8 T@Field_25095_25096) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_25095_17904 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_17904_25095 q@@5 w@@8 r@@8 u@@5)) (InsidePredicate_25095_25095 p@@9 v_1@@8 r@@8 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25095_17904 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_17904_25095 q@@5 w@@8 r@@8 u@@5))
)))
(assert (forall ((p@@10 T@Field_25095_25096) (v_1@@9 T@FrameType) (q@@6 T@Field_9461_9520) (w@@9 T@FrameType) (r@@9 T@Field_24210_24211) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_25095_17904 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_17904_24210 q@@6 w@@9 r@@9 u@@6)) (InsidePredicate_25095_24210 p@@10 v_1@@9 r@@9 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25095_17904 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_17904_24210 q@@6 w@@9 r@@9 u@@6))
)))
(assert (forall ((p@@11 T@Field_25095_25096) (v_1@@10 T@FrameType) (q@@7 T@Field_9461_9520) (w@@10 T@FrameType) (r@@10 T@Field_9461_9520) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_25095_17904 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_17904_17904 q@@7 w@@10 r@@10 u@@7)) (InsidePredicate_25095_17904 p@@11 v_1@@10 r@@10 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25095_17904 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_17904_17904 q@@7 w@@10 r@@10 u@@7))
)))
(assert (forall ((p@@12 T@Field_24210_24211) (v_1@@11 T@FrameType) (q@@8 T@Field_25095_25096) (w@@11 T@FrameType) (r@@11 T@Field_25095_25096) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_24210_25095 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_25095_25095 q@@8 w@@11 r@@11 u@@8)) (InsidePredicate_24210_25095 p@@12 v_1@@11 r@@11 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24210_25095 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_25095_25095 q@@8 w@@11 r@@11 u@@8))
)))
(assert (forall ((p@@13 T@Field_24210_24211) (v_1@@12 T@FrameType) (q@@9 T@Field_25095_25096) (w@@12 T@FrameType) (r@@12 T@Field_24210_24211) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_24210_25095 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_25095_24210 q@@9 w@@12 r@@12 u@@9)) (InsidePredicate_24210_24210 p@@13 v_1@@12 r@@12 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24210_25095 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_25095_24210 q@@9 w@@12 r@@12 u@@9))
)))
(assert (forall ((p@@14 T@Field_24210_24211) (v_1@@13 T@FrameType) (q@@10 T@Field_25095_25096) (w@@13 T@FrameType) (r@@13 T@Field_9461_9520) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_24210_25095 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_25095_17904 q@@10 w@@13 r@@13 u@@10)) (InsidePredicate_24210_17904 p@@14 v_1@@13 r@@13 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24210_25095 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_25095_17904 q@@10 w@@13 r@@13 u@@10))
)))
(assert (forall ((p@@15 T@Field_24210_24211) (v_1@@14 T@FrameType) (q@@11 T@Field_24210_24211) (w@@14 T@FrameType) (r@@14 T@Field_25095_25096) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_24210_24210 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_24210_25095 q@@11 w@@14 r@@14 u@@11)) (InsidePredicate_24210_25095 p@@15 v_1@@14 r@@14 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24210_24210 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_24210_25095 q@@11 w@@14 r@@14 u@@11))
)))
(assert (forall ((p@@16 T@Field_24210_24211) (v_1@@15 T@FrameType) (q@@12 T@Field_24210_24211) (w@@15 T@FrameType) (r@@15 T@Field_24210_24211) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_24210_24210 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_24210_24210 q@@12 w@@15 r@@15 u@@12)) (InsidePredicate_24210_24210 p@@16 v_1@@15 r@@15 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24210_24210 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_24210_24210 q@@12 w@@15 r@@15 u@@12))
)))
(assert (forall ((p@@17 T@Field_24210_24211) (v_1@@16 T@FrameType) (q@@13 T@Field_24210_24211) (w@@16 T@FrameType) (r@@16 T@Field_9461_9520) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_24210_24210 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_24210_17904 q@@13 w@@16 r@@16 u@@13)) (InsidePredicate_24210_17904 p@@17 v_1@@16 r@@16 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24210_24210 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_24210_17904 q@@13 w@@16 r@@16 u@@13))
)))
(assert (forall ((p@@18 T@Field_24210_24211) (v_1@@17 T@FrameType) (q@@14 T@Field_9461_9520) (w@@17 T@FrameType) (r@@17 T@Field_25095_25096) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_24210_17904 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_17904_25095 q@@14 w@@17 r@@17 u@@14)) (InsidePredicate_24210_25095 p@@18 v_1@@17 r@@17 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24210_17904 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_17904_25095 q@@14 w@@17 r@@17 u@@14))
)))
(assert (forall ((p@@19 T@Field_24210_24211) (v_1@@18 T@FrameType) (q@@15 T@Field_9461_9520) (w@@18 T@FrameType) (r@@18 T@Field_24210_24211) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_24210_17904 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_17904_24210 q@@15 w@@18 r@@18 u@@15)) (InsidePredicate_24210_24210 p@@19 v_1@@18 r@@18 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24210_17904 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_17904_24210 q@@15 w@@18 r@@18 u@@15))
)))
(assert (forall ((p@@20 T@Field_24210_24211) (v_1@@19 T@FrameType) (q@@16 T@Field_9461_9520) (w@@19 T@FrameType) (r@@19 T@Field_9461_9520) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_24210_17904 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_17904_17904 q@@16 w@@19 r@@19 u@@16)) (InsidePredicate_24210_17904 p@@20 v_1@@19 r@@19 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24210_17904 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_17904_17904 q@@16 w@@19 r@@19 u@@16))
)))
(assert (forall ((p@@21 T@Field_9461_9520) (v_1@@20 T@FrameType) (q@@17 T@Field_25095_25096) (w@@20 T@FrameType) (r@@20 T@Field_25095_25096) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_17904_25095 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_25095_25095 q@@17 w@@20 r@@20 u@@17)) (InsidePredicate_17904_25095 p@@21 v_1@@20 r@@20 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17904_25095 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_25095_25095 q@@17 w@@20 r@@20 u@@17))
)))
(assert (forall ((p@@22 T@Field_9461_9520) (v_1@@21 T@FrameType) (q@@18 T@Field_25095_25096) (w@@21 T@FrameType) (r@@21 T@Field_24210_24211) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_17904_25095 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_25095_24210 q@@18 w@@21 r@@21 u@@18)) (InsidePredicate_17904_24210 p@@22 v_1@@21 r@@21 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17904_25095 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_25095_24210 q@@18 w@@21 r@@21 u@@18))
)))
(assert (forall ((p@@23 T@Field_9461_9520) (v_1@@22 T@FrameType) (q@@19 T@Field_25095_25096) (w@@22 T@FrameType) (r@@22 T@Field_9461_9520) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_17904_25095 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_25095_17904 q@@19 w@@22 r@@22 u@@19)) (InsidePredicate_17904_17904 p@@23 v_1@@22 r@@22 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17904_25095 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_25095_17904 q@@19 w@@22 r@@22 u@@19))
)))
(assert (forall ((p@@24 T@Field_9461_9520) (v_1@@23 T@FrameType) (q@@20 T@Field_24210_24211) (w@@23 T@FrameType) (r@@23 T@Field_25095_25096) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_17904_24210 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_24210_25095 q@@20 w@@23 r@@23 u@@20)) (InsidePredicate_17904_25095 p@@24 v_1@@23 r@@23 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17904_24210 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_24210_25095 q@@20 w@@23 r@@23 u@@20))
)))
(assert (forall ((p@@25 T@Field_9461_9520) (v_1@@24 T@FrameType) (q@@21 T@Field_24210_24211) (w@@24 T@FrameType) (r@@24 T@Field_24210_24211) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_17904_24210 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_24210_24210 q@@21 w@@24 r@@24 u@@21)) (InsidePredicate_17904_24210 p@@25 v_1@@24 r@@24 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17904_24210 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_24210_24210 q@@21 w@@24 r@@24 u@@21))
)))
(assert (forall ((p@@26 T@Field_9461_9520) (v_1@@25 T@FrameType) (q@@22 T@Field_24210_24211) (w@@25 T@FrameType) (r@@25 T@Field_9461_9520) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_17904_24210 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_24210_17904 q@@22 w@@25 r@@25 u@@22)) (InsidePredicate_17904_17904 p@@26 v_1@@25 r@@25 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17904_24210 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_24210_17904 q@@22 w@@25 r@@25 u@@22))
)))
(assert (forall ((p@@27 T@Field_9461_9520) (v_1@@26 T@FrameType) (q@@23 T@Field_9461_9520) (w@@26 T@FrameType) (r@@26 T@Field_25095_25096) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_17904_17904 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_17904_25095 q@@23 w@@26 r@@26 u@@23)) (InsidePredicate_17904_25095 p@@27 v_1@@26 r@@26 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17904_17904 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_17904_25095 q@@23 w@@26 r@@26 u@@23))
)))
(assert (forall ((p@@28 T@Field_9461_9520) (v_1@@27 T@FrameType) (q@@24 T@Field_9461_9520) (w@@27 T@FrameType) (r@@27 T@Field_24210_24211) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_17904_17904 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_17904_24210 q@@24 w@@27 r@@27 u@@24)) (InsidePredicate_17904_24210 p@@28 v_1@@27 r@@27 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17904_17904 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_17904_24210 q@@24 w@@27 r@@27 u@@24))
)))
(assert (forall ((p@@29 T@Field_9461_9520) (v_1@@28 T@FrameType) (q@@25 T@Field_9461_9520) (w@@28 T@FrameType) (r@@28 T@Field_9461_9520) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_17904_17904 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_17904_17904 q@@25 w@@28 r@@28 u@@25)) (InsidePredicate_17904_17904 p@@29 v_1@@28 r@@28 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17904_17904 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_17904_17904 q@@25 w@@28 r@@28 u@@25))
)))
(assert (forall ((a@@15 Int) ) (!  (=> (< a@@15 0) (= (|Math#clip| a@@15) 0))
 :qid |stdinbpl.277:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@15))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@16 T@MultiSet_24204) (x@@3 T@Ref) (o@@21 T@Ref) ) (! (= (|MultiSet#Select_9588| (|MultiSet#UnionOne_9587| a@@16 x@@3) o@@21) (ite (= x@@3 o@@21) (+ (|MultiSet#Select_9588| a@@16 o@@21) 1) (|MultiSet#Select_9588| a@@16 o@@21)))
 :qid |stdinbpl.310:18|
 :skolemid |64|
 :pattern ( (|MultiSet#Select_9588| (|MultiSet#UnionOne_9587| a@@16 x@@3) o@@21))
 :pattern ( (|MultiSet#UnionOne_9587| a@@16 x@@3) (|MultiSet#Select_9588| a@@16 o@@21))
)))
(assert (forall ((a@@17 T@MultiSet_24204) (b@@12 T@MultiSet_24204) ) (! (= (|MultiSet#Equal_24204| a@@17 b@@12) (forall ((o@@22 T@Ref) ) (! (= (|MultiSet#Select_9588| a@@17 o@@22) (|MultiSet#Select_9588| b@@12 o@@22))
 :qid |stdinbpl.356:36|
 :skolemid |77|
 :pattern ( (|MultiSet#Select_9588| a@@17 o@@22))
 :pattern ( (|MultiSet#Select_9588| b@@12 o@@22))
)))
 :qid |stdinbpl.355:17|
 :skolemid |78|
 :pattern ( (|MultiSet#Equal_24204| a@@17 b@@12))
)))
(assert (forall ((a@@18 T@MultiSet_24204) (b@@13 T@MultiSet_24204) ) (! (= (|MultiSet#Subset_24204| a@@18 b@@13) (forall ((o@@23 T@Ref) ) (! (<= (|MultiSet#Select_9588| a@@18 o@@23) (|MultiSet#Select_9588| b@@13 o@@23))
 :qid |stdinbpl.352:37|
 :skolemid |75|
 :pattern ( (|MultiSet#Select_9588| a@@18 o@@23))
 :pattern ( (|MultiSet#Select_9588| b@@13 o@@23))
)))
 :qid |stdinbpl.351:17|
 :skolemid |76|
 :pattern ( (|MultiSet#Subset_24204| a@@18 b@@13))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_17844)
(declare-fun sys__result () T@Ref)
(declare-fun wildcard@0 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_17865)
(declare-fun wildcard@1 () Real)
(declare-fun PostMask@1 () T@PolymorphicMapType_17865)
(declare-fun owner () T@Ref)
(declare-fun Heap@@47 () T@PolymorphicMapType_17844)
(declare-fun user () T@Ref)
(declare-fun current_thread_id () Int)
(declare-fun Mask@0 () T@PolymorphicMapType_17865)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id Lock__Lock)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (and (not (= sys__result null)) (state PostHeap@0 ZeroMask)) (and (> wildcard@0 NoPerm) (not (= sys__result null)))) (=> (and (and (and (= PostMask@0 (PolymorphicMapType_17865 (|PolymorphicMapType_17865_9467_3217#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9472_9473#PolymorphicMapType_17865| ZeroMask) (store (|PolymorphicMapType_17865_9461_9462#PolymorphicMapType_17865| ZeroMask) sys__result Lock__owner (+ (select (|PolymorphicMapType_17865_9461_9462#PolymorphicMapType_17865| ZeroMask) sys__result Lock__owner) wildcard@0)) (|PolymorphicMapType_17865_9519_9520#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9467_9473#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9467_53#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9467_70680#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9472_3217#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9472_9462#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9472_53#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9472_71091#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9519_3217#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9519_9462#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9519_53#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9519_71502#PolymorphicMapType_17865| ZeroMask))) (state PostHeap@0 PostMask@0)) (and (state PostHeap@0 PostMask@0) (> wildcard@1 NoPerm))) (and (and (not (= sys__result null)) (= PostMask@1 (PolymorphicMapType_17865 (|PolymorphicMapType_17865_9467_3217#PolymorphicMapType_17865| PostMask@0) (|PolymorphicMapType_17865_9472_9473#PolymorphicMapType_17865| PostMask@0) (store (|PolymorphicMapType_17865_9461_9462#PolymorphicMapType_17865| PostMask@0) sys__result Lock__user (+ (select (|PolymorphicMapType_17865_9461_9462#PolymorphicMapType_17865| PostMask@0) sys__result Lock__user) wildcard@1)) (|PolymorphicMapType_17865_9519_9520#PolymorphicMapType_17865| PostMask@0) (|PolymorphicMapType_17865_9467_9473#PolymorphicMapType_17865| PostMask@0) (|PolymorphicMapType_17865_9467_53#PolymorphicMapType_17865| PostMask@0) (|PolymorphicMapType_17865_9467_70680#PolymorphicMapType_17865| PostMask@0) (|PolymorphicMapType_17865_9472_3217#PolymorphicMapType_17865| PostMask@0) (|PolymorphicMapType_17865_9472_9462#PolymorphicMapType_17865| PostMask@0) (|PolymorphicMapType_17865_9472_53#PolymorphicMapType_17865| PostMask@0) (|PolymorphicMapType_17865_9472_71091#PolymorphicMapType_17865| PostMask@0) (|PolymorphicMapType_17865_9519_3217#PolymorphicMapType_17865| PostMask@0) (|PolymorphicMapType_17865_9519_9462#PolymorphicMapType_17865| PostMask@0) (|PolymorphicMapType_17865_9519_53#PolymorphicMapType_17865| PostMask@0) (|PolymorphicMapType_17865_9519_71502#PolymorphicMapType_17865| PostMask@0)))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_9461_9462 PostMask@1 sys__result Lock__owner)) (=> (HasDirectPerm_9461_9462 PostMask@1 sys__result Lock__owner) (=> (= (select (|PolymorphicMapType_17844_9175_9176#PolymorphicMapType_17844| PostHeap@0) sys__result Lock__owner) owner) (=> (and (state PostHeap@0 PostMask@1) (= (ControlFlow 0 2) (- 0 1))) (HasDirectPerm_9461_9462 PostMask@1 sys__result Lock__user))))))))))
(let ((anon0_correct  (=> (state Heap@@47 ZeroMask) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@47) owner $allocated)) (and (select (|PolymorphicMapType_17844_9172_53#PolymorphicMapType_17844| Heap@@47) user $allocated) (>= current_thread_id 0))) (and (and (state Heap@@47 ZeroMask) (= Mask@0 (PolymorphicMapType_17865 (|PolymorphicMapType_17865_9467_3217#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9472_9473#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9461_9462#PolymorphicMapType_17865| ZeroMask) (store (|PolymorphicMapType_17865_9519_9520#PolymorphicMapType_17865| ZeroMask) null (Client__inv user FullPerm) (+ (select (|PolymorphicMapType_17865_9519_9520#PolymorphicMapType_17865| ZeroMask) null (Client__inv user FullPerm)) FullPerm)) (|PolymorphicMapType_17865_9467_9473#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9467_53#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9467_70680#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9472_3217#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9472_9462#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9472_53#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9472_71091#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9519_3217#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9519_9462#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9519_53#PolymorphicMapType_17865| ZeroMask) (|PolymorphicMapType_17865_9519_71502#PolymorphicMapType_17865| ZeroMask)))) (and (state Heap@@47 Mask@0) (state Heap@@47 Mask@0)))) (and (=> (= (ControlFlow 0 17) 2) anon3_Then_correct) (=> (= (ControlFlow 0 17) 5) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 18) 17)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
