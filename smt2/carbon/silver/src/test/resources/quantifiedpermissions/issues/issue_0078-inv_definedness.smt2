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
(declare-sort T@Field_15675_53 0)
(declare-sort T@Field_15688_15689 0)
(declare-sort T@Field_21937_21939 0)
(declare-sort T@Field_22092_22093 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_22105_22110 0)
(declare-sort T@Field_9390_9397 0)
(declare-sort T@Field_9390_22110 0)
(declare-sort T@Field_9396_24258 0)
(declare-sort T@Field_9396_9388 0)
(declare-sort T@Field_9396_53 0)
(declare-datatypes ((T@PolymorphicMapType_15636 0)) (((PolymorphicMapType_15636 (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| (Array T@Ref T@Field_21937_21939 Real)) (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| (Array T@Ref T@Field_15688_15689 Real)) (|PolymorphicMapType_15636_9396_9397#PolymorphicMapType_15636| (Array T@Ref T@Field_22092_22093 Real)) (|PolymorphicMapType_15636_9390_9397#PolymorphicMapType_15636| (Array T@Ref T@Field_9390_9397 Real)) (|PolymorphicMapType_15636_9390_53#PolymorphicMapType_15636| (Array T@Ref T@Field_15675_53 Real)) (|PolymorphicMapType_15636_9390_59480#PolymorphicMapType_15636| (Array T@Ref T@Field_9390_22110 Real)) (|PolymorphicMapType_15636_9396_59580#PolymorphicMapType_15636| (Array T@Ref T@Field_9396_24258 Real)) (|PolymorphicMapType_15636_9396_9388#PolymorphicMapType_15636| (Array T@Ref T@Field_9396_9388 Real)) (|PolymorphicMapType_15636_9396_53#PolymorphicMapType_15636| (Array T@Ref T@Field_9396_53 Real)) (|PolymorphicMapType_15636_9396_59900#PolymorphicMapType_15636| (Array T@Ref T@Field_22105_22110 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16164 0)) (((PolymorphicMapType_16164 (|PolymorphicMapType_16164_9390_42928#PolymorphicMapType_16164| (Array T@Ref T@Field_21937_21939 Bool)) (|PolymorphicMapType_16164_9387_9388#PolymorphicMapType_16164| (Array T@Ref T@Field_15688_15689 Bool)) (|PolymorphicMapType_16164_9390_53#PolymorphicMapType_16164| (Array T@Ref T@Field_15675_53 Bool)) (|PolymorphicMapType_16164_9390_22093#PolymorphicMapType_16164| (Array T@Ref T@Field_9390_9397 Bool)) (|PolymorphicMapType_16164_9390_52989#PolymorphicMapType_16164| (Array T@Ref T@Field_9390_22110 Bool)) (|PolymorphicMapType_16164_22092_53233#PolymorphicMapType_16164| (Array T@Ref T@Field_9396_24258 Bool)) (|PolymorphicMapType_16164_22092_9388#PolymorphicMapType_16164| (Array T@Ref T@Field_9396_9388 Bool)) (|PolymorphicMapType_16164_22092_53#PolymorphicMapType_16164| (Array T@Ref T@Field_9396_53 Bool)) (|PolymorphicMapType_16164_22092_22093#PolymorphicMapType_16164| (Array T@Ref T@Field_22092_22093 Bool)) (|PolymorphicMapType_16164_22092_54057#PolymorphicMapType_16164| (Array T@Ref T@Field_22105_22110 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15615 0)) (((PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| (Array T@Ref T@Field_15675_53 Bool)) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| (Array T@Ref T@Field_15688_15689 T@Ref)) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| (Array T@Ref T@Field_21937_21939 (Array T@Ref Bool))) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| (Array T@Ref T@Field_22092_22093 T@FrameType)) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| (Array T@Ref T@Field_22105_22110 T@PolymorphicMapType_16164)) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| (Array T@Ref T@Field_9390_9397 T@FrameType)) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| (Array T@Ref T@Field_9390_22110 T@PolymorphicMapType_16164)) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| (Array T@Ref T@Field_9396_24258 (Array T@Ref Bool))) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| (Array T@Ref T@Field_9396_9388 T@Ref)) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| (Array T@Ref T@Field_9396_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_15675_53)
(declare-fun p_2 () T@Field_15688_15689)
(declare-fun s_13 () T@Field_21937_21939)
(declare-fun left_2 () T@Field_15688_15689)
(declare-fun all () T@Field_21937_21939)
(declare-fun succHeap (T@PolymorphicMapType_15615 T@PolymorphicMapType_15615) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_15615 T@PolymorphicMapType_15615) Bool)
(declare-fun state (T@PolymorphicMapType_15615 T@PolymorphicMapType_15636) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_15636) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_16164)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun inv (T@Ref) T@Field_22092_22093)
(declare-fun IsPredicateField_9396_9397 (T@Field_22092_22093) Bool)
(declare-fun |inv#trigger_9396| (T@PolymorphicMapType_15615 T@Field_22092_22093) Bool)
(declare-fun |inv#everUsed_9396| (T@Field_22092_22093) Bool)
(declare-fun |Set#Union_9453| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_9453| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_9453| (T@Ref) (Array T@Ref Bool))
(declare-fun |inv#condqp2| (T@PolymorphicMapType_15615 T@Ref) Int)
(declare-fun |sk_inv#condqp2| (Int Int) T@Ref)
(declare-fun null () T@Ref)
(declare-fun NoPerm () Real)
(declare-fun |Set#Card_9453| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_15615 T@PolymorphicMapType_15615 T@PolymorphicMapType_15636) Bool)
(declare-fun PredicateMaskField_9396 (T@Field_22092_22093) T@Field_22105_22110)
(declare-fun HasDirectPerm_9396_9397 (T@PolymorphicMapType_15636 T@Ref T@Field_22092_22093) Bool)
(declare-fun IsPredicateField_9390_51519 (T@Field_9390_9397) Bool)
(declare-fun PredicateMaskField_9390 (T@Field_9390_9397) T@Field_9390_22110)
(declare-fun HasDirectPerm_9390_9397 (T@PolymorphicMapType_15636 T@Ref T@Field_9390_9397) Bool)
(declare-fun IsWandField_9396_55222 (T@Field_22092_22093) Bool)
(declare-fun WandMaskField_9396 (T@Field_22092_22093) T@Field_22105_22110)
(declare-fun IsWandField_9390_54865 (T@Field_9390_9397) Bool)
(declare-fun WandMaskField_9390 (T@Field_9390_9397) T@Field_9390_22110)
(declare-fun |inv#sm| (T@Ref) T@Field_22105_22110)
(declare-fun dummyHeap () T@PolymorphicMapType_15615)
(declare-fun ZeroMask () T@PolymorphicMapType_15636)
(declare-fun InsidePredicate_22092_22092 (T@Field_22092_22093 T@FrameType T@Field_22092_22093 T@FrameType) Bool)
(declare-fun InsidePredicate_15675_15675 (T@Field_9390_9397 T@FrameType T@Field_9390_9397 T@FrameType) Bool)
(declare-fun IsPredicateField_9379_9380 (T@Field_15688_15689) Bool)
(declare-fun IsWandField_9379_9380 (T@Field_15688_15689) Bool)
(declare-fun IsPredicateField_9382_21963 (T@Field_21937_21939) Bool)
(declare-fun IsWandField_9382_21990 (T@Field_21937_21939) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9396_62192 (T@Field_22105_22110) Bool)
(declare-fun IsWandField_9396_62208 (T@Field_22105_22110) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9396_53 (T@Field_9396_53) Bool)
(declare-fun IsWandField_9396_53 (T@Field_9396_53) Bool)
(declare-fun IsPredicateField_9396_9388 (T@Field_9396_9388) Bool)
(declare-fun IsWandField_9396_9388 (T@Field_9396_9388) Bool)
(declare-fun IsPredicateField_9396_61529 (T@Field_9396_24258) Bool)
(declare-fun IsWandField_9396_61545 (T@Field_9396_24258) Bool)
(declare-fun IsPredicateField_9390_61356 (T@Field_9390_22110) Bool)
(declare-fun IsWandField_9390_61372 (T@Field_9390_22110) Bool)
(declare-fun IsPredicateField_9390_53 (T@Field_15675_53) Bool)
(declare-fun IsWandField_9390_53 (T@Field_15675_53) Bool)
(declare-fun |Set#Equal_9383| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun HasDirectPerm_9396_51274 (T@PolymorphicMapType_15636 T@Ref T@Field_22105_22110) Bool)
(declare-fun HasDirectPerm_9396_53 (T@PolymorphicMapType_15636 T@Ref T@Field_9396_53) Bool)
(declare-fun HasDirectPerm_9396_9388 (T@PolymorphicMapType_15636 T@Ref T@Field_9396_9388) Bool)
(declare-fun HasDirectPerm_9396_50388 (T@PolymorphicMapType_15636 T@Ref T@Field_9396_24258) Bool)
(declare-fun HasDirectPerm_9390_50108 (T@PolymorphicMapType_15636 T@Ref T@Field_9390_22110) Bool)
(declare-fun HasDirectPerm_9390_53 (T@PolymorphicMapType_15636 T@Ref T@Field_15675_53) Bool)
(declare-fun HasDirectPerm_9387_9388 (T@PolymorphicMapType_15636 T@Ref T@Field_15688_15689) Bool)
(declare-fun HasDirectPerm_9390_24258 (T@PolymorphicMapType_15636 T@Ref T@Field_21937_21939) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_15636 T@PolymorphicMapType_15636 T@PolymorphicMapType_15636) Bool)
(declare-fun |Set#Difference_9453| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_9453| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun getPredWandId_9396_9397 (T@Field_22092_22093) Int)
(declare-fun |inv#condqp1| (T@PolymorphicMapType_15615 T@Ref) Int)
(declare-fun |sk_inv#condqp1| (Int Int) T@Ref)
(declare-fun |Set#Empty_9453| () (Array T@Ref Bool))
(declare-fun InsidePredicate_22092_15675 (T@Field_22092_22093 T@FrameType T@Field_9390_9397 T@FrameType) Bool)
(declare-fun InsidePredicate_15675_22092 (T@Field_9390_9397 T@FrameType T@Field_22092_22093 T@FrameType) Bool)
(assert (and (distinct p_2 left_2)(distinct s_13 all))
)
(assert (forall ((Heap0 T@PolymorphicMapType_15615) (Heap1 T@PolymorphicMapType_15615) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_15615) (Mask T@PolymorphicMapType_15636) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_15615) (Heap1@@0 T@PolymorphicMapType_15615) (Heap2 T@PolymorphicMapType_15615) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_22105_22110) ) (!  (not (select (|PolymorphicMapType_16164_22092_54057#PolymorphicMapType_16164| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16164_22092_54057#PolymorphicMapType_16164| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_22092_22093) ) (!  (not (select (|PolymorphicMapType_16164_22092_22093#PolymorphicMapType_16164| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16164_22092_22093#PolymorphicMapType_16164| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9396_53) ) (!  (not (select (|PolymorphicMapType_16164_22092_53#PolymorphicMapType_16164| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16164_22092_53#PolymorphicMapType_16164| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9396_9388) ) (!  (not (select (|PolymorphicMapType_16164_22092_9388#PolymorphicMapType_16164| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16164_22092_9388#PolymorphicMapType_16164| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9396_24258) ) (!  (not (select (|PolymorphicMapType_16164_22092_53233#PolymorphicMapType_16164| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16164_22092_53233#PolymorphicMapType_16164| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_9390_22110) ) (!  (not (select (|PolymorphicMapType_16164_9390_52989#PolymorphicMapType_16164| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16164_9390_52989#PolymorphicMapType_16164| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_9390_9397) ) (!  (not (select (|PolymorphicMapType_16164_9390_22093#PolymorphicMapType_16164| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16164_9390_22093#PolymorphicMapType_16164| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_15675_53) ) (!  (not (select (|PolymorphicMapType_16164_9390_53#PolymorphicMapType_16164| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16164_9390_53#PolymorphicMapType_16164| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_15688_15689) ) (!  (not (select (|PolymorphicMapType_16164_9387_9388#PolymorphicMapType_16164| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16164_9387_9388#PolymorphicMapType_16164| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_21937_21939) ) (!  (not (select (|PolymorphicMapType_16164_9390_42928#PolymorphicMapType_16164| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16164_9390_42928#PolymorphicMapType_16164| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.315:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_9396_9397 (inv this))
 :qid |stdinbpl.437:15|
 :skolemid |83|
 :pattern ( (inv this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_15615) (this@@0 T@Ref) ) (! (|inv#everUsed_9396| (inv this@@0))
 :qid |stdinbpl.456:15|
 :skolemid |87|
 :pattern ( (|inv#trigger_9396| Heap@@0 (inv this@@0)))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_9453| (|Set#Union_9453| a@@0 b@@0) b@@0) (|Set#Union_9453| a@@0 b@@0))
 :qid |stdinbpl.267:18|
 :skolemid |38|
 :pattern ( (|Set#Union_9453| (|Set#Union_9453| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_9453| (|Set#Intersection_9453| a@@1 b@@1) b@@1) (|Set#Intersection_9453| a@@1 b@@1))
 :qid |stdinbpl.271:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_9453| (|Set#Intersection_9453| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_9453| r) o) (= r o))
 :qid |stdinbpl.236:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_9453| r) o))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_15615) (Heap1Heap T@PolymorphicMapType_15615) (this@@1 T@Ref) ) (!  (=> (and (=  (and (and (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap2Heap) this@@1 all) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1))) (= (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap2Heap) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)) left_2) null)) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (and (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap1Heap) this@@1 all) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1))) (= (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap1Heap) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)) left_2) null)) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (and (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap2Heap) this@@1 all) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1))) (= (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap2Heap) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)) left_2) null)) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap2Heap) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)) left_2) (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap1Heap) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)) left_2)))) (= (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)))
 :qid |stdinbpl.478:15|
 :skolemid |89|
 :pattern ( (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_9453| (|Set#Union_9453| a@@2 b@@2)) (|Set#Card_9453| (|Set#Intersection_9453| a@@2 b@@2))) (+ (|Set#Card_9453| a@@2) (|Set#Card_9453| b@@2)))
 :qid |stdinbpl.275:18|
 :skolemid |42|
 :pattern ( (|Set#Card_9453| (|Set#Union_9453| a@@2 b@@2)))
 :pattern ( (|Set#Card_9453| (|Set#Intersection_9453| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.318:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_15615) (ExhaleHeap T@PolymorphicMapType_15615) (Mask@@0 T@PolymorphicMapType_15636) (pm_f_10 T@Field_22092_22093) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9396_9397 Mask@@0 null pm_f_10) (IsPredicateField_9396_9397 pm_f_10)) (= (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@1) null (PredicateMaskField_9396 pm_f_10)) (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| ExhaleHeap) null (PredicateMaskField_9396 pm_f_10)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_9396_9397 pm_f_10) (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| ExhaleHeap) null (PredicateMaskField_9396 pm_f_10)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_15615) (ExhaleHeap@@0 T@PolymorphicMapType_15615) (Mask@@1 T@PolymorphicMapType_15636) (pm_f_10@@0 T@Field_9390_9397) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9390_9397 Mask@@1 null pm_f_10@@0) (IsPredicateField_9390_51519 pm_f_10@@0)) (= (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@2) null (PredicateMaskField_9390 pm_f_10@@0)) (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| ExhaleHeap@@0) null (PredicateMaskField_9390 pm_f_10@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_9390_51519 pm_f_10@@0) (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| ExhaleHeap@@0) null (PredicateMaskField_9390 pm_f_10@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_15615) (ExhaleHeap@@1 T@PolymorphicMapType_15615) (Mask@@2 T@PolymorphicMapType_15636) (pm_f_10@@1 T@Field_22092_22093) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_9396_9397 Mask@@2 null pm_f_10@@1) (IsWandField_9396_55222 pm_f_10@@1)) (= (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@3) null (WandMaskField_9396 pm_f_10@@1)) (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| ExhaleHeap@@1) null (WandMaskField_9396 pm_f_10@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_9396_55222 pm_f_10@@1) (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| ExhaleHeap@@1) null (WandMaskField_9396 pm_f_10@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_15615) (ExhaleHeap@@2 T@PolymorphicMapType_15615) (Mask@@3 T@PolymorphicMapType_15636) (pm_f_10@@2 T@Field_9390_9397) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_9390_9397 Mask@@3 null pm_f_10@@2) (IsWandField_9390_54865 pm_f_10@@2)) (= (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@4) null (WandMaskField_9390 pm_f_10@@2)) (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| ExhaleHeap@@2) null (WandMaskField_9390 pm_f_10@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_9390_54865 pm_f_10@@2) (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| ExhaleHeap@@2) null (WandMaskField_9390 pm_f_10@@2)))
)))
(assert (forall ((this@@2 T@Ref) (this2 T@Ref) ) (!  (=> (= (inv this@@2) (inv this2)) (= this@@2 this2))
 :qid |stdinbpl.447:15|
 :skolemid |85|
 :pattern ( (inv this@@2) (inv this2))
)))
(assert (forall ((this@@3 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|inv#sm| this@@3) (|inv#sm| this2@@0)) (= this@@3 this2@@0))
 :qid |stdinbpl.451:15|
 :skolemid |86|
 :pattern ( (|inv#sm| this@@3) (|inv#sm| this2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_15615) (ExhaleHeap@@3 T@PolymorphicMapType_15615) (Mask@@4 T@PolymorphicMapType_15636) (pm_f_10@@3 T@Field_22092_22093) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_9396_9397 Mask@@4 null pm_f_10@@3) (IsPredicateField_9396_9397 pm_f_10@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_10 T@Ref) (f_15 T@Field_21937_21939) ) (!  (=> (select (|PolymorphicMapType_16164_9390_42928#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@5) null (PredicateMaskField_9396 pm_f_10@@3))) o2_10 f_15) (= (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@5) o2_10 f_15) (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10 f_15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10 f_15))
)) (forall ((o2_10@@0 T@Ref) (f_15@@0 T@Field_15688_15689) ) (!  (=> (select (|PolymorphicMapType_16164_9387_9388#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@5) null (PredicateMaskField_9396 pm_f_10@@3))) o2_10@@0 f_15@@0) (= (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@5) o2_10@@0 f_15@@0) (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10@@0 f_15@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10@@0 f_15@@0))
))) (forall ((o2_10@@1 T@Ref) (f_15@@1 T@Field_15675_53) ) (!  (=> (select (|PolymorphicMapType_16164_9390_53#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@5) null (PredicateMaskField_9396 pm_f_10@@3))) o2_10@@1 f_15@@1) (= (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@5) o2_10@@1 f_15@@1) (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10@@1 f_15@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10@@1 f_15@@1))
))) (forall ((o2_10@@2 T@Ref) (f_15@@2 T@Field_9390_9397) ) (!  (=> (select (|PolymorphicMapType_16164_9390_22093#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@5) null (PredicateMaskField_9396 pm_f_10@@3))) o2_10@@2 f_15@@2) (= (select (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@5) o2_10@@2 f_15@@2) (select (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10@@2 f_15@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10@@2 f_15@@2))
))) (forall ((o2_10@@3 T@Ref) (f_15@@3 T@Field_9390_22110) ) (!  (=> (select (|PolymorphicMapType_16164_9390_52989#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@5) null (PredicateMaskField_9396 pm_f_10@@3))) o2_10@@3 f_15@@3) (= (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@5) o2_10@@3 f_15@@3) (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10@@3 f_15@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10@@3 f_15@@3))
))) (forall ((o2_10@@4 T@Ref) (f_15@@4 T@Field_9396_24258) ) (!  (=> (select (|PolymorphicMapType_16164_22092_53233#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@5) null (PredicateMaskField_9396 pm_f_10@@3))) o2_10@@4 f_15@@4) (= (select (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@5) o2_10@@4 f_15@@4) (select (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10@@4 f_15@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10@@4 f_15@@4))
))) (forall ((o2_10@@5 T@Ref) (f_15@@5 T@Field_9396_9388) ) (!  (=> (select (|PolymorphicMapType_16164_22092_9388#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@5) null (PredicateMaskField_9396 pm_f_10@@3))) o2_10@@5 f_15@@5) (= (select (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@5) o2_10@@5 f_15@@5) (select (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10@@5 f_15@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10@@5 f_15@@5))
))) (forall ((o2_10@@6 T@Ref) (f_15@@6 T@Field_9396_53) ) (!  (=> (select (|PolymorphicMapType_16164_22092_53#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@5) null (PredicateMaskField_9396 pm_f_10@@3))) o2_10@@6 f_15@@6) (= (select (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@5) o2_10@@6 f_15@@6) (select (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10@@6 f_15@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10@@6 f_15@@6))
))) (forall ((o2_10@@7 T@Ref) (f_15@@7 T@Field_22092_22093) ) (!  (=> (select (|PolymorphicMapType_16164_22092_22093#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@5) null (PredicateMaskField_9396 pm_f_10@@3))) o2_10@@7 f_15@@7) (= (select (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@5) o2_10@@7 f_15@@7) (select (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10@@7 f_15@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10@@7 f_15@@7))
))) (forall ((o2_10@@8 T@Ref) (f_15@@8 T@Field_22105_22110) ) (!  (=> (select (|PolymorphicMapType_16164_22092_54057#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@5) null (PredicateMaskField_9396 pm_f_10@@3))) o2_10@@8 f_15@@8) (= (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@5) o2_10@@8 f_15@@8) (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10@@8 f_15@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| ExhaleHeap@@3) o2_10@@8 f_15@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_9396_9397 pm_f_10@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_15615) (ExhaleHeap@@4 T@PolymorphicMapType_15615) (Mask@@5 T@PolymorphicMapType_15636) (pm_f_10@@4 T@Field_9390_9397) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_9390_9397 Mask@@5 null pm_f_10@@4) (IsPredicateField_9390_51519 pm_f_10@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_10@@9 T@Ref) (f_15@@9 T@Field_21937_21939) ) (!  (=> (select (|PolymorphicMapType_16164_9390_42928#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@6) null (PredicateMaskField_9390 pm_f_10@@4))) o2_10@@9 f_15@@9) (= (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@6) o2_10@@9 f_15@@9) (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@9 f_15@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@9 f_15@@9))
)) (forall ((o2_10@@10 T@Ref) (f_15@@10 T@Field_15688_15689) ) (!  (=> (select (|PolymorphicMapType_16164_9387_9388#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@6) null (PredicateMaskField_9390 pm_f_10@@4))) o2_10@@10 f_15@@10) (= (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@6) o2_10@@10 f_15@@10) (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@10 f_15@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@10 f_15@@10))
))) (forall ((o2_10@@11 T@Ref) (f_15@@11 T@Field_15675_53) ) (!  (=> (select (|PolymorphicMapType_16164_9390_53#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@6) null (PredicateMaskField_9390 pm_f_10@@4))) o2_10@@11 f_15@@11) (= (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@6) o2_10@@11 f_15@@11) (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@11 f_15@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@11 f_15@@11))
))) (forall ((o2_10@@12 T@Ref) (f_15@@12 T@Field_9390_9397) ) (!  (=> (select (|PolymorphicMapType_16164_9390_22093#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@6) null (PredicateMaskField_9390 pm_f_10@@4))) o2_10@@12 f_15@@12) (= (select (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@6) o2_10@@12 f_15@@12) (select (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@12 f_15@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@12 f_15@@12))
))) (forall ((o2_10@@13 T@Ref) (f_15@@13 T@Field_9390_22110) ) (!  (=> (select (|PolymorphicMapType_16164_9390_52989#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@6) null (PredicateMaskField_9390 pm_f_10@@4))) o2_10@@13 f_15@@13) (= (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@6) o2_10@@13 f_15@@13) (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@13 f_15@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@13 f_15@@13))
))) (forall ((o2_10@@14 T@Ref) (f_15@@14 T@Field_9396_24258) ) (!  (=> (select (|PolymorphicMapType_16164_22092_53233#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@6) null (PredicateMaskField_9390 pm_f_10@@4))) o2_10@@14 f_15@@14) (= (select (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@6) o2_10@@14 f_15@@14) (select (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@14 f_15@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@14 f_15@@14))
))) (forall ((o2_10@@15 T@Ref) (f_15@@15 T@Field_9396_9388) ) (!  (=> (select (|PolymorphicMapType_16164_22092_9388#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@6) null (PredicateMaskField_9390 pm_f_10@@4))) o2_10@@15 f_15@@15) (= (select (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@6) o2_10@@15 f_15@@15) (select (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@15 f_15@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@15 f_15@@15))
))) (forall ((o2_10@@16 T@Ref) (f_15@@16 T@Field_9396_53) ) (!  (=> (select (|PolymorphicMapType_16164_22092_53#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@6) null (PredicateMaskField_9390 pm_f_10@@4))) o2_10@@16 f_15@@16) (= (select (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@6) o2_10@@16 f_15@@16) (select (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@16 f_15@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@16 f_15@@16))
))) (forall ((o2_10@@17 T@Ref) (f_15@@17 T@Field_22092_22093) ) (!  (=> (select (|PolymorphicMapType_16164_22092_22093#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@6) null (PredicateMaskField_9390 pm_f_10@@4))) o2_10@@17 f_15@@17) (= (select (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@6) o2_10@@17 f_15@@17) (select (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@17 f_15@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@17 f_15@@17))
))) (forall ((o2_10@@18 T@Ref) (f_15@@18 T@Field_22105_22110) ) (!  (=> (select (|PolymorphicMapType_16164_22092_54057#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@6) null (PredicateMaskField_9390 pm_f_10@@4))) o2_10@@18 f_15@@18) (= (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@6) o2_10@@18 f_15@@18) (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@18 f_15@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| ExhaleHeap@@4) o2_10@@18 f_15@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_9390_51519 pm_f_10@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_15615) (ExhaleHeap@@5 T@PolymorphicMapType_15615) (Mask@@6 T@PolymorphicMapType_15636) (pm_f_10@@5 T@Field_22092_22093) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_9396_9397 Mask@@6 null pm_f_10@@5) (IsWandField_9396_55222 pm_f_10@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_10@@19 T@Ref) (f_15@@19 T@Field_21937_21939) ) (!  (=> (select (|PolymorphicMapType_16164_9390_42928#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@7) null (WandMaskField_9396 pm_f_10@@5))) o2_10@@19 f_15@@19) (= (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@7) o2_10@@19 f_15@@19) (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@19 f_15@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@19 f_15@@19))
)) (forall ((o2_10@@20 T@Ref) (f_15@@20 T@Field_15688_15689) ) (!  (=> (select (|PolymorphicMapType_16164_9387_9388#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@7) null (WandMaskField_9396 pm_f_10@@5))) o2_10@@20 f_15@@20) (= (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@7) o2_10@@20 f_15@@20) (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@20 f_15@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@20 f_15@@20))
))) (forall ((o2_10@@21 T@Ref) (f_15@@21 T@Field_15675_53) ) (!  (=> (select (|PolymorphicMapType_16164_9390_53#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@7) null (WandMaskField_9396 pm_f_10@@5))) o2_10@@21 f_15@@21) (= (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@7) o2_10@@21 f_15@@21) (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@21 f_15@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@21 f_15@@21))
))) (forall ((o2_10@@22 T@Ref) (f_15@@22 T@Field_9390_9397) ) (!  (=> (select (|PolymorphicMapType_16164_9390_22093#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@7) null (WandMaskField_9396 pm_f_10@@5))) o2_10@@22 f_15@@22) (= (select (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@7) o2_10@@22 f_15@@22) (select (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@22 f_15@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@22 f_15@@22))
))) (forall ((o2_10@@23 T@Ref) (f_15@@23 T@Field_9390_22110) ) (!  (=> (select (|PolymorphicMapType_16164_9390_52989#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@7) null (WandMaskField_9396 pm_f_10@@5))) o2_10@@23 f_15@@23) (= (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@7) o2_10@@23 f_15@@23) (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@23 f_15@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@23 f_15@@23))
))) (forall ((o2_10@@24 T@Ref) (f_15@@24 T@Field_9396_24258) ) (!  (=> (select (|PolymorphicMapType_16164_22092_53233#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@7) null (WandMaskField_9396 pm_f_10@@5))) o2_10@@24 f_15@@24) (= (select (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@7) o2_10@@24 f_15@@24) (select (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@24 f_15@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@24 f_15@@24))
))) (forall ((o2_10@@25 T@Ref) (f_15@@25 T@Field_9396_9388) ) (!  (=> (select (|PolymorphicMapType_16164_22092_9388#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@7) null (WandMaskField_9396 pm_f_10@@5))) o2_10@@25 f_15@@25) (= (select (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@7) o2_10@@25 f_15@@25) (select (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@25 f_15@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@25 f_15@@25))
))) (forall ((o2_10@@26 T@Ref) (f_15@@26 T@Field_9396_53) ) (!  (=> (select (|PolymorphicMapType_16164_22092_53#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@7) null (WandMaskField_9396 pm_f_10@@5))) o2_10@@26 f_15@@26) (= (select (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@7) o2_10@@26 f_15@@26) (select (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@26 f_15@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@26 f_15@@26))
))) (forall ((o2_10@@27 T@Ref) (f_15@@27 T@Field_22092_22093) ) (!  (=> (select (|PolymorphicMapType_16164_22092_22093#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@7) null (WandMaskField_9396 pm_f_10@@5))) o2_10@@27 f_15@@27) (= (select (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@7) o2_10@@27 f_15@@27) (select (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@27 f_15@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@27 f_15@@27))
))) (forall ((o2_10@@28 T@Ref) (f_15@@28 T@Field_22105_22110) ) (!  (=> (select (|PolymorphicMapType_16164_22092_54057#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@7) null (WandMaskField_9396 pm_f_10@@5))) o2_10@@28 f_15@@28) (= (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@7) o2_10@@28 f_15@@28) (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@28 f_15@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| ExhaleHeap@@5) o2_10@@28 f_15@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_9396_55222 pm_f_10@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_15615) (ExhaleHeap@@6 T@PolymorphicMapType_15615) (Mask@@7 T@PolymorphicMapType_15636) (pm_f_10@@6 T@Field_9390_9397) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_9390_9397 Mask@@7 null pm_f_10@@6) (IsWandField_9390_54865 pm_f_10@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_10@@29 T@Ref) (f_15@@29 T@Field_21937_21939) ) (!  (=> (select (|PolymorphicMapType_16164_9390_42928#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@8) null (WandMaskField_9390 pm_f_10@@6))) o2_10@@29 f_15@@29) (= (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@8) o2_10@@29 f_15@@29) (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@29 f_15@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@29 f_15@@29))
)) (forall ((o2_10@@30 T@Ref) (f_15@@30 T@Field_15688_15689) ) (!  (=> (select (|PolymorphicMapType_16164_9387_9388#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@8) null (WandMaskField_9390 pm_f_10@@6))) o2_10@@30 f_15@@30) (= (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@8) o2_10@@30 f_15@@30) (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@30 f_15@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@30 f_15@@30))
))) (forall ((o2_10@@31 T@Ref) (f_15@@31 T@Field_15675_53) ) (!  (=> (select (|PolymorphicMapType_16164_9390_53#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@8) null (WandMaskField_9390 pm_f_10@@6))) o2_10@@31 f_15@@31) (= (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@8) o2_10@@31 f_15@@31) (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@31 f_15@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@31 f_15@@31))
))) (forall ((o2_10@@32 T@Ref) (f_15@@32 T@Field_9390_9397) ) (!  (=> (select (|PolymorphicMapType_16164_9390_22093#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@8) null (WandMaskField_9390 pm_f_10@@6))) o2_10@@32 f_15@@32) (= (select (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@8) o2_10@@32 f_15@@32) (select (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@32 f_15@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@32 f_15@@32))
))) (forall ((o2_10@@33 T@Ref) (f_15@@33 T@Field_9390_22110) ) (!  (=> (select (|PolymorphicMapType_16164_9390_52989#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@8) null (WandMaskField_9390 pm_f_10@@6))) o2_10@@33 f_15@@33) (= (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@8) o2_10@@33 f_15@@33) (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@33 f_15@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@33 f_15@@33))
))) (forall ((o2_10@@34 T@Ref) (f_15@@34 T@Field_9396_24258) ) (!  (=> (select (|PolymorphicMapType_16164_22092_53233#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@8) null (WandMaskField_9390 pm_f_10@@6))) o2_10@@34 f_15@@34) (= (select (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@8) o2_10@@34 f_15@@34) (select (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@34 f_15@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@34 f_15@@34))
))) (forall ((o2_10@@35 T@Ref) (f_15@@35 T@Field_9396_9388) ) (!  (=> (select (|PolymorphicMapType_16164_22092_9388#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@8) null (WandMaskField_9390 pm_f_10@@6))) o2_10@@35 f_15@@35) (= (select (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@8) o2_10@@35 f_15@@35) (select (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@35 f_15@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@35 f_15@@35))
))) (forall ((o2_10@@36 T@Ref) (f_15@@36 T@Field_9396_53) ) (!  (=> (select (|PolymorphicMapType_16164_22092_53#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@8) null (WandMaskField_9390 pm_f_10@@6))) o2_10@@36 f_15@@36) (= (select (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@8) o2_10@@36 f_15@@36) (select (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@36 f_15@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@36 f_15@@36))
))) (forall ((o2_10@@37 T@Ref) (f_15@@37 T@Field_22092_22093) ) (!  (=> (select (|PolymorphicMapType_16164_22092_22093#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@8) null (WandMaskField_9390 pm_f_10@@6))) o2_10@@37 f_15@@37) (= (select (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@8) o2_10@@37 f_15@@37) (select (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@37 f_15@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@37 f_15@@37))
))) (forall ((o2_10@@38 T@Ref) (f_15@@38 T@Field_22105_22110) ) (!  (=> (select (|PolymorphicMapType_16164_22092_54057#PolymorphicMapType_16164| (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@8) null (WandMaskField_9390 pm_f_10@@6))) o2_10@@38 f_15@@38) (= (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@8) o2_10@@38 f_15@@38) (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@38 f_15@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| ExhaleHeap@@6) o2_10@@38 f_15@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_9390_54865 pm_f_10@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_15615) (ExhaleHeap@@7 T@PolymorphicMapType_15615) (Mask@@8 T@PolymorphicMapType_15636) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@9) o_23 $allocated) (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| ExhaleHeap@@7) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| ExhaleHeap@@7) o_23 $allocated))
)))
(assert (forall ((p T@Field_22092_22093) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_22092_22092 p v_1 p w))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22092_22092 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_9390_9397) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_15675_15675 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15675_15675 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_9379_9380 p_2)))
(assert  (not (IsWandField_9379_9380 p_2)))
(assert  (not (IsPredicateField_9382_21963 s_13)))
(assert  (not (IsWandField_9382_21990 s_13)))
(assert  (not (IsPredicateField_9379_9380 left_2)))
(assert  (not (IsWandField_9379_9380 left_2)))
(assert  (not (IsPredicateField_9382_21963 all)))
(assert  (not (IsWandField_9382_21990 all)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_15615) (ExhaleHeap@@8 T@PolymorphicMapType_15615) (Mask@@9 T@PolymorphicMapType_15636) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_15636) (o_2@@9 T@Ref) (f_4@@9 T@Field_22105_22110) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_15636_9396_59900#PolymorphicMapType_15636| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_9396_62192 f_4@@9))) (not (IsWandField_9396_62208 f_4@@9))) (<= (select (|PolymorphicMapType_15636_9396_59900#PolymorphicMapType_15636| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_15636_9396_59900#PolymorphicMapType_15636| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_15636) (o_2@@10 T@Ref) (f_4@@10 T@Field_9396_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_15636_9396_53#PolymorphicMapType_15636| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_9396_53 f_4@@10))) (not (IsWandField_9396_53 f_4@@10))) (<= (select (|PolymorphicMapType_15636_9396_53#PolymorphicMapType_15636| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_15636_9396_53#PolymorphicMapType_15636| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_15636) (o_2@@11 T@Ref) (f_4@@11 T@Field_22092_22093) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_15636_9396_9397#PolymorphicMapType_15636| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_9396_9397 f_4@@11))) (not (IsWandField_9396_55222 f_4@@11))) (<= (select (|PolymorphicMapType_15636_9396_9397#PolymorphicMapType_15636| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_15636_9396_9397#PolymorphicMapType_15636| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_15636) (o_2@@12 T@Ref) (f_4@@12 T@Field_9396_9388) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_15636_9396_9388#PolymorphicMapType_15636| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_9396_9388 f_4@@12))) (not (IsWandField_9396_9388 f_4@@12))) (<= (select (|PolymorphicMapType_15636_9396_9388#PolymorphicMapType_15636| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_15636_9396_9388#PolymorphicMapType_15636| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_15636) (o_2@@13 T@Ref) (f_4@@13 T@Field_9396_24258) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_15636_9396_59580#PolymorphicMapType_15636| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_9396_61529 f_4@@13))) (not (IsWandField_9396_61545 f_4@@13))) (<= (select (|PolymorphicMapType_15636_9396_59580#PolymorphicMapType_15636| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_15636_9396_59580#PolymorphicMapType_15636| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_15636) (o_2@@14 T@Ref) (f_4@@14 T@Field_9390_22110) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_15636_9390_59480#PolymorphicMapType_15636| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_9390_61356 f_4@@14))) (not (IsWandField_9390_61372 f_4@@14))) (<= (select (|PolymorphicMapType_15636_9390_59480#PolymorphicMapType_15636| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_15636_9390_59480#PolymorphicMapType_15636| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_15636) (o_2@@15 T@Ref) (f_4@@15 T@Field_15675_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_15636_9390_53#PolymorphicMapType_15636| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_9390_53 f_4@@15))) (not (IsWandField_9390_53 f_4@@15))) (<= (select (|PolymorphicMapType_15636_9390_53#PolymorphicMapType_15636| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_15636_9390_53#PolymorphicMapType_15636| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_15636) (o_2@@16 T@Ref) (f_4@@16 T@Field_9390_9397) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_15636_9390_9397#PolymorphicMapType_15636| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_9390_51519 f_4@@16))) (not (IsWandField_9390_54865 f_4@@16))) (<= (select (|PolymorphicMapType_15636_9390_9397#PolymorphicMapType_15636| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_15636_9390_9397#PolymorphicMapType_15636| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_15636) (o_2@@17 T@Ref) (f_4@@17 T@Field_15688_15689) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_9379_9380 f_4@@17))) (not (IsWandField_9379_9380 f_4@@17))) (<= (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_15636) (o_2@@18 T@Ref) (f_4@@18 T@Field_21937_21939) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_9382_21963 f_4@@18))) (not (IsWandField_9382_21990 f_4@@18))) (<= (select (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) ) (! (= (|Set#Equal_9383| a@@4 b@@3) (forall ((o@@0 T@Ref) ) (! (= (select a@@4 o@@0) (select b@@3 o@@0))
 :qid |stdinbpl.300:31|
 :skolemid |48|
 :pattern ( (select a@@4 o@@0))
 :pattern ( (select b@@3 o@@0))
)))
 :qid |stdinbpl.299:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_9383| a@@4 b@@3))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_15636) (o_2@@19 T@Ref) (f_4@@19 T@Field_22105_22110) ) (! (= (HasDirectPerm_9396_51274 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_15636_9396_59900#PolymorphicMapType_15636| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9396_51274 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_15636) (o_2@@20 T@Ref) (f_4@@20 T@Field_9396_53) ) (! (= (HasDirectPerm_9396_53 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_15636_9396_53#PolymorphicMapType_15636| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9396_53 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_15636) (o_2@@21 T@Ref) (f_4@@21 T@Field_22092_22093) ) (! (= (HasDirectPerm_9396_9397 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_15636_9396_9397#PolymorphicMapType_15636| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9396_9397 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_15636) (o_2@@22 T@Ref) (f_4@@22 T@Field_9396_9388) ) (! (= (HasDirectPerm_9396_9388 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_15636_9396_9388#PolymorphicMapType_15636| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9396_9388 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_15636) (o_2@@23 T@Ref) (f_4@@23 T@Field_9396_24258) ) (! (= (HasDirectPerm_9396_50388 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_15636_9396_59580#PolymorphicMapType_15636| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9396_50388 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_15636) (o_2@@24 T@Ref) (f_4@@24 T@Field_9390_22110) ) (! (= (HasDirectPerm_9390_50108 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_15636_9390_59480#PolymorphicMapType_15636| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9390_50108 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_15636) (o_2@@25 T@Ref) (f_4@@25 T@Field_15675_53) ) (! (= (HasDirectPerm_9390_53 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_15636_9390_53#PolymorphicMapType_15636| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9390_53 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_15636) (o_2@@26 T@Ref) (f_4@@26 T@Field_9390_9397) ) (! (= (HasDirectPerm_9390_9397 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_15636_9390_9397#PolymorphicMapType_15636| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9390_9397 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_15636) (o_2@@27 T@Ref) (f_4@@27 T@Field_15688_15689) ) (! (= (HasDirectPerm_9387_9388 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9387_9388 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_15636) (o_2@@28 T@Ref) (f_4@@28 T@Field_21937_21939) ) (! (= (HasDirectPerm_9390_24258 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9390_24258 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.201:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_15615) (ExhaleHeap@@9 T@PolymorphicMapType_15615) (Mask@@30 T@PolymorphicMapType_15636) (o_23@@0 T@Ref) (f_15@@39 T@Field_22105_22110) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_9396_51274 Mask@@30 o_23@@0 f_15@@39) (= (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@11) o_23@@0 f_15@@39) (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| ExhaleHeap@@9) o_23@@0 f_15@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| ExhaleHeap@@9) o_23@@0 f_15@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_15615) (ExhaleHeap@@10 T@PolymorphicMapType_15615) (Mask@@31 T@PolymorphicMapType_15636) (o_23@@1 T@Ref) (f_15@@40 T@Field_9396_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_9396_53 Mask@@31 o_23@@1 f_15@@40) (= (select (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@12) o_23@@1 f_15@@40) (select (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| ExhaleHeap@@10) o_23@@1 f_15@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| ExhaleHeap@@10) o_23@@1 f_15@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_15615) (ExhaleHeap@@11 T@PolymorphicMapType_15615) (Mask@@32 T@PolymorphicMapType_15636) (o_23@@2 T@Ref) (f_15@@41 T@Field_22092_22093) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_9396_9397 Mask@@32 o_23@@2 f_15@@41) (= (select (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@13) o_23@@2 f_15@@41) (select (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| ExhaleHeap@@11) o_23@@2 f_15@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| ExhaleHeap@@11) o_23@@2 f_15@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_15615) (ExhaleHeap@@12 T@PolymorphicMapType_15615) (Mask@@33 T@PolymorphicMapType_15636) (o_23@@3 T@Ref) (f_15@@42 T@Field_9396_9388) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_9396_9388 Mask@@33 o_23@@3 f_15@@42) (= (select (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@14) o_23@@3 f_15@@42) (select (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| ExhaleHeap@@12) o_23@@3 f_15@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| ExhaleHeap@@12) o_23@@3 f_15@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_15615) (ExhaleHeap@@13 T@PolymorphicMapType_15615) (Mask@@34 T@PolymorphicMapType_15636) (o_23@@4 T@Ref) (f_15@@43 T@Field_9396_24258) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_9396_50388 Mask@@34 o_23@@4 f_15@@43) (= (select (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@15) o_23@@4 f_15@@43) (select (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| ExhaleHeap@@13) o_23@@4 f_15@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| ExhaleHeap@@13) o_23@@4 f_15@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_15615) (ExhaleHeap@@14 T@PolymorphicMapType_15615) (Mask@@35 T@PolymorphicMapType_15636) (o_23@@5 T@Ref) (f_15@@44 T@Field_9390_22110) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_9390_50108 Mask@@35 o_23@@5 f_15@@44) (= (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@16) o_23@@5 f_15@@44) (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| ExhaleHeap@@14) o_23@@5 f_15@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| ExhaleHeap@@14) o_23@@5 f_15@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_15615) (ExhaleHeap@@15 T@PolymorphicMapType_15615) (Mask@@36 T@PolymorphicMapType_15636) (o_23@@6 T@Ref) (f_15@@45 T@Field_15675_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_9390_53 Mask@@36 o_23@@6 f_15@@45) (= (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@17) o_23@@6 f_15@@45) (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| ExhaleHeap@@15) o_23@@6 f_15@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| ExhaleHeap@@15) o_23@@6 f_15@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_15615) (ExhaleHeap@@16 T@PolymorphicMapType_15615) (Mask@@37 T@PolymorphicMapType_15636) (o_23@@7 T@Ref) (f_15@@46 T@Field_9390_9397) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_9390_9397 Mask@@37 o_23@@7 f_15@@46) (= (select (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@18) o_23@@7 f_15@@46) (select (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| ExhaleHeap@@16) o_23@@7 f_15@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| ExhaleHeap@@16) o_23@@7 f_15@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_15615) (ExhaleHeap@@17 T@PolymorphicMapType_15615) (Mask@@38 T@PolymorphicMapType_15636) (o_23@@8 T@Ref) (f_15@@47 T@Field_15688_15689) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_9387_9388 Mask@@38 o_23@@8 f_15@@47) (= (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@19) o_23@@8 f_15@@47) (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| ExhaleHeap@@17) o_23@@8 f_15@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| ExhaleHeap@@17) o_23@@8 f_15@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_15615) (ExhaleHeap@@18 T@PolymorphicMapType_15615) (Mask@@39 T@PolymorphicMapType_15636) (o_23@@9 T@Ref) (f_15@@48 T@Field_21937_21939) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_9390_24258 Mask@@39 o_23@@9 f_15@@48) (= (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@20) o_23@@9 f_15@@48) (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| ExhaleHeap@@18) o_23@@9 f_15@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| ExhaleHeap@@18) o_23@@9 f_15@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_22105_22110) ) (! (= (select (|PolymorphicMapType_15636_9396_59900#PolymorphicMapType_15636| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15636_9396_59900#PolymorphicMapType_15636| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_9396_53) ) (! (= (select (|PolymorphicMapType_15636_9396_53#PolymorphicMapType_15636| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15636_9396_53#PolymorphicMapType_15636| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_22092_22093) ) (! (= (select (|PolymorphicMapType_15636_9396_9397#PolymorphicMapType_15636| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15636_9396_9397#PolymorphicMapType_15636| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_9396_9388) ) (! (= (select (|PolymorphicMapType_15636_9396_9388#PolymorphicMapType_15636| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15636_9396_9388#PolymorphicMapType_15636| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_9396_24258) ) (! (= (select (|PolymorphicMapType_15636_9396_59580#PolymorphicMapType_15636| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15636_9396_59580#PolymorphicMapType_15636| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_9390_22110) ) (! (= (select (|PolymorphicMapType_15636_9390_59480#PolymorphicMapType_15636| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15636_9390_59480#PolymorphicMapType_15636| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_15675_53) ) (! (= (select (|PolymorphicMapType_15636_9390_53#PolymorphicMapType_15636| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15636_9390_53#PolymorphicMapType_15636| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_9390_9397) ) (! (= (select (|PolymorphicMapType_15636_9390_9397#PolymorphicMapType_15636| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15636_9390_9397#PolymorphicMapType_15636| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_15688_15689) ) (! (= (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_21937_21939) ) (! (= (select (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_15636) (SummandMask1 T@PolymorphicMapType_15636) (SummandMask2 T@PolymorphicMapType_15636) (o_2@@39 T@Ref) (f_4@@39 T@Field_22105_22110) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_15636_9396_59900#PolymorphicMapType_15636| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_15636_9396_59900#PolymorphicMapType_15636| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_15636_9396_59900#PolymorphicMapType_15636| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15636_9396_59900#PolymorphicMapType_15636| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15636_9396_59900#PolymorphicMapType_15636| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15636_9396_59900#PolymorphicMapType_15636| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_15636) (SummandMask1@@0 T@PolymorphicMapType_15636) (SummandMask2@@0 T@PolymorphicMapType_15636) (o_2@@40 T@Ref) (f_4@@40 T@Field_9396_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_15636_9396_53#PolymorphicMapType_15636| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_15636_9396_53#PolymorphicMapType_15636| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_15636_9396_53#PolymorphicMapType_15636| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15636_9396_53#PolymorphicMapType_15636| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15636_9396_53#PolymorphicMapType_15636| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15636_9396_53#PolymorphicMapType_15636| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_15636) (SummandMask1@@1 T@PolymorphicMapType_15636) (SummandMask2@@1 T@PolymorphicMapType_15636) (o_2@@41 T@Ref) (f_4@@41 T@Field_22092_22093) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_15636_9396_9397#PolymorphicMapType_15636| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_15636_9396_9397#PolymorphicMapType_15636| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_15636_9396_9397#PolymorphicMapType_15636| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15636_9396_9397#PolymorphicMapType_15636| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15636_9396_9397#PolymorphicMapType_15636| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15636_9396_9397#PolymorphicMapType_15636| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_15636) (SummandMask1@@2 T@PolymorphicMapType_15636) (SummandMask2@@2 T@PolymorphicMapType_15636) (o_2@@42 T@Ref) (f_4@@42 T@Field_9396_9388) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_15636_9396_9388#PolymorphicMapType_15636| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_15636_9396_9388#PolymorphicMapType_15636| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_15636_9396_9388#PolymorphicMapType_15636| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15636_9396_9388#PolymorphicMapType_15636| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15636_9396_9388#PolymorphicMapType_15636| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15636_9396_9388#PolymorphicMapType_15636| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_15636) (SummandMask1@@3 T@PolymorphicMapType_15636) (SummandMask2@@3 T@PolymorphicMapType_15636) (o_2@@43 T@Ref) (f_4@@43 T@Field_9396_24258) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_15636_9396_59580#PolymorphicMapType_15636| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_15636_9396_59580#PolymorphicMapType_15636| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_15636_9396_59580#PolymorphicMapType_15636| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15636_9396_59580#PolymorphicMapType_15636| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15636_9396_59580#PolymorphicMapType_15636| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15636_9396_59580#PolymorphicMapType_15636| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_15636) (SummandMask1@@4 T@PolymorphicMapType_15636) (SummandMask2@@4 T@PolymorphicMapType_15636) (o_2@@44 T@Ref) (f_4@@44 T@Field_9390_22110) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_15636_9390_59480#PolymorphicMapType_15636| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_15636_9390_59480#PolymorphicMapType_15636| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_15636_9390_59480#PolymorphicMapType_15636| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15636_9390_59480#PolymorphicMapType_15636| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15636_9390_59480#PolymorphicMapType_15636| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15636_9390_59480#PolymorphicMapType_15636| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_15636) (SummandMask1@@5 T@PolymorphicMapType_15636) (SummandMask2@@5 T@PolymorphicMapType_15636) (o_2@@45 T@Ref) (f_4@@45 T@Field_15675_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_15636_9390_53#PolymorphicMapType_15636| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_15636_9390_53#PolymorphicMapType_15636| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_15636_9390_53#PolymorphicMapType_15636| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15636_9390_53#PolymorphicMapType_15636| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15636_9390_53#PolymorphicMapType_15636| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15636_9390_53#PolymorphicMapType_15636| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_15636) (SummandMask1@@6 T@PolymorphicMapType_15636) (SummandMask2@@6 T@PolymorphicMapType_15636) (o_2@@46 T@Ref) (f_4@@46 T@Field_9390_9397) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_15636_9390_9397#PolymorphicMapType_15636| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_15636_9390_9397#PolymorphicMapType_15636| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_15636_9390_9397#PolymorphicMapType_15636| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15636_9390_9397#PolymorphicMapType_15636| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15636_9390_9397#PolymorphicMapType_15636| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15636_9390_9397#PolymorphicMapType_15636| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_15636) (SummandMask1@@7 T@PolymorphicMapType_15636) (SummandMask2@@7 T@PolymorphicMapType_15636) (o_2@@47 T@Ref) (f_4@@47 T@Field_15688_15689) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_15636) (SummandMask1@@8 T@PolymorphicMapType_15636) (SummandMask2@@8 T@PolymorphicMapType_15636) (o_2@@48 T@Ref) (f_4@@48 T@Field_21937_21939) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Intersection_9453| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (select b@@4 o@@1)))
 :qid |stdinbpl.264:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_9453| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Intersection_9453| a@@5 b@@4) (select a@@5 o@@1))
 :pattern ( (|Set#Intersection_9453| a@@5 b@@4) (select b@@4 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (o@@2 T@Ref) ) (! (= (select (|Set#Difference_9453| a@@6 b@@5) o@@2)  (and (select a@@6 o@@2) (not (select b@@5 o@@2))))
 :qid |stdinbpl.279:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_9453| a@@6 b@@5) o@@2))
 :pattern ( (|Set#Difference_9453| a@@6 b@@5) (select a@@6 o@@2))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_9383| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.301:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_9383| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@8 y) (select (|Set#UnionOne_9453| a@@8 x) y))
 :qid |stdinbpl.244:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_9453| a@@8 x) (select a@@8 y))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@9 y@@0) (select (|Set#Union_9453| a@@9 b@@7) y@@0))
 :qid |stdinbpl.254:18|
 :skolemid |35|
 :pattern ( (|Set#Union_9453| a@@9 b@@7) (select a@@9 y@@0))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@8 y@@1) (select (|Set#Union_9453| a@@10 b@@8) y@@1))
 :qid |stdinbpl.256:18|
 :skolemid |36|
 :pattern ( (|Set#Union_9453| a@@10 b@@8) (select b@@8 y@@1))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@3 T@Ref) ) (! (= (select (|Set#UnionOne_9453| a@@11 x@@0) o@@3)  (or (= o@@3 x@@0) (select a@@11 o@@3)))
 :qid |stdinbpl.240:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_9453| a@@11 x@@0) o@@3))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@9 y@@2) (not (select (|Set#Difference_9453| a@@12 b@@9) y@@2)))
 :qid |stdinbpl.281:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_9453| a@@12 b@@9) (select b@@9 y@@2))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_9453| (|Set#Difference_9453| a@@13 b@@10)) (|Set#Card_9453| (|Set#Difference_9453| b@@10 a@@13))) (|Set#Card_9453| (|Set#Intersection_9453| a@@13 b@@10))) (|Set#Card_9453| (|Set#Union_9453| a@@13 b@@10))) (= (|Set#Card_9453| (|Set#Difference_9453| a@@13 b@@10)) (- (|Set#Card_9453| a@@13) (|Set#Card_9453| (|Set#Intersection_9453| a@@13 b@@10)))))
 :qid |stdinbpl.283:18|
 :skolemid |45|
 :pattern ( (|Set#Card_9453| (|Set#Difference_9453| a@@13 b@@10)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_9453| s))
 :qid |stdinbpl.226:18|
 :skolemid |22|
 :pattern ( (|Set#Card_9453| s))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_9453| a@@14 x@@1) x@@1)
 :qid |stdinbpl.242:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_9453| a@@14 x@@1))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@15 x@@2) (= (|Set#Card_9453| (|Set#UnionOne_9453| a@@15 x@@2)) (|Set#Card_9453| a@@15)))
 :qid |stdinbpl.246:18|
 :skolemid |32|
 :pattern ( (|Set#Card_9453| (|Set#UnionOne_9453| a@@15 x@@2)))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (getPredWandId_9396_9397 (inv this@@4)) 0)
 :qid |stdinbpl.441:15|
 :skolemid |84|
 :pattern ( (inv this@@4))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_9453| (|Set#Singleton_9453| r@@0)) 1)
 :qid |stdinbpl.237:18|
 :skolemid |28|
 :pattern ( (|Set#Card_9453| (|Set#Singleton_9453| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_9453| r@@1) r@@1)
 :qid |stdinbpl.235:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_9453| r@@1))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) ) (! (= (|Set#Union_9453| a@@16 (|Set#Union_9453| a@@16 b@@11)) (|Set#Union_9453| a@@16 b@@11))
 :qid |stdinbpl.269:18|
 :skolemid |39|
 :pattern ( (|Set#Union_9453| a@@16 (|Set#Union_9453| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_9453| a@@17 (|Set#Intersection_9453| a@@17 b@@12)) (|Set#Intersection_9453| a@@17 b@@12))
 :qid |stdinbpl.273:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_9453| a@@17 (|Set#Intersection_9453| a@@17 b@@12)))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_15615) (Heap1Heap@@0 T@PolymorphicMapType_15615) (this@@5 T@Ref) ) (!  (=> (and (=  (and (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap2Heap@@0) this@@5 all) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap1Heap@@0) this@@5 all) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap2Heap@@0) this@@5 all) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap2Heap@@0) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5)) left_2) (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap1Heap@@0) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5)) left_2)))) (= (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5)))
 :qid |stdinbpl.467:15|
 :skolemid |88|
 :pattern ( (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((o@@4 T@Ref) ) (!  (not (select |Set#Empty_9453| o@@4))
 :qid |stdinbpl.229:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_9453| o@@4))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_15615) (o_4 T@Ref) (f_25 T@Field_22105_22110) (v T@PolymorphicMapType_16164) ) (! (succHeap Heap@@21 (PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@21) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@21) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@21) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@21) (store (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@21) o_4 f_25 v) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@21) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@21) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@21) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@21) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@21) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@21) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@21) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@21) (store (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@21) o_4 f_25 v) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@21) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@21) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@21) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@21) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_15615) (o_4@@0 T@Ref) (f_25@@0 T@Field_22092_22093) (v@@0 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@22) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@22) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@22) (store (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@22) o_4@@0 f_25@@0 v@@0) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@22) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@22) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@22) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@22) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@22) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@22) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@22) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@22) (store (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@22) o_4@@0 f_25@@0 v@@0) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@22) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@22) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@22) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@22) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@22) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_15615) (o_4@@1 T@Ref) (f_25@@1 T@Field_9396_24258) (v@@1 (Array T@Ref Bool)) ) (! (succHeap Heap@@23 (PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@23) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@23) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@23) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@23) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@23) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@23) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@23) (store (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@23) o_4@@1 f_25@@1 v@@1) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@23) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@23) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@23) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@23) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@23) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@23) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@23) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@23) (store (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@23) o_4@@1 f_25@@1 v@@1) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@23) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_15615) (o_4@@2 T@Ref) (f_25@@2 T@Field_9396_9388) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@24) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@24) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@24) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@24) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@24) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@24) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@24) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@24) (store (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@24) o_4@@2 f_25@@2 v@@2) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@24) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@24) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@24) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@24) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@24) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@24) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@24) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@24) (store (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@24) o_4@@2 f_25@@2 v@@2) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_15615) (o_4@@3 T@Ref) (f_25@@3 T@Field_9396_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@25) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@25) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@25) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@25) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@25) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@25) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@25) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@25) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@25) (store (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@25) o_4@@3 f_25@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@25) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@25) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@25) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@25) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@25) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@25) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@25) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@25) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@25) (store (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@25) o_4@@3 f_25@@3 v@@3)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_15615) (o_4@@4 T@Ref) (f_25@@4 T@Field_9390_22110) (v@@4 T@PolymorphicMapType_16164) ) (! (succHeap Heap@@26 (PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@26) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@26) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@26) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@26) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@26) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@26) (store (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@26) o_4@@4 f_25@@4 v@@4) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@26) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@26) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@26) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@26) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@26) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@26) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@26) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@26) (store (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@26) o_4@@4 f_25@@4 v@@4) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@26) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@26) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_15615) (o_4@@5 T@Ref) (f_25@@5 T@Field_9390_9397) (v@@5 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@27) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@27) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@27) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@27) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@27) (store (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@27) o_4@@5 f_25@@5 v@@5) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@27) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@27) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@27) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@27) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@27) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@27) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@27) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@27) (store (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@27) o_4@@5 f_25@@5 v@@5) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@27) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@27) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@27) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_15615) (o_4@@6 T@Ref) (f_25@@6 T@Field_21937_21939) (v@@6 (Array T@Ref Bool)) ) (! (succHeap Heap@@28 (PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@28) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@28) (store (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@28) o_4@@6 f_25@@6 v@@6) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@28) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@28) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@28) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@28) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@28) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@28) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@28) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@28) (store (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@28) o_4@@6 f_25@@6 v@@6) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@28) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@28) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@28) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@28) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@28) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@28) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_15615) (o_4@@7 T@Ref) (f_25@@7 T@Field_15688_15689) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@29) (store (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@29) o_4@@7 f_25@@7 v@@7) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@29) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@29) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@29) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@29) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@29) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@29) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@29) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15615 (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@29) (store (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@29) o_4@@7 f_25@@7 v@@7) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@29) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@29) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@29) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@29) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@29) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@29) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@29) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_15615) (o_4@@8 T@Ref) (f_25@@8 T@Field_15675_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_15615 (store (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@30) o_4@@8 f_25@@8 v@@8) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@30) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@30) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@30) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@30) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@30) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@30) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@30) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@30) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15615 (store (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@30) o_4@@8 f_25@@8 v@@8) (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@30) (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@30) (|PolymorphicMapType_15615_9396_9397#PolymorphicMapType_15615| Heap@@30) (|PolymorphicMapType_15615_9400_42589#PolymorphicMapType_15615| Heap@@30) (|PolymorphicMapType_15615_9390_9397#PolymorphicMapType_15615| Heap@@30) (|PolymorphicMapType_15615_9390_50150#PolymorphicMapType_15615| Heap@@30) (|PolymorphicMapType_15615_9396_50430#PolymorphicMapType_15615| Heap@@30) (|PolymorphicMapType_15615_9396_9388#PolymorphicMapType_15615| Heap@@30) (|PolymorphicMapType_15615_9396_53#PolymorphicMapType_15615| Heap@@30)))
)))
(assert (forall ((this@@6 T@Ref) ) (! (= (PredicateMaskField_9396 (inv this@@6)) (|inv#sm| this@@6))
 :qid |stdinbpl.433:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_9396 (inv this@@6)))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.313:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.314:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_9453| s@@0) 0) (= s@@0 |Set#Empty_9453|)) (=> (not (= (|Set#Card_9453| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.232:33|
 :skolemid |24|
))))
 :qid |stdinbpl.230:18|
 :skolemid |25|
 :pattern ( (|Set#Card_9453| s@@0))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@20 x@@4)) (= (|Set#Card_9453| (|Set#UnionOne_9453| a@@20 x@@4)) (+ (|Set#Card_9453| a@@20) 1)))
 :qid |stdinbpl.248:18|
 :skolemid |33|
 :pattern ( (|Set#Card_9453| (|Set#UnionOne_9453| a@@20 x@@4)))
)))
(assert (forall ((o_4@@9 T@Ref) (f_9 T@Field_15688_15689) (Heap@@31 T@PolymorphicMapType_15615) ) (!  (=> (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@31) o_4@@9 $allocated) (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@31) (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@31) o_4@@9 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@31) o_4@@9 f_9))
)))
(assert (forall ((p@@2 T@Field_22092_22093) (v_1@@1 T@FrameType) (q T@Field_22092_22093) (w@@1 T@FrameType) (r@@2 T@Field_22092_22093) (u T@FrameType) ) (!  (=> (and (InsidePredicate_22092_22092 p@@2 v_1@@1 q w@@1) (InsidePredicate_22092_22092 q w@@1 r@@2 u)) (InsidePredicate_22092_22092 p@@2 v_1@@1 r@@2 u))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22092_22092 p@@2 v_1@@1 q w@@1) (InsidePredicate_22092_22092 q w@@1 r@@2 u))
)))
(assert (forall ((p@@3 T@Field_22092_22093) (v_1@@2 T@FrameType) (q@@0 T@Field_22092_22093) (w@@2 T@FrameType) (r@@3 T@Field_9390_9397) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_22092_22092 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_22092_15675 q@@0 w@@2 r@@3 u@@0)) (InsidePredicate_22092_15675 p@@3 v_1@@2 r@@3 u@@0))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22092_22092 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_22092_15675 q@@0 w@@2 r@@3 u@@0))
)))
(assert (forall ((p@@4 T@Field_22092_22093) (v_1@@3 T@FrameType) (q@@1 T@Field_9390_9397) (w@@3 T@FrameType) (r@@4 T@Field_22092_22093) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_22092_15675 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_15675_22092 q@@1 w@@3 r@@4 u@@1)) (InsidePredicate_22092_22092 p@@4 v_1@@3 r@@4 u@@1))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22092_15675 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_15675_22092 q@@1 w@@3 r@@4 u@@1))
)))
(assert (forall ((p@@5 T@Field_22092_22093) (v_1@@4 T@FrameType) (q@@2 T@Field_9390_9397) (w@@4 T@FrameType) (r@@5 T@Field_9390_9397) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_22092_15675 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_15675_15675 q@@2 w@@4 r@@5 u@@2)) (InsidePredicate_22092_15675 p@@5 v_1@@4 r@@5 u@@2))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22092_15675 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_15675_15675 q@@2 w@@4 r@@5 u@@2))
)))
(assert (forall ((p@@6 T@Field_9390_9397) (v_1@@5 T@FrameType) (q@@3 T@Field_22092_22093) (w@@5 T@FrameType) (r@@6 T@Field_22092_22093) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_15675_22092 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_22092_22092 q@@3 w@@5 r@@6 u@@3)) (InsidePredicate_15675_22092 p@@6 v_1@@5 r@@6 u@@3))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15675_22092 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_22092_22092 q@@3 w@@5 r@@6 u@@3))
)))
(assert (forall ((p@@7 T@Field_9390_9397) (v_1@@6 T@FrameType) (q@@4 T@Field_22092_22093) (w@@6 T@FrameType) (r@@7 T@Field_9390_9397) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_15675_22092 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_22092_15675 q@@4 w@@6 r@@7 u@@4)) (InsidePredicate_15675_15675 p@@7 v_1@@6 r@@7 u@@4))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15675_22092 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_22092_15675 q@@4 w@@6 r@@7 u@@4))
)))
(assert (forall ((p@@8 T@Field_9390_9397) (v_1@@7 T@FrameType) (q@@5 T@Field_9390_9397) (w@@7 T@FrameType) (r@@8 T@Field_22092_22093) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_15675_15675 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_15675_22092 q@@5 w@@7 r@@8 u@@5)) (InsidePredicate_15675_22092 p@@8 v_1@@7 r@@8 u@@5))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15675_15675 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_15675_22092 q@@5 w@@7 r@@8 u@@5))
)))
(assert (forall ((p@@9 T@Field_9390_9397) (v_1@@8 T@FrameType) (q@@6 T@Field_9390_9397) (w@@8 T@FrameType) (r@@9 T@Field_9390_9397) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_15675_15675 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_15675_15675 q@@6 w@@8 r@@9 u@@6)) (InsidePredicate_15675_15675 p@@9 v_1@@8 r@@9 u@@6))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15675_15675 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_15675_15675 q@@6 w@@8 r@@9 u@@6))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.319:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Union_9453| a@@22 b@@15) o@@5)  (or (select a@@22 o@@5) (select b@@15 o@@5)))
 :qid |stdinbpl.252:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_9453| a@@22 b@@15) o@@5))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@32 () T@PolymorphicMapType_15615)
