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
(declare-sort T@Field_10664_53 0)
(declare-sort T@Field_10677_10678 0)
(declare-sort T@Field_16906_16908 0)
(declare-sort T@Field_16972_16973 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_6512_6519 0)
(declare-sort T@Field_6512_16990 0)
(declare-sort T@Field_6518_19138 0)
(declare-sort T@Field_6518_6510 0)
(declare-sort T@Field_6518_53 0)
(declare-sort T@Field_16985_16990 0)
(declare-datatypes ((T@PolymorphicMapType_10625 0)) (((PolymorphicMapType_10625 (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| (Array T@Ref T@Field_16906_16908 Real)) (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| (Array T@Ref T@Field_10677_10678 Real)) (|PolymorphicMapType_10625_6518_6519#PolymorphicMapType_10625| (Array T@Ref T@Field_16972_16973 Real)) (|PolymorphicMapType_10625_6512_6519#PolymorphicMapType_10625| (Array T@Ref T@Field_6512_6519 Real)) (|PolymorphicMapType_10625_6512_53#PolymorphicMapType_10625| (Array T@Ref T@Field_10664_53 Real)) (|PolymorphicMapType_10625_6512_40376#PolymorphicMapType_10625| (Array T@Ref T@Field_6512_16990 Real)) (|PolymorphicMapType_10625_6518_40476#PolymorphicMapType_10625| (Array T@Ref T@Field_6518_19138 Real)) (|PolymorphicMapType_10625_6518_6510#PolymorphicMapType_10625| (Array T@Ref T@Field_6518_6510 Real)) (|PolymorphicMapType_10625_6518_53#PolymorphicMapType_10625| (Array T@Ref T@Field_6518_53 Real)) (|PolymorphicMapType_10625_6518_40796#PolymorphicMapType_10625| (Array T@Ref T@Field_16985_16990 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11153 0)) (((PolymorphicMapType_11153 (|PolymorphicMapType_11153_10664_53#PolymorphicMapType_11153| (Array T@Ref T@Field_10664_53 Bool)) (|PolymorphicMapType_11153_10664_10678#PolymorphicMapType_11153| (Array T@Ref T@Field_10677_10678 Bool)) (|PolymorphicMapType_11153_10664_33463#PolymorphicMapType_11153| (Array T@Ref T@Field_16906_16908 Bool)) (|PolymorphicMapType_11153_10664_16973#PolymorphicMapType_11153| (Array T@Ref T@Field_6512_6519 Bool)) (|PolymorphicMapType_11153_10664_33885#PolymorphicMapType_11153| (Array T@Ref T@Field_6512_16990 Bool)) (|PolymorphicMapType_11153_16972_53#PolymorphicMapType_11153| (Array T@Ref T@Field_6518_53 Bool)) (|PolymorphicMapType_11153_16972_10678#PolymorphicMapType_11153| (Array T@Ref T@Field_6518_6510 Bool)) (|PolymorphicMapType_11153_16972_34531#PolymorphicMapType_11153| (Array T@Ref T@Field_6518_19138 Bool)) (|PolymorphicMapType_11153_16972_16973#PolymorphicMapType_11153| (Array T@Ref T@Field_16972_16973 Bool)) (|PolymorphicMapType_11153_16972_34953#PolymorphicMapType_11153| (Array T@Ref T@Field_16985_16990 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10604 0)) (((PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| (Array T@Ref T@Field_10664_53 Bool)) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| (Array T@Ref T@Field_10677_10678 T@Ref)) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| (Array T@Ref T@Field_16906_16908 (Array T@Ref Bool))) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| (Array T@Ref T@Field_16972_16973 T@FrameType)) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| (Array T@Ref T@Field_6512_6519 T@FrameType)) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| (Array T@Ref T@Field_6512_16990 T@PolymorphicMapType_11153)) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| (Array T@Ref T@Field_6518_19138 (Array T@Ref Bool))) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| (Array T@Ref T@Field_6518_6510 T@Ref)) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| (Array T@Ref T@Field_6518_53 Bool)) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| (Array T@Ref T@Field_16985_16990 T@PolymorphicMapType_11153)) ) ) ))
(declare-fun $allocated () T@Field_10664_53)
(declare-fun left () T@Field_10677_10678)
(declare-fun all () T@Field_16906_16908)
(declare-fun succHeap (T@PolymorphicMapType_10604 T@PolymorphicMapType_10604) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10604 T@PolymorphicMapType_10604) Bool)
(declare-fun state (T@PolymorphicMapType_10604 T@PolymorphicMapType_10625) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10625) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11153)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun inv (T@Ref) T@Field_16972_16973)
(declare-fun IsPredicateField_6518_6519 (T@Field_16972_16973) Bool)
(declare-fun |inv#trigger_6518| (T@PolymorphicMapType_10604 T@Field_16972_16973) Bool)
(declare-fun |inv#everUsed_6518| (T@Field_16972_16973) Bool)
(declare-fun |Set#Union_6605| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_6605| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_6605| (T@Ref) (Array T@Ref Bool))
(declare-fun |inv#condqp2| (T@PolymorphicMapType_10604 T@Ref) Int)
(declare-fun |sk_inv#condqp2| (Int Int) T@Ref)
(declare-fun null () T@Ref)
(declare-fun NoPerm () Real)
(declare-fun |Set#Card_6605| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10604 T@PolymorphicMapType_10604 T@PolymorphicMapType_10625) Bool)
(declare-fun PredicateMaskField_6518 (T@Field_16972_16973) T@Field_16985_16990)
(declare-fun HasDirectPerm_6518_6519 (T@PolymorphicMapType_10625 T@Ref T@Field_16972_16973) Bool)
(declare-fun IsPredicateField_6512_32381 (T@Field_6512_6519) Bool)
(declare-fun PredicateMaskField_6512 (T@Field_6512_6519) T@Field_6512_16990)
(declare-fun HasDirectPerm_6512_6519 (T@PolymorphicMapType_10625 T@Ref T@Field_6512_6519) Bool)
(declare-fun IsWandField_6518_36118 (T@Field_16972_16973) Bool)
(declare-fun WandMaskField_6518 (T@Field_16972_16973) T@Field_16985_16990)
(declare-fun IsWandField_6512_35761 (T@Field_6512_6519) Bool)
(declare-fun WandMaskField_6512 (T@Field_6512_6519) T@Field_6512_16990)
(declare-fun |inv#sm| (T@Ref) T@Field_16985_16990)
(declare-fun dummyHeap () T@PolymorphicMapType_10604)
(declare-fun ZeroMask () T@PolymorphicMapType_10625)
(declare-fun InsidePredicate_16972_16972 (T@Field_16972_16973 T@FrameType T@Field_16972_16973 T@FrameType) Bool)
(declare-fun InsidePredicate_10664_10664 (T@Field_6512_6519 T@FrameType T@Field_6512_6519 T@FrameType) Bool)
(declare-fun IsPredicateField_6509_6510 (T@Field_10677_10678) Bool)
(declare-fun IsWandField_6509_6510 (T@Field_10677_10678) Bool)
(declare-fun IsPredicateField_6512_16932 (T@Field_16906_16908) Bool)
(declare-fun IsWandField_6512_16959 (T@Field_16906_16908) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6518_43088 (T@Field_16985_16990) Bool)
(declare-fun IsWandField_6518_43104 (T@Field_16985_16990) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6518_53 (T@Field_6518_53) Bool)
(declare-fun IsWandField_6518_53 (T@Field_6518_53) Bool)
(declare-fun IsPredicateField_6518_6510 (T@Field_6518_6510) Bool)
(declare-fun IsWandField_6518_6510 (T@Field_6518_6510) Bool)
(declare-fun IsPredicateField_6518_42425 (T@Field_6518_19138) Bool)
(declare-fun IsWandField_6518_42441 (T@Field_6518_19138) Bool)
(declare-fun IsPredicateField_6512_42252 (T@Field_6512_16990) Bool)
(declare-fun IsWandField_6512_42268 (T@Field_6512_16990) Bool)
(declare-fun IsPredicateField_6512_53 (T@Field_10664_53) Bool)
(declare-fun IsWandField_6512_53 (T@Field_10664_53) Bool)
(declare-fun |Set#Equal_6606| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun HasDirectPerm_6518_32093 (T@PolymorphicMapType_10625 T@Ref T@Field_16985_16990) Bool)
(declare-fun HasDirectPerm_6518_53 (T@PolymorphicMapType_10625 T@Ref T@Field_6518_53) Bool)
(declare-fun HasDirectPerm_6518_6510 (T@PolymorphicMapType_10625 T@Ref T@Field_6518_6510) Bool)
(declare-fun HasDirectPerm_6518_31207 (T@PolymorphicMapType_10625 T@Ref T@Field_6518_19138) Bool)
(declare-fun HasDirectPerm_6512_30927 (T@PolymorphicMapType_10625 T@Ref T@Field_6512_16990) Bool)
(declare-fun HasDirectPerm_6512_53 (T@PolymorphicMapType_10625 T@Ref T@Field_10664_53) Bool)
(declare-fun HasDirectPerm_6509_6510 (T@PolymorphicMapType_10625 T@Ref T@Field_10677_10678) Bool)
(declare-fun HasDirectPerm_6512_19138 (T@PolymorphicMapType_10625 T@Ref T@Field_16906_16908) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10625 T@PolymorphicMapType_10625 T@PolymorphicMapType_10625) Bool)
(declare-fun |Set#Difference_6605| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_6605| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun getPredWandId_6518_6519 (T@Field_16972_16973) Int)
(declare-fun |inv#condqp1| (T@PolymorphicMapType_10604 T@Ref) Int)
(declare-fun |sk_inv#condqp1| (Int Int) T@Ref)
(declare-fun |Set#Empty_6605| () (Array T@Ref Bool))
(declare-fun InsidePredicate_16972_10664 (T@Field_16972_16973 T@FrameType T@Field_6512_6519 T@FrameType) Bool)
(declare-fun InsidePredicate_10664_16972 (T@Field_6512_6519 T@FrameType T@Field_16972_16973 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_10604) (Heap1 T@PolymorphicMapType_10604) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10604) (Mask T@PolymorphicMapType_10625) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10604) (Heap1@@0 T@PolymorphicMapType_10604) (Heap2 T@PolymorphicMapType_10604) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16985_16990) ) (!  (not (select (|PolymorphicMapType_11153_16972_34953#PolymorphicMapType_11153| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11153_16972_34953#PolymorphicMapType_11153| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16972_16973) ) (!  (not (select (|PolymorphicMapType_11153_16972_16973#PolymorphicMapType_11153| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11153_16972_16973#PolymorphicMapType_11153| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6518_19138) ) (!  (not (select (|PolymorphicMapType_11153_16972_34531#PolymorphicMapType_11153| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11153_16972_34531#PolymorphicMapType_11153| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6518_6510) ) (!  (not (select (|PolymorphicMapType_11153_16972_10678#PolymorphicMapType_11153| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11153_16972_10678#PolymorphicMapType_11153| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6518_53) ) (!  (not (select (|PolymorphicMapType_11153_16972_53#PolymorphicMapType_11153| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11153_16972_53#PolymorphicMapType_11153| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_6512_16990) ) (!  (not (select (|PolymorphicMapType_11153_10664_33885#PolymorphicMapType_11153| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11153_10664_33885#PolymorphicMapType_11153| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_6512_6519) ) (!  (not (select (|PolymorphicMapType_11153_10664_16973#PolymorphicMapType_11153| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11153_10664_16973#PolymorphicMapType_11153| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_16906_16908) ) (!  (not (select (|PolymorphicMapType_11153_10664_33463#PolymorphicMapType_11153| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11153_10664_33463#PolymorphicMapType_11153| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_10677_10678) ) (!  (not (select (|PolymorphicMapType_11153_10664_10678#PolymorphicMapType_11153| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11153_10664_10678#PolymorphicMapType_11153| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_10664_53) ) (!  (not (select (|PolymorphicMapType_11153_10664_53#PolymorphicMapType_11153| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11153_10664_53#PolymorphicMapType_11153| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.300:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_6518_6519 (inv this))
 :qid |stdinbpl.416:15|
 :skolemid |83|
 :pattern ( (inv this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10604) (this@@0 T@Ref) ) (! (|inv#everUsed_6518| (inv this@@0))
 :qid |stdinbpl.435:15|
 :skolemid |87|
 :pattern ( (|inv#trigger_6518| Heap@@0 (inv this@@0)))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_6605| (|Set#Union_6605| a@@0 b@@0) b@@0) (|Set#Union_6605| a@@0 b@@0))
 :qid |stdinbpl.252:18|
 :skolemid |38|
 :pattern ( (|Set#Union_6605| (|Set#Union_6605| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_6605| (|Set#Intersection_6605| a@@1 b@@1) b@@1) (|Set#Intersection_6605| a@@1 b@@1))
 :qid |stdinbpl.256:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_6605| (|Set#Intersection_6605| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_6605| r) o) (= r o))
 :qid |stdinbpl.221:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_6605| r) o))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_10604) (Heap1Heap T@PolymorphicMapType_10604) (this@@1 T@Ref) ) (!  (=> (and (=  (and (and (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap2Heap) this@@1 all) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1))) (= (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap2Heap) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)) left) null)) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (and (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap1Heap) this@@1 all) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1))) (= (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap1Heap) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)) left) null)) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (and (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap2Heap) this@@1 all) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1))) (= (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap2Heap) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)) left) null)) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap2Heap) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)) left) (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap1Heap) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)) left)))) (= (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)))
 :qid |stdinbpl.457:15|
 :skolemid |89|
 :pattern ( (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_6605| (|Set#Union_6605| a@@2 b@@2)) (|Set#Card_6605| (|Set#Intersection_6605| a@@2 b@@2))) (+ (|Set#Card_6605| a@@2) (|Set#Card_6605| b@@2)))
 :qid |stdinbpl.260:18|
 :skolemid |42|
 :pattern ( (|Set#Card_6605| (|Set#Union_6605| a@@2 b@@2)))
 :pattern ( (|Set#Card_6605| (|Set#Intersection_6605| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.303:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10604) (ExhaleHeap T@PolymorphicMapType_10604) (Mask@@0 T@PolymorphicMapType_10625) (pm_f_9 T@Field_16972_16973) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6518_6519 Mask@@0 null pm_f_9) (IsPredicateField_6518_6519 pm_f_9)) (= (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@1) null (PredicateMaskField_6518 pm_f_9)) (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| ExhaleHeap) null (PredicateMaskField_6518 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_6518_6519 pm_f_9) (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| ExhaleHeap) null (PredicateMaskField_6518 pm_f_9)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10604) (ExhaleHeap@@0 T@PolymorphicMapType_10604) (Mask@@1 T@PolymorphicMapType_10625) (pm_f_9@@0 T@Field_6512_6519) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6512_6519 Mask@@1 null pm_f_9@@0) (IsPredicateField_6512_32381 pm_f_9@@0)) (= (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@2) null (PredicateMaskField_6512 pm_f_9@@0)) (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| ExhaleHeap@@0) null (PredicateMaskField_6512 pm_f_9@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6512_32381 pm_f_9@@0) (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| ExhaleHeap@@0) null (PredicateMaskField_6512 pm_f_9@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10604) (ExhaleHeap@@1 T@PolymorphicMapType_10604) (Mask@@2 T@PolymorphicMapType_10625) (pm_f_9@@1 T@Field_16972_16973) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6518_6519 Mask@@2 null pm_f_9@@1) (IsWandField_6518_36118 pm_f_9@@1)) (= (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@3) null (WandMaskField_6518 pm_f_9@@1)) (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| ExhaleHeap@@1) null (WandMaskField_6518 pm_f_9@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_6518_36118 pm_f_9@@1) (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| ExhaleHeap@@1) null (WandMaskField_6518 pm_f_9@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10604) (ExhaleHeap@@2 T@PolymorphicMapType_10604) (Mask@@3 T@PolymorphicMapType_10625) (pm_f_9@@2 T@Field_6512_6519) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6512_6519 Mask@@3 null pm_f_9@@2) (IsWandField_6512_35761 pm_f_9@@2)) (= (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@4) null (WandMaskField_6512 pm_f_9@@2)) (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| ExhaleHeap@@2) null (WandMaskField_6512 pm_f_9@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_6512_35761 pm_f_9@@2) (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| ExhaleHeap@@2) null (WandMaskField_6512 pm_f_9@@2)))
)))
(assert (forall ((this@@2 T@Ref) (this2 T@Ref) ) (!  (=> (= (inv this@@2) (inv this2)) (= this@@2 this2))
 :qid |stdinbpl.426:15|
 :skolemid |85|
 :pattern ( (inv this@@2) (inv this2))
)))
(assert (forall ((this@@3 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|inv#sm| this@@3) (|inv#sm| this2@@0)) (= this@@3 this2@@0))
 :qid |stdinbpl.430:15|
 :skolemid |86|
 :pattern ( (|inv#sm| this@@3) (|inv#sm| this2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10604) (ExhaleHeap@@3 T@PolymorphicMapType_10604) (Mask@@4 T@PolymorphicMapType_10625) (pm_f_9@@3 T@Field_16972_16973) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_6518_6519 Mask@@4 null pm_f_9@@3) (IsPredicateField_6518_6519 pm_f_9@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_10664_53) ) (!  (=> (select (|PolymorphicMapType_11153_10664_53#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@5) null (PredicateMaskField_6518 pm_f_9@@3))) o2_9 f_24) (= (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@5) o2_9 f_24) (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_10677_10678) ) (!  (=> (select (|PolymorphicMapType_11153_10664_10678#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@5) null (PredicateMaskField_6518 pm_f_9@@3))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@5) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_16906_16908) ) (!  (=> (select (|PolymorphicMapType_11153_10664_33463#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@5) null (PredicateMaskField_6518 pm_f_9@@3))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@5) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_6512_6519) ) (!  (=> (select (|PolymorphicMapType_11153_10664_16973#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@5) null (PredicateMaskField_6518 pm_f_9@@3))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@5) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9@@2 f_24@@2))
))) (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_6512_16990) ) (!  (=> (select (|PolymorphicMapType_11153_10664_33885#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@5) null (PredicateMaskField_6518 pm_f_9@@3))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@5) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9@@3 f_24@@3))
))) (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_6518_53) ) (!  (=> (select (|PolymorphicMapType_11153_16972_53#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@5) null (PredicateMaskField_6518 pm_f_9@@3))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@5) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9@@4 f_24@@4))
))) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_6518_6510) ) (!  (=> (select (|PolymorphicMapType_11153_16972_10678#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@5) null (PredicateMaskField_6518 pm_f_9@@3))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@5) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_6518_19138) ) (!  (=> (select (|PolymorphicMapType_11153_16972_34531#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@5) null (PredicateMaskField_6518 pm_f_9@@3))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@5) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9@@6 f_24@@6))
))) (forall ((o2_9@@7 T@Ref) (f_24@@7 T@Field_16972_16973) ) (!  (=> (select (|PolymorphicMapType_11153_16972_16973#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@5) null (PredicateMaskField_6518 pm_f_9@@3))) o2_9@@7 f_24@@7) (= (select (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@5) o2_9@@7 f_24@@7) (select (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9@@7 f_24@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9@@7 f_24@@7))
))) (forall ((o2_9@@8 T@Ref) (f_24@@8 T@Field_16985_16990) ) (!  (=> (select (|PolymorphicMapType_11153_16972_34953#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@5) null (PredicateMaskField_6518 pm_f_9@@3))) o2_9@@8 f_24@@8) (= (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@5) o2_9@@8 f_24@@8) (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9@@8 f_24@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| ExhaleHeap@@3) o2_9@@8 f_24@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_6518_6519 pm_f_9@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10604) (ExhaleHeap@@4 T@PolymorphicMapType_10604) (Mask@@5 T@PolymorphicMapType_10625) (pm_f_9@@4 T@Field_6512_6519) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_6512_6519 Mask@@5 null pm_f_9@@4) (IsPredicateField_6512_32381 pm_f_9@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_9@@9 T@Ref) (f_24@@9 T@Field_10664_53) ) (!  (=> (select (|PolymorphicMapType_11153_10664_53#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@6) null (PredicateMaskField_6512 pm_f_9@@4))) o2_9@@9 f_24@@9) (= (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@6) o2_9@@9 f_24@@9) (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@9 f_24@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@9 f_24@@9))
)) (forall ((o2_9@@10 T@Ref) (f_24@@10 T@Field_10677_10678) ) (!  (=> (select (|PolymorphicMapType_11153_10664_10678#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@6) null (PredicateMaskField_6512 pm_f_9@@4))) o2_9@@10 f_24@@10) (= (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@6) o2_9@@10 f_24@@10) (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@10 f_24@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@10 f_24@@10))
))) (forall ((o2_9@@11 T@Ref) (f_24@@11 T@Field_16906_16908) ) (!  (=> (select (|PolymorphicMapType_11153_10664_33463#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@6) null (PredicateMaskField_6512 pm_f_9@@4))) o2_9@@11 f_24@@11) (= (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@6) o2_9@@11 f_24@@11) (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@11 f_24@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@11 f_24@@11))
))) (forall ((o2_9@@12 T@Ref) (f_24@@12 T@Field_6512_6519) ) (!  (=> (select (|PolymorphicMapType_11153_10664_16973#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@6) null (PredicateMaskField_6512 pm_f_9@@4))) o2_9@@12 f_24@@12) (= (select (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@6) o2_9@@12 f_24@@12) (select (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@12 f_24@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@12 f_24@@12))
))) (forall ((o2_9@@13 T@Ref) (f_24@@13 T@Field_6512_16990) ) (!  (=> (select (|PolymorphicMapType_11153_10664_33885#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@6) null (PredicateMaskField_6512 pm_f_9@@4))) o2_9@@13 f_24@@13) (= (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@6) o2_9@@13 f_24@@13) (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@13 f_24@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@13 f_24@@13))
))) (forall ((o2_9@@14 T@Ref) (f_24@@14 T@Field_6518_53) ) (!  (=> (select (|PolymorphicMapType_11153_16972_53#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@6) null (PredicateMaskField_6512 pm_f_9@@4))) o2_9@@14 f_24@@14) (= (select (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@6) o2_9@@14 f_24@@14) (select (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@14 f_24@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@14 f_24@@14))
))) (forall ((o2_9@@15 T@Ref) (f_24@@15 T@Field_6518_6510) ) (!  (=> (select (|PolymorphicMapType_11153_16972_10678#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@6) null (PredicateMaskField_6512 pm_f_9@@4))) o2_9@@15 f_24@@15) (= (select (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@6) o2_9@@15 f_24@@15) (select (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@15 f_24@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@15 f_24@@15))
))) (forall ((o2_9@@16 T@Ref) (f_24@@16 T@Field_6518_19138) ) (!  (=> (select (|PolymorphicMapType_11153_16972_34531#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@6) null (PredicateMaskField_6512 pm_f_9@@4))) o2_9@@16 f_24@@16) (= (select (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@6) o2_9@@16 f_24@@16) (select (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@16 f_24@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@16 f_24@@16))
))) (forall ((o2_9@@17 T@Ref) (f_24@@17 T@Field_16972_16973) ) (!  (=> (select (|PolymorphicMapType_11153_16972_16973#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@6) null (PredicateMaskField_6512 pm_f_9@@4))) o2_9@@17 f_24@@17) (= (select (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@6) o2_9@@17 f_24@@17) (select (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@17 f_24@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@17 f_24@@17))
))) (forall ((o2_9@@18 T@Ref) (f_24@@18 T@Field_16985_16990) ) (!  (=> (select (|PolymorphicMapType_11153_16972_34953#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@6) null (PredicateMaskField_6512 pm_f_9@@4))) o2_9@@18 f_24@@18) (= (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@6) o2_9@@18 f_24@@18) (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@18 f_24@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| ExhaleHeap@@4) o2_9@@18 f_24@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_6512_32381 pm_f_9@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10604) (ExhaleHeap@@5 T@PolymorphicMapType_10604) (Mask@@6 T@PolymorphicMapType_10625) (pm_f_9@@5 T@Field_16972_16973) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_6518_6519 Mask@@6 null pm_f_9@@5) (IsWandField_6518_36118 pm_f_9@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_9@@19 T@Ref) (f_24@@19 T@Field_10664_53) ) (!  (=> (select (|PolymorphicMapType_11153_10664_53#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@7) null (WandMaskField_6518 pm_f_9@@5))) o2_9@@19 f_24@@19) (= (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@7) o2_9@@19 f_24@@19) (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@19 f_24@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@19 f_24@@19))
)) (forall ((o2_9@@20 T@Ref) (f_24@@20 T@Field_10677_10678) ) (!  (=> (select (|PolymorphicMapType_11153_10664_10678#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@7) null (WandMaskField_6518 pm_f_9@@5))) o2_9@@20 f_24@@20) (= (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@7) o2_9@@20 f_24@@20) (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@20 f_24@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@20 f_24@@20))
))) (forall ((o2_9@@21 T@Ref) (f_24@@21 T@Field_16906_16908) ) (!  (=> (select (|PolymorphicMapType_11153_10664_33463#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@7) null (WandMaskField_6518 pm_f_9@@5))) o2_9@@21 f_24@@21) (= (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@7) o2_9@@21 f_24@@21) (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@21 f_24@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@21 f_24@@21))
))) (forall ((o2_9@@22 T@Ref) (f_24@@22 T@Field_6512_6519) ) (!  (=> (select (|PolymorphicMapType_11153_10664_16973#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@7) null (WandMaskField_6518 pm_f_9@@5))) o2_9@@22 f_24@@22) (= (select (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@7) o2_9@@22 f_24@@22) (select (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@22 f_24@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@22 f_24@@22))
))) (forall ((o2_9@@23 T@Ref) (f_24@@23 T@Field_6512_16990) ) (!  (=> (select (|PolymorphicMapType_11153_10664_33885#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@7) null (WandMaskField_6518 pm_f_9@@5))) o2_9@@23 f_24@@23) (= (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@7) o2_9@@23 f_24@@23) (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@23 f_24@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@23 f_24@@23))
))) (forall ((o2_9@@24 T@Ref) (f_24@@24 T@Field_6518_53) ) (!  (=> (select (|PolymorphicMapType_11153_16972_53#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@7) null (WandMaskField_6518 pm_f_9@@5))) o2_9@@24 f_24@@24) (= (select (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@7) o2_9@@24 f_24@@24) (select (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@24 f_24@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@24 f_24@@24))
))) (forall ((o2_9@@25 T@Ref) (f_24@@25 T@Field_6518_6510) ) (!  (=> (select (|PolymorphicMapType_11153_16972_10678#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@7) null (WandMaskField_6518 pm_f_9@@5))) o2_9@@25 f_24@@25) (= (select (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@7) o2_9@@25 f_24@@25) (select (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@25 f_24@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@25 f_24@@25))
))) (forall ((o2_9@@26 T@Ref) (f_24@@26 T@Field_6518_19138) ) (!  (=> (select (|PolymorphicMapType_11153_16972_34531#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@7) null (WandMaskField_6518 pm_f_9@@5))) o2_9@@26 f_24@@26) (= (select (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@7) o2_9@@26 f_24@@26) (select (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@26 f_24@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@26 f_24@@26))
))) (forall ((o2_9@@27 T@Ref) (f_24@@27 T@Field_16972_16973) ) (!  (=> (select (|PolymorphicMapType_11153_16972_16973#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@7) null (WandMaskField_6518 pm_f_9@@5))) o2_9@@27 f_24@@27) (= (select (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@7) o2_9@@27 f_24@@27) (select (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@27 f_24@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@27 f_24@@27))
))) (forall ((o2_9@@28 T@Ref) (f_24@@28 T@Field_16985_16990) ) (!  (=> (select (|PolymorphicMapType_11153_16972_34953#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@7) null (WandMaskField_6518 pm_f_9@@5))) o2_9@@28 f_24@@28) (= (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@7) o2_9@@28 f_24@@28) (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@28 f_24@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| ExhaleHeap@@5) o2_9@@28 f_24@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_6518_36118 pm_f_9@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10604) (ExhaleHeap@@6 T@PolymorphicMapType_10604) (Mask@@7 T@PolymorphicMapType_10625) (pm_f_9@@6 T@Field_6512_6519) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_6512_6519 Mask@@7 null pm_f_9@@6) (IsWandField_6512_35761 pm_f_9@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_9@@29 T@Ref) (f_24@@29 T@Field_10664_53) ) (!  (=> (select (|PolymorphicMapType_11153_10664_53#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@8) null (WandMaskField_6512 pm_f_9@@6))) o2_9@@29 f_24@@29) (= (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@8) o2_9@@29 f_24@@29) (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@29 f_24@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@29 f_24@@29))
)) (forall ((o2_9@@30 T@Ref) (f_24@@30 T@Field_10677_10678) ) (!  (=> (select (|PolymorphicMapType_11153_10664_10678#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@8) null (WandMaskField_6512 pm_f_9@@6))) o2_9@@30 f_24@@30) (= (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@8) o2_9@@30 f_24@@30) (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@30 f_24@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@30 f_24@@30))
))) (forall ((o2_9@@31 T@Ref) (f_24@@31 T@Field_16906_16908) ) (!  (=> (select (|PolymorphicMapType_11153_10664_33463#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@8) null (WandMaskField_6512 pm_f_9@@6))) o2_9@@31 f_24@@31) (= (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@8) o2_9@@31 f_24@@31) (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@31 f_24@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@31 f_24@@31))
))) (forall ((o2_9@@32 T@Ref) (f_24@@32 T@Field_6512_6519) ) (!  (=> (select (|PolymorphicMapType_11153_10664_16973#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@8) null (WandMaskField_6512 pm_f_9@@6))) o2_9@@32 f_24@@32) (= (select (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@8) o2_9@@32 f_24@@32) (select (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@32 f_24@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@32 f_24@@32))
))) (forall ((o2_9@@33 T@Ref) (f_24@@33 T@Field_6512_16990) ) (!  (=> (select (|PolymorphicMapType_11153_10664_33885#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@8) null (WandMaskField_6512 pm_f_9@@6))) o2_9@@33 f_24@@33) (= (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@8) o2_9@@33 f_24@@33) (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@33 f_24@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@33 f_24@@33))
))) (forall ((o2_9@@34 T@Ref) (f_24@@34 T@Field_6518_53) ) (!  (=> (select (|PolymorphicMapType_11153_16972_53#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@8) null (WandMaskField_6512 pm_f_9@@6))) o2_9@@34 f_24@@34) (= (select (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@8) o2_9@@34 f_24@@34) (select (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@34 f_24@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@34 f_24@@34))
))) (forall ((o2_9@@35 T@Ref) (f_24@@35 T@Field_6518_6510) ) (!  (=> (select (|PolymorphicMapType_11153_16972_10678#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@8) null (WandMaskField_6512 pm_f_9@@6))) o2_9@@35 f_24@@35) (= (select (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@8) o2_9@@35 f_24@@35) (select (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@35 f_24@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@35 f_24@@35))
))) (forall ((o2_9@@36 T@Ref) (f_24@@36 T@Field_6518_19138) ) (!  (=> (select (|PolymorphicMapType_11153_16972_34531#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@8) null (WandMaskField_6512 pm_f_9@@6))) o2_9@@36 f_24@@36) (= (select (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@8) o2_9@@36 f_24@@36) (select (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@36 f_24@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@36 f_24@@36))
))) (forall ((o2_9@@37 T@Ref) (f_24@@37 T@Field_16972_16973) ) (!  (=> (select (|PolymorphicMapType_11153_16972_16973#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@8) null (WandMaskField_6512 pm_f_9@@6))) o2_9@@37 f_24@@37) (= (select (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@8) o2_9@@37 f_24@@37) (select (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@37 f_24@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@37 f_24@@37))
))) (forall ((o2_9@@38 T@Ref) (f_24@@38 T@Field_16985_16990) ) (!  (=> (select (|PolymorphicMapType_11153_16972_34953#PolymorphicMapType_11153| (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@8) null (WandMaskField_6512 pm_f_9@@6))) o2_9@@38 f_24@@38) (= (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@8) o2_9@@38 f_24@@38) (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@38 f_24@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| ExhaleHeap@@6) o2_9@@38 f_24@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_6512_35761 pm_f_9@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10604) (ExhaleHeap@@7 T@PolymorphicMapType_10604) (Mask@@8 T@PolymorphicMapType_10625) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@9) o_27 $allocated) (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| ExhaleHeap@@7) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| ExhaleHeap@@7) o_27 $allocated))
)))
(assert (forall ((p T@Field_16972_16973) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_16972_16972 p v_1 p w))
 :qid |stdinbpl.198:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16972_16972 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_6512_6519) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_10664_10664 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.198:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10664_10664 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_6509_6510 left)))
(assert  (not (IsWandField_6509_6510 left)))
(assert  (not (IsPredicateField_6512_16932 all)))
(assert  (not (IsWandField_6512_16959 all)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10604) (ExhaleHeap@@8 T@PolymorphicMapType_10604) (Mask@@9 T@PolymorphicMapType_10625) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10625) (o_2@@9 T@Ref) (f_4@@9 T@Field_16985_16990) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_10625_6518_40796#PolymorphicMapType_10625| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6518_43088 f_4@@9))) (not (IsWandField_6518_43104 f_4@@9))) (<= (select (|PolymorphicMapType_10625_6518_40796#PolymorphicMapType_10625| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_10625_6518_40796#PolymorphicMapType_10625| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10625) (o_2@@10 T@Ref) (f_4@@10 T@Field_6518_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_10625_6518_53#PolymorphicMapType_10625| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6518_53 f_4@@10))) (not (IsWandField_6518_53 f_4@@10))) (<= (select (|PolymorphicMapType_10625_6518_53#PolymorphicMapType_10625| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_10625_6518_53#PolymorphicMapType_10625| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10625) (o_2@@11 T@Ref) (f_4@@11 T@Field_16972_16973) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_10625_6518_6519#PolymorphicMapType_10625| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6518_6519 f_4@@11))) (not (IsWandField_6518_36118 f_4@@11))) (<= (select (|PolymorphicMapType_10625_6518_6519#PolymorphicMapType_10625| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_10625_6518_6519#PolymorphicMapType_10625| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10625) (o_2@@12 T@Ref) (f_4@@12 T@Field_6518_6510) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_10625_6518_6510#PolymorphicMapType_10625| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6518_6510 f_4@@12))) (not (IsWandField_6518_6510 f_4@@12))) (<= (select (|PolymorphicMapType_10625_6518_6510#PolymorphicMapType_10625| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_10625_6518_6510#PolymorphicMapType_10625| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10625) (o_2@@13 T@Ref) (f_4@@13 T@Field_6518_19138) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_10625_6518_40476#PolymorphicMapType_10625| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6518_42425 f_4@@13))) (not (IsWandField_6518_42441 f_4@@13))) (<= (select (|PolymorphicMapType_10625_6518_40476#PolymorphicMapType_10625| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_10625_6518_40476#PolymorphicMapType_10625| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10625) (o_2@@14 T@Ref) (f_4@@14 T@Field_6512_16990) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_10625_6512_40376#PolymorphicMapType_10625| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6512_42252 f_4@@14))) (not (IsWandField_6512_42268 f_4@@14))) (<= (select (|PolymorphicMapType_10625_6512_40376#PolymorphicMapType_10625| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_10625_6512_40376#PolymorphicMapType_10625| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10625) (o_2@@15 T@Ref) (f_4@@15 T@Field_10664_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_10625_6512_53#PolymorphicMapType_10625| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6512_53 f_4@@15))) (not (IsWandField_6512_53 f_4@@15))) (<= (select (|PolymorphicMapType_10625_6512_53#PolymorphicMapType_10625| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_10625_6512_53#PolymorphicMapType_10625| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10625) (o_2@@16 T@Ref) (f_4@@16 T@Field_6512_6519) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_10625_6512_6519#PolymorphicMapType_10625| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6512_32381 f_4@@16))) (not (IsWandField_6512_35761 f_4@@16))) (<= (select (|PolymorphicMapType_10625_6512_6519#PolymorphicMapType_10625| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_10625_6512_6519#PolymorphicMapType_10625| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10625) (o_2@@17 T@Ref) (f_4@@17 T@Field_10677_10678) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6509_6510 f_4@@17))) (not (IsWandField_6509_6510 f_4@@17))) (<= (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10625) (o_2@@18 T@Ref) (f_4@@18 T@Field_16906_16908) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6512_16932 f_4@@18))) (not (IsWandField_6512_16959 f_4@@18))) (<= (select (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) ) (! (= (|Set#Equal_6606| a@@4 b@@3) (forall ((o@@0 T@Ref) ) (! (= (select a@@4 o@@0) (select b@@3 o@@0))
 :qid |stdinbpl.285:31|
 :skolemid |48|
 :pattern ( (select a@@4 o@@0))
 :pattern ( (select b@@3 o@@0))
)))
 :qid |stdinbpl.284:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_6606| a@@4 b@@3))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10625) (o_2@@19 T@Ref) (f_4@@19 T@Field_16985_16990) ) (! (= (HasDirectPerm_6518_32093 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_10625_6518_40796#PolymorphicMapType_10625| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6518_32093 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10625) (o_2@@20 T@Ref) (f_4@@20 T@Field_6518_53) ) (! (= (HasDirectPerm_6518_53 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_10625_6518_53#PolymorphicMapType_10625| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6518_53 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10625) (o_2@@21 T@Ref) (f_4@@21 T@Field_16972_16973) ) (! (= (HasDirectPerm_6518_6519 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_10625_6518_6519#PolymorphicMapType_10625| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6518_6519 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10625) (o_2@@22 T@Ref) (f_4@@22 T@Field_6518_6510) ) (! (= (HasDirectPerm_6518_6510 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_10625_6518_6510#PolymorphicMapType_10625| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6518_6510 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10625) (o_2@@23 T@Ref) (f_4@@23 T@Field_6518_19138) ) (! (= (HasDirectPerm_6518_31207 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_10625_6518_40476#PolymorphicMapType_10625| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6518_31207 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10625) (o_2@@24 T@Ref) (f_4@@24 T@Field_6512_16990) ) (! (= (HasDirectPerm_6512_30927 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_10625_6512_40376#PolymorphicMapType_10625| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6512_30927 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10625) (o_2@@25 T@Ref) (f_4@@25 T@Field_10664_53) ) (! (= (HasDirectPerm_6512_53 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_10625_6512_53#PolymorphicMapType_10625| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6512_53 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_10625) (o_2@@26 T@Ref) (f_4@@26 T@Field_6512_6519) ) (! (= (HasDirectPerm_6512_6519 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_10625_6512_6519#PolymorphicMapType_10625| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6512_6519 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_10625) (o_2@@27 T@Ref) (f_4@@27 T@Field_10677_10678) ) (! (= (HasDirectPerm_6509_6510 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6509_6510 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_10625) (o_2@@28 T@Ref) (f_4@@28 T@Field_16906_16908) ) (! (= (HasDirectPerm_6512_19138 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6512_19138 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.186:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10604) (ExhaleHeap@@9 T@PolymorphicMapType_10604) (Mask@@30 T@PolymorphicMapType_10625) (o_27@@0 T@Ref) (f_24@@39 T@Field_16985_16990) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_6518_32093 Mask@@30 o_27@@0 f_24@@39) (= (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@11) o_27@@0 f_24@@39) (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| ExhaleHeap@@9) o_27@@0 f_24@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| ExhaleHeap@@9) o_27@@0 f_24@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10604) (ExhaleHeap@@10 T@PolymorphicMapType_10604) (Mask@@31 T@PolymorphicMapType_10625) (o_27@@1 T@Ref) (f_24@@40 T@Field_6518_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_6518_53 Mask@@31 o_27@@1 f_24@@40) (= (select (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@12) o_27@@1 f_24@@40) (select (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| ExhaleHeap@@10) o_27@@1 f_24@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| ExhaleHeap@@10) o_27@@1 f_24@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10604) (ExhaleHeap@@11 T@PolymorphicMapType_10604) (Mask@@32 T@PolymorphicMapType_10625) (o_27@@2 T@Ref) (f_24@@41 T@Field_16972_16973) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_6518_6519 Mask@@32 o_27@@2 f_24@@41) (= (select (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@13) o_27@@2 f_24@@41) (select (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| ExhaleHeap@@11) o_27@@2 f_24@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| ExhaleHeap@@11) o_27@@2 f_24@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10604) (ExhaleHeap@@12 T@PolymorphicMapType_10604) (Mask@@33 T@PolymorphicMapType_10625) (o_27@@3 T@Ref) (f_24@@42 T@Field_6518_6510) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_6518_6510 Mask@@33 o_27@@3 f_24@@42) (= (select (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@14) o_27@@3 f_24@@42) (select (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| ExhaleHeap@@12) o_27@@3 f_24@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| ExhaleHeap@@12) o_27@@3 f_24@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10604) (ExhaleHeap@@13 T@PolymorphicMapType_10604) (Mask@@34 T@PolymorphicMapType_10625) (o_27@@4 T@Ref) (f_24@@43 T@Field_6518_19138) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_6518_31207 Mask@@34 o_27@@4 f_24@@43) (= (select (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@15) o_27@@4 f_24@@43) (select (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| ExhaleHeap@@13) o_27@@4 f_24@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| ExhaleHeap@@13) o_27@@4 f_24@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10604) (ExhaleHeap@@14 T@PolymorphicMapType_10604) (Mask@@35 T@PolymorphicMapType_10625) (o_27@@5 T@Ref) (f_24@@44 T@Field_6512_16990) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_6512_30927 Mask@@35 o_27@@5 f_24@@44) (= (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@16) o_27@@5 f_24@@44) (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| ExhaleHeap@@14) o_27@@5 f_24@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| ExhaleHeap@@14) o_27@@5 f_24@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10604) (ExhaleHeap@@15 T@PolymorphicMapType_10604) (Mask@@36 T@PolymorphicMapType_10625) (o_27@@6 T@Ref) (f_24@@45 T@Field_10664_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_6512_53 Mask@@36 o_27@@6 f_24@@45) (= (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@17) o_27@@6 f_24@@45) (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| ExhaleHeap@@15) o_27@@6 f_24@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| ExhaleHeap@@15) o_27@@6 f_24@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10604) (ExhaleHeap@@16 T@PolymorphicMapType_10604) (Mask@@37 T@PolymorphicMapType_10625) (o_27@@7 T@Ref) (f_24@@46 T@Field_6512_6519) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_6512_6519 Mask@@37 o_27@@7 f_24@@46) (= (select (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@18) o_27@@7 f_24@@46) (select (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| ExhaleHeap@@16) o_27@@7 f_24@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| ExhaleHeap@@16) o_27@@7 f_24@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10604) (ExhaleHeap@@17 T@PolymorphicMapType_10604) (Mask@@38 T@PolymorphicMapType_10625) (o_27@@8 T@Ref) (f_24@@47 T@Field_10677_10678) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_6509_6510 Mask@@38 o_27@@8 f_24@@47) (= (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@19) o_27@@8 f_24@@47) (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| ExhaleHeap@@17) o_27@@8 f_24@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| ExhaleHeap@@17) o_27@@8 f_24@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10604) (ExhaleHeap@@18 T@PolymorphicMapType_10604) (Mask@@39 T@PolymorphicMapType_10625) (o_27@@9 T@Ref) (f_24@@48 T@Field_16906_16908) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_6512_19138 Mask@@39 o_27@@9 f_24@@48) (= (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@20) o_27@@9 f_24@@48) (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| ExhaleHeap@@18) o_27@@9 f_24@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| ExhaleHeap@@18) o_27@@9 f_24@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_16985_16990) ) (! (= (select (|PolymorphicMapType_10625_6518_40796#PolymorphicMapType_10625| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10625_6518_40796#PolymorphicMapType_10625| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_6518_53) ) (! (= (select (|PolymorphicMapType_10625_6518_53#PolymorphicMapType_10625| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10625_6518_53#PolymorphicMapType_10625| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_16972_16973) ) (! (= (select (|PolymorphicMapType_10625_6518_6519#PolymorphicMapType_10625| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10625_6518_6519#PolymorphicMapType_10625| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_6518_6510) ) (! (= (select (|PolymorphicMapType_10625_6518_6510#PolymorphicMapType_10625| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10625_6518_6510#PolymorphicMapType_10625| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_6518_19138) ) (! (= (select (|PolymorphicMapType_10625_6518_40476#PolymorphicMapType_10625| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10625_6518_40476#PolymorphicMapType_10625| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_6512_16990) ) (! (= (select (|PolymorphicMapType_10625_6512_40376#PolymorphicMapType_10625| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10625_6512_40376#PolymorphicMapType_10625| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_10664_53) ) (! (= (select (|PolymorphicMapType_10625_6512_53#PolymorphicMapType_10625| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10625_6512_53#PolymorphicMapType_10625| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_6512_6519) ) (! (= (select (|PolymorphicMapType_10625_6512_6519#PolymorphicMapType_10625| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10625_6512_6519#PolymorphicMapType_10625| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_10677_10678) ) (! (= (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_16906_16908) ) (! (= (select (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10625) (SummandMask1 T@PolymorphicMapType_10625) (SummandMask2 T@PolymorphicMapType_10625) (o_2@@39 T@Ref) (f_4@@39 T@Field_16985_16990) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10625_6518_40796#PolymorphicMapType_10625| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_10625_6518_40796#PolymorphicMapType_10625| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_10625_6518_40796#PolymorphicMapType_10625| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10625_6518_40796#PolymorphicMapType_10625| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10625_6518_40796#PolymorphicMapType_10625| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10625_6518_40796#PolymorphicMapType_10625| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10625) (SummandMask1@@0 T@PolymorphicMapType_10625) (SummandMask2@@0 T@PolymorphicMapType_10625) (o_2@@40 T@Ref) (f_4@@40 T@Field_6518_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10625_6518_53#PolymorphicMapType_10625| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_10625_6518_53#PolymorphicMapType_10625| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_10625_6518_53#PolymorphicMapType_10625| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10625_6518_53#PolymorphicMapType_10625| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10625_6518_53#PolymorphicMapType_10625| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10625_6518_53#PolymorphicMapType_10625| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10625) (SummandMask1@@1 T@PolymorphicMapType_10625) (SummandMask2@@1 T@PolymorphicMapType_10625) (o_2@@41 T@Ref) (f_4@@41 T@Field_16972_16973) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10625_6518_6519#PolymorphicMapType_10625| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_10625_6518_6519#PolymorphicMapType_10625| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_10625_6518_6519#PolymorphicMapType_10625| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10625_6518_6519#PolymorphicMapType_10625| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10625_6518_6519#PolymorphicMapType_10625| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10625_6518_6519#PolymorphicMapType_10625| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10625) (SummandMask1@@2 T@PolymorphicMapType_10625) (SummandMask2@@2 T@PolymorphicMapType_10625) (o_2@@42 T@Ref) (f_4@@42 T@Field_6518_6510) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10625_6518_6510#PolymorphicMapType_10625| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_10625_6518_6510#PolymorphicMapType_10625| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_10625_6518_6510#PolymorphicMapType_10625| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10625_6518_6510#PolymorphicMapType_10625| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10625_6518_6510#PolymorphicMapType_10625| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10625_6518_6510#PolymorphicMapType_10625| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10625) (SummandMask1@@3 T@PolymorphicMapType_10625) (SummandMask2@@3 T@PolymorphicMapType_10625) (o_2@@43 T@Ref) (f_4@@43 T@Field_6518_19138) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10625_6518_40476#PolymorphicMapType_10625| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_10625_6518_40476#PolymorphicMapType_10625| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_10625_6518_40476#PolymorphicMapType_10625| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10625_6518_40476#PolymorphicMapType_10625| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10625_6518_40476#PolymorphicMapType_10625| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10625_6518_40476#PolymorphicMapType_10625| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10625) (SummandMask1@@4 T@PolymorphicMapType_10625) (SummandMask2@@4 T@PolymorphicMapType_10625) (o_2@@44 T@Ref) (f_4@@44 T@Field_6512_16990) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10625_6512_40376#PolymorphicMapType_10625| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_10625_6512_40376#PolymorphicMapType_10625| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_10625_6512_40376#PolymorphicMapType_10625| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10625_6512_40376#PolymorphicMapType_10625| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10625_6512_40376#PolymorphicMapType_10625| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10625_6512_40376#PolymorphicMapType_10625| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10625) (SummandMask1@@5 T@PolymorphicMapType_10625) (SummandMask2@@5 T@PolymorphicMapType_10625) (o_2@@45 T@Ref) (f_4@@45 T@Field_10664_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10625_6512_53#PolymorphicMapType_10625| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_10625_6512_53#PolymorphicMapType_10625| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_10625_6512_53#PolymorphicMapType_10625| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10625_6512_53#PolymorphicMapType_10625| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10625_6512_53#PolymorphicMapType_10625| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10625_6512_53#PolymorphicMapType_10625| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10625) (SummandMask1@@6 T@PolymorphicMapType_10625) (SummandMask2@@6 T@PolymorphicMapType_10625) (o_2@@46 T@Ref) (f_4@@46 T@Field_6512_6519) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10625_6512_6519#PolymorphicMapType_10625| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_10625_6512_6519#PolymorphicMapType_10625| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_10625_6512_6519#PolymorphicMapType_10625| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10625_6512_6519#PolymorphicMapType_10625| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10625_6512_6519#PolymorphicMapType_10625| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10625_6512_6519#PolymorphicMapType_10625| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_10625) (SummandMask1@@7 T@PolymorphicMapType_10625) (SummandMask2@@7 T@PolymorphicMapType_10625) (o_2@@47 T@Ref) (f_4@@47 T@Field_10677_10678) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_10625) (SummandMask1@@8 T@PolymorphicMapType_10625) (SummandMask2@@8 T@PolymorphicMapType_10625) (o_2@@48 T@Ref) (f_4@@48 T@Field_16906_16908) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Intersection_6605| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (select b@@4 o@@1)))
 :qid |stdinbpl.249:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_6605| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Intersection_6605| a@@5 b@@4) (select a@@5 o@@1))
 :pattern ( (|Set#Intersection_6605| a@@5 b@@4) (select b@@4 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (o@@2 T@Ref) ) (! (= (select (|Set#Difference_6605| a@@6 b@@5) o@@2)  (and (select a@@6 o@@2) (not (select b@@5 o@@2))))
 :qid |stdinbpl.264:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_6605| a@@6 b@@5) o@@2))
 :pattern ( (|Set#Difference_6605| a@@6 b@@5) (select a@@6 o@@2))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_6606| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.286:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_6606| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@8 y) (select (|Set#UnionOne_6605| a@@8 x) y))
 :qid |stdinbpl.229:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_6605| a@@8 x) (select a@@8 y))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@9 y@@0) (select (|Set#Union_6605| a@@9 b@@7) y@@0))
 :qid |stdinbpl.239:18|
 :skolemid |35|
 :pattern ( (|Set#Union_6605| a@@9 b@@7) (select a@@9 y@@0))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@8 y@@1) (select (|Set#Union_6605| a@@10 b@@8) y@@1))
 :qid |stdinbpl.241:18|
 :skolemid |36|
 :pattern ( (|Set#Union_6605| a@@10 b@@8) (select b@@8 y@@1))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@3 T@Ref) ) (! (= (select (|Set#UnionOne_6605| a@@11 x@@0) o@@3)  (or (= o@@3 x@@0) (select a@@11 o@@3)))
 :qid |stdinbpl.225:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_6605| a@@11 x@@0) o@@3))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@9 y@@2) (not (select (|Set#Difference_6605| a@@12 b@@9) y@@2)))
 :qid |stdinbpl.266:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_6605| a@@12 b@@9) (select b@@9 y@@2))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_6605| (|Set#Difference_6605| a@@13 b@@10)) (|Set#Card_6605| (|Set#Difference_6605| b@@10 a@@13))) (|Set#Card_6605| (|Set#Intersection_6605| a@@13 b@@10))) (|Set#Card_6605| (|Set#Union_6605| a@@13 b@@10))) (= (|Set#Card_6605| (|Set#Difference_6605| a@@13 b@@10)) (- (|Set#Card_6605| a@@13) (|Set#Card_6605| (|Set#Intersection_6605| a@@13 b@@10)))))
 :qid |stdinbpl.268:18|
 :skolemid |45|
 :pattern ( (|Set#Card_6605| (|Set#Difference_6605| a@@13 b@@10)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_6605| s))
 :qid |stdinbpl.211:18|
 :skolemid |22|
 :pattern ( (|Set#Card_6605| s))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_6605| a@@14 x@@1) x@@1)
 :qid |stdinbpl.227:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_6605| a@@14 x@@1))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@15 x@@2) (= (|Set#Card_6605| (|Set#UnionOne_6605| a@@15 x@@2)) (|Set#Card_6605| a@@15)))
 :qid |stdinbpl.231:18|
 :skolemid |32|
 :pattern ( (|Set#Card_6605| (|Set#UnionOne_6605| a@@15 x@@2)))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (getPredWandId_6518_6519 (inv this@@4)) 0)
 :qid |stdinbpl.420:15|
 :skolemid |84|
 :pattern ( (inv this@@4))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_6605| (|Set#Singleton_6605| r@@0)) 1)
 :qid |stdinbpl.222:18|
 :skolemid |28|
 :pattern ( (|Set#Card_6605| (|Set#Singleton_6605| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_6605| r@@1) r@@1)
 :qid |stdinbpl.220:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_6605| r@@1))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) ) (! (= (|Set#Union_6605| a@@16 (|Set#Union_6605| a@@16 b@@11)) (|Set#Union_6605| a@@16 b@@11))
 :qid |stdinbpl.254:18|
 :skolemid |39|
 :pattern ( (|Set#Union_6605| a@@16 (|Set#Union_6605| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_6605| a@@17 (|Set#Intersection_6605| a@@17 b@@12)) (|Set#Intersection_6605| a@@17 b@@12))
 :qid |stdinbpl.258:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_6605| a@@17 (|Set#Intersection_6605| a@@17 b@@12)))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_10604) (Heap1Heap@@0 T@PolymorphicMapType_10604) (this@@5 T@Ref) ) (!  (=> (and (=  (and (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap2Heap@@0) this@@5 all) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap1Heap@@0) this@@5 all) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap2Heap@@0) this@@5 all) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap2Heap@@0) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5)) left) (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap1Heap@@0) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5)) left)))) (= (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5)))
 :qid |stdinbpl.446:15|
 :skolemid |88|
 :pattern ( (|inv#condqp1| Heap2Heap@@0 this@@5) (|inv#condqp1| Heap1Heap@@0 this@@5) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((o@@4 T@Ref) ) (!  (not (select |Set#Empty_6605| o@@4))
 :qid |stdinbpl.214:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_6605| o@@4))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10604) (o_20 T@Ref) (f_31 T@Field_16985_16990) (v T@PolymorphicMapType_11153) ) (! (succHeap Heap@@21 (PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@21) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@21) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@21) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@21) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@21) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@21) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@21) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@21) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@21) (store (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@21) o_20 f_31 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@21) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@21) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@21) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@21) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@21) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@21) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@21) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@21) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@21) (store (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@21) o_20 f_31 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10604) (o_20@@0 T@Ref) (f_31@@0 T@Field_16972_16973) (v@@0 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@22) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@22) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@22) (store (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@22) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@22) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@22) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@22) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@22) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@22) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@22) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@22) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@22) (store (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@22) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@22) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@22) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@22) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@22) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@22) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10604) (o_20@@1 T@Ref) (f_31@@1 T@Field_6518_19138) (v@@1 (Array T@Ref Bool)) ) (! (succHeap Heap@@23 (PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@23) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@23) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@23) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@23) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@23) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@23) (store (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@23) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@23) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@23) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@23) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@23) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@23) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@23) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@23) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@23) (store (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@23) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@23) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@23) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10604) (o_20@@2 T@Ref) (f_31@@2 T@Field_6518_6510) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@24) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@24) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@24) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@24) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@24) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@24) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@24) (store (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@24) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@24) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@24) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@24) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@24) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@24) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@24) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@24) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@24) (store (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@24) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@24) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10604) (o_20@@3 T@Ref) (f_31@@3 T@Field_6518_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@25) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@25) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@25) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@25) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@25) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@25) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@25) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@25) (store (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@25) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@25) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@25) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@25) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@25) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@25) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@25) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@25) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@25) (store (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@25) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10604) (o_20@@4 T@Ref) (f_31@@4 T@Field_6512_16990) (v@@4 T@PolymorphicMapType_11153) ) (! (succHeap Heap@@26 (PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@26) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@26) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@26) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@26) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@26) (store (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@26) o_20@@4 f_31@@4 v@@4) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@26) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@26) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@26) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@26) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@26) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@26) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@26) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@26) (store (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@26) o_20@@4 f_31@@4 v@@4) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@26) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@26) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@26) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10604) (o_20@@5 T@Ref) (f_31@@5 T@Field_6512_6519) (v@@5 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@27) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@27) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@27) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@27) (store (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@27) o_20@@5 f_31@@5 v@@5) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@27) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@27) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@27) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@27) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@27) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@27) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@27) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@27) (store (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@27) o_20@@5 f_31@@5 v@@5) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@27) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@27) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@27) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@27) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10604) (o_20@@6 T@Ref) (f_31@@6 T@Field_16906_16908) (v@@6 (Array T@Ref Bool)) ) (! (succHeap Heap@@28 (PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@28) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@28) (store (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@28) o_20@@6 f_31@@6 v@@6) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@28) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@28) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@28) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@28) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@28) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@28) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@28) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@28) (store (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@28) o_20@@6 f_31@@6 v@@6) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@28) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@28) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@28) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@28) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@28) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@28) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10604) (o_20@@7 T@Ref) (f_31@@7 T@Field_10677_10678) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@29) (store (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@29) o_20@@7 f_31@@7 v@@7) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@29) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@29) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@29) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@29) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@29) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@29) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@29) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10604 (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@29) (store (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@29) o_20@@7 f_31@@7 v@@7) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@29) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@29) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@29) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@29) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@29) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@29) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@29) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_10604) (o_20@@8 T@Ref) (f_31@@8 T@Field_10664_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_10604 (store (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@30) o_20@@8 f_31@@8 v@@8) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@30) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@30) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@30) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@30) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@30) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@30) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@30) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@30) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10604 (store (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@30) o_20@@8 f_31@@8 v@@8) (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@30) (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@30) (|PolymorphicMapType_10604_6518_6519#PolymorphicMapType_10604| Heap@@30) (|PolymorphicMapType_10604_6512_6519#PolymorphicMapType_10604| Heap@@30) (|PolymorphicMapType_10604_6512_30969#PolymorphicMapType_10604| Heap@@30) (|PolymorphicMapType_10604_6518_31249#PolymorphicMapType_10604| Heap@@30) (|PolymorphicMapType_10604_6518_6510#PolymorphicMapType_10604| Heap@@30) (|PolymorphicMapType_10604_6518_53#PolymorphicMapType_10604| Heap@@30) (|PolymorphicMapType_10604_6518_32135#PolymorphicMapType_10604| Heap@@30)))
)))
(assert (forall ((this@@6 T@Ref) ) (! (= (PredicateMaskField_6518 (inv this@@6)) (|inv#sm| this@@6))
 :qid |stdinbpl.412:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_6518 (inv this@@6)))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.298:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.299:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_6605| s@@0) 0) (= s@@0 |Set#Empty_6605|)) (=> (not (= (|Set#Card_6605| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.217:33|
 :skolemid |24|
))))
 :qid |stdinbpl.215:18|
 :skolemid |25|
 :pattern ( (|Set#Card_6605| s@@0))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@20 x@@4)) (= (|Set#Card_6605| (|Set#UnionOne_6605| a@@20 x@@4)) (+ (|Set#Card_6605| a@@20) 1)))
 :qid |stdinbpl.233:18|
 :skolemid |33|
 :pattern ( (|Set#Card_6605| (|Set#UnionOne_6605| a@@20 x@@4)))
)))
(assert (forall ((o_20@@9 T@Ref) (f_17 T@Field_10677_10678) (Heap@@31 T@PolymorphicMapType_10604) ) (!  (=> (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@31) o_20@@9 $allocated) (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@31) (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@31) o_20@@9 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@31) o_20@@9 f_17))
)))
(assert (forall ((p@@2 T@Field_16972_16973) (v_1@@1 T@FrameType) (q T@Field_16972_16973) (w@@1 T@FrameType) (r@@2 T@Field_16972_16973) (u T@FrameType) ) (!  (=> (and (InsidePredicate_16972_16972 p@@2 v_1@@1 q w@@1) (InsidePredicate_16972_16972 q w@@1 r@@2 u)) (InsidePredicate_16972_16972 p@@2 v_1@@1 r@@2 u))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16972_16972 p@@2 v_1@@1 q w@@1) (InsidePredicate_16972_16972 q w@@1 r@@2 u))
)))
(assert (forall ((p@@3 T@Field_16972_16973) (v_1@@2 T@FrameType) (q@@0 T@Field_16972_16973) (w@@2 T@FrameType) (r@@3 T@Field_6512_6519) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_16972_16972 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_16972_10664 q@@0 w@@2 r@@3 u@@0)) (InsidePredicate_16972_10664 p@@3 v_1@@2 r@@3 u@@0))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16972_16972 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_16972_10664 q@@0 w@@2 r@@3 u@@0))
)))
(assert (forall ((p@@4 T@Field_16972_16973) (v_1@@3 T@FrameType) (q@@1 T@Field_6512_6519) (w@@3 T@FrameType) (r@@4 T@Field_16972_16973) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_16972_10664 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_10664_16972 q@@1 w@@3 r@@4 u@@1)) (InsidePredicate_16972_16972 p@@4 v_1@@3 r@@4 u@@1))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16972_10664 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_10664_16972 q@@1 w@@3 r@@4 u@@1))
)))
(assert (forall ((p@@5 T@Field_16972_16973) (v_1@@4 T@FrameType) (q@@2 T@Field_6512_6519) (w@@4 T@FrameType) (r@@5 T@Field_6512_6519) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_16972_10664 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_10664_10664 q@@2 w@@4 r@@5 u@@2)) (InsidePredicate_16972_10664 p@@5 v_1@@4 r@@5 u@@2))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16972_10664 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_10664_10664 q@@2 w@@4 r@@5 u@@2))
)))
(assert (forall ((p@@6 T@Field_6512_6519) (v_1@@5 T@FrameType) (q@@3 T@Field_16972_16973) (w@@5 T@FrameType) (r@@6 T@Field_16972_16973) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_10664_16972 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_16972_16972 q@@3 w@@5 r@@6 u@@3)) (InsidePredicate_10664_16972 p@@6 v_1@@5 r@@6 u@@3))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10664_16972 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_16972_16972 q@@3 w@@5 r@@6 u@@3))
)))
(assert (forall ((p@@7 T@Field_6512_6519) (v_1@@6 T@FrameType) (q@@4 T@Field_16972_16973) (w@@6 T@FrameType) (r@@7 T@Field_6512_6519) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_10664_16972 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_16972_10664 q@@4 w@@6 r@@7 u@@4)) (InsidePredicate_10664_10664 p@@7 v_1@@6 r@@7 u@@4))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10664_16972 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_16972_10664 q@@4 w@@6 r@@7 u@@4))
)))
(assert (forall ((p@@8 T@Field_6512_6519) (v_1@@7 T@FrameType) (q@@5 T@Field_6512_6519) (w@@7 T@FrameType) (r@@8 T@Field_16972_16973) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_10664_10664 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_10664_16972 q@@5 w@@7 r@@8 u@@5)) (InsidePredicate_10664_16972 p@@8 v_1@@7 r@@8 u@@5))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10664_10664 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_10664_16972 q@@5 w@@7 r@@8 u@@5))
)))
(assert (forall ((p@@9 T@Field_6512_6519) (v_1@@8 T@FrameType) (q@@6 T@Field_6512_6519) (w@@8 T@FrameType) (r@@9 T@Field_6512_6519) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_10664_10664 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_10664_10664 q@@6 w@@8 r@@9 u@@6)) (InsidePredicate_10664_10664 p@@9 v_1@@8 r@@9 u@@6))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10664_10664 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_10664_10664 q@@6 w@@8 r@@9 u@@6))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.304:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Union_6605| a@@22 b@@15) o@@5)  (or (select a@@22 o@@5) (select b@@15 o@@5)))
 :qid |stdinbpl.237:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_6605| a@@22 b@@15) o@@5))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@32 () T@PolymorphicMapType_10604)
