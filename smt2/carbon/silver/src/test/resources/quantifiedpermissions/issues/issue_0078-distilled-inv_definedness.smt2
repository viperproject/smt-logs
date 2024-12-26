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
(declare-sort T@Field_9875_53 0)
(declare-sort T@Field_9888_9889 0)
(declare-sort T@Field_16113_16115 0)
(declare-sort T@Field_16179_16180 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_6051_6058 0)
(declare-sort T@Field_6051_16197 0)
(declare-sort T@Field_6057_18345 0)
(declare-sort T@Field_6057_6049 0)
(declare-sort T@Field_6057_53 0)
(declare-sort T@Field_16192_16197 0)
(declare-datatypes ((T@PolymorphicMapType_9836 0)) (((PolymorphicMapType_9836 (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| (Array T@Ref T@Field_16113_16115 Real)) (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| (Array T@Ref T@Field_9888_9889 Real)) (|PolymorphicMapType_9836_6057_6058#PolymorphicMapType_9836| (Array T@Ref T@Field_16179_16180 Real)) (|PolymorphicMapType_9836_6051_6058#PolymorphicMapType_9836| (Array T@Ref T@Field_6051_6058 Real)) (|PolymorphicMapType_9836_6051_53#PolymorphicMapType_9836| (Array T@Ref T@Field_9875_53 Real)) (|PolymorphicMapType_9836_6051_37736#PolymorphicMapType_9836| (Array T@Ref T@Field_6051_16197 Real)) (|PolymorphicMapType_9836_6057_37836#PolymorphicMapType_9836| (Array T@Ref T@Field_6057_18345 Real)) (|PolymorphicMapType_9836_6057_6049#PolymorphicMapType_9836| (Array T@Ref T@Field_6057_6049 Real)) (|PolymorphicMapType_9836_6057_53#PolymorphicMapType_9836| (Array T@Ref T@Field_6057_53 Real)) (|PolymorphicMapType_9836_6057_38156#PolymorphicMapType_9836| (Array T@Ref T@Field_16192_16197 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10364 0)) (((PolymorphicMapType_10364 (|PolymorphicMapType_10364_9875_53#PolymorphicMapType_10364| (Array T@Ref T@Field_9875_53 Bool)) (|PolymorphicMapType_10364_9875_9889#PolymorphicMapType_10364| (Array T@Ref T@Field_9888_9889 Bool)) (|PolymorphicMapType_10364_9875_30823#PolymorphicMapType_10364| (Array T@Ref T@Field_16113_16115 Bool)) (|PolymorphicMapType_10364_9875_16180#PolymorphicMapType_10364| (Array T@Ref T@Field_6051_6058 Bool)) (|PolymorphicMapType_10364_9875_31245#PolymorphicMapType_10364| (Array T@Ref T@Field_6051_16197 Bool)) (|PolymorphicMapType_10364_16179_53#PolymorphicMapType_10364| (Array T@Ref T@Field_6057_53 Bool)) (|PolymorphicMapType_10364_16179_9889#PolymorphicMapType_10364| (Array T@Ref T@Field_6057_6049 Bool)) (|PolymorphicMapType_10364_16179_31891#PolymorphicMapType_10364| (Array T@Ref T@Field_6057_18345 Bool)) (|PolymorphicMapType_10364_16179_16180#PolymorphicMapType_10364| (Array T@Ref T@Field_16179_16180 Bool)) (|PolymorphicMapType_10364_16179_32313#PolymorphicMapType_10364| (Array T@Ref T@Field_16192_16197 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9815 0)) (((PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| (Array T@Ref T@Field_9875_53 Bool)) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| (Array T@Ref T@Field_9888_9889 T@Ref)) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| (Array T@Ref T@Field_16113_16115 (Array T@Ref Bool))) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| (Array T@Ref T@Field_16179_16180 T@FrameType)) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| (Array T@Ref T@Field_6051_6058 T@FrameType)) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| (Array T@Ref T@Field_6051_16197 T@PolymorphicMapType_10364)) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| (Array T@Ref T@Field_6057_18345 (Array T@Ref Bool))) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| (Array T@Ref T@Field_6057_6049 T@Ref)) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| (Array T@Ref T@Field_6057_53 Bool)) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| (Array T@Ref T@Field_16192_16197 T@PolymorphicMapType_10364)) ) ) ))
(declare-fun $allocated () T@Field_9875_53)
(declare-fun left () T@Field_9888_9889)
(declare-fun all () T@Field_16113_16115)
(declare-fun succHeap (T@PolymorphicMapType_9815 T@PolymorphicMapType_9815) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9815 T@PolymorphicMapType_9815) Bool)
(declare-fun state (T@PolymorphicMapType_9815 T@PolymorphicMapType_9836) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9836) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10364)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun inv (T@Ref) T@Field_16179_16180)
(declare-fun IsPredicateField_6057_6058 (T@Field_16179_16180) Bool)
(declare-fun |inv#trigger_6057| (T@PolymorphicMapType_9815 T@Field_16179_16180) Bool)
(declare-fun |inv#everUsed_6057| (T@Field_16179_16180) Bool)
(declare-fun |inv#condqp2| (T@PolymorphicMapType_9815 T@Ref) Int)
(declare-fun |sk_inv#condqp2| (Int Int) T@Ref)
(declare-fun null () T@Ref)
(declare-fun NoPerm () Real)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9815 T@PolymorphicMapType_9815 T@PolymorphicMapType_9836) Bool)
(declare-fun PredicateMaskField_6057 (T@Field_16179_16180) T@Field_16192_16197)
(declare-fun HasDirectPerm_6057_6058 (T@PolymorphicMapType_9836 T@Ref T@Field_16179_16180) Bool)
(declare-fun IsPredicateField_6051_29741 (T@Field_6051_6058) Bool)
(declare-fun PredicateMaskField_6051 (T@Field_6051_6058) T@Field_6051_16197)
(declare-fun HasDirectPerm_6051_6058 (T@PolymorphicMapType_9836 T@Ref T@Field_6051_6058) Bool)
(declare-fun IsWandField_6057_33478 (T@Field_16179_16180) Bool)
(declare-fun WandMaskField_6057 (T@Field_16179_16180) T@Field_16192_16197)
(declare-fun IsWandField_6051_33121 (T@Field_6051_6058) Bool)
(declare-fun WandMaskField_6051 (T@Field_6051_6058) T@Field_6051_16197)
(declare-fun |inv#sm| (T@Ref) T@Field_16192_16197)
(declare-fun dummyHeap () T@PolymorphicMapType_9815)
(declare-fun ZeroMask () T@PolymorphicMapType_9836)
(declare-fun InsidePredicate_16179_16179 (T@Field_16179_16180 T@FrameType T@Field_16179_16180 T@FrameType) Bool)
(declare-fun InsidePredicate_9875_9875 (T@Field_6051_6058 T@FrameType T@Field_6051_6058 T@FrameType) Bool)
(declare-fun IsPredicateField_6048_6049 (T@Field_9888_9889) Bool)
(declare-fun IsWandField_6048_6049 (T@Field_9888_9889) Bool)
(declare-fun IsPredicateField_6051_16139 (T@Field_16113_16115) Bool)
(declare-fun IsWandField_6051_16166 (T@Field_16113_16115) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6057_40448 (T@Field_16192_16197) Bool)
(declare-fun IsWandField_6057_40464 (T@Field_16192_16197) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6057_53 (T@Field_6057_53) Bool)
(declare-fun IsWandField_6057_53 (T@Field_6057_53) Bool)
(declare-fun IsPredicateField_6057_6049 (T@Field_6057_6049) Bool)
(declare-fun IsWandField_6057_6049 (T@Field_6057_6049) Bool)
(declare-fun IsPredicateField_6057_39785 (T@Field_6057_18345) Bool)
(declare-fun IsWandField_6057_39801 (T@Field_6057_18345) Bool)
(declare-fun IsPredicateField_6051_39612 (T@Field_6051_16197) Bool)
(declare-fun IsWandField_6051_39628 (T@Field_6051_16197) Bool)
(declare-fun IsPredicateField_6051_53 (T@Field_9875_53) Bool)
(declare-fun IsWandField_6051_53 (T@Field_9875_53) Bool)
(declare-fun HasDirectPerm_6057_29453 (T@PolymorphicMapType_9836 T@Ref T@Field_16192_16197) Bool)
(declare-fun HasDirectPerm_6057_53 (T@PolymorphicMapType_9836 T@Ref T@Field_6057_53) Bool)
(declare-fun HasDirectPerm_6057_6049 (T@PolymorphicMapType_9836 T@Ref T@Field_6057_6049) Bool)
(declare-fun HasDirectPerm_6057_28567 (T@PolymorphicMapType_9836 T@Ref T@Field_6057_18345) Bool)
(declare-fun HasDirectPerm_6051_28287 (T@PolymorphicMapType_9836 T@Ref T@Field_6051_16197) Bool)
(declare-fun HasDirectPerm_6051_53 (T@PolymorphicMapType_9836 T@Ref T@Field_9875_53) Bool)
(declare-fun HasDirectPerm_6048_6049 (T@PolymorphicMapType_9836 T@Ref T@Field_9888_9889) Bool)
(declare-fun HasDirectPerm_6051_18345 (T@PolymorphicMapType_9836 T@Ref T@Field_16113_16115) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9836 T@PolymorphicMapType_9836 T@PolymorphicMapType_9836) Bool)
(declare-fun getPredWandId_6057_6058 (T@Field_16179_16180) Int)
(declare-fun |inv#condqp1| (T@PolymorphicMapType_9815 T@Ref) Int)
(declare-fun |sk_inv#condqp1| (Int Int) T@Ref)
(declare-fun InsidePredicate_16179_9875 (T@Field_16179_16180 T@FrameType T@Field_6051_6058 T@FrameType) Bool)
(declare-fun InsidePredicate_9875_16179 (T@Field_6051_6058 T@FrameType T@Field_16179_16180 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_9815) (Heap1 T@PolymorphicMapType_9815) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9815) (Mask T@PolymorphicMapType_9836) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9815) (Heap1@@0 T@PolymorphicMapType_9815) (Heap2 T@PolymorphicMapType_9815) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16192_16197) ) (!  (not (select (|PolymorphicMapType_10364_16179_32313#PolymorphicMapType_10364| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10364_16179_32313#PolymorphicMapType_10364| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16179_16180) ) (!  (not (select (|PolymorphicMapType_10364_16179_16180#PolymorphicMapType_10364| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10364_16179_16180#PolymorphicMapType_10364| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6057_18345) ) (!  (not (select (|PolymorphicMapType_10364_16179_31891#PolymorphicMapType_10364| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10364_16179_31891#PolymorphicMapType_10364| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6057_6049) ) (!  (not (select (|PolymorphicMapType_10364_16179_9889#PolymorphicMapType_10364| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10364_16179_9889#PolymorphicMapType_10364| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6057_53) ) (!  (not (select (|PolymorphicMapType_10364_16179_53#PolymorphicMapType_10364| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10364_16179_53#PolymorphicMapType_10364| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_6051_16197) ) (!  (not (select (|PolymorphicMapType_10364_9875_31245#PolymorphicMapType_10364| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10364_9875_31245#PolymorphicMapType_10364| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_6051_6058) ) (!  (not (select (|PolymorphicMapType_10364_9875_16180#PolymorphicMapType_10364| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10364_9875_16180#PolymorphicMapType_10364| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_16113_16115) ) (!  (not (select (|PolymorphicMapType_10364_9875_30823#PolymorphicMapType_10364| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10364_9875_30823#PolymorphicMapType_10364| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_9888_9889) ) (!  (not (select (|PolymorphicMapType_10364_9875_9889#PolymorphicMapType_10364| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10364_9875_9889#PolymorphicMapType_10364| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_9875_53) ) (!  (not (select (|PolymorphicMapType_10364_9875_53#PolymorphicMapType_10364| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10364_9875_53#PolymorphicMapType_10364| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.297:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_6057_6058 (inv this))
 :qid |stdinbpl.413:15|
 :skolemid |83|
 :pattern ( (inv this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9815) (this@@0 T@Ref) ) (! (|inv#everUsed_6057| (inv this@@0))
 :qid |stdinbpl.432:15|
 :skolemid |87|
 :pattern ( (|inv#trigger_6057| Heap@@0 (inv this@@0)))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_9815) (Heap1Heap T@PolymorphicMapType_9815) (this@@1 T@Ref) ) (!  (=> (and (=  (and (and (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap2Heap) this@@1 all) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1))) (= (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap2Heap) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)) left) null)) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (and (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap1Heap) this@@1 all) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1))) (= (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap1Heap) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)) left) null)) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (and (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap2Heap) this@@1 all) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1))) (= (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap2Heap) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)) left) null)) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap2Heap) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)) left) (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap1Heap) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)) left)))) (= (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)))
 :qid |stdinbpl.454:15|
 :skolemid |89|
 :pattern ( (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.300:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9815) (ExhaleHeap T@PolymorphicMapType_9815) (Mask@@0 T@PolymorphicMapType_9836) (pm_f_5 T@Field_16179_16180) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6057_6058 Mask@@0 null pm_f_5) (IsPredicateField_6057_6058 pm_f_5)) (= (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@1) null (PredicateMaskField_6057 pm_f_5)) (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| ExhaleHeap) null (PredicateMaskField_6057 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_6057_6058 pm_f_5) (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| ExhaleHeap) null (PredicateMaskField_6057 pm_f_5)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9815) (ExhaleHeap@@0 T@PolymorphicMapType_9815) (Mask@@1 T@PolymorphicMapType_9836) (pm_f_5@@0 T@Field_6051_6058) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6051_6058 Mask@@1 null pm_f_5@@0) (IsPredicateField_6051_29741 pm_f_5@@0)) (= (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@2) null (PredicateMaskField_6051 pm_f_5@@0)) (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| ExhaleHeap@@0) null (PredicateMaskField_6051 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6051_29741 pm_f_5@@0) (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| ExhaleHeap@@0) null (PredicateMaskField_6051 pm_f_5@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9815) (ExhaleHeap@@1 T@PolymorphicMapType_9815) (Mask@@2 T@PolymorphicMapType_9836) (pm_f_5@@1 T@Field_16179_16180) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6057_6058 Mask@@2 null pm_f_5@@1) (IsWandField_6057_33478 pm_f_5@@1)) (= (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@3) null (WandMaskField_6057 pm_f_5@@1)) (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| ExhaleHeap@@1) null (WandMaskField_6057 pm_f_5@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_6057_33478 pm_f_5@@1) (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| ExhaleHeap@@1) null (WandMaskField_6057 pm_f_5@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9815) (ExhaleHeap@@2 T@PolymorphicMapType_9815) (Mask@@3 T@PolymorphicMapType_9836) (pm_f_5@@2 T@Field_6051_6058) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6051_6058 Mask@@3 null pm_f_5@@2) (IsWandField_6051_33121 pm_f_5@@2)) (= (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@4) null (WandMaskField_6051 pm_f_5@@2)) (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| ExhaleHeap@@2) null (WandMaskField_6051 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_6051_33121 pm_f_5@@2) (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| ExhaleHeap@@2) null (WandMaskField_6051 pm_f_5@@2)))
)))
(assert (forall ((this@@2 T@Ref) (this2 T@Ref) ) (!  (=> (= (inv this@@2) (inv this2)) (= this@@2 this2))
 :qid |stdinbpl.423:15|
 :skolemid |85|
 :pattern ( (inv this@@2) (inv this2))
)))
(assert (forall ((this@@3 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|inv#sm| this@@3) (|inv#sm| this2@@0)) (= this@@3 this2@@0))
 :qid |stdinbpl.427:15|
 :skolemid |86|
 :pattern ( (|inv#sm| this@@3) (|inv#sm| this2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9815) (ExhaleHeap@@3 T@PolymorphicMapType_9815) (Mask@@4 T@PolymorphicMapType_9836) (pm_f_5@@3 T@Field_16179_16180) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_6057_6058 Mask@@4 null pm_f_5@@3) (IsPredicateField_6057_6058 pm_f_5@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_9875_53) ) (!  (=> (select (|PolymorphicMapType_10364_9875_53#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@5) null (PredicateMaskField_6057 pm_f_5@@3))) o2_5 f_16) (= (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@5) o2_5 f_16) (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_9888_9889) ) (!  (=> (select (|PolymorphicMapType_10364_9875_9889#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@5) null (PredicateMaskField_6057 pm_f_5@@3))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@5) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_16113_16115) ) (!  (=> (select (|PolymorphicMapType_10364_9875_30823#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@5) null (PredicateMaskField_6057 pm_f_5@@3))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@5) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_6051_6058) ) (!  (=> (select (|PolymorphicMapType_10364_9875_16180#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@5) null (PredicateMaskField_6057 pm_f_5@@3))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@5) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_6051_16197) ) (!  (=> (select (|PolymorphicMapType_10364_9875_31245#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@5) null (PredicateMaskField_6057 pm_f_5@@3))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@5) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5@@3 f_16@@3))
))) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_6057_53) ) (!  (=> (select (|PolymorphicMapType_10364_16179_53#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@5) null (PredicateMaskField_6057 pm_f_5@@3))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@5) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_6057_6049) ) (!  (=> (select (|PolymorphicMapType_10364_16179_9889#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@5) null (PredicateMaskField_6057 pm_f_5@@3))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@5) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_6057_18345) ) (!  (=> (select (|PolymorphicMapType_10364_16179_31891#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@5) null (PredicateMaskField_6057 pm_f_5@@3))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@5) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5@@6 f_16@@6))
))) (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_16179_16180) ) (!  (=> (select (|PolymorphicMapType_10364_16179_16180#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@5) null (PredicateMaskField_6057 pm_f_5@@3))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@5) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5@@7 f_16@@7))
))) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_16192_16197) ) (!  (=> (select (|PolymorphicMapType_10364_16179_32313#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@5) null (PredicateMaskField_6057 pm_f_5@@3))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@5) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| ExhaleHeap@@3) o2_5@@8 f_16@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_6057_6058 pm_f_5@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9815) (ExhaleHeap@@4 T@PolymorphicMapType_9815) (Mask@@5 T@PolymorphicMapType_9836) (pm_f_5@@4 T@Field_6051_6058) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_6051_6058 Mask@@5 null pm_f_5@@4) (IsPredicateField_6051_29741 pm_f_5@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@9 T@Ref) (f_16@@9 T@Field_9875_53) ) (!  (=> (select (|PolymorphicMapType_10364_9875_53#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@6) null (PredicateMaskField_6051 pm_f_5@@4))) o2_5@@9 f_16@@9) (= (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@6) o2_5@@9 f_16@@9) (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@9 f_16@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@9 f_16@@9))
)) (forall ((o2_5@@10 T@Ref) (f_16@@10 T@Field_9888_9889) ) (!  (=> (select (|PolymorphicMapType_10364_9875_9889#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@6) null (PredicateMaskField_6051 pm_f_5@@4))) o2_5@@10 f_16@@10) (= (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@6) o2_5@@10 f_16@@10) (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@10 f_16@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@10 f_16@@10))
))) (forall ((o2_5@@11 T@Ref) (f_16@@11 T@Field_16113_16115) ) (!  (=> (select (|PolymorphicMapType_10364_9875_30823#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@6) null (PredicateMaskField_6051 pm_f_5@@4))) o2_5@@11 f_16@@11) (= (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@6) o2_5@@11 f_16@@11) (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@11 f_16@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@11 f_16@@11))
))) (forall ((o2_5@@12 T@Ref) (f_16@@12 T@Field_6051_6058) ) (!  (=> (select (|PolymorphicMapType_10364_9875_16180#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@6) null (PredicateMaskField_6051 pm_f_5@@4))) o2_5@@12 f_16@@12) (= (select (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@6) o2_5@@12 f_16@@12) (select (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@12 f_16@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@12 f_16@@12))
))) (forall ((o2_5@@13 T@Ref) (f_16@@13 T@Field_6051_16197) ) (!  (=> (select (|PolymorphicMapType_10364_9875_31245#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@6) null (PredicateMaskField_6051 pm_f_5@@4))) o2_5@@13 f_16@@13) (= (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@6) o2_5@@13 f_16@@13) (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@13 f_16@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@13 f_16@@13))
))) (forall ((o2_5@@14 T@Ref) (f_16@@14 T@Field_6057_53) ) (!  (=> (select (|PolymorphicMapType_10364_16179_53#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@6) null (PredicateMaskField_6051 pm_f_5@@4))) o2_5@@14 f_16@@14) (= (select (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@6) o2_5@@14 f_16@@14) (select (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@14 f_16@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@14 f_16@@14))
))) (forall ((o2_5@@15 T@Ref) (f_16@@15 T@Field_6057_6049) ) (!  (=> (select (|PolymorphicMapType_10364_16179_9889#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@6) null (PredicateMaskField_6051 pm_f_5@@4))) o2_5@@15 f_16@@15) (= (select (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@6) o2_5@@15 f_16@@15) (select (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@15 f_16@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@15 f_16@@15))
))) (forall ((o2_5@@16 T@Ref) (f_16@@16 T@Field_6057_18345) ) (!  (=> (select (|PolymorphicMapType_10364_16179_31891#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@6) null (PredicateMaskField_6051 pm_f_5@@4))) o2_5@@16 f_16@@16) (= (select (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@6) o2_5@@16 f_16@@16) (select (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@16 f_16@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@16 f_16@@16))
))) (forall ((o2_5@@17 T@Ref) (f_16@@17 T@Field_16179_16180) ) (!  (=> (select (|PolymorphicMapType_10364_16179_16180#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@6) null (PredicateMaskField_6051 pm_f_5@@4))) o2_5@@17 f_16@@17) (= (select (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@6) o2_5@@17 f_16@@17) (select (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@17 f_16@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@17 f_16@@17))
))) (forall ((o2_5@@18 T@Ref) (f_16@@18 T@Field_16192_16197) ) (!  (=> (select (|PolymorphicMapType_10364_16179_32313#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@6) null (PredicateMaskField_6051 pm_f_5@@4))) o2_5@@18 f_16@@18) (= (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@6) o2_5@@18 f_16@@18) (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@18 f_16@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| ExhaleHeap@@4) o2_5@@18 f_16@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_6051_29741 pm_f_5@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9815) (ExhaleHeap@@5 T@PolymorphicMapType_9815) (Mask@@6 T@PolymorphicMapType_9836) (pm_f_5@@5 T@Field_16179_16180) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_6057_6058 Mask@@6 null pm_f_5@@5) (IsWandField_6057_33478 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@19 T@Ref) (f_16@@19 T@Field_9875_53) ) (!  (=> (select (|PolymorphicMapType_10364_9875_53#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@7) null (WandMaskField_6057 pm_f_5@@5))) o2_5@@19 f_16@@19) (= (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@7) o2_5@@19 f_16@@19) (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@19 f_16@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@19 f_16@@19))
)) (forall ((o2_5@@20 T@Ref) (f_16@@20 T@Field_9888_9889) ) (!  (=> (select (|PolymorphicMapType_10364_9875_9889#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@7) null (WandMaskField_6057 pm_f_5@@5))) o2_5@@20 f_16@@20) (= (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@7) o2_5@@20 f_16@@20) (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@20 f_16@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@20 f_16@@20))
))) (forall ((o2_5@@21 T@Ref) (f_16@@21 T@Field_16113_16115) ) (!  (=> (select (|PolymorphicMapType_10364_9875_30823#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@7) null (WandMaskField_6057 pm_f_5@@5))) o2_5@@21 f_16@@21) (= (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@7) o2_5@@21 f_16@@21) (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@21 f_16@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@21 f_16@@21))
))) (forall ((o2_5@@22 T@Ref) (f_16@@22 T@Field_6051_6058) ) (!  (=> (select (|PolymorphicMapType_10364_9875_16180#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@7) null (WandMaskField_6057 pm_f_5@@5))) o2_5@@22 f_16@@22) (= (select (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@7) o2_5@@22 f_16@@22) (select (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@22 f_16@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@22 f_16@@22))
))) (forall ((o2_5@@23 T@Ref) (f_16@@23 T@Field_6051_16197) ) (!  (=> (select (|PolymorphicMapType_10364_9875_31245#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@7) null (WandMaskField_6057 pm_f_5@@5))) o2_5@@23 f_16@@23) (= (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@7) o2_5@@23 f_16@@23) (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@23 f_16@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@23 f_16@@23))
))) (forall ((o2_5@@24 T@Ref) (f_16@@24 T@Field_6057_53) ) (!  (=> (select (|PolymorphicMapType_10364_16179_53#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@7) null (WandMaskField_6057 pm_f_5@@5))) o2_5@@24 f_16@@24) (= (select (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@7) o2_5@@24 f_16@@24) (select (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@24 f_16@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@24 f_16@@24))
))) (forall ((o2_5@@25 T@Ref) (f_16@@25 T@Field_6057_6049) ) (!  (=> (select (|PolymorphicMapType_10364_16179_9889#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@7) null (WandMaskField_6057 pm_f_5@@5))) o2_5@@25 f_16@@25) (= (select (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@7) o2_5@@25 f_16@@25) (select (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@25 f_16@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@25 f_16@@25))
))) (forall ((o2_5@@26 T@Ref) (f_16@@26 T@Field_6057_18345) ) (!  (=> (select (|PolymorphicMapType_10364_16179_31891#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@7) null (WandMaskField_6057 pm_f_5@@5))) o2_5@@26 f_16@@26) (= (select (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@7) o2_5@@26 f_16@@26) (select (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@26 f_16@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@26 f_16@@26))
))) (forall ((o2_5@@27 T@Ref) (f_16@@27 T@Field_16179_16180) ) (!  (=> (select (|PolymorphicMapType_10364_16179_16180#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@7) null (WandMaskField_6057 pm_f_5@@5))) o2_5@@27 f_16@@27) (= (select (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@7) o2_5@@27 f_16@@27) (select (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@27 f_16@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@27 f_16@@27))
))) (forall ((o2_5@@28 T@Ref) (f_16@@28 T@Field_16192_16197) ) (!  (=> (select (|PolymorphicMapType_10364_16179_32313#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@7) null (WandMaskField_6057 pm_f_5@@5))) o2_5@@28 f_16@@28) (= (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@7) o2_5@@28 f_16@@28) (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@28 f_16@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| ExhaleHeap@@5) o2_5@@28 f_16@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_6057_33478 pm_f_5@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9815) (ExhaleHeap@@6 T@PolymorphicMapType_9815) (Mask@@7 T@PolymorphicMapType_9836) (pm_f_5@@6 T@Field_6051_6058) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_6051_6058 Mask@@7 null pm_f_5@@6) (IsWandField_6051_33121 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_16@@29 T@Field_9875_53) ) (!  (=> (select (|PolymorphicMapType_10364_9875_53#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@8) null (WandMaskField_6051 pm_f_5@@6))) o2_5@@29 f_16@@29) (= (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@8) o2_5@@29 f_16@@29) (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@29 f_16@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@29 f_16@@29))
)) (forall ((o2_5@@30 T@Ref) (f_16@@30 T@Field_9888_9889) ) (!  (=> (select (|PolymorphicMapType_10364_9875_9889#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@8) null (WandMaskField_6051 pm_f_5@@6))) o2_5@@30 f_16@@30) (= (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@8) o2_5@@30 f_16@@30) (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@30 f_16@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@30 f_16@@30))
))) (forall ((o2_5@@31 T@Ref) (f_16@@31 T@Field_16113_16115) ) (!  (=> (select (|PolymorphicMapType_10364_9875_30823#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@8) null (WandMaskField_6051 pm_f_5@@6))) o2_5@@31 f_16@@31) (= (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@8) o2_5@@31 f_16@@31) (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@31 f_16@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@31 f_16@@31))
))) (forall ((o2_5@@32 T@Ref) (f_16@@32 T@Field_6051_6058) ) (!  (=> (select (|PolymorphicMapType_10364_9875_16180#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@8) null (WandMaskField_6051 pm_f_5@@6))) o2_5@@32 f_16@@32) (= (select (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@8) o2_5@@32 f_16@@32) (select (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@32 f_16@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@32 f_16@@32))
))) (forall ((o2_5@@33 T@Ref) (f_16@@33 T@Field_6051_16197) ) (!  (=> (select (|PolymorphicMapType_10364_9875_31245#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@8) null (WandMaskField_6051 pm_f_5@@6))) o2_5@@33 f_16@@33) (= (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@8) o2_5@@33 f_16@@33) (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@33 f_16@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@33 f_16@@33))
))) (forall ((o2_5@@34 T@Ref) (f_16@@34 T@Field_6057_53) ) (!  (=> (select (|PolymorphicMapType_10364_16179_53#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@8) null (WandMaskField_6051 pm_f_5@@6))) o2_5@@34 f_16@@34) (= (select (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@8) o2_5@@34 f_16@@34) (select (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@34 f_16@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@34 f_16@@34))
))) (forall ((o2_5@@35 T@Ref) (f_16@@35 T@Field_6057_6049) ) (!  (=> (select (|PolymorphicMapType_10364_16179_9889#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@8) null (WandMaskField_6051 pm_f_5@@6))) o2_5@@35 f_16@@35) (= (select (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@8) o2_5@@35 f_16@@35) (select (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@35 f_16@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@35 f_16@@35))
))) (forall ((o2_5@@36 T@Ref) (f_16@@36 T@Field_6057_18345) ) (!  (=> (select (|PolymorphicMapType_10364_16179_31891#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@8) null (WandMaskField_6051 pm_f_5@@6))) o2_5@@36 f_16@@36) (= (select (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@8) o2_5@@36 f_16@@36) (select (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@36 f_16@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@36 f_16@@36))
))) (forall ((o2_5@@37 T@Ref) (f_16@@37 T@Field_16179_16180) ) (!  (=> (select (|PolymorphicMapType_10364_16179_16180#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@8) null (WandMaskField_6051 pm_f_5@@6))) o2_5@@37 f_16@@37) (= (select (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@8) o2_5@@37 f_16@@37) (select (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@37 f_16@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@37 f_16@@37))
))) (forall ((o2_5@@38 T@Ref) (f_16@@38 T@Field_16192_16197) ) (!  (=> (select (|PolymorphicMapType_10364_16179_32313#PolymorphicMapType_10364| (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@8) null (WandMaskField_6051 pm_f_5@@6))) o2_5@@38 f_16@@38) (= (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@8) o2_5@@38 f_16@@38) (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@38 f_16@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| ExhaleHeap@@6) o2_5@@38 f_16@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_6051_33121 pm_f_5@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9815) (ExhaleHeap@@7 T@PolymorphicMapType_9815) (Mask@@8 T@PolymorphicMapType_9836) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@9) o_12 $allocated) (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| ExhaleHeap@@7) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| ExhaleHeap@@7) o_12 $allocated))
)))
(assert (forall ((p T@Field_16179_16180) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_16179_16179 p v_1 p w))
 :qid |stdinbpl.195:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16179_16179 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_6051_6058) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9875_9875 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.195:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9875_9875 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_6048_6049 left)))
(assert  (not (IsWandField_6048_6049 left)))
(assert  (not (IsPredicateField_6051_16139 all)))
(assert  (not (IsWandField_6051_16166 all)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9815) (ExhaleHeap@@8 T@PolymorphicMapType_9815) (Mask@@9 T@PolymorphicMapType_9836) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9836) (o_2@@9 T@Ref) (f_4@@9 T@Field_16192_16197) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_9836_6057_38156#PolymorphicMapType_9836| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6057_40448 f_4@@9))) (not (IsWandField_6057_40464 f_4@@9))) (<= (select (|PolymorphicMapType_9836_6057_38156#PolymorphicMapType_9836| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_9836_6057_38156#PolymorphicMapType_9836| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9836) (o_2@@10 T@Ref) (f_4@@10 T@Field_6057_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_9836_6057_53#PolymorphicMapType_9836| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6057_53 f_4@@10))) (not (IsWandField_6057_53 f_4@@10))) (<= (select (|PolymorphicMapType_9836_6057_53#PolymorphicMapType_9836| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_9836_6057_53#PolymorphicMapType_9836| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9836) (o_2@@11 T@Ref) (f_4@@11 T@Field_16179_16180) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_9836_6057_6058#PolymorphicMapType_9836| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6057_6058 f_4@@11))) (not (IsWandField_6057_33478 f_4@@11))) (<= (select (|PolymorphicMapType_9836_6057_6058#PolymorphicMapType_9836| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_9836_6057_6058#PolymorphicMapType_9836| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9836) (o_2@@12 T@Ref) (f_4@@12 T@Field_6057_6049) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_9836_6057_6049#PolymorphicMapType_9836| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6057_6049 f_4@@12))) (not (IsWandField_6057_6049 f_4@@12))) (<= (select (|PolymorphicMapType_9836_6057_6049#PolymorphicMapType_9836| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_9836_6057_6049#PolymorphicMapType_9836| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9836) (o_2@@13 T@Ref) (f_4@@13 T@Field_6057_18345) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9836_6057_37836#PolymorphicMapType_9836| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6057_39785 f_4@@13))) (not (IsWandField_6057_39801 f_4@@13))) (<= (select (|PolymorphicMapType_9836_6057_37836#PolymorphicMapType_9836| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9836_6057_37836#PolymorphicMapType_9836| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9836) (o_2@@14 T@Ref) (f_4@@14 T@Field_6051_16197) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9836_6051_37736#PolymorphicMapType_9836| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6051_39612 f_4@@14))) (not (IsWandField_6051_39628 f_4@@14))) (<= (select (|PolymorphicMapType_9836_6051_37736#PolymorphicMapType_9836| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9836_6051_37736#PolymorphicMapType_9836| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9836) (o_2@@15 T@Ref) (f_4@@15 T@Field_9875_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9836_6051_53#PolymorphicMapType_9836| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6051_53 f_4@@15))) (not (IsWandField_6051_53 f_4@@15))) (<= (select (|PolymorphicMapType_9836_6051_53#PolymorphicMapType_9836| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9836_6051_53#PolymorphicMapType_9836| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9836) (o_2@@16 T@Ref) (f_4@@16 T@Field_6051_6058) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9836_6051_6058#PolymorphicMapType_9836| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6051_29741 f_4@@16))) (not (IsWandField_6051_33121 f_4@@16))) (<= (select (|PolymorphicMapType_9836_6051_6058#PolymorphicMapType_9836| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9836_6051_6058#PolymorphicMapType_9836| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9836) (o_2@@17 T@Ref) (f_4@@17 T@Field_9888_9889) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6048_6049 f_4@@17))) (not (IsWandField_6048_6049 f_4@@17))) (<= (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9836) (o_2@@18 T@Ref) (f_4@@18 T@Field_16113_16115) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6051_16139 f_4@@18))) (not (IsWandField_6051_16166 f_4@@18))) (<= (select (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9836) (o_2@@19 T@Ref) (f_4@@19 T@Field_16192_16197) ) (! (= (HasDirectPerm_6057_29453 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_9836_6057_38156#PolymorphicMapType_9836| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6057_29453 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9836) (o_2@@20 T@Ref) (f_4@@20 T@Field_6057_53) ) (! (= (HasDirectPerm_6057_53 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_9836_6057_53#PolymorphicMapType_9836| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6057_53 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9836) (o_2@@21 T@Ref) (f_4@@21 T@Field_16179_16180) ) (! (= (HasDirectPerm_6057_6058 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_9836_6057_6058#PolymorphicMapType_9836| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6057_6058 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9836) (o_2@@22 T@Ref) (f_4@@22 T@Field_6057_6049) ) (! (= (HasDirectPerm_6057_6049 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_9836_6057_6049#PolymorphicMapType_9836| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6057_6049 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9836) (o_2@@23 T@Ref) (f_4@@23 T@Field_6057_18345) ) (! (= (HasDirectPerm_6057_28567 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_9836_6057_37836#PolymorphicMapType_9836| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6057_28567 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9836) (o_2@@24 T@Ref) (f_4@@24 T@Field_6051_16197) ) (! (= (HasDirectPerm_6051_28287 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_9836_6051_37736#PolymorphicMapType_9836| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6051_28287 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9836) (o_2@@25 T@Ref) (f_4@@25 T@Field_9875_53) ) (! (= (HasDirectPerm_6051_53 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_9836_6051_53#PolymorphicMapType_9836| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6051_53 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9836) (o_2@@26 T@Ref) (f_4@@26 T@Field_6051_6058) ) (! (= (HasDirectPerm_6051_6058 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_9836_6051_6058#PolymorphicMapType_9836| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6051_6058 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9836) (o_2@@27 T@Ref) (f_4@@27 T@Field_9888_9889) ) (! (= (HasDirectPerm_6048_6049 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6048_6049 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9836) (o_2@@28 T@Ref) (f_4@@28 T@Field_16113_16115) ) (! (= (HasDirectPerm_6051_18345 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6051_18345 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.183:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9815) (ExhaleHeap@@9 T@PolymorphicMapType_9815) (Mask@@30 T@PolymorphicMapType_9836) (o_12@@0 T@Ref) (f_16@@39 T@Field_16192_16197) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_6057_29453 Mask@@30 o_12@@0 f_16@@39) (= (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@11) o_12@@0 f_16@@39) (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| ExhaleHeap@@9) o_12@@0 f_16@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| ExhaleHeap@@9) o_12@@0 f_16@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9815) (ExhaleHeap@@10 T@PolymorphicMapType_9815) (Mask@@31 T@PolymorphicMapType_9836) (o_12@@1 T@Ref) (f_16@@40 T@Field_6057_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_6057_53 Mask@@31 o_12@@1 f_16@@40) (= (select (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@12) o_12@@1 f_16@@40) (select (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| ExhaleHeap@@10) o_12@@1 f_16@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| ExhaleHeap@@10) o_12@@1 f_16@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9815) (ExhaleHeap@@11 T@PolymorphicMapType_9815) (Mask@@32 T@PolymorphicMapType_9836) (o_12@@2 T@Ref) (f_16@@41 T@Field_16179_16180) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_6057_6058 Mask@@32 o_12@@2 f_16@@41) (= (select (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@13) o_12@@2 f_16@@41) (select (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| ExhaleHeap@@11) o_12@@2 f_16@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| ExhaleHeap@@11) o_12@@2 f_16@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9815) (ExhaleHeap@@12 T@PolymorphicMapType_9815) (Mask@@33 T@PolymorphicMapType_9836) (o_12@@3 T@Ref) (f_16@@42 T@Field_6057_6049) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_6057_6049 Mask@@33 o_12@@3 f_16@@42) (= (select (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@14) o_12@@3 f_16@@42) (select (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| ExhaleHeap@@12) o_12@@3 f_16@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| ExhaleHeap@@12) o_12@@3 f_16@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9815) (ExhaleHeap@@13 T@PolymorphicMapType_9815) (Mask@@34 T@PolymorphicMapType_9836) (o_12@@4 T@Ref) (f_16@@43 T@Field_6057_18345) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_6057_28567 Mask@@34 o_12@@4 f_16@@43) (= (select (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@15) o_12@@4 f_16@@43) (select (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| ExhaleHeap@@13) o_12@@4 f_16@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| ExhaleHeap@@13) o_12@@4 f_16@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9815) (ExhaleHeap@@14 T@PolymorphicMapType_9815) (Mask@@35 T@PolymorphicMapType_9836) (o_12@@5 T@Ref) (f_16@@44 T@Field_6051_16197) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_6051_28287 Mask@@35 o_12@@5 f_16@@44) (= (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@16) o_12@@5 f_16@@44) (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| ExhaleHeap@@14) o_12@@5 f_16@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| ExhaleHeap@@14) o_12@@5 f_16@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9815) (ExhaleHeap@@15 T@PolymorphicMapType_9815) (Mask@@36 T@PolymorphicMapType_9836) (o_12@@6 T@Ref) (f_16@@45 T@Field_9875_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_6051_53 Mask@@36 o_12@@6 f_16@@45) (= (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@17) o_12@@6 f_16@@45) (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| ExhaleHeap@@15) o_12@@6 f_16@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| ExhaleHeap@@15) o_12@@6 f_16@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9815) (ExhaleHeap@@16 T@PolymorphicMapType_9815) (Mask@@37 T@PolymorphicMapType_9836) (o_12@@7 T@Ref) (f_16@@46 T@Field_6051_6058) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_6051_6058 Mask@@37 o_12@@7 f_16@@46) (= (select (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@18) o_12@@7 f_16@@46) (select (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| ExhaleHeap@@16) o_12@@7 f_16@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| ExhaleHeap@@16) o_12@@7 f_16@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9815) (ExhaleHeap@@17 T@PolymorphicMapType_9815) (Mask@@38 T@PolymorphicMapType_9836) (o_12@@8 T@Ref) (f_16@@47 T@Field_9888_9889) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_6048_6049 Mask@@38 o_12@@8 f_16@@47) (= (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@19) o_12@@8 f_16@@47) (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| ExhaleHeap@@17) o_12@@8 f_16@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| ExhaleHeap@@17) o_12@@8 f_16@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9815) (ExhaleHeap@@18 T@PolymorphicMapType_9815) (Mask@@39 T@PolymorphicMapType_9836) (o_12@@9 T@Ref) (f_16@@48 T@Field_16113_16115) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_6051_18345 Mask@@39 o_12@@9 f_16@@48) (= (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@20) o_12@@9 f_16@@48) (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| ExhaleHeap@@18) o_12@@9 f_16@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| ExhaleHeap@@18) o_12@@9 f_16@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_16192_16197) ) (! (= (select (|PolymorphicMapType_9836_6057_38156#PolymorphicMapType_9836| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9836_6057_38156#PolymorphicMapType_9836| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_6057_53) ) (! (= (select (|PolymorphicMapType_9836_6057_53#PolymorphicMapType_9836| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9836_6057_53#PolymorphicMapType_9836| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_16179_16180) ) (! (= (select (|PolymorphicMapType_9836_6057_6058#PolymorphicMapType_9836| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9836_6057_6058#PolymorphicMapType_9836| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_6057_6049) ) (! (= (select (|PolymorphicMapType_9836_6057_6049#PolymorphicMapType_9836| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9836_6057_6049#PolymorphicMapType_9836| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_6057_18345) ) (! (= (select (|PolymorphicMapType_9836_6057_37836#PolymorphicMapType_9836| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9836_6057_37836#PolymorphicMapType_9836| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_6051_16197) ) (! (= (select (|PolymorphicMapType_9836_6051_37736#PolymorphicMapType_9836| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9836_6051_37736#PolymorphicMapType_9836| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_9875_53) ) (! (= (select (|PolymorphicMapType_9836_6051_53#PolymorphicMapType_9836| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9836_6051_53#PolymorphicMapType_9836| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_6051_6058) ) (! (= (select (|PolymorphicMapType_9836_6051_6058#PolymorphicMapType_9836| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9836_6051_6058#PolymorphicMapType_9836| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_9888_9889) ) (! (= (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_16113_16115) ) (! (= (select (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9836) (SummandMask1 T@PolymorphicMapType_9836) (SummandMask2 T@PolymorphicMapType_9836) (o_2@@39 T@Ref) (f_4@@39 T@Field_16192_16197) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9836_6057_38156#PolymorphicMapType_9836| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_9836_6057_38156#PolymorphicMapType_9836| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_9836_6057_38156#PolymorphicMapType_9836| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9836_6057_38156#PolymorphicMapType_9836| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9836_6057_38156#PolymorphicMapType_9836| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9836_6057_38156#PolymorphicMapType_9836| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9836) (SummandMask1@@0 T@PolymorphicMapType_9836) (SummandMask2@@0 T@PolymorphicMapType_9836) (o_2@@40 T@Ref) (f_4@@40 T@Field_6057_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9836_6057_53#PolymorphicMapType_9836| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_9836_6057_53#PolymorphicMapType_9836| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_9836_6057_53#PolymorphicMapType_9836| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9836_6057_53#PolymorphicMapType_9836| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9836_6057_53#PolymorphicMapType_9836| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9836_6057_53#PolymorphicMapType_9836| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9836) (SummandMask1@@1 T@PolymorphicMapType_9836) (SummandMask2@@1 T@PolymorphicMapType_9836) (o_2@@41 T@Ref) (f_4@@41 T@Field_16179_16180) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9836_6057_6058#PolymorphicMapType_9836| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_9836_6057_6058#PolymorphicMapType_9836| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_9836_6057_6058#PolymorphicMapType_9836| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9836_6057_6058#PolymorphicMapType_9836| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9836_6057_6058#PolymorphicMapType_9836| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9836_6057_6058#PolymorphicMapType_9836| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9836) (SummandMask1@@2 T@PolymorphicMapType_9836) (SummandMask2@@2 T@PolymorphicMapType_9836) (o_2@@42 T@Ref) (f_4@@42 T@Field_6057_6049) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9836_6057_6049#PolymorphicMapType_9836| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_9836_6057_6049#PolymorphicMapType_9836| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_9836_6057_6049#PolymorphicMapType_9836| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9836_6057_6049#PolymorphicMapType_9836| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9836_6057_6049#PolymorphicMapType_9836| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9836_6057_6049#PolymorphicMapType_9836| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9836) (SummandMask1@@3 T@PolymorphicMapType_9836) (SummandMask2@@3 T@PolymorphicMapType_9836) (o_2@@43 T@Ref) (f_4@@43 T@Field_6057_18345) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9836_6057_37836#PolymorphicMapType_9836| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_9836_6057_37836#PolymorphicMapType_9836| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_9836_6057_37836#PolymorphicMapType_9836| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9836_6057_37836#PolymorphicMapType_9836| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9836_6057_37836#PolymorphicMapType_9836| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9836_6057_37836#PolymorphicMapType_9836| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9836) (SummandMask1@@4 T@PolymorphicMapType_9836) (SummandMask2@@4 T@PolymorphicMapType_9836) (o_2@@44 T@Ref) (f_4@@44 T@Field_6051_16197) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9836_6051_37736#PolymorphicMapType_9836| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_9836_6051_37736#PolymorphicMapType_9836| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_9836_6051_37736#PolymorphicMapType_9836| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9836_6051_37736#PolymorphicMapType_9836| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9836_6051_37736#PolymorphicMapType_9836| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9836_6051_37736#PolymorphicMapType_9836| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9836) (SummandMask1@@5 T@PolymorphicMapType_9836) (SummandMask2@@5 T@PolymorphicMapType_9836) (o_2@@45 T@Ref) (f_4@@45 T@Field_9875_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9836_6051_53#PolymorphicMapType_9836| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_9836_6051_53#PolymorphicMapType_9836| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_9836_6051_53#PolymorphicMapType_9836| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9836_6051_53#PolymorphicMapType_9836| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9836_6051_53#PolymorphicMapType_9836| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9836_6051_53#PolymorphicMapType_9836| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9836) (SummandMask1@@6 T@PolymorphicMapType_9836) (SummandMask2@@6 T@PolymorphicMapType_9836) (o_2@@46 T@Ref) (f_4@@46 T@Field_6051_6058) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9836_6051_6058#PolymorphicMapType_9836| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_9836_6051_6058#PolymorphicMapType_9836| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_9836_6051_6058#PolymorphicMapType_9836| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9836_6051_6058#PolymorphicMapType_9836| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9836_6051_6058#PolymorphicMapType_9836| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9836_6051_6058#PolymorphicMapType_9836| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9836) (SummandMask1@@7 T@PolymorphicMapType_9836) (SummandMask2@@7 T@PolymorphicMapType_9836) (o_2@@47 T@Ref) (f_4@@47 T@Field_9888_9889) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9836) (SummandMask1@@8 T@PolymorphicMapType_9836) (SummandMask2@@8 T@PolymorphicMapType_9836) (o_2@@48 T@Ref) (f_4@@48 T@Field_16113_16115) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (getPredWandId_6057_6058 (inv this@@4)) 0)
 :qid |stdinbpl.417:15|
 :skolemid |84|
 :pattern ( (inv this@@4))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_9815) (Heap1Heap@@0 T@PolymorphicMapType_9815) (this@@5 T@Ref) ) (!  (=> (and (=  (and (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap2Heap@@0) this@@5 all) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap1Heap@@0) this@@5 all) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap2Heap@@0) this@@5 all) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap2Heap@@0) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5)) left) (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap1Heap@@0) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5)) left)))) (= (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5)))
 :qid |stdinbpl.443:15|
 :skolemid |88|
 :pattern ( (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9815) (o_11 T@Ref) (f_17 T@Field_16192_16197) (v T@PolymorphicMapType_10364) ) (! (succHeap Heap@@21 (PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@21) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@21) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@21) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@21) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@21) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@21) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@21) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@21) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@21) (store (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@21) o_11 f_17 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@21) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@21) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@21) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@21) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@21) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@21) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@21) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@21) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@21) (store (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@21) o_11 f_17 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9815) (o_11@@0 T@Ref) (f_17@@0 T@Field_16179_16180) (v@@0 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@22) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@22) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@22) (store (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@22) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@22) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@22) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@22) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@22) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@22) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@22) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@22) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@22) (store (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@22) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@22) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@22) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@22) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@22) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@22) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9815) (o_11@@1 T@Ref) (f_17@@1 T@Field_6057_18345) (v@@1 (Array T@Ref Bool)) ) (! (succHeap Heap@@23 (PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@23) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@23) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@23) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@23) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@23) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@23) (store (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@23) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@23) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@23) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@23) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@23) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@23) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@23) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@23) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@23) (store (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@23) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@23) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@23) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9815) (o_11@@2 T@Ref) (f_17@@2 T@Field_6057_6049) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@24) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@24) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@24) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@24) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@24) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@24) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@24) (store (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@24) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@24) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@24) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@24) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@24) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@24) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@24) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@24) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@24) (store (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@24) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@24) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9815) (o_11@@3 T@Ref) (f_17@@3 T@Field_6057_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@25) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@25) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@25) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@25) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@25) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@25) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@25) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@25) (store (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@25) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@25) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@25) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@25) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@25) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@25) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@25) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@25) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@25) (store (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@25) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9815) (o_11@@4 T@Ref) (f_17@@4 T@Field_6051_16197) (v@@4 T@PolymorphicMapType_10364) ) (! (succHeap Heap@@26 (PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@26) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@26) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@26) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@26) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@26) (store (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@26) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@26) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@26) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@26) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@26) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@26) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@26) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@26) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@26) (store (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@26) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@26) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@26) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@26) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9815) (o_11@@5 T@Ref) (f_17@@5 T@Field_6051_6058) (v@@5 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@27) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@27) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@27) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@27) (store (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@27) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@27) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@27) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@27) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@27) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@27) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@27) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@27) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@27) (store (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@27) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@27) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@27) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@27) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@27) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9815) (o_11@@6 T@Ref) (f_17@@6 T@Field_16113_16115) (v@@6 (Array T@Ref Bool)) ) (! (succHeap Heap@@28 (PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@28) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@28) (store (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@28) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@28) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@28) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@28) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@28) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@28) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@28) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@28) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@28) (store (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@28) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@28) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@28) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@28) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@28) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@28) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@28) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9815) (o_11@@7 T@Ref) (f_17@@7 T@Field_9888_9889) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@29) (store (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@29) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@29) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@29) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@29) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@29) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@29) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@29) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@29) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9815 (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@29) (store (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@29) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@29) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@29) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@29) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@29) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@29) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@29) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@29) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9815) (o_11@@8 T@Ref) (f_17@@8 T@Field_9875_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_9815 (store (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@30) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@30) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@30) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@30) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@30) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@30) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@30) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@30) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@30) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9815 (store (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@30) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@30) (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@30) (|PolymorphicMapType_9815_6057_6058#PolymorphicMapType_9815| Heap@@30) (|PolymorphicMapType_9815_6051_6058#PolymorphicMapType_9815| Heap@@30) (|PolymorphicMapType_9815_6051_28329#PolymorphicMapType_9815| Heap@@30) (|PolymorphicMapType_9815_6057_28609#PolymorphicMapType_9815| Heap@@30) (|PolymorphicMapType_9815_6057_6049#PolymorphicMapType_9815| Heap@@30) (|PolymorphicMapType_9815_6057_53#PolymorphicMapType_9815| Heap@@30) (|PolymorphicMapType_9815_6057_29495#PolymorphicMapType_9815| Heap@@30)))
)))
(assert (forall ((this@@6 T@Ref) ) (! (= (PredicateMaskField_6057 (inv this@@6)) (|inv#sm| this@@6))
 :qid |stdinbpl.409:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_6057 (inv this@@6)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.295:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.296:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_11@@9 T@Ref) (f_10 T@Field_9888_9889) (Heap@@31 T@PolymorphicMapType_9815) ) (!  (=> (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@31) o_11@@9 $allocated) (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@31) (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@31) o_11@@9 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@31) o_11@@9 f_10))
)))
(assert (forall ((p@@2 T@Field_16179_16180) (v_1@@1 T@FrameType) (q T@Field_16179_16180) (w@@1 T@FrameType) (r T@Field_16179_16180) (u T@FrameType) ) (!  (=> (and (InsidePredicate_16179_16179 p@@2 v_1@@1 q w@@1) (InsidePredicate_16179_16179 q w@@1 r u)) (InsidePredicate_16179_16179 p@@2 v_1@@1 r u))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16179_16179 p@@2 v_1@@1 q w@@1) (InsidePredicate_16179_16179 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_16179_16180) (v_1@@2 T@FrameType) (q@@0 T@Field_16179_16180) (w@@2 T@FrameType) (r@@0 T@Field_6051_6058) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_16179_16179 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_16179_9875 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_16179_9875 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16179_16179 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_16179_9875 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_16179_16180) (v_1@@3 T@FrameType) (q@@1 T@Field_6051_6058) (w@@3 T@FrameType) (r@@1 T@Field_16179_16180) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_16179_9875 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_9875_16179 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_16179_16179 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16179_9875 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_9875_16179 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_16179_16180) (v_1@@4 T@FrameType) (q@@2 T@Field_6051_6058) (w@@4 T@FrameType) (r@@2 T@Field_6051_6058) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_16179_9875 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_9875_9875 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_16179_9875 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16179_9875 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_9875_9875 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_6051_6058) (v_1@@5 T@FrameType) (q@@3 T@Field_16179_16180) (w@@5 T@FrameType) (r@@3 T@Field_16179_16180) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_9875_16179 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_16179_16179 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_9875_16179 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9875_16179 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_16179_16179 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_6051_6058) (v_1@@6 T@FrameType) (q@@4 T@Field_16179_16180) (w@@6 T@FrameType) (r@@4 T@Field_6051_6058) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_9875_16179 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_16179_9875 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_9875_9875 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9875_16179 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_16179_9875 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_6051_6058) (v_1@@7 T@FrameType) (q@@5 T@Field_6051_6058) (w@@7 T@FrameType) (r@@5 T@Field_16179_16180) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_9875_9875 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_9875_16179 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_9875_16179 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9875_9875 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_9875_16179 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_6051_6058) (v_1@@8 T@FrameType) (q@@6 T@Field_6051_6058) (w@@8 T@FrameType) (r@@6 T@Field_6051_6058) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_9875_9875 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_9875_9875 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_9875_9875 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9875_9875 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_9875_9875 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.301:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@32 () T@PolymorphicMapType_9815)
(declare-fun this@@7 () T@Ref)
(declare-fun s_5 () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_9836)
(declare-fun QPMask@1 () T@PolymorphicMapType_9836)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_9836)
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
(let ((anon9_Else_correct  (=> (and (not (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) s_5)) (= (ControlFlow 0 9) 6)) anon5_correct)))
(let ((anon9_Then_correct  (=> (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) s_5) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_6048_6049 QPMask@0 s_5 left)) (=> (HasDirectPerm_6048_6049 QPMask@0 s_5 left) (=> (= (ControlFlow 0 7) 6) anon5_correct))))))
(let ((anon8_Then_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (HasDirectPerm_6051_18345 QPMask@0 this@@7 all)) (=> (HasDirectPerm_6051_18345 QPMask@0 this@@7 all) (and (=> (= (ControlFlow 0 10) 7) anon9_Then_correct) (=> (= (ControlFlow 0 10) 9) anon9_Else_correct))))))
(let ((anon8_Else_correct  (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall ((s_2_1 T@Ref) (s_2_2 T@Ref) ) (!  (=> (and (and (and (and (not (= s_2_1 s_2_2)) (and (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) s_2_1) (= (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@32) s_2_1 left) null))) (and (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) s_2_2) (= (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@32) s_2_2 left) null))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= s_2_1 s_2_2)))
 :qid |stdinbpl.537:15|
 :skolemid |97|
))) (=> (forall ((s_2_1@@0 T@Ref) (s_2_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= s_2_1@@0 s_2_2@@0)) (and (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) s_2_1@@0) (= (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@32) s_2_1@@0 left) null))) (and (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) s_2_2@@0) (= (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@32) s_2_2@@0 left) null))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= s_2_1@@0 s_2_2@@0)))
 :qid |stdinbpl.537:15|
 :skolemid |97|
)) (=> (forall ((s_2_1@@1 T@Ref) ) (!  (=> (and (and (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) s_2_1@@1) (= (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@32) s_2_1@@1 left) null)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange2 s_2_1@@1) (= (invRecv2 s_2_1@@1) s_2_1@@1)))
 :qid |stdinbpl.543:22|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@32) s_2_1@@1 left))
 :pattern ( (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| QPMask@1) s_2_1@@1 left))
 :pattern ( (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) s_2_1@@1))
)) (=> (and (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) (invRecv2 o_4)) (= (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@32) (invRecv2 o_4) left) null)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_4)) (= (invRecv2 o_4) o_4))
 :qid |stdinbpl.547:22|
 :skolemid |99|
 :pattern ( (invRecv2 o_4))
)) (= (ControlFlow 0 4) (- 0 3))) (forall ((s_2_1@@2 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) s_2_1@@2) (= (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@32) s_2_1@@2 left) null)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.553:15|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@32) s_2_1@@2 left))
 :pattern ( (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| QPMask@1) s_2_1@@2 left))
 :pattern ( (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) s_2_1@@2))
))))))))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 12) (- 0 14)) (forall ((q_2_2 T@Ref) (q_2_3 T@Ref) ) (!  (=> (and (and (and (and (not (= q_2_2 q_2_3)) (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) q_2_2)) (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) q_2_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= q_2_2 q_2_3)))
 :qid |stdinbpl.486:15|
 :skolemid |90|
))) (=> (forall ((q_2_2@@0 T@Ref) (q_2_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= q_2_2@@0 q_2_3@@0)) (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) q_2_2@@0)) (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) q_2_3@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= q_2_2@@0 q_2_3@@0)))
 :qid |stdinbpl.486:15|
 :skolemid |90|
)) (=> (and (forall ((q_2_2@@1 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) q_2_2@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange1 q_2_2@@1) (= (invRecv1 q_2_2@@1) q_2_2@@1)))
 :qid |stdinbpl.492:22|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@32) q_2_2@@1 left))
 :pattern ( (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| QPMask@0) q_2_2@@1 left))
 :pattern ( (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) q_2_2@@1))
)) (forall ((o_4@@0 T@Ref) ) (!  (=> (and (and (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) (invRecv1 o_4@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange1 o_4@@0)) (= (invRecv1 o_4@@0) o_4@@0))
 :qid |stdinbpl.496:22|
 :skolemid |92|
 :pattern ( (invRecv1 o_4@@0))
))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (forall ((q_2_2@@2 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) q_2_2@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.502:15|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@32) q_2_2@@2 left))
 :pattern ( (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| QPMask@0) q_2_2@@2 left))
 :pattern ( (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) q_2_2@@2))
))) (=> (forall ((q_2_2@@3 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) q_2_2@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.502:15|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@32) q_2_2@@3 left))
 :pattern ( (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| QPMask@0) q_2_2@@3 left))
 :pattern ( (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) q_2_2@@3))
)) (=> (and (forall ((q_2_2@@4 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) q_2_2@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= q_2_2@@4 null)))
 :qid |stdinbpl.508:22|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_9815_5746_5747#PolymorphicMapType_9815| Heap@@32) q_2_2@@4 left))
 :pattern ( (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| QPMask@0) q_2_2@@4 left))
 :pattern ( (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) q_2_2@@4))
)) (forall ((o_4@@1 T@Ref) ) (!  (and (=> (and (and (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) (invRecv1 o_4@@1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange1 o_4@@1)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv1 o_4@@1) o_4@@1)) (= (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| QPMask@0) o_4@@1 left) (+ (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| Mask@0) o_4@@1 left) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select (select (|PolymorphicMapType_9815_6051_16777#PolymorphicMapType_9815| Heap@@32) this@@7 all) (invRecv1 o_4@@1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange1 o_4@@1))) (= (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| QPMask@0) o_4@@1 left) (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| Mask@0) o_4@@1 left))))
 :qid |stdinbpl.514:22|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| QPMask@0) o_4@@1 left))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@2 T@Ref) (f_5 T@Field_9875_53) ) (!  (=> true (= (select (|PolymorphicMapType_9836_6051_53#PolymorphicMapType_9836| Mask@0) o_4@@2 f_5) (select (|PolymorphicMapType_9836_6051_53#PolymorphicMapType_9836| QPMask@0) o_4@@2 f_5)))
 :qid |stdinbpl.518:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9836_6051_53#PolymorphicMapType_9836| Mask@0) o_4@@2 f_5))
 :pattern ( (select (|PolymorphicMapType_9836_6051_53#PolymorphicMapType_9836| QPMask@0) o_4@@2 f_5))
)) (forall ((o_4@@3 T@Ref) (f_5@@0 T@Field_9888_9889) ) (!  (=> (not (= f_5@@0 left)) (= (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| Mask@0) o_4@@3 f_5@@0) (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| QPMask@0) o_4@@3 f_5@@0)))
 :qid |stdinbpl.518:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| Mask@0) o_4@@3 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| QPMask@0) o_4@@3 f_5@@0))
))) (forall ((o_4@@4 T@Ref) (f_5@@1 T@Field_16113_16115) ) (!  (=> true (= (select (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| Mask@0) o_4@@4 f_5@@1) (select (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| QPMask@0) o_4@@4 f_5@@1)))
 :qid |stdinbpl.518:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| Mask@0) o_4@@4 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| QPMask@0) o_4@@4 f_5@@1))
))) (forall ((o_4@@5 T@Ref) (f_5@@2 T@Field_6051_6058) ) (!  (=> true (= (select (|PolymorphicMapType_9836_6051_6058#PolymorphicMapType_9836| Mask@0) o_4@@5 f_5@@2) (select (|PolymorphicMapType_9836_6051_6058#PolymorphicMapType_9836| QPMask@0) o_4@@5 f_5@@2)))
 :qid |stdinbpl.518:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9836_6051_6058#PolymorphicMapType_9836| Mask@0) o_4@@5 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_9836_6051_6058#PolymorphicMapType_9836| QPMask@0) o_4@@5 f_5@@2))
))) (forall ((o_4@@6 T@Ref) (f_5@@3 T@Field_6051_16197) ) (!  (=> true (= (select (|PolymorphicMapType_9836_6051_37736#PolymorphicMapType_9836| Mask@0) o_4@@6 f_5@@3) (select (|PolymorphicMapType_9836_6051_37736#PolymorphicMapType_9836| QPMask@0) o_4@@6 f_5@@3)))
 :qid |stdinbpl.518:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9836_6051_37736#PolymorphicMapType_9836| Mask@0) o_4@@6 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_9836_6051_37736#PolymorphicMapType_9836| QPMask@0) o_4@@6 f_5@@3))
))) (forall ((o_4@@7 T@Ref) (f_5@@4 T@Field_6057_53) ) (!  (=> true (= (select (|PolymorphicMapType_9836_6057_53#PolymorphicMapType_9836| Mask@0) o_4@@7 f_5@@4) (select (|PolymorphicMapType_9836_6057_53#PolymorphicMapType_9836| QPMask@0) o_4@@7 f_5@@4)))
 :qid |stdinbpl.518:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9836_6057_53#PolymorphicMapType_9836| Mask@0) o_4@@7 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_9836_6057_53#PolymorphicMapType_9836| QPMask@0) o_4@@7 f_5@@4))
))) (forall ((o_4@@8 T@Ref) (f_5@@5 T@Field_6057_6049) ) (!  (=> true (= (select (|PolymorphicMapType_9836_6057_6049#PolymorphicMapType_9836| Mask@0) o_4@@8 f_5@@5) (select (|PolymorphicMapType_9836_6057_6049#PolymorphicMapType_9836| QPMask@0) o_4@@8 f_5@@5)))
 :qid |stdinbpl.518:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9836_6057_6049#PolymorphicMapType_9836| Mask@0) o_4@@8 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_9836_6057_6049#PolymorphicMapType_9836| QPMask@0) o_4@@8 f_5@@5))
))) (forall ((o_4@@9 T@Ref) (f_5@@6 T@Field_6057_18345) ) (!  (=> true (= (select (|PolymorphicMapType_9836_6057_37836#PolymorphicMapType_9836| Mask@0) o_4@@9 f_5@@6) (select (|PolymorphicMapType_9836_6057_37836#PolymorphicMapType_9836| QPMask@0) o_4@@9 f_5@@6)))
 :qid |stdinbpl.518:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9836_6057_37836#PolymorphicMapType_9836| Mask@0) o_4@@9 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_9836_6057_37836#PolymorphicMapType_9836| QPMask@0) o_4@@9 f_5@@6))
))) (forall ((o_4@@10 T@Ref) (f_5@@7 T@Field_16179_16180) ) (!  (=> true (= (select (|PolymorphicMapType_9836_6057_6058#PolymorphicMapType_9836| Mask@0) o_4@@10 f_5@@7) (select (|PolymorphicMapType_9836_6057_6058#PolymorphicMapType_9836| QPMask@0) o_4@@10 f_5@@7)))
 :qid |stdinbpl.518:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9836_6057_6058#PolymorphicMapType_9836| Mask@0) o_4@@10 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_9836_6057_6058#PolymorphicMapType_9836| QPMask@0) o_4@@10 f_5@@7))
))) (forall ((o_4@@11 T@Ref) (f_5@@8 T@Field_16192_16197) ) (!  (=> true (= (select (|PolymorphicMapType_9836_6057_38156#PolymorphicMapType_9836| Mask@0) o_4@@11 f_5@@8) (select (|PolymorphicMapType_9836_6057_38156#PolymorphicMapType_9836| QPMask@0) o_4@@11 f_5@@8)))
 :qid |stdinbpl.518:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_9836_6057_38156#PolymorphicMapType_9836| Mask@0) o_4@@11 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_9836_6057_38156#PolymorphicMapType_9836| QPMask@0) o_4@@11 f_5@@8))
))) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 12) 10) anon8_Then_correct) (=> (= (ControlFlow 0 12) 4) anon8_Else_correct)))))))))))
(let ((anon7_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_6051_18345 Mask@0 this@@7 all))))
(let ((anon0_correct  (=> (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_9815_5743_53#PolymorphicMapType_9815| Heap@@32) this@@7 $allocated) (not (= this@@7 null))) (and (= Mask@0 (PolymorphicMapType_9836 (store (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| ZeroMask) this@@7 all (+ (select (|PolymorphicMapType_9836_6051_18227#PolymorphicMapType_9836| ZeroMask) this@@7 all) FullPerm)) (|PolymorphicMapType_9836_6048_6049#PolymorphicMapType_9836| ZeroMask) (|PolymorphicMapType_9836_6057_6058#PolymorphicMapType_9836| ZeroMask) (|PolymorphicMapType_9836_6051_6058#PolymorphicMapType_9836| ZeroMask) (|PolymorphicMapType_9836_6051_53#PolymorphicMapType_9836| ZeroMask) (|PolymorphicMapType_9836_6051_37736#PolymorphicMapType_9836| ZeroMask) (|PolymorphicMapType_9836_6057_37836#PolymorphicMapType_9836| ZeroMask) (|PolymorphicMapType_9836_6057_6049#PolymorphicMapType_9836| ZeroMask) (|PolymorphicMapType_9836_6057_53#PolymorphicMapType_9836| ZeroMask) (|PolymorphicMapType_9836_6057_38156#PolymorphicMapType_9836| ZeroMask))) (state Heap@@32 Mask@0))) (and (=> (= (ControlFlow 0 15) 2) anon7_Then_correct) (=> (= (ControlFlow 0 15) 12) anon7_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16) 15) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
