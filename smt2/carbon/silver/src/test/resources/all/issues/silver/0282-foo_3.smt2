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
(declare-sort T@Field_5668_53 0)
(declare-sort T@Field_5681_5682 0)
(declare-sort T@Field_5668_12813 0)
(declare-sort T@Field_5668_12680 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5629 0)) (((PolymorphicMapType_5629 (|PolymorphicMapType_5629_5668_53#PolymorphicMapType_5629| (Array T@Ref T@Field_5668_53 Real)) (|PolymorphicMapType_5629_5668_5682#PolymorphicMapType_5629| (Array T@Ref T@Field_5681_5682 Real)) (|PolymorphicMapType_5629_5668_12680#PolymorphicMapType_5629| (Array T@Ref T@Field_5668_12680 Real)) (|PolymorphicMapType_5629_5668_16374#PolymorphicMapType_5629| (Array T@Ref T@Field_5668_12813 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6157 0)) (((PolymorphicMapType_6157 (|PolymorphicMapType_6157_5668_53#PolymorphicMapType_6157| (Array T@Ref T@Field_5668_53 Bool)) (|PolymorphicMapType_6157_5668_5682#PolymorphicMapType_6157| (Array T@Ref T@Field_5681_5682 Bool)) (|PolymorphicMapType_6157_5668_12680#PolymorphicMapType_6157| (Array T@Ref T@Field_5668_12680 Bool)) (|PolymorphicMapType_6157_5668_13793#PolymorphicMapType_6157| (Array T@Ref T@Field_5668_12813 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5608 0)) (((PolymorphicMapType_5608 (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| (Array T@Ref T@Field_5668_53 Bool)) (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| (Array T@Ref T@Field_5681_5682 T@Ref)) (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| (Array T@Ref T@Field_5668_12813 T@PolymorphicMapType_6157)) (|PolymorphicMapType_5608_5668_12680#PolymorphicMapType_5608| (Array T@Ref T@Field_5668_12680 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_5608 T@PolymorphicMapType_5608) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5608 T@PolymorphicMapType_5608) Bool)
(declare-sort T@MultiSet_12109 0)
(declare-fun |MultiSet#Card_12109| (T@MultiSet_12109) Int)
(declare-fun |MultiSet#Difference_12109| (T@MultiSet_12109 T@MultiSet_12109) T@MultiSet_12109)
(declare-fun |MultiSet#Intersection_12109| (T@MultiSet_12109 T@MultiSet_12109) T@MultiSet_12109)
(declare-fun |MultiSet#Union_12109| (T@MultiSet_12109 T@MultiSet_12109) T@MultiSet_12109)
(declare-fun state (T@PolymorphicMapType_5608 T@PolymorphicMapType_5629) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5629) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6157)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |MultiSet#Select_12109| (T@MultiSet_12109 T@Ref) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5608 T@PolymorphicMapType_5608 T@PolymorphicMapType_5629) Bool)
(declare-fun IsPredicateField_5668_12771 (T@Field_5668_12680) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5668 (T@Field_5668_12680) T@Field_5668_12813)
(declare-fun HasDirectPerm_5668_12744 (T@PolymorphicMapType_5629 T@Ref T@Field_5668_12680) Bool)
(declare-fun IsWandField_5668_14320 (T@Field_5668_12680) Bool)
(declare-fun WandMaskField_5668 (T@Field_5668_12680) T@Field_5668_12813)
(declare-fun dummyHeap () T@PolymorphicMapType_5608)
(declare-fun ZeroMask () T@PolymorphicMapType_5629)
(declare-fun |MultiSet#UnionOne_3267| (T@MultiSet_12109 T@Ref) T@MultiSet_12109)
(declare-fun |MultiSet#Disjoint_12109| (T@MultiSet_12109 T@MultiSet_12109) Bool)
(declare-fun $allocated () T@Field_5668_53)
(declare-fun InsidePredicate_5668_5668 (T@Field_5668_12680 T@FrameType T@Field_5668_12680 T@FrameType) Bool)
(declare-fun |MultiSet#Singleton_3267| (T@Ref) T@MultiSet_12109)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5668_17283 (T@Field_5668_12813) Bool)
(declare-fun IsWandField_5668_17299 (T@Field_5668_12813) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5668_5682 (T@Field_5681_5682) Bool)
(declare-fun IsWandField_5668_5682 (T@Field_5681_5682) Bool)
(declare-fun IsPredicateField_5668_53 (T@Field_5668_53) Bool)
(declare-fun IsWandField_5668_53 (T@Field_5668_53) Bool)
(declare-fun HasDirectPerm_5668_17654 (T@PolymorphicMapType_5629 T@Ref T@Field_5668_12813) Bool)
(declare-fun HasDirectPerm_5668_5682 (T@PolymorphicMapType_5629 T@Ref T@Field_5681_5682) Bool)
(declare-fun HasDirectPerm_5668_53 (T@PolymorphicMapType_5629 T@Ref T@Field_5668_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5629 T@PolymorphicMapType_5629 T@PolymorphicMapType_5629) Bool)
(declare-fun |MultiSet#Equal_3267| (T@MultiSet_12109 T@MultiSet_12109) Bool)
(declare-fun |MultiSet#Empty_3562| () T@MultiSet_12109)
(declare-fun |MultiSet#Subset_12109| (T@MultiSet_12109 T@MultiSet_12109) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5608) (Heap1 T@PolymorphicMapType_5608) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((a T@MultiSet_12109) (b T@MultiSet_12109) ) (!  (and (= (+ (+ (|MultiSet#Card_12109| (|MultiSet#Difference_12109| a b)) (|MultiSet#Card_12109| (|MultiSet#Difference_12109| b a))) (* 2 (|MultiSet#Card_12109| (|MultiSet#Intersection_12109| a b)))) (|MultiSet#Card_12109| (|MultiSet#Union_12109| a b))) (= (|MultiSet#Card_12109| (|MultiSet#Difference_12109| a b)) (- (|MultiSet#Card_12109| a) (|MultiSet#Card_12109| (|MultiSet#Intersection_12109| a b)))))
 :qid |stdinbpl.342:18|
 :skolemid |74|
 :pattern ( (|MultiSet#Card_12109| (|MultiSet#Difference_12109| a b)))
)))
(assert (forall ((Heap T@PolymorphicMapType_5608) (Mask T@PolymorphicMapType_5629) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5608) (Heap1@@0 T@PolymorphicMapType_5608) (Heap2 T@PolymorphicMapType_5608) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5668_12813) ) (!  (not (select (|PolymorphicMapType_6157_5668_13793#PolymorphicMapType_6157| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6157_5668_13793#PolymorphicMapType_6157| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5668_12680) ) (!  (not (select (|PolymorphicMapType_6157_5668_12680#PolymorphicMapType_6157| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6157_5668_12680#PolymorphicMapType_6157| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5681_5682) ) (!  (not (select (|PolymorphicMapType_6157_5668_5682#PolymorphicMapType_6157| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6157_5668_5682#PolymorphicMapType_6157| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5668_53) ) (!  (not (select (|PolymorphicMapType_6157_5668_53#PolymorphicMapType_6157| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6157_5668_53#PolymorphicMapType_6157| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (or (= (|Math#min| a@@0 b@@0) a@@0) (= (|Math#min| a@@0 b@@0) b@@0))
 :qid |stdinbpl.273:15|
 :skolemid |53|
 :pattern ( (|Math#min| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@MultiSet_12109) (b@@1 T@MultiSet_12109) (y T@Ref) ) (!  (=> (<= (|MultiSet#Select_12109| a@@1 y) (|MultiSet#Select_12109| b@@1 y)) (= (|MultiSet#Select_12109| (|MultiSet#Difference_12109| a@@1 b@@1) y) 0))
 :qid |stdinbpl.340:18|
 :skolemid |73|
 :pattern ( (|MultiSet#Difference_12109| a@@1 b@@1) (|MultiSet#Select_12109| b@@1 y) (|MultiSet#Select_12109| a@@1 y))
)))
(assert (forall ((a@@2 T@MultiSet_12109) (b@@2 T@MultiSet_12109) ) (! (= (|MultiSet#Intersection_12109| (|MultiSet#Intersection_12109| a@@2 b@@2) b@@2) (|MultiSet#Intersection_12109| a@@2 b@@2))
 :qid |stdinbpl.331:18|
 :skolemid |70|
 :pattern ( (|MultiSet#Intersection_12109| (|MultiSet#Intersection_12109| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.276:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((a@@4 T@MultiSet_12109) (b@@3 T@MultiSet_12109) (o T@Ref) ) (! (= (|MultiSet#Select_12109| (|MultiSet#Intersection_12109| a@@4 b@@3) o) (|Math#min| (|MultiSet#Select_12109| a@@4 o) (|MultiSet#Select_12109| b@@3 o)))
 :qid |stdinbpl.327:18|
 :skolemid |69|
 :pattern ( (|MultiSet#Select_12109| (|MultiSet#Intersection_12109| a@@4 b@@3) o))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5608) (ExhaleHeap T@PolymorphicMapType_5608) (Mask@@0 T@PolymorphicMapType_5629) (pm_f T@Field_5668_12680) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5668_12744 Mask@@0 null pm_f) (IsPredicateField_5668_12771 pm_f)) (= (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@0) null (PredicateMaskField_5668 pm_f)) (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| ExhaleHeap) null (PredicateMaskField_5668 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5668_12771 pm_f) (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| ExhaleHeap) null (PredicateMaskField_5668 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5608) (ExhaleHeap@@0 T@PolymorphicMapType_5608) (Mask@@1 T@PolymorphicMapType_5629) (pm_f@@0 T@Field_5668_12680) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5668_12744 Mask@@1 null pm_f@@0) (IsWandField_5668_14320 pm_f@@0)) (= (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@1) null (WandMaskField_5668 pm_f@@0)) (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| ExhaleHeap@@0) null (WandMaskField_5668 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5668_14320 pm_f@@0) (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| ExhaleHeap@@0) null (WandMaskField_5668 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5608) (ExhaleHeap@@1 T@PolymorphicMapType_5608) (Mask@@2 T@PolymorphicMapType_5629) (pm_f@@1 T@Field_5668_12680) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5668_12744 Mask@@2 null pm_f@@1) (IsPredicateField_5668_12771 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_5668_53) ) (!  (=> (select (|PolymorphicMapType_6157_5668_53#PolymorphicMapType_6157| (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@2) null (PredicateMaskField_5668 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| Heap@@2) o2 f_2) (select (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_5681_5682) ) (!  (=> (select (|PolymorphicMapType_6157_5668_5682#PolymorphicMapType_6157| (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@2) null (PredicateMaskField_5668 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| Heap@@2) o2@@0 f_2@@0) (select (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_5668_12680) ) (!  (=> (select (|PolymorphicMapType_6157_5668_12680#PolymorphicMapType_6157| (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@2) null (PredicateMaskField_5668 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_5608_5668_12680#PolymorphicMapType_5608| Heap@@2) o2@@1 f_2@@1) (select (|PolymorphicMapType_5608_5668_12680#PolymorphicMapType_5608| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5608_5668_12680#PolymorphicMapType_5608| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_5668_12813) ) (!  (=> (select (|PolymorphicMapType_6157_5668_13793#PolymorphicMapType_6157| (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@2) null (PredicateMaskField_5668 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@2) o2@@2 f_2@@2) (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5668_12771 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5608) (ExhaleHeap@@2 T@PolymorphicMapType_5608) (Mask@@3 T@PolymorphicMapType_5629) (pm_f@@2 T@Field_5668_12680) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5668_12744 Mask@@3 null pm_f@@2) (IsWandField_5668_14320 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_5668_53) ) (!  (=> (select (|PolymorphicMapType_6157_5668_53#PolymorphicMapType_6157| (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@3) null (WandMaskField_5668 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| Heap@@3) o2@@3 f_2@@3) (select (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_5681_5682) ) (!  (=> (select (|PolymorphicMapType_6157_5668_5682#PolymorphicMapType_6157| (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@3) null (WandMaskField_5668 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| Heap@@3) o2@@4 f_2@@4) (select (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_5668_12680) ) (!  (=> (select (|PolymorphicMapType_6157_5668_12680#PolymorphicMapType_6157| (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@3) null (WandMaskField_5668 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_5608_5668_12680#PolymorphicMapType_5608| Heap@@3) o2@@5 f_2@@5) (select (|PolymorphicMapType_5608_5668_12680#PolymorphicMapType_5608| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5608_5668_12680#PolymorphicMapType_5608| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_5668_12813) ) (!  (=> (select (|PolymorphicMapType_6157_5668_13793#PolymorphicMapType_6157| (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@3) null (WandMaskField_5668 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@3) o2@@6 f_2@@6) (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_5668_14320 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((a@@5 T@MultiSet_12109) (x T@Ref) ) (! (= (|MultiSet#Card_12109| (|MultiSet#UnionOne_3267| a@@5 x)) (+ (|MultiSet#Card_12109| a@@5) 1))
 :qid |stdinbpl.313:18|
 :skolemid |65|
 :pattern ( (|MultiSet#Card_12109| (|MultiSet#UnionOne_3267| a@@5 x)))
 :pattern ( (|MultiSet#UnionOne_3267| a@@5 x) (|MultiSet#Card_12109| a@@5))
)))
(assert (forall ((a@@6 T@MultiSet_12109) (b@@4 T@MultiSet_12109) ) (! (= (|MultiSet#Disjoint_12109| a@@6 b@@4) (forall ((o@@0 T@Ref) ) (!  (or (= (|MultiSet#Select_12109| a@@6 o@@0) 0) (= (|MultiSet#Select_12109| b@@4 o@@0) 0))
 :qid |stdinbpl.363:39|
 :skolemid |80|
 :pattern ( (|MultiSet#Select_12109| a@@6 o@@0))
 :pattern ( (|MultiSet#Select_12109| b@@4 o@@0))
)))
 :qid |stdinbpl.362:18|
 :skolemid |81|
 :pattern ( (|MultiSet#Disjoint_12109| a@@6 b@@4))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5608) (ExhaleHeap@@3 T@PolymorphicMapType_5608) (Mask@@4 T@PolymorphicMapType_5629) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| Heap@@4) o_1 $allocated) (select (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_5668_12680) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5668_5668 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5668_5668 p v_1 p w))
)))
(assert (forall ((r T@Ref) ) (!  (and (= (|MultiSet#Card_12109| (|MultiSet#Singleton_3267| r)) 1) (= (|MultiSet#Select_12109| (|MultiSet#Singleton_3267| r) r) 1))
 :qid |stdinbpl.305:18|
 :skolemid |62|
 :pattern ( (|MultiSet#Singleton_3267| r))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5608) (ExhaleHeap@@4 T@PolymorphicMapType_5608) (Mask@@5 T@PolymorphicMapType_5629) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_5629) (o_2@@3 T@Ref) (f_4@@3 T@Field_5668_12813) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_5629_5668_16374#PolymorphicMapType_5629| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5668_17283 f_4@@3))) (not (IsWandField_5668_17299 f_4@@3))) (<= (select (|PolymorphicMapType_5629_5668_16374#PolymorphicMapType_5629| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_5629_5668_16374#PolymorphicMapType_5629| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_5629) (o_2@@4 T@Ref) (f_4@@4 T@Field_5668_12680) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_5629_5668_12680#PolymorphicMapType_5629| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5668_12771 f_4@@4))) (not (IsWandField_5668_14320 f_4@@4))) (<= (select (|PolymorphicMapType_5629_5668_12680#PolymorphicMapType_5629| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_5629_5668_12680#PolymorphicMapType_5629| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5629) (o_2@@5 T@Ref) (f_4@@5 T@Field_5681_5682) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5629_5668_5682#PolymorphicMapType_5629| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5668_5682 f_4@@5))) (not (IsWandField_5668_5682 f_4@@5))) (<= (select (|PolymorphicMapType_5629_5668_5682#PolymorphicMapType_5629| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5629_5668_5682#PolymorphicMapType_5629| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5629) (o_2@@6 T@Ref) (f_4@@6 T@Field_5668_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5629_5668_53#PolymorphicMapType_5629| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5668_53 f_4@@6))) (not (IsWandField_5668_53 f_4@@6))) (<= (select (|PolymorphicMapType_5629_5668_53#PolymorphicMapType_5629| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5629_5668_53#PolymorphicMapType_5629| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5629) (o_2@@7 T@Ref) (f_4@@7 T@Field_5668_12813) ) (! (= (HasDirectPerm_5668_17654 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_5629_5668_16374#PolymorphicMapType_5629| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5668_17654 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5629) (o_2@@8 T@Ref) (f_4@@8 T@Field_5668_12680) ) (! (= (HasDirectPerm_5668_12744 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_5629_5668_12680#PolymorphicMapType_5629| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5668_12744 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5629) (o_2@@9 T@Ref) (f_4@@9 T@Field_5681_5682) ) (! (= (HasDirectPerm_5668_5682 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5629_5668_5682#PolymorphicMapType_5629| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5668_5682 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5629) (o_2@@10 T@Ref) (f_4@@10 T@Field_5668_53) ) (! (= (HasDirectPerm_5668_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5629_5668_53#PolymorphicMapType_5629| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5668_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((a@@7 T@MultiSet_12109) (b@@5 T@MultiSet_12109) ) (! (= (|MultiSet#Card_12109| (|MultiSet#Union_12109| a@@7 b@@5)) (+ (|MultiSet#Card_12109| a@@7) (|MultiSet#Card_12109| b@@5)))
 :qid |stdinbpl.323:18|
 :skolemid |68|
 :pattern ( (|MultiSet#Card_12109| (|MultiSet#Union_12109| a@@7 b@@5)))
 :pattern ( (|MultiSet#Card_12109| a@@7) (|MultiSet#Union_12109| a@@7 b@@5))
 :pattern ( (|MultiSet#Card_12109| b@@5) (|MultiSet#Union_12109| a@@7 b@@5))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5608) (ExhaleHeap@@5 T@PolymorphicMapType_5608) (Mask@@14 T@PolymorphicMapType_5629) (o_1@@0 T@Ref) (f_2@@7 T@Field_5668_12813) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_5668_17654 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@6) o_1@@0 f_2@@7) (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5608) (ExhaleHeap@@6 T@PolymorphicMapType_5608) (Mask@@15 T@PolymorphicMapType_5629) (o_1@@1 T@Ref) (f_2@@8 T@Field_5668_12680) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_5668_12744 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_5608_5668_12680#PolymorphicMapType_5608| Heap@@7) o_1@@1 f_2@@8) (select (|PolymorphicMapType_5608_5668_12680#PolymorphicMapType_5608| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_5608_5668_12680#PolymorphicMapType_5608| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5608) (ExhaleHeap@@7 T@PolymorphicMapType_5608) (Mask@@16 T@PolymorphicMapType_5629) (o_1@@2 T@Ref) (f_2@@9 T@Field_5681_5682) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_5668_5682 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| Heap@@8) o_1@@2 f_2@@9) (select (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5608) (ExhaleHeap@@8 T@PolymorphicMapType_5608) (Mask@@17 T@PolymorphicMapType_5629) (o_1@@3 T@Ref) (f_2@@10 T@Field_5668_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_5668_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| Heap@@9) o_1@@3 f_2@@10) (select (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5668_12813) ) (! (= (select (|PolymorphicMapType_5629_5668_16374#PolymorphicMapType_5629| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5629_5668_16374#PolymorphicMapType_5629| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5668_12680) ) (! (= (select (|PolymorphicMapType_5629_5668_12680#PolymorphicMapType_5629| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5629_5668_12680#PolymorphicMapType_5629| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5681_5682) ) (! (= (select (|PolymorphicMapType_5629_5668_5682#PolymorphicMapType_5629| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5629_5668_5682#PolymorphicMapType_5629| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5668_53) ) (! (= (select (|PolymorphicMapType_5629_5668_53#PolymorphicMapType_5629| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5629_5668_53#PolymorphicMapType_5629| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5629) (SummandMask1 T@PolymorphicMapType_5629) (SummandMask2 T@PolymorphicMapType_5629) (o_2@@15 T@Ref) (f_4@@15 T@Field_5668_12813) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5629_5668_16374#PolymorphicMapType_5629| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_5629_5668_16374#PolymorphicMapType_5629| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_5629_5668_16374#PolymorphicMapType_5629| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5629_5668_16374#PolymorphicMapType_5629| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5629_5668_16374#PolymorphicMapType_5629| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5629_5668_16374#PolymorphicMapType_5629| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5629) (SummandMask1@@0 T@PolymorphicMapType_5629) (SummandMask2@@0 T@PolymorphicMapType_5629) (o_2@@16 T@Ref) (f_4@@16 T@Field_5668_12680) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5629_5668_12680#PolymorphicMapType_5629| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_5629_5668_12680#PolymorphicMapType_5629| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_5629_5668_12680#PolymorphicMapType_5629| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5629_5668_12680#PolymorphicMapType_5629| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5629_5668_12680#PolymorphicMapType_5629| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5629_5668_12680#PolymorphicMapType_5629| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5629) (SummandMask1@@1 T@PolymorphicMapType_5629) (SummandMask2@@1 T@PolymorphicMapType_5629) (o_2@@17 T@Ref) (f_4@@17 T@Field_5681_5682) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5629_5668_5682#PolymorphicMapType_5629| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_5629_5668_5682#PolymorphicMapType_5629| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_5629_5668_5682#PolymorphicMapType_5629| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5629_5668_5682#PolymorphicMapType_5629| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5629_5668_5682#PolymorphicMapType_5629| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5629_5668_5682#PolymorphicMapType_5629| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5629) (SummandMask1@@2 T@PolymorphicMapType_5629) (SummandMask2@@2 T@PolymorphicMapType_5629) (o_2@@18 T@Ref) (f_4@@18 T@Field_5668_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5629_5668_53#PolymorphicMapType_5629| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_5629_5668_53#PolymorphicMapType_5629| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_5629_5668_53#PolymorphicMapType_5629| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5629_5668_53#PolymorphicMapType_5629| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5629_5668_53#PolymorphicMapType_5629| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5629_5668_53#PolymorphicMapType_5629| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@8 T@MultiSet_12109) (b@@6 T@MultiSet_12109) ) (!  (=> (|MultiSet#Equal_3267| a@@8 b@@6) (= a@@8 b@@6))
 :qid |stdinbpl.358:17|
 :skolemid |79|
 :pattern ( (|MultiSet#Equal_3267| a@@8 b@@6))
)))
(assert (forall ((ms T@MultiSet_12109) (x@@0 T@Ref) ) (! (>= (|MultiSet#Select_12109| ms x@@0) 0)
 :qid |stdinbpl.289:18|
 :skolemid |56|
 :pattern ( (|MultiSet#Select_12109| ms x@@0))
)))
(assert (forall ((s T@MultiSet_12109) ) (! (<= 0 (|MultiSet#Card_12109| s))
 :qid |stdinbpl.292:18|
 :skolemid |57|
 :pattern ( (|MultiSet#Card_12109| s))
)))
(assert (forall ((o@@1 T@Ref) ) (! (= (|MultiSet#Select_12109| |MultiSet#Empty_3562| o@@1) 0)
 :qid |stdinbpl.297:18|
 :skolemid |58|
 :pattern ( (|MultiSet#Select_12109| |MultiSet#Empty_3562| o@@1))
)))
(assert (forall ((a@@9 T@MultiSet_12109) (x@@1 T@Ref) ) (!  (and (> (|MultiSet#Select_12109| (|MultiSet#UnionOne_3267| a@@9 x@@1) x@@1) 0) (> (|MultiSet#Card_12109| (|MultiSet#UnionOne_3267| a@@9 x@@1)) 0))
 :qid |stdinbpl.316:18|
 :skolemid |66|
 :pattern ( (|MultiSet#UnionOne_3267| a@@9 x@@1))
)))
(assert (forall ((a@@10 T@MultiSet_12109) (b@@7 T@MultiSet_12109) ) (! (= (|MultiSet#Intersection_12109| a@@10 (|MultiSet#Intersection_12109| a@@10 b@@7)) (|MultiSet#Intersection_12109| a@@10 b@@7))
 :qid |stdinbpl.333:18|
 :skolemid |71|
 :pattern ( (|MultiSet#Intersection_12109| a@@10 (|MultiSet#Intersection_12109| a@@10 b@@7)))
)))
(assert (forall ((s@@0 T@MultiSet_12109) ) (!  (and (= (= (|MultiSet#Card_12109| s@@0) 0) (= s@@0 |MultiSet#Empty_3562|)) (=> (not (= (|MultiSet#Card_12109| s@@0) 0)) (exists ((x@@2 T@Ref) ) (! (< 0 (|MultiSet#Select_12109| s@@0 x@@2))
 :qid |stdinbpl.300:38|
 :skolemid |59|
))))
 :qid |stdinbpl.298:18|
 :skolemid |60|
 :pattern ( (|MultiSet#Card_12109| s@@0))
)))
(assert (forall ((r@@0 T@Ref) (o@@2 T@Ref) ) (!  (and (= (= (|MultiSet#Select_12109| (|MultiSet#Singleton_3267| r@@0) o@@2) 1) (= r@@0 o@@2)) (= (= (|MultiSet#Select_12109| (|MultiSet#Singleton_3267| r@@0) o@@2) 0) (not (= r@@0 o@@2))))
 :qid |stdinbpl.303:18|
 :skolemid |61|
 :pattern ( (|MultiSet#Select_12109| (|MultiSet#Singleton_3267| r@@0) o@@2))
)))
(assert (forall ((a@@11 T@MultiSet_12109) (b@@8 T@MultiSet_12109) (o@@3 T@Ref) ) (! (= (|MultiSet#Select_12109| (|MultiSet#Union_12109| a@@11 b@@8) o@@3) (+ (|MultiSet#Select_12109| a@@11 o@@3) (|MultiSet#Select_12109| b@@8 o@@3)))
 :qid |stdinbpl.321:18|
 :skolemid |67|
 :pattern ( (|MultiSet#Select_12109| (|MultiSet#Union_12109| a@@11 b@@8) o@@3))
 :pattern ( (|MultiSet#Union_12109| a@@11 b@@8) (|MultiSet#Select_12109| a@@11 o@@3) (|MultiSet#Select_12109| b@@8 o@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5608) (o@@4 T@Ref) (f_3 T@Field_5668_12680) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_5608 (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| Heap@@10) (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| Heap@@10) (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@10) (store (|PolymorphicMapType_5608_5668_12680#PolymorphicMapType_5608| Heap@@10) o@@4 f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5608 (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| Heap@@10) (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| Heap@@10) (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@10) (store (|PolymorphicMapType_5608_5668_12680#PolymorphicMapType_5608| Heap@@10) o@@4 f_3 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5608) (o@@5 T@Ref) (f_3@@0 T@Field_5668_12813) (v@@0 T@PolymorphicMapType_6157) ) (! (succHeap Heap@@11 (PolymorphicMapType_5608 (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| Heap@@11) (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| Heap@@11) (store (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@11) o@@5 f_3@@0 v@@0) (|PolymorphicMapType_5608_5668_12680#PolymorphicMapType_5608| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5608 (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| Heap@@11) (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| Heap@@11) (store (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@11) o@@5 f_3@@0 v@@0) (|PolymorphicMapType_5608_5668_12680#PolymorphicMapType_5608| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5608) (o@@6 T@Ref) (f_3@@1 T@Field_5681_5682) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_5608 (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| Heap@@12) (store (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| Heap@@12) o@@6 f_3@@1 v@@1) (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@12) (|PolymorphicMapType_5608_5668_12680#PolymorphicMapType_5608| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5608 (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| Heap@@12) (store (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| Heap@@12) o@@6 f_3@@1 v@@1) (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@12) (|PolymorphicMapType_5608_5668_12680#PolymorphicMapType_5608| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5608) (o@@7 T@Ref) (f_3@@2 T@Field_5668_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_5608 (store (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| Heap@@13) o@@7 f_3@@2 v@@2) (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| Heap@@13) (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@13) (|PolymorphicMapType_5608_5668_12680#PolymorphicMapType_5608| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5608 (store (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| Heap@@13) o@@7 f_3@@2 v@@2) (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| Heap@@13) (|PolymorphicMapType_5608_5668_12857#PolymorphicMapType_5608| Heap@@13) (|PolymorphicMapType_5608_5668_12680#PolymorphicMapType_5608| Heap@@13)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (= (|MultiSet#Singleton_3267| r@@1) (|MultiSet#UnionOne_3267| |MultiSet#Empty_3562| r@@1))
 :qid |stdinbpl.306:18|
 :skolemid |63|
 :pattern ( (|MultiSet#Singleton_3267| r@@1))
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
(assert (forall ((a@@14 T@MultiSet_12109) (b@@11 T@MultiSet_12109) (o@@8 T@Ref) ) (! (= (|MultiSet#Select_12109| (|MultiSet#Difference_12109| a@@14 b@@11) o@@8) (|Math#clip| (- (|MultiSet#Select_12109| a@@14 o@@8) (|MultiSet#Select_12109| b@@11 o@@8))))
 :qid |stdinbpl.338:18|
 :skolemid |72|
 :pattern ( (|MultiSet#Select_12109| (|MultiSet#Difference_12109| a@@14 b@@11) o@@8))
)))
(assert (forall ((o@@9 T@Ref) (f T@Field_5681_5682) (Heap@@14 T@PolymorphicMapType_5608) ) (!  (=> (select (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| Heap@@14) o@@9 $allocated) (select (|PolymorphicMapType_5608_3269_53#PolymorphicMapType_5608| Heap@@14) (select (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| Heap@@14) o@@9 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5608_3272_3273#PolymorphicMapType_5608| Heap@@14) o@@9 f))
)))
(assert (forall ((p@@1 T@Field_5668_12680) (v_1@@0 T@FrameType) (q T@Field_5668_12680) (w@@0 T@FrameType) (r@@2 T@Field_5668_12680) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5668_5668 p@@1 v_1@@0 q w@@0) (InsidePredicate_5668_5668 q w@@0 r@@2 u)) (InsidePredicate_5668_5668 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5668_5668 p@@1 v_1@@0 q w@@0) (InsidePredicate_5668_5668 q w@@0 r@@2 u))
)))
(assert (forall ((a@@15 Int) ) (!  (=> (< a@@15 0) (= (|Math#clip| a@@15) 0))
 :qid |stdinbpl.277:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@15))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@16 T@MultiSet_12109) (x@@3 T@Ref) (o@@10 T@Ref) ) (! (= (|MultiSet#Select_12109| (|MultiSet#UnionOne_3267| a@@16 x@@3) o@@10) (ite (= x@@3 o@@10) (+ (|MultiSet#Select_12109| a@@16 o@@10) 1) (|MultiSet#Select_12109| a@@16 o@@10)))
 :qid |stdinbpl.310:18|
 :skolemid |64|
 :pattern ( (|MultiSet#Select_12109| (|MultiSet#UnionOne_3267| a@@16 x@@3) o@@10))
 :pattern ( (|MultiSet#UnionOne_3267| a@@16 x@@3) (|MultiSet#Select_12109| a@@16 o@@10))
)))
(assert (forall ((a@@17 T@MultiSet_12109) (b@@12 T@MultiSet_12109) ) (! (= (|MultiSet#Equal_3267| a@@17 b@@12) (forall ((o@@11 T@Ref) ) (! (= (|MultiSet#Select_12109| a@@17 o@@11) (|MultiSet#Select_12109| b@@12 o@@11))
 :qid |stdinbpl.356:36|
 :skolemid |77|
 :pattern ( (|MultiSet#Select_12109| a@@17 o@@11))
 :pattern ( (|MultiSet#Select_12109| b@@12 o@@11))
)))
 :qid |stdinbpl.355:17|
 :skolemid |78|
 :pattern ( (|MultiSet#Equal_3267| a@@17 b@@12))
)))
(assert (forall ((a@@18 T@MultiSet_12109) (b@@13 T@MultiSet_12109) ) (! (= (|MultiSet#Subset_12109| a@@18 b@@13) (forall ((o@@12 T@Ref) ) (! (<= (|MultiSet#Select_12109| a@@18 o@@12) (|MultiSet#Select_12109| b@@13 o@@12))
 :qid |stdinbpl.352:37|
 :skolemid |75|
 :pattern ( (|MultiSet#Select_12109| a@@18 o@@12))
 :pattern ( (|MultiSet#Select_12109| b@@13 o@@12))
)))
 :qid |stdinbpl.351:17|
 :skolemid |76|
 :pattern ( (|MultiSet#Subset_12109| a@@18 b@@13))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@15 () T@PolymorphicMapType_5608)
(set-info :boogie-vc-id foo_3)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (state Heap@@15 ZeroMask) (=> (and AssumePermUpperBound (= (ControlFlow 0 2) (- 0 1))) (|MultiSet#Equal_3267| (|MultiSet#Singleton_3267| null) |MultiSet#Empty_3562|)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