(declare-fun this@@7 () T@Ref)
(declare-fun x_2 () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_15636)
(declare-fun QPMask@1 () T@PolymorphicMapType_15636)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_15636)
(set-info :boogie-vc-id |inv#definedness|)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon5_correct true))
(let ((anon9_Else_correct  (=> (and (not (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) x_2)) (= (ControlFlow 0 9) 6)) anon5_correct)))
(let ((anon9_Then_correct  (=> (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) x_2) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_9387_9388 QPMask@0 x_2 left_2)) (=> (HasDirectPerm_9387_9388 QPMask@0 x_2 left_2) (=> (= (ControlFlow 0 7) 6) anon5_correct))))))
(let ((anon8_Then_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (HasDirectPerm_9390_24258 QPMask@0 this@@7 all)) (=> (HasDirectPerm_9390_24258 QPMask@0 this@@7 all) (and (=> (= (ControlFlow 0 10) 7) anon9_Then_correct) (=> (= (ControlFlow 0 10) 9) anon9_Else_correct))))))
(let ((anon8_Else_correct  (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall ((x_2_2 T@Ref) (x_2_3 T@Ref) ) (!  (=> (and (and (and (and (not (= x_2_2 x_2_3)) (and (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) x_2_2) (= (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@32) x_2_2 left_2) null))) (and (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) x_2_3) (= (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@32) x_2_3 left_2) null))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= x_2_2 x_2_3)))
 :qid |stdinbpl.561:15|
 :skolemid |97|
))) (=> (forall ((x_2_2@@0 T@Ref) (x_2_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_2_2@@0 x_2_3@@0)) (and (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) x_2_2@@0) (= (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@32) x_2_2@@0 left_2) null))) (and (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) x_2_3@@0) (= (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@32) x_2_3@@0 left_2) null))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= x_2_2@@0 x_2_3@@0)))
 :qid |stdinbpl.561:15|
 :skolemid |97|
)) (=> (forall ((x_2_2@@1 T@Ref) ) (!  (=> (and (and (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) x_2_2@@1) (= (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@32) x_2_2@@1 left_2) null)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange2 x_2_2@@1) (= (invRecv2 x_2_2@@1) x_2_2@@1)))
 :qid |stdinbpl.567:22|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@32) x_2_2@@1 left_2))
 :pattern ( (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| QPMask@1) x_2_2@@1 left_2))
 :pattern ( (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) x_2_2@@1))
)) (=> (and (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) (invRecv2 o_9)) (= (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@32) (invRecv2 o_9) left_2) null)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_9)) (= (invRecv2 o_9) o_9))
 :qid |stdinbpl.571:22|
 :skolemid |99|
 :pattern ( (invRecv2 o_9))
)) (= (ControlFlow 0 4) (- 0 3))) (forall ((x_2_2@@2 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) x_2_2@@2) (= (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@32) x_2_2@@2 left_2) null)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.577:15|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@32) x_2_2@@2 left_2))
 :pattern ( (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| QPMask@1) x_2_2@@2 left_2))
 :pattern ( (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) x_2_2@@2))
))))))))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 12) (- 0 14)) (forall ((q_2_1 T@Ref) (q_2_2 T@Ref) ) (!  (=> (and (and (and (and (not (= q_2_1 q_2_2)) (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) q_2_1)) (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) q_2_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= q_2_1 q_2_2)))
 :qid |stdinbpl.510:15|
 :skolemid |90|
))) (=> (forall ((q_2_1@@0 T@Ref) (q_2_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= q_2_1@@0 q_2_2@@0)) (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) q_2_1@@0)) (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) q_2_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= q_2_1@@0 q_2_2@@0)))
 :qid |stdinbpl.510:15|
 :skolemid |90|
)) (=> (and (forall ((q_2_1@@1 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) q_2_1@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange1 q_2_1@@1) (= (invRecv1 q_2_1@@1) q_2_1@@1)))
 :qid |stdinbpl.516:22|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@32) q_2_1@@1 left_2))
 :pattern ( (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| QPMask@0) q_2_1@@1 left_2))
 :pattern ( (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) q_2_1@@1))
)) (forall ((o_9@@0 T@Ref) ) (!  (=> (and (and (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) (invRecv1 o_9@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange1 o_9@@0)) (= (invRecv1 o_9@@0) o_9@@0))
 :qid |stdinbpl.520:22|
 :skolemid |92|
 :pattern ( (invRecv1 o_9@@0))
))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (forall ((q_2_1@@2 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) q_2_1@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.526:15|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@32) q_2_1@@2 left_2))
 :pattern ( (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| QPMask@0) q_2_1@@2 left_2))
 :pattern ( (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) q_2_1@@2))
))) (=> (forall ((q_2_1@@3 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) q_2_1@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.526:15|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@32) q_2_1@@3 left_2))
 :pattern ( (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| QPMask@0) q_2_1@@3 left_2))
 :pattern ( (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) q_2_1@@3))
)) (=> (and (forall ((q_2_1@@4 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) q_2_1@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= q_2_1@@4 null)))
 :qid |stdinbpl.532:22|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_15615_9053_9054#PolymorphicMapType_15615| Heap@@32) q_2_1@@4 left_2))
 :pattern ( (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| QPMask@0) q_2_1@@4 left_2))
 :pattern ( (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) q_2_1@@4))
)) (forall ((o_9@@1 T@Ref) ) (!  (and (=> (and (and (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) (invRecv1 o_9@@1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange1 o_9@@1)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv1 o_9@@1) o_9@@1)) (= (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| QPMask@0) o_9@@1 left_2) (+ (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| Mask@0) o_9@@1 left_2) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select (select (|PolymorphicMapType_15615_9390_22690#PolymorphicMapType_15615| Heap@@32) this@@7 all) (invRecv1 o_9@@1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange1 o_9@@1))) (= (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| QPMask@0) o_9@@1 left_2) (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| Mask@0) o_9@@1 left_2))))
 :qid |stdinbpl.538:22|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| QPMask@0) o_9@@1 left_2))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@2 T@Ref) (f_5 T@Field_15675_53) ) (!  (=> true (= (select (|PolymorphicMapType_15636_9390_53#PolymorphicMapType_15636| Mask@0) o_9@@2 f_5) (select (|PolymorphicMapType_15636_9390_53#PolymorphicMapType_15636| QPMask@0) o_9@@2 f_5)))
 :qid |stdinbpl.542:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_15636_9390_53#PolymorphicMapType_15636| Mask@0) o_9@@2 f_5))
 :pattern ( (select (|PolymorphicMapType_15636_9390_53#PolymorphicMapType_15636| QPMask@0) o_9@@2 f_5))
)) (forall ((o_9@@3 T@Ref) (f_5@@0 T@Field_15688_15689) ) (!  (=> (not (= f_5@@0 left_2)) (= (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| Mask@0) o_9@@3 f_5@@0) (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| QPMask@0) o_9@@3 f_5@@0)))
 :qid |stdinbpl.542:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| Mask@0) o_9@@3 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| QPMask@0) o_9@@3 f_5@@0))
))) (forall ((o_9@@4 T@Ref) (f_5@@1 T@Field_21937_21939) ) (!  (=> true (= (select (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| Mask@0) o_9@@4 f_5@@1) (select (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| QPMask@0) o_9@@4 f_5@@1)))
 :qid |stdinbpl.542:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| Mask@0) o_9@@4 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| QPMask@0) o_9@@4 f_5@@1))
))) (forall ((o_9@@5 T@Ref) (f_5@@2 T@Field_9390_9397) ) (!  (=> true (= (select (|PolymorphicMapType_15636_9390_9397#PolymorphicMapType_15636| Mask@0) o_9@@5 f_5@@2) (select (|PolymorphicMapType_15636_9390_9397#PolymorphicMapType_15636| QPMask@0) o_9@@5 f_5@@2)))
 :qid |stdinbpl.542:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_15636_9390_9397#PolymorphicMapType_15636| Mask@0) o_9@@5 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_15636_9390_9397#PolymorphicMapType_15636| QPMask@0) o_9@@5 f_5@@2))
))) (forall ((o_9@@6 T@Ref) (f_5@@3 T@Field_9390_22110) ) (!  (=> true (= (select (|PolymorphicMapType_15636_9390_59480#PolymorphicMapType_15636| Mask@0) o_9@@6 f_5@@3) (select (|PolymorphicMapType_15636_9390_59480#PolymorphicMapType_15636| QPMask@0) o_9@@6 f_5@@3)))
 :qid |stdinbpl.542:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_15636_9390_59480#PolymorphicMapType_15636| Mask@0) o_9@@6 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_15636_9390_59480#PolymorphicMapType_15636| QPMask@0) o_9@@6 f_5@@3))
))) (forall ((o_9@@7 T@Ref) (f_5@@4 T@Field_9396_53) ) (!  (=> true (= (select (|PolymorphicMapType_15636_9396_53#PolymorphicMapType_15636| Mask@0) o_9@@7 f_5@@4) (select (|PolymorphicMapType_15636_9396_53#PolymorphicMapType_15636| QPMask@0) o_9@@7 f_5@@4)))
 :qid |stdinbpl.542:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_15636_9396_53#PolymorphicMapType_15636| Mask@0) o_9@@7 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_15636_9396_53#PolymorphicMapType_15636| QPMask@0) o_9@@7 f_5@@4))
))) (forall ((o_9@@8 T@Ref) (f_5@@5 T@Field_9396_9388) ) (!  (=> true (= (select (|PolymorphicMapType_15636_9396_9388#PolymorphicMapType_15636| Mask@0) o_9@@8 f_5@@5) (select (|PolymorphicMapType_15636_9396_9388#PolymorphicMapType_15636| QPMask@0) o_9@@8 f_5@@5)))
 :qid |stdinbpl.542:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_15636_9396_9388#PolymorphicMapType_15636| Mask@0) o_9@@8 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_15636_9396_9388#PolymorphicMapType_15636| QPMask@0) o_9@@8 f_5@@5))
))) (forall ((o_9@@9 T@Ref) (f_5@@6 T@Field_9396_24258) ) (!  (=> true (= (select (|PolymorphicMapType_15636_9396_59580#PolymorphicMapType_15636| Mask@0) o_9@@9 f_5@@6) (select (|PolymorphicMapType_15636_9396_59580#PolymorphicMapType_15636| QPMask@0) o_9@@9 f_5@@6)))
 :qid |stdinbpl.542:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_15636_9396_59580#PolymorphicMapType_15636| Mask@0) o_9@@9 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_15636_9396_59580#PolymorphicMapType_15636| QPMask@0) o_9@@9 f_5@@6))
))) (forall ((o_9@@10 T@Ref) (f_5@@7 T@Field_22092_22093) ) (!  (=> true (= (select (|PolymorphicMapType_15636_9396_9397#PolymorphicMapType_15636| Mask@0) o_9@@10 f_5@@7) (select (|PolymorphicMapType_15636_9396_9397#PolymorphicMapType_15636| QPMask@0) o_9@@10 f_5@@7)))
 :qid |stdinbpl.542:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_15636_9396_9397#PolymorphicMapType_15636| Mask@0) o_9@@10 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_15636_9396_9397#PolymorphicMapType_15636| QPMask@0) o_9@@10 f_5@@7))
))) (forall ((o_9@@11 T@Ref) (f_5@@8 T@Field_22105_22110) ) (!  (=> true (= (select (|PolymorphicMapType_15636_9396_59900#PolymorphicMapType_15636| Mask@0) o_9@@11 f_5@@8) (select (|PolymorphicMapType_15636_9396_59900#PolymorphicMapType_15636| QPMask@0) o_9@@11 f_5@@8)))
 :qid |stdinbpl.542:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_15636_9396_59900#PolymorphicMapType_15636| Mask@0) o_9@@11 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_15636_9396_59900#PolymorphicMapType_15636| QPMask@0) o_9@@11 f_5@@8))
))) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 12) 10) anon8_Then_correct) (=> (= (ControlFlow 0 12) 4) anon8_Else_correct)))))))))))
(let ((anon7_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_9390_24258 Mask@0 this@@7 all))))
(let ((anon0_correct  (=> (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_15615_9050_53#PolymorphicMapType_15615| Heap@@32) this@@7 $allocated) (not (= this@@7 null))) (and (= Mask@0 (PolymorphicMapType_15636 (store (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| ZeroMask) this@@7 all (+ (select (|PolymorphicMapType_15636_9390_24140#PolymorphicMapType_15636| ZeroMask) this@@7 all) FullPerm)) (|PolymorphicMapType_15636_9387_9388#PolymorphicMapType_15636| ZeroMask) (|PolymorphicMapType_15636_9396_9397#PolymorphicMapType_15636| ZeroMask) (|PolymorphicMapType_15636_9390_9397#PolymorphicMapType_15636| ZeroMask) (|PolymorphicMapType_15636_9390_53#PolymorphicMapType_15636| ZeroMask) (|PolymorphicMapType_15636_9390_59480#PolymorphicMapType_15636| ZeroMask) (|PolymorphicMapType_15636_9396_59580#PolymorphicMapType_15636| ZeroMask) (|PolymorphicMapType_15636_9396_9388#PolymorphicMapType_15636| ZeroMask) (|PolymorphicMapType_15636_9396_53#PolymorphicMapType_15636| ZeroMask) (|PolymorphicMapType_15636_9396_59900#PolymorphicMapType_15636| ZeroMask))) (state Heap@@32 Mask@0))) (and (=> (= (ControlFlow 0 15) 2) anon7_Then_correct) (=> (= (ControlFlow 0 15) 12) anon7_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16) 15) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
