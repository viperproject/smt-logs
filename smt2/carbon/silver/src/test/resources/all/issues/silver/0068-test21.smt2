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
(declare-sort T@Field_8186_53 0)
(declare-sort T@Field_8199_8200 0)
(declare-sort T@Field_8186_20328 0)
(declare-sort T@Field_8186_20195 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8147 0)) (((PolymorphicMapType_8147 (|PolymorphicMapType_8147_8186_53#PolymorphicMapType_8147| (Array T@Ref T@Field_8186_53 Real)) (|PolymorphicMapType_8147_8186_8200#PolymorphicMapType_8147| (Array T@Ref T@Field_8199_8200 Real)) (|PolymorphicMapType_8147_8186_20195#PolymorphicMapType_8147| (Array T@Ref T@Field_8186_20195 Real)) (|PolymorphicMapType_8147_8186_23889#PolymorphicMapType_8147| (Array T@Ref T@Field_8186_20328 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8675 0)) (((PolymorphicMapType_8675 (|PolymorphicMapType_8675_8186_53#PolymorphicMapType_8675| (Array T@Ref T@Field_8186_53 Bool)) (|PolymorphicMapType_8675_8186_8200#PolymorphicMapType_8675| (Array T@Ref T@Field_8199_8200 Bool)) (|PolymorphicMapType_8675_8186_20195#PolymorphicMapType_8675| (Array T@Ref T@Field_8186_20195 Bool)) (|PolymorphicMapType_8675_8186_21308#PolymorphicMapType_8675| (Array T@Ref T@Field_8186_20328 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8126 0)) (((PolymorphicMapType_8126 (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| (Array T@Ref T@Field_8186_53 Bool)) (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| (Array T@Ref T@Field_8199_8200 T@Ref)) (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| (Array T@Ref T@Field_8186_20328 T@PolymorphicMapType_8675)) (|PolymorphicMapType_8126_8186_20195#PolymorphicMapType_8126| (Array T@Ref T@Field_8186_20195 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_8126 T@PolymorphicMapType_8126) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8126 T@PolymorphicMapType_8126) Bool)
(declare-fun state (T@PolymorphicMapType_8126 T@PolymorphicMapType_8147) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8147) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8675)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_4756| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_4622| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_4756| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_4756| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8126 T@PolymorphicMapType_8126 T@PolymorphicMapType_8147) Bool)
(declare-fun IsPredicateField_8186_20286 (T@Field_8186_20195) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8186 (T@Field_8186_20195) T@Field_8186_20328)
(declare-fun HasDirectPerm_8186_20259 (T@PolymorphicMapType_8147 T@Ref T@Field_8186_20195) Bool)
(declare-fun IsWandField_8186_21835 (T@Field_8186_20195) Bool)
(declare-fun WandMaskField_8186 (T@Field_8186_20195) T@Field_8186_20328)
(declare-fun dummyHeap () T@PolymorphicMapType_8126)
(declare-fun ZeroMask () T@PolymorphicMapType_8147)
(declare-fun $allocated () T@Field_8186_53)
(declare-fun InsidePredicate_8186_8186 (T@Field_8186_20195 T@FrameType T@Field_8186_20195 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8186_24798 (T@Field_8186_20328) Bool)
(declare-fun IsWandField_8186_24814 (T@Field_8186_20328) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8186_8200 (T@Field_8199_8200) Bool)
(declare-fun IsWandField_8186_8200 (T@Field_8199_8200) Bool)
(declare-fun IsPredicateField_8186_53 (T@Field_8186_53) Bool)
(declare-fun IsWandField_8186_53 (T@Field_8186_53) Bool)
(declare-fun |Set#Equal_4622| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun HasDirectPerm_8186_25169 (T@PolymorphicMapType_8147 T@Ref T@Field_8186_20328) Bool)
(declare-fun HasDirectPerm_8186_8200 (T@PolymorphicMapType_8147 T@Ref T@Field_8199_8200) Bool)
(declare-fun HasDirectPerm_8186_53 (T@PolymorphicMapType_8147 T@Ref T@Field_8186_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8147 T@PolymorphicMapType_8147 T@PolymorphicMapType_8147) Bool)
(declare-fun |Set#Difference_4756| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_4756| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Empty_4756| () (Array T@Ref Bool))
(assert (forall ((Heap0 T@PolymorphicMapType_8126) (Heap1 T@PolymorphicMapType_8126) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8126) (Mask T@PolymorphicMapType_8147) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8126) (Heap1@@0 T@PolymorphicMapType_8126) (Heap2 T@PolymorphicMapType_8126) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8186_20328) ) (!  (not (select (|PolymorphicMapType_8675_8186_21308#PolymorphicMapType_8675| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8675_8186_21308#PolymorphicMapType_8675| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8186_20195) ) (!  (not (select (|PolymorphicMapType_8675_8186_20195#PolymorphicMapType_8675| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8675_8186_20195#PolymorphicMapType_8675| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8199_8200) ) (!  (not (select (|PolymorphicMapType_8675_8186_8200#PolymorphicMapType_8675| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8675_8186_8200#PolymorphicMapType_8675| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8186_53) ) (!  (not (select (|PolymorphicMapType_8675_8186_53#PolymorphicMapType_8675| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8675_8186_53#PolymorphicMapType_8675| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.273:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_4756| (|Set#Union_4756| a@@0 b@@0) b@@0) (|Set#Union_4756| a@@0 b@@0))
 :qid |stdinbpl.225:18|
 :skolemid |38|
 :pattern ( (|Set#Union_4756| (|Set#Union_4756| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_4622| (|Set#Intersection_4622| a@@1 b@@1) b@@1) (|Set#Intersection_4622| a@@1 b@@1))
 :qid |stdinbpl.229:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_4622| (|Set#Intersection_4622| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_4756| r) o) (= r o))
 :qid |stdinbpl.194:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_4756| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_4756| (|Set#Union_4756| a@@2 b@@2)) (|Set#Card_4756| (|Set#Intersection_4622| a@@2 b@@2))) (+ (|Set#Card_4756| a@@2) (|Set#Card_4756| b@@2)))
 :qid |stdinbpl.233:18|
 :skolemid |42|
 :pattern ( (|Set#Card_4756| (|Set#Union_4756| a@@2 b@@2)))
 :pattern ( (|Set#Card_4756| (|Set#Intersection_4622| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.276:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8126) (ExhaleHeap T@PolymorphicMapType_8126) (Mask@@0 T@PolymorphicMapType_8147) (pm_f T@Field_8186_20195) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8186_20259 Mask@@0 null pm_f) (IsPredicateField_8186_20286 pm_f)) (= (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@0) null (PredicateMaskField_8186 pm_f)) (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| ExhaleHeap) null (PredicateMaskField_8186 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_8186_20286 pm_f) (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| ExhaleHeap) null (PredicateMaskField_8186 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8126) (ExhaleHeap@@0 T@PolymorphicMapType_8126) (Mask@@1 T@PolymorphicMapType_8147) (pm_f@@0 T@Field_8186_20195) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8186_20259 Mask@@1 null pm_f@@0) (IsWandField_8186_21835 pm_f@@0)) (= (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@1) null (WandMaskField_8186 pm_f@@0)) (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| ExhaleHeap@@0) null (WandMaskField_8186 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_8186_21835 pm_f@@0) (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| ExhaleHeap@@0) null (WandMaskField_8186 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8126) (ExhaleHeap@@1 T@PolymorphicMapType_8126) (Mask@@2 T@PolymorphicMapType_8147) (pm_f@@1 T@Field_8186_20195) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8186_20259 Mask@@2 null pm_f@@1) (IsPredicateField_8186_20286 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_8186_53) ) (!  (=> (select (|PolymorphicMapType_8675_8186_53#PolymorphicMapType_8675| (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@2) null (PredicateMaskField_8186 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| Heap@@2) o2 f_2) (select (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_8199_8200) ) (!  (=> (select (|PolymorphicMapType_8675_8186_8200#PolymorphicMapType_8675| (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@2) null (PredicateMaskField_8186 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| Heap@@2) o2@@0 f_2@@0) (select (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_8186_20195) ) (!  (=> (select (|PolymorphicMapType_8675_8186_20195#PolymorphicMapType_8675| (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@2) null (PredicateMaskField_8186 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_8126_8186_20195#PolymorphicMapType_8126| Heap@@2) o2@@1 f_2@@1) (select (|PolymorphicMapType_8126_8186_20195#PolymorphicMapType_8126| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8126_8186_20195#PolymorphicMapType_8126| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_8186_20328) ) (!  (=> (select (|PolymorphicMapType_8675_8186_21308#PolymorphicMapType_8675| (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@2) null (PredicateMaskField_8186 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@2) o2@@2 f_2@@2) (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_8186_20286 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8126) (ExhaleHeap@@2 T@PolymorphicMapType_8126) (Mask@@3 T@PolymorphicMapType_8147) (pm_f@@2 T@Field_8186_20195) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_8186_20259 Mask@@3 null pm_f@@2) (IsWandField_8186_21835 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_8186_53) ) (!  (=> (select (|PolymorphicMapType_8675_8186_53#PolymorphicMapType_8675| (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@3) null (WandMaskField_8186 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| Heap@@3) o2@@3 f_2@@3) (select (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_8199_8200) ) (!  (=> (select (|PolymorphicMapType_8675_8186_8200#PolymorphicMapType_8675| (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@3) null (WandMaskField_8186 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| Heap@@3) o2@@4 f_2@@4) (select (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_8186_20195) ) (!  (=> (select (|PolymorphicMapType_8675_8186_20195#PolymorphicMapType_8675| (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@3) null (WandMaskField_8186 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_8126_8186_20195#PolymorphicMapType_8126| Heap@@3) o2@@5 f_2@@5) (select (|PolymorphicMapType_8126_8186_20195#PolymorphicMapType_8126| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8126_8186_20195#PolymorphicMapType_8126| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_8186_20328) ) (!  (=> (select (|PolymorphicMapType_8675_8186_21308#PolymorphicMapType_8675| (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@3) null (WandMaskField_8186 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@3) o2@@6 f_2@@6) (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_8186_21835 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8126) (ExhaleHeap@@3 T@PolymorphicMapType_8126) (Mask@@4 T@PolymorphicMapType_8147) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| Heap@@4) o_1 $allocated) (select (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_8186_20195) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8186_8186 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8186_8186 p v_1 p w))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8126) (ExhaleHeap@@4 T@PolymorphicMapType_8126) (Mask@@5 T@PolymorphicMapType_8147) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_8147) (o_2@@3 T@Ref) (f_4@@3 T@Field_8186_20328) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_8147_8186_23889#PolymorphicMapType_8147| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_8186_24798 f_4@@3))) (not (IsWandField_8186_24814 f_4@@3))) (<= (select (|PolymorphicMapType_8147_8186_23889#PolymorphicMapType_8147| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_8147_8186_23889#PolymorphicMapType_8147| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_8147) (o_2@@4 T@Ref) (f_4@@4 T@Field_8186_20195) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_8147_8186_20195#PolymorphicMapType_8147| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_8186_20286 f_4@@4))) (not (IsWandField_8186_21835 f_4@@4))) (<= (select (|PolymorphicMapType_8147_8186_20195#PolymorphicMapType_8147| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_8147_8186_20195#PolymorphicMapType_8147| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8147) (o_2@@5 T@Ref) (f_4@@5 T@Field_8199_8200) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8147_8186_8200#PolymorphicMapType_8147| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8186_8200 f_4@@5))) (not (IsWandField_8186_8200 f_4@@5))) (<= (select (|PolymorphicMapType_8147_8186_8200#PolymorphicMapType_8147| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8147_8186_8200#PolymorphicMapType_8147| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8147) (o_2@@6 T@Ref) (f_4@@6 T@Field_8186_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_8147_8186_53#PolymorphicMapType_8147| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_8186_53 f_4@@6))) (not (IsWandField_8186_53 f_4@@6))) (<= (select (|PolymorphicMapType_8147_8186_53#PolymorphicMapType_8147| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_8147_8186_53#PolymorphicMapType_8147| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) ) (! (= (|Set#Equal_4622| a@@4 b@@3) (forall ((o@@0 T@Ref) ) (! (= (select a@@4 o@@0) (select b@@3 o@@0))
 :qid |stdinbpl.258:31|
 :skolemid |48|
 :pattern ( (select a@@4 o@@0))
 :pattern ( (select b@@3 o@@0))
)))
 :qid |stdinbpl.257:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_4622| a@@4 b@@3))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8147) (o_2@@7 T@Ref) (f_4@@7 T@Field_8186_20328) ) (! (= (HasDirectPerm_8186_25169 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_8147_8186_23889#PolymorphicMapType_8147| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8186_25169 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8147) (o_2@@8 T@Ref) (f_4@@8 T@Field_8186_20195) ) (! (= (HasDirectPerm_8186_20259 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_8147_8186_20195#PolymorphicMapType_8147| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8186_20259 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8147) (o_2@@9 T@Ref) (f_4@@9 T@Field_8199_8200) ) (! (= (HasDirectPerm_8186_8200 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_8147_8186_8200#PolymorphicMapType_8147| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8186_8200 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8147) (o_2@@10 T@Ref) (f_4@@10 T@Field_8186_53) ) (! (= (HasDirectPerm_8186_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_8147_8186_53#PolymorphicMapType_8147| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8186_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8126) (ExhaleHeap@@5 T@PolymorphicMapType_8126) (Mask@@14 T@PolymorphicMapType_8147) (o_1@@0 T@Ref) (f_2@@7 T@Field_8186_20328) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_8186_25169 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@6) o_1@@0 f_2@@7) (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8126) (ExhaleHeap@@6 T@PolymorphicMapType_8126) (Mask@@15 T@PolymorphicMapType_8147) (o_1@@1 T@Ref) (f_2@@8 T@Field_8186_20195) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_8186_20259 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_8126_8186_20195#PolymorphicMapType_8126| Heap@@7) o_1@@1 f_2@@8) (select (|PolymorphicMapType_8126_8186_20195#PolymorphicMapType_8126| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_8126_8186_20195#PolymorphicMapType_8126| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8126) (ExhaleHeap@@7 T@PolymorphicMapType_8126) (Mask@@16 T@PolymorphicMapType_8147) (o_1@@2 T@Ref) (f_2@@9 T@Field_8199_8200) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_8186_8200 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| Heap@@8) o_1@@2 f_2@@9) (select (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8126) (ExhaleHeap@@8 T@PolymorphicMapType_8126) (Mask@@17 T@PolymorphicMapType_8147) (o_1@@3 T@Ref) (f_2@@10 T@Field_8186_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_8186_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| Heap@@9) o_1@@3 f_2@@10) (select (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_8186_20328) ) (! (= (select (|PolymorphicMapType_8147_8186_23889#PolymorphicMapType_8147| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8147_8186_23889#PolymorphicMapType_8147| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_8186_20195) ) (! (= (select (|PolymorphicMapType_8147_8186_20195#PolymorphicMapType_8147| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8147_8186_20195#PolymorphicMapType_8147| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_8199_8200) ) (! (= (select (|PolymorphicMapType_8147_8186_8200#PolymorphicMapType_8147| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8147_8186_8200#PolymorphicMapType_8147| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_8186_53) ) (! (= (select (|PolymorphicMapType_8147_8186_53#PolymorphicMapType_8147| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8147_8186_53#PolymorphicMapType_8147| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8147) (SummandMask1 T@PolymorphicMapType_8147) (SummandMask2 T@PolymorphicMapType_8147) (o_2@@15 T@Ref) (f_4@@15 T@Field_8186_20328) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8147_8186_23889#PolymorphicMapType_8147| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_8147_8186_23889#PolymorphicMapType_8147| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_8147_8186_23889#PolymorphicMapType_8147| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8147_8186_23889#PolymorphicMapType_8147| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8147_8186_23889#PolymorphicMapType_8147| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8147_8186_23889#PolymorphicMapType_8147| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8147) (SummandMask1@@0 T@PolymorphicMapType_8147) (SummandMask2@@0 T@PolymorphicMapType_8147) (o_2@@16 T@Ref) (f_4@@16 T@Field_8186_20195) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8147_8186_20195#PolymorphicMapType_8147| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_8147_8186_20195#PolymorphicMapType_8147| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_8147_8186_20195#PolymorphicMapType_8147| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8147_8186_20195#PolymorphicMapType_8147| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8147_8186_20195#PolymorphicMapType_8147| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8147_8186_20195#PolymorphicMapType_8147| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8147) (SummandMask1@@1 T@PolymorphicMapType_8147) (SummandMask2@@1 T@PolymorphicMapType_8147) (o_2@@17 T@Ref) (f_4@@17 T@Field_8199_8200) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8147_8186_8200#PolymorphicMapType_8147| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_8147_8186_8200#PolymorphicMapType_8147| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_8147_8186_8200#PolymorphicMapType_8147| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8147_8186_8200#PolymorphicMapType_8147| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8147_8186_8200#PolymorphicMapType_8147| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8147_8186_8200#PolymorphicMapType_8147| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8147) (SummandMask1@@2 T@PolymorphicMapType_8147) (SummandMask2@@2 T@PolymorphicMapType_8147) (o_2@@18 T@Ref) (f_4@@18 T@Field_8186_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8147_8186_53#PolymorphicMapType_8147| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_8147_8186_53#PolymorphicMapType_8147| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_8147_8186_53#PolymorphicMapType_8147| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8147_8186_53#PolymorphicMapType_8147| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8147_8186_53#PolymorphicMapType_8147| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8147_8186_53#PolymorphicMapType_8147| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Intersection_4622| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (select b@@4 o@@1)))
 :qid |stdinbpl.222:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_4622| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Intersection_4622| a@@5 b@@4) (select a@@5 o@@1))
 :pattern ( (|Set#Intersection_4622| a@@5 b@@4) (select b@@4 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (o@@2 T@Ref) ) (! (= (select (|Set#Difference_4756| a@@6 b@@5) o@@2)  (and (select a@@6 o@@2) (not (select b@@5 o@@2))))
 :qid |stdinbpl.237:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_4756| a@@6 b@@5) o@@2))
 :pattern ( (|Set#Difference_4756| a@@6 b@@5) (select a@@6 o@@2))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_4622| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.259:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_4622| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@8 y) (select (|Set#UnionOne_4756| a@@8 x) y))
 :qid |stdinbpl.202:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_4756| a@@8 x) (select a@@8 y))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@9 y@@0) (select (|Set#Union_4756| a@@9 b@@7) y@@0))
 :qid |stdinbpl.212:18|
 :skolemid |35|
 :pattern ( (|Set#Union_4756| a@@9 b@@7) (select a@@9 y@@0))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@8 y@@1) (select (|Set#Union_4756| a@@10 b@@8) y@@1))
 :qid |stdinbpl.214:18|
 :skolemid |36|
 :pattern ( (|Set#Union_4756| a@@10 b@@8) (select b@@8 y@@1))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@3 T@Ref) ) (! (= (select (|Set#UnionOne_4756| a@@11 x@@0) o@@3)  (or (= o@@3 x@@0) (select a@@11 o@@3)))
 :qid |stdinbpl.198:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_4756| a@@11 x@@0) o@@3))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@9 y@@2) (not (select (|Set#Difference_4756| a@@12 b@@9) y@@2)))
 :qid |stdinbpl.239:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_4756| a@@12 b@@9) (select b@@9 y@@2))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_4756| (|Set#Difference_4756| a@@13 b@@10)) (|Set#Card_4756| (|Set#Difference_4756| b@@10 a@@13))) (|Set#Card_4756| (|Set#Intersection_4622| a@@13 b@@10))) (|Set#Card_4756| (|Set#Union_4756| a@@13 b@@10))) (= (|Set#Card_4756| (|Set#Difference_4756| a@@13 b@@10)) (- (|Set#Card_4756| a@@13) (|Set#Card_4756| (|Set#Intersection_4622| a@@13 b@@10)))))
 :qid |stdinbpl.241:18|
 :skolemid |45|
 :pattern ( (|Set#Card_4756| (|Set#Difference_4756| a@@13 b@@10)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_4756| s))
 :qid |stdinbpl.184:18|
 :skolemid |22|
 :pattern ( (|Set#Card_4756| s))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_4756| a@@14 x@@1) x@@1)
 :qid |stdinbpl.200:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_4756| a@@14 x@@1))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@15 x@@2) (= (|Set#Card_4756| (|Set#UnionOne_4756| a@@15 x@@2)) (|Set#Card_4756| a@@15)))
 :qid |stdinbpl.204:18|
 :skolemid |32|
 :pattern ( (|Set#Card_4756| (|Set#UnionOne_4756| a@@15 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_4756| (|Set#Singleton_4756| r@@0)) 1)
 :qid |stdinbpl.195:18|
 :skolemid |28|
 :pattern ( (|Set#Card_4756| (|Set#Singleton_4756| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_4756| r@@1) r@@1)
 :qid |stdinbpl.193:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_4756| r@@1))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) ) (! (= (|Set#Union_4756| a@@16 (|Set#Union_4756| a@@16 b@@11)) (|Set#Union_4756| a@@16 b@@11))
 :qid |stdinbpl.227:18|
 :skolemid |39|
 :pattern ( (|Set#Union_4756| a@@16 (|Set#Union_4756| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_4622| a@@17 (|Set#Intersection_4622| a@@17 b@@12)) (|Set#Intersection_4622| a@@17 b@@12))
 :qid |stdinbpl.231:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_4622| a@@17 (|Set#Intersection_4622| a@@17 b@@12)))
)))
(assert (forall ((o@@4 T@Ref) ) (!  (not (select |Set#Empty_4756| o@@4))
 :qid |stdinbpl.187:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_4756| o@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8126) (o@@5 T@Ref) (f_3 T@Field_8186_20195) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_8126 (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| Heap@@10) (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| Heap@@10) (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@10) (store (|PolymorphicMapType_8126_8186_20195#PolymorphicMapType_8126| Heap@@10) o@@5 f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8126 (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| Heap@@10) (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| Heap@@10) (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@10) (store (|PolymorphicMapType_8126_8186_20195#PolymorphicMapType_8126| Heap@@10) o@@5 f_3 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8126) (o@@6 T@Ref) (f_3@@0 T@Field_8186_20328) (v@@0 T@PolymorphicMapType_8675) ) (! (succHeap Heap@@11 (PolymorphicMapType_8126 (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| Heap@@11) (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| Heap@@11) (store (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@11) o@@6 f_3@@0 v@@0) (|PolymorphicMapType_8126_8186_20195#PolymorphicMapType_8126| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8126 (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| Heap@@11) (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| Heap@@11) (store (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@11) o@@6 f_3@@0 v@@0) (|PolymorphicMapType_8126_8186_20195#PolymorphicMapType_8126| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8126) (o@@7 T@Ref) (f_3@@1 T@Field_8199_8200) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_8126 (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| Heap@@12) (store (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| Heap@@12) o@@7 f_3@@1 v@@1) (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@12) (|PolymorphicMapType_8126_8186_20195#PolymorphicMapType_8126| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8126 (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| Heap@@12) (store (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| Heap@@12) o@@7 f_3@@1 v@@1) (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@12) (|PolymorphicMapType_8126_8186_20195#PolymorphicMapType_8126| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8126) (o@@8 T@Ref) (f_3@@2 T@Field_8186_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_8126 (store (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| Heap@@13) o@@8 f_3@@2 v@@2) (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| Heap@@13) (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@13) (|PolymorphicMapType_8126_8186_20195#PolymorphicMapType_8126| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8126 (store (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| Heap@@13) o@@8 f_3@@2 v@@2) (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| Heap@@13) (|PolymorphicMapType_8126_8186_20372#PolymorphicMapType_8126| Heap@@13) (|PolymorphicMapType_8126_8186_20195#PolymorphicMapType_8126| Heap@@13)))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.271:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.272:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_4756| s@@0) 0) (= s@@0 |Set#Empty_4756|)) (=> (not (= (|Set#Card_4756| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.190:33|
 :skolemid |24|
))))
 :qid |stdinbpl.188:18|
 :skolemid |25|
 :pattern ( (|Set#Card_4756| s@@0))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@20 x@@4)) (= (|Set#Card_4756| (|Set#UnionOne_4756| a@@20 x@@4)) (+ (|Set#Card_4756| a@@20) 1)))
 :qid |stdinbpl.206:18|
 :skolemid |33|
 :pattern ( (|Set#Card_4756| (|Set#UnionOne_4756| a@@20 x@@4)))
)))
(assert (forall ((o@@9 T@Ref) (f T@Field_8199_8200) (Heap@@14 T@PolymorphicMapType_8126) ) (!  (=> (select (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| Heap@@14) o@@9 $allocated) (select (|PolymorphicMapType_8126_4324_53#PolymorphicMapType_8126| Heap@@14) (select (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| Heap@@14) o@@9 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8126_4327_4328#PolymorphicMapType_8126| Heap@@14) o@@9 f))
)))
(assert (forall ((p@@1 T@Field_8186_20195) (v_1@@0 T@FrameType) (q T@Field_8186_20195) (w@@0 T@FrameType) (r@@2 T@Field_8186_20195) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8186_8186 p@@1 v_1@@0 q w@@0) (InsidePredicate_8186_8186 q w@@0 r@@2 u)) (InsidePredicate_8186_8186 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8186_8186 p@@1 v_1@@0 q w@@0) (InsidePredicate_8186_8186 q w@@0 r@@2 u))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.277:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (o@@10 T@Ref) ) (! (= (select (|Set#Union_4756| a@@22 b@@15) o@@10)  (or (select a@@22 o@@10) (select b@@15 o@@10)))
 :qid |stdinbpl.210:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_4756| a@@22 b@@15) o@@10))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@15 () T@PolymorphicMapType_8126)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun ys () (Array T@Ref Bool))
(declare-fun zs () (Array T@Ref Bool))
(declare-fun vas () (Array T@Ref Bool))
(set-info :boogie-vc-id test21)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (=> (and (and (|Set#Equal_4622| (|Set#Union_4756| (|Set#Union_4756| xs ys) zs) vas) (state Heap@@15 ZeroMask)) (and (state Heap@@15 ZeroMask) (= (ControlFlow 0 2) (- 0 1)))) (|Set#Equal_4622| (|Set#Union_4756| (|Set#Union_4756| zs ys) xs) vas)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
