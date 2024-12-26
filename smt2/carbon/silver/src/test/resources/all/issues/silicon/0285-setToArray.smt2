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
(declare-fun len_1 (T@ArrayDomainType) Int)
(declare-fun |Set#Empty_3585| () (Array Int Bool))
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun first (T@Ref) T@ArrayDomainType)
(declare-fun second (T@Ref) Int)
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_11576) (ExhaleHeap T@PolymorphicMapType_11576) (Mask@@0 T@PolymorphicMapType_11597) (pm_f_34 T@Field_7810_30584) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7810_30648 Mask@@0 null pm_f_34) (IsPredicateField_7810_30675 pm_f_34)) (= (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@0) null (PredicateMaskField_7810 pm_f_34)) (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap) null (PredicateMaskField_7810 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_7810_30675 pm_f_34) (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap) null (PredicateMaskField_7810 pm_f_34)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11576) (ExhaleHeap@@0 T@PolymorphicMapType_11576) (Mask@@1 T@PolymorphicMapType_11597) (pm_f_34@@0 T@Field_7810_30584) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7810_30648 Mask@@1 null pm_f_34@@0) (IsWandField_7810_32422 pm_f_34@@0)) (= (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@1) null (WandMaskField_7810 pm_f_34@@0)) (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap@@0) null (WandMaskField_7810 pm_f_34@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_7810_32422 pm_f_34@@0) (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap@@0) null (WandMaskField_7810 pm_f_34@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11576) (ExhaleHeap@@1 T@PolymorphicMapType_11576) (Mask@@2 T@PolymorphicMapType_11597) (o_30 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@2) o_30 $allocated) (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| ExhaleHeap@@1) o_30 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| ExhaleHeap@@1) o_30 $allocated))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_11576) (ExhaleHeap@@3 T@PolymorphicMapType_11576) (Mask@@14 T@PolymorphicMapType_11597) (pm_f_34@@1 T@Field_7810_30584) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_7810_30648 Mask@@14 null pm_f_34@@1) (IsPredicateField_7810_30675 pm_f_34@@1)) (and (and (and (and (forall ((o2_34 T@Ref) (f_35 T@Field_11636_53) ) (!  (=> (select (|PolymorphicMapType_12125_11636_53#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@4) null (PredicateMaskField_7810 pm_f_34@@1))) o2_34 f_35) (= (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@4) o2_34 f_35) (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| ExhaleHeap@@3) o2_34 f_35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| ExhaleHeap@@3) o2_34 f_35))
)) (forall ((o2_34@@0 T@Ref) (f_35@@0 T@Field_11649_11650) ) (!  (=> (select (|PolymorphicMapType_12125_11636_11650#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@4) null (PredicateMaskField_7810 pm_f_34@@1))) o2_34@@0 f_35@@0) (= (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@4) o2_34@@0 f_35@@0) (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| ExhaleHeap@@3) o2_34@@0 f_35@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| ExhaleHeap@@3) o2_34@@0 f_35@@0))
))) (forall ((o2_34@@1 T@Ref) (f_35@@1 T@Field_17929_3474) ) (!  (=> (select (|PolymorphicMapType_12125_11636_3474#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@4) null (PredicateMaskField_7810 pm_f_34@@1))) o2_34@@1 f_35@@1) (= (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@4) o2_34@@1 f_35@@1) (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| ExhaleHeap@@3) o2_34@@1 f_35@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| ExhaleHeap@@3) o2_34@@1 f_35@@1))
))) (forall ((o2_34@@2 T@Ref) (f_35@@2 T@Field_7810_30584) ) (!  (=> (select (|PolymorphicMapType_12125_11636_30584#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@4) null (PredicateMaskField_7810 pm_f_34@@1))) o2_34@@2 f_35@@2) (= (select (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@4) o2_34@@2 f_35@@2) (select (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| ExhaleHeap@@3) o2_34@@2 f_35@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| ExhaleHeap@@3) o2_34@@2 f_35@@2))
))) (forall ((o2_34@@3 T@Ref) (f_35@@3 T@Field_7810_30717) ) (!  (=> (select (|PolymorphicMapType_12125_11636_31895#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@4) null (PredicateMaskField_7810 pm_f_34@@1))) o2_34@@3 f_35@@3) (= (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@4) o2_34@@3 f_35@@3) (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap@@3) o2_34@@3 f_35@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap@@3) o2_34@@3 f_35@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_7810_30675 pm_f_34@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11576) (ExhaleHeap@@4 T@PolymorphicMapType_11576) (Mask@@15 T@PolymorphicMapType_11597) (pm_f_34@@2 T@Field_7810_30584) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_7810_30648 Mask@@15 null pm_f_34@@2) (IsWandField_7810_32422 pm_f_34@@2)) (and (and (and (and (forall ((o2_34@@4 T@Ref) (f_35@@4 T@Field_11636_53) ) (!  (=> (select (|PolymorphicMapType_12125_11636_53#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@5) null (WandMaskField_7810 pm_f_34@@2))) o2_34@@4 f_35@@4) (= (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@5) o2_34@@4 f_35@@4) (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| ExhaleHeap@@4) o2_34@@4 f_35@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| ExhaleHeap@@4) o2_34@@4 f_35@@4))
)) (forall ((o2_34@@5 T@Ref) (f_35@@5 T@Field_11649_11650) ) (!  (=> (select (|PolymorphicMapType_12125_11636_11650#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@5) null (WandMaskField_7810 pm_f_34@@2))) o2_34@@5 f_35@@5) (= (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@5) o2_34@@5 f_35@@5) (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| ExhaleHeap@@4) o2_34@@5 f_35@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| ExhaleHeap@@4) o2_34@@5 f_35@@5))
))) (forall ((o2_34@@6 T@Ref) (f_35@@6 T@Field_17929_3474) ) (!  (=> (select (|PolymorphicMapType_12125_11636_3474#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@5) null (WandMaskField_7810 pm_f_34@@2))) o2_34@@6 f_35@@6) (= (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@5) o2_34@@6 f_35@@6) (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| ExhaleHeap@@4) o2_34@@6 f_35@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| ExhaleHeap@@4) o2_34@@6 f_35@@6))
))) (forall ((o2_34@@7 T@Ref) (f_35@@7 T@Field_7810_30584) ) (!  (=> (select (|PolymorphicMapType_12125_11636_30584#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@5) null (WandMaskField_7810 pm_f_34@@2))) o2_34@@7 f_35@@7) (= (select (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@5) o2_34@@7 f_35@@7) (select (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| ExhaleHeap@@4) o2_34@@7 f_35@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| ExhaleHeap@@4) o2_34@@7 f_35@@7))
))) (forall ((o2_34@@8 T@Ref) (f_35@@8 T@Field_7810_30717) ) (!  (=> (select (|PolymorphicMapType_12125_11636_31895#PolymorphicMapType_12125| (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@5) null (WandMaskField_7810 pm_f_34@@2))) o2_34@@8 f_35@@8) (= (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@5) o2_34@@8 f_35@@8) (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap@@4) o2_34@@8 f_35@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap@@4) o2_34@@8 f_35@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_7810_32422 pm_f_34@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.195:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11576) (ExhaleHeap@@5 T@PolymorphicMapType_11576) (Mask@@16 T@PolymorphicMapType_11597) (o_30@@0 T@Ref) (f_35@@9 T@Field_7810_30717) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_7810_36422 Mask@@16 o_30@@0 f_35@@9) (= (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@6) o_30@@0 f_35@@9) (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap@@5) o_30@@0 f_35@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap@@5) o_30@@0 f_35@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11576) (ExhaleHeap@@6 T@PolymorphicMapType_11576) (Mask@@17 T@PolymorphicMapType_11597) (o_30@@1 T@Ref) (f_35@@10 T@Field_7810_30584) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_7810_30648 Mask@@17 o_30@@1 f_35@@10) (= (select (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@7) o_30@@1 f_35@@10) (select (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| ExhaleHeap@@6) o_30@@1 f_35@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| ExhaleHeap@@6) o_30@@1 f_35@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11576) (ExhaleHeap@@7 T@PolymorphicMapType_11576) (Mask@@18 T@PolymorphicMapType_11597) (o_30@@2 T@Ref) (f_35@@11 T@Field_11649_11650) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_7810_11650 Mask@@18 o_30@@2 f_35@@11) (= (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@8) o_30@@2 f_35@@11) (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| ExhaleHeap@@7) o_30@@2 f_35@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| ExhaleHeap@@7) o_30@@2 f_35@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11576) (ExhaleHeap@@8 T@PolymorphicMapType_11576) (Mask@@19 T@PolymorphicMapType_11597) (o_30@@3 T@Ref) (f_35@@12 T@Field_11636_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_7810_53 Mask@@19 o_30@@3 f_35@@12) (= (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@9) o_30@@3 f_35@@12) (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| ExhaleHeap@@8) o_30@@3 f_35@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| ExhaleHeap@@8) o_30@@3 f_35@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11576) (ExhaleHeap@@9 T@PolymorphicMapType_11576) (Mask@@20 T@PolymorphicMapType_11597) (o_30@@4 T@Ref) (f_35@@13 T@Field_17929_3474) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_7810_3474 Mask@@20 o_30@@4 f_35@@13) (= (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@10) o_30@@4 f_35@@13) (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| ExhaleHeap@@9) o_30@@4 f_35@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| ExhaleHeap@@9) o_30@@4 f_35@@13))
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
(assert (forall ((a_2 T@ArrayDomainType) ) (! (>= (len_1 a_2) 0)
 :qid |stdinbpl.429:15|
 :skolemid |83|
 :pattern ( (len_1 a_2))
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
(assert (forall ((a_2@@0 T@ArrayDomainType) (i Int) ) (!  (and (= (first (loc a_2@@0 i)) a_2@@0) (= (second (loc a_2@@0 i)) i))
 :qid |stdinbpl.423:15|
 :skolemid |82|
 :pattern ( (loc a_2@@0 i))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11576) (o_6 T@Ref) (f_16 T@Field_7810_30584) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_11576 (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@11) (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@11) (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@11) (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@11) (store (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@11) o_6 f_16 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11576 (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@11) (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@11) (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@11) (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@11) (store (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@11) o_6 f_16 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11576) (o_6@@0 T@Ref) (f_16@@0 T@Field_7810_30717) (v@@0 T@PolymorphicMapType_12125) ) (! (succHeap Heap@@12 (PolymorphicMapType_11576 (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@12) (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@12) (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@12) (store (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@12) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11576 (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@12) (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@12) (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@12) (store (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@12) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11576) (o_6@@1 T@Ref) (f_16@@1 T@Field_17929_3474) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_11576 (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@13) (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@13) (store (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@13) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@13) (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11576 (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@13) (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@13) (store (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@13) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@13) (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11576) (o_6@@2 T@Ref) (f_16@@2 T@Field_11649_11650) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_11576 (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@14) (store (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@14) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@14) (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@14) (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11576 (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@14) (store (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@14) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@14) (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@14) (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11576) (o_6@@3 T@Ref) (f_16@@3 T@Field_11636_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_11576 (store (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@15) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@15) (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@15) (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@15) (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11576 (store (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@15) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@15) (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@15) (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| Heap@@15) (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| Heap@@15)))
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
(assert (forall ((o_6@@4 T@Ref) (f_9 T@Field_11649_11650) (Heap@@16 T@PolymorphicMapType_11576) ) (!  (=> (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@16) o_6@@4 $allocated) (select (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| Heap@@16) (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@16) o_6@@4 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| Heap@@16) o_6@@4 f_9))
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
(declare-fun a_2@@1 () T@ArrayDomainType)
(declare-fun k_2 () Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_11597)
(declare-fun vals_2 () (Array Int Bool))
(declare-fun i_4 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_11576)
(declare-fun s_2@1 () (Array Int Bool))
(declare-fun i_19 () Int)
(declare-fun a_2@0 () T@ArrayDomainType)
(declare-fun j_9@1 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_11576)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_11576)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_11597)
(declare-fun s_2@0 () (Array Int Bool))
(declare-fun j_9@0 () Int)
(declare-fun element@1 () Int)
(declare-fun neverTriggered7 (Int) Bool)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_11597)
(declare-fun i_5 () Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_11597)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_11597)
(declare-fun neverTriggered2 (Int) Bool)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_11597)
(declare-fun k_12 () Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_11597)
(declare-fun i_9 () Int)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun Heap@@17 () T@PolymorphicMapType_11576)
(declare-fun i_10_1 () Int)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_11597)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(set-info :boogie-vc-id setToArray)
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
 (=> (= (ControlFlow 0 0) 64) (let ((anon9_correct true))
(let ((anon47_Else_correct  (=> (and (<= (len_1 a_2@@1) k_2) (= (ControlFlow 0 57) 53)) anon9_correct)))
(let ((anon47_Then_correct  (=> (< k_2 (len_1 a_2@@1)) (and (=> (= (ControlFlow 0 55) (- 0 56)) (HasDirectPerm_7810_3474 QPMask@7 (loc a_2@@1 k_2) val)) (=> (HasDirectPerm_7810_3474 QPMask@7 (loc a_2@@1 k_2) val) (=> (= (ControlFlow 0 55) 53) anon9_correct))))))
(let ((anon46_Then_correct  (=> (<= 0 k_2) (and (=> (= (ControlFlow 0 58) 55) anon47_Then_correct) (=> (= (ControlFlow 0 58) 57) anon47_Else_correct)))))
(let ((anon46_Else_correct  (=> (and (< k_2 0) (= (ControlFlow 0 54) 53)) anon9_correct)))
(let ((anon10_correct true))
(let ((anon44_Then_correct  (=> (select vals_2 i_4) (and (and (=> (= (ControlFlow 0 59) 51) anon10_correct) (=> (= (ControlFlow 0 59) 58) anon46_Then_correct)) (=> (= (ControlFlow 0 59) 54) anon46_Else_correct)))))
(let ((anon44_Else_correct  (=> (and (not (select vals_2 i_4)) (= (ControlFlow 0 52) 51)) anon10_correct)))
(let ((anon43_Else_correct true))
(let ((anon42_Else_correct  (and (=> (= (ControlFlow 0 60) (- 0 61)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (<= 0 i_1) (< i_1 (len_1 a_2@@1)))) (and (<= 0 i_1_1) (< i_1_1 (len_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_1) (loc a_2@@1 i_1_1))))
 :qid |stdinbpl.551:15|
 :skolemid |84|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (<= 0 i_1@@0) (< i_1@@0 (len_1 a_2@@1)))) (and (<= 0 i_1_1@@0) (< i_1_1@@0 (len_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_1@@0) (loc a_2@@1 i_1_1@@0))))
 :qid |stdinbpl.551:15|
 :skolemid |84|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (and (<= 0 i_1@@1) (< i_1@@1 (len_1 a_2@@1))) (< NoPerm FullPerm)) (and (qpRange1 (loc a_2@@1 i_1@@1)) (= (invRecv1 (loc a_2@@1 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.557:22|
 :skolemid |85|
 :pattern ( (loc a_2@@1 i_1@@1))
 :pattern ( (loc a_2@@1 i_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_4)) (< (invRecv1 o_4) (len_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange1 o_4)) (= (loc a_2@@1 (invRecv1 o_4)) o_4))
 :qid |stdinbpl.561:22|
 :skolemid |86|
 :pattern ( (invRecv1 o_4))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (and (<= 0 i_1@@2) (< i_1@@2 (len_1 a_2@@1))) (not (= (loc a_2@@1 i_1@@2) null)))
 :qid |stdinbpl.567:22|
 :skolemid |87|
 :pattern ( (loc a_2@@1 i_1@@2))
 :pattern ( (loc a_2@@1 i_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_4@@0)) (< (invRecv1 o_4@@0) (len_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange1 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv1 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@7) o_4@@0 val) (+ (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| ZeroMask) o_4@@0 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv1 o_4@@0)) (< (invRecv1 o_4@@0) (len_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@7) o_4@@0 val) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| ZeroMask) o_4@@0 val))))
 :qid |stdinbpl.573:22|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@7) o_4@@0 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_11636_53) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@7) o_4@@1 f_5)))
 :qid |stdinbpl.577:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@7) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_11649_11650) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@7) o_4@@2 f_5@@0)))
 :qid |stdinbpl.577:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@7) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_17929_3474) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@7) o_4@@3 f_5@@1)))
 :qid |stdinbpl.577:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@7) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_7810_30584) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@7) o_4@@4 f_5@@2)))
 :qid |stdinbpl.577:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@7) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_7810_30717) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@7) o_4@@5 f_5@@3)))
 :qid |stdinbpl.577:29|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@7) o_4@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@7) (state PostHeap@0 QPMask@7))) (and (and (=> (= (ControlFlow 0 60) 50) anon43_Else_correct) (=> (= (ControlFlow 0 60) 59) anon44_Then_correct)) (=> (= (ControlFlow 0 60) 52) anon44_Else_correct))))))))