(declare-fun this@@7 () T@Ref)
(declare-fun s_5 () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_10625)
(declare-fun QPMask@1 () T@PolymorphicMapType_10625)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_10625)
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
(let ((anon9_Else_correct  (=> (and (not (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) s_5)) (= (ControlFlow 0 9) 6)) anon5_correct)))
(let ((anon9_Then_correct  (=> (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) s_5) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_6509_6510 QPMask@0 s_5 left)) (=> (HasDirectPerm_6509_6510 QPMask@0 s_5 left) (=> (= (ControlFlow 0 7) 6) anon5_correct))))))
(let ((anon8_Then_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (HasDirectPerm_6512_19138 QPMask@0 this@@7 all)) (=> (HasDirectPerm_6512_19138 QPMask@0 this@@7 all) (and (=> (= (ControlFlow 0 10) 7) anon9_Then_correct) (=> (= (ControlFlow 0 10) 9) anon9_Else_correct))))))
(let ((anon8_Else_correct  (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall ((s_2_1 T@Ref) (s_2_2 T@Ref) ) (!  (=> (and (and (and (and (not (= s_2_1 s_2_2)) (and (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) s_2_1) (= (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@32) s_2_1 left) null))) (and (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) s_2_2) (= (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@32) s_2_2 left) null))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= s_2_1 s_2_2)))
 :qid |stdinbpl.540:15|
 :skolemid |97|
))) (=> (forall ((s_2_1@@0 T@Ref) (s_2_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= s_2_1@@0 s_2_2@@0)) (and (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) s_2_1@@0) (= (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@32) s_2_1@@0 left) null))) (and (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) s_2_2@@0) (= (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@32) s_2_2@@0 left) null))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= s_2_1@@0 s_2_2@@0)))
 :qid |stdinbpl.540:15|
 :skolemid |97|
)) (=> (forall ((s_2_1@@1 T@Ref) ) (!  (=> (and (and (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) s_2_1@@1) (= (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@32) s_2_1@@1 left) null)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange2 s_2_1@@1) (= (invRecv2 s_2_1@@1) s_2_1@@1)))
 :qid |stdinbpl.546:22|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@32) s_2_1@@1 left))
 :pattern ( (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| QPMask@1) s_2_1@@1 left))
 :pattern ( (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) s_2_1@@1))
)) (=> (and (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) (invRecv2 o_4)) (= (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@32) (invRecv2 o_4) left) null)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_4)) (= (invRecv2 o_4) o_4))
 :qid |stdinbpl.550:22|
 :skolemid |99|
 :pattern ( (invRecv2 o_4))
)) (= (ControlFlow 0 4) (- 0 3))) (forall ((s_2_1@@2 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) s_2_1@@2) (= (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@32) s_2_1@@2 left) null)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.556:15|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@32) s_2_1@@2 left))
 :pattern ( (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| QPMask@1) s_2_1@@2 left))
 :pattern ( (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) s_2_1@@2))
))))))))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 12) (- 0 14)) (forall ((q_2_2 T@Ref) (q_2_3 T@Ref) ) (!  (=> (and (and (and (and (not (= q_2_2 q_2_3)) (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) q_2_2)) (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) q_2_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= q_2_2 q_2_3)))
 :qid |stdinbpl.489:15|
 :skolemid |90|
))) (=> (forall ((q_2_2@@0 T@Ref) (q_2_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= q_2_2@@0 q_2_3@@0)) (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) q_2_2@@0)) (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) q_2_3@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= q_2_2@@0 q_2_3@@0)))
 :qid |stdinbpl.489:15|
 :skolemid |90|
)) (=> (and (forall ((q_2_2@@1 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) q_2_2@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange1 q_2_2@@1) (= (invRecv1 q_2_2@@1) q_2_2@@1)))
 :qid |stdinbpl.495:22|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@32) q_2_2@@1 left))
 :pattern ( (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| QPMask@0) q_2_2@@1 left))
 :pattern ( (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) q_2_2@@1))
)) (forall ((o_4@@0 T@Ref) ) (!  (=> (and (and (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) (invRecv1 o_4@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange1 o_4@@0)) (= (invRecv1 o_4@@0) o_4@@0))
 :qid |stdinbpl.499:22|
 :skolemid |92|
 :pattern ( (invRecv1 o_4@@0))
))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (forall ((q_2_2@@2 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) q_2_2@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.505:15|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@32) q_2_2@@2 left))
 :pattern ( (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| QPMask@0) q_2_2@@2 left))
 :pattern ( (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) q_2_2@@2))
))) (=> (forall ((q_2_2@@3 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) q_2_2@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.505:15|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@32) q_2_2@@3 left))
 :pattern ( (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| QPMask@0) q_2_2@@3 left))
 :pattern ( (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) q_2_2@@3))
)) (=> (and (forall ((q_2_2@@4 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) q_2_2@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= q_2_2@@4 null)))
 :qid |stdinbpl.511:22|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_10604_6203_6204#PolymorphicMapType_10604| Heap@@32) q_2_2@@4 left))
 :pattern ( (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| QPMask@0) q_2_2@@4 left))
 :pattern ( (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) q_2_2@@4))
)) (forall ((o_4@@1 T@Ref) ) (!  (and (=> (and (and (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) (invRecv1 o_4@@1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange1 o_4@@1)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv1 o_4@@1) o_4@@1)) (= (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| QPMask@0) o_4@@1 left) (+ (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| Mask@0) o_4@@1 left) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select (select (|PolymorphicMapType_10604_6512_17570#PolymorphicMapType_10604| Heap@@32) this@@7 all) (invRecv1 o_4@@1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange1 o_4@@1))) (= (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| QPMask@0) o_4@@1 left) (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| Mask@0) o_4@@1 left))))
 :qid |stdinbpl.517:22|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| QPMask@0) o_4@@1 left))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@2 T@Ref) (f_5 T@Field_10664_53) ) (!  (=> true (= (select (|PolymorphicMapType_10625_6512_53#PolymorphicMapType_10625| Mask@0) o_4@@2 f_5) (select (|PolymorphicMapType_10625_6512_53#PolymorphicMapType_10625| QPMask@0) o_4@@2 f_5)))
 :qid |stdinbpl.521:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_10625_6512_53#PolymorphicMapType_10625| Mask@0) o_4@@2 f_5))
 :pattern ( (select (|PolymorphicMapType_10625_6512_53#PolymorphicMapType_10625| QPMask@0) o_4@@2 f_5))
)) (forall ((o_4@@3 T@Ref) (f_5@@0 T@Field_10677_10678) ) (!  (=> (not (= f_5@@0 left)) (= (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| Mask@0) o_4@@3 f_5@@0) (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| QPMask@0) o_4@@3 f_5@@0)))
 :qid |stdinbpl.521:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| Mask@0) o_4@@3 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| QPMask@0) o_4@@3 f_5@@0))
))) (forall ((o_4@@4 T@Ref) (f_5@@1 T@Field_16906_16908) ) (!  (=> true (= (select (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| Mask@0) o_4@@4 f_5@@1) (select (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| QPMask@0) o_4@@4 f_5@@1)))
 :qid |stdinbpl.521:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| Mask@0) o_4@@4 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| QPMask@0) o_4@@4 f_5@@1))
))) (forall ((o_4@@5 T@Ref) (f_5@@2 T@Field_6512_6519) ) (!  (=> true (= (select (|PolymorphicMapType_10625_6512_6519#PolymorphicMapType_10625| Mask@0) o_4@@5 f_5@@2) (select (|PolymorphicMapType_10625_6512_6519#PolymorphicMapType_10625| QPMask@0) o_4@@5 f_5@@2)))
 :qid |stdinbpl.521:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_10625_6512_6519#PolymorphicMapType_10625| Mask@0) o_4@@5 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_10625_6512_6519#PolymorphicMapType_10625| QPMask@0) o_4@@5 f_5@@2))
))) (forall ((o_4@@6 T@Ref) (f_5@@3 T@Field_6512_16990) ) (!  (=> true (= (select (|PolymorphicMapType_10625_6512_40376#PolymorphicMapType_10625| Mask@0) o_4@@6 f_5@@3) (select (|PolymorphicMapType_10625_6512_40376#PolymorphicMapType_10625| QPMask@0) o_4@@6 f_5@@3)))
 :qid |stdinbpl.521:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_10625_6512_40376#PolymorphicMapType_10625| Mask@0) o_4@@6 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_10625_6512_40376#PolymorphicMapType_10625| QPMask@0) o_4@@6 f_5@@3))
))) (forall ((o_4@@7 T@Ref) (f_5@@4 T@Field_6518_53) ) (!  (=> true (= (select (|PolymorphicMapType_10625_6518_53#PolymorphicMapType_10625| Mask@0) o_4@@7 f_5@@4) (select (|PolymorphicMapType_10625_6518_53#PolymorphicMapType_10625| QPMask@0) o_4@@7 f_5@@4)))
 :qid |stdinbpl.521:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_10625_6518_53#PolymorphicMapType_10625| Mask@0) o_4@@7 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_10625_6518_53#PolymorphicMapType_10625| QPMask@0) o_4@@7 f_5@@4))
))) (forall ((o_4@@8 T@Ref) (f_5@@5 T@Field_6518_6510) ) (!  (=> true (= (select (|PolymorphicMapType_10625_6518_6510#PolymorphicMapType_10625| Mask@0) o_4@@8 f_5@@5) (select (|PolymorphicMapType_10625_6518_6510#PolymorphicMapType_10625| QPMask@0) o_4@@8 f_5@@5)))
 :qid |stdinbpl.521:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_10625_6518_6510#PolymorphicMapType_10625| Mask@0) o_4@@8 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_10625_6518_6510#PolymorphicMapType_10625| QPMask@0) o_4@@8 f_5@@5))
))) (forall ((o_4@@9 T@Ref) (f_5@@6 T@Field_6518_19138) ) (!  (=> true (= (select (|PolymorphicMapType_10625_6518_40476#PolymorphicMapType_10625| Mask@0) o_4@@9 f_5@@6) (select (|PolymorphicMapType_10625_6518_40476#PolymorphicMapType_10625| QPMask@0) o_4@@9 f_5@@6)))
 :qid |stdinbpl.521:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_10625_6518_40476#PolymorphicMapType_10625| Mask@0) o_4@@9 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_10625_6518_40476#PolymorphicMapType_10625| QPMask@0) o_4@@9 f_5@@6))
))) (forall ((o_4@@10 T@Ref) (f_5@@7 T@Field_16972_16973) ) (!  (=> true (= (select (|PolymorphicMapType_10625_6518_6519#PolymorphicMapType_10625| Mask@0) o_4@@10 f_5@@7) (select (|PolymorphicMapType_10625_6518_6519#PolymorphicMapType_10625| QPMask@0) o_4@@10 f_5@@7)))
 :qid |stdinbpl.521:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_10625_6518_6519#PolymorphicMapType_10625| Mask@0) o_4@@10 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_10625_6518_6519#PolymorphicMapType_10625| QPMask@0) o_4@@10 f_5@@7))
))) (forall ((o_4@@11 T@Ref) (f_5@@8 T@Field_16985_16990) ) (!  (=> true (= (select (|PolymorphicMapType_10625_6518_40796#PolymorphicMapType_10625| Mask@0) o_4@@11 f_5@@8) (select (|PolymorphicMapType_10625_6518_40796#PolymorphicMapType_10625| QPMask@0) o_4@@11 f_5@@8)))
 :qid |stdinbpl.521:29|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_10625_6518_40796#PolymorphicMapType_10625| Mask@0) o_4@@11 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_10625_6518_40796#PolymorphicMapType_10625| QPMask@0) o_4@@11 f_5@@8))
))) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 12) 10) anon8_Then_correct) (=> (= (ControlFlow 0 12) 4) anon8_Else_correct)))))))))))
(let ((anon7_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_6512_19138 Mask@0 this@@7 all))))
(let ((anon0_correct  (=> (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_10604_6200_53#PolymorphicMapType_10604| Heap@@32) this@@7 $allocated) (not (= this@@7 null))) (and (= Mask@0 (PolymorphicMapType_10625 (store (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| ZeroMask) this@@7 all (+ (select (|PolymorphicMapType_10625_6512_19020#PolymorphicMapType_10625| ZeroMask) this@@7 all) FullPerm)) (|PolymorphicMapType_10625_6509_6510#PolymorphicMapType_10625| ZeroMask) (|PolymorphicMapType_10625_6518_6519#PolymorphicMapType_10625| ZeroMask) (|PolymorphicMapType_10625_6512_6519#PolymorphicMapType_10625| ZeroMask) (|PolymorphicMapType_10625_6512_53#PolymorphicMapType_10625| ZeroMask) (|PolymorphicMapType_10625_6512_40376#PolymorphicMapType_10625| ZeroMask) (|PolymorphicMapType_10625_6518_40476#PolymorphicMapType_10625| ZeroMask) (|PolymorphicMapType_10625_6518_6510#PolymorphicMapType_10625| ZeroMask) (|PolymorphicMapType_10625_6518_53#PolymorphicMapType_10625| ZeroMask) (|PolymorphicMapType_10625_6518_40796#PolymorphicMapType_10625| ZeroMask))) (state Heap@@32 Mask@0))) (and (=> (= (ControlFlow 0 15) 2) anon7_Then_correct) (=> (= (ControlFlow 0 15) 12) anon7_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16) 15) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
