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
(declare-sort T@Field_6270_53 0)
(declare-sort T@Field_6283_6284 0)
(declare-sort T@Field_12442_3211 0)
(declare-sort T@Field_3916_14952 0)
(declare-sort T@Field_3916_14819 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6231 0)) (((PolymorphicMapType_6231 (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| (Array T@Ref T@Field_12442_3211 Real)) (|PolymorphicMapType_6231_3916_53#PolymorphicMapType_6231| (Array T@Ref T@Field_6270_53 Real)) (|PolymorphicMapType_6231_3916_6284#PolymorphicMapType_6231| (Array T@Ref T@Field_6283_6284 Real)) (|PolymorphicMapType_6231_3916_14819#PolymorphicMapType_6231| (Array T@Ref T@Field_3916_14819 Real)) (|PolymorphicMapType_6231_3916_19074#PolymorphicMapType_6231| (Array T@Ref T@Field_3916_14952 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6759 0)) (((PolymorphicMapType_6759 (|PolymorphicMapType_6759_6270_53#PolymorphicMapType_6759| (Array T@Ref T@Field_6270_53 Bool)) (|PolymorphicMapType_6759_6270_6284#PolymorphicMapType_6759| (Array T@Ref T@Field_6283_6284 Bool)) (|PolymorphicMapType_6759_6270_3211#PolymorphicMapType_6759| (Array T@Ref T@Field_12442_3211 Bool)) (|PolymorphicMapType_6759_6270_14819#PolymorphicMapType_6759| (Array T@Ref T@Field_3916_14819 Bool)) (|PolymorphicMapType_6759_6270_16130#PolymorphicMapType_6759| (Array T@Ref T@Field_3916_14952 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6210 0)) (((PolymorphicMapType_6210 (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| (Array T@Ref T@Field_6270_53 Bool)) (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| (Array T@Ref T@Field_6283_6284 T@Ref)) (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| (Array T@Ref T@Field_12442_3211 Int)) (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| (Array T@Ref T@Field_3916_14952 T@PolymorphicMapType_6759)) (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| (Array T@Ref T@Field_3916_14819 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6270_53)
(declare-fun f_7 () T@Field_12442_3211)
(declare-fun succHeap (T@PolymorphicMapType_6210 T@PolymorphicMapType_6210) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6210 T@PolymorphicMapType_6210) Bool)
(declare-fun state (T@PolymorphicMapType_6210 T@PolymorphicMapType_6231) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6231) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6759)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_3921| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_3921| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_3921| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_3921| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6210 T@PolymorphicMapType_6210 T@PolymorphicMapType_6231) Bool)
(declare-fun IsPredicateField_3916_14910 (T@Field_3916_14819) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3916 (T@Field_3916_14819) T@Field_3916_14952)
(declare-fun HasDirectPerm_3916_14883 (T@PolymorphicMapType_6231 T@Ref T@Field_3916_14819) Bool)
(declare-fun IsWandField_3916_16657 (T@Field_3916_14819) Bool)
(declare-fun WandMaskField_3916 (T@Field_3916_14819) T@Field_3916_14952)
(declare-fun dummyHeap () T@PolymorphicMapType_6210)
(declare-fun ZeroMask () T@PolymorphicMapType_6231)
(declare-fun InsidePredicate_6270_6270 (T@Field_3916_14819 T@FrameType T@Field_3916_14819 T@FrameType) Bool)
(declare-fun IsPredicateField_3916_3211 (T@Field_12442_3211) Bool)
(declare-fun IsWandField_3916_3211 (T@Field_12442_3211) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3916_20203 (T@Field_3916_14952) Bool)
(declare-fun IsWandField_3916_20219 (T@Field_3916_14952) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3916_6284 (T@Field_6283_6284) Bool)
(declare-fun IsWandField_3916_6284 (T@Field_6283_6284) Bool)
(declare-fun IsPredicateField_3916_53 (T@Field_6270_53) Bool)
(declare-fun IsWandField_3916_53 (T@Field_6270_53) Bool)
(declare-fun |Set#Equal_3922| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun HasDirectPerm_3916_20657 (T@PolymorphicMapType_6231 T@Ref T@Field_3916_14952) Bool)
(declare-fun HasDirectPerm_3916_6284 (T@PolymorphicMapType_6231 T@Ref T@Field_6283_6284) Bool)
(declare-fun HasDirectPerm_3916_53 (T@PolymorphicMapType_6231 T@Ref T@Field_6270_53) Bool)
(declare-fun HasDirectPerm_3916_3211 (T@PolymorphicMapType_6231 T@Ref T@Field_12442_3211) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6231 T@PolymorphicMapType_6231 T@PolymorphicMapType_6231) Bool)
(declare-fun |Set#Difference_3921| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_3921| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Empty_3921| () (Array T@Ref Bool))
(assert (forall ((Heap0 T@PolymorphicMapType_6210) (Heap1 T@PolymorphicMapType_6210) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6210) (Mask T@PolymorphicMapType_6231) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6210) (Heap1@@0 T@PolymorphicMapType_6210) (Heap2 T@PolymorphicMapType_6210) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3916_14952) ) (!  (not (select (|PolymorphicMapType_6759_6270_16130#PolymorphicMapType_6759| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6759_6270_16130#PolymorphicMapType_6759| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3916_14819) ) (!  (not (select (|PolymorphicMapType_6759_6270_14819#PolymorphicMapType_6759| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6759_6270_14819#PolymorphicMapType_6759| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12442_3211) ) (!  (not (select (|PolymorphicMapType_6759_6270_3211#PolymorphicMapType_6759| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6759_6270_3211#PolymorphicMapType_6759| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6283_6284) ) (!  (not (select (|PolymorphicMapType_6759_6270_6284#PolymorphicMapType_6759| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6759_6270_6284#PolymorphicMapType_6759| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6270_53) ) (!  (not (select (|PolymorphicMapType_6759_6270_53#PolymorphicMapType_6759| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6759_6270_53#PolymorphicMapType_6759| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.288:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_3921| (|Set#Union_3921| a@@0 b@@0) b@@0) (|Set#Union_3921| a@@0 b@@0))
 :qid |stdinbpl.240:18|
 :skolemid |38|
 :pattern ( (|Set#Union_3921| (|Set#Union_3921| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_3921| (|Set#Intersection_3921| a@@1 b@@1) b@@1) (|Set#Intersection_3921| a@@1 b@@1))
 :qid |stdinbpl.244:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_3921| (|Set#Intersection_3921| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_3921| r) o) (= r o))
 :qid |stdinbpl.209:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_3921| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_3921| (|Set#Union_3921| a@@2 b@@2)) (|Set#Card_3921| (|Set#Intersection_3921| a@@2 b@@2))) (+ (|Set#Card_3921| a@@2) (|Set#Card_3921| b@@2)))
 :qid |stdinbpl.248:18|
 :skolemid |42|
 :pattern ( (|Set#Card_3921| (|Set#Union_3921| a@@2 b@@2)))
 :pattern ( (|Set#Card_3921| (|Set#Intersection_3921| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.291:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6210) (ExhaleHeap T@PolymorphicMapType_6210) (Mask@@0 T@PolymorphicMapType_6231) (pm_f_2 T@Field_3916_14819) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3916_14883 Mask@@0 null pm_f_2) (IsPredicateField_3916_14910 pm_f_2)) (= (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@0) null (PredicateMaskField_3916 pm_f_2)) (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| ExhaleHeap) null (PredicateMaskField_3916 pm_f_2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3916_14910 pm_f_2) (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| ExhaleHeap) null (PredicateMaskField_3916 pm_f_2)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6210) (ExhaleHeap@@0 T@PolymorphicMapType_6210) (Mask@@1 T@PolymorphicMapType_6231) (pm_f_2@@0 T@Field_3916_14819) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3916_14883 Mask@@1 null pm_f_2@@0) (IsWandField_3916_16657 pm_f_2@@0)) (= (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@1) null (WandMaskField_3916 pm_f_2@@0)) (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| ExhaleHeap@@0) null (WandMaskField_3916 pm_f_2@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_3916_16657 pm_f_2@@0) (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| ExhaleHeap@@0) null (WandMaskField_3916 pm_f_2@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6210) (ExhaleHeap@@1 T@PolymorphicMapType_6210) (Mask@@2 T@PolymorphicMapType_6231) (o_6 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| Heap@@2) o_6 $allocated) (select (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| ExhaleHeap@@1) o_6 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| ExhaleHeap@@1) o_6 $allocated))
)))
(assert (forall ((p T@Field_3916_14819) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6270_6270 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6270_6270 p v_1 p w))
)))
(assert  (not (IsPredicateField_3916_3211 f_7)))
(assert  (not (IsWandField_3916_3211 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6210) (ExhaleHeap@@2 T@PolymorphicMapType_6210) (Mask@@3 T@PolymorphicMapType_6231) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_6231) (o_2@@4 T@Ref) (f_4@@4 T@Field_3916_14952) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_6231_3916_19074#PolymorphicMapType_6231| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_3916_20203 f_4@@4))) (not (IsWandField_3916_20219 f_4@@4))) (<= (select (|PolymorphicMapType_6231_3916_19074#PolymorphicMapType_6231| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_6231_3916_19074#PolymorphicMapType_6231| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_6231) (o_2@@5 T@Ref) (f_4@@5 T@Field_3916_14819) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_6231_3916_14819#PolymorphicMapType_6231| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_3916_14910 f_4@@5))) (not (IsWandField_3916_16657 f_4@@5))) (<= (select (|PolymorphicMapType_6231_3916_14819#PolymorphicMapType_6231| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_6231_3916_14819#PolymorphicMapType_6231| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6231) (o_2@@6 T@Ref) (f_4@@6 T@Field_6283_6284) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6231_3916_6284#PolymorphicMapType_6231| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3916_6284 f_4@@6))) (not (IsWandField_3916_6284 f_4@@6))) (<= (select (|PolymorphicMapType_6231_3916_6284#PolymorphicMapType_6231| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6231_3916_6284#PolymorphicMapType_6231| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6231) (o_2@@7 T@Ref) (f_4@@7 T@Field_6270_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6231_3916_53#PolymorphicMapType_6231| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3916_53 f_4@@7))) (not (IsWandField_3916_53 f_4@@7))) (<= (select (|PolymorphicMapType_6231_3916_53#PolymorphicMapType_6231| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6231_3916_53#PolymorphicMapType_6231| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6231) (o_2@@8 T@Ref) (f_4@@8 T@Field_12442_3211) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3916_3211 f_4@@8))) (not (IsWandField_3916_3211 f_4@@8))) (<= (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) ) (! (= (|Set#Equal_3922| a@@4 b@@3) (forall ((o@@0 T@Ref) ) (! (= (select a@@4 o@@0) (select b@@3 o@@0))
 :qid |stdinbpl.273:31|
 :skolemid |48|
 :pattern ( (select a@@4 o@@0))
 :pattern ( (select b@@3 o@@0))
)))
 :qid |stdinbpl.272:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_3922| a@@4 b@@3))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6231) (o_2@@9 T@Ref) (f_4@@9 T@Field_3916_14952) ) (! (= (HasDirectPerm_3916_20657 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6231_3916_19074#PolymorphicMapType_6231| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3916_20657 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6231) (o_2@@10 T@Ref) (f_4@@10 T@Field_3916_14819) ) (! (= (HasDirectPerm_3916_14883 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6231_3916_14819#PolymorphicMapType_6231| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3916_14883 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6231) (o_2@@11 T@Ref) (f_4@@11 T@Field_6283_6284) ) (! (= (HasDirectPerm_3916_6284 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6231_3916_6284#PolymorphicMapType_6231| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3916_6284 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6231) (o_2@@12 T@Ref) (f_4@@12 T@Field_6270_53) ) (! (= (HasDirectPerm_3916_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6231_3916_53#PolymorphicMapType_6231| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3916_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6231) (o_2@@13 T@Ref) (f_4@@13 T@Field_12442_3211) ) (! (= (HasDirectPerm_3916_3211 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3916_3211 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6210) (ExhaleHeap@@3 T@PolymorphicMapType_6210) (Mask@@14 T@PolymorphicMapType_6231) (pm_f_2@@1 T@Field_3916_14819) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_3916_14883 Mask@@14 null pm_f_2@@1) (IsPredicateField_3916_14910 pm_f_2@@1)) (and (and (and (and (forall ((o2_2 T@Ref) (f_9 T@Field_6270_53) ) (!  (=> (select (|PolymorphicMapType_6759_6270_53#PolymorphicMapType_6759| (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@4) null (PredicateMaskField_3916 pm_f_2@@1))) o2_2 f_9) (= (select (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| Heap@@4) o2_2 f_9) (select (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| ExhaleHeap@@3) o2_2 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| ExhaleHeap@@3) o2_2 f_9))
)) (forall ((o2_2@@0 T@Ref) (f_9@@0 T@Field_6283_6284) ) (!  (=> (select (|PolymorphicMapType_6759_6270_6284#PolymorphicMapType_6759| (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@4) null (PredicateMaskField_3916 pm_f_2@@1))) o2_2@@0 f_9@@0) (= (select (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| Heap@@4) o2_2@@0 f_9@@0) (select (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| ExhaleHeap@@3) o2_2@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| ExhaleHeap@@3) o2_2@@0 f_9@@0))
))) (forall ((o2_2@@1 T@Ref) (f_9@@1 T@Field_12442_3211) ) (!  (=> (select (|PolymorphicMapType_6759_6270_3211#PolymorphicMapType_6759| (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@4) null (PredicateMaskField_3916 pm_f_2@@1))) o2_2@@1 f_9@@1) (= (select (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| Heap@@4) o2_2@@1 f_9@@1) (select (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| ExhaleHeap@@3) o2_2@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| ExhaleHeap@@3) o2_2@@1 f_9@@1))
))) (forall ((o2_2@@2 T@Ref) (f_9@@2 T@Field_3916_14819) ) (!  (=> (select (|PolymorphicMapType_6759_6270_14819#PolymorphicMapType_6759| (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@4) null (PredicateMaskField_3916 pm_f_2@@1))) o2_2@@2 f_9@@2) (= (select (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| Heap@@4) o2_2@@2 f_9@@2) (select (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| ExhaleHeap@@3) o2_2@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| ExhaleHeap@@3) o2_2@@2 f_9@@2))
))) (forall ((o2_2@@3 T@Ref) (f_9@@3 T@Field_3916_14952) ) (!  (=> (select (|PolymorphicMapType_6759_6270_16130#PolymorphicMapType_6759| (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@4) null (PredicateMaskField_3916 pm_f_2@@1))) o2_2@@3 f_9@@3) (= (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@4) o2_2@@3 f_9@@3) (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| ExhaleHeap@@3) o2_2@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| ExhaleHeap@@3) o2_2@@3 f_9@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_3916_14910 pm_f_2@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6210) (ExhaleHeap@@4 T@PolymorphicMapType_6210) (Mask@@15 T@PolymorphicMapType_6231) (pm_f_2@@2 T@Field_3916_14819) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_3916_14883 Mask@@15 null pm_f_2@@2) (IsWandField_3916_16657 pm_f_2@@2)) (and (and (and (and (forall ((o2_2@@4 T@Ref) (f_9@@4 T@Field_6270_53) ) (!  (=> (select (|PolymorphicMapType_6759_6270_53#PolymorphicMapType_6759| (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@5) null (WandMaskField_3916 pm_f_2@@2))) o2_2@@4 f_9@@4) (= (select (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| Heap@@5) o2_2@@4 f_9@@4) (select (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| ExhaleHeap@@4) o2_2@@4 f_9@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| ExhaleHeap@@4) o2_2@@4 f_9@@4))
)) (forall ((o2_2@@5 T@Ref) (f_9@@5 T@Field_6283_6284) ) (!  (=> (select (|PolymorphicMapType_6759_6270_6284#PolymorphicMapType_6759| (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@5) null (WandMaskField_3916 pm_f_2@@2))) o2_2@@5 f_9@@5) (= (select (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| Heap@@5) o2_2@@5 f_9@@5) (select (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| ExhaleHeap@@4) o2_2@@5 f_9@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| ExhaleHeap@@4) o2_2@@5 f_9@@5))
))) (forall ((o2_2@@6 T@Ref) (f_9@@6 T@Field_12442_3211) ) (!  (=> (select (|PolymorphicMapType_6759_6270_3211#PolymorphicMapType_6759| (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@5) null (WandMaskField_3916 pm_f_2@@2))) o2_2@@6 f_9@@6) (= (select (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| Heap@@5) o2_2@@6 f_9@@6) (select (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| ExhaleHeap@@4) o2_2@@6 f_9@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| ExhaleHeap@@4) o2_2@@6 f_9@@6))
))) (forall ((o2_2@@7 T@Ref) (f_9@@7 T@Field_3916_14819) ) (!  (=> (select (|PolymorphicMapType_6759_6270_14819#PolymorphicMapType_6759| (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@5) null (WandMaskField_3916 pm_f_2@@2))) o2_2@@7 f_9@@7) (= (select (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| Heap@@5) o2_2@@7 f_9@@7) (select (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| ExhaleHeap@@4) o2_2@@7 f_9@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| ExhaleHeap@@4) o2_2@@7 f_9@@7))
))) (forall ((o2_2@@8 T@Ref) (f_9@@8 T@Field_3916_14952) ) (!  (=> (select (|PolymorphicMapType_6759_6270_16130#PolymorphicMapType_6759| (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@5) null (WandMaskField_3916 pm_f_2@@2))) o2_2@@8 f_9@@8) (= (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@5) o2_2@@8 f_9@@8) (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| ExhaleHeap@@4) o2_2@@8 f_9@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| ExhaleHeap@@4) o2_2@@8 f_9@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_3916_16657 pm_f_2@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6210) (ExhaleHeap@@5 T@PolymorphicMapType_6210) (Mask@@16 T@PolymorphicMapType_6231) (o_6@@0 T@Ref) (f_9@@9 T@Field_3916_14952) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_3916_20657 Mask@@16 o_6@@0 f_9@@9) (= (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@6) o_6@@0 f_9@@9) (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| ExhaleHeap@@5) o_6@@0 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| ExhaleHeap@@5) o_6@@0 f_9@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6210) (ExhaleHeap@@6 T@PolymorphicMapType_6210) (Mask@@17 T@PolymorphicMapType_6231) (o_6@@1 T@Ref) (f_9@@10 T@Field_3916_14819) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_3916_14883 Mask@@17 o_6@@1 f_9@@10) (= (select (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| Heap@@7) o_6@@1 f_9@@10) (select (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| ExhaleHeap@@6) o_6@@1 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| ExhaleHeap@@6) o_6@@1 f_9@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6210) (ExhaleHeap@@7 T@PolymorphicMapType_6210) (Mask@@18 T@PolymorphicMapType_6231) (o_6@@2 T@Ref) (f_9@@11 T@Field_6283_6284) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_3916_6284 Mask@@18 o_6@@2 f_9@@11) (= (select (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| Heap@@8) o_6@@2 f_9@@11) (select (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| ExhaleHeap@@7) o_6@@2 f_9@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| ExhaleHeap@@7) o_6@@2 f_9@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6210) (ExhaleHeap@@8 T@PolymorphicMapType_6210) (Mask@@19 T@PolymorphicMapType_6231) (o_6@@3 T@Ref) (f_9@@12 T@Field_6270_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_3916_53 Mask@@19 o_6@@3 f_9@@12) (= (select (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| Heap@@9) o_6@@3 f_9@@12) (select (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| ExhaleHeap@@8) o_6@@3 f_9@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| ExhaleHeap@@8) o_6@@3 f_9@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6210) (ExhaleHeap@@9 T@PolymorphicMapType_6210) (Mask@@20 T@PolymorphicMapType_6231) (o_6@@4 T@Ref) (f_9@@13 T@Field_12442_3211) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_3916_3211 Mask@@20 o_6@@4 f_9@@13) (= (select (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| Heap@@10) o_6@@4 f_9@@13) (select (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| ExhaleHeap@@9) o_6@@4 f_9@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| ExhaleHeap@@9) o_6@@4 f_9@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3916_14952) ) (! (= (select (|PolymorphicMapType_6231_3916_19074#PolymorphicMapType_6231| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6231_3916_19074#PolymorphicMapType_6231| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3916_14819) ) (! (= (select (|PolymorphicMapType_6231_3916_14819#PolymorphicMapType_6231| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6231_3916_14819#PolymorphicMapType_6231| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6283_6284) ) (! (= (select (|PolymorphicMapType_6231_3916_6284#PolymorphicMapType_6231| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6231_3916_6284#PolymorphicMapType_6231| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6270_53) ) (! (= (select (|PolymorphicMapType_6231_3916_53#PolymorphicMapType_6231| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6231_3916_53#PolymorphicMapType_6231| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_12442_3211) ) (! (= (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6231) (SummandMask1 T@PolymorphicMapType_6231) (SummandMask2 T@PolymorphicMapType_6231) (o_2@@19 T@Ref) (f_4@@19 T@Field_3916_14952) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6231_3916_19074#PolymorphicMapType_6231| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6231_3916_19074#PolymorphicMapType_6231| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6231_3916_19074#PolymorphicMapType_6231| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6231_3916_19074#PolymorphicMapType_6231| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6231_3916_19074#PolymorphicMapType_6231| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6231_3916_19074#PolymorphicMapType_6231| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6231) (SummandMask1@@0 T@PolymorphicMapType_6231) (SummandMask2@@0 T@PolymorphicMapType_6231) (o_2@@20 T@Ref) (f_4@@20 T@Field_3916_14819) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6231_3916_14819#PolymorphicMapType_6231| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6231_3916_14819#PolymorphicMapType_6231| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6231_3916_14819#PolymorphicMapType_6231| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6231_3916_14819#PolymorphicMapType_6231| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6231_3916_14819#PolymorphicMapType_6231| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6231_3916_14819#PolymorphicMapType_6231| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6231) (SummandMask1@@1 T@PolymorphicMapType_6231) (SummandMask2@@1 T@PolymorphicMapType_6231) (o_2@@21 T@Ref) (f_4@@21 T@Field_6283_6284) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6231_3916_6284#PolymorphicMapType_6231| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6231_3916_6284#PolymorphicMapType_6231| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6231_3916_6284#PolymorphicMapType_6231| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6231_3916_6284#PolymorphicMapType_6231| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6231_3916_6284#PolymorphicMapType_6231| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6231_3916_6284#PolymorphicMapType_6231| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6231) (SummandMask1@@2 T@PolymorphicMapType_6231) (SummandMask2@@2 T@PolymorphicMapType_6231) (o_2@@22 T@Ref) (f_4@@22 T@Field_6270_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6231_3916_53#PolymorphicMapType_6231| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6231_3916_53#PolymorphicMapType_6231| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6231_3916_53#PolymorphicMapType_6231| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6231_3916_53#PolymorphicMapType_6231| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6231_3916_53#PolymorphicMapType_6231| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6231_3916_53#PolymorphicMapType_6231| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6231) (SummandMask1@@3 T@PolymorphicMapType_6231) (SummandMask2@@3 T@PolymorphicMapType_6231) (o_2@@23 T@Ref) (f_4@@23 T@Field_12442_3211) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Intersection_3921| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (select b@@4 o@@1)))
 :qid |stdinbpl.237:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_3921| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Intersection_3921| a@@5 b@@4) (select a@@5 o@@1))
 :pattern ( (|Set#Intersection_3921| a@@5 b@@4) (select b@@4 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (o@@2 T@Ref) ) (! (= (select (|Set#Difference_3921| a@@6 b@@5) o@@2)  (and (select a@@6 o@@2) (not (select b@@5 o@@2))))
 :qid |stdinbpl.252:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_3921| a@@6 b@@5) o@@2))
 :pattern ( (|Set#Difference_3921| a@@6 b@@5) (select a@@6 o@@2))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_3922| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.274:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_3922| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@8 y) (select (|Set#UnionOne_3921| a@@8 x) y))
 :qid |stdinbpl.217:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_3921| a@@8 x) (select a@@8 y))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@9 y@@0) (select (|Set#Union_3921| a@@9 b@@7) y@@0))
 :qid |stdinbpl.227:18|
 :skolemid |35|
 :pattern ( (|Set#Union_3921| a@@9 b@@7) (select a@@9 y@@0))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@8 y@@1) (select (|Set#Union_3921| a@@10 b@@8) y@@1))
 :qid |stdinbpl.229:18|
 :skolemid |36|
 :pattern ( (|Set#Union_3921| a@@10 b@@8) (select b@@8 y@@1))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@3 T@Ref) ) (! (= (select (|Set#UnionOne_3921| a@@11 x@@0) o@@3)  (or (= o@@3 x@@0) (select a@@11 o@@3)))
 :qid |stdinbpl.213:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_3921| a@@11 x@@0) o@@3))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@9 y@@2) (not (select (|Set#Difference_3921| a@@12 b@@9) y@@2)))
 :qid |stdinbpl.254:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_3921| a@@12 b@@9) (select b@@9 y@@2))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_3921| (|Set#Difference_3921| a@@13 b@@10)) (|Set#Card_3921| (|Set#Difference_3921| b@@10 a@@13))) (|Set#Card_3921| (|Set#Intersection_3921| a@@13 b@@10))) (|Set#Card_3921| (|Set#Union_3921| a@@13 b@@10))) (= (|Set#Card_3921| (|Set#Difference_3921| a@@13 b@@10)) (- (|Set#Card_3921| a@@13) (|Set#Card_3921| (|Set#Intersection_3921| a@@13 b@@10)))))
 :qid |stdinbpl.256:18|
 :skolemid |45|
 :pattern ( (|Set#Card_3921| (|Set#Difference_3921| a@@13 b@@10)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_3921| s))
 :qid |stdinbpl.199:18|
 :skolemid |22|
 :pattern ( (|Set#Card_3921| s))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_3921| a@@14 x@@1) x@@1)
 :qid |stdinbpl.215:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_3921| a@@14 x@@1))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@15 x@@2) (= (|Set#Card_3921| (|Set#UnionOne_3921| a@@15 x@@2)) (|Set#Card_3921| a@@15)))
 :qid |stdinbpl.219:18|
 :skolemid |32|
 :pattern ( (|Set#Card_3921| (|Set#UnionOne_3921| a@@15 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_3921| (|Set#Singleton_3921| r@@0)) 1)
 :qid |stdinbpl.210:18|
 :skolemid |28|
 :pattern ( (|Set#Card_3921| (|Set#Singleton_3921| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_3921| r@@1) r@@1)
 :qid |stdinbpl.208:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_3921| r@@1))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) ) (! (= (|Set#Union_3921| a@@16 (|Set#Union_3921| a@@16 b@@11)) (|Set#Union_3921| a@@16 b@@11))
 :qid |stdinbpl.242:18|
 :skolemid |39|
 :pattern ( (|Set#Union_3921| a@@16 (|Set#Union_3921| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_3921| a@@17 (|Set#Intersection_3921| a@@17 b@@12)) (|Set#Intersection_3921| a@@17 b@@12))
 :qid |stdinbpl.246:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_3921| a@@17 (|Set#Intersection_3921| a@@17 b@@12)))
)))
(assert (forall ((o@@4 T@Ref) ) (!  (not (select |Set#Empty_3921| o@@4))
 :qid |stdinbpl.202:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_3921| o@@4))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6210) (o_5 T@Ref) (f_10 T@Field_3916_14819) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_6210 (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| Heap@@11) (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| Heap@@11) (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| Heap@@11) (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@11) (store (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| Heap@@11) o_5 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6210 (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| Heap@@11) (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| Heap@@11) (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| Heap@@11) (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@11) (store (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| Heap@@11) o_5 f_10 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6210) (o_5@@0 T@Ref) (f_10@@0 T@Field_3916_14952) (v@@0 T@PolymorphicMapType_6759) ) (! (succHeap Heap@@12 (PolymorphicMapType_6210 (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| Heap@@12) (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| Heap@@12) (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| Heap@@12) (store (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@12) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6210 (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| Heap@@12) (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| Heap@@12) (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| Heap@@12) (store (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@12) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6210) (o_5@@1 T@Ref) (f_10@@1 T@Field_12442_3211) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_6210 (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| Heap@@13) (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| Heap@@13) (store (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| Heap@@13) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@13) (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6210 (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| Heap@@13) (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| Heap@@13) (store (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| Heap@@13) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@13) (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6210) (o_5@@2 T@Ref) (f_10@@2 T@Field_6283_6284) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_6210 (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| Heap@@14) (store (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| Heap@@14) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| Heap@@14) (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@14) (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6210 (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| Heap@@14) (store (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| Heap@@14) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| Heap@@14) (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@14) (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6210) (o_5@@3 T@Ref) (f_10@@3 T@Field_6270_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_6210 (store (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| Heap@@15) o_5@@3 f_10@@3 v@@3) (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| Heap@@15) (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| Heap@@15) (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@15) (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6210 (store (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| Heap@@15) o_5@@3 f_10@@3 v@@3) (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| Heap@@15) (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| Heap@@15) (|PolymorphicMapType_6210_3916_14996#PolymorphicMapType_6210| Heap@@15) (|PolymorphicMapType_6210_6270_14819#PolymorphicMapType_6210| Heap@@15)))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.286:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.287:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_3921| s@@0) 0) (= s@@0 |Set#Empty_3921|)) (=> (not (= (|Set#Card_3921| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.205:33|
 :skolemid |24|
))))
 :qid |stdinbpl.203:18|
 :skolemid |25|
 :pattern ( (|Set#Card_3921| s@@0))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@20 x@@4)) (= (|Set#Card_3921| (|Set#UnionOne_3921| a@@20 x@@4)) (+ (|Set#Card_3921| a@@20) 1)))
 :qid |stdinbpl.221:18|
 :skolemid |33|
 :pattern ( (|Set#Card_3921| (|Set#UnionOne_3921| a@@20 x@@4)))
)))
(assert (forall ((o_5@@4 T@Ref) (f_3 T@Field_6283_6284) (Heap@@16 T@PolymorphicMapType_6210) ) (!  (=> (select (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| Heap@@16) o_5@@4 $allocated) (select (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| Heap@@16) (select (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| Heap@@16) o_5@@4 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6210_3626_3627#PolymorphicMapType_6210| Heap@@16) o_5@@4 f_3))
)))
(assert (forall ((p@@1 T@Field_3916_14819) (v_1@@0 T@FrameType) (q T@Field_3916_14819) (w@@0 T@FrameType) (r@@2 T@Field_3916_14819) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6270_6270 p@@1 v_1@@0 q w@@0) (InsidePredicate_6270_6270 q w@@0 r@@2 u)) (InsidePredicate_6270_6270 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6270_6270 p@@1 v_1@@0 q w@@0) (InsidePredicate_6270_6270 q w@@0 r@@2 u))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.292:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Union_3921| a@@22 b@@15) o@@5)  (or (select a@@22 o@@5) (select b@@15 o@@5)))
 :qid |stdinbpl.225:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_3921| a@@22 b@@15) o@@5))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun s_2 () (Array T@Ref Bool))
(declare-fun Heap@@17 () T@PolymorphicMapType_6210)
(declare-fun QPMask@0 () T@PolymorphicMapType_6231)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun a_2 () T@Ref)
(declare-fun b_24 () T@Ref)
(set-info :boogie-vc-id foo_1)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon3_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 6)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select s_2 x_1)) (select s_2 x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.436:15|
 :skolemid |82|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select s_2 x_1@@0)) (select s_2 x_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.436:15|
 :skolemid |82|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (select s_2 x_1@@1) (< NoPerm FullPerm)) (and (qpRange1 x_1@@1) (= (invRecv1 x_1@@1) x_1@@1)))
 :qid |stdinbpl.442:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| Heap@@17) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| QPMask@0) x_1@@1 f_7))
 :pattern ( (select s_2 x_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select s_2 (invRecv1 o_4)) (< NoPerm FullPerm)) (qpRange1 o_4)) (= (invRecv1 o_4) o_4))
 :qid |stdinbpl.446:22|
 :skolemid |84|
 :pattern ( (invRecv1 o_4))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (select s_2 x_1@@2) (not (= x_1@@2 null)))
 :qid |stdinbpl.452:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| Heap@@17) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| QPMask@0) x_1@@2 f_7))
 :pattern ( (select s_2 x_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select s_2 (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| ZeroMask) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (select s_2 (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.458:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| QPMask@0) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_6270_53) ) (!  (=> true (= (select (|PolymorphicMapType_6231_3916_53#PolymorphicMapType_6231| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_6231_3916_53#PolymorphicMapType_6231| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.462:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6231_3916_53#PolymorphicMapType_6231| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_6231_3916_53#PolymorphicMapType_6231| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_6283_6284) ) (!  (=> true (= (select (|PolymorphicMapType_6231_3916_6284#PolymorphicMapType_6231| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_6231_3916_6284#PolymorphicMapType_6231| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.462:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6231_3916_6284#PolymorphicMapType_6231| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_6231_3916_6284#PolymorphicMapType_6231| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_12442_3211) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.462:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_6231_3916_3211#PolymorphicMapType_6231| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_3916_14819) ) (!  (=> true (= (select (|PolymorphicMapType_6231_3916_14819#PolymorphicMapType_6231| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_6231_3916_14819#PolymorphicMapType_6231| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.462:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6231_3916_14819#PolymorphicMapType_6231| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_6231_3916_14819#PolymorphicMapType_6231| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_3916_14952) ) (!  (=> true (= (select (|PolymorphicMapType_6231_3916_19074#PolymorphicMapType_6231| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_6231_3916_19074#PolymorphicMapType_6231| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.462:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6231_3916_19074#PolymorphicMapType_6231| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_6231_3916_19074#PolymorphicMapType_6231| QPMask@0) o_4@@5 f_5@@3))
))) (state Heap@@17 QPMask@0)) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (HasDirectPerm_3916_3211 QPMask@0 a_2 f_7)) (=> (HasDirectPerm_3916_3211 QPMask@0 a_2 f_7) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_3916_3211 QPMask@0 b_24 f_7)) (=> (HasDirectPerm_3916_3211 QPMask@0 b_24 f_7) (=> (= (ControlFlow 0 3) (- 0 2)) (= (select (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| Heap@@17) a_2 f_7) (select (|PolymorphicMapType_6210_3916_3211#PolymorphicMapType_6210| Heap@@17) b_24 f_7)))))))))))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| Heap@@17) a_2 $allocated)) (and (select (|PolymorphicMapType_6210_3623_53#PolymorphicMapType_6210| Heap@@17) b_24 $allocated) (|Set#Equal_3922| s_2 (|Set#UnionOne_3921| (|Set#Singleton_3921| b_24) a_2)))) (and (and (not (= a_2 null)) (not (= b_24 null))) (and (state Heap@@17 ZeroMask) (state Heap@@17 ZeroMask)))) (and (=> (= (ControlFlow 0 7) 1) anon3_Then_correct) (=> (= (ControlFlow 0 7) 3) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
