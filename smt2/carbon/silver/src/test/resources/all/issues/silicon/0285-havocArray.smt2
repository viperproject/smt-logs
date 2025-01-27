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
(declare-sort T@Field_11636_53 0)
(declare-sort T@Field_11649_11650 0)
(declare-sort T@Field_17929_3474 0)
(declare-sort T@Field_7810_30717 0)
(declare-sort T@Field_7810_30584 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_11597 0)) (((PolymorphicMapType_11597 (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| (Array T@Ref T@Field_17929_3474 Real)) (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| (Array T@Ref T@Field_11636_53 Real)) (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| (Array T@Ref T@Field_11649_11650 Real)) (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| (Array T@Ref T@Field_7810_30584 Real)) (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| (Array T@Ref T@Field_7810_30717 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12125 0)) (((PolymorphicMapType_12125 (|PolymorphicMapType_12125_11636_53#PolymorphicMapType_12125| (Array T@Ref T@Field_11636_53 Bool)) (|PolymorphicMapType_12125_11636_11650#PolymorphicMapType_12125| (Array T@Ref T@Field_11649_11650 Bool)) (|PolymorphicMapType_12125_11636_3474#PolymorphicMapType_12125| (Array T@Ref T@Field_17929_3474 Bool)) (|PolymorphicMapType_12125_11636_30584#PolymorphicMapType_12125| (Array T@Ref T@Field_7810_30584 Bool)) (|PolymorphicMapType_12125_11636_31895#PolymorphicMapType_12125| (Array T@Ref T@Field_7810_30717 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11576 0)) (((PolymorphicMapType_11576 (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| (Array T@Ref T@Field_11636_53 Bool)) (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| (Array T@Ref T@Field_11649_11650 T@Ref)) (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| (Array T@Ref T@Field_17929_3474 Int)) (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| (Array T@Ref T@Field_7810_30717 T@PolymorphicMapType_12125)) (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| (Array T@Ref T@Field_7810_30584 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_11636_53)
(declare-fun val () T@Field_17929_3474)
(declare-fun succHeap (T@PolymorphicMapType_11576 T@PolymorphicMapType_11576) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11576 T@PolymorphicMapType_11576) Bool)
(declare-fun state (T@PolymorphicMapType_11576 T@PolymorphicMapType_11597) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11597) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12125)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_3585| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Intersection_3585| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Singleton_3640| (Int) (Array Int Bool))
(declare-fun |Set#Card_3585| ((Array Int Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11576 T@PolymorphicMapType_11576 T@PolymorphicMapType_11597) Bool)
(declare-fun IsPredicateField_7810_30675 (T@Field_7810_30584) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7810 (T@Field_7810_30584) T@Field_7810_30717)
(declare-fun HasDirectPerm_7810_30648 (T@PolymorphicMapType_11597 T@Ref T@Field_7810_30584) Bool)
(declare-fun IsWandField_7810_32422 (T@Field_7810_30584) Bool)
(declare-fun WandMaskField_7810 (T@Field_7810_30584) T@Field_7810_30717)
(declare-fun dummyHeap () T@PolymorphicMapType_11576)
(declare-fun ZeroMask () T@PolymorphicMapType_11597)
(declare-fun InsidePredicate_11636_11636 (T@Field_7810_30584 T@FrameType T@Field_7810_30584 T@FrameType) Bool)
(declare-fun IsPredicateField_7810_3474 (T@Field_17929_3474) Bool)
(declare-fun IsWandField_7810_3474 (T@Field_17929_3474) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7810_35968 (T@Field_7810_30717) Bool)
(declare-fun IsWandField_7810_35984 (T@Field_7810_30717) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7810_11650 (T@Field_11649_11650) Bool)
(declare-fun IsWandField_7810_11650 (T@Field_11649_11650) Bool)
(declare-fun IsPredicateField_7810_53 (T@Field_11636_53) Bool)
(declare-fun IsWandField_7810_53 (T@Field_11636_53) Bool)
(declare-fun HasDirectPerm_7810_36422 (T@PolymorphicMapType_11597 T@Ref T@Field_7810_30717) Bool)
(declare-fun HasDirectPerm_7810_11650 (T@PolymorphicMapType_11597 T@Ref T@Field_11649_11650) Bool)
(declare-fun HasDirectPerm_7810_53 (T@PolymorphicMapType_11597 T@Ref T@Field_11636_53) Bool)
(declare-fun HasDirectPerm_7810_3474 (T@PolymorphicMapType_11597 T@Ref T@Field_17929_3474) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11597 T@PolymorphicMapType_11597 T@PolymorphicMapType_11597) Bool)
(declare-fun |Set#Difference_3585| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#UnionOne_3585| ((Array Int Bool) Int) (Array Int Bool))
(declare-sort T@ArrayDomainType 0)
(declare-fun len (T@ArrayDomainType) Int)
(declare-fun |Set#Empty_3585| () (Array Int Bool))
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun first_1 (T@Ref) T@ArrayDomainType)
(declare-fun second_1 (T@Ref) Int)
(declare-fun |Set#Subset_3621| ((Array Int Bool) (Array Int Bool)) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_11576) (Heap1 T@PolymorphicMapType_11576) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11576) (Mask T@PolymorphicMapType_11597) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11576) (Heap1@@0 T@PolymorphicMapType_11576) (Heap2 T@PolymorphicMapType_11576) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7810_30717) ) (!  (not (select (|PolymorphicMapType_12125_11636_31895#PolymorphicMapType_12125| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12125_11636_31895#PolymorphicMapType_12125| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7810_30584) ) (!  (not (select (|PolymorphicMapType_12125_11636_30584#PolymorphicMapType_12125| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12125_11636_30584#PolymorphicMapType_12125| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_17929_3474) ) (!  (not (select (|PolymorphicMapType_12125_11636_3474#PolymorphicMapType_12125| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12125_11636_3474#PolymorphicMapType_12125| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11649_11650) ) (!  (not (select (|PolymorphicMapType_12125_11636_11650#PolymorphicMapType_12125| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12125_11636_11650#PolymorphicMapType_12125| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11636_53) ) (!  (not (select (|PolymorphicMapType_12125_11636_53#PolymorphicMapType_12125| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12125_11636_53#PolymorphicMapType_12125| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.309:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array Int Bool)) (b@@0 (Array Int Bool)) ) (! (= (|Set#Union_3585| (|Set#Union_3585| a@@0 b@@0) b@@0) (|Set#Union_3585| a@@0 b@@0))
 :qid |stdinbpl.261:18|
 :skolemid |38|
 :pattern ( (|Set#Union_3585| (|Set#Union_3585| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array Int Bool)) (b@@1 (Array Int Bool)) ) (! (= (|Set#Intersection_3585| (|Set#Intersection_3585| a@@1 b@@1) b@@1) (|Set#Intersection_3585| a@@1 b@@1))
 :qid |stdinbpl.265:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_3585| (|Set#Intersection_3585| a@@1 b@@1) b@@1))
)))
(assert (forall ((r Int) (o Int) ) (! (= (select (|Set#Singleton_3640| r) o) (= r o))
 :qid |stdinbpl.230:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_3640| r) o))
)))
(assert (forall ((a@@2 (Array Int Bool)) (b@@2 (Array Int Bool)) ) (! (= (+ (|Set#Card_3585| (|Set#Union_3585| a@@2 b@@2)) (|Set#Card_3585| (|Set#Intersection_3585| a@@2 b@@2))) (+ (|Set#Card_3585| a@@2) (|Set#Card_3585| b@@2)))
 :qid |stdinbpl.269:18|
 :skolemid |42|
 :pattern ( (|Set#Card_3585| (|Set#Union_3585| a@@2 b@@2)))
 :pattern ( (|Set#Card_3585| (|Set#Intersection_3585| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.312:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11576) (ExhaleHeap T@PolymorphicMapType_11576) (Mask@@0 T@PolymorphicMapType_11597) (pm_f_18 T@Field_7810_30584) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7810_30648 Mask@@0 null pm_f_18) (IsPredicateField_7810_30675 pm_f_18)) (= (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@0) null (PredicateMaskField_7810 pm_f_18)) (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap) null (PredicateMaskField_7810 pm_f_18)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_7810_30675 pm_f_18) (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap) null (PredicateMaskField_7810 pm_f_18)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11576) (ExhaleHeap@@0 T@PolymorphicMapType_11576) (Mask@@1 T@PolymorphicMapType_11597) (pm_f_18@@0 T@Field_7810_30584) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7810_30648 Mask@@1 null pm_f_18@@0) (IsWandField_7810_32422 pm_f_18@@0)) (= (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@1) null (WandMaskField_7810 pm_f_18@@0)) (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap@@0) null (WandMaskField_7810 pm_f_18@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_7810_32422 pm_f_18@@0) (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap@@0) null (WandMaskField_7810 pm_f_18@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11576) (ExhaleHeap@@1 T@PolymorphicMapType_11576) (Mask@@2 T@PolymorphicMapType_11597) (o_39 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@2) o_39 $allocated) (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| ExhaleHeap@@1) o_39 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| ExhaleHeap@@1) o_39 $allocated))
)))
(assert (forall ((p T@Field_7810_30584) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11636_11636 p v_1 p w))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11636_11636 p v_1 p w))
)))
(assert  (not (IsPredicateField_7810_3474 val)))
(assert  (not (IsWandField_7810_3474 val)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11576) (ExhaleHeap@@2 T@PolymorphicMapType_11576) (Mask@@3 T@PolymorphicMapType_11597) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_11597) (o_2@@4 T@Ref) (f_4@@4 T@Field_7810_30717) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_7810_35968 f_4@@4))) (not (IsWandField_7810_35984 f_4@@4))) (<= (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_11597) (o_2@@5 T@Ref) (f_4@@5 T@Field_7810_30584) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_7810_30675 f_4@@5))) (not (IsWandField_7810_32422 f_4@@5))) (<= (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_11597) (o_2@@6 T@Ref) (f_4@@6 T@Field_11649_11650) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_7810_11650 f_4@@6))) (not (IsWandField_7810_11650 f_4@@6))) (<= (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_11597) (o_2@@7 T@Ref) (f_4@@7 T@Field_11636_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_7810_53 f_4@@7))) (not (IsWandField_7810_53 f_4@@7))) (<= (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_11597) (o_2@@8 T@Ref) (f_4@@8 T@Field_17929_3474) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7810_3474 f_4@@8))) (not (IsWandField_7810_3474 f_4@@8))) (<= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_11597) (o_2@@9 T@Ref) (f_4@@9 T@Field_7810_30717) ) (! (= (HasDirectPerm_7810_36422 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7810_36422 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11597) (o_2@@10 T@Ref) (f_4@@10 T@Field_7810_30584) ) (! (= (HasDirectPerm_7810_30648 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7810_30648 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11597) (o_2@@11 T@Ref) (f_4@@11 T@Field_11649_11650) ) (! (= (HasDirectPerm_7810_11650 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7810_11650 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11597) (o_2@@12 T@Ref) (f_4@@12 T@Field_11636_53) ) (! (= (HasDirectPerm_7810_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7810_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11597) (o_2@@13 T@Ref) (f_4@@13 T@Field_17929_3474) ) (! (= (HasDirectPerm_7810_3474 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7810_3474 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11576) (ExhaleHeap@@3 T@PolymorphicMapType_11576) (Mask@@14 T@PolymorphicMapType_11597) (pm_f_18@@1 T@Field_7810_30584) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_7810_30648 Mask@@14 null pm_f_18@@1) (IsPredicateField_7810_30675 pm_f_18@@1)) (and (and (and (and (forall ((o2_18 T@Ref) (f_21 T@Field_11636_53) ) (!  (=> (select (|PolymorphicMapType_12125_11636_53#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@4) null (PredicateMaskField_7810 pm_f_18@@1))) o2_18 f_21) (= (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@4) o2_18 f_21) (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| ExhaleHeap@@3) o2_18 f_21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| ExhaleHeap@@3) o2_18 f_21))
)) (forall ((o2_18@@0 T@Ref) (f_21@@0 T@Field_11649_11650) ) (!  (=> (select (|PolymorphicMapType_12125_11636_11650#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@4) null (PredicateMaskField_7810 pm_f_18@@1))) o2_18@@0 f_21@@0) (= (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@4) o2_18@@0 f_21@@0) (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| ExhaleHeap@@3) o2_18@@0 f_21@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| ExhaleHeap@@3) o2_18@@0 f_21@@0))
))) (forall ((o2_18@@1 T@Ref) (f_21@@1 T@Field_17929_3474) ) (!  (=> (select (|PolymorphicMapType_12125_11636_3474#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@4) null (PredicateMaskField_7810 pm_f_18@@1))) o2_18@@1 f_21@@1) (= (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@4) o2_18@@1 f_21@@1) (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| ExhaleHeap@@3) o2_18@@1 f_21@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| ExhaleHeap@@3) o2_18@@1 f_21@@1))
))) (forall ((o2_18@@2 T@Ref) (f_21@@2 T@Field_7810_30584) ) (!  (=> (select (|PolymorphicMapType_12125_11636_30584#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@4) null (PredicateMaskField_7810 pm_f_18@@1))) o2_18@@2 f_21@@2) (= (select (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@4) o2_18@@2 f_21@@2) (select (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| ExhaleHeap@@3) o2_18@@2 f_21@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| ExhaleHeap@@3) o2_18@@2 f_21@@2))
))) (forall ((o2_18@@3 T@Ref) (f_21@@3 T@Field_7810_30717) ) (!  (=> (select (|PolymorphicMapType_12125_11636_31895#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@4) null (PredicateMaskField_7810 pm_f_18@@1))) o2_18@@3 f_21@@3) (= (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@4) o2_18@@3 f_21@@3) (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap@@3) o2_18@@3 f_21@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap@@3) o2_18@@3 f_21@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_7810_30675 pm_f_18@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11576) (ExhaleHeap@@4 T@PolymorphicMapType_11576) (Mask@@15 T@PolymorphicMapType_11597) (pm_f_18@@2 T@Field_7810_30584) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_7810_30648 Mask@@15 null pm_f_18@@2) (IsWandField_7810_32422 pm_f_18@@2)) (and (and (and (and (forall ((o2_18@@4 T@Ref) (f_21@@4 T@Field_11636_53) ) (!  (=> (select (|PolymorphicMapType_12125_11636_53#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@5) null (WandMaskField_7810 pm_f_18@@2))) o2_18@@4 f_21@@4) (= (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@5) o2_18@@4 f_21@@4) (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| ExhaleHeap@@4) o2_18@@4 f_21@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| ExhaleHeap@@4) o2_18@@4 f_21@@4))
)) (forall ((o2_18@@5 T@Ref) (f_21@@5 T@Field_11649_11650) ) (!  (=> (select (|PolymorphicMapType_12125_11636_11650#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@5) null (WandMaskField_7810 pm_f_18@@2))) o2_18@@5 f_21@@5) (= (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@5) o2_18@@5 f_21@@5) (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| ExhaleHeap@@4) o2_18@@5 f_21@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| ExhaleHeap@@4) o2_18@@5 f_21@@5))
))) (forall ((o2_18@@6 T@Ref) (f_21@@6 T@Field_17929_3474) ) (!  (=> (select (|PolymorphicMapType_12125_11636_3474#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@5) null (WandMaskField_7810 pm_f_18@@2))) o2_18@@6 f_21@@6) (= (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@5) o2_18@@6 f_21@@6) (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| ExhaleHeap@@4) o2_18@@6 f_21@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| ExhaleHeap@@4) o2_18@@6 f_21@@6))
))) (forall ((o2_18@@7 T@Ref) (f_21@@7 T@Field_7810_30584) ) (!  (=> (select (|PolymorphicMapType_12125_11636_30584#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@5) null (WandMaskField_7810 pm_f_18@@2))) o2_18@@7 f_21@@7) (= (select (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@5) o2_18@@7 f_21@@7) (select (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| ExhaleHeap@@4) o2_18@@7 f_21@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| ExhaleHeap@@4) o2_18@@7 f_21@@7))
))) (forall ((o2_18@@8 T@Ref) (f_21@@8 T@Field_7810_30717) ) (!  (=> (select (|PolymorphicMapType_12125_11636_31895#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@5) null (WandMaskField_7810 pm_f_18@@2))) o2_18@@8 f_21@@8) (= (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@5) o2_18@@8 f_21@@8) (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap@@4) o2_18@@8 f_21@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap@@4) o2_18@@8 f_21@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_7810_32422 pm_f_18@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.195:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11576) (ExhaleHeap@@5 T@PolymorphicMapType_11576) (Mask@@16 T@PolymorphicMapType_11597) (o_39@@0 T@Ref) (f_21@@9 T@Field_7810_30717) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_7810_36422 Mask@@16 o_39@@0 f_21@@9) (= (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@6) o_39@@0 f_21@@9) (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap@@5) o_39@@0 f_21@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap@@5) o_39@@0 f_21@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11576) (ExhaleHeap@@6 T@PolymorphicMapType_11576) (Mask@@17 T@PolymorphicMapType_11597) (o_39@@1 T@Ref) (f_21@@10 T@Field_7810_30584) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_7810_30648 Mask@@17 o_39@@1 f_21@@10) (= (select (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@7) o_39@@1 f_21@@10) (select (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| ExhaleHeap@@6) o_39@@1 f_21@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| ExhaleHeap@@6) o_39@@1 f_21@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11576) (ExhaleHeap@@7 T@PolymorphicMapType_11576) (Mask@@18 T@PolymorphicMapType_11597) (o_39@@2 T@Ref) (f_21@@11 T@Field_11649_11650) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_7810_11650 Mask@@18 o_39@@2 f_21@@11) (= (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@8) o_39@@2 f_21@@11) (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| ExhaleHeap@@7) o_39@@2 f_21@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| ExhaleHeap@@7) o_39@@2 f_21@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11576) (ExhaleHeap@@8 T@PolymorphicMapType_11576) (Mask@@19 T@PolymorphicMapType_11597) (o_39@@3 T@Ref) (f_21@@12 T@Field_11636_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_7810_53 Mask@@19 o_39@@3 f_21@@12) (= (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@9) o_39@@3 f_21@@12) (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| ExhaleHeap@@8) o_39@@3 f_21@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| ExhaleHeap@@8) o_39@@3 f_21@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11576) (ExhaleHeap@@9 T@PolymorphicMapType_11576) (Mask@@20 T@PolymorphicMapType_11597) (o_39@@4 T@Ref) (f_21@@13 T@Field_17929_3474) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_7810_3474 Mask@@20 o_39@@4 f_21@@13) (= (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@10) o_39@@4 f_21@@13) (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| ExhaleHeap@@9) o_39@@4 f_21@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| ExhaleHeap@@9) o_39@@4 f_21@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7810_30717) ) (! (= (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7810_30584) ) (! (= (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_11649_11650) ) (! (= (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_11636_53) ) (! (= (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_17929_3474) ) (! (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11597) (SummandMask1 T@PolymorphicMapType_11597) (SummandMask2 T@PolymorphicMapType_11597) (o_2@@19 T@Ref) (f_4@@19 T@Field_7810_30717) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11597) (SummandMask1@@0 T@PolymorphicMapType_11597) (SummandMask2@@0 T@PolymorphicMapType_11597) (o_2@@20 T@Ref) (f_4@@20 T@Field_7810_30584) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11597) (SummandMask1@@1 T@PolymorphicMapType_11597) (SummandMask2@@1 T@PolymorphicMapType_11597) (o_2@@21 T@Ref) (f_4@@21 T@Field_11649_11650) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11597) (SummandMask1@@2 T@PolymorphicMapType_11597) (SummandMask2@@2 T@PolymorphicMapType_11597) (o_2@@22 T@Ref) (f_4@@22 T@Field_11636_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11597) (SummandMask1@@3 T@PolymorphicMapType_11597) (SummandMask2@@3 T@PolymorphicMapType_11597) (o_2@@23 T@Ref) (f_4@@23 T@Field_17929_3474) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array Int Bool)) (b@@3 (Array Int Bool)) (o@@0 Int) ) (! (= (select (|Set#Intersection_3585| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.258:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_3585| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_3585| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_3585| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array Int Bool)) (b@@4 (Array Int Bool)) (o@@1 Int) ) (! (= (select (|Set#Difference_3585| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.273:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_3585| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_3585| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array Int Bool)) (x Int) (y Int) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_3585| a@@6 x) y))
 :qid |stdinbpl.238:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_3585| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array Int Bool)) (b@@5 (Array Int Bool)) (y@@0 Int) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_3585| a@@7 b@@5) y@@0))
 :qid |stdinbpl.248:18|
 :skolemid |35|
 :pattern ( (|Set#Union_3585| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array Int Bool)) (b@@6 (Array Int Bool)) (y@@1 Int) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_3585| a@@8 b@@6) y@@1))
 :qid |stdinbpl.250:18|
 :skolemid |36|
 :pattern ( (|Set#Union_3585| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array Int Bool)) (x@@0 Int) (o@@2 Int) ) (! (= (select (|Set#UnionOne_3585| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.234:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_3585| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array Int Bool)) (b@@7 (Array Int Bool)) (y@@2 Int) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_3585| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.275:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_3585| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a_2 T@ArrayDomainType) ) (! (>= (len a_2) 0)
 :qid |stdinbpl.429:15|
 :skolemid |83|
 :pattern ( (len a_2))
)))
(assert (forall ((a@@11 (Array Int Bool)) (b@@8 (Array Int Bool)) ) (!  (and (= (+ (+ (|Set#Card_3585| (|Set#Difference_3585| a@@11 b@@8)) (|Set#Card_3585| (|Set#Difference_3585| b@@8 a@@11))) (|Set#Card_3585| (|Set#Intersection_3585| a@@11 b@@8))) (|Set#Card_3585| (|Set#Union_3585| a@@11 b@@8))) (= (|Set#Card_3585| (|Set#Difference_3585| a@@11 b@@8)) (- (|Set#Card_3585| a@@11) (|Set#Card_3585| (|Set#Intersection_3585| a@@11 b@@8)))))
 :qid |stdinbpl.277:18|
 :skolemid |45|
 :pattern ( (|Set#Card_3585| (|Set#Difference_3585| a@@11 b@@8)))
)))
(assert (forall ((s (Array Int Bool)) ) (! (<= 0 (|Set#Card_3585| s))
 :qid |stdinbpl.220:18|
 :skolemid |22|
 :pattern ( (|Set#Card_3585| s))
)))
(assert (forall ((a@@12 (Array Int Bool)) (x@@1 Int) ) (! (select (|Set#UnionOne_3585| a@@12 x@@1) x@@1)
 :qid |stdinbpl.236:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_3585| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array Int Bool)) (x@@2 Int) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_3585| (|Set#UnionOne_3585| a@@13 x@@2)) (|Set#Card_3585| a@@13)))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Set#Card_3585| (|Set#UnionOne_3585| a@@13 x@@2)))
)))
(assert (forall ((r@@0 Int) ) (! (= (|Set#Card_3585| (|Set#Singleton_3640| r@@0)) 1)
 :qid |stdinbpl.231:18|
 :skolemid |28|
 :pattern ( (|Set#Card_3585| (|Set#Singleton_3640| r@@0)))
)))
(assert (forall ((r@@1 Int) ) (! (select (|Set#Singleton_3640| r@@1) r@@1)
 :qid |stdinbpl.229:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_3640| r@@1))
)))
(assert (forall ((a@@14 (Array Int Bool)) (b@@9 (Array Int Bool)) ) (! (= (|Set#Union_3585| a@@14 (|Set#Union_3585| a@@14 b@@9)) (|Set#Union_3585| a@@14 b@@9))
 :qid |stdinbpl.263:18|
 :skolemid |39|
 :pattern ( (|Set#Union_3585| a@@14 (|Set#Union_3585| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array Int Bool)) (b@@10 (Array Int Bool)) ) (! (= (|Set#Intersection_3585| a@@15 (|Set#Intersection_3585| a@@15 b@@10)) (|Set#Intersection_3585| a@@15 b@@10))
 :qid |stdinbpl.267:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_3585| a@@15 (|Set#Intersection_3585| a@@15 b@@10)))
)))
(assert (forall ((o@@3 Int) ) (!  (not (select |Set#Empty_3585| o@@3))
 :qid |stdinbpl.223:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_3585| o@@3))
)))
(assert (forall ((a_2@@0 T@ArrayDomainType) (i Int) ) (!  (and (= (first_1 (loc a_2@@0 i)) a_2@@0) (= (second_1 (loc a_2@@0 i)) i))
 :qid |stdinbpl.423:15|
 :skolemid |82|
 :pattern ( (loc a_2@@0 i))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11576) (o_38 T@Ref) (f_23 T@Field_7810_30584) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_11576 (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@11) (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@11) (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@11) (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@11) (store (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@11) o_38 f_23 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11576 (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@11) (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@11) (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@11) (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@11) (store (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@11) o_38 f_23 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11576) (o_38@@0 T@Ref) (f_23@@0 T@Field_7810_30717) (v@@0 T@PolymorphicMapType_12125) ) (! (succHeap Heap@@12 (PolymorphicMapType_11576 (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@12) (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@12) (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@12) (store (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@12) o_38@@0 f_23@@0 v@@0) (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11576 (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@12) (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@12) (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@12) (store (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@12) o_38@@0 f_23@@0 v@@0) (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11576) (o_38@@1 T@Ref) (f_23@@1 T@Field_17929_3474) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_11576 (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@13) (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@13) (store (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@13) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@13) (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11576 (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@13) (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@13) (store (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@13) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@13) (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11576) (o_38@@2 T@Ref) (f_23@@2 T@Field_11649_11650) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_11576 (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@14) (store (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@14) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@14) (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@14) (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11576 (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@14) (store (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@14) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@14) (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@14) (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11576) (o_38@@3 T@Ref) (f_23@@3 T@Field_11636_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_11576 (store (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@15) o_38@@3 f_23@@3 v@@3) (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@15) (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@15) (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@15) (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11576 (store (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@15) o_38@@3 f_23@@3 v@@3) (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@15) (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@15) (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@15) (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@15)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.307:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.308:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array Int Bool)) ) (!  (and (= (= (|Set#Card_3585| s@@0) 0) (= s@@0 |Set#Empty_3585|)) (=> (not (= (|Set#Card_3585| s@@0) 0)) (exists ((x@@3 Int) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.226:33|
 :skolemid |24|
))))
 :qid |stdinbpl.224:18|
 :skolemid |25|
 :pattern ( (|Set#Card_3585| s@@0))
)))
(assert (forall ((a@@18 (Array Int Bool)) (b@@13 (Array Int Bool)) ) (! (= (|Set#Subset_3621| a@@18 b@@13) (forall ((o@@4 Int) ) (!  (=> (select a@@18 o@@4) (select b@@13 o@@4))
 :qid |stdinbpl.286:32|
 :skolemid |46|
 :pattern ( (select a@@18 o@@4))
 :pattern ( (select b@@13 o@@4))
)))
 :qid |stdinbpl.285:17|
 :skolemid |47|
 :pattern ( (|Set#Subset_3621| a@@18 b@@13))
)))
(assert (forall ((a@@19 (Array Int Bool)) (x@@4 Int) ) (!  (=> (not (select a@@19 x@@4)) (= (|Set#Card_3585| (|Set#UnionOne_3585| a@@19 x@@4)) (+ (|Set#Card_3585| a@@19) 1)))
 :qid |stdinbpl.242:18|
 :skolemid |33|
 :pattern ( (|Set#Card_3585| (|Set#UnionOne_3585| a@@19 x@@4)))
)))
(assert (forall ((o_38@@4 T@Ref) (f_51 T@Field_11649_11650) (Heap@@16 T@PolymorphicMapType_11576) ) (!  (=> (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@16) o_38@@4 $allocated) (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@16) (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@16) o_38@@4 f_51) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@16) o_38@@4 f_51))
)))
(assert (forall ((p@@1 T@Field_7810_30584) (v_1@@0 T@FrameType) (q T@Field_7810_30584) (w@@0 T@FrameType) (r@@2 T@Field_7810_30584) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11636_11636 p@@1 v_1@@0 q w@@0) (InsidePredicate_11636_11636 q w@@0 r@@2 u)) (InsidePredicate_11636_11636 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11636_11636 p@@1 v_1@@0 q w@@0) (InsidePredicate_11636_11636 q w@@0 r@@2 u))
)))
(assert (forall ((a@@20 Int) ) (!  (=> (< a@@20 0) (= (|Math#clip| a@@20) 0))
 :qid |stdinbpl.313:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@20))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@21 (Array Int Bool)) (b@@14 (Array Int Bool)) (o@@5 Int) ) (! (= (select (|Set#Union_3585| a@@21 b@@14) o@@5)  (or (select a@@21 o@@5) (select b@@14 o@@5)))
 :qid |stdinbpl.246:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_3585| a@@21 b@@14) o@@5))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id havocArray)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
