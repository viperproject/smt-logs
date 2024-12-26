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
(declare-sort T@Field_10144_53 0)
(declare-sort T@Field_10157_10158 0)
(declare-sort T@Field_16336_3331 0)
(declare-sort T@Field_10144_27828 0)
(declare-sort T@Field_10144_27695 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10105 0)) (((PolymorphicMapType_10105 (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| (Array T@Ref T@Field_16336_3331 Real)) (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| (Array T@Ref T@Field_10144_53 Real)) (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| (Array T@Ref T@Field_10157_10158 Real)) (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| (Array T@Ref T@Field_10144_27695 Real)) (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| (Array T@Ref T@Field_10144_27828 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10633 0)) (((PolymorphicMapType_10633 (|PolymorphicMapType_10633_10144_53#PolymorphicMapType_10633| (Array T@Ref T@Field_10144_53 Bool)) (|PolymorphicMapType_10633_10144_10158#PolymorphicMapType_10633| (Array T@Ref T@Field_10157_10158 Bool)) (|PolymorphicMapType_10633_10144_3331#PolymorphicMapType_10633| (Array T@Ref T@Field_16336_3331 Bool)) (|PolymorphicMapType_10633_10144_27695#PolymorphicMapType_10633| (Array T@Ref T@Field_10144_27695 Bool)) (|PolymorphicMapType_10633_10144_29006#PolymorphicMapType_10633| (Array T@Ref T@Field_10144_27828 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10084 0)) (((PolymorphicMapType_10084 (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| (Array T@Ref T@Field_10144_53 Bool)) (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| (Array T@Ref T@Field_10157_10158 T@Ref)) (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| (Array T@Ref T@Field_16336_3331 Int)) (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| (Array T@Ref T@Field_10144_27828 T@PolymorphicMapType_10633)) (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| (Array T@Ref T@Field_10144_27695 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_10144_53)
(declare-fun f_7 () T@Field_16336_3331)
(declare-fun succHeap (T@PolymorphicMapType_10084 T@PolymorphicMapType_10084) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10084 T@PolymorphicMapType_10084) Bool)
(declare-fun state (T@PolymorphicMapType_10084 T@PolymorphicMapType_10105) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10105) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10633)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_6258| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_6258| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_6258| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_6258| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10084 T@PolymorphicMapType_10084 T@PolymorphicMapType_10105) Bool)
(declare-fun IsPredicateField_10144_27786 (T@Field_10144_27695) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_10144 (T@Field_10144_27695) T@Field_10144_27828)
(declare-fun HasDirectPerm_10144_27759 (T@PolymorphicMapType_10105 T@Ref T@Field_10144_27695) Bool)
(declare-fun IsWandField_10144_29533 (T@Field_10144_27695) Bool)
(declare-fun WandMaskField_10144 (T@Field_10144_27695) T@Field_10144_27828)
(declare-fun dummyHeap () T@PolymorphicMapType_10084)
(declare-fun ZeroMask () T@PolymorphicMapType_10105)
(declare-fun InsidePredicate_10144_10144 (T@Field_10144_27695 T@FrameType T@Field_10144_27695 T@FrameType) Bool)
(declare-fun IsPredicateField_6220_3331 (T@Field_16336_3331) Bool)
(declare-fun IsWandField_6220_3331 (T@Field_16336_3331) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6220_33079 (T@Field_10144_27828) Bool)
(declare-fun IsWandField_6220_33095 (T@Field_10144_27828) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6220_10158 (T@Field_10157_10158) Bool)
(declare-fun IsWandField_6220_10158 (T@Field_10157_10158) Bool)
(declare-fun IsPredicateField_6220_53 (T@Field_10144_53) Bool)
(declare-fun IsWandField_6220_53 (T@Field_10144_53) Bool)
(declare-fun HasDirectPerm_10144_33533 (T@PolymorphicMapType_10105 T@Ref T@Field_10144_27828) Bool)
(declare-fun HasDirectPerm_10144_3331 (T@PolymorphicMapType_10105 T@Ref T@Field_16336_3331) Bool)
(declare-fun HasDirectPerm_10144_10158 (T@PolymorphicMapType_10105 T@Ref T@Field_10157_10158) Bool)
(declare-fun HasDirectPerm_10144_53 (T@PolymorphicMapType_10105 T@Ref T@Field_10144_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10105 T@PolymorphicMapType_10105 T@PolymorphicMapType_10105) Bool)
(declare-fun |Set#Difference_6258| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_6279| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Empty_6258| () (Array T@Ref Bool))
(assert (forall ((Heap0 T@PolymorphicMapType_10084) (Heap1 T@PolymorphicMapType_10084) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10084) (Mask T@PolymorphicMapType_10105) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10084) (Heap1@@0 T@PolymorphicMapType_10084) (Heap2 T@PolymorphicMapType_10084) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10144_27828) ) (!  (not (select (|PolymorphicMapType_10633_10144_29006#PolymorphicMapType_10633| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10633_10144_29006#PolymorphicMapType_10633| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10144_27695) ) (!  (not (select (|PolymorphicMapType_10633_10144_27695#PolymorphicMapType_10633| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10633_10144_27695#PolymorphicMapType_10633| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_16336_3331) ) (!  (not (select (|PolymorphicMapType_10633_10144_3331#PolymorphicMapType_10633| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10633_10144_3331#PolymorphicMapType_10633| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10157_10158) ) (!  (not (select (|PolymorphicMapType_10633_10144_10158#PolymorphicMapType_10633| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10633_10144_10158#PolymorphicMapType_10633| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10144_53) ) (!  (not (select (|PolymorphicMapType_10633_10144_53#PolymorphicMapType_10633| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10633_10144_53#PolymorphicMapType_10633| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.303:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_6258| (|Set#Union_6258| a@@0 b@@0) b@@0) (|Set#Union_6258| a@@0 b@@0))
 :qid |stdinbpl.255:18|
 :skolemid |38|
 :pattern ( (|Set#Union_6258| (|Set#Union_6258| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_6258| (|Set#Intersection_6258| a@@1 b@@1) b@@1) (|Set#Intersection_6258| a@@1 b@@1))
 :qid |stdinbpl.259:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_6258| (|Set#Intersection_6258| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_6258| r) o) (= r o))
 :qid |stdinbpl.224:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_6258| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_6258| (|Set#Union_6258| a@@2 b@@2)) (|Set#Card_6258| (|Set#Intersection_6258| a@@2 b@@2))) (+ (|Set#Card_6258| a@@2) (|Set#Card_6258| b@@2)))
 :qid |stdinbpl.263:18|
 :skolemid |42|
 :pattern ( (|Set#Card_6258| (|Set#Union_6258| a@@2 b@@2)))
 :pattern ( (|Set#Card_6258| (|Set#Intersection_6258| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.306:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10084) (ExhaleHeap T@PolymorphicMapType_10084) (Mask@@0 T@PolymorphicMapType_10105) (pm_f_1 T@Field_10144_27695) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10144_27759 Mask@@0 null pm_f_1) (IsPredicateField_10144_27786 pm_f_1)) (= (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@0) null (PredicateMaskField_10144 pm_f_1)) (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| ExhaleHeap) null (PredicateMaskField_10144 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_10144_27786 pm_f_1) (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| ExhaleHeap) null (PredicateMaskField_10144 pm_f_1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10084) (ExhaleHeap@@0 T@PolymorphicMapType_10084) (Mask@@1 T@PolymorphicMapType_10105) (pm_f_1@@0 T@Field_10144_27695) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10144_27759 Mask@@1 null pm_f_1@@0) (IsWandField_10144_29533 pm_f_1@@0)) (= (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@1) null (WandMaskField_10144 pm_f_1@@0)) (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| ExhaleHeap@@0) null (WandMaskField_10144 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_10144_29533 pm_f_1@@0) (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| ExhaleHeap@@0) null (WandMaskField_10144 pm_f_1@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10084) (ExhaleHeap@@1 T@PolymorphicMapType_10084) (Mask@@2 T@PolymorphicMapType_10105) (o_3 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| Heap@@2) o_3 $allocated) (select (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| ExhaleHeap@@1) o_3 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| ExhaleHeap@@1) o_3 $allocated))
)))
(assert (forall ((p T@Field_10144_27695) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10144_10144 p v_1 p w))
 :qid |stdinbpl.201:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10144_10144 p v_1 p w))
)))
(assert  (not (IsPredicateField_6220_3331 f_7)))
(assert  (not (IsWandField_6220_3331 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10084) (ExhaleHeap@@2 T@PolymorphicMapType_10084) (Mask@@3 T@PolymorphicMapType_10105) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_10105) (o_2@@4 T@Ref) (f_4@@4 T@Field_10144_27828) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_6220_33079 f_4@@4))) (not (IsWandField_6220_33095 f_4@@4))) (<= (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_10105) (o_2@@5 T@Ref) (f_4@@5 T@Field_10144_27695) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_10144_27786 f_4@@5))) (not (IsWandField_10144_29533 f_4@@5))) (<= (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_10105) (o_2@@6 T@Ref) (f_4@@6 T@Field_10157_10158) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6220_10158 f_4@@6))) (not (IsWandField_6220_10158 f_4@@6))) (<= (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_10105) (o_2@@7 T@Ref) (f_4@@7 T@Field_10144_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6220_53 f_4@@7))) (not (IsWandField_6220_53 f_4@@7))) (<= (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10105) (o_2@@8 T@Ref) (f_4@@8 T@Field_16336_3331) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6220_3331 f_4@@8))) (not (IsWandField_6220_3331 f_4@@8))) (<= (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10105) (o_2@@9 T@Ref) (f_4@@9 T@Field_10144_27828) ) (! (= (HasDirectPerm_10144_33533 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10144_33533 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10105) (o_2@@10 T@Ref) (f_4@@10 T@Field_10144_27695) ) (! (= (HasDirectPerm_10144_27759 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10144_27759 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10105) (o_2@@11 T@Ref) (f_4@@11 T@Field_16336_3331) ) (! (= (HasDirectPerm_10144_3331 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10144_3331 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10105) (o_2@@12 T@Ref) (f_4@@12 T@Field_10157_10158) ) (! (= (HasDirectPerm_10144_10158 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10144_10158 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10105) (o_2@@13 T@Ref) (f_4@@13 T@Field_10144_53) ) (! (= (HasDirectPerm_10144_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10144_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10084) (ExhaleHeap@@3 T@PolymorphicMapType_10084) (Mask@@14 T@PolymorphicMapType_10105) (pm_f_1@@1 T@Field_10144_27695) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_10144_27759 Mask@@14 null pm_f_1@@1) (IsPredicateField_10144_27786 pm_f_1@@1)) (and (and (and (and (forall ((o2_1 T@Ref) (f_8 T@Field_10144_53) ) (!  (=> (select (|PolymorphicMapType_10633_10144_53#PolymorphicMapType_10633| (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@4) null (PredicateMaskField_10144 pm_f_1@@1))) o2_1 f_8) (= (select (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| Heap@@4) o2_1 f_8) (select (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| ExhaleHeap@@3) o2_1 f_8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| ExhaleHeap@@3) o2_1 f_8))
)) (forall ((o2_1@@0 T@Ref) (f_8@@0 T@Field_10157_10158) ) (!  (=> (select (|PolymorphicMapType_10633_10144_10158#PolymorphicMapType_10633| (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@4) null (PredicateMaskField_10144 pm_f_1@@1))) o2_1@@0 f_8@@0) (= (select (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| Heap@@4) o2_1@@0 f_8@@0) (select (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| ExhaleHeap@@3) o2_1@@0 f_8@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| ExhaleHeap@@3) o2_1@@0 f_8@@0))
))) (forall ((o2_1@@1 T@Ref) (f_8@@1 T@Field_16336_3331) ) (!  (=> (select (|PolymorphicMapType_10633_10144_3331#PolymorphicMapType_10633| (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@4) null (PredicateMaskField_10144 pm_f_1@@1))) o2_1@@1 f_8@@1) (= (select (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| Heap@@4) o2_1@@1 f_8@@1) (select (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| ExhaleHeap@@3) o2_1@@1 f_8@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| ExhaleHeap@@3) o2_1@@1 f_8@@1))
))) (forall ((o2_1@@2 T@Ref) (f_8@@2 T@Field_10144_27695) ) (!  (=> (select (|PolymorphicMapType_10633_10144_27695#PolymorphicMapType_10633| (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@4) null (PredicateMaskField_10144 pm_f_1@@1))) o2_1@@2 f_8@@2) (= (select (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| Heap@@4) o2_1@@2 f_8@@2) (select (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| ExhaleHeap@@3) o2_1@@2 f_8@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| ExhaleHeap@@3) o2_1@@2 f_8@@2))
))) (forall ((o2_1@@3 T@Ref) (f_8@@3 T@Field_10144_27828) ) (!  (=> (select (|PolymorphicMapType_10633_10144_29006#PolymorphicMapType_10633| (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@4) null (PredicateMaskField_10144 pm_f_1@@1))) o2_1@@3 f_8@@3) (= (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@4) o2_1@@3 f_8@@3) (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| ExhaleHeap@@3) o2_1@@3 f_8@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| ExhaleHeap@@3) o2_1@@3 f_8@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_10144_27786 pm_f_1@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10084) (ExhaleHeap@@4 T@PolymorphicMapType_10084) (Mask@@15 T@PolymorphicMapType_10105) (pm_f_1@@2 T@Field_10144_27695) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_10144_27759 Mask@@15 null pm_f_1@@2) (IsWandField_10144_29533 pm_f_1@@2)) (and (and (and (and (forall ((o2_1@@4 T@Ref) (f_8@@4 T@Field_10144_53) ) (!  (=> (select (|PolymorphicMapType_10633_10144_53#PolymorphicMapType_10633| (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@5) null (WandMaskField_10144 pm_f_1@@2))) o2_1@@4 f_8@@4) (= (select (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| Heap@@5) o2_1@@4 f_8@@4) (select (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| ExhaleHeap@@4) o2_1@@4 f_8@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| ExhaleHeap@@4) o2_1@@4 f_8@@4))
)) (forall ((o2_1@@5 T@Ref) (f_8@@5 T@Field_10157_10158) ) (!  (=> (select (|PolymorphicMapType_10633_10144_10158#PolymorphicMapType_10633| (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@5) null (WandMaskField_10144 pm_f_1@@2))) o2_1@@5 f_8@@5) (= (select (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| Heap@@5) o2_1@@5 f_8@@5) (select (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| ExhaleHeap@@4) o2_1@@5 f_8@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| ExhaleHeap@@4) o2_1@@5 f_8@@5))
))) (forall ((o2_1@@6 T@Ref) (f_8@@6 T@Field_16336_3331) ) (!  (=> (select (|PolymorphicMapType_10633_10144_3331#PolymorphicMapType_10633| (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@5) null (WandMaskField_10144 pm_f_1@@2))) o2_1@@6 f_8@@6) (= (select (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| Heap@@5) o2_1@@6 f_8@@6) (select (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| ExhaleHeap@@4) o2_1@@6 f_8@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| ExhaleHeap@@4) o2_1@@6 f_8@@6))
))) (forall ((o2_1@@7 T@Ref) (f_8@@7 T@Field_10144_27695) ) (!  (=> (select (|PolymorphicMapType_10633_10144_27695#PolymorphicMapType_10633| (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@5) null (WandMaskField_10144 pm_f_1@@2))) o2_1@@7 f_8@@7) (= (select (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| Heap@@5) o2_1@@7 f_8@@7) (select (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| ExhaleHeap@@4) o2_1@@7 f_8@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| ExhaleHeap@@4) o2_1@@7 f_8@@7))
))) (forall ((o2_1@@8 T@Ref) (f_8@@8 T@Field_10144_27828) ) (!  (=> (select (|PolymorphicMapType_10633_10144_29006#PolymorphicMapType_10633| (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@5) null (WandMaskField_10144 pm_f_1@@2))) o2_1@@8 f_8@@8) (= (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@5) o2_1@@8 f_8@@8) (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| ExhaleHeap@@4) o2_1@@8 f_8@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| ExhaleHeap@@4) o2_1@@8 f_8@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_10144_29533 pm_f_1@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.189:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10084) (ExhaleHeap@@5 T@PolymorphicMapType_10084) (Mask@@16 T@PolymorphicMapType_10105) (o_3@@0 T@Ref) (f_8@@9 T@Field_10144_27828) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_10144_33533 Mask@@16 o_3@@0 f_8@@9) (= (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@6) o_3@@0 f_8@@9) (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| ExhaleHeap@@5) o_3@@0 f_8@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| ExhaleHeap@@5) o_3@@0 f_8@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10084) (ExhaleHeap@@6 T@PolymorphicMapType_10084) (Mask@@17 T@PolymorphicMapType_10105) (o_3@@1 T@Ref) (f_8@@10 T@Field_10144_27695) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_10144_27759 Mask@@17 o_3@@1 f_8@@10) (= (select (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| Heap@@7) o_3@@1 f_8@@10) (select (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| ExhaleHeap@@6) o_3@@1 f_8@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| ExhaleHeap@@6) o_3@@1 f_8@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10084) (ExhaleHeap@@7 T@PolymorphicMapType_10084) (Mask@@18 T@PolymorphicMapType_10105) (o_3@@2 T@Ref) (f_8@@11 T@Field_16336_3331) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_10144_3331 Mask@@18 o_3@@2 f_8@@11) (= (select (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| Heap@@8) o_3@@2 f_8@@11) (select (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| ExhaleHeap@@7) o_3@@2 f_8@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| ExhaleHeap@@7) o_3@@2 f_8@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10084) (ExhaleHeap@@8 T@PolymorphicMapType_10084) (Mask@@19 T@PolymorphicMapType_10105) (o_3@@3 T@Ref) (f_8@@12 T@Field_10157_10158) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_10144_10158 Mask@@19 o_3@@3 f_8@@12) (= (select (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| Heap@@9) o_3@@3 f_8@@12) (select (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| ExhaleHeap@@8) o_3@@3 f_8@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| ExhaleHeap@@8) o_3@@3 f_8@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10084) (ExhaleHeap@@9 T@PolymorphicMapType_10084) (Mask@@20 T@PolymorphicMapType_10105) (o_3@@4 T@Ref) (f_8@@13 T@Field_10144_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_10144_53 Mask@@20 o_3@@4 f_8@@13) (= (select (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| Heap@@10) o_3@@4 f_8@@13) (select (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| ExhaleHeap@@9) o_3@@4 f_8@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| ExhaleHeap@@9) o_3@@4 f_8@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10144_27828) ) (! (= (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_10144_27695) ) (! (= (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_10157_10158) ) (! (= (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_10144_53) ) (! (= (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_16336_3331) ) (! (= (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10105) (SummandMask1 T@PolymorphicMapType_10105) (SummandMask2 T@PolymorphicMapType_10105) (o_2@@19 T@Ref) (f_4@@19 T@Field_10144_27828) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10105) (SummandMask1@@0 T@PolymorphicMapType_10105) (SummandMask2@@0 T@PolymorphicMapType_10105) (o_2@@20 T@Ref) (f_4@@20 T@Field_10144_27695) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10105) (SummandMask1@@1 T@PolymorphicMapType_10105) (SummandMask2@@1 T@PolymorphicMapType_10105) (o_2@@21 T@Ref) (f_4@@21 T@Field_10157_10158) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10105) (SummandMask1@@2 T@PolymorphicMapType_10105) (SummandMask2@@2 T@PolymorphicMapType_10105) (o_2@@22 T@Ref) (f_4@@22 T@Field_10144_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10105) (SummandMask1@@3 T@PolymorphicMapType_10105) (SummandMask2@@3 T@PolymorphicMapType_10105) (o_2@@23 T@Ref) (f_4@@23 T@Field_16336_3331) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_6258| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.252:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_6258| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_6258| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_6258| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_6258| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.267:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_6258| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_6258| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_6279| a@@6 x) y))
 :qid |stdinbpl.232:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_6279| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_6258| a@@7 b@@5) y@@0))
 :qid |stdinbpl.242:18|
 :skolemid |35|
 :pattern ( (|Set#Union_6258| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_6258| a@@8 b@@6) y@@1))
 :qid |stdinbpl.244:18|
 :skolemid |36|
 :pattern ( (|Set#Union_6258| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_6279| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.228:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_6279| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_6258| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.269:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_6258| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_6258| (|Set#Difference_6258| a@@11 b@@8)) (|Set#Card_6258| (|Set#Difference_6258| b@@8 a@@11))) (|Set#Card_6258| (|Set#Intersection_6258| a@@11 b@@8))) (|Set#Card_6258| (|Set#Union_6258| a@@11 b@@8))) (= (|Set#Card_6258| (|Set#Difference_6258| a@@11 b@@8)) (- (|Set#Card_6258| a@@11) (|Set#Card_6258| (|Set#Intersection_6258| a@@11 b@@8)))))
 :qid |stdinbpl.271:18|
 :skolemid |45|
 :pattern ( (|Set#Card_6258| (|Set#Difference_6258| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_6258| s))
 :qid |stdinbpl.214:18|
 :skolemid |22|
 :pattern ( (|Set#Card_6258| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_6279| a@@12 x@@1) x@@1)
 :qid |stdinbpl.230:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_6279| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_6258| (|Set#UnionOne_6279| a@@13 x@@2)) (|Set#Card_6258| a@@13)))
 :qid |stdinbpl.234:18|
 :skolemid |32|
 :pattern ( (|Set#Card_6258| (|Set#UnionOne_6279| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_6258| (|Set#Singleton_6258| r@@0)) 1)
 :qid |stdinbpl.225:18|
 :skolemid |28|
 :pattern ( (|Set#Card_6258| (|Set#Singleton_6258| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_6258| r@@1) r@@1)
 :qid |stdinbpl.223:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_6258| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_6258| a@@14 (|Set#Union_6258| a@@14 b@@9)) (|Set#Union_6258| a@@14 b@@9))
 :qid |stdinbpl.257:18|
 :skolemid |39|
 :pattern ( (|Set#Union_6258| a@@14 (|Set#Union_6258| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_6258| a@@15 (|Set#Intersection_6258| a@@15 b@@10)) (|Set#Intersection_6258| a@@15 b@@10))
 :qid |stdinbpl.261:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_6258| a@@15 (|Set#Intersection_6258| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_6258| o@@3))
 :qid |stdinbpl.217:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_6258| o@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10084) (o_1 T@Ref) (f_9 T@Field_10144_27695) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_10084 (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| Heap@@11) (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| Heap@@11) (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| Heap@@11) (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@11) (store (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| Heap@@11) o_1 f_9 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10084 (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| Heap@@11) (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| Heap@@11) (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| Heap@@11) (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@11) (store (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| Heap@@11) o_1 f_9 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10084) (o_1@@0 T@Ref) (f_9@@0 T@Field_10144_27828) (v@@0 T@PolymorphicMapType_10633) ) (! (succHeap Heap@@12 (PolymorphicMapType_10084 (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| Heap@@12) (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| Heap@@12) (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| Heap@@12) (store (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@12) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10084 (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| Heap@@12) (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| Heap@@12) (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| Heap@@12) (store (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@12) o_1@@0 f_9@@0 v@@0) (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10084) (o_1@@1 T@Ref) (f_9@@1 T@Field_16336_3331) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_10084 (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| Heap@@13) (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| Heap@@13) (store (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| Heap@@13) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@13) (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10084 (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| Heap@@13) (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| Heap@@13) (store (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| Heap@@13) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@13) (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10084) (o_1@@2 T@Ref) (f_9@@2 T@Field_10157_10158) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_10084 (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| Heap@@14) (store (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| Heap@@14) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| Heap@@14) (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@14) (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10084 (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| Heap@@14) (store (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| Heap@@14) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| Heap@@14) (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@14) (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10084) (o_1@@3 T@Ref) (f_9@@3 T@Field_10144_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_10084 (store (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| Heap@@15) o_1@@3 f_9@@3 v@@3) (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| Heap@@15) (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| Heap@@15) (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@15) (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10084 (store (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| Heap@@15) o_1@@3 f_9@@3 v@@3) (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| Heap@@15) (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| Heap@@15) (|PolymorphicMapType_10084_10144_27872#PolymorphicMapType_10084| Heap@@15) (|PolymorphicMapType_10084_10144_27695#PolymorphicMapType_10084| Heap@@15)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.301:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.302:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_6258| s@@0) 0) (= s@@0 |Set#Empty_6258|)) (=> (not (= (|Set#Card_6258| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.220:33|
 :skolemid |24|
))))
 :qid |stdinbpl.218:18|
 :skolemid |25|
 :pattern ( (|Set#Card_6258| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_6258| (|Set#UnionOne_6279| a@@18 x@@4)) (+ (|Set#Card_6258| a@@18) 1)))
 :qid |stdinbpl.236:18|
 :skolemid |33|
 :pattern ( (|Set#Card_6258| (|Set#UnionOne_6279| a@@18 x@@4)))
)))
(assert (forall ((o_1@@4 T@Ref) (f_2 T@Field_10157_10158) (Heap@@16 T@PolymorphicMapType_10084) ) (!  (=> (select (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| Heap@@16) o_1@@4 $allocated) (select (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| Heap@@16) (select (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| Heap@@16) o_1@@4 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10084_5910_5911#PolymorphicMapType_10084| Heap@@16) o_1@@4 f_2))
)))
(assert (forall ((p@@1 T@Field_10144_27695) (v_1@@0 T@FrameType) (q T@Field_10144_27695) (w@@0 T@FrameType) (r@@2 T@Field_10144_27695) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10144_10144 p@@1 v_1@@0 q w@@0) (InsidePredicate_10144_10144 q w@@0 r@@2 u)) (InsidePredicate_10144_10144 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10144_10144 p@@1 v_1@@0 q w@@0) (InsidePredicate_10144_10144 q w@@0 r@@2 u))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.307:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_6258| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.240:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_6258| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_10105)
(declare-fun x@@5 () T@Ref)
(declare-fun neverTriggered2 (T@Ref) Bool)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun Heap@@17 () T@PolymorphicMapType_10084)
(declare-fun QPMask@0 () T@PolymorphicMapType_10105)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_10084)
(declare-fun AssertMask@0 () T@PolymorphicMapType_10105)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(set-info :boogie-vc-id t1)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon8_correct true))
(let ((anon12_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 6) 3)) anon8_correct)))
(let ((anon12_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (<= FullPerm (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@1) x@@5 f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@1) x@@5 f_7)) (=> (= (ControlFlow 0 4) 3) anon8_correct))))))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 7) (- 0 9)) (forall ((z_1 T@Ref) (z_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= z_1 z_1_1)) (select xs z_1)) (select xs z_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_1 z_1_1)))
 :qid |stdinbpl.508:17|
 :skolemid |88|
 :pattern ( (neverTriggered2 z_1) (neverTriggered2 z_1_1))
))) (=> (forall ((z_1@@0 T@Ref) (z_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= z_1@@0 z_1_1@@0)) (select xs z_1@@0)) (select xs z_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_1@@0 z_1_1@@0)))
 :qid |stdinbpl.508:17|
 :skolemid |88|
 :pattern ( (neverTriggered2 z_1@@0) (neverTriggered2 z_1_1@@0))
)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (forall ((z_1@@1 T@Ref) ) (!  (=> (select xs z_1@@1) (>= (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@0) z_1@@1 f_7) FullPerm))
 :qid |stdinbpl.515:17|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| Heap@@17) z_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@1) z_1@@1 f_7))
 :pattern ( (select xs z_1@@1))
))) (=> (forall ((z_1@@2 T@Ref) ) (!  (=> (select xs z_1@@2) (>= (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@0) z_1@@2 f_7) FullPerm))
 :qid |stdinbpl.515:17|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| Heap@@17) z_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@1) z_1@@2 f_7))
 :pattern ( (select xs z_1@@2))
)) (=> (forall ((z_1@@3 T@Ref) ) (!  (=> (and (select xs z_1@@3) (< NoPerm FullPerm)) (and (qpRange2 z_1@@3) (= (invRecv2 z_1@@3) z_1@@3)))
 :qid |stdinbpl.521:22|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| Heap@@17) z_1@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@1) z_1@@3 f_7))
 :pattern ( (select xs z_1@@3))
)) (=> (and (forall ((o_4 T@Ref) ) (!  (=> (and (select xs (invRecv2 o_4)) (and (< NoPerm FullPerm) (qpRange2 o_4))) (= (invRecv2 o_4) o_4))
 :qid |stdinbpl.525:22|
 :skolemid |91|
 :pattern ( (invRecv2 o_4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (select xs (invRecv2 o_4@@0)) (and (< NoPerm FullPerm) (qpRange2 o_4@@0))) (and (= (invRecv2 o_4@@0) o_4@@0) (= (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@1) o_4@@0 f_7) (- (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@0) o_4@@0 f_7) FullPerm)))) (=> (not (and (select xs (invRecv2 o_4@@0)) (and (< NoPerm FullPerm) (qpRange2 o_4@@0)))) (= (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@1) o_4@@0 f_7) (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@0) o_4@@0 f_7))))
 :qid |stdinbpl.531:22|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@1) o_4@@0 f_7))
))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_10144_53) ) (!  (=> true (= (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| QPMask@0) o_4@@1 f_5) (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| QPMask@1) o_4@@1 f_5)))
 :qid |stdinbpl.537:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| QPMask@1) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_10157_10158) ) (!  (=> true (= (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| QPMask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| QPMask@1) o_4@@2 f_5@@0)))
 :qid |stdinbpl.537:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| QPMask@1) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_16336_3331) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@1) o_4@@3 f_5@@1)))
 :qid |stdinbpl.537:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@1) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_10144_27695) ) (!  (=> true (= (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| QPMask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| QPMask@1) o_4@@4 f_5@@2)))
 :qid |stdinbpl.537:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| QPMask@1) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_10144_27828) ) (!  (=> true (= (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| QPMask@0) o_4@@5 f_5@@3) (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| QPMask@1) o_4@@5 f_5@@3)))
 :qid |stdinbpl.537:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| QPMask@1) o_4@@5 f_5@@3))
))) (and (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1) (state ExhaleHeap@0 QPMask@1))) (and (=> (= (ControlFlow 0 7) 4) anon12_Then_correct) (=> (= (ControlFlow 0 7) 6) anon12_Else_correct)))))))))))
(let ((anon11_Then_correct true))
(let ((anon4_correct  (=> (and (= AssertMask@0 (PolymorphicMapType_10105 (store (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@0) x@@5 f_7 (- (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@0) x@@5 f_7) FullPerm)) (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| QPMask@0) (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| QPMask@0) (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| QPMask@0) (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| QPMask@0))) (state Heap@@17 QPMask@0)) (and (=> (= (ControlFlow 0 10) 2) anon11_Then_correct) (=> (= (ControlFlow 0 10) 7) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 13) 10)) anon4_correct)))
(let ((anon10_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (<= FullPerm (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@0) x@@5 f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@0) x@@5 f_7)) (=> (= (ControlFlow 0 11) 10) anon4_correct))))))
(let ((anon9_Else_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) (forall ((y_1 T@Ref) (y_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= y_1 y_1_1)) (select xs y_1)) (select xs y_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= y_1 y_1_1)))
 :qid |stdinbpl.438:15|
 :skolemid |82|
))) (=> (forall ((y_1@@0 T@Ref) (y_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= y_1@@0 y_1_1@@0)) (select xs y_1@@0)) (select xs y_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= y_1@@0 y_1_1@@0)))
 :qid |stdinbpl.438:15|
 :skolemid |82|
)) (=> (and (and (forall ((y_1@@1 T@Ref) ) (!  (=> (and (select xs y_1@@1) (< NoPerm FullPerm)) (and (qpRange1 y_1@@1) (= (invRecv1 y_1@@1) y_1@@1)))
 :qid |stdinbpl.444:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| Heap@@17) y_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@0) y_1@@1 f_7))
 :pattern ( (select xs y_1@@1))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (select xs (invRecv1 o_4@@6)) (< NoPerm FullPerm)) (qpRange1 o_4@@6)) (= (invRecv1 o_4@@6) o_4@@6))
 :qid |stdinbpl.448:22|
 :skolemid |84|
 :pattern ( (invRecv1 o_4@@6))
))) (and (forall ((y_1@@2 T@Ref) ) (!  (=> (select xs y_1@@2) (not (= y_1@@2 null)))
 :qid |stdinbpl.454:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_10084_6220_3331#PolymorphicMapType_10084| Heap@@17) y_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@0) y_1@@2 f_7))
 :pattern ( (select xs y_1@@2))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (select xs (invRecv1 o_4@@7)) (< NoPerm FullPerm)) (qpRange1 o_4@@7)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_4@@7) o_4@@7)) (= (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@0) o_4@@7 f_7) (+ (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| ZeroMask) o_4@@7 f_7) FullPerm)))) (=> (not (and (and (select xs (invRecv1 o_4@@7)) (< NoPerm FullPerm)) (qpRange1 o_4@@7))) (= (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@0) o_4@@7 f_7) (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| ZeroMask) o_4@@7 f_7))))
 :qid |stdinbpl.460:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@0) o_4@@7 f_7))
)))) (=> (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_10144_53) ) (!  (=> true (= (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| ZeroMask) o_4@@8 f_5@@4) (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| QPMask@0) o_4@@8 f_5@@4)))
 :qid |stdinbpl.464:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| ZeroMask) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_10105_6220_53#PolymorphicMapType_10105| QPMask@0) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_10157_10158) ) (!  (=> true (= (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| ZeroMask) o_4@@9 f_5@@5) (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| QPMask@0) o_4@@9 f_5@@5)))
 :qid |stdinbpl.464:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| ZeroMask) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_10105_6220_10158#PolymorphicMapType_10105| QPMask@0) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_16336_3331) ) (!  (=> (not (= f_5@@6 f_7)) (= (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| ZeroMask) o_4@@10 f_5@@6) (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@0) o_4@@10 f_5@@6)))
 :qid |stdinbpl.464:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| ZeroMask) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_10105_6220_3331#PolymorphicMapType_10105| QPMask@0) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_10144_27695) ) (!  (=> true (= (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| ZeroMask) o_4@@11 f_5@@7) (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| QPMask@0) o_4@@11 f_5@@7)))
 :qid |stdinbpl.464:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| ZeroMask) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_10105_6220_27695#PolymorphicMapType_10105| QPMask@0) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_10144_27828) ) (!  (=> true (= (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| ZeroMask) o_4@@12 f_5@@8) (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| QPMask@0) o_4@@12 f_5@@8)))
 :qid |stdinbpl.464:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| ZeroMask) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_10105_6220_31950#PolymorphicMapType_10105| QPMask@0) o_4@@12 f_5@@8))
))) (and (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0)) (and (select xs x@@5) (state Heap@@17 QPMask@0)))) (and (=> (= (ControlFlow 0 14) 11) anon10_Then_correct) (=> (= (ControlFlow 0 14) 13) anon10_Else_correct))))))))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_10084_5907_53#PolymorphicMapType_10084| Heap@@17) x@@5 $allocated)) (and (=> (= (ControlFlow 0 16) 1) anon9_Then_correct) (=> (= (ControlFlow 0 16) 14) anon9_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 17) 16) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
