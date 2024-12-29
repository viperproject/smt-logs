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
(declare-sort T@Field_14248_53 0)
(declare-sort T@Field_14261_14262 0)
(declare-sort T@Field_20445_3358 0)
(declare-sort T@Field_8585_37253 0)
(declare-sort T@Field_8585_37120 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_14209 0)) (((PolymorphicMapType_14209 (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| (Array T@Ref T@Field_20445_3358 Real)) (|PolymorphicMapType_14209_8585_53#PolymorphicMapType_14209| (Array T@Ref T@Field_14248_53 Real)) (|PolymorphicMapType_14209_8585_14262#PolymorphicMapType_14209| (Array T@Ref T@Field_14261_14262 Real)) (|PolymorphicMapType_14209_8585_37120#PolymorphicMapType_14209| (Array T@Ref T@Field_8585_37120 Real)) (|PolymorphicMapType_14209_8585_41375#PolymorphicMapType_14209| (Array T@Ref T@Field_8585_37253 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14737 0)) (((PolymorphicMapType_14737 (|PolymorphicMapType_14737_14248_53#PolymorphicMapType_14737| (Array T@Ref T@Field_14248_53 Bool)) (|PolymorphicMapType_14737_14248_14262#PolymorphicMapType_14737| (Array T@Ref T@Field_14261_14262 Bool)) (|PolymorphicMapType_14737_14248_3358#PolymorphicMapType_14737| (Array T@Ref T@Field_20445_3358 Bool)) (|PolymorphicMapType_14737_14248_37120#PolymorphicMapType_14737| (Array T@Ref T@Field_8585_37120 Bool)) (|PolymorphicMapType_14737_14248_38431#PolymorphicMapType_14737| (Array T@Ref T@Field_8585_37253 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14188 0)) (((PolymorphicMapType_14188 (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| (Array T@Ref T@Field_14248_53 Bool)) (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| (Array T@Ref T@Field_14261_14262 T@Ref)) (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| (Array T@Ref T@Field_20445_3358 Int)) (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| (Array T@Ref T@Field_8585_37253 T@PolymorphicMapType_14737)) (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| (Array T@Ref T@Field_8585_37120 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_14248_53)
(declare-fun f_7 () T@Field_20445_3358)
(declare-fun succHeap (T@PolymorphicMapType_14188 T@PolymorphicMapType_14188) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_14188 T@PolymorphicMapType_14188) Bool)
(declare-fun state (T@PolymorphicMapType_14188 T@PolymorphicMapType_14209) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_14209) Bool)
(declare-fun |fun2'| (T@PolymorphicMapType_14188 (Array T@Ref Bool) T@Ref T@Ref) Int)
(declare-fun dummyFunction_3763 (Int) Bool)
(declare-fun |fun2#triggerStateless| ((Array T@Ref Bool) T@Ref T@Ref) Int)
(declare-fun |fun3'| (T@PolymorphicMapType_14188 T@Ref T@Ref T@Ref) Int)
(declare-fun |fun3#triggerStateless| (T@Ref T@Ref T@Ref) Int)
(declare-fun |fun4'| (T@PolymorphicMapType_14188 T@Ref T@Ref T@Ref) Int)
(declare-fun |fun4#triggerStateless| (T@Ref T@Ref T@Ref) Int)
(declare-fun |fun5'| (T@PolymorphicMapType_14188 T@Ref T@Ref T@Ref) Int)
(declare-fun |fun5#triggerStateless| (T@Ref T@Ref T@Ref) Int)
(declare-fun |fun6'| (T@PolymorphicMapType_14188 T@Ref T@Ref T@Ref) Int)
(declare-fun |fun6#triggerStateless| (T@Ref T@Ref T@Ref) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_14737)
(declare-fun |fun1'| (T@PolymorphicMapType_14188 (Array T@Ref Bool) T@Ref) Int)
(declare-fun |fun1#triggerStateless| ((Array T@Ref Bool) T@Ref) Int)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun fun6 (T@PolymorphicMapType_14188 T@Ref T@Ref T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun fun2 (T@PolymorphicMapType_14188 (Array T@Ref Bool) T@Ref T@Ref) Int)
(declare-fun |Set#UnionOne_8770| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Singleton_8770| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Union_8770| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_8770| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Card_8770| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_14188 T@PolymorphicMapType_14188 T@PolymorphicMapType_14209) Bool)
(declare-fun IsPredicateField_8585_37211 (T@Field_8585_37120) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8585 (T@Field_8585_37120) T@Field_8585_37253)
(declare-fun HasDirectPerm_8585_37184 (T@PolymorphicMapType_14209 T@Ref T@Field_8585_37120) Bool)
(declare-fun IsWandField_8585_38958 (T@Field_8585_37120) Bool)
(declare-fun WandMaskField_8585 (T@Field_8585_37120) T@Field_8585_37253)
(declare-fun fun3 (T@PolymorphicMapType_14188 T@Ref T@Ref T@Ref) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_14188)
(declare-fun ZeroMask () T@PolymorphicMapType_14209)
(declare-fun fun1 (T@PolymorphicMapType_14188 (Array T@Ref Bool) T@Ref) Int)
(declare-fun InsidePredicate_14248_14248 (T@Field_8585_37120 T@FrameType T@Field_8585_37120 T@FrameType) Bool)
(declare-fun IsPredicateField_8585_3358 (T@Field_20445_3358) Bool)
(declare-fun IsWandField_8585_3358 (T@Field_20445_3358) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8585_42504 (T@Field_8585_37253) Bool)
(declare-fun IsWandField_8585_42520 (T@Field_8585_37253) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8585_14262 (T@Field_14261_14262) Bool)
(declare-fun IsWandField_8585_14262 (T@Field_14261_14262) Bool)
(declare-fun IsPredicateField_8585_53 (T@Field_14248_53) Bool)
(declare-fun IsWandField_8585_53 (T@Field_14248_53) Bool)
(declare-fun HasDirectPerm_8585_42958 (T@PolymorphicMapType_14209 T@Ref T@Field_8585_37253) Bool)
(declare-fun HasDirectPerm_8585_14262 (T@PolymorphicMapType_14209 T@Ref T@Field_14261_14262) Bool)
(declare-fun HasDirectPerm_8585_53 (T@PolymorphicMapType_14209 T@Ref T@Field_14248_53) Bool)
(declare-fun HasDirectPerm_8585_3358 (T@PolymorphicMapType_14209 T@Ref T@Field_20445_3358) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |fun1#frame| (T@FrameType (Array T@Ref Bool) T@Ref) Int)
(declare-fun FrameFragment_3591 (Int) T@FrameType)
(declare-fun |fun1#condqp1| (T@PolymorphicMapType_14188 (Array T@Ref Bool) T@Ref) Int)
(declare-fun sumMask (T@PolymorphicMapType_14209 T@PolymorphicMapType_14209 T@PolymorphicMapType_14209) Bool)
(declare-fun |Set#Difference_8770| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |fun3#condqp3| (T@PolymorphicMapType_14188 T@Ref T@Ref T@Ref) Int)
(declare-fun |sk_fun3#condqp3| (Int Int) T@Ref)
(declare-fun |sk_fun1#condqp1| (Int Int) T@Ref)
(declare-fun fun4 (T@PolymorphicMapType_14188 T@Ref T@Ref T@Ref) Int)
(declare-fun fun5 (T@PolymorphicMapType_14188 T@Ref T@Ref T@Ref) Int)
(declare-fun |fun2#frame| (T@FrameType (Array T@Ref Bool) T@Ref T@Ref) Int)
(declare-fun |fun2#condqp2| (T@PolymorphicMapType_14188 (Array T@Ref Bool) T@Ref T@Ref) Int)
(declare-fun |fun3#frame| (T@FrameType T@Ref T@Ref T@Ref) Int)
(declare-fun |sk_fun2#condqp2| (Int Int) T@Ref)
(declare-fun |Set#Empty_8770| () (Array T@Ref Bool))
(declare-fun |fun4#frame| (T@FrameType T@Ref T@Ref T@Ref) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun |fun5#frame| (T@FrameType T@Ref T@Ref T@Ref) Int)
(declare-fun |fun6#frame| (T@FrameType T@Ref T@Ref T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_14188) (Heap1 T@PolymorphicMapType_14188) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_14188) (Mask T@PolymorphicMapType_14209) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_14188) (Heap1@@0 T@PolymorphicMapType_14188) (Heap2 T@PolymorphicMapType_14188) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_14188) (xs (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (! (dummyFunction_3763 (|fun2#triggerStateless| xs x y))
 :qid |stdinbpl.539:15|
 :skolemid |94|
 :pattern ( (|fun2'| Heap@@0 xs x y))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_14188) (x@@0 T@Ref) (y@@0 T@Ref) (z T@Ref) ) (! (dummyFunction_3763 (|fun3#triggerStateless| x@@0 y@@0 z))
 :qid |stdinbpl.659:15|
 :skolemid |105|
 :pattern ( (|fun3'| Heap@@1 x@@0 y@@0 z))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_14188) (x@@1 T@Ref) (y@@1 T@Ref) (z@@0 T@Ref) ) (! (dummyFunction_3763 (|fun4#triggerStateless| x@@1 y@@1 z@@0))
 :qid |stdinbpl.823:15|
 :skolemid |120|
 :pattern ( (|fun4'| Heap@@2 x@@1 y@@1 z@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_14188) (x@@2 T@Ref) (y@@2 T@Ref) (z@@1 T@Ref) ) (! (dummyFunction_3763 (|fun5#triggerStateless| x@@2 y@@2 z@@1))
 :qid |stdinbpl.947:15|
 :skolemid |128|
 :pattern ( (|fun5'| Heap@@3 x@@2 y@@2 z@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_14188) (x@@3 T@Ref) (y@@3 T@Ref) (z@@2 T@Ref) ) (! (dummyFunction_3763 (|fun6#triggerStateless| x@@3 y@@3 z@@2))
 :qid |stdinbpl.1071:15|
 :skolemid |136|
 :pattern ( (|fun6'| Heap@@4 x@@3 y@@3 z@@2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8585_37253) ) (!  (not (select (|PolymorphicMapType_14737_14248_38431#PolymorphicMapType_14737| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14737_14248_38431#PolymorphicMapType_14737| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8585_37120) ) (!  (not (select (|PolymorphicMapType_14737_14248_37120#PolymorphicMapType_14737| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14737_14248_37120#PolymorphicMapType_14737| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20445_3358) ) (!  (not (select (|PolymorphicMapType_14737_14248_3358#PolymorphicMapType_14737| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14737_14248_3358#PolymorphicMapType_14737| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14261_14262) ) (!  (not (select (|PolymorphicMapType_14737_14248_14262#PolymorphicMapType_14737| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14737_14248_14262#PolymorphicMapType_14737| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_14248_53) ) (!  (not (select (|PolymorphicMapType_14737_14248_53#PolymorphicMapType_14737| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14737_14248_53#PolymorphicMapType_14737| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_14188) (xs@@0 (Array T@Ref Bool)) (x@@4 T@Ref) ) (! (dummyFunction_3763 (|fun1#triggerStateless| xs@@0 x@@4))
 :qid |stdinbpl.427:15|
 :skolemid |83|
 :pattern ( (|fun1'| Heap@@5 xs@@0 x@@4))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.314:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_14188) (Mask@@0 T@PolymorphicMapType_14209) (x@@5 T@Ref) (y@@4 T@Ref) (z@@3 T@Ref) ) (!  (=> (and (state Heap@@6 Mask@@0) (< AssumeFunctionsAbove 3)) (= (fun6 Heap@@6 x@@5 y@@4 z@@3) (+ (+ (+ (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@6) x@@5 f_7) (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@6) y@@4 f_7)) (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@6) z@@3 f_7)) (fun2 Heap@@6 (|Set#UnionOne_8770| (|Set#Singleton_8770| z@@3) x@@5) x@@5 y@@4))))
 :qid |stdinbpl.1077:15|
 :skolemid |137|
 :pattern ( (state Heap@@6 Mask@@0) (fun6 Heap@@6 x@@5 y@@4 z@@3))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_8770| (|Set#Union_8770| a@@0 b@@0) b@@0) (|Set#Union_8770| a@@0 b@@0))
 :qid |stdinbpl.266:18|
 :skolemid |38|
 :pattern ( (|Set#Union_8770| (|Set#Union_8770| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_8770| (|Set#Intersection_8770| a@@1 b@@1) b@@1) (|Set#Intersection_8770| a@@1 b@@1))
 :qid |stdinbpl.270:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_8770| (|Set#Intersection_8770| a@@1 b@@1) b@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_14188) (Mask@@1 T@PolymorphicMapType_14209) (xs@@1 (Array T@Ref Bool)) (x@@6 T@Ref) (y@@5 T@Ref) ) (!  (=> (and (state Heap@@7 Mask@@1) (< AssumeFunctionsAbove 5)) (=> (select xs@@1 x@@6) (= (fun2 Heap@@7 xs@@1 x@@6 y@@5) (+ (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@7) x@@6 f_7) (ite (select xs@@1 y@@5) (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@7) y@@5 f_7) (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@7) x@@6 f_7))))))
 :qid |stdinbpl.545:15|
 :skolemid |95|
 :pattern ( (state Heap@@7 Mask@@1) (fun2 Heap@@7 xs@@1 x@@6 y@@5))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_8770| r) o) (= r o))
 :qid |stdinbpl.235:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_8770| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_8770| (|Set#Union_8770| a@@2 b@@2)) (|Set#Card_8770| (|Set#Intersection_8770| a@@2 b@@2))) (+ (|Set#Card_8770| a@@2) (|Set#Card_8770| b@@2)))
 :qid |stdinbpl.274:18|
 :skolemid |42|
 :pattern ( (|Set#Card_8770| (|Set#Union_8770| a@@2 b@@2)))
 :pattern ( (|Set#Card_8770| (|Set#Intersection_8770| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.317:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_14188) (ExhaleHeap T@PolymorphicMapType_14188) (Mask@@2 T@PolymorphicMapType_14209) (pm_f_9 T@Field_8585_37120) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_8585_37184 Mask@@2 null pm_f_9) (IsPredicateField_8585_37211 pm_f_9)) (= (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@8) null (PredicateMaskField_8585 pm_f_9)) (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| ExhaleHeap) null (PredicateMaskField_8585 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@2) (IsPredicateField_8585_37211 pm_f_9) (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| ExhaleHeap) null (PredicateMaskField_8585 pm_f_9)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_14188) (ExhaleHeap@@0 T@PolymorphicMapType_14188) (Mask@@3 T@PolymorphicMapType_14209) (pm_f_9@@0 T@Field_8585_37120) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_8585_37184 Mask@@3 null pm_f_9@@0) (IsWandField_8585_38958 pm_f_9@@0)) (= (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@9) null (WandMaskField_8585 pm_f_9@@0)) (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| ExhaleHeap@@0) null (WandMaskField_8585 pm_f_9@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@3) (IsWandField_8585_38958 pm_f_9@@0) (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| ExhaleHeap@@0) null (WandMaskField_8585 pm_f_9@@0)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_14188) (Mask@@4 T@PolymorphicMapType_14209) (x@@7 T@Ref) (y@@6 T@Ref) (z@@4 T@Ref) ) (!  (=> (and (state Heap@@10 Mask@@4) (< AssumeFunctionsAbove 1)) (=> (and (not (= x@@7 null)) (and (not (= y@@6 null)) (not (= z@@4 null)))) (= (fun3 Heap@@10 x@@7 y@@6 z@@4) (+ (+ (+ (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@10) x@@7 f_7) (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@10) y@@6 f_7)) (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@10) z@@4 f_7)) (fun2 Heap@@10 (|Set#UnionOne_8770| (|Set#Singleton_8770| z@@4) x@@7) x@@7 y@@6)))))
 :qid |stdinbpl.665:15|
 :skolemid |106|
 :pattern ( (state Heap@@10 Mask@@4) (fun3 Heap@@10 x@@7 y@@6 z@@4))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_14188) (Mask@@5 T@PolymorphicMapType_14209) (xs@@2 (Array T@Ref Bool)) (x@@8 T@Ref) ) (!  (=> (and (state Heap@@11 Mask@@5) (< AssumeFunctionsAbove 4)) (=> (select xs@@2 x@@8) (= (fun1 Heap@@11 xs@@2 x@@8) (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@11) x@@8 f_7))))
 :qid |stdinbpl.433:15|
 :skolemid |84|
 :pattern ( (state Heap@@11 Mask@@5) (fun1 Heap@@11 xs@@2 x@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_14188) (ExhaleHeap@@1 T@PolymorphicMapType_14188) (Mask@@6 T@PolymorphicMapType_14209) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@1 Mask@@6) (=> (select (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@12) o_27 $allocated) (select (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| ExhaleHeap@@1) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@1 Mask@@6) (select (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| ExhaleHeap@@1) o_27 $allocated))
)))
(assert (forall ((p T@Field_8585_37120) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14248_14248 p v_1 p w))
 :qid |stdinbpl.212:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14248_14248 p v_1 p w))
)))
(assert  (not (IsPredicateField_8585_3358 f_7)))
(assert  (not (IsWandField_8585_3358 f_7)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_14188) (ExhaleHeap@@2 T@PolymorphicMapType_14188) (Mask@@7 T@PolymorphicMapType_14209) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@2 Mask@@7) (succHeap Heap@@13 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@2 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_14209) (o_2@@4 T@Ref) (f_4@@4 T@Field_8585_37253) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_14209_8585_41375#PolymorphicMapType_14209| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8585_42504 f_4@@4))) (not (IsWandField_8585_42520 f_4@@4))) (<= (select (|PolymorphicMapType_14209_8585_41375#PolymorphicMapType_14209| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_14209_8585_41375#PolymorphicMapType_14209| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_14209) (o_2@@5 T@Ref) (f_4@@5 T@Field_8585_37120) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_14209_8585_37120#PolymorphicMapType_14209| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_8585_37211 f_4@@5))) (not (IsWandField_8585_38958 f_4@@5))) (<= (select (|PolymorphicMapType_14209_8585_37120#PolymorphicMapType_14209| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_14209_8585_37120#PolymorphicMapType_14209| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_14209) (o_2@@6 T@Ref) (f_4@@6 T@Field_14261_14262) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_14209_8585_14262#PolymorphicMapType_14209| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_8585_14262 f_4@@6))) (not (IsWandField_8585_14262 f_4@@6))) (<= (select (|PolymorphicMapType_14209_8585_14262#PolymorphicMapType_14209| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_14209_8585_14262#PolymorphicMapType_14209| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_14209) (o_2@@7 T@Ref) (f_4@@7 T@Field_14248_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_14209_8585_53#PolymorphicMapType_14209| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_8585_53 f_4@@7))) (not (IsWandField_8585_53 f_4@@7))) (<= (select (|PolymorphicMapType_14209_8585_53#PolymorphicMapType_14209| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_14209_8585_53#PolymorphicMapType_14209| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_14209) (o_2@@8 T@Ref) (f_4@@8 T@Field_20445_3358) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8585_3358 f_4@@8))) (not (IsWandField_8585_3358 f_4@@8))) (<= (select (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_14209) (o_2@@9 T@Ref) (f_4@@9 T@Field_8585_37253) ) (! (= (HasDirectPerm_8585_42958 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_14209_8585_41375#PolymorphicMapType_14209| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8585_42958 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_14209) (o_2@@10 T@Ref) (f_4@@10 T@Field_8585_37120) ) (! (= (HasDirectPerm_8585_37184 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_14209_8585_37120#PolymorphicMapType_14209| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8585_37184 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_14209) (o_2@@11 T@Ref) (f_4@@11 T@Field_14261_14262) ) (! (= (HasDirectPerm_8585_14262 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_14209_8585_14262#PolymorphicMapType_14209| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8585_14262 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_14209) (o_2@@12 T@Ref) (f_4@@12 T@Field_14248_53) ) (! (= (HasDirectPerm_8585_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_14209_8585_53#PolymorphicMapType_14209| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8585_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_14209) (o_2@@13 T@Ref) (f_4@@13 T@Field_20445_3358) ) (! (= (HasDirectPerm_8585_3358 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8585_3358 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_14188) (ExhaleHeap@@3 T@PolymorphicMapType_14188) (Mask@@18 T@PolymorphicMapType_14209) (pm_f_9@@1 T@Field_8585_37120) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_8585_37184 Mask@@18 null pm_f_9@@1) (IsPredicateField_8585_37211 pm_f_9@@1)) (and (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_14248_53) ) (!  (=> (select (|PolymorphicMapType_14737_14248_53#PolymorphicMapType_14737| (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@14) null (PredicateMaskField_8585 pm_f_9@@1))) o2_9 f_24) (= (select (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@14) o2_9 f_24) (select (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| ExhaleHeap@@3) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| ExhaleHeap@@3) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_14261_14262) ) (!  (=> (select (|PolymorphicMapType_14737_14248_14262#PolymorphicMapType_14737| (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@14) null (PredicateMaskField_8585 pm_f_9@@1))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| Heap@@14) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| ExhaleHeap@@3) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| ExhaleHeap@@3) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_20445_3358) ) (!  (=> (select (|PolymorphicMapType_14737_14248_3358#PolymorphicMapType_14737| (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@14) null (PredicateMaskField_8585 pm_f_9@@1))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@14) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| ExhaleHeap@@3) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| ExhaleHeap@@3) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_8585_37120) ) (!  (=> (select (|PolymorphicMapType_14737_14248_37120#PolymorphicMapType_14737| (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@14) null (PredicateMaskField_8585 pm_f_9@@1))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| Heap@@14) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| ExhaleHeap@@3) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| ExhaleHeap@@3) o2_9@@2 f_24@@2))
))) (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_8585_37253) ) (!  (=> (select (|PolymorphicMapType_14737_14248_38431#PolymorphicMapType_14737| (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@14) null (PredicateMaskField_8585 pm_f_9@@1))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@14) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| ExhaleHeap@@3) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| ExhaleHeap@@3) o2_9@@3 f_24@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@18) (IsPredicateField_8585_37211 pm_f_9@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_14188) (ExhaleHeap@@4 T@PolymorphicMapType_14188) (Mask@@19 T@PolymorphicMapType_14209) (pm_f_9@@2 T@Field_8585_37120) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_8585_37184 Mask@@19 null pm_f_9@@2) (IsWandField_8585_38958 pm_f_9@@2)) (and (and (and (and (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_14248_53) ) (!  (=> (select (|PolymorphicMapType_14737_14248_53#PolymorphicMapType_14737| (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@15) null (WandMaskField_8585 pm_f_9@@2))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@15) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| ExhaleHeap@@4) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| ExhaleHeap@@4) o2_9@@4 f_24@@4))
)) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_14261_14262) ) (!  (=> (select (|PolymorphicMapType_14737_14248_14262#PolymorphicMapType_14737| (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@15) null (WandMaskField_8585 pm_f_9@@2))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| Heap@@15) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| ExhaleHeap@@4) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| ExhaleHeap@@4) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_20445_3358) ) (!  (=> (select (|PolymorphicMapType_14737_14248_3358#PolymorphicMapType_14737| (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@15) null (WandMaskField_8585 pm_f_9@@2))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@15) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| ExhaleHeap@@4) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| ExhaleHeap@@4) o2_9@@6 f_24@@6))
))) (forall ((o2_9@@7 T@Ref) (f_24@@7 T@Field_8585_37120) ) (!  (=> (select (|PolymorphicMapType_14737_14248_37120#PolymorphicMapType_14737| (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@15) null (WandMaskField_8585 pm_f_9@@2))) o2_9@@7 f_24@@7) (= (select (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| Heap@@15) o2_9@@7 f_24@@7) (select (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| ExhaleHeap@@4) o2_9@@7 f_24@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| ExhaleHeap@@4) o2_9@@7 f_24@@7))
))) (forall ((o2_9@@8 T@Ref) (f_24@@8 T@Field_8585_37253) ) (!  (=> (select (|PolymorphicMapType_14737_14248_38431#PolymorphicMapType_14737| (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@15) null (WandMaskField_8585 pm_f_9@@2))) o2_9@@8 f_24@@8) (= (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@15) o2_9@@8 f_24@@8) (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| ExhaleHeap@@4) o2_9@@8 f_24@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| ExhaleHeap@@4) o2_9@@8 f_24@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@19) (IsWandField_8585_38958 pm_f_9@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.200:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_14188) (ExhaleHeap@@5 T@PolymorphicMapType_14188) (Mask@@20 T@PolymorphicMapType_14209) (o_27@@0 T@Ref) (f_24@@9 T@Field_8585_37253) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_8585_42958 Mask@@20 o_27@@0 f_24@@9) (= (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@16) o_27@@0 f_24@@9) (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| ExhaleHeap@@5) o_27@@0 f_24@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| ExhaleHeap@@5) o_27@@0 f_24@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_14188) (ExhaleHeap@@6 T@PolymorphicMapType_14188) (Mask@@21 T@PolymorphicMapType_14209) (o_27@@1 T@Ref) (f_24@@10 T@Field_8585_37120) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_8585_37184 Mask@@21 o_27@@1 f_24@@10) (= (select (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| Heap@@17) o_27@@1 f_24@@10) (select (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| ExhaleHeap@@6) o_27@@1 f_24@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| ExhaleHeap@@6) o_27@@1 f_24@@10))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_14188) (ExhaleHeap@@7 T@PolymorphicMapType_14188) (Mask@@22 T@PolymorphicMapType_14209) (o_27@@2 T@Ref) (f_24@@11 T@Field_14261_14262) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_8585_14262 Mask@@22 o_27@@2 f_24@@11) (= (select (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| Heap@@18) o_27@@2 f_24@@11) (select (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| ExhaleHeap@@7) o_27@@2 f_24@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| ExhaleHeap@@7) o_27@@2 f_24@@11))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_14188) (ExhaleHeap@@8 T@PolymorphicMapType_14188) (Mask@@23 T@PolymorphicMapType_14209) (o_27@@3 T@Ref) (f_24@@12 T@Field_14248_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_8585_53 Mask@@23 o_27@@3 f_24@@12) (= (select (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@19) o_27@@3 f_24@@12) (select (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| ExhaleHeap@@8) o_27@@3 f_24@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| ExhaleHeap@@8) o_27@@3 f_24@@12))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_14188) (ExhaleHeap@@9 T@PolymorphicMapType_14188) (Mask@@24 T@PolymorphicMapType_14209) (o_27@@4 T@Ref) (f_24@@13 T@Field_20445_3358) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_8585_3358 Mask@@24 o_27@@4 f_24@@13) (= (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@20) o_27@@4 f_24@@13) (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| ExhaleHeap@@9) o_27@@4 f_24@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| ExhaleHeap@@9) o_27@@4 f_24@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_8585_37253) ) (! (= (select (|PolymorphicMapType_14209_8585_41375#PolymorphicMapType_14209| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14209_8585_41375#PolymorphicMapType_14209| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_8585_37120) ) (! (= (select (|PolymorphicMapType_14209_8585_37120#PolymorphicMapType_14209| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14209_8585_37120#PolymorphicMapType_14209| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_14261_14262) ) (! (= (select (|PolymorphicMapType_14209_8585_14262#PolymorphicMapType_14209| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14209_8585_14262#PolymorphicMapType_14209| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_14248_53) ) (! (= (select (|PolymorphicMapType_14209_8585_53#PolymorphicMapType_14209| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14209_8585_53#PolymorphicMapType_14209| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_20445_3358) ) (! (= (select (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_14188) (xs@@3 (Array T@Ref Bool)) (x@@9 T@Ref) ) (!  (and (= (fun1 Heap@@21 xs@@3 x@@9) (|fun1'| Heap@@21 xs@@3 x@@9)) (dummyFunction_3763 (|fun1#triggerStateless| xs@@3 x@@9)))
 :qid |stdinbpl.423:15|
 :skolemid |82|
 :pattern ( (fun1 Heap@@21 xs@@3 x@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_14188) (Mask@@25 T@PolymorphicMapType_14209) (xs@@4 (Array T@Ref Bool)) (x@@10 T@Ref) ) (!  (=> (state Heap@@22 Mask@@25) (= (|fun1'| Heap@@22 xs@@4 x@@10) (|fun1#frame| (FrameFragment_3591 (|fun1#condqp1| Heap@@22 xs@@4 x@@10)) xs@@4 x@@10)))
 :qid |stdinbpl.440:15|
 :skolemid |85|
 :pattern ( (state Heap@@22 Mask@@25) (|fun1'| Heap@@22 xs@@4 x@@10))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_14209) (SummandMask1 T@PolymorphicMapType_14209) (SummandMask2 T@PolymorphicMapType_14209) (o_2@@19 T@Ref) (f_4@@19 T@Field_8585_37253) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_14209_8585_41375#PolymorphicMapType_14209| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_14209_8585_41375#PolymorphicMapType_14209| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_14209_8585_41375#PolymorphicMapType_14209| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14209_8585_41375#PolymorphicMapType_14209| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14209_8585_41375#PolymorphicMapType_14209| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14209_8585_41375#PolymorphicMapType_14209| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_14209) (SummandMask1@@0 T@PolymorphicMapType_14209) (SummandMask2@@0 T@PolymorphicMapType_14209) (o_2@@20 T@Ref) (f_4@@20 T@Field_8585_37120) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_14209_8585_37120#PolymorphicMapType_14209| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_14209_8585_37120#PolymorphicMapType_14209| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_14209_8585_37120#PolymorphicMapType_14209| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14209_8585_37120#PolymorphicMapType_14209| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14209_8585_37120#PolymorphicMapType_14209| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14209_8585_37120#PolymorphicMapType_14209| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_14209) (SummandMask1@@1 T@PolymorphicMapType_14209) (SummandMask2@@1 T@PolymorphicMapType_14209) (o_2@@21 T@Ref) (f_4@@21 T@Field_14261_14262) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_14209_8585_14262#PolymorphicMapType_14209| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_14209_8585_14262#PolymorphicMapType_14209| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_14209_8585_14262#PolymorphicMapType_14209| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14209_8585_14262#PolymorphicMapType_14209| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14209_8585_14262#PolymorphicMapType_14209| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14209_8585_14262#PolymorphicMapType_14209| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_14209) (SummandMask1@@2 T@PolymorphicMapType_14209) (SummandMask2@@2 T@PolymorphicMapType_14209) (o_2@@22 T@Ref) (f_4@@22 T@Field_14248_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_14209_8585_53#PolymorphicMapType_14209| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_14209_8585_53#PolymorphicMapType_14209| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_14209_8585_53#PolymorphicMapType_14209| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14209_8585_53#PolymorphicMapType_14209| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14209_8585_53#PolymorphicMapType_14209| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14209_8585_53#PolymorphicMapType_14209| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_14209) (SummandMask1@@3 T@PolymorphicMapType_14209) (SummandMask2@@3 T@PolymorphicMapType_14209) (o_2@@23 T@Ref) (f_4@@23 T@Field_20445_3358) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_8770| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.263:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_8770| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_8770| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_8770| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_8770| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.278:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_8770| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_8770| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_14188) (Heap1Heap T@PolymorphicMapType_14188) (x@@11 T@Ref) (y@@7 T@Ref) (z@@5 T@Ref) ) (!  (=> (and (=  (and (select (|Set#UnionOne_8770| (|Set#UnionOne_8770| (|Set#Singleton_8770| z@@5) y@@7) x@@11) (|sk_fun3#condqp3| (|fun3#condqp3| Heap2Heap x@@11 y@@7 z@@5) (|fun3#condqp3| Heap1Heap x@@11 y@@7 z@@5))) (< NoPerm FullPerm))  (and (select (|Set#UnionOne_8770| (|Set#UnionOne_8770| (|Set#Singleton_8770| z@@5) y@@7) x@@11) (|sk_fun3#condqp3| (|fun3#condqp3| Heap2Heap x@@11 y@@7 z@@5) (|fun3#condqp3| Heap1Heap x@@11 y@@7 z@@5))) (< NoPerm FullPerm))) (=> (and (select (|Set#UnionOne_8770| (|Set#UnionOne_8770| (|Set#Singleton_8770| z@@5) y@@7) x@@11) (|sk_fun3#condqp3| (|fun3#condqp3| Heap2Heap x@@11 y@@7 z@@5) (|fun3#condqp3| Heap1Heap x@@11 y@@7 z@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap2Heap) (|sk_fun3#condqp3| (|fun3#condqp3| Heap2Heap x@@11 y@@7 z@@5) (|fun3#condqp3| Heap1Heap x@@11 y@@7 z@@5)) f_7) (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap1Heap) (|sk_fun3#condqp3| (|fun3#condqp3| Heap2Heap x@@11 y@@7 z@@5) (|fun3#condqp3| Heap1Heap x@@11 y@@7 z@@5)) f_7)))) (= (|fun3#condqp3| Heap2Heap x@@11 y@@7 z@@5) (|fun3#condqp3| Heap1Heap x@@11 y@@7 z@@5)))
 :qid |stdinbpl.682:15|
 :skolemid |108|
 :pattern ( (|fun3#condqp3| Heap2Heap x@@11 y@@7 z@@5) (|fun3#condqp3| Heap1Heap x@@11 y@@7 z@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_14188) (Heap1Heap@@0 T@PolymorphicMapType_14188) (xs@@5 (Array T@Ref Bool)) (x@@12 T@Ref) ) (!  (=> (and (=  (and (select xs@@5 (|sk_fun1#condqp1| (|fun1#condqp1| Heap2Heap@@0 xs@@5 x@@12) (|fun1#condqp1| Heap1Heap@@0 xs@@5 x@@12))) (< NoPerm FullPerm))  (and (select xs@@5 (|sk_fun1#condqp1| (|fun1#condqp1| Heap2Heap@@0 xs@@5 x@@12) (|fun1#condqp1| Heap1Heap@@0 xs@@5 x@@12))) (< NoPerm FullPerm))) (=> (and (select xs@@5 (|sk_fun1#condqp1| (|fun1#condqp1| Heap2Heap@@0 xs@@5 x@@12) (|fun1#condqp1| Heap1Heap@@0 xs@@5 x@@12))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap2Heap@@0) (|sk_fun1#condqp1| (|fun1#condqp1| Heap2Heap@@0 xs@@5 x@@12) (|fun1#condqp1| Heap1Heap@@0 xs@@5 x@@12)) f_7) (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap1Heap@@0) (|sk_fun1#condqp1| (|fun1#condqp1| Heap2Heap@@0 xs@@5 x@@12) (|fun1#condqp1| Heap1Heap@@0 xs@@5 x@@12)) f_7)))) (= (|fun1#condqp1| Heap2Heap@@0 xs@@5 x@@12) (|fun1#condqp1| Heap1Heap@@0 xs@@5 x@@12)))
 :qid |stdinbpl.450:15|
 :skolemid |86|
 :pattern ( (|fun1#condqp1| Heap2Heap@@0 xs@@5 x@@12) (|fun1#condqp1| Heap1Heap@@0 xs@@5 x@@12) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x@@13 T@Ref) (y@@8 T@Ref) ) (!  (=> (select a@@6 y@@8) (select (|Set#UnionOne_8770| a@@6 x@@13) y@@8))
 :qid |stdinbpl.243:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_8770| a@@6 x@@13) (select a@@6 y@@8))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@9 T@Ref) ) (!  (=> (select a@@7 y@@9) (select (|Set#Union_8770| a@@7 b@@5) y@@9))
 :qid |stdinbpl.253:18|
 :skolemid |35|
 :pattern ( (|Set#Union_8770| a@@7 b@@5) (select a@@7 y@@9))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@10 T@Ref) ) (!  (=> (select b@@6 y@@10) (select (|Set#Union_8770| a@@8 b@@6) y@@10))
 :qid |stdinbpl.255:18|
 :skolemid |36|
 :pattern ( (|Set#Union_8770| a@@8 b@@6) (select b@@6 y@@10))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@14 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_8770| a@@9 x@@14) o@@2)  (or (= o@@2 x@@14) (select a@@9 o@@2)))
 :qid |stdinbpl.239:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_8770| a@@9 x@@14) o@@2))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_14188) (xs@@6 (Array T@Ref Bool)) (x@@15 T@Ref) (y@@11 T@Ref) ) (!  (and (= (fun2 Heap@@23 xs@@6 x@@15 y@@11) (|fun2'| Heap@@23 xs@@6 x@@15 y@@11)) (dummyFunction_3763 (|fun2#triggerStateless| xs@@6 x@@15 y@@11)))
 :qid |stdinbpl.535:15|
 :skolemid |93|
 :pattern ( (fun2 Heap@@23 xs@@6 x@@15 y@@11))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_14188) (x@@16 T@Ref) (y@@12 T@Ref) (z@@6 T@Ref) ) (!  (and (= (fun3 Heap@@24 x@@16 y@@12 z@@6) (|fun3'| Heap@@24 x@@16 y@@12 z@@6)) (dummyFunction_3763 (|fun3#triggerStateless| x@@16 y@@12 z@@6)))
 :qid |stdinbpl.655:15|
 :skolemid |104|
 :pattern ( (fun3 Heap@@24 x@@16 y@@12 z@@6))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_14188) (x@@17 T@Ref) (y@@13 T@Ref) (z@@7 T@Ref) ) (!  (and (= (fun4 Heap@@25 x@@17 y@@13 z@@7) (|fun4'| Heap@@25 x@@17 y@@13 z@@7)) (dummyFunction_3763 (|fun4#triggerStateless| x@@17 y@@13 z@@7)))
 :qid |stdinbpl.819:15|
 :skolemid |119|
 :pattern ( (fun4 Heap@@25 x@@17 y@@13 z@@7))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_14188) (x@@18 T@Ref) (y@@14 T@Ref) (z@@8 T@Ref) ) (!  (and (= (fun5 Heap@@26 x@@18 y@@14 z@@8) (|fun5'| Heap@@26 x@@18 y@@14 z@@8)) (dummyFunction_3763 (|fun5#triggerStateless| x@@18 y@@14 z@@8)))
 :qid |stdinbpl.943:15|
 :skolemid |127|
 :pattern ( (fun5 Heap@@26 x@@18 y@@14 z@@8))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_14188) (x@@19 T@Ref) (y@@15 T@Ref) (z@@9 T@Ref) ) (!  (and (= (fun6 Heap@@27 x@@19 y@@15 z@@9) (|fun6'| Heap@@27 x@@19 y@@15 z@@9)) (dummyFunction_3763 (|fun6#triggerStateless| x@@19 y@@15 z@@9)))
 :qid |stdinbpl.1067:15|
 :skolemid |135|
 :pattern ( (fun6 Heap@@27 x@@19 y@@15 z@@9))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@16 T@Ref) ) (!  (=> (select b@@7 y@@16) (not (select (|Set#Difference_8770| a@@10 b@@7) y@@16)))
 :qid |stdinbpl.280:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_8770| a@@10 b@@7) (select b@@7 y@@16))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_8770| (|Set#Difference_8770| a@@11 b@@8)) (|Set#Card_8770| (|Set#Difference_8770| b@@8 a@@11))) (|Set#Card_8770| (|Set#Intersection_8770| a@@11 b@@8))) (|Set#Card_8770| (|Set#Union_8770| a@@11 b@@8))) (= (|Set#Card_8770| (|Set#Difference_8770| a@@11 b@@8)) (- (|Set#Card_8770| a@@11) (|Set#Card_8770| (|Set#Intersection_8770| a@@11 b@@8)))))
 :qid |stdinbpl.282:18|
 :skolemid |45|
 :pattern ( (|Set#Card_8770| (|Set#Difference_8770| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_8770| s))
 :qid |stdinbpl.225:18|
 :skolemid |22|
 :pattern ( (|Set#Card_8770| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@20 T@Ref) ) (! (select (|Set#UnionOne_8770| a@@12 x@@20) x@@20)
 :qid |stdinbpl.241:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_8770| a@@12 x@@20))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@21 T@Ref) ) (!  (=> (select a@@13 x@@21) (= (|Set#Card_8770| (|Set#UnionOne_8770| a@@13 x@@21)) (|Set#Card_8770| a@@13)))
 :qid |stdinbpl.245:18|
 :skolemid |32|
 :pattern ( (|Set#Card_8770| (|Set#UnionOne_8770| a@@13 x@@21)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_8770| (|Set#Singleton_8770| r@@0)) 1)
 :qid |stdinbpl.236:18|
 :skolemid |28|
 :pattern ( (|Set#Card_8770| (|Set#Singleton_8770| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_8770| r@@1) r@@1)
 :qid |stdinbpl.234:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_8770| r@@1))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_14188) (Mask@@26 T@PolymorphicMapType_14209) (xs@@7 (Array T@Ref Bool)) (x@@22 T@Ref) (y@@17 T@Ref) ) (!  (=> (state Heap@@28 Mask@@26) (= (|fun2'| Heap@@28 xs@@7 x@@22 y@@17) (|fun2#frame| (FrameFragment_3591 (|fun2#condqp2| Heap@@28 xs@@7 x@@22 y@@17)) xs@@7 x@@22 y@@17)))
 :qid |stdinbpl.552:15|
 :skolemid |96|
 :pattern ( (state Heap@@28 Mask@@26) (|fun2'| Heap@@28 xs@@7 x@@22 y@@17))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_14188) (Mask@@27 T@PolymorphicMapType_14209) (x@@23 T@Ref) (y@@18 T@Ref) (z@@10 T@Ref) ) (!  (=> (state Heap@@29 Mask@@27) (= (|fun3'| Heap@@29 x@@23 y@@18 z@@10) (|fun3#frame| (FrameFragment_3591 (|fun3#condqp3| Heap@@29 x@@23 y@@18 z@@10)) x@@23 y@@18 z@@10)))
 :qid |stdinbpl.672:15|
 :skolemid |107|
 :pattern ( (state Heap@@29 Mask@@27) (|fun3'| Heap@@29 x@@23 y@@18 z@@10))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_14188) (Heap1Heap@@1 T@PolymorphicMapType_14188) (xs@@8 (Array T@Ref Bool)) (x@@24 T@Ref) (y@@19 T@Ref) ) (!  (=> (and (=  (and (select xs@@8 (|sk_fun2#condqp2| (|fun2#condqp2| Heap2Heap@@1 xs@@8 x@@24 y@@19) (|fun2#condqp2| Heap1Heap@@1 xs@@8 x@@24 y@@19))) (< NoPerm FullPerm))  (and (select xs@@8 (|sk_fun2#condqp2| (|fun2#condqp2| Heap2Heap@@1 xs@@8 x@@24 y@@19) (|fun2#condqp2| Heap1Heap@@1 xs@@8 x@@24 y@@19))) (< NoPerm FullPerm))) (=> (and (select xs@@8 (|sk_fun2#condqp2| (|fun2#condqp2| Heap2Heap@@1 xs@@8 x@@24 y@@19) (|fun2#condqp2| Heap1Heap@@1 xs@@8 x@@24 y@@19))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap2Heap@@1) (|sk_fun2#condqp2| (|fun2#condqp2| Heap2Heap@@1 xs@@8 x@@24 y@@19) (|fun2#condqp2| Heap1Heap@@1 xs@@8 x@@24 y@@19)) f_7) (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap1Heap@@1) (|sk_fun2#condqp2| (|fun2#condqp2| Heap2Heap@@1 xs@@8 x@@24 y@@19) (|fun2#condqp2| Heap1Heap@@1 xs@@8 x@@24 y@@19)) f_7)))) (= (|fun2#condqp2| Heap2Heap@@1 xs@@8 x@@24 y@@19) (|fun2#condqp2| Heap1Heap@@1 xs@@8 x@@24 y@@19)))
 :qid |stdinbpl.562:15|
 :skolemid |97|
 :pattern ( (|fun2#condqp2| Heap2Heap@@1 xs@@8 x@@24 y@@19) (|fun2#condqp2| Heap1Heap@@1 xs@@8 x@@24 y@@19) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_8770| a@@14 (|Set#Union_8770| a@@14 b@@9)) (|Set#Union_8770| a@@14 b@@9))
 :qid |stdinbpl.268:18|
 :skolemid |39|
 :pattern ( (|Set#Union_8770| a@@14 (|Set#Union_8770| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_8770| a@@15 (|Set#Intersection_8770| a@@15 b@@10)) (|Set#Intersection_8770| a@@15 b@@10))
 :qid |stdinbpl.272:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_8770| a@@15 (|Set#Intersection_8770| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_8770| o@@3))
 :qid |stdinbpl.228:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_8770| o@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_14188) (o_20 T@Ref) (f_31 T@Field_8585_37120) (v T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_14188 (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@30) (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| Heap@@30) (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@30) (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@30) (store (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| Heap@@30) o_20 f_31 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14188 (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@30) (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| Heap@@30) (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@30) (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@30) (store (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| Heap@@30) o_20 f_31 v)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_14188) (o_20@@0 T@Ref) (f_31@@0 T@Field_8585_37253) (v@@0 T@PolymorphicMapType_14737) ) (! (succHeap Heap@@31 (PolymorphicMapType_14188 (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@31) (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| Heap@@31) (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@31) (store (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@31) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14188 (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@31) (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| Heap@@31) (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@31) (store (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@31) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_14188) (o_20@@1 T@Ref) (f_31@@1 T@Field_20445_3358) (v@@1 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_14188 (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@32) (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| Heap@@32) (store (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@32) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@32) (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14188 (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@32) (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| Heap@@32) (store (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@32) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@32) (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_14188) (o_20@@2 T@Ref) (f_31@@2 T@Field_14261_14262) (v@@2 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_14188 (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@33) (store (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| Heap@@33) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@33) (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@33) (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14188 (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@33) (store (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| Heap@@33) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@33) (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@33) (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_14188) (o_20@@3 T@Ref) (f_31@@3 T@Field_14248_53) (v@@3 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_14188 (store (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@34) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| Heap@@34) (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@34) (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@34) (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14188 (store (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@34) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| Heap@@34) (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@34) (|PolymorphicMapType_14188_8585_37297#PolymorphicMapType_14188| Heap@@34) (|PolymorphicMapType_14188_14248_37120#PolymorphicMapType_14188| Heap@@34)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.312:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.313:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_8770| s@@0) 0) (= s@@0 |Set#Empty_8770|)) (=> (not (= (|Set#Card_8770| s@@0) 0)) (exists ((x@@25 T@Ref) ) (! (select s@@0 x@@25)
 :qid |stdinbpl.231:33|
 :skolemid |24|
))))
 :qid |stdinbpl.229:18|
 :skolemid |25|
 :pattern ( (|Set#Card_8770| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@26 T@Ref) ) (!  (=> (not (select a@@18 x@@26)) (= (|Set#Card_8770| (|Set#UnionOne_8770| a@@18 x@@26)) (+ (|Set#Card_8770| a@@18) 1)))
 :qid |stdinbpl.247:18|
 :skolemid |33|
 :pattern ( (|Set#Card_8770| (|Set#UnionOne_8770| a@@18 x@@26)))
)))
(assert (forall ((o_20@@4 T@Ref) (f_17 T@Field_14261_14262) (Heap@@35 T@PolymorphicMapType_14188) ) (!  (=> (select (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@35) o_20@@4 $allocated) (select (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@35) (select (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| Heap@@35) o_20@@4 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_14188_8271_8272#PolymorphicMapType_14188| Heap@@35) o_20@@4 f_17))
)))
(assert (forall ((p@@1 T@Field_8585_37120) (v_1@@0 T@FrameType) (q T@Field_8585_37120) (w@@0 T@FrameType) (r@@2 T@Field_8585_37120) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14248_14248 p@@1 v_1@@0 q w@@0) (InsidePredicate_14248_14248 q w@@0 r@@2 u)) (InsidePredicate_14248_14248 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.207:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14248_14248 p@@1 v_1@@0 q w@@0) (InsidePredicate_14248_14248 q w@@0 r@@2 u))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.318:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_14188) (Mask@@28 T@PolymorphicMapType_14209) (x@@27 T@Ref) (y@@20 T@Ref) (z@@11 T@Ref) ) (!  (=> (and (state Heap@@36 Mask@@28) (< AssumeFunctionsAbove 2)) (= (fun4 Heap@@36 x@@27 y@@20 z@@11) (+ (+ (+ (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@36) x@@27 f_7) (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@36) y@@20 f_7)) (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@36) z@@11 f_7)) (fun1 Heap@@36 (|Set#Singleton_8770| x@@27) x@@27))))
 :qid |stdinbpl.829:15|
 :skolemid |121|
 :pattern ( (state Heap@@36 Mask@@28) (fun4 Heap@@36 x@@27 y@@20 z@@11))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_14188) (Mask@@29 T@PolymorphicMapType_14209) (x@@28 T@Ref) (y@@21 T@Ref) (z@@12 T@Ref) ) (!  (=> (and (state Heap@@37 Mask@@29) (< AssumeFunctionsAbove 0)) (= (fun5 Heap@@37 x@@28 y@@21 z@@12) (+ (+ (+ (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@37) x@@28 f_7) (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@37) y@@21 f_7)) (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@37) z@@12 f_7)) (fun1 Heap@@37 (|Set#UnionOne_8770| (|Set#Singleton_8770| y@@21) x@@28) x@@28))))
 :qid |stdinbpl.953:15|
 :skolemid |129|
 :pattern ( (state Heap@@37 Mask@@29) (fun5 Heap@@37 x@@28 y@@21 z@@12))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_14188) (Mask@@30 T@PolymorphicMapType_14209) (x@@29 T@Ref) (y@@22 T@Ref) (z@@13 T@Ref) ) (!  (=> (state Heap@@38 Mask@@30) (= (|fun4'| Heap@@38 x@@29 y@@22 z@@13) (|fun4#frame| (CombineFrames (FrameFragment_3591 (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@38) x@@29 f_7)) (CombineFrames (FrameFragment_3591 (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@38) y@@22 f_7)) (FrameFragment_3591 (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@38) z@@13 f_7)))) x@@29 y@@22 z@@13)))
 :qid |stdinbpl.836:15|
 :skolemid |122|
 :pattern ( (state Heap@@38 Mask@@30) (|fun4'| Heap@@38 x@@29 y@@22 z@@13))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_14188) (Mask@@31 T@PolymorphicMapType_14209) (x@@30 T@Ref) (y@@23 T@Ref) (z@@14 T@Ref) ) (!  (=> (state Heap@@39 Mask@@31) (= (|fun5'| Heap@@39 x@@30 y@@23 z@@14) (|fun5#frame| (CombineFrames (FrameFragment_3591 (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@39) x@@30 f_7)) (CombineFrames (FrameFragment_3591 (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@39) y@@23 f_7)) (FrameFragment_3591 (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@39) z@@14 f_7)))) x@@30 y@@23 z@@14)))
 :qid |stdinbpl.960:15|
 :skolemid |130|
 :pattern ( (state Heap@@39 Mask@@31) (|fun5'| Heap@@39 x@@30 y@@23 z@@14))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_14188) (Mask@@32 T@PolymorphicMapType_14209) (x@@31 T@Ref) (y@@24 T@Ref) (z@@15 T@Ref) ) (!  (=> (state Heap@@40 Mask@@32) (= (|fun6'| Heap@@40 x@@31 y@@24 z@@15) (|fun6#frame| (CombineFrames (FrameFragment_3591 (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@40) x@@31 f_7)) (CombineFrames (FrameFragment_3591 (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@40) y@@24 f_7)) (FrameFragment_3591 (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@40) z@@15 f_7)))) x@@31 y@@24 z@@15)))
 :qid |stdinbpl.1084:15|
 :skolemid |138|
 :pattern ( (state Heap@@40 Mask@@32) (|fun6'| Heap@@40 x@@31 y@@24 z@@15))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_8770| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.251:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_8770| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@32 () T@Ref)
(declare-fun neverTriggered5 (T@Ref) Bool)
(declare-fun Heap@@41 () T@PolymorphicMapType_14188)
(declare-fun QPMask@0 () T@PolymorphicMapType_14209)
(declare-fun Mask@2 () T@PolymorphicMapType_14209)
(declare-fun y@@25 () T@Ref)
(declare-fun z@@16 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_14209)
(declare-fun Mask@1 () T@PolymorphicMapType_14209)
(set-info :boogie-vc-id |fun4#definedness|)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (select (|Set#Singleton_8770| x@@32) x@@32)) (=> (select (|Set#Singleton_8770| x@@32) x@@32) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((r_1 T@Ref) (r_2 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1 r_2)) (select (|Set#Singleton_8770| x@@32) r_1)) (select (|Set#Singleton_8770| x@@32) r_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_1 r_2)))
 :qid |stdinbpl.903:21|
 :skolemid |123|
 :pattern ( (neverTriggered5 r_1) (neverTriggered5 r_2))
))) (=> (forall ((r_1@@0 T@Ref) (r_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1@@0 r_2@@0)) (select (|Set#Singleton_8770| x@@32) r_1@@0)) (select (|Set#Singleton_8770| x@@32) r_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_1@@0 r_2@@0)))
 :qid |stdinbpl.903:21|
 :skolemid |123|
 :pattern ( (neverTriggered5 r_1@@0) (neverTriggered5 r_2@@0))
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((r_1@@1 T@Ref) ) (!  (=> (select (|Set#Singleton_8770| x@@32) r_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| Mask@2) r_1@@1 f_7) NoPerm)))
 :qid |stdinbpl.910:21|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_14188_8585_3358#PolymorphicMapType_14188| Heap@@41) r_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| QPMask@0) r_1@@1 f_7))
 :pattern ( (select (|Set#Singleton_8770| x@@32) r_1@@1))
)))))))))
(let ((anon0_correct  (=> (and (and (and (and (state Heap@@41 ZeroMask) (not AssumePermUpperBound)) (and (select (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@41) x@@32 $allocated) (select (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@41) y@@25 $allocated))) (and (and (select (|PolymorphicMapType_14188_8268_53#PolymorphicMapType_14188| Heap@@41) z@@16 $allocated) (= AssumeFunctionsAbove 2)) (and (not (= x@@32 null)) (= Mask@0 (PolymorphicMapType_14209 (store (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| ZeroMask) x@@32 f_7 (+ (select (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| ZeroMask) x@@32 f_7) FullPerm)) (|PolymorphicMapType_14209_8585_53#PolymorphicMapType_14209| ZeroMask) (|PolymorphicMapType_14209_8585_14262#PolymorphicMapType_14209| ZeroMask) (|PolymorphicMapType_14209_8585_37120#PolymorphicMapType_14209| ZeroMask) (|PolymorphicMapType_14209_8585_41375#PolymorphicMapType_14209| ZeroMask)))))) (and (and (and (state Heap@@41 Mask@0) (not (= y@@25 null))) (and (= Mask@1 (PolymorphicMapType_14209 (store (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| Mask@0) y@@25 f_7 (+ (select (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| Mask@0) y@@25 f_7) FullPerm)) (|PolymorphicMapType_14209_8585_53#PolymorphicMapType_14209| Mask@0) (|PolymorphicMapType_14209_8585_14262#PolymorphicMapType_14209| Mask@0) (|PolymorphicMapType_14209_8585_37120#PolymorphicMapType_14209| Mask@0) (|PolymorphicMapType_14209_8585_41375#PolymorphicMapType_14209| Mask@0))) (state Heap@@41 Mask@1))) (and (and (not (= z@@16 null)) (= Mask@2 (PolymorphicMapType_14209 (store (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| Mask@1) z@@16 f_7 (+ (select (|PolymorphicMapType_14209_8585_3358#PolymorphicMapType_14209| Mask@1) z@@16 f_7) FullPerm)) (|PolymorphicMapType_14209_8585_53#PolymorphicMapType_14209| Mask@1) (|PolymorphicMapType_14209_8585_14262#PolymorphicMapType_14209| Mask@1) (|PolymorphicMapType_14209_8585_37120#PolymorphicMapType_14209| Mask@1) (|PolymorphicMapType_14209_8585_41375#PolymorphicMapType_14209| Mask@1)))) (and (state Heap@@41 Mask@2) (state Heap@@41 Mask@2))))) (and (=> (= (ControlFlow 0 6) (- 0 9)) (HasDirectPerm_8585_3358 Mask@2 x@@32 f_7)) (=> (HasDirectPerm_8585_3358 Mask@2 x@@32 f_7) (and (=> (= (ControlFlow 0 6) (- 0 8)) (HasDirectPerm_8585_3358 Mask@2 y@@25 f_7)) (=> (HasDirectPerm_8585_3358 Mask@2 y@@25 f_7) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_8585_3358 Mask@2 z@@16 f_7)) (=> (HasDirectPerm_8585_3358 Mask@2 z@@16 f_7) (and (=> (= (ControlFlow 0 6) 2) anon3_Then_correct) (=> (= (ControlFlow 0 6) 5) anon3_Else_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 6) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
