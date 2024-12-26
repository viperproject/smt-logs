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
(declare-sort T@Field_9648_53 0)
(declare-sort T@Field_9661_9662 0)
(declare-sort T@Field_15820_3211 0)
(declare-sort T@Field_15867_15868 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_15880_15885 0)
(declare-sort T@Field_5584_15868 0)
(declare-sort T@Field_5584_15885 0)
(declare-sort T@Field_15867_3211 0)
(declare-sort T@Field_15867_53 0)
(declare-sort T@Field_15867_9662 0)
(declare-datatypes ((T@PolymorphicMapType_9609 0)) (((PolymorphicMapType_9609 (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| (Array T@Ref T@Field_15820_3211 Real)) (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| (Array T@Ref T@Field_15867_15868 Real)) (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| (Array T@Ref T@Field_5584_15868 Real)) (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| (Array T@Ref T@Field_9648_53 Real)) (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| (Array T@Ref T@Field_9661_9662 Real)) (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| (Array T@Ref T@Field_5584_15885 Real)) (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| (Array T@Ref T@Field_15867_3211 Real)) (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| (Array T@Ref T@Field_15867_53 Real)) (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| (Array T@Ref T@Field_15867_9662 Real)) (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| (Array T@Ref T@Field_15880_15885 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10137 0)) (((PolymorphicMapType_10137 (|PolymorphicMapType_10137_5584_3211#PolymorphicMapType_10137| (Array T@Ref T@Field_15820_3211 Bool)) (|PolymorphicMapType_10137_5584_53#PolymorphicMapType_10137| (Array T@Ref T@Field_9648_53 Bool)) (|PolymorphicMapType_10137_5584_9662#PolymorphicMapType_10137| (Array T@Ref T@Field_9661_9662 Bool)) (|PolymorphicMapType_10137_5584_15868#PolymorphicMapType_10137| (Array T@Ref T@Field_5584_15868 Bool)) (|PolymorphicMapType_10137_5584_30096#PolymorphicMapType_10137| (Array T@Ref T@Field_5584_15885 Bool)) (|PolymorphicMapType_10137_15867_3211#PolymorphicMapType_10137| (Array T@Ref T@Field_15867_3211 Bool)) (|PolymorphicMapType_10137_15867_53#PolymorphicMapType_10137| (Array T@Ref T@Field_15867_53 Bool)) (|PolymorphicMapType_10137_15867_9662#PolymorphicMapType_10137| (Array T@Ref T@Field_15867_9662 Bool)) (|PolymorphicMapType_10137_15867_15868#PolymorphicMapType_10137| (Array T@Ref T@Field_15867_15868 Bool)) (|PolymorphicMapType_10137_15867_31144#PolymorphicMapType_10137| (Array T@Ref T@Field_15880_15885 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9588 0)) (((PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| (Array T@Ref T@Field_9648_53 Bool)) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| (Array T@Ref T@Field_9661_9662 T@Ref)) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| (Array T@Ref T@Field_15820_3211 Int)) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| (Array T@Ref T@Field_15867_15868 T@FrameType)) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| (Array T@Ref T@Field_15880_15885 T@PolymorphicMapType_10137)) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| (Array T@Ref T@Field_5584_15868 T@FrameType)) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| (Array T@Ref T@Field_5584_15885 T@PolymorphicMapType_10137)) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| (Array T@Ref T@Field_15867_3211 Int)) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| (Array T@Ref T@Field_15867_53 Bool)) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| (Array T@Ref T@Field_15867_9662 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_9648_53)
(declare-fun f_7 () T@Field_15820_3211)
(declare-fun succHeap (T@PolymorphicMapType_9588 T@PolymorphicMapType_9588) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9588 T@PolymorphicMapType_9588) Bool)
(declare-fun state (T@PolymorphicMapType_9588 T@PolymorphicMapType_9609) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9609) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10137)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun p2 (T@Ref) T@Field_15867_15868)
(declare-fun IsPredicateField_5587_5588 (T@Field_15867_15868) Bool)
(declare-fun |p2#trigger_5587| (T@PolymorphicMapType_9588 T@Field_15867_15868) Bool)
(declare-fun |p2#everUsed_5587| (T@Field_15867_15868) Bool)
(declare-fun |Set#Union_5643| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_5643| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_5643| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_5643| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9588 T@PolymorphicMapType_9588 T@PolymorphicMapType_9609) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5587 (T@Field_15867_15868) T@Field_15880_15885)
(declare-fun HasDirectPerm_15867_15868 (T@PolymorphicMapType_9609 T@Ref T@Field_15867_15868) Bool)
(declare-fun IsPredicateField_5584_28624 (T@Field_5584_15868) Bool)
(declare-fun PredicateMaskField_5584 (T@Field_5584_15868) T@Field_5584_15885)
(declare-fun HasDirectPerm_5584_15868 (T@PolymorphicMapType_9609 T@Ref T@Field_5584_15868) Bool)
(declare-fun IsWandField_15867_32309 (T@Field_15867_15868) Bool)
(declare-fun WandMaskField_15867 (T@Field_15867_15868) T@Field_15880_15885)
(declare-fun IsWandField_5584_31952 (T@Field_5584_15868) Bool)
(declare-fun WandMaskField_5584 (T@Field_5584_15868) T@Field_5584_15885)
(declare-fun |p2#sm| (T@Ref) T@Field_15880_15885)
(declare-fun dummyHeap () T@PolymorphicMapType_9588)
(declare-fun ZeroMask () T@PolymorphicMapType_9609)
(declare-fun InsidePredicate_15867_15867 (T@Field_15867_15868 T@FrameType T@Field_15867_15868 T@FrameType) Bool)
(declare-fun InsidePredicate_9648_9648 (T@Field_5584_15868 T@FrameType T@Field_5584_15868 T@FrameType) Bool)
(declare-fun IsPredicateField_5584_3211 (T@Field_15820_3211) Bool)
(declare-fun IsWandField_5584_3211 (T@Field_15820_3211) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5587_39241 (T@Field_15880_15885) Bool)
(declare-fun IsWandField_5587_39257 (T@Field_15880_15885) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5587_9662 (T@Field_15867_9662) Bool)
(declare-fun IsWandField_5587_9662 (T@Field_15867_9662) Bool)
(declare-fun IsPredicateField_5587_53 (T@Field_15867_53) Bool)
(declare-fun IsWandField_5587_53 (T@Field_15867_53) Bool)
(declare-fun IsPredicateField_5587_3211 (T@Field_15867_3211) Bool)
(declare-fun IsWandField_5587_3211 (T@Field_15867_3211) Bool)
(declare-fun IsPredicateField_5584_38410 (T@Field_5584_15885) Bool)
(declare-fun IsWandField_5584_38426 (T@Field_5584_15885) Bool)
(declare-fun IsPredicateField_5584_9662 (T@Field_9661_9662) Bool)
(declare-fun IsWandField_5584_9662 (T@Field_9661_9662) Bool)
(declare-fun IsPredicateField_5584_53 (T@Field_9648_53) Bool)
(declare-fun IsWandField_5584_53 (T@Field_9648_53) Bool)
(declare-fun HasDirectPerm_15867_28379 (T@PolymorphicMapType_9609 T@Ref T@Field_15880_15885) Bool)
(declare-fun HasDirectPerm_15867_9662 (T@PolymorphicMapType_9609 T@Ref T@Field_15867_9662) Bool)
(declare-fun HasDirectPerm_15867_53 (T@PolymorphicMapType_9609 T@Ref T@Field_15867_53) Bool)
(declare-fun HasDirectPerm_15867_3211 (T@PolymorphicMapType_9609 T@Ref T@Field_15867_3211) Bool)
(declare-fun HasDirectPerm_5584_27218 (T@PolymorphicMapType_9609 T@Ref T@Field_5584_15885) Bool)
(declare-fun HasDirectPerm_5584_9662 (T@PolymorphicMapType_9609 T@Ref T@Field_9661_9662) Bool)
(declare-fun HasDirectPerm_5584_53 (T@PolymorphicMapType_9609 T@Ref T@Field_9648_53) Bool)
(declare-fun HasDirectPerm_5584_3211 (T@PolymorphicMapType_9609 T@Ref T@Field_15820_3211) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9609 T@PolymorphicMapType_9609 T@PolymorphicMapType_9609) Bool)
(declare-fun |Set#Difference_5643| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_5643| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun getPredWandId_5587_5588 (T@Field_15867_15868) Int)
(declare-fun |Set#Empty_5643| () (Array T@Ref Bool))
(declare-fun InsidePredicate_15867_9648 (T@Field_15867_15868 T@FrameType T@Field_5584_15868 T@FrameType) Bool)
(declare-fun InsidePredicate_9648_15867 (T@Field_5584_15868 T@FrameType T@Field_15867_15868 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_9588) (Heap1 T@PolymorphicMapType_9588) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9588) (Mask T@PolymorphicMapType_9609) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9588) (Heap1@@0 T@PolymorphicMapType_9588) (Heap2 T@PolymorphicMapType_9588) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_15880_15885) ) (!  (not (select (|PolymorphicMapType_10137_15867_31144#PolymorphicMapType_10137| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10137_15867_31144#PolymorphicMapType_10137| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_15867_15868) ) (!  (not (select (|PolymorphicMapType_10137_15867_15868#PolymorphicMapType_10137| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10137_15867_15868#PolymorphicMapType_10137| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_15867_9662) ) (!  (not (select (|PolymorphicMapType_10137_15867_9662#PolymorphicMapType_10137| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10137_15867_9662#PolymorphicMapType_10137| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_15867_53) ) (!  (not (select (|PolymorphicMapType_10137_15867_53#PolymorphicMapType_10137| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10137_15867_53#PolymorphicMapType_10137| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_15867_3211) ) (!  (not (select (|PolymorphicMapType_10137_15867_3211#PolymorphicMapType_10137| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10137_15867_3211#PolymorphicMapType_10137| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_5584_15885) ) (!  (not (select (|PolymorphicMapType_10137_5584_30096#PolymorphicMapType_10137| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10137_5584_30096#PolymorphicMapType_10137| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5584_15868) ) (!  (not (select (|PolymorphicMapType_10137_5584_15868#PolymorphicMapType_10137| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10137_5584_15868#PolymorphicMapType_10137| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_9661_9662) ) (!  (not (select (|PolymorphicMapType_10137_5584_9662#PolymorphicMapType_10137| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10137_5584_9662#PolymorphicMapType_10137| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_9648_53) ) (!  (not (select (|PolymorphicMapType_10137_5584_53#PolymorphicMapType_10137| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10137_5584_53#PolymorphicMapType_10137| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_15820_3211) ) (!  (not (select (|PolymorphicMapType_10137_5584_3211#PolymorphicMapType_10137| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10137_5584_3211#PolymorphicMapType_10137| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.288:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((r_1 T@Ref) ) (! (IsPredicateField_5587_5588 (p2 r_1))
 :qid |stdinbpl.401:15|
 :skolemid |83|
 :pattern ( (p2 r_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9588) (r_1@@0 T@Ref) ) (! (|p2#everUsed_5587| (p2 r_1@@0))
 :qid |stdinbpl.420:15|
 :skolemid |87|
 :pattern ( (|p2#trigger_5587| Heap@@0 (p2 r_1@@0)))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_5643| (|Set#Union_5643| a@@0 b@@0) b@@0) (|Set#Union_5643| a@@0 b@@0))
 :qid |stdinbpl.240:18|
 :skolemid |38|
 :pattern ( (|Set#Union_5643| (|Set#Union_5643| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_5643| (|Set#Intersection_5643| a@@1 b@@1) b@@1) (|Set#Intersection_5643| a@@1 b@@1))
 :qid |stdinbpl.244:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_5643| (|Set#Intersection_5643| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_5643| r) o) (= r o))
 :qid |stdinbpl.209:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_5643| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_5643| (|Set#Union_5643| a@@2 b@@2)) (|Set#Card_5643| (|Set#Intersection_5643| a@@2 b@@2))) (+ (|Set#Card_5643| a@@2) (|Set#Card_5643| b@@2)))
 :qid |stdinbpl.248:18|
 :skolemid |42|
 :pattern ( (|Set#Card_5643| (|Set#Union_5643| a@@2 b@@2)))
 :pattern ( (|Set#Card_5643| (|Set#Intersection_5643| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.291:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9588) (ExhaleHeap T@PolymorphicMapType_9588) (Mask@@0 T@PolymorphicMapType_9609) (pm_f_9 T@Field_15867_15868) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_15867_15868 Mask@@0 null pm_f_9) (IsPredicateField_5587_5588 pm_f_9)) (= (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@1) null (PredicateMaskField_5587 pm_f_9)) (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| ExhaleHeap) null (PredicateMaskField_5587 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_5587_5588 pm_f_9) (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| ExhaleHeap) null (PredicateMaskField_5587 pm_f_9)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9588) (ExhaleHeap@@0 T@PolymorphicMapType_9588) (Mask@@1 T@PolymorphicMapType_9609) (pm_f_9@@0 T@Field_5584_15868) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5584_15868 Mask@@1 null pm_f_9@@0) (IsPredicateField_5584_28624 pm_f_9@@0)) (= (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@2) null (PredicateMaskField_5584 pm_f_9@@0)) (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| ExhaleHeap@@0) null (PredicateMaskField_5584 pm_f_9@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5584_28624 pm_f_9@@0) (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| ExhaleHeap@@0) null (PredicateMaskField_5584 pm_f_9@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9588) (ExhaleHeap@@1 T@PolymorphicMapType_9588) (Mask@@2 T@PolymorphicMapType_9609) (pm_f_9@@1 T@Field_15867_15868) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_15867_15868 Mask@@2 null pm_f_9@@1) (IsWandField_15867_32309 pm_f_9@@1)) (= (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@3) null (WandMaskField_15867 pm_f_9@@1)) (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| ExhaleHeap@@1) null (WandMaskField_15867 pm_f_9@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_15867_32309 pm_f_9@@1) (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| ExhaleHeap@@1) null (WandMaskField_15867 pm_f_9@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9588) (ExhaleHeap@@2 T@PolymorphicMapType_9588) (Mask@@3 T@PolymorphicMapType_9609) (pm_f_9@@2 T@Field_5584_15868) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5584_15868 Mask@@3 null pm_f_9@@2) (IsWandField_5584_31952 pm_f_9@@2)) (= (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@4) null (WandMaskField_5584 pm_f_9@@2)) (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| ExhaleHeap@@2) null (WandMaskField_5584 pm_f_9@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_5584_31952 pm_f_9@@2) (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| ExhaleHeap@@2) null (WandMaskField_5584 pm_f_9@@2)))
)))
(assert (forall ((r_1@@1 T@Ref) (r2 T@Ref) ) (!  (=> (= (p2 r_1@@1) (p2 r2)) (= r_1@@1 r2))
 :qid |stdinbpl.411:15|
 :skolemid |85|
 :pattern ( (p2 r_1@@1) (p2 r2))
)))
(assert (forall ((r_1@@2 T@Ref) (r2@@0 T@Ref) ) (!  (=> (= (|p2#sm| r_1@@2) (|p2#sm| r2@@0)) (= r_1@@2 r2@@0))
 :qid |stdinbpl.415:15|
 :skolemid |86|
 :pattern ( (|p2#sm| r_1@@2) (|p2#sm| r2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9588) (ExhaleHeap@@3 T@PolymorphicMapType_9588) (Mask@@4 T@PolymorphicMapType_9609) (pm_f_9@@3 T@Field_15867_15868) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_15867_15868 Mask@@4 null pm_f_9@@3) (IsPredicateField_5587_5588 pm_f_9@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_15820_3211) ) (!  (=> (select (|PolymorphicMapType_10137_5584_3211#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@5) null (PredicateMaskField_5587 pm_f_9@@3))) o2_9 f_24) (= (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@5) o2_9 f_24) (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_9648_53) ) (!  (=> (select (|PolymorphicMapType_10137_5584_53#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@5) null (PredicateMaskField_5587 pm_f_9@@3))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@5) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_9661_9662) ) (!  (=> (select (|PolymorphicMapType_10137_5584_9662#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@5) null (PredicateMaskField_5587 pm_f_9@@3))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@5) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_5584_15868) ) (!  (=> (select (|PolymorphicMapType_10137_5584_15868#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@5) null (PredicateMaskField_5587 pm_f_9@@3))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@5) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9@@2 f_24@@2))
))) (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_5584_15885) ) (!  (=> (select (|PolymorphicMapType_10137_5584_30096#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@5) null (PredicateMaskField_5587 pm_f_9@@3))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@5) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9@@3 f_24@@3))
))) (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_15867_3211) ) (!  (=> (select (|PolymorphicMapType_10137_15867_3211#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@5) null (PredicateMaskField_5587 pm_f_9@@3))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@5) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9@@4 f_24@@4))
))) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_15867_53) ) (!  (=> (select (|PolymorphicMapType_10137_15867_53#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@5) null (PredicateMaskField_5587 pm_f_9@@3))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@5) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_15867_9662) ) (!  (=> (select (|PolymorphicMapType_10137_15867_9662#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@5) null (PredicateMaskField_5587 pm_f_9@@3))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@5) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9@@6 f_24@@6))
))) (forall ((o2_9@@7 T@Ref) (f_24@@7 T@Field_15867_15868) ) (!  (=> (select (|PolymorphicMapType_10137_15867_15868#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@5) null (PredicateMaskField_5587 pm_f_9@@3))) o2_9@@7 f_24@@7) (= (select (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@5) o2_9@@7 f_24@@7) (select (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9@@7 f_24@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9@@7 f_24@@7))
))) (forall ((o2_9@@8 T@Ref) (f_24@@8 T@Field_15880_15885) ) (!  (=> (select (|PolymorphicMapType_10137_15867_31144#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@5) null (PredicateMaskField_5587 pm_f_9@@3))) o2_9@@8 f_24@@8) (= (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@5) o2_9@@8 f_24@@8) (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9@@8 f_24@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| ExhaleHeap@@3) o2_9@@8 f_24@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_5587_5588 pm_f_9@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9588) (ExhaleHeap@@4 T@PolymorphicMapType_9588) (Mask@@5 T@PolymorphicMapType_9609) (pm_f_9@@4 T@Field_5584_15868) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5584_15868 Mask@@5 null pm_f_9@@4) (IsPredicateField_5584_28624 pm_f_9@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_9@@9 T@Ref) (f_24@@9 T@Field_15820_3211) ) (!  (=> (select (|PolymorphicMapType_10137_5584_3211#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@6) null (PredicateMaskField_5584 pm_f_9@@4))) o2_9@@9 f_24@@9) (= (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@6) o2_9@@9 f_24@@9) (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@9 f_24@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@9 f_24@@9))
)) (forall ((o2_9@@10 T@Ref) (f_24@@10 T@Field_9648_53) ) (!  (=> (select (|PolymorphicMapType_10137_5584_53#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@6) null (PredicateMaskField_5584 pm_f_9@@4))) o2_9@@10 f_24@@10) (= (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@6) o2_9@@10 f_24@@10) (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@10 f_24@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@10 f_24@@10))
))) (forall ((o2_9@@11 T@Ref) (f_24@@11 T@Field_9661_9662) ) (!  (=> (select (|PolymorphicMapType_10137_5584_9662#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@6) null (PredicateMaskField_5584 pm_f_9@@4))) o2_9@@11 f_24@@11) (= (select (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@6) o2_9@@11 f_24@@11) (select (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@11 f_24@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@11 f_24@@11))
))) (forall ((o2_9@@12 T@Ref) (f_24@@12 T@Field_5584_15868) ) (!  (=> (select (|PolymorphicMapType_10137_5584_15868#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@6) null (PredicateMaskField_5584 pm_f_9@@4))) o2_9@@12 f_24@@12) (= (select (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@6) o2_9@@12 f_24@@12) (select (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@12 f_24@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@12 f_24@@12))
))) (forall ((o2_9@@13 T@Ref) (f_24@@13 T@Field_5584_15885) ) (!  (=> (select (|PolymorphicMapType_10137_5584_30096#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@6) null (PredicateMaskField_5584 pm_f_9@@4))) o2_9@@13 f_24@@13) (= (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@6) o2_9@@13 f_24@@13) (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@13 f_24@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@13 f_24@@13))
))) (forall ((o2_9@@14 T@Ref) (f_24@@14 T@Field_15867_3211) ) (!  (=> (select (|PolymorphicMapType_10137_15867_3211#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@6) null (PredicateMaskField_5584 pm_f_9@@4))) o2_9@@14 f_24@@14) (= (select (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@6) o2_9@@14 f_24@@14) (select (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@14 f_24@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@14 f_24@@14))
))) (forall ((o2_9@@15 T@Ref) (f_24@@15 T@Field_15867_53) ) (!  (=> (select (|PolymorphicMapType_10137_15867_53#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@6) null (PredicateMaskField_5584 pm_f_9@@4))) o2_9@@15 f_24@@15) (= (select (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@6) o2_9@@15 f_24@@15) (select (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@15 f_24@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@15 f_24@@15))
))) (forall ((o2_9@@16 T@Ref) (f_24@@16 T@Field_15867_9662) ) (!  (=> (select (|PolymorphicMapType_10137_15867_9662#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@6) null (PredicateMaskField_5584 pm_f_9@@4))) o2_9@@16 f_24@@16) (= (select (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@6) o2_9@@16 f_24@@16) (select (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@16 f_24@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@16 f_24@@16))
))) (forall ((o2_9@@17 T@Ref) (f_24@@17 T@Field_15867_15868) ) (!  (=> (select (|PolymorphicMapType_10137_15867_15868#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@6) null (PredicateMaskField_5584 pm_f_9@@4))) o2_9@@17 f_24@@17) (= (select (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@6) o2_9@@17 f_24@@17) (select (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@17 f_24@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@17 f_24@@17))
))) (forall ((o2_9@@18 T@Ref) (f_24@@18 T@Field_15880_15885) ) (!  (=> (select (|PolymorphicMapType_10137_15867_31144#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@6) null (PredicateMaskField_5584 pm_f_9@@4))) o2_9@@18 f_24@@18) (= (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@6) o2_9@@18 f_24@@18) (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@18 f_24@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| ExhaleHeap@@4) o2_9@@18 f_24@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_5584_28624 pm_f_9@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9588) (ExhaleHeap@@5 T@PolymorphicMapType_9588) (Mask@@6 T@PolymorphicMapType_9609) (pm_f_9@@5 T@Field_15867_15868) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_15867_15868 Mask@@6 null pm_f_9@@5) (IsWandField_15867_32309 pm_f_9@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_9@@19 T@Ref) (f_24@@19 T@Field_15820_3211) ) (!  (=> (select (|PolymorphicMapType_10137_5584_3211#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@7) null (WandMaskField_15867 pm_f_9@@5))) o2_9@@19 f_24@@19) (= (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@7) o2_9@@19 f_24@@19) (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@19 f_24@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@19 f_24@@19))
)) (forall ((o2_9@@20 T@Ref) (f_24@@20 T@Field_9648_53) ) (!  (=> (select (|PolymorphicMapType_10137_5584_53#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@7) null (WandMaskField_15867 pm_f_9@@5))) o2_9@@20 f_24@@20) (= (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@7) o2_9@@20 f_24@@20) (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@20 f_24@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@20 f_24@@20))
))) (forall ((o2_9@@21 T@Ref) (f_24@@21 T@Field_9661_9662) ) (!  (=> (select (|PolymorphicMapType_10137_5584_9662#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@7) null (WandMaskField_15867 pm_f_9@@5))) o2_9@@21 f_24@@21) (= (select (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@7) o2_9@@21 f_24@@21) (select (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@21 f_24@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@21 f_24@@21))
))) (forall ((o2_9@@22 T@Ref) (f_24@@22 T@Field_5584_15868) ) (!  (=> (select (|PolymorphicMapType_10137_5584_15868#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@7) null (WandMaskField_15867 pm_f_9@@5))) o2_9@@22 f_24@@22) (= (select (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@7) o2_9@@22 f_24@@22) (select (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@22 f_24@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@22 f_24@@22))
))) (forall ((o2_9@@23 T@Ref) (f_24@@23 T@Field_5584_15885) ) (!  (=> (select (|PolymorphicMapType_10137_5584_30096#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@7) null (WandMaskField_15867 pm_f_9@@5))) o2_9@@23 f_24@@23) (= (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@7) o2_9@@23 f_24@@23) (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@23 f_24@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@23 f_24@@23))
))) (forall ((o2_9@@24 T@Ref) (f_24@@24 T@Field_15867_3211) ) (!  (=> (select (|PolymorphicMapType_10137_15867_3211#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@7) null (WandMaskField_15867 pm_f_9@@5))) o2_9@@24 f_24@@24) (= (select (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@7) o2_9@@24 f_24@@24) (select (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@24 f_24@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@24 f_24@@24))
))) (forall ((o2_9@@25 T@Ref) (f_24@@25 T@Field_15867_53) ) (!  (=> (select (|PolymorphicMapType_10137_15867_53#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@7) null (WandMaskField_15867 pm_f_9@@5))) o2_9@@25 f_24@@25) (= (select (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@7) o2_9@@25 f_24@@25) (select (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@25 f_24@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@25 f_24@@25))
))) (forall ((o2_9@@26 T@Ref) (f_24@@26 T@Field_15867_9662) ) (!  (=> (select (|PolymorphicMapType_10137_15867_9662#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@7) null (WandMaskField_15867 pm_f_9@@5))) o2_9@@26 f_24@@26) (= (select (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@7) o2_9@@26 f_24@@26) (select (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@26 f_24@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@26 f_24@@26))
))) (forall ((o2_9@@27 T@Ref) (f_24@@27 T@Field_15867_15868) ) (!  (=> (select (|PolymorphicMapType_10137_15867_15868#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@7) null (WandMaskField_15867 pm_f_9@@5))) o2_9@@27 f_24@@27) (= (select (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@7) o2_9@@27 f_24@@27) (select (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@27 f_24@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@27 f_24@@27))
))) (forall ((o2_9@@28 T@Ref) (f_24@@28 T@Field_15880_15885) ) (!  (=> (select (|PolymorphicMapType_10137_15867_31144#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@7) null (WandMaskField_15867 pm_f_9@@5))) o2_9@@28 f_24@@28) (= (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@7) o2_9@@28 f_24@@28) (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@28 f_24@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| ExhaleHeap@@5) o2_9@@28 f_24@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_15867_32309 pm_f_9@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9588) (ExhaleHeap@@6 T@PolymorphicMapType_9588) (Mask@@7 T@PolymorphicMapType_9609) (pm_f_9@@6 T@Field_5584_15868) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5584_15868 Mask@@7 null pm_f_9@@6) (IsWandField_5584_31952 pm_f_9@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_9@@29 T@Ref) (f_24@@29 T@Field_15820_3211) ) (!  (=> (select (|PolymorphicMapType_10137_5584_3211#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@8) null (WandMaskField_5584 pm_f_9@@6))) o2_9@@29 f_24@@29) (= (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@8) o2_9@@29 f_24@@29) (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@29 f_24@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@29 f_24@@29))
)) (forall ((o2_9@@30 T@Ref) (f_24@@30 T@Field_9648_53) ) (!  (=> (select (|PolymorphicMapType_10137_5584_53#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@8) null (WandMaskField_5584 pm_f_9@@6))) o2_9@@30 f_24@@30) (= (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@8) o2_9@@30 f_24@@30) (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@30 f_24@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@30 f_24@@30))
))) (forall ((o2_9@@31 T@Ref) (f_24@@31 T@Field_9661_9662) ) (!  (=> (select (|PolymorphicMapType_10137_5584_9662#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@8) null (WandMaskField_5584 pm_f_9@@6))) o2_9@@31 f_24@@31) (= (select (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@8) o2_9@@31 f_24@@31) (select (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@31 f_24@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@31 f_24@@31))
))) (forall ((o2_9@@32 T@Ref) (f_24@@32 T@Field_5584_15868) ) (!  (=> (select (|PolymorphicMapType_10137_5584_15868#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@8) null (WandMaskField_5584 pm_f_9@@6))) o2_9@@32 f_24@@32) (= (select (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@8) o2_9@@32 f_24@@32) (select (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@32 f_24@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@32 f_24@@32))
))) (forall ((o2_9@@33 T@Ref) (f_24@@33 T@Field_5584_15885) ) (!  (=> (select (|PolymorphicMapType_10137_5584_30096#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@8) null (WandMaskField_5584 pm_f_9@@6))) o2_9@@33 f_24@@33) (= (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@8) o2_9@@33 f_24@@33) (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@33 f_24@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@33 f_24@@33))
))) (forall ((o2_9@@34 T@Ref) (f_24@@34 T@Field_15867_3211) ) (!  (=> (select (|PolymorphicMapType_10137_15867_3211#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@8) null (WandMaskField_5584 pm_f_9@@6))) o2_9@@34 f_24@@34) (= (select (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@8) o2_9@@34 f_24@@34) (select (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@34 f_24@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@34 f_24@@34))
))) (forall ((o2_9@@35 T@Ref) (f_24@@35 T@Field_15867_53) ) (!  (=> (select (|PolymorphicMapType_10137_15867_53#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@8) null (WandMaskField_5584 pm_f_9@@6))) o2_9@@35 f_24@@35) (= (select (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@8) o2_9@@35 f_24@@35) (select (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@35 f_24@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@35 f_24@@35))
))) (forall ((o2_9@@36 T@Ref) (f_24@@36 T@Field_15867_9662) ) (!  (=> (select (|PolymorphicMapType_10137_15867_9662#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@8) null (WandMaskField_5584 pm_f_9@@6))) o2_9@@36 f_24@@36) (= (select (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@8) o2_9@@36 f_24@@36) (select (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@36 f_24@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@36 f_24@@36))
))) (forall ((o2_9@@37 T@Ref) (f_24@@37 T@Field_15867_15868) ) (!  (=> (select (|PolymorphicMapType_10137_15867_15868#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@8) null (WandMaskField_5584 pm_f_9@@6))) o2_9@@37 f_24@@37) (= (select (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@8) o2_9@@37 f_24@@37) (select (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@37 f_24@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@37 f_24@@37))
))) (forall ((o2_9@@38 T@Ref) (f_24@@38 T@Field_15880_15885) ) (!  (=> (select (|PolymorphicMapType_10137_15867_31144#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@8) null (WandMaskField_5584 pm_f_9@@6))) o2_9@@38 f_24@@38) (= (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@8) o2_9@@38 f_24@@38) (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@38 f_24@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| ExhaleHeap@@6) o2_9@@38 f_24@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_5584_31952 pm_f_9@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9588) (ExhaleHeap@@7 T@PolymorphicMapType_9588) (Mask@@8 T@PolymorphicMapType_9609) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@9) o_27 $allocated) (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| ExhaleHeap@@7) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| ExhaleHeap@@7) o_27 $allocated))
)))
(assert (forall ((p T@Field_15867_15868) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_15867_15867 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15867_15867 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_5584_15868) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9648_9648 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9648_9648 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_5584_3211 f_7)))
(assert  (not (IsWandField_5584_3211 f_7)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9588) (ExhaleHeap@@8 T@PolymorphicMapType_9588) (Mask@@9 T@PolymorphicMapType_9609) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9609) (o_2@@9 T@Ref) (f_4@@9 T@Field_15880_15885) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5587_39241 f_4@@9))) (not (IsWandField_5587_39257 f_4@@9))) (<= (select (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9609) (o_2@@10 T@Ref) (f_4@@10 T@Field_15867_9662) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5587_9662 f_4@@10))) (not (IsWandField_5587_9662 f_4@@10))) (<= (select (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9609) (o_2@@11 T@Ref) (f_4@@11 T@Field_15867_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5587_53 f_4@@11))) (not (IsWandField_5587_53 f_4@@11))) (<= (select (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9609) (o_2@@12 T@Ref) (f_4@@12 T@Field_15867_15868) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5587_5588 f_4@@12))) (not (IsWandField_15867_32309 f_4@@12))) (<= (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9609) (o_2@@13 T@Ref) (f_4@@13 T@Field_15867_3211) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5587_3211 f_4@@13))) (not (IsWandField_5587_3211 f_4@@13))) (<= (select (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9609) (o_2@@14 T@Ref) (f_4@@14 T@Field_5584_15885) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5584_38410 f_4@@14))) (not (IsWandField_5584_38426 f_4@@14))) (<= (select (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9609) (o_2@@15 T@Ref) (f_4@@15 T@Field_9661_9662) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5584_9662 f_4@@15))) (not (IsWandField_5584_9662 f_4@@15))) (<= (select (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9609) (o_2@@16 T@Ref) (f_4@@16 T@Field_9648_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5584_53 f_4@@16))) (not (IsWandField_5584_53 f_4@@16))) (<= (select (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9609) (o_2@@17 T@Ref) (f_4@@17 T@Field_5584_15868) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5584_28624 f_4@@17))) (not (IsWandField_5584_31952 f_4@@17))) (<= (select (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9609) (o_2@@18 T@Ref) (f_4@@18 T@Field_15820_3211) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5584_3211 f_4@@18))) (not (IsWandField_5584_3211 f_4@@18))) (<= (select (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9609) (o_2@@19 T@Ref) (f_4@@19 T@Field_15880_15885) ) (! (= (HasDirectPerm_15867_28379 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15867_28379 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9609) (o_2@@20 T@Ref) (f_4@@20 T@Field_15867_15868) ) (! (= (HasDirectPerm_15867_15868 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15867_15868 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9609) (o_2@@21 T@Ref) (f_4@@21 T@Field_15867_9662) ) (! (= (HasDirectPerm_15867_9662 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15867_9662 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9609) (o_2@@22 T@Ref) (f_4@@22 T@Field_15867_53) ) (! (= (HasDirectPerm_15867_53 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15867_53 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9609) (o_2@@23 T@Ref) (f_4@@23 T@Field_15867_3211) ) (! (= (HasDirectPerm_15867_3211 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15867_3211 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9609) (o_2@@24 T@Ref) (f_4@@24 T@Field_5584_15885) ) (! (= (HasDirectPerm_5584_27218 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5584_27218 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9609) (o_2@@25 T@Ref) (f_4@@25 T@Field_5584_15868) ) (! (= (HasDirectPerm_5584_15868 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5584_15868 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9609) (o_2@@26 T@Ref) (f_4@@26 T@Field_9661_9662) ) (! (= (HasDirectPerm_5584_9662 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5584_9662 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9609) (o_2@@27 T@Ref) (f_4@@27 T@Field_9648_53) ) (! (= (HasDirectPerm_5584_53 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5584_53 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9609) (o_2@@28 T@Ref) (f_4@@28 T@Field_15820_3211) ) (! (= (HasDirectPerm_5584_3211 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5584_3211 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9588) (ExhaleHeap@@9 T@PolymorphicMapType_9588) (Mask@@30 T@PolymorphicMapType_9609) (o_27@@0 T@Ref) (f_24@@39 T@Field_15880_15885) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_15867_28379 Mask@@30 o_27@@0 f_24@@39) (= (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@11) o_27@@0 f_24@@39) (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| ExhaleHeap@@9) o_27@@0 f_24@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| ExhaleHeap@@9) o_27@@0 f_24@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9588) (ExhaleHeap@@10 T@PolymorphicMapType_9588) (Mask@@31 T@PolymorphicMapType_9609) (o_27@@1 T@Ref) (f_24@@40 T@Field_15867_15868) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_15867_15868 Mask@@31 o_27@@1 f_24@@40) (= (select (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@12) o_27@@1 f_24@@40) (select (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| ExhaleHeap@@10) o_27@@1 f_24@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| ExhaleHeap@@10) o_27@@1 f_24@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9588) (ExhaleHeap@@11 T@PolymorphicMapType_9588) (Mask@@32 T@PolymorphicMapType_9609) (o_27@@2 T@Ref) (f_24@@41 T@Field_15867_9662) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_15867_9662 Mask@@32 o_27@@2 f_24@@41) (= (select (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@13) o_27@@2 f_24@@41) (select (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| ExhaleHeap@@11) o_27@@2 f_24@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| ExhaleHeap@@11) o_27@@2 f_24@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9588) (ExhaleHeap@@12 T@PolymorphicMapType_9588) (Mask@@33 T@PolymorphicMapType_9609) (o_27@@3 T@Ref) (f_24@@42 T@Field_15867_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_15867_53 Mask@@33 o_27@@3 f_24@@42) (= (select (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@14) o_27@@3 f_24@@42) (select (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| ExhaleHeap@@12) o_27@@3 f_24@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| ExhaleHeap@@12) o_27@@3 f_24@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9588) (ExhaleHeap@@13 T@PolymorphicMapType_9588) (Mask@@34 T@PolymorphicMapType_9609) (o_27@@4 T@Ref) (f_24@@43 T@Field_15867_3211) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_15867_3211 Mask@@34 o_27@@4 f_24@@43) (= (select (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@15) o_27@@4 f_24@@43) (select (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| ExhaleHeap@@13) o_27@@4 f_24@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| ExhaleHeap@@13) o_27@@4 f_24@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9588) (ExhaleHeap@@14 T@PolymorphicMapType_9588) (Mask@@35 T@PolymorphicMapType_9609) (o_27@@5 T@Ref) (f_24@@44 T@Field_5584_15885) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_5584_27218 Mask@@35 o_27@@5 f_24@@44) (= (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@16) o_27@@5 f_24@@44) (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| ExhaleHeap@@14) o_27@@5 f_24@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| ExhaleHeap@@14) o_27@@5 f_24@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9588) (ExhaleHeap@@15 T@PolymorphicMapType_9588) (Mask@@36 T@PolymorphicMapType_9609) (o_27@@6 T@Ref) (f_24@@45 T@Field_5584_15868) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_5584_15868 Mask@@36 o_27@@6 f_24@@45) (= (select (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@17) o_27@@6 f_24@@45) (select (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| ExhaleHeap@@15) o_27@@6 f_24@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| ExhaleHeap@@15) o_27@@6 f_24@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9588) (ExhaleHeap@@16 T@PolymorphicMapType_9588) (Mask@@37 T@PolymorphicMapType_9609) (o_27@@7 T@Ref) (f_24@@46 T@Field_9661_9662) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_5584_9662 Mask@@37 o_27@@7 f_24@@46) (= (select (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@18) o_27@@7 f_24@@46) (select (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| ExhaleHeap@@16) o_27@@7 f_24@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| ExhaleHeap@@16) o_27@@7 f_24@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9588) (ExhaleHeap@@17 T@PolymorphicMapType_9588) (Mask@@38 T@PolymorphicMapType_9609) (o_27@@8 T@Ref) (f_24@@47 T@Field_9648_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_5584_53 Mask@@38 o_27@@8 f_24@@47) (= (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@19) o_27@@8 f_24@@47) (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| ExhaleHeap@@17) o_27@@8 f_24@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| ExhaleHeap@@17) o_27@@8 f_24@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9588) (ExhaleHeap@@18 T@PolymorphicMapType_9588) (Mask@@39 T@PolymorphicMapType_9609) (o_27@@9 T@Ref) (f_24@@48 T@Field_15820_3211) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_5584_3211 Mask@@39 o_27@@9 f_24@@48) (= (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@20) o_27@@9 f_24@@48) (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| ExhaleHeap@@18) o_27@@9 f_24@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| ExhaleHeap@@18) o_27@@9 f_24@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_15880_15885) ) (! (= (select (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_15867_9662) ) (! (= (select (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_15867_53) ) (! (= (select (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_15867_15868) ) (! (= (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_15867_3211) ) (! (= (select (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_5584_15885) ) (! (= (select (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_9661_9662) ) (! (= (select (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_9648_53) ) (! (= (select (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_5584_15868) ) (! (= (select (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_15820_3211) ) (! (= (select (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9609) (SummandMask1 T@PolymorphicMapType_9609) (SummandMask2 T@PolymorphicMapType_9609) (o_2@@39 T@Ref) (f_4@@39 T@Field_15880_15885) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9609) (SummandMask1@@0 T@PolymorphicMapType_9609) (SummandMask2@@0 T@PolymorphicMapType_9609) (o_2@@40 T@Ref) (f_4@@40 T@Field_15867_9662) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9609) (SummandMask1@@1 T@PolymorphicMapType_9609) (SummandMask2@@1 T@PolymorphicMapType_9609) (o_2@@41 T@Ref) (f_4@@41 T@Field_15867_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9609) (SummandMask1@@2 T@PolymorphicMapType_9609) (SummandMask2@@2 T@PolymorphicMapType_9609) (o_2@@42 T@Ref) (f_4@@42 T@Field_15867_15868) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9609) (SummandMask1@@3 T@PolymorphicMapType_9609) (SummandMask2@@3 T@PolymorphicMapType_9609) (o_2@@43 T@Ref) (f_4@@43 T@Field_15867_3211) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9609) (SummandMask1@@4 T@PolymorphicMapType_9609) (SummandMask2@@4 T@PolymorphicMapType_9609) (o_2@@44 T@Ref) (f_4@@44 T@Field_5584_15885) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9609) (SummandMask1@@5 T@PolymorphicMapType_9609) (SummandMask2@@5 T@PolymorphicMapType_9609) (o_2@@45 T@Ref) (f_4@@45 T@Field_9661_9662) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9609) (SummandMask1@@6 T@PolymorphicMapType_9609) (SummandMask2@@6 T@PolymorphicMapType_9609) (o_2@@46 T@Ref) (f_4@@46 T@Field_9648_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9609) (SummandMask1@@7 T@PolymorphicMapType_9609) (SummandMask2@@7 T@PolymorphicMapType_9609) (o_2@@47 T@Ref) (f_4@@47 T@Field_5584_15868) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9609) (SummandMask1@@8 T@PolymorphicMapType_9609) (SummandMask2@@8 T@PolymorphicMapType_9609) (o_2@@48 T@Ref) (f_4@@48 T@Field_15820_3211) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_5643| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.237:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_5643| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_5643| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_5643| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_5643| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.252:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_5643| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_5643| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_5643| a@@6 x) y))
 :qid |stdinbpl.217:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_5643| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_5643| a@@7 b@@5) y@@0))
 :qid |stdinbpl.227:18|
 :skolemid |35|
 :pattern ( (|Set#Union_5643| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_5643| a@@8 b@@6) y@@1))
 :qid |stdinbpl.229:18|
 :skolemid |36|
 :pattern ( (|Set#Union_5643| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_5643| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.213:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_5643| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_5643| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.254:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_5643| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_5643| (|Set#Difference_5643| a@@11 b@@8)) (|Set#Card_5643| (|Set#Difference_5643| b@@8 a@@11))) (|Set#Card_5643| (|Set#Intersection_5643| a@@11 b@@8))) (|Set#Card_5643| (|Set#Union_5643| a@@11 b@@8))) (= (|Set#Card_5643| (|Set#Difference_5643| a@@11 b@@8)) (- (|Set#Card_5643| a@@11) (|Set#Card_5643| (|Set#Intersection_5643| a@@11 b@@8)))))
 :qid |stdinbpl.256:18|
 :skolemid |45|
 :pattern ( (|Set#Card_5643| (|Set#Difference_5643| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_5643| s))
 :qid |stdinbpl.199:18|
 :skolemid |22|
 :pattern ( (|Set#Card_5643| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_5643| a@@12 x@@1) x@@1)
 :qid |stdinbpl.215:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_5643| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_5643| (|Set#UnionOne_5643| a@@13 x@@2)) (|Set#Card_5643| a@@13)))
 :qid |stdinbpl.219:18|
 :skolemid |32|
 :pattern ( (|Set#Card_5643| (|Set#UnionOne_5643| a@@13 x@@2)))
)))
(assert (forall ((r_1@@3 T@Ref) ) (! (= (getPredWandId_5587_5588 (p2 r_1@@3)) 0)
 :qid |stdinbpl.405:15|
 :skolemid |84|
 :pattern ( (p2 r_1@@3))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_5643| (|Set#Singleton_5643| r@@0)) 1)
 :qid |stdinbpl.210:18|
 :skolemid |28|
 :pattern ( (|Set#Card_5643| (|Set#Singleton_5643| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_5643| r@@1) r@@1)
 :qid |stdinbpl.208:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_5643| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_5643| a@@14 (|Set#Union_5643| a@@14 b@@9)) (|Set#Union_5643| a@@14 b@@9))
 :qid |stdinbpl.242:18|
 :skolemid |39|
 :pattern ( (|Set#Union_5643| a@@14 (|Set#Union_5643| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_5643| a@@15 (|Set#Intersection_5643| a@@15 b@@10)) (|Set#Intersection_5643| a@@15 b@@10))
 :qid |stdinbpl.246:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_5643| a@@15 (|Set#Intersection_5643| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_5643| o@@3))
 :qid |stdinbpl.202:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_5643| o@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9588) (o_20 T@Ref) (f_31 T@Field_15880_15885) (v T@PolymorphicMapType_10137) ) (! (succHeap Heap@@21 (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@21) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@21) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@21) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@21) (store (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@21) o_20 f_31 v) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@21) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@21) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@21) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@21) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@21) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@21) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@21) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@21) (store (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@21) o_20 f_31 v) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@21) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@21) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@21) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@21) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9588) (o_20@@0 T@Ref) (f_31@@0 T@Field_15867_15868) (v@@0 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@22) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@22) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@22) (store (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@22) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@22) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@22) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@22) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@22) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@22) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@22) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@22) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@22) (store (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@22) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@22) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@22) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@22) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@22) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@22) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9588) (o_20@@1 T@Ref) (f_31@@1 T@Field_15867_3211) (v@@1 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@23) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@23) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@23) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@23) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@23) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@23) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@23) (store (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@23) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@23) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@23) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@23) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@23) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@23) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@23) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@23) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@23) (store (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@23) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@23) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9588) (o_20@@2 T@Ref) (f_31@@2 T@Field_15867_9662) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@24) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@24) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@24) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@24) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@24) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@24) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@24) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@24) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@24) (store (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@24) o_20@@2 f_31@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@24) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@24) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@24) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@24) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@24) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@24) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@24) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@24) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@24) (store (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@24) o_20@@2 f_31@@2 v@@2)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9588) (o_20@@3 T@Ref) (f_31@@3 T@Field_15867_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@25) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@25) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@25) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@25) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@25) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@25) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@25) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@25) (store (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@25) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@25) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@25) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@25) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@25) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@25) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@25) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@25) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@25) (store (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@25) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9588) (o_20@@4 T@Ref) (f_31@@4 T@Field_5584_15885) (v@@4 T@PolymorphicMapType_10137) ) (! (succHeap Heap@@26 (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@26) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@26) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@26) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@26) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@26) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@26) (store (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@26) o_20@@4 f_31@@4 v@@4) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@26) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@26) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@26) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@26) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@26) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@26) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@26) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@26) (store (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@26) o_20@@4 f_31@@4 v@@4) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@26) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@26) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9588) (o_20@@5 T@Ref) (f_31@@5 T@Field_5584_15868) (v@@5 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@27) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@27) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@27) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@27) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@27) (store (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@27) o_20@@5 f_31@@5 v@@5) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@27) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@27) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@27) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@27) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@27) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@27) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@27) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@27) (store (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@27) o_20@@5 f_31@@5 v@@5) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@27) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@27) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@27) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9588) (o_20@@6 T@Ref) (f_31@@6 T@Field_15820_3211) (v@@6 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@28) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@28) (store (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@28) o_20@@6 f_31@@6 v@@6) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@28) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@28) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@28) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@28) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@28) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@28) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@28) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@28) (store (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@28) o_20@@6 f_31@@6 v@@6) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@28) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@28) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@28) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@28) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@28) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@28) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9588) (o_20@@7 T@Ref) (f_31@@7 T@Field_9661_9662) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@29) (store (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@29) o_20@@7 f_31@@7 v@@7) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@29) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@29) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@29) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@29) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@29) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@29) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@29) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@29) (store (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@29) o_20@@7 f_31@@7 v@@7) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@29) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@29) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@29) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@29) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@29) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@29) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@29) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9588) (o_20@@8 T@Ref) (f_31@@8 T@Field_9648_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_9588 (store (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@30) o_20@@8 f_31@@8 v@@8) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@30) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@30) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@30) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@30) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@30) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@30) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@30) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@30) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9588 (store (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@30) o_20@@8 f_31@@8 v@@8) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@30) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@30) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@30) (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@30) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@30) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@30) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@30) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@30) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@30)))
)))
(assert (forall ((r_1@@4 T@Ref) ) (! (= (PredicateMaskField_5587 (p2 r_1@@4)) (|p2#sm| r_1@@4))
 :qid |stdinbpl.397:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_5587 (p2 r_1@@4)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.286:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.287:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_5643| s@@0) 0) (= s@@0 |Set#Empty_5643|)) (=> (not (= (|Set#Card_5643| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.205:33|
 :skolemid |24|
))))
 :qid |stdinbpl.203:18|
 :skolemid |25|
 :pattern ( (|Set#Card_5643| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_5643| (|Set#UnionOne_5643| a@@18 x@@4)) (+ (|Set#Card_5643| a@@18) 1)))
 :qid |stdinbpl.221:18|
 :skolemid |33|
 :pattern ( (|Set#Card_5643| (|Set#UnionOne_5643| a@@18 x@@4)))
)))
(assert (forall ((o_20@@9 T@Ref) (f_17 T@Field_9661_9662) (Heap@@31 T@PolymorphicMapType_9588) ) (!  (=> (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@31) o_20@@9 $allocated) (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@31) (select (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@31) o_20@@9 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@31) o_20@@9 f_17))
)))
(assert (forall ((p@@2 T@Field_15867_15868) (v_1@@1 T@FrameType) (q T@Field_15867_15868) (w@@1 T@FrameType) (r@@2 T@Field_15867_15868) (u T@FrameType) ) (!  (=> (and (InsidePredicate_15867_15867 p@@2 v_1@@1 q w@@1) (InsidePredicate_15867_15867 q w@@1 r@@2 u)) (InsidePredicate_15867_15867 p@@2 v_1@@1 r@@2 u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15867_15867 p@@2 v_1@@1 q w@@1) (InsidePredicate_15867_15867 q w@@1 r@@2 u))
)))
(assert (forall ((p@@3 T@Field_15867_15868) (v_1@@2 T@FrameType) (q@@0 T@Field_15867_15868) (w@@2 T@FrameType) (r@@3 T@Field_5584_15868) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_15867_15867 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_15867_9648 q@@0 w@@2 r@@3 u@@0)) (InsidePredicate_15867_9648 p@@3 v_1@@2 r@@3 u@@0))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15867_15867 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_15867_9648 q@@0 w@@2 r@@3 u@@0))
)))
(assert (forall ((p@@4 T@Field_15867_15868) (v_1@@3 T@FrameType) (q@@1 T@Field_5584_15868) (w@@3 T@FrameType) (r@@4 T@Field_15867_15868) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_15867_9648 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_9648_15867 q@@1 w@@3 r@@4 u@@1)) (InsidePredicate_15867_15867 p@@4 v_1@@3 r@@4 u@@1))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15867_9648 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_9648_15867 q@@1 w@@3 r@@4 u@@1))
)))
(assert (forall ((p@@5 T@Field_15867_15868) (v_1@@4 T@FrameType) (q@@2 T@Field_5584_15868) (w@@4 T@FrameType) (r@@5 T@Field_5584_15868) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_15867_9648 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_9648_9648 q@@2 w@@4 r@@5 u@@2)) (InsidePredicate_15867_9648 p@@5 v_1@@4 r@@5 u@@2))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15867_9648 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_9648_9648 q@@2 w@@4 r@@5 u@@2))
)))
(assert (forall ((p@@6 T@Field_5584_15868) (v_1@@5 T@FrameType) (q@@3 T@Field_15867_15868) (w@@5 T@FrameType) (r@@6 T@Field_15867_15868) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_9648_15867 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_15867_15867 q@@3 w@@5 r@@6 u@@3)) (InsidePredicate_9648_15867 p@@6 v_1@@5 r@@6 u@@3))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9648_15867 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_15867_15867 q@@3 w@@5 r@@6 u@@3))
)))
(assert (forall ((p@@7 T@Field_5584_15868) (v_1@@6 T@FrameType) (q@@4 T@Field_15867_15868) (w@@6 T@FrameType) (r@@7 T@Field_5584_15868) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_9648_15867 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_15867_9648 q@@4 w@@6 r@@7 u@@4)) (InsidePredicate_9648_9648 p@@7 v_1@@6 r@@7 u@@4))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9648_15867 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_15867_9648 q@@4 w@@6 r@@7 u@@4))
)))
(assert (forall ((p@@8 T@Field_5584_15868) (v_1@@7 T@FrameType) (q@@5 T@Field_5584_15868) (w@@7 T@FrameType) (r@@8 T@Field_15867_15868) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_9648_9648 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_9648_15867 q@@5 w@@7 r@@8 u@@5)) (InsidePredicate_9648_15867 p@@8 v_1@@7 r@@8 u@@5))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9648_9648 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_9648_15867 q@@5 w@@7 r@@8 u@@5))
)))
(assert (forall ((p@@9 T@Field_5584_15868) (v_1@@8 T@FrameType) (q@@6 T@Field_5584_15868) (w@@8 T@FrameType) (r@@9 T@Field_5584_15868) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_9648_9648 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_9648_9648 q@@6 w@@8 r@@9 u@@6)) (InsidePredicate_9648_9648 p@@9 v_1@@8 r@@9 u@@6))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9648_9648 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_9648_9648 q@@6 w@@8 r@@9 u@@6))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.292:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_5643| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.225:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_5643| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_9609)
(declare-fun Mask@1 () T@PolymorphicMapType_9609)
(declare-fun r_1_1 () T@Ref)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_9609)
(declare-fun Heap@@32 () T@PolymorphicMapType_9588)
(declare-fun x2 () T@Ref)
(declare-fun x1_2 () T@Ref)
(declare-fun FrameFragment_3211 (Int) T@FrameType)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_9609)
(declare-fun r_28 () T@Ref)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_9609)
(declare-fun Heap@0 () T@PolymorphicMapType_9588)
(declare-fun Mask@0 () T@PolymorphicMapType_9609)
(set-info :boogie-vc-id m3)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon11_correct true))
(let ((anon10_correct  (=> (and (= UnfoldingMask@0 (PolymorphicMapType_9609 (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| Mask@1) (store (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| Mask@1) null (p2 r_1_1) (- (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| Mask@1) null (p2 r_1_1)) FullPerm)) (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| Mask@1) (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| Mask@1) (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| Mask@1) (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| Mask@1) (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| Mask@1) (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| Mask@1) (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| Mask@1) (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| Mask@1))) (not (= r_1_1 null))) (=> (and (and (= UnfoldingMask@1 (PolymorphicMapType_9609 (store (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| UnfoldingMask@0) r_1_1 f_7 (+ (select (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| UnfoldingMask@0) r_1_1 f_7) FullPerm)) (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| UnfoldingMask@0) (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| UnfoldingMask@0) (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| UnfoldingMask@0) (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| UnfoldingMask@0) (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| UnfoldingMask@0) (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| UnfoldingMask@0) (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| UnfoldingMask@0) (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| UnfoldingMask@0) (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| UnfoldingMask@0))) (state Heap@@32 UnfoldingMask@1)) (and (= (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@32) r_1_1 f_7) 5) (state Heap@@32 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (= (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@32) r_1_1 f_7) 5)) (=> (= (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@32) r_1_1 f_7) 5) (=> (= (ControlFlow 0 12) 10) anon11_correct)))))))
(let ((anon18_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 16) 12)) anon10_correct)))
(let ((anon18_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (<= FullPerm (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| Mask@1) null (p2 r_1_1)))) (=> (<= FullPerm (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| Mask@1) null (p2 r_1_1))) (=> (= (ControlFlow 0 14) 12) anon10_correct))))))
(let ((anon17_Then_correct  (=> (select (|Set#UnionOne_5643| (|Set#Singleton_5643| x2) x1_2) r_1_1) (=> (and (|p2#trigger_5587| Heap@@32 (p2 r_1_1)) (= (select (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@32) null (p2 r_1_1)) (FrameFragment_3211 (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@32) r_1_1 f_7)))) (and (=> (= (ControlFlow 0 17) 14) anon18_Then_correct) (=> (= (ControlFlow 0 17) 16) anon18_Else_correct))))))
(let ((anon17_Else_correct  (=> (and (not (select (|Set#UnionOne_5643| (|Set#Singleton_5643| x2) x1_2) r_1_1)) (= (ControlFlow 0 11) 10)) anon11_correct)))
(let ((anon5_correct true))
(let ((anon4_correct  (=> (and (= UnfoldingMask@2 (PolymorphicMapType_9609 (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| Mask@1) (store (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| Mask@1) null (p2 r_28) (- (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| Mask@1) null (p2 r_28)) FullPerm)) (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| Mask@1) (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| Mask@1) (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| Mask@1) (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| Mask@1) (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| Mask@1) (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| Mask@1) (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| Mask@1) (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| Mask@1))) (not (= r_28 null))) (=> (and (and (= UnfoldingMask@3 (PolymorphicMapType_9609 (store (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| UnfoldingMask@2) r_28 f_7 (+ (select (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| UnfoldingMask@2) r_28 f_7) FullPerm)) (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| UnfoldingMask@2) (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| UnfoldingMask@2) (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| UnfoldingMask@2) (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| UnfoldingMask@2) (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| UnfoldingMask@2) (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| UnfoldingMask@2) (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| UnfoldingMask@2) (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| UnfoldingMask@2) (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| UnfoldingMask@2))) (state Heap@@32 UnfoldingMask@3)) (and (= (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@32) r_28 f_7) 5) (state Heap@@32 UnfoldingMask@3))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_5584_3211 UnfoldingMask@3 r_28 f_7)) (=> (HasDirectPerm_5584_3211 UnfoldingMask@3 r_28 f_7) (=> (= Heap@0 (PolymorphicMapType_9588 (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@32) (|PolymorphicMapType_9588_5294_5295#PolymorphicMapType_9588| Heap@@32) (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@32) (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@32) (store (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@32) null (|p2#sm| r_28) (PolymorphicMapType_10137 (store (|PolymorphicMapType_10137_5584_3211#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@32) null (|p2#sm| r_28))) r_28 f_7 true) (|PolymorphicMapType_10137_5584_53#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@32) null (|p2#sm| r_28))) (|PolymorphicMapType_10137_5584_9662#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@32) null (|p2#sm| r_28))) (|PolymorphicMapType_10137_5584_15868#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@32) null (|p2#sm| r_28))) (|PolymorphicMapType_10137_5584_30096#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@32) null (|p2#sm| r_28))) (|PolymorphicMapType_10137_15867_3211#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@32) null (|p2#sm| r_28))) (|PolymorphicMapType_10137_15867_53#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@32) null (|p2#sm| r_28))) (|PolymorphicMapType_10137_15867_9662#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@32) null (|p2#sm| r_28))) (|PolymorphicMapType_10137_15867_15868#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@32) null (|p2#sm| r_28))) (|PolymorphicMapType_10137_15867_31144#PolymorphicMapType_10137| (select (|PolymorphicMapType_9588_5591_19050#PolymorphicMapType_9588| Heap@@32) null (|p2#sm| r_28))))) (|PolymorphicMapType_9588_5584_15868#PolymorphicMapType_9588| Heap@@32) (|PolymorphicMapType_9588_5584_27260#PolymorphicMapType_9588| Heap@@32) (|PolymorphicMapType_9588_15867_3211#PolymorphicMapType_9588| Heap@@32) (|PolymorphicMapType_9588_15867_53#PolymorphicMapType_9588| Heap@@32) (|PolymorphicMapType_9588_15867_9662#PolymorphicMapType_9588| Heap@@32))) (=> (and (state Heap@0 Mask@1) (= (ControlFlow 0 4) 2)) anon5_correct))))))))
(let ((anon15_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 8) 4)) anon4_correct)))
(let ((anon15_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (<= FullPerm (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| Mask@1) null (p2 r_28)))) (=> (<= FullPerm (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| Mask@1) null (p2 r_28))) (=> (= (ControlFlow 0 6) 4) anon4_correct))))))
(let ((anon14_Then_correct  (=> (select (|Set#UnionOne_5643| (|Set#Singleton_5643| x2) x1_2) r_28) (=> (and (|p2#trigger_5587| Heap@@32 (p2 r_28)) (= (select (|PolymorphicMapType_9588_5587_5588#PolymorphicMapType_9588| Heap@@32) null (p2 r_28)) (FrameFragment_3211 (select (|PolymorphicMapType_9588_5584_3211#PolymorphicMapType_9588| Heap@@32) r_28 f_7)))) (and (=> (= (ControlFlow 0 9) 6) anon15_Then_correct) (=> (= (ControlFlow 0 9) 8) anon15_Else_correct))))))
(let ((anon14_Else_correct  (=> (and (not (select (|Set#UnionOne_5643| (|Set#Singleton_5643| x2) x1_2) r_28)) (= (ControlFlow 0 3) 2)) anon5_correct)))
(let ((anon16_Else_correct true))
(let ((anon0_correct  (=> (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (=> (and (and (and (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@32) x1_2 $allocated) (select (|PolymorphicMapType_9588_5291_53#PolymorphicMapType_9588| Heap@@32) x2 $allocated)) (and (= Mask@0 (PolymorphicMapType_9609 (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| ZeroMask) (store (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| ZeroMask) null (p2 x1_2) (+ (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| ZeroMask) null (p2 x1_2)) FullPerm)) (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| ZeroMask) (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| ZeroMask) (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| ZeroMask) (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| ZeroMask) (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| ZeroMask) (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| ZeroMask) (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| ZeroMask) (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| ZeroMask))) (state Heap@@32 Mask@0))) (and (and (state Heap@@32 Mask@0) (= Mask@1 (PolymorphicMapType_9609 (|PolymorphicMapType_9609_5584_3211#PolymorphicMapType_9609| Mask@0) (store (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| Mask@0) null (p2 x2) (+ (select (|PolymorphicMapType_9609_5587_5588#PolymorphicMapType_9609| Mask@0) null (p2 x2)) FullPerm)) (|PolymorphicMapType_9609_5584_5588#PolymorphicMapType_9609| Mask@0) (|PolymorphicMapType_9609_5584_53#PolymorphicMapType_9609| Mask@0) (|PolymorphicMapType_9609_5584_9662#PolymorphicMapType_9609| Mask@0) (|PolymorphicMapType_9609_5584_36538#PolymorphicMapType_9609| Mask@0) (|PolymorphicMapType_9609_5587_3211#PolymorphicMapType_9609| Mask@0) (|PolymorphicMapType_9609_5587_53#PolymorphicMapType_9609| Mask@0) (|PolymorphicMapType_9609_5587_9662#PolymorphicMapType_9609| Mask@0) (|PolymorphicMapType_9609_5587_36949#PolymorphicMapType_9609| Mask@0)))) (and (state Heap@@32 Mask@1) (state Heap@@32 Mask@1)))) (and (and (and (and (=> (= (ControlFlow 0 18) 1) anon16_Else_correct) (=> (= (ControlFlow 0 18) 17) anon17_Then_correct)) (=> (= (ControlFlow 0 18) 11) anon17_Else_correct)) (=> (= (ControlFlow 0 18) 9) anon14_Then_correct)) (=> (= (ControlFlow 0 18) 3) anon14_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19) 18) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