(let ((anon42_Then_correct true))
(let ((anon41_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (= (len_1 a_2@@1) (|Set#Card_3585| vals_2)) (state PostHeap@0 ZeroMask)) (and (=> (= (ControlFlow 0 62) 49) anon42_Then_correct) (=> (= (ControlFlow 0 62) 60) anon42_Else_correct))))))
(let ((anon34_correct true))
(let ((anon60_Else_correct  (=> (and (not (select (|Set#Difference_3585| vals_2 s_2@1) i_19)) (= (ControlFlow 0 33) 30)) anon34_correct)))
(let ((anon60_Then_correct  (=> (select (|Set#Difference_3585| vals_2 s_2@1) i_19) (and (=> (= (ControlFlow 0 31) (- 0 32)) (exists ((k_9 Int) ) (!  (and (<= 0 k_9) (and (< k_9 j_9@1) (= (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@0) (loc a_2@0 k_9) val) i_19)))
 :qid |stdinbpl.973:23|
 :skolemid |129|
 :pattern ( (loc a_2@0 k_9))
))) (=> (exists ((k_9@@0 Int) ) (!  (and (<= 0 k_9@@0) (and (< k_9@@0 j_9@1) (= (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@0) (loc a_2@0 k_9@@0) val) i_19)))
 :qid |stdinbpl.973:23|
 :skolemid |129|
 :pattern ( (loc a_2@0 k_9@@0))
)) (=> (= (ControlFlow 0 31) 30) anon34_correct))))))
(let ((anon59_Else_correct true))
(let ((anon58_Then_correct  (=> (state ExhaleHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 34) (- 0 40)) (forall ((i_16_1 Int) (i_16_2 Int) ) (!  (=> (and (and (and (and (not (= i_16_1 i_16_2)) (and (<= 0 i_16_1) (< i_16_1 (len_1 a_2@0)))) (and (<= 0 i_16_2) (< i_16_2 (len_1 a_2@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@0 i_16_1) (loc a_2@0 i_16_2))))
 :qid |stdinbpl.841:19|
 :skolemid |115|
))) (=> (forall ((i_16_1@@0 Int) (i_16_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_16_1@@0 i_16_2@@0)) (and (<= 0 i_16_1@@0) (< i_16_1@@0 (len_1 a_2@0)))) (and (<= 0 i_16_2@@0) (< i_16_2@@0 (len_1 a_2@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@0 i_16_1@@0) (loc a_2@0 i_16_2@@0))))
 :qid |stdinbpl.841:19|
 :skolemid |115|
)) (=> (and (and (forall ((i_16_1@@1 Int) ) (!  (=> (and (and (<= 0 i_16_1@@1) (< i_16_1@@1 (len_1 a_2@0))) (< NoPerm FullPerm)) (and (qpRange6 (loc a_2@0 i_16_1@@1)) (= (invRecv6 (loc a_2@0 i_16_1@@1)) i_16_1@@1)))
 :qid |stdinbpl.847:26|
 :skolemid |116|
 :pattern ( (loc a_2@0 i_16_1@@1))
 :pattern ( (loc a_2@0 i_16_1@@1))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv6 o_4@@6)) (< (invRecv6 o_4@@6) (len_1 a_2@0))) (< NoPerm FullPerm)) (qpRange6 o_4@@6)) (= (loc a_2@0 (invRecv6 o_4@@6)) o_4@@6))
 :qid |stdinbpl.851:26|
 :skolemid |117|
 :pattern ( (invRecv6 o_4@@6))
))) (and (forall ((i_16_1@@2 Int) ) (!  (=> (and (<= 0 i_16_1@@2) (< i_16_1@@2 (len_1 a_2@0))) (not (= (loc a_2@0 i_16_1@@2) null)))
 :qid |stdinbpl.857:26|
 :skolemid |118|
 :pattern ( (loc a_2@0 i_16_1@@2))
 :pattern ( (loc a_2@0 i_16_1@@2))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv6 o_4@@7)) (< (invRecv6 o_4@@7) (len_1 a_2@0))) (< NoPerm FullPerm)) (qpRange6 o_4@@7)) (and (=> (< NoPerm FullPerm) (= (loc a_2@0 (invRecv6 o_4@@7)) o_4@@7)) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@2) o_4@@7 val) (+ (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| ZeroMask) o_4@@7 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv6 o_4@@7)) (< (invRecv6 o_4@@7) (len_1 a_2@0))) (< NoPerm FullPerm)) (qpRange6 o_4@@7))) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@2) o_4@@7 val) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| ZeroMask) o_4@@7 val))))
 :qid |stdinbpl.863:26|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@2) o_4@@7 val))
)))) (=> (and (and (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_11636_53) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| ZeroMask) o_4@@8 f_5@@4) (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@2) o_4@@8 f_5@@4)))
 :qid |stdinbpl.867:33|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| ZeroMask) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@2) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_11649_11650) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| ZeroMask) o_4@@9 f_5@@5) (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@2) o_4@@9 f_5@@5)))
 :qid |stdinbpl.867:33|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| ZeroMask) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@2) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_17929_3474) ) (!  (=> (not (= f_5@@6 val)) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| ZeroMask) o_4@@10 f_5@@6) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@2) o_4@@10 f_5@@6)))
 :qid |stdinbpl.867:33|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| ZeroMask) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@2) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_7810_30584) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| ZeroMask) o_4@@11 f_5@@7) (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@2) o_4@@11 f_5@@7)))
 :qid |stdinbpl.867:33|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| ZeroMask) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@2) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_7810_30717) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| ZeroMask) o_4@@12 f_5@@8) (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@2) o_4@@12 f_5@@8)))
 :qid |stdinbpl.867:33|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| ZeroMask) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@2) o_4@@12 f_5@@8))
))) (state ExhaleHeap@0 QPMask@2)) (and (and (|Set#Subset_3621| s_2@0 vals_2) (= j_9@0 (|Set#Card_3585| (|Set#Difference_3585| vals_2 s_2@0)))) (and (forall ((i_17 Int) ) (!  (=> (select (|Set#Difference_3585| vals_2 s_2@0) i_17) (exists ((k_8 Int) ) (!  (and (<= 0 k_8) (and (< k_8 j_9@0) (= (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| ExhaleHeap@0) (loc a_2@0 k_8) val) i_17)))
 :qid |stdinbpl.877:57|
 :skolemid |121|
 :pattern ( (loc a_2@0 k_8))
)))
 :qid |stdinbpl.875:24|
 :skolemid |122|
 :pattern ( (select vals_2 i_17))
)) (state ExhaleHeap@0 QPMask@2)))) (and (and (and (> (|Set#Card_3585| s_2@0) 0) (state ExhaleHeap@0 QPMask@2)) (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2))) (and (and (state ExhaleHeap@0 QPMask@2) (select s_2@0 element@1)) (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2))))) (and (=> (= (ControlFlow 0 34) (- 0 39)) (= FullPerm (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@2) (loc a_2@0 j_9@0) val))) (=> (= FullPerm (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@2) (loc a_2@0 j_9@0) val)) (=> (and (= Heap@0 (PolymorphicMapType_11576 (|PolymorphicMapType_11576_7493_53#PolymorphicMapType_11576| ExhaleHeap@0) (|PolymorphicMapType_11576_7496_7497#PolymorphicMapType_11576| ExhaleHeap@0) (store (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| ExhaleHeap@0) (loc a_2@0 j_9@0) val element@1) (|PolymorphicMapType_11576_7810_30761#PolymorphicMapType_11576| ExhaleHeap@0) (|PolymorphicMapType_11576_11636_30584#PolymorphicMapType_11576| ExhaleHeap@0))) (state Heap@0 QPMask@2)) (=> (and (and (= s_2@1 (|Set#Difference_3585| s_2@0 (|Set#Singleton_3640| element@1))) (state Heap@0 QPMask@2)) (and (= j_9@1 (+ j_9@0 1)) (state Heap@0 QPMask@2))) (and (=> (= (ControlFlow 0 34) (- 0 38)) (forall ((i_18_1 Int) (i_18_2 Int) ) (!  (=> (and (and (and (and (not (= i_18_1 i_18_2)) (and (<= 0 i_18_1) (< i_18_1 (len_1 a_2@0)))) (and (<= 0 i_18_2) (< i_18_2 (len_1 a_2@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@0 i_18_1) (loc a_2@0 i_18_2))))
 :qid |stdinbpl.932:21|
 :skolemid |123|
 :pattern ( (neverTriggered7 i_18_1) (neverTriggered7 i_18_2))
))) (=> (forall ((i_18_1@@0 Int) (i_18_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_18_1@@0 i_18_2@@0)) (and (<= 0 i_18_1@@0) (< i_18_1@@0 (len_1 a_2@0)))) (and (<= 0 i_18_2@@0) (< i_18_2@@0 (len_1 a_2@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@0 i_18_1@@0) (loc a_2@0 i_18_2@@0))))
 :qid |stdinbpl.932:21|
 :skolemid |123|
 :pattern ( (neverTriggered7 i_18_1@@0) (neverTriggered7 i_18_2@@0))
)) (and (=> (= (ControlFlow 0 34) (- 0 37)) (forall ((i_18_1@@1 Int) ) (!  (=> (and (<= 0 i_18_1@@1) (< i_18_1@@1 (len_1 a_2@0))) (>= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@2) (loc a_2@0 i_18_1@@1) val) FullPerm))
 :qid |stdinbpl.939:21|
 :skolemid |124|
 :pattern ( (loc a_2@0 i_18_1@@1))
 :pattern ( (loc a_2@0 i_18_1@@1))
))) (=> (forall ((i_18_1@@2 Int) ) (!  (=> (and (<= 0 i_18_1@@2) (< i_18_1@@2 (len_1 a_2@0))) (>= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@2) (loc a_2@0 i_18_1@@2) val) FullPerm))
 :qid |stdinbpl.939:21|
 :skolemid |124|
 :pattern ( (loc a_2@0 i_18_1@@2))
 :pattern ( (loc a_2@0 i_18_1@@2))
)) (=> (forall ((i_18_1@@3 Int) ) (!  (=> (and (and (<= 0 i_18_1@@3) (< i_18_1@@3 (len_1 a_2@0))) (< NoPerm FullPerm)) (and (qpRange7 (loc a_2@0 i_18_1@@3)) (= (invRecv7 (loc a_2@0 i_18_1@@3)) i_18_1@@3)))
 :qid |stdinbpl.945:26|
 :skolemid |125|
 :pattern ( (loc a_2@0 i_18_1@@3))
 :pattern ( (loc a_2@0 i_18_1@@3))
)) (=> (and (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv7 o_4@@13)) (< (invRecv7 o_4@@13) (len_1 a_2@0))) (and (< NoPerm FullPerm) (qpRange7 o_4@@13))) (= (loc a_2@0 (invRecv7 o_4@@13)) o_4@@13))
 :qid |stdinbpl.949:26|
 :skolemid |126|
 :pattern ( (invRecv7 o_4@@13))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv7 o_4@@14)) (< (invRecv7 o_4@@14) (len_1 a_2@0))) (and (< NoPerm FullPerm) (qpRange7 o_4@@14))) (and (= (loc a_2@0 (invRecv7 o_4@@14)) o_4@@14) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@3) o_4@@14 val) (- (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@2) o_4@@14 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv7 o_4@@14)) (< (invRecv7 o_4@@14) (len_1 a_2@0))) (and (< NoPerm FullPerm) (qpRange7 o_4@@14)))) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@3) o_4@@14 val) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@2) o_4@@14 val))))
 :qid |stdinbpl.955:26|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@3) o_4@@14 val))
))) (=> (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_11636_53) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@2) o_4@@15 f_5@@9) (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@3) o_4@@15 f_5@@9)))
 :qid |stdinbpl.961:33|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@3) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_11649_11650) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@2) o_4@@16 f_5@@10) (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@3) o_4@@16 f_5@@10)))
 :qid |stdinbpl.961:33|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@3) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_17929_3474) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@2) o_4@@17 f_5@@11) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@3) o_4@@17 f_5@@11)))
 :qid |stdinbpl.961:33|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@3) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_7810_30584) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@2) o_4@@18 f_5@@12) (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@3) o_4@@18 f_5@@12)))
 :qid |stdinbpl.961:33|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@3) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_7810_30717) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@2) o_4@@19 f_5@@13) (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@3) o_4@@19 f_5@@13)))
 :qid |stdinbpl.961:33|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@3) o_4@@19 f_5@@13))
))) (and (=> (= (ControlFlow 0 34) (- 0 36)) (|Set#Subset_3621| s_2@1 vals_2)) (=> (|Set#Subset_3621| s_2@1 vals_2) (and (=> (= (ControlFlow 0 34) (- 0 35)) (= j_9@1 (|Set#Card_3585| (|Set#Difference_3585| vals_2 s_2@1)))) (=> (= j_9@1 (|Set#Card_3585| (|Set#Difference_3585| vals_2 s_2@1))) (and (and (=> (= (ControlFlow 0 34) 29) anon59_Else_correct) (=> (= (ControlFlow 0 34) 31) anon60_Then_correct)) (=> (= (ControlFlow 0 34) 33) anon60_Else_correct))))))))))))))))))))))))
(let ((anon39_correct true))
(let ((anon62_Else_correct  (=> (and (not (select vals_2 i_5)) (= (ControlFlow 0 23) 20)) anon39_correct)))
(let ((anon62_Then_correct  (=> (select vals_2 i_5) (and (=> (= (ControlFlow 0 21) (- 0 22)) (exists ((k_2_1 Int) ) (!  (and (<= 0 k_2_1) (and (< k_2_1 (len_1 a_2@0)) (= (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| ExhaleHeap@0) (loc a_2@0 k_2_1) val) i_5)))
 :qid |stdinbpl.1093:19|
 :skolemid |146|
 :pattern ( (loc a_2@0 k_2_1))
))) (=> (exists ((k_2_1@@0 Int) ) (!  (and (<= 0 k_2_1@@0) (and (< k_2_1@@0 (len_1 a_2@0)) (= (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| ExhaleHeap@0) (loc a_2@0 k_2_1@@0) val) i_5)))
 :qid |stdinbpl.1093:19|
 :skolemid |146|
 :pattern ( (loc a_2@0 k_2_1@@0))
)) (=> (= (ControlFlow 0 21) 20) anon39_correct))))))
(let ((anon61_Else_correct true))
(let ((anon58_Else_correct  (=> (and (not (> (|Set#Card_3585| s_2@0) 0)) (state ExhaleHeap@0 QPMask@1)) (and (=> (= (ControlFlow 0 24) (- 0 28)) (forall ((i_21 Int) (i_21_1 Int) ) (!  (=> (and (and (and (and (not (= i_21 i_21_1)) (and (<= 0 i_21) (< i_21 (len_1 a_2@0)))) (and (<= 0 i_21_1) (< i_21_1 (len_1 a_2@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@0 i_21) (loc a_2@0 i_21_1))))
 :qid |stdinbpl.1000:17|
 :skolemid |132|
))) (=> (forall ((i_21@@0 Int) (i_21_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_21@@0 i_21_1@@0)) (and (<= 0 i_21@@0) (< i_21@@0 (len_1 a_2@0)))) (and (<= 0 i_21_1@@0) (< i_21_1@@0 (len_1 a_2@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@0 i_21@@0) (loc a_2@0 i_21_1@@0))))
 :qid |stdinbpl.1000:17|
 :skolemid |132|
)) (=> (and (and (forall ((i_21@@1 Int) ) (!  (=> (and (and (<= 0 i_21@@1) (< i_21@@1 (len_1 a_2@0))) (< NoPerm FullPerm)) (and (qpRange8 (loc a_2@0 i_21@@1)) (= (invRecv8 (loc a_2@0 i_21@@1)) i_21@@1)))
 :qid |stdinbpl.1006:24|
 :skolemid |133|
 :pattern ( (loc a_2@0 i_21@@1))
 :pattern ( (loc a_2@0 i_21@@1))
)) (forall ((o_4@@20 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv8 o_4@@20)) (< (invRecv8 o_4@@20) (len_1 a_2@0))) (< NoPerm FullPerm)) (qpRange8 o_4@@20)) (= (loc a_2@0 (invRecv8 o_4@@20)) o_4@@20))
 :qid |stdinbpl.1010:24|
 :skolemid |134|
 :pattern ( (invRecv8 o_4@@20))
))) (and (forall ((i_21@@2 Int) ) (!  (=> (and (<= 0 i_21@@2) (< i_21@@2 (len_1 a_2@0))) (not (= (loc a_2@0 i_21@@2) null)))
 :qid |stdinbpl.1016:24|
 :skolemid |135|
 :pattern ( (loc a_2@0 i_21@@2))
 :pattern ( (loc a_2@0 i_21@@2))
)) (forall ((o_4@@21 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv8 o_4@@21)) (< (invRecv8 o_4@@21) (len_1 a_2@0))) (< NoPerm FullPerm)) (qpRange8 o_4@@21)) (and (=> (< NoPerm FullPerm) (= (loc a_2@0 (invRecv8 o_4@@21)) o_4@@21)) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@4) o_4@@21 val) (+ (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@1) o_4@@21 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv8 o_4@@21)) (< (invRecv8 o_4@@21) (len_1 a_2@0))) (< NoPerm FullPerm)) (qpRange8 o_4@@21))) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@4) o_4@@21 val) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@1) o_4@@21 val))))
 :qid |stdinbpl.1022:24|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@4) o_4@@21 val))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_11636_53) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@1) o_4@@22 f_5@@14) (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@4) o_4@@22 f_5@@14)))
 :qid |stdinbpl.1026:31|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@1) o_4@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@4) o_4@@22 f_5@@14))
)) (forall ((o_4@@23 T@Ref) (f_5@@15 T@Field_11649_11650) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@1) o_4@@23 f_5@@15) (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@4) o_4@@23 f_5@@15)))
 :qid |stdinbpl.1026:31|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@1) o_4@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@4) o_4@@23 f_5@@15))
))) (forall ((o_4@@24 T@Ref) (f_5@@16 T@Field_17929_3474) ) (!  (=> (not (= f_5@@16 val)) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@1) o_4@@24 f_5@@16) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@4) o_4@@24 f_5@@16)))
 :qid |stdinbpl.1026:31|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@1) o_4@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@4) o_4@@24 f_5@@16))
))) (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_7810_30584) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@1) o_4@@25 f_5@@17) (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@4) o_4@@25 f_5@@17)))
 :qid |stdinbpl.1026:31|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@1) o_4@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@4) o_4@@25 f_5@@17))
))) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_7810_30717) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@1) o_4@@26 f_5@@18) (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@4) o_4@@26 f_5@@18)))
 :qid |stdinbpl.1026:31|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@1) o_4@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@4) o_4@@26 f_5@@18))
))) (and (state ExhaleHeap@0 QPMask@4) (|Set#Subset_3621| s_2@0 vals_2))) (and (and (= j_9@0 (|Set#Card_3585| (|Set#Difference_3585| vals_2 s_2@0))) (forall ((i_22_1 Int) ) (!  (=> (select (|Set#Difference_3585| vals_2 s_2@0) i_22_1) (exists ((k_11 Int) ) (!  (and (<= 0 k_11) (and (< k_11 j_9@0) (= (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| ExhaleHeap@0) (loc a_2@0 k_11) val) i_22_1)))
 :qid |stdinbpl.1036:57|
 :skolemid |138|
 :pattern ( (loc a_2@0 k_11))
)))
 :qid |stdinbpl.1034:22|
 :skolemid |139|
 :pattern ( (select vals_2 i_22_1))
))) (and (state ExhaleHeap@0 QPMask@4) (state ExhaleHeap@0 QPMask@4)))) (and (=> (= (ControlFlow 0 24) (- 0 27)) (= (len_1 a_2@0) (|Set#Card_3585| vals_2))) (=> (= (len_1 a_2@0) (|Set#Card_3585| vals_2)) (and (=> (= (ControlFlow 0 24) (- 0 26)) (forall ((i_4_1 Int) (i_4_2 Int) ) (!  (=> (and (and (and (and (not (= i_4_1 i_4_2)) (and (<= 0 i_4_1) (< i_4_1 (len_1 a_2@0)))) (and (<= 0 i_4_2) (< i_4_2 (len_1 a_2@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@0 i_4_1) (loc a_2@0 i_4_2))))
 :qid |stdinbpl.1056:17|
 :skolemid |140|
 :pattern ( (neverTriggered2 i_4_1) (neverTriggered2 i_4_2))
))) (=> (forall ((i_4_1@@0 Int) (i_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_4_1@@0 i_4_2@@0)) (and (<= 0 i_4_1@@0) (< i_4_1@@0 (len_1 a_2@0)))) (and (<= 0 i_4_2@@0) (< i_4_2@@0 (len_1 a_2@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@0 i_4_1@@0) (loc a_2@0 i_4_2@@0))))
 :qid |stdinbpl.1056:17|
 :skolemid |140|
 :pattern ( (neverTriggered2 i_4_1@@0) (neverTriggered2 i_4_2@@0))
)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (forall ((i_4_1@@1 Int) ) (!  (=> (and (<= 0 i_4_1@@1) (< i_4_1@@1 (len_1 a_2@0))) (>= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@4) (loc a_2@0 i_4_1@@1) val) FullPerm))
 :qid |stdinbpl.1063:17|
 :skolemid |141|
 :pattern ( (loc a_2@0 i_4_1@@1))
 :pattern ( (loc a_2@0 i_4_1@@1))
))) (=> (forall ((i_4_1@@2 Int) ) (!  (=> (and (<= 0 i_4_1@@2) (< i_4_1@@2 (len_1 a_2@0))) (>= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@4) (loc a_2@0 i_4_1@@2) val) FullPerm))
 :qid |stdinbpl.1063:17|
 :skolemid |141|
 :pattern ( (loc a_2@0 i_4_1@@2))
 :pattern ( (loc a_2@0 i_4_1@@2))
)) (=> (forall ((i_4_1@@3 Int) ) (!  (=> (and (and (<= 0 i_4_1@@3) (< i_4_1@@3 (len_1 a_2@0))) (< NoPerm FullPerm)) (and (qpRange2 (loc a_2@0 i_4_1@@3)) (= (invRecv2 (loc a_2@0 i_4_1@@3)) i_4_1@@3)))
 :qid |stdinbpl.1069:22|
 :skolemid |142|
 :pattern ( (loc a_2@0 i_4_1@@3))
 :pattern ( (loc a_2@0 i_4_1@@3))
)) (=> (and (forall ((o_4@@27 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv2 o_4@@27)) (< (invRecv2 o_4@@27) (len_1 a_2@0))) (and (< NoPerm FullPerm) (qpRange2 o_4@@27))) (= (loc a_2@0 (invRecv2 o_4@@27)) o_4@@27))
 :qid |stdinbpl.1073:22|
 :skolemid |143|
 :pattern ( (invRecv2 o_4@@27))
)) (forall ((o_4@@28 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv2 o_4@@28)) (< (invRecv2 o_4@@28) (len_1 a_2@0))) (and (< NoPerm FullPerm) (qpRange2 o_4@@28))) (and (= (loc a_2@0 (invRecv2 o_4@@28)) o_4@@28) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@5) o_4@@28 val) (- (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@4) o_4@@28 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv2 o_4@@28)) (< (invRecv2 o_4@@28) (len_1 a_2@0))) (and (< NoPerm FullPerm) (qpRange2 o_4@@28)))) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@5) o_4@@28 val) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@4) o_4@@28 val))))
 :qid |stdinbpl.1079:22|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@5) o_4@@28 val))
))) (=> (and (and (and (and (forall ((o_4@@29 T@Ref) (f_5@@19 T@Field_11636_53) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@4) o_4@@29 f_5@@19) (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@5) o_4@@29 f_5@@19)))
 :qid |stdinbpl.1085:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@5) o_4@@29 f_5@@19))
)) (forall ((o_4@@30 T@Ref) (f_5@@20 T@Field_11649_11650) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@4) o_4@@30 f_5@@20) (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@5) o_4@@30 f_5@@20)))
 :qid |stdinbpl.1085:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@5) o_4@@30 f_5@@20))
))) (forall ((o_4@@31 T@Ref) (f_5@@21 T@Field_17929_3474) ) (!  (=> (not (= f_5@@21 val)) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@4) o_4@@31 f_5@@21) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@5) o_4@@31 f_5@@21)))
 :qid |stdinbpl.1085:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@5) o_4@@31 f_5@@21))
))) (forall ((o_4@@32 T@Ref) (f_5@@22 T@Field_7810_30584) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@4) o_4@@32 f_5@@22) (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@5) o_4@@32 f_5@@22)))
 :qid |stdinbpl.1085:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@5) o_4@@32 f_5@@22))
))) (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_7810_30717) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@4) o_4@@33 f_5@@23) (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@5) o_4@@33 f_5@@23)))
 :qid |stdinbpl.1085:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@5) o_4@@33 f_5@@23))
))) (and (and (=> (= (ControlFlow 0 24) 19) anon61_Else_correct) (=> (= (ControlFlow 0 24) 21) anon62_Then_correct)) (=> (= (ControlFlow 0 24) 23) anon62_Else_correct))))))))))))))))))
(let ((anon27_correct true))
(let ((anon57_Else_correct  (=> (and (<= j_9@0 k_12) (= (ControlFlow 0 14) 10)) anon27_correct)))
(let ((anon57_Then_correct  (=> (< k_12 j_9@0) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_7810_3474 QPMask@6 (loc a_2@0 k_12) val)) (=> (HasDirectPerm_7810_3474 QPMask@6 (loc a_2@0 k_12) val) (=> (= (ControlFlow 0 12) 10) anon27_correct))))))
(let ((anon56_Then_correct  (=> (<= 0 k_12) (and (=> (= (ControlFlow 0 15) 12) anon57_Then_correct) (=> (= (ControlFlow 0 15) 14) anon57_Else_correct)))))
(let ((anon56_Else_correct  (=> (and (< k_12 0) (= (ControlFlow 0 11) 10)) anon27_correct)))
(let ((anon28_correct true))
(let ((anon54_Then_correct  (=> (select (|Set#Difference_3585| vals_2 s_2@0) i_9) (and (and (=> (= (ControlFlow 0 16) 8) anon28_correct) (=> (= (ControlFlow 0 16) 15) anon56_Then_correct)) (=> (= (ControlFlow 0 16) 11) anon56_Else_correct)))))
(let ((anon54_Else_correct  (=> (and (not (select (|Set#Difference_3585| vals_2 s_2@0) i_9)) (= (ControlFlow 0 9) 8)) anon28_correct)))
(let ((anon53_Else_correct true))
(let ((anon52_Else_correct  (and (=> (= (ControlFlow 0 17) (- 0 18)) (forall ((i_13_1 Int) (i_13_2 Int) ) (!  (=> (and (and (and (and (not (= i_13_1 i_13_2)) (and (<= 0 i_13_1) (< i_13_1 (len_1 a_2@0)))) (and (<= 0 i_13_2) (< i_13_2 (len_1 a_2@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@0 i_13_1) (loc a_2@0 i_13_2))))
 :qid |stdinbpl.767:19|
 :skolemid |107|
))) (=> (forall ((i_13_1@@0 Int) (i_13_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_13_1@@0 i_13_2@@0)) (and (<= 0 i_13_1@@0) (< i_13_1@@0 (len_1 a_2@0)))) (and (<= 0 i_13_2@@0) (< i_13_2@@0 (len_1 a_2@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@0 i_13_1@@0) (loc a_2@0 i_13_2@@0))))
 :qid |stdinbpl.767:19|
 :skolemid |107|
)) (=> (and (and (forall ((i_13_1@@1 Int) ) (!  (=> (and (and (<= 0 i_13_1@@1) (< i_13_1@@1 (len_1 a_2@0))) (< NoPerm FullPerm)) (and (qpRange5 (loc a_2@0 i_13_1@@1)) (= (invRecv5 (loc a_2@0 i_13_1@@1)) i_13_1@@1)))
 :qid |stdinbpl.773:26|
 :skolemid |108|
 :pattern ( (loc a_2@0 i_13_1@@1))
 :pattern ( (loc a_2@0 i_13_1@@1))
)) (forall ((o_4@@34 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv5 o_4@@34)) (< (invRecv5 o_4@@34) (len_1 a_2@0))) (< NoPerm FullPerm)) (qpRange5 o_4@@34)) (= (loc a_2@0 (invRecv5 o_4@@34)) o_4@@34))
 :qid |stdinbpl.777:26|
 :skolemid |109|
 :pattern ( (invRecv5 o_4@@34))
))) (and (forall ((i_13_1@@2 Int) ) (!  (=> (and (<= 0 i_13_1@@2) (< i_13_1@@2 (len_1 a_2@0))) (not (= (loc a_2@0 i_13_1@@2) null)))
 :qid |stdinbpl.783:26|
 :skolemid |110|
 :pattern ( (loc a_2@0 i_13_1@@2))
 :pattern ( (loc a_2@0 i_13_1@@2))
)) (forall ((o_4@@35 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv5 o_4@@35)) (< (invRecv5 o_4@@35) (len_1 a_2@0))) (< NoPerm FullPerm)) (qpRange5 o_4@@35)) (and (=> (< NoPerm FullPerm) (= (loc a_2@0 (invRecv5 o_4@@35)) o_4@@35)) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@6) o_4@@35 val) (+ (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@1) o_4@@35 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv5 o_4@@35)) (< (invRecv5 o_4@@35) (len_1 a_2@0))) (< NoPerm FullPerm)) (qpRange5 o_4@@35))) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@6) o_4@@35 val) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@1) o_4@@35 val))))
 :qid |stdinbpl.789:26|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@6) o_4@@35 val))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@36 T@Ref) (f_5@@24 T@Field_11636_53) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@1) o_4@@36 f_5@@24) (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@6) o_4@@36 f_5@@24)))
 :qid |stdinbpl.793:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@1) o_4@@36 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@6) o_4@@36 f_5@@24))
)) (forall ((o_4@@37 T@Ref) (f_5@@25 T@Field_11649_11650) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@1) o_4@@37 f_5@@25) (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@6) o_4@@37 f_5@@25)))
 :qid |stdinbpl.793:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@1) o_4@@37 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@6) o_4@@37 f_5@@25))
))) (forall ((o_4@@38 T@Ref) (f_5@@26 T@Field_17929_3474) ) (!  (=> (not (= f_5@@26 val)) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@1) o_4@@38 f_5@@26) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@6) o_4@@38 f_5@@26)))
 :qid |stdinbpl.793:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@1) o_4@@38 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@6) o_4@@38 f_5@@26))
))) (forall ((o_4@@39 T@Ref) (f_5@@27 T@Field_7810_30584) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@1) o_4@@39 f_5@@27) (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@6) o_4@@39 f_5@@27)))
 :qid |stdinbpl.793:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@1) o_4@@39 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@6) o_4@@39 f_5@@27))
))) (forall ((o_4@@40 T@Ref) (f_5@@28 T@Field_7810_30717) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@1) o_4@@40 f_5@@28) (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@6) o_4@@40 f_5@@28)))
 :qid |stdinbpl.793:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@1) o_4@@40 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@6) o_4@@40 f_5@@28))
))) (and (state ExhaleHeap@0 QPMask@6) (state ExhaleHeap@0 QPMask@6))) (and (and (|Set#Subset_3621| s_2@0 vals_2) (state ExhaleHeap@0 QPMask@6)) (and (= j_9@0 (|Set#Card_3585| (|Set#Difference_3585| vals_2 s_2@0))) (state ExhaleHeap@0 QPMask@6)))) (and (and (=> (= (ControlFlow 0 17) 7) anon53_Else_correct) (=> (= (ControlFlow 0 17) 16) anon54_Then_correct)) (=> (= (ControlFlow 0 17) 9) anon54_Else_correct))))))))
(let ((anon52_Then_correct true))
(let ((anon49_Else_correct  (=> (and (forall ((i_11_1_1 Int) ) (!  (=> (select (|Set#Difference_3585| vals_2 vals_2) i_11_1_1) (exists ((k_5 Int) ) (!  (and (<= 0 k_5) (and (< k_5 0) (= (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@17) (loc a_2@0 k_5) val) i_11_1_1)))
 :qid |stdinbpl.745:61|
 :skolemid |105|
 :pattern ( (loc a_2@0 k_5))
)))
 :qid |stdinbpl.743:24|
 :skolemid |106|
 :pattern ( (select vals_2 i_11_1_1))
)) (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1)) (and (and (and (=> (= (ControlFlow 0 41) 34) anon58_Then_correct) (=> (= (ControlFlow 0 41) 24) anon58_Else_correct)) (=> (= (ControlFlow 0 41) 6) anon52_Then_correct)) (=> (= (ControlFlow 0 41) 17) anon52_Else_correct)))))
(let ((anon17_correct true))
(let ((anon50_Else_correct  (=> (and (not (select (|Set#Difference_3585| vals_2 vals_2) i_10_1)) (= (ControlFlow 0 5) 2)) anon17_correct)))
(let ((anon50_Then_correct  (=> (select (|Set#Difference_3585| vals_2 vals_2) i_10_1) (and (=> (= (ControlFlow 0 3) (- 0 4)) (exists ((k_4_1 Int) ) (!  (and (<= 0 k_4_1) (and (< k_4_1 0) (= (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@17) (loc a_2@0 k_4_1) val) i_10_1)))
 :qid |stdinbpl.736:23|
 :skolemid |104|
 :pattern ( (loc a_2@0 k_4_1))
))) (=> (exists ((k_4_1@@0 Int) ) (!  (and (<= 0 k_4_1@@0) (and (< k_4_1@@0 0) (= (select (|PolymorphicMapType_11576_7810_3474#PolymorphicMapType_11576| Heap@@17) (loc a_2@0 k_4_1@@0) val) i_10_1)))
 :qid |stdinbpl.736:23|
 :skolemid |104|
 :pattern ( (loc a_2@0 k_4_1@@0))
)) (=> (= (ControlFlow 0 3) 2) anon17_correct))))))
(let ((anon48_Else_correct  (and (=> (= (ControlFlow 0 42) (- 0 47)) (forall ((i_8_2 Int) (i_8_3 Int) ) (!  (=> (and (and (and (and (not (= i_8_2 i_8_3)) (and (<= 0 i_8_2) (< i_8_2 (len_1 a_2@0)))) (and (<= 0 i_8_3) (< i_8_3 (len_1 a_2@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@0 i_8_2) (loc a_2@0 i_8_3))))
 :qid |stdinbpl.638:15|
 :skolemid |92|
))) (=> (forall ((i_8_2@@0 Int) (i_8_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_8_2@@0 i_8_3@@0)) (and (<= 0 i_8_2@@0) (< i_8_2@@0 (len_1 a_2@0)))) (and (<= 0 i_8_3@@0) (< i_8_3@@0 (len_1 a_2@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@0 i_8_2@@0) (loc a_2@0 i_8_3@@0))))
 :qid |stdinbpl.638:15|
 :skolemid |92|
)) (=> (and (and (forall ((i_8_2@@1 Int) ) (!  (=> (and (and (<= 0 i_8_2@@1) (< i_8_2@@1 (len_1 a_2@0))) (< NoPerm FullPerm)) (and (qpRange3 (loc a_2@0 i_8_2@@1)) (= (invRecv3 (loc a_2@0 i_8_2@@1)) i_8_2@@1)))
 :qid |stdinbpl.644:22|
 :skolemid |93|
 :pattern ( (loc a_2@0 i_8_2@@1))
 :pattern ( (loc a_2@0 i_8_2@@1))
)) (forall ((o_4@@41 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv3 o_4@@41)) (< (invRecv3 o_4@@41) (len_1 a_2@0))) (< NoPerm FullPerm)) (qpRange3 o_4@@41)) (= (loc a_2@0 (invRecv3 o_4@@41)) o_4@@41))
 :qid |stdinbpl.648:22|
 :skolemid |94|
 :pattern ( (invRecv3 o_4@@41))
))) (and (forall ((i_8_2@@2 Int) ) (!  (=> (and (<= 0 i_8_2@@2) (< i_8_2@@2 (len_1 a_2@0))) (not (= (loc a_2@0 i_8_2@@2) null)))
 :qid |stdinbpl.654:22|
 :skolemid |95|
 :pattern ( (loc a_2@0 i_8_2@@2))
 :pattern ( (loc a_2@0 i_8_2@@2))
)) (forall ((o_4@@42 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv3 o_4@@42)) (< (invRecv3 o_4@@42) (len_1 a_2@0))) (< NoPerm FullPerm)) (qpRange3 o_4@@42)) (and (=> (< NoPerm FullPerm) (= (loc a_2@0 (invRecv3 o_4@@42)) o_4@@42)) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@0) o_4@@42 val) (+ (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| ZeroMask) o_4@@42 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv3 o_4@@42)) (< (invRecv3 o_4@@42) (len_1 a_2@0))) (< NoPerm FullPerm)) (qpRange3 o_4@@42))) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@0) o_4@@42 val) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| ZeroMask) o_4@@42 val))))
 :qid |stdinbpl.660:22|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@0) o_4@@42 val))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@43 T@Ref) (f_5@@29 T@Field_11636_53) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| ZeroMask) o_4@@43 f_5@@29) (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@0) o_4@@43 f_5@@29)))
 :qid |stdinbpl.664:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| ZeroMask) o_4@@43 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@0) o_4@@43 f_5@@29))
)) (forall ((o_4@@44 T@Ref) (f_5@@30 T@Field_11649_11650) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| ZeroMask) o_4@@44 f_5@@30) (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@0) o_4@@44 f_5@@30)))
 :qid |stdinbpl.664:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| ZeroMask) o_4@@44 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@0) o_4@@44 f_5@@30))
))) (forall ((o_4@@45 T@Ref) (f_5@@31 T@Field_17929_3474) ) (!  (=> (not (= f_5@@31 val)) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| ZeroMask) o_4@@45 f_5@@31) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@0) o_4@@45 f_5@@31)))
 :qid |stdinbpl.664:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| ZeroMask) o_4@@45 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@0) o_4@@45 f_5@@31))
))) (forall ((o_4@@46 T@Ref) (f_5@@32 T@Field_7810_30584) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| ZeroMask) o_4@@46 f_5@@32) (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@0) o_4@@46 f_5@@32)))
 :qid |stdinbpl.664:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| ZeroMask) o_4@@46 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@0) o_4@@46 f_5@@32))
))) (forall ((o_4@@47 T@Ref) (f_5@@33 T@Field_7810_30717) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| ZeroMask) o_4@@47 f_5@@33) (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@0) o_4@@47 f_5@@33)))
 :qid |stdinbpl.664:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| ZeroMask) o_4@@47 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@0) o_4@@47 f_5@@33))
))) (state Heap@@17 QPMask@0)) (and (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0)) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0)))) (and (=> (= (ControlFlow 0 42) (- 0 46)) (forall ((i_9_1 Int) (i_9_2 Int) ) (!  (=> (and (and (and (and (not (= i_9_1 i_9_2)) (and (<= 0 i_9_1) (< i_9_1 (len_1 a_2@0)))) (and (<= 0 i_9_2) (< i_9_2 (len_1 a_2@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@0 i_9_1) (loc a_2@0 i_9_2))))
 :qid |stdinbpl.695:21|
 :skolemid |98|
 :pattern ( (neverTriggered4 i_9_1) (neverTriggered4 i_9_2))
))) (=> (forall ((i_9_1@@0 Int) (i_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@0 i_9_2@@0)) (and (<= 0 i_9_1@@0) (< i_9_1@@0 (len_1 a_2@0)))) (and (<= 0 i_9_2@@0) (< i_9_2@@0 (len_1 a_2@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@0 i_9_1@@0) (loc a_2@0 i_9_2@@0))))
 :qid |stdinbpl.695:21|
 :skolemid |98|
 :pattern ( (neverTriggered4 i_9_1@@0) (neverTriggered4 i_9_2@@0))
)) (and (=> (= (ControlFlow 0 42) (- 0 45)) (forall ((i_9_1@@1 Int) ) (!  (=> (and (<= 0 i_9_1@@1) (< i_9_1@@1 (len_1 a_2@0))) (>= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@0) (loc a_2@0 i_9_1@@1) val) FullPerm))
 :qid |stdinbpl.702:21|
 :skolemid |99|
 :pattern ( (loc a_2@0 i_9_1@@1))
 :pattern ( (loc a_2@0 i_9_1@@1))
))) (=> (forall ((i_9_1@@2 Int) ) (!  (=> (and (<= 0 i_9_1@@2) (< i_9_1@@2 (len_1 a_2@0))) (>= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@0) (loc a_2@0 i_9_1@@2) val) FullPerm))
 :qid |stdinbpl.702:21|
 :skolemid |99|
 :pattern ( (loc a_2@0 i_9_1@@2))
 :pattern ( (loc a_2@0 i_9_1@@2))
)) (=> (forall ((i_9_1@@3 Int) ) (!  (=> (and (and (<= 0 i_9_1@@3) (< i_9_1@@3 (len_1 a_2@0))) (< NoPerm FullPerm)) (and (qpRange4 (loc a_2@0 i_9_1@@3)) (= (invRecv4 (loc a_2@0 i_9_1@@3)) i_9_1@@3)))
 :qid |stdinbpl.708:26|
 :skolemid |100|
 :pattern ( (loc a_2@0 i_9_1@@3))
 :pattern ( (loc a_2@0 i_9_1@@3))
)) (=> (and (forall ((o_4@@48 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv4 o_4@@48)) (< (invRecv4 o_4@@48) (len_1 a_2@0))) (and (< NoPerm FullPerm) (qpRange4 o_4@@48))) (= (loc a_2@0 (invRecv4 o_4@@48)) o_4@@48))
 :qid |stdinbpl.712:26|
 :skolemid |101|
 :pattern ( (invRecv4 o_4@@48))
)) (forall ((o_4@@49 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv4 o_4@@49)) (< (invRecv4 o_4@@49) (len_1 a_2@0))) (and (< NoPerm FullPerm) (qpRange4 o_4@@49))) (and (= (loc a_2@0 (invRecv4 o_4@@49)) o_4@@49) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@1) o_4@@49 val) (- (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@0) o_4@@49 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv4 o_4@@49)) (< (invRecv4 o_4@@49) (len_1 a_2@0))) (and (< NoPerm FullPerm) (qpRange4 o_4@@49)))) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@1) o_4@@49 val) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@0) o_4@@49 val))))
 :qid |stdinbpl.718:26|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@1) o_4@@49 val))
))) (=> (and (and (and (and (forall ((o_4@@50 T@Ref) (f_5@@34 T@Field_11636_53) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@0) o_4@@50 f_5@@34) (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@1) o_4@@50 f_5@@34)))
 :qid |stdinbpl.724:33|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_11597_7810_53#PolymorphicMapType_11597| QPMask@1) o_4@@50 f_5@@34))
)) (forall ((o_4@@51 T@Ref) (f_5@@35 T@Field_11649_11650) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@0) o_4@@51 f_5@@35) (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@1) o_4@@51 f_5@@35)))
 :qid |stdinbpl.724:33|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_11597_7810_11650#PolymorphicMapType_11597| QPMask@1) o_4@@51 f_5@@35))
))) (forall ((o_4@@52 T@Ref) (f_5@@36 T@Field_17929_3474) ) (!  (=> (not (= f_5@@36 val)) (= (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@0) o_4@@52 f_5@@36) (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@1) o_4@@52 f_5@@36)))
 :qid |stdinbpl.724:33|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_11597_7810_3474#PolymorphicMapType_11597| QPMask@1) o_4@@52 f_5@@36))
))) (forall ((o_4@@53 T@Ref) (f_5@@37 T@Field_7810_30584) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@0) o_4@@53 f_5@@37) (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@1) o_4@@53 f_5@@37)))
 :qid |stdinbpl.724:33|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_11597_7810_30584#PolymorphicMapType_11597| QPMask@1) o_4@@53 f_5@@37))
))) (forall ((o_4@@54 T@Ref) (f_5@@38 T@Field_7810_30717) ) (!  (=> true (= (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@0) o_4@@54 f_5@@38) (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@1) o_4@@54 f_5@@38)))
 :qid |stdinbpl.724:33|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_11597_7810_34839#PolymorphicMapType_11597| QPMask@1) o_4@@54 f_5@@38))
))) (and (=> (= (ControlFlow 0 42) (- 0 44)) (|Set#Subset_3621| vals_2 vals_2)) (=> (|Set#Subset_3621| vals_2 vals_2) (and (=> (= (ControlFlow 0 42) (- 0 43)) (= 0 (|Set#Card_3585| (|Set#Difference_3585| vals_2 vals_2)))) (=> (= 0 (|Set#Card_3585| (|Set#Difference_3585| vals_2 vals_2))) (and (and (=> (= (ControlFlow 0 42) 41) anon49_Else_correct) (=> (= (ControlFlow 0 42) 3) anon50_Then_correct)) (=> (= (ControlFlow 0 42) 5) anon50_Else_correct)))))))))))))))))))
(let ((anon48_Then_correct true))
(let ((anon41_Else_correct  (=> (state Heap@@17 ZeroMask) (=> (and (and (state Heap@@17 ZeroMask) (= (len_1 a_2@0) (|Set#Card_3585| vals_2))) (and (state Heap@@17 ZeroMask) (state Heap@@17 ZeroMask))) (and (=> (= (ControlFlow 0 48) 1) anon48_Then_correct) (=> (= (ControlFlow 0 48) 42) anon48_Else_correct))))))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 63) 62) anon41_Then_correct) (=> (= (ControlFlow 0 63) 48) anon41_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 64) 63) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
