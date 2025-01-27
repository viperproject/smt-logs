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
(declare-sort T@Field_28987_53 0)
(declare-sort T@Field_29000_29001 0)
(declare-sort T@Field_35771_35772 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_35254_35256 0)
(declare-sort T@Field_40271_40276 0)
(declare-sort T@Field_16582_16718 0)
(declare-sort T@Field_16582_40276 0)
(declare-sort T@Field_16717_16583 0)
(declare-sort T@Field_16717_44510 0)
(declare-sort T@Field_16717_53 0)
(declare-datatypes ((T@PolymorphicMapType_28948 0)) (((PolymorphicMapType_28948 (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| (Array T@Ref T@Field_35771_35772 Real)) (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| (Array T@Ref T@Field_35254_35256 Real)) (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| (Array T@Ref T@Field_29000_29001 Real)) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| (Array T@Ref T@Field_16717_44510 Real)) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| (Array T@Ref T@Field_16717_16583 Real)) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| (Array T@Ref T@Field_16717_53 Real)) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| (Array T@Ref T@Field_40271_40276 Real)) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| (Array T@Ref T@Field_16582_16718 Real)) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| (Array T@Ref T@Field_28987_53 Real)) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| (Array T@Ref T@Field_16582_40276 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_29476 0)) (((PolymorphicMapType_29476 (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| (Array T@Ref T@Field_35254_35256 Bool)) (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| (Array T@Ref T@Field_29000_29001 Bool)) (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| (Array T@Ref T@Field_28987_53 Bool)) (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| (Array T@Ref T@Field_16582_16718 Bool)) (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| (Array T@Ref T@Field_16582_40276 Bool)) (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| (Array T@Ref T@Field_16717_44510 Bool)) (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| (Array T@Ref T@Field_16717_16583 Bool)) (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| (Array T@Ref T@Field_16717_53 Bool)) (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| (Array T@Ref T@Field_35771_35772 Bool)) (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| (Array T@Ref T@Field_40271_40276 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_28927 0)) (((PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| (Array T@Ref T@Field_28987_53 Bool)) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| (Array T@Ref T@Field_29000_29001 T@Ref)) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| (Array T@Ref T@Field_35771_35772 T@FrameType)) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| (Array T@Ref T@Field_35254_35256 (Array T@Ref Bool))) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| (Array T@Ref T@Field_40271_40276 T@PolymorphicMapType_29476)) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| (Array T@Ref T@Field_16582_16718 T@FrameType)) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| (Array T@Ref T@Field_16582_40276 T@PolymorphicMapType_29476)) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| (Array T@Ref T@Field_16717_16583 T@Ref)) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| (Array T@Ref T@Field_16717_44510 (Array T@Ref Bool))) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| (Array T@Ref T@Field_16717_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_28987_53)
(declare-fun parent () T@Field_29000_29001)
(declare-fun nodes_1 () T@Field_35254_35256)
(declare-fun succHeap (T@PolymorphicMapType_28927 T@PolymorphicMapType_28927) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_28927 T@PolymorphicMapType_28927) Bool)
(declare-fun state (T@PolymorphicMapType_28927 T@PolymorphicMapType_28948) Bool)
(declare-fun allNodes (T@PolymorphicMapType_28927 T@Ref) (Array T@Ref Bool))
(declare-fun |allNodes#triggerStateless| (T@Ref) (Array T@Ref Bool))
(declare-fun |inv#trigger_16717| (T@PolymorphicMapType_28927 T@Field_35771_35772) Bool)
(declare-fun inv (T@Ref) T@Field_35771_35772)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_28948) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_29476)
(declare-fun |find'| (T@PolymorphicMapType_28927 T@Ref T@Ref) T@Ref)
(declare-fun dummyFunction_16629 (T@Ref) Bool)
(declare-fun |find#triggerStateless| (T@Ref T@Ref) T@Ref)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun IsPredicateField_16717_16718 (T@Field_35771_35772) Bool)
(declare-fun |allNodes'| (T@PolymorphicMapType_28927 T@Ref) (Array T@Ref Bool))
(declare-fun dummyFunction_41503 ((Array T@Ref Bool)) Bool)
(declare-fun |inv#everUsed_16717| (T@Field_35771_35772) Bool)
(declare-fun |Set#Union_16660| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_16761| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_16761| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_16761| ((Array T@Ref Bool)) Int)
(declare-fun |inv#condqp1| (T@PolymorphicMapType_28927 T@Ref) Int)
(declare-fun |sk_inv#condqp1| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_28927 T@PolymorphicMapType_28927 T@PolymorphicMapType_28948) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_16717 (T@Field_35771_35772) T@Field_40271_40276)
(declare-fun HasDirectPerm_16717_16718 (T@PolymorphicMapType_28948 T@Ref T@Field_35771_35772) Bool)
(declare-fun IsPredicateField_16582_101797 (T@Field_16582_16718) Bool)
(declare-fun PredicateMaskField_16582 (T@Field_16582_16718) T@Field_16582_40276)
(declare-fun HasDirectPerm_16582_16718 (T@PolymorphicMapType_28948 T@Ref T@Field_16582_16718) Bool)
(declare-fun IsWandField_16717_105500 (T@Field_35771_35772) Bool)
(declare-fun WandMaskField_16717 (T@Field_35771_35772) T@Field_40271_40276)
(declare-fun IsWandField_16582_105143 (T@Field_16582_16718) Bool)
(declare-fun WandMaskField_16582 (T@Field_16582_16718) T@Field_16582_40276)
(declare-fun |inv#sm| (T@Ref) T@Field_40271_40276)
(declare-fun |find#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_28927)
(declare-fun ZeroMask () T@PolymorphicMapType_28948)
(declare-fun InsidePredicate_35771_35771 (T@Field_35771_35772 T@FrameType T@Field_35771_35772 T@FrameType) Bool)
(declare-fun InsidePredicate_28987_28987 (T@Field_16582_16718 T@FrameType T@Field_16582_16718 T@FrameType) Bool)
(declare-fun IsPredicateField_16582_16583 (T@Field_29000_29001) Bool)
(declare-fun IsWandField_16582_16583 (T@Field_29000_29001) Bool)
(declare-fun IsPredicateField_16585_35280 (T@Field_35254_35256) Bool)
(declare-fun IsWandField_16585_35307 (T@Field_35254_35256) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_16585_112470 (T@Field_16582_40276) Bool)
(declare-fun IsWandField_16585_112486 (T@Field_16582_40276) Bool)
(declare-fun IsPredicateField_16585_53 (T@Field_28987_53) Bool)
(declare-fun IsWandField_16585_53 (T@Field_28987_53) Bool)
(declare-fun IsPredicateField_16717_111662 (T@Field_40271_40276) Bool)
(declare-fun IsWandField_16717_111678 (T@Field_40271_40276) Bool)
(declare-fun IsPredicateField_16717_53 (T@Field_16717_53) Bool)
(declare-fun IsWandField_16717_53 (T@Field_16717_53) Bool)
(declare-fun IsPredicateField_16717_16583 (T@Field_16717_16583) Bool)
(declare-fun IsWandField_16717_16583 (T@Field_16717_16583) Bool)
(declare-fun IsPredicateField_16717_111153 (T@Field_16717_44510) Bool)
(declare-fun IsWandField_16717_111169 (T@Field_16717_44510) Bool)
(declare-fun |Set#Equal_16660| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun HasDirectPerm_16717_101552 (T@PolymorphicMapType_28948 T@Ref T@Field_40271_40276) Bool)
(declare-fun HasDirectPerm_16717_53 (T@PolymorphicMapType_28948 T@Ref T@Field_16717_53) Bool)
(declare-fun HasDirectPerm_16717_100895 (T@PolymorphicMapType_28948 T@Ref T@Field_16717_44510) Bool)
(declare-fun HasDirectPerm_16717_16583 (T@PolymorphicMapType_28948 T@Ref T@Field_16717_16583) Bool)
(declare-fun HasDirectPerm_16582_100386 (T@PolymorphicMapType_28948 T@Ref T@Field_16582_40276) Bool)
(declare-fun HasDirectPerm_16582_53 (T@PolymorphicMapType_28948 T@Ref T@Field_28987_53) Bool)
(declare-fun HasDirectPerm_16585_44510 (T@PolymorphicMapType_28948 T@Ref T@Field_35254_35256) Bool)
(declare-fun HasDirectPerm_16582_16583 (T@PolymorphicMapType_28948 T@Ref T@Field_29000_29001) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun find (T@PolymorphicMapType_28927 T@Ref T@Ref) T@Ref)
(declare-fun sumMask (T@PolymorphicMapType_28948 T@PolymorphicMapType_28948 T@PolymorphicMapType_28948) Bool)
(declare-fun |Set#Difference_16761| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_16761| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |find#frame| (T@FrameType T@Ref T@Ref) T@Ref)
(declare-fun |allNodes#frame| (T@FrameType T@Ref) (Array T@Ref Bool))
(declare-fun getPredWandId_16717_16718 (T@Field_35771_35772) Int)
(declare-fun |Set#Empty_16761| () (Array T@Ref Bool))
(declare-fun InsidePredicate_35771_28987 (T@Field_35771_35772 T@FrameType T@Field_16582_16718 T@FrameType) Bool)
(declare-fun InsidePredicate_28987_35771 (T@Field_16582_16718 T@FrameType T@Field_35771_35772 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_28927) (Heap1 T@PolymorphicMapType_28927) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_28927) (Mask T@PolymorphicMapType_28948) (this T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 1)) (= (allNodes Heap this) (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap) this nodes_1)))
 :qid |stdinbpl.673:15|
 :skolemid |99|
 :pattern ( (state Heap Mask) (allNodes Heap this))
 :pattern ( (state Heap Mask) (|allNodes#triggerStateless| this) (|inv#trigger_16717| Heap (inv this)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_28927) (Mask@@0 T@PolymorphicMapType_28948) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_28927) (Heap1@@0 T@PolymorphicMapType_28927) (Heap2 T@PolymorphicMapType_28927) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_40271_40276) ) (!  (not (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_35771_35772) ) (!  (not (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_16717_53) ) (!  (not (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_16717_16583) ) (!  (not (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_16717_44510) ) (!  (not (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_16582_40276) ) (!  (not (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_16582_16718) ) (!  (not (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_28987_53) ) (!  (not (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_29000_29001) ) (!  (not (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_35254_35256) ) (!  (not (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_28927) (struct T@Ref) (this@@0 T@Ref) ) (! (dummyFunction_16629 (|find#triggerStateless| struct this@@0))
 :qid |stdinbpl.438:15|
 :skolemid |83|
 :pattern ( (|find'| Heap@@1 struct this@@0))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.322:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((this@@1 T@Ref) ) (! (IsPredicateField_16717_16718 (inv this@@1))
 :qid |stdinbpl.808:15|
 :skolemid |111|
 :pattern ( (inv this@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_28927) (this@@2 T@Ref) ) (! (dummyFunction_41503 (|allNodes#triggerStateless| this@@2))
 :qid |stdinbpl.667:15|
 :skolemid |98|
 :pattern ( (|allNodes'| Heap@@2 this@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_28927) (this@@3 T@Ref) ) (! (|inv#everUsed_16717| (inv this@@3))
 :qid |stdinbpl.827:15|
 :skolemid |115|
 :pattern ( (|inv#trigger_16717| Heap@@3 (inv this@@3)))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_16660| (|Set#Union_16660| a@@0 b@@0) b@@0) (|Set#Union_16660| a@@0 b@@0))
 :qid |stdinbpl.274:18|
 :skolemid |38|
 :pattern ( (|Set#Union_16660| (|Set#Union_16660| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_16761| (|Set#Intersection_16761| a@@1 b@@1) b@@1) (|Set#Intersection_16761| a@@1 b@@1))
 :qid |stdinbpl.278:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_16761| (|Set#Intersection_16761| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_16761| r) o) (= r o))
 :qid |stdinbpl.243:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_16761| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_16761| (|Set#Union_16660| a@@2 b@@2)) (|Set#Card_16761| (|Set#Intersection_16761| a@@2 b@@2))) (+ (|Set#Card_16761| a@@2) (|Set#Card_16761| b@@2)))
 :qid |stdinbpl.282:18|
 :skolemid |42|
 :pattern ( (|Set#Card_16761| (|Set#Union_16660| a@@2 b@@2)))
 :pattern ( (|Set#Card_16761| (|Set#Intersection_16761| a@@2 b@@2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_28927) (this@@4 T@Ref) ) (!  (and (= (allNodes Heap@@4 this@@4) (|allNodes'| Heap@@4 this@@4)) (dummyFunction_41503 (|allNodes#triggerStateless| this@@4)))
 :qid |stdinbpl.663:15|
 :skolemid |97|
 :pattern ( (allNodes Heap@@4 this@@4))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_28927) (Heap1Heap T@PolymorphicMapType_28927) (this@@5 T@Ref) ) (!  (=> (and (=  (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap2Heap) this@@5 nodes_1) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@5) (|inv#condqp1| Heap1Heap this@@5))) (< NoPerm FullPerm))  (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap1Heap) this@@5 nodes_1) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@5) (|inv#condqp1| Heap1Heap this@@5))) (< NoPerm FullPerm))) (=> (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap2Heap) this@@5 nodes_1) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@5) (|inv#condqp1| Heap1Heap this@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap2Heap) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@5) (|inv#condqp1| Heap1Heap this@@5)) parent) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap1Heap) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@5) (|inv#condqp1| Heap1Heap this@@5)) parent)))) (= (|inv#condqp1| Heap2Heap this@@5) (|inv#condqp1| Heap1Heap this@@5)))
 :qid |stdinbpl.838:15|
 :skolemid |116|
 :pattern ( (|inv#condqp1| Heap2Heap this@@5) (|inv#condqp1| Heap1Heap this@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.325:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_28927) (ExhaleHeap T@PolymorphicMapType_28927) (Mask@@1 T@PolymorphicMapType_28948) (pm_f_8 T@Field_35771_35772) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_16717_16718 Mask@@1 null pm_f_8) (IsPredicateField_16717_16718 pm_f_8)) (= (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@5) null (PredicateMaskField_16717 pm_f_8)) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap) null (PredicateMaskField_16717 pm_f_8)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (IsPredicateField_16717_16718 pm_f_8) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap) null (PredicateMaskField_16717 pm_f_8)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_28927) (ExhaleHeap@@0 T@PolymorphicMapType_28927) (Mask@@2 T@PolymorphicMapType_28948) (pm_f_8@@0 T@Field_16582_16718) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_16582_16718 Mask@@2 null pm_f_8@@0) (IsPredicateField_16582_101797 pm_f_8@@0)) (= (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@6) null (PredicateMaskField_16582 pm_f_8@@0)) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@0) null (PredicateMaskField_16582 pm_f_8@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (IsPredicateField_16582_101797 pm_f_8@@0) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@0) null (PredicateMaskField_16582 pm_f_8@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_28927) (ExhaleHeap@@1 T@PolymorphicMapType_28927) (Mask@@3 T@PolymorphicMapType_28948) (pm_f_8@@1 T@Field_35771_35772) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_16717_16718 Mask@@3 null pm_f_8@@1) (IsWandField_16717_105500 pm_f_8@@1)) (= (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@7) null (WandMaskField_16717 pm_f_8@@1)) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@1) null (WandMaskField_16717 pm_f_8@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (IsWandField_16717_105500 pm_f_8@@1) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@1) null (WandMaskField_16717 pm_f_8@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_28927) (ExhaleHeap@@2 T@PolymorphicMapType_28927) (Mask@@4 T@PolymorphicMapType_28948) (pm_f_8@@2 T@Field_16582_16718) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_16582_16718 Mask@@4 null pm_f_8@@2) (IsWandField_16582_105143 pm_f_8@@2)) (= (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@8) null (WandMaskField_16582 pm_f_8@@2)) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@2) null (WandMaskField_16582 pm_f_8@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (IsWandField_16582_105143 pm_f_8@@2) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@2) null (WandMaskField_16582 pm_f_8@@2)))
)))
(assert (forall ((this@@6 T@Ref) (this2 T@Ref) ) (!  (=> (= (inv this@@6) (inv this2)) (= this@@6 this2))
 :qid |stdinbpl.818:15|
 :skolemid |113|
 :pattern ( (inv this@@6) (inv this2))
)))
(assert (forall ((this@@7 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|inv#sm| this@@7) (|inv#sm| this2@@0)) (= this@@7 this2@@0))
 :qid |stdinbpl.822:15|
 :skolemid |114|
 :pattern ( (|inv#sm| this@@7) (|inv#sm| this2@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_28927) (ExhaleHeap@@3 T@PolymorphicMapType_28927) (Mask@@5 T@PolymorphicMapType_28948) (pm_f_8@@3 T@Field_35771_35772) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_16717_16718 Mask@@5 null pm_f_8@@3) (IsPredicateField_16717_16718 pm_f_8@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_8 T@Ref) (f_26 T@Field_35254_35256) ) (!  (=> (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_8@@3))) o2_8 f_26) (= (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@9) o2_8 f_26) (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8 f_26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8 f_26))
)) (forall ((o2_8@@0 T@Ref) (f_26@@0 T@Field_29000_29001) ) (!  (=> (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_8@@3))) o2_8@@0 f_26@@0) (= (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@9) o2_8@@0 f_26@@0) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8@@0 f_26@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8@@0 f_26@@0))
))) (forall ((o2_8@@1 T@Ref) (f_26@@1 T@Field_28987_53) ) (!  (=> (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_8@@3))) o2_8@@1 f_26@@1) (= (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@9) o2_8@@1 f_26@@1) (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8@@1 f_26@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8@@1 f_26@@1))
))) (forall ((o2_8@@2 T@Ref) (f_26@@2 T@Field_16582_16718) ) (!  (=> (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_8@@3))) o2_8@@2 f_26@@2) (= (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@9) o2_8@@2 f_26@@2) (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8@@2 f_26@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8@@2 f_26@@2))
))) (forall ((o2_8@@3 T@Ref) (f_26@@3 T@Field_16582_40276) ) (!  (=> (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_8@@3))) o2_8@@3 f_26@@3) (= (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@9) o2_8@@3 f_26@@3) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8@@3 f_26@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8@@3 f_26@@3))
))) (forall ((o2_8@@4 T@Ref) (f_26@@4 T@Field_16717_44510) ) (!  (=> (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_8@@3))) o2_8@@4 f_26@@4) (= (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@9) o2_8@@4 f_26@@4) (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8@@4 f_26@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8@@4 f_26@@4))
))) (forall ((o2_8@@5 T@Ref) (f_26@@5 T@Field_16717_16583) ) (!  (=> (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_8@@3))) o2_8@@5 f_26@@5) (= (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@9) o2_8@@5 f_26@@5) (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8@@5 f_26@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8@@5 f_26@@5))
))) (forall ((o2_8@@6 T@Ref) (f_26@@6 T@Field_16717_53) ) (!  (=> (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_8@@3))) o2_8@@6 f_26@@6) (= (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@9) o2_8@@6 f_26@@6) (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8@@6 f_26@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8@@6 f_26@@6))
))) (forall ((o2_8@@7 T@Ref) (f_26@@7 T@Field_35771_35772) ) (!  (=> (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_8@@3))) o2_8@@7 f_26@@7) (= (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@9) o2_8@@7 f_26@@7) (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8@@7 f_26@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8@@7 f_26@@7))
))) (forall ((o2_8@@8 T@Ref) (f_26@@8 T@Field_40271_40276) ) (!  (=> (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_8@@3))) o2_8@@8 f_26@@8) (= (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) o2_8@@8 f_26@@8) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8@@8 f_26@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@3) o2_8@@8 f_26@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (IsPredicateField_16717_16718 pm_f_8@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_28927) (ExhaleHeap@@4 T@PolymorphicMapType_28927) (Mask@@6 T@PolymorphicMapType_28948) (pm_f_8@@4 T@Field_16582_16718) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_16582_16718 Mask@@6 null pm_f_8@@4) (IsPredicateField_16582_101797 pm_f_8@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@9 T@Ref) (f_26@@9 T@Field_35254_35256) ) (!  (=> (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_8@@4))) o2_8@@9 f_26@@9) (= (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@10) o2_8@@9 f_26@@9) (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@9 f_26@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@9 f_26@@9))
)) (forall ((o2_8@@10 T@Ref) (f_26@@10 T@Field_29000_29001) ) (!  (=> (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_8@@4))) o2_8@@10 f_26@@10) (= (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@10) o2_8@@10 f_26@@10) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@10 f_26@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@10 f_26@@10))
))) (forall ((o2_8@@11 T@Ref) (f_26@@11 T@Field_28987_53) ) (!  (=> (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_8@@4))) o2_8@@11 f_26@@11) (= (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@10) o2_8@@11 f_26@@11) (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@11 f_26@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@11 f_26@@11))
))) (forall ((o2_8@@12 T@Ref) (f_26@@12 T@Field_16582_16718) ) (!  (=> (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_8@@4))) o2_8@@12 f_26@@12) (= (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@10) o2_8@@12 f_26@@12) (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@12 f_26@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@12 f_26@@12))
))) (forall ((o2_8@@13 T@Ref) (f_26@@13 T@Field_16582_40276) ) (!  (=> (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_8@@4))) o2_8@@13 f_26@@13) (= (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) o2_8@@13 f_26@@13) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@13 f_26@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@13 f_26@@13))
))) (forall ((o2_8@@14 T@Ref) (f_26@@14 T@Field_16717_44510) ) (!  (=> (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_8@@4))) o2_8@@14 f_26@@14) (= (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@10) o2_8@@14 f_26@@14) (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@14 f_26@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@14 f_26@@14))
))) (forall ((o2_8@@15 T@Ref) (f_26@@15 T@Field_16717_16583) ) (!  (=> (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_8@@4))) o2_8@@15 f_26@@15) (= (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@10) o2_8@@15 f_26@@15) (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@15 f_26@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@15 f_26@@15))
))) (forall ((o2_8@@16 T@Ref) (f_26@@16 T@Field_16717_53) ) (!  (=> (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_8@@4))) o2_8@@16 f_26@@16) (= (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@10) o2_8@@16 f_26@@16) (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@16 f_26@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@16 f_26@@16))
))) (forall ((o2_8@@17 T@Ref) (f_26@@17 T@Field_35771_35772) ) (!  (=> (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_8@@4))) o2_8@@17 f_26@@17) (= (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@10) o2_8@@17 f_26@@17) (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@17 f_26@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@17 f_26@@17))
))) (forall ((o2_8@@18 T@Ref) (f_26@@18 T@Field_40271_40276) ) (!  (=> (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_8@@4))) o2_8@@18 f_26@@18) (= (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@10) o2_8@@18 f_26@@18) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@18 f_26@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@4) o2_8@@18 f_26@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (IsPredicateField_16582_101797 pm_f_8@@4))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_28927) (ExhaleHeap@@5 T@PolymorphicMapType_28927) (Mask@@7 T@PolymorphicMapType_28948) (pm_f_8@@5 T@Field_35771_35772) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_16717_16718 Mask@@7 null pm_f_8@@5) (IsWandField_16717_105500 pm_f_8@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@19 T@Ref) (f_26@@19 T@Field_35254_35256) ) (!  (=> (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_8@@5))) o2_8@@19 f_26@@19) (= (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@11) o2_8@@19 f_26@@19) (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@19 f_26@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@19 f_26@@19))
)) (forall ((o2_8@@20 T@Ref) (f_26@@20 T@Field_29000_29001) ) (!  (=> (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_8@@5))) o2_8@@20 f_26@@20) (= (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@11) o2_8@@20 f_26@@20) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@20 f_26@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@20 f_26@@20))
))) (forall ((o2_8@@21 T@Ref) (f_26@@21 T@Field_28987_53) ) (!  (=> (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_8@@5))) o2_8@@21 f_26@@21) (= (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@11) o2_8@@21 f_26@@21) (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@21 f_26@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@21 f_26@@21))
))) (forall ((o2_8@@22 T@Ref) (f_26@@22 T@Field_16582_16718) ) (!  (=> (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_8@@5))) o2_8@@22 f_26@@22) (= (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@11) o2_8@@22 f_26@@22) (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@22 f_26@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@22 f_26@@22))
))) (forall ((o2_8@@23 T@Ref) (f_26@@23 T@Field_16582_40276) ) (!  (=> (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_8@@5))) o2_8@@23 f_26@@23) (= (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@11) o2_8@@23 f_26@@23) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@23 f_26@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@23 f_26@@23))
))) (forall ((o2_8@@24 T@Ref) (f_26@@24 T@Field_16717_44510) ) (!  (=> (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_8@@5))) o2_8@@24 f_26@@24) (= (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@11) o2_8@@24 f_26@@24) (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@24 f_26@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@24 f_26@@24))
))) (forall ((o2_8@@25 T@Ref) (f_26@@25 T@Field_16717_16583) ) (!  (=> (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_8@@5))) o2_8@@25 f_26@@25) (= (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@11) o2_8@@25 f_26@@25) (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@25 f_26@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@25 f_26@@25))
))) (forall ((o2_8@@26 T@Ref) (f_26@@26 T@Field_16717_53) ) (!  (=> (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_8@@5))) o2_8@@26 f_26@@26) (= (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@11) o2_8@@26 f_26@@26) (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@26 f_26@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@26 f_26@@26))
))) (forall ((o2_8@@27 T@Ref) (f_26@@27 T@Field_35771_35772) ) (!  (=> (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_8@@5))) o2_8@@27 f_26@@27) (= (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@11) o2_8@@27 f_26@@27) (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@27 f_26@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@27 f_26@@27))
))) (forall ((o2_8@@28 T@Ref) (f_26@@28 T@Field_40271_40276) ) (!  (=> (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_8@@5))) o2_8@@28 f_26@@28) (= (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) o2_8@@28 f_26@@28) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@28 f_26@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@5) o2_8@@28 f_26@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (IsWandField_16717_105500 pm_f_8@@5))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_28927) (ExhaleHeap@@6 T@PolymorphicMapType_28927) (Mask@@8 T@PolymorphicMapType_28948) (pm_f_8@@6 T@Field_16582_16718) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_16582_16718 Mask@@8 null pm_f_8@@6) (IsWandField_16582_105143 pm_f_8@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@29 T@Ref) (f_26@@29 T@Field_35254_35256) ) (!  (=> (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_8@@6))) o2_8@@29 f_26@@29) (= (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@12) o2_8@@29 f_26@@29) (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@29 f_26@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@29 f_26@@29))
)) (forall ((o2_8@@30 T@Ref) (f_26@@30 T@Field_29000_29001) ) (!  (=> (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_8@@6))) o2_8@@30 f_26@@30) (= (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@12) o2_8@@30 f_26@@30) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@30 f_26@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@30 f_26@@30))
))) (forall ((o2_8@@31 T@Ref) (f_26@@31 T@Field_28987_53) ) (!  (=> (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_8@@6))) o2_8@@31 f_26@@31) (= (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@12) o2_8@@31 f_26@@31) (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@31 f_26@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@31 f_26@@31))
))) (forall ((o2_8@@32 T@Ref) (f_26@@32 T@Field_16582_16718) ) (!  (=> (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_8@@6))) o2_8@@32 f_26@@32) (= (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@12) o2_8@@32 f_26@@32) (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@32 f_26@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@32 f_26@@32))
))) (forall ((o2_8@@33 T@Ref) (f_26@@33 T@Field_16582_40276) ) (!  (=> (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_8@@6))) o2_8@@33 f_26@@33) (= (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) o2_8@@33 f_26@@33) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@33 f_26@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@33 f_26@@33))
))) (forall ((o2_8@@34 T@Ref) (f_26@@34 T@Field_16717_44510) ) (!  (=> (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_8@@6))) o2_8@@34 f_26@@34) (= (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@12) o2_8@@34 f_26@@34) (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@34 f_26@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@34 f_26@@34))
))) (forall ((o2_8@@35 T@Ref) (f_26@@35 T@Field_16717_16583) ) (!  (=> (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_8@@6))) o2_8@@35 f_26@@35) (= (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@12) o2_8@@35 f_26@@35) (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@35 f_26@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@35 f_26@@35))
))) (forall ((o2_8@@36 T@Ref) (f_26@@36 T@Field_16717_53) ) (!  (=> (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_8@@6))) o2_8@@36 f_26@@36) (= (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@12) o2_8@@36 f_26@@36) (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@36 f_26@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@36 f_26@@36))
))) (forall ((o2_8@@37 T@Ref) (f_26@@37 T@Field_35771_35772) ) (!  (=> (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_8@@6))) o2_8@@37 f_26@@37) (= (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@12) o2_8@@37 f_26@@37) (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@37 f_26@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@37 f_26@@37))
))) (forall ((o2_8@@38 T@Ref) (f_26@@38 T@Field_40271_40276) ) (!  (=> (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_8@@6))) o2_8@@38 f_26@@38) (= (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@12) o2_8@@38 f_26@@38) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@38 f_26@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@6) o2_8@@38 f_26@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (IsWandField_16582_105143 pm_f_8@@6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_28927) (Mask@@9 T@PolymorphicMapType_28948) (struct@@0 T@Ref) (this@@8 T@Ref) ) (!  (=> (and (state Heap@@13 Mask@@9) (or (< AssumeFunctionsAbove 0) (|find#trigger| (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@13) null (inv struct@@0)) struct@@0 this@@8))) (=> (and (and (not (= struct@@0 null)) (not (= this@@8 null))) (select (allNodes Heap@@13 struct@@0) this@@8)) (select (allNodes Heap@@13 struct@@0) (|find'| Heap@@13 struct@@0 this@@8))))
 :qid |stdinbpl.461:15|
 :skolemid |87|
 :pattern ( (state Heap@@13 Mask@@9) (|find'| Heap@@13 struct@@0 this@@8))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_28927) (ExhaleHeap@@7 T@PolymorphicMapType_28927) (Mask@@10 T@PolymorphicMapType_28948) (o_18 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@14) o_18 $allocated) (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@7) o_18 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@7) o_18 $allocated))
)))
(assert (forall ((p T@Field_35771_35772) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_35771_35771 p v_1 p w))
 :qid |stdinbpl.220:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_35771_35771 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_16582_16718) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_28987_28987 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.220:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_28987_28987 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_16582_16583 parent)))
(assert  (not (IsWandField_16582_16583 parent)))
(assert  (not (IsPredicateField_16585_35280 nodes_1)))
(assert  (not (IsWandField_16585_35307 nodes_1)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_28927) (ExhaleHeap@@8 T@PolymorphicMapType_28927) (Mask@@11 T@PolymorphicMapType_28948) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@15 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_28948) (o_2@@9 T@Ref) (f_4@@9 T@Field_16582_40276) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_16585_112470 f_4@@9))) (not (IsWandField_16585_112486 f_4@@9))) (<= (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_28948) (o_2@@10 T@Ref) (f_4@@10 T@Field_28987_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_16585_53 f_4@@10))) (not (IsWandField_16585_53 f_4@@10))) (<= (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_28948) (o_2@@11 T@Ref) (f_4@@11 T@Field_29000_29001) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_16582_16583 f_4@@11))) (not (IsWandField_16582_16583 f_4@@11))) (<= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_28948) (o_2@@12 T@Ref) (f_4@@12 T@Field_35254_35256) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_16585_35280 f_4@@12))) (not (IsWandField_16585_35307 f_4@@12))) (<= (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_28948) (o_2@@13 T@Ref) (f_4@@13 T@Field_16582_16718) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_16582_101797 f_4@@13))) (not (IsWandField_16582_105143 f_4@@13))) (<= (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_28948) (o_2@@14 T@Ref) (f_4@@14 T@Field_40271_40276) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_16717_111662 f_4@@14))) (not (IsWandField_16717_111678 f_4@@14))) (<= (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_28948) (o_2@@15 T@Ref) (f_4@@15 T@Field_16717_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| Mask@@18) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_16717_53 f_4@@15))) (not (IsWandField_16717_53 f_4@@15))) (<= (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| Mask@@18) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| Mask@@18) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_28948) (o_2@@16 T@Ref) (f_4@@16 T@Field_16717_16583) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| Mask@@19) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_16717_16583 f_4@@16))) (not (IsWandField_16717_16583 f_4@@16))) (<= (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| Mask@@19) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| Mask@@19) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_28948) (o_2@@17 T@Ref) (f_4@@17 T@Field_16717_44510) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| Mask@@20) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_16717_111153 f_4@@17))) (not (IsWandField_16717_111169 f_4@@17))) (<= (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| Mask@@20) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| Mask@@20) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_28948) (o_2@@18 T@Ref) (f_4@@18 T@Field_35771_35772) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@@21) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_16717_16718 f_4@@18))) (not (IsWandField_16717_105500 f_4@@18))) (<= (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@@21) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@@21) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) ) (! (= (|Set#Equal_16660| a@@4 b@@3) (forall ((o@@0 T@Ref) ) (! (= (select a@@4 o@@0) (select b@@3 o@@0))
 :qid |stdinbpl.307:31|
 :skolemid |48|
 :pattern ( (select a@@4 o@@0))
 :pattern ( (select b@@3 o@@0))
)))
 :qid |stdinbpl.306:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_16660| a@@4 b@@3))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_28948) (o_2@@19 T@Ref) (f_4@@19 T@Field_40271_40276) ) (! (= (HasDirectPerm_16717_101552 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16717_101552 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_28948) (o_2@@20 T@Ref) (f_4@@20 T@Field_16717_53) ) (! (= (HasDirectPerm_16717_53 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16717_53 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_28948) (o_2@@21 T@Ref) (f_4@@21 T@Field_35771_35772) ) (! (= (HasDirectPerm_16717_16718 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16717_16718 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_28948) (o_2@@22 T@Ref) (f_4@@22 T@Field_16717_44510) ) (! (= (HasDirectPerm_16717_100895 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16717_100895 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_28948) (o_2@@23 T@Ref) (f_4@@23 T@Field_16717_16583) ) (! (= (HasDirectPerm_16717_16583 Mask@@26 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| Mask@@26) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16717_16583 Mask@@26 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_28948) (o_2@@24 T@Ref) (f_4@@24 T@Field_16582_40276) ) (! (= (HasDirectPerm_16582_100386 Mask@@27 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| Mask@@27) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16582_100386 Mask@@27 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_28948) (o_2@@25 T@Ref) (f_4@@25 T@Field_28987_53) ) (! (= (HasDirectPerm_16582_53 Mask@@28 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| Mask@@28) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16582_53 Mask@@28 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_28948) (o_2@@26 T@Ref) (f_4@@26 T@Field_16582_16718) ) (! (= (HasDirectPerm_16582_16718 Mask@@29 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| Mask@@29) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16582_16718 Mask@@29 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_28948) (o_2@@27 T@Ref) (f_4@@27 T@Field_35254_35256) ) (! (= (HasDirectPerm_16585_44510 Mask@@30 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| Mask@@30) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16585_44510 Mask@@30 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_28948) (o_2@@28 T@Ref) (f_4@@28 T@Field_29000_29001) ) (! (= (HasDirectPerm_16582_16583 Mask@@31 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@@31) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16582_16583 Mask@@31 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.208:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_28927) (ExhaleHeap@@9 T@PolymorphicMapType_28927) (Mask@@32 T@PolymorphicMapType_28948) (o_18@@0 T@Ref) (f_26@@39 T@Field_40271_40276) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@32) (=> (HasDirectPerm_16717_101552 Mask@@32 o_18@@0 f_26@@39) (= (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@16) o_18@@0 f_26@@39) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@9) o_18@@0 f_26@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@32) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@9) o_18@@0 f_26@@39))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_28927) (ExhaleHeap@@10 T@PolymorphicMapType_28927) (Mask@@33 T@PolymorphicMapType_28948) (o_18@@1 T@Ref) (f_26@@40 T@Field_16717_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@33) (=> (HasDirectPerm_16717_53 Mask@@33 o_18@@1 f_26@@40) (= (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@17) o_18@@1 f_26@@40) (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@10) o_18@@1 f_26@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@33) (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@10) o_18@@1 f_26@@40))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_28927) (ExhaleHeap@@11 T@PolymorphicMapType_28927) (Mask@@34 T@PolymorphicMapType_28948) (o_18@@2 T@Ref) (f_26@@41 T@Field_35771_35772) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@34) (=> (HasDirectPerm_16717_16718 Mask@@34 o_18@@2 f_26@@41) (= (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@18) o_18@@2 f_26@@41) (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@11) o_18@@2 f_26@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@34) (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@11) o_18@@2 f_26@@41))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_28927) (ExhaleHeap@@12 T@PolymorphicMapType_28927) (Mask@@35 T@PolymorphicMapType_28948) (o_18@@3 T@Ref) (f_26@@42 T@Field_16717_44510) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@35) (=> (HasDirectPerm_16717_100895 Mask@@35 o_18@@3 f_26@@42) (= (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@19) o_18@@3 f_26@@42) (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@12) o_18@@3 f_26@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@35) (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@12) o_18@@3 f_26@@42))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_28927) (ExhaleHeap@@13 T@PolymorphicMapType_28927) (Mask@@36 T@PolymorphicMapType_28948) (o_18@@4 T@Ref) (f_26@@43 T@Field_16717_16583) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@36) (=> (HasDirectPerm_16717_16583 Mask@@36 o_18@@4 f_26@@43) (= (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@20) o_18@@4 f_26@@43) (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@13) o_18@@4 f_26@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@36) (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@13) o_18@@4 f_26@@43))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_28927) (ExhaleHeap@@14 T@PolymorphicMapType_28927) (Mask@@37 T@PolymorphicMapType_28948) (o_18@@5 T@Ref) (f_26@@44 T@Field_16582_40276) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@37) (=> (HasDirectPerm_16582_100386 Mask@@37 o_18@@5 f_26@@44) (= (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@21) o_18@@5 f_26@@44) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@14) o_18@@5 f_26@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@37) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@14) o_18@@5 f_26@@44))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_28927) (ExhaleHeap@@15 T@PolymorphicMapType_28927) (Mask@@38 T@PolymorphicMapType_28948) (o_18@@6 T@Ref) (f_26@@45 T@Field_28987_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@38) (=> (HasDirectPerm_16582_53 Mask@@38 o_18@@6 f_26@@45) (= (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@22) o_18@@6 f_26@@45) (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@15) o_18@@6 f_26@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@38) (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@15) o_18@@6 f_26@@45))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_28927) (ExhaleHeap@@16 T@PolymorphicMapType_28927) (Mask@@39 T@PolymorphicMapType_28948) (o_18@@7 T@Ref) (f_26@@46 T@Field_16582_16718) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@39) (=> (HasDirectPerm_16582_16718 Mask@@39 o_18@@7 f_26@@46) (= (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@23) o_18@@7 f_26@@46) (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@16) o_18@@7 f_26@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@39) (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@16) o_18@@7 f_26@@46))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_28927) (ExhaleHeap@@17 T@PolymorphicMapType_28927) (Mask@@40 T@PolymorphicMapType_28948) (o_18@@8 T@Ref) (f_26@@47 T@Field_35254_35256) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@40) (=> (HasDirectPerm_16585_44510 Mask@@40 o_18@@8 f_26@@47) (= (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@24) o_18@@8 f_26@@47) (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@17) o_18@@8 f_26@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@40) (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@17) o_18@@8 f_26@@47))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_28927) (ExhaleHeap@@18 T@PolymorphicMapType_28927) (Mask@@41 T@PolymorphicMapType_28948) (o_18@@9 T@Ref) (f_26@@48 T@Field_29000_29001) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@41) (=> (HasDirectPerm_16582_16583 Mask@@41 o_18@@9 f_26@@48) (= (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@25) o_18@@9 f_26@@48) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@18) o_18@@9 f_26@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@41) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@18) o_18@@9 f_26@@48))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_28927) (Mask@@42 T@PolymorphicMapType_28948) (struct@@1 T@Ref) (this@@9 T@Ref) ) (!  (=> (and (state Heap@@26 Mask@@42) (< AssumeFunctionsAbove 0)) (=> (and (and (not (= struct@@1 null)) (not (= this@@9 null))) (select (allNodes Heap@@26 struct@@1) this@@9)) (= (find Heap@@26 struct@@1 this@@9) (ite (= this@@9 (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@26) this@@9 parent)) this@@9 (|find'| Heap@@26 struct@@1 (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@26) this@@9 parent))))))
 :qid |stdinbpl.444:15|
 :skolemid |84|
 :pattern ( (state Heap@@26 Mask@@42) (find Heap@@26 struct@@1 this@@9))
 :pattern ( (state Heap@@26 Mask@@42) (|find#triggerStateless| struct@@1 this@@9) (|inv#trigger_16717| Heap@@26 (inv struct@@1)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_16582_40276) ) (! (= (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_28987_53) ) (! (= (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_29000_29001) ) (! (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_35254_35256) ) (! (= (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_16582_16718) ) (! (= (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_40271_40276) ) (! (= (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_16717_53) ) (! (= (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_16717_16583) ) (! (= (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_16717_44510) ) (! (= (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_35771_35772) ) (! (= (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_28927) (struct@@2 T@Ref) (this@@10 T@Ref) ) (!  (and (= (find Heap@@27 struct@@2 this@@10) (|find'| Heap@@27 struct@@2 this@@10)) (dummyFunction_16629 (|find#triggerStateless| struct@@2 this@@10)))
 :qid |stdinbpl.434:15|
 :skolemid |82|
 :pattern ( (find Heap@@27 struct@@2 this@@10))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_28948) (SummandMask1 T@PolymorphicMapType_28948) (SummandMask2 T@PolymorphicMapType_28948) (o_2@@39 T@Ref) (f_4@@39 T@Field_16582_40276) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_28948) (SummandMask1@@0 T@PolymorphicMapType_28948) (SummandMask2@@0 T@PolymorphicMapType_28948) (o_2@@40 T@Ref) (f_4@@40 T@Field_28987_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_28948) (SummandMask1@@1 T@PolymorphicMapType_28948) (SummandMask2@@1 T@PolymorphicMapType_28948) (o_2@@41 T@Ref) (f_4@@41 T@Field_29000_29001) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_28948) (SummandMask1@@2 T@PolymorphicMapType_28948) (SummandMask2@@2 T@PolymorphicMapType_28948) (o_2@@42 T@Ref) (f_4@@42 T@Field_35254_35256) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_28948) (SummandMask1@@3 T@PolymorphicMapType_28948) (SummandMask2@@3 T@PolymorphicMapType_28948) (o_2@@43 T@Ref) (f_4@@43 T@Field_16582_16718) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_28948) (SummandMask1@@4 T@PolymorphicMapType_28948) (SummandMask2@@4 T@PolymorphicMapType_28948) (o_2@@44 T@Ref) (f_4@@44 T@Field_40271_40276) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_28948) (SummandMask1@@5 T@PolymorphicMapType_28948) (SummandMask2@@5 T@PolymorphicMapType_28948) (o_2@@45 T@Ref) (f_4@@45 T@Field_16717_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_28948) (SummandMask1@@6 T@PolymorphicMapType_28948) (SummandMask2@@6 T@PolymorphicMapType_28948) (o_2@@46 T@Ref) (f_4@@46 T@Field_16717_16583) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_28948) (SummandMask1@@7 T@PolymorphicMapType_28948) (SummandMask2@@7 T@PolymorphicMapType_28948) (o_2@@47 T@Ref) (f_4@@47 T@Field_16717_44510) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_28948) (SummandMask1@@8 T@PolymorphicMapType_28948) (SummandMask2@@8 T@PolymorphicMapType_28948) (o_2@@48 T@Ref) (f_4@@48 T@Field_35771_35772) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Intersection_16761| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (select b@@4 o@@1)))
 :qid |stdinbpl.271:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_16761| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Intersection_16761| a@@5 b@@4) (select a@@5 o@@1))
 :pattern ( (|Set#Intersection_16761| a@@5 b@@4) (select b@@4 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (o@@2 T@Ref) ) (! (= (select (|Set#Difference_16761| a@@6 b@@5) o@@2)  (and (select a@@6 o@@2) (not (select b@@5 o@@2))))
 :qid |stdinbpl.286:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_16761| a@@6 b@@5) o@@2))
 :pattern ( (|Set#Difference_16761| a@@6 b@@5) (select a@@6 o@@2))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_28927) (Mask@@43 T@PolymorphicMapType_28948) (struct@@3 T@Ref) (this@@11 T@Ref) ) (!  (=> (and (state Heap@@28 Mask@@43) (or (< AssumeFunctionsAbove 0) (|find#trigger| (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@28) null (inv struct@@3)) struct@@3 this@@11))) (=> (and (and (not (= struct@@3 null)) (not (= this@@11 null))) (select (allNodes Heap@@28 struct@@3) this@@11)) (not (= (|find'| Heap@@28 struct@@3 this@@11) null))))
 :qid |stdinbpl.457:15|
 :skolemid |86|
 :pattern ( (state Heap@@28 Mask@@43) (|find'| Heap@@28 struct@@3 this@@11))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_16660| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.308:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_16660| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@8 y) (select (|Set#UnionOne_16761| a@@8 x) y))
 :qid |stdinbpl.251:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_16761| a@@8 x) (select a@@8 y))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@9 y@@0) (select (|Set#Union_16660| a@@9 b@@7) y@@0))
 :qid |stdinbpl.261:18|
 :skolemid |35|
 :pattern ( (|Set#Union_16660| a@@9 b@@7) (select a@@9 y@@0))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@8 y@@1) (select (|Set#Union_16660| a@@10 b@@8) y@@1))
 :qid |stdinbpl.263:18|
 :skolemid |36|
 :pattern ( (|Set#Union_16660| a@@10 b@@8) (select b@@8 y@@1))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@3 T@Ref) ) (! (= (select (|Set#UnionOne_16761| a@@11 x@@0) o@@3)  (or (= o@@3 x@@0) (select a@@11 o@@3)))
 :qid |stdinbpl.247:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_16761| a@@11 x@@0) o@@3))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@9 y@@2) (not (select (|Set#Difference_16761| a@@12 b@@9) y@@2)))
 :qid |stdinbpl.288:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_16761| a@@12 b@@9) (select b@@9 y@@2))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_16761| (|Set#Difference_16761| a@@13 b@@10)) (|Set#Card_16761| (|Set#Difference_16761| b@@10 a@@13))) (|Set#Card_16761| (|Set#Intersection_16761| a@@13 b@@10))) (|Set#Card_16761| (|Set#Union_16660| a@@13 b@@10))) (= (|Set#Card_16761| (|Set#Difference_16761| a@@13 b@@10)) (- (|Set#Card_16761| a@@13) (|Set#Card_16761| (|Set#Intersection_16761| a@@13 b@@10)))))
 :qid |stdinbpl.290:18|
 :skolemid |45|
 :pattern ( (|Set#Card_16761| (|Set#Difference_16761| a@@13 b@@10)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_28927) (Mask@@44 T@PolymorphicMapType_28948) (struct@@4 T@Ref) (this@@12 T@Ref) ) (!  (=> (state Heap@@29 Mask@@44) (= (|find'| Heap@@29 struct@@4 this@@12) (|find#frame| (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@29) null (inv struct@@4)) struct@@4 this@@12)))
 :qid |stdinbpl.451:15|
 :skolemid |85|
 :pattern ( (state Heap@@29 Mask@@44) (|find'| Heap@@29 struct@@4 this@@12))
 :pattern ( (state Heap@@29 Mask@@44) (|find#triggerStateless| struct@@4 this@@12) (|inv#trigger_16717| Heap@@29 (inv struct@@4)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_16761| s))
 :qid |stdinbpl.233:18|
 :skolemid |22|
 :pattern ( (|Set#Card_16761| s))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_16761| a@@14 x@@1) x@@1)
 :qid |stdinbpl.249:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_16761| a@@14 x@@1))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_28927) (Mask@@45 T@PolymorphicMapType_28948) (this@@13 T@Ref) ) (!  (=> (state Heap@@30 Mask@@45) (= (|allNodes'| Heap@@30 this@@13) (|allNodes#frame| (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@30) null (inv this@@13)) this@@13)))
 :qid |stdinbpl.680:15|
 :skolemid |100|
 :pattern ( (state Heap@@30 Mask@@45) (|allNodes'| Heap@@30 this@@13))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@15 x@@2) (= (|Set#Card_16761| (|Set#UnionOne_16761| a@@15 x@@2)) (|Set#Card_16761| a@@15)))
 :qid |stdinbpl.253:18|
 :skolemid |32|
 :pattern ( (|Set#Card_16761| (|Set#UnionOne_16761| a@@15 x@@2)))
)))
(assert (forall ((this@@14 T@Ref) ) (! (= (getPredWandId_16717_16718 (inv this@@14)) 0)
 :qid |stdinbpl.812:15|
 :skolemid |112|
 :pattern ( (inv this@@14))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_16761| (|Set#Singleton_16761| r@@0)) 1)
 :qid |stdinbpl.244:18|
 :skolemid |28|
 :pattern ( (|Set#Card_16761| (|Set#Singleton_16761| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_16761| r@@1) r@@1)
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_16761| r@@1))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) ) (! (= (|Set#Union_16660| a@@16 (|Set#Union_16660| a@@16 b@@11)) (|Set#Union_16660| a@@16 b@@11))
 :qid |stdinbpl.276:18|
 :skolemid |39|
 :pattern ( (|Set#Union_16660| a@@16 (|Set#Union_16660| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_16761| a@@17 (|Set#Intersection_16761| a@@17 b@@12)) (|Set#Intersection_16761| a@@17 b@@12))
 :qid |stdinbpl.280:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_16761| a@@17 (|Set#Intersection_16761| a@@17 b@@12)))
)))
(assert (forall ((o@@4 T@Ref) ) (!  (not (select |Set#Empty_16761| o@@4))
 :qid |stdinbpl.236:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_16761| o@@4))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_28927) (o_20 T@Ref) (f_30 T@Field_40271_40276) (v T@PolymorphicMapType_29476) ) (! (succHeap Heap@@31 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@31) (store (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@31) o_20 f_30 v) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@31) (store (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@31) o_20 f_30 v) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_28927) (o_20@@0 T@Ref) (f_30@@0 T@Field_16717_44510) (v@@0 (Array T@Ref Bool)) ) (! (succHeap Heap@@32 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@32) (store (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@32) o_20@@0 f_30@@0 v@@0) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@32) (store (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@32) o_20@@0 f_30@@0 v@@0) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_28927) (o_20@@1 T@Ref) (f_30@@1 T@Field_35771_35772) (v@@1 T@FrameType) ) (! (succHeap Heap@@33 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@33) (store (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@33) o_20@@1 f_30@@1 v@@1) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@33) (store (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@33) o_20@@1 f_30@@1 v@@1) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_28927) (o_20@@2 T@Ref) (f_30@@2 T@Field_16717_16583) (v@@2 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@34) (store (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@34) o_20@@2 f_30@@2 v@@2) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@34) (store (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@34) o_20@@2 f_30@@2 v@@2) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_28927) (o_20@@3 T@Ref) (f_30@@3 T@Field_16717_53) (v@@3 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@35) (store (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@35) o_20@@3 f_30@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@35) (store (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@35) o_20@@3 f_30@@3 v@@3)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_28927) (o_20@@4 T@Ref) (f_30@@4 T@Field_16582_40276) (v@@4 T@PolymorphicMapType_29476) ) (! (succHeap Heap@@36 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@36) (store (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@36) o_20@@4 f_30@@4 v@@4) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@36) (store (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@36) o_20@@4 f_30@@4 v@@4) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_28927) (o_20@@5 T@Ref) (f_30@@5 T@Field_35254_35256) (v@@5 (Array T@Ref Bool)) ) (! (succHeap Heap@@37 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@37) (store (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@37) o_20@@5 f_30@@5 v@@5) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@37) (store (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@37) o_20@@5 f_30@@5 v@@5) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_28927) (o_20@@6 T@Ref) (f_30@@6 T@Field_16582_16718) (v@@6 T@FrameType) ) (! (succHeap Heap@@38 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@38) (store (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@38) o_20@@6 f_30@@6 v@@6) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@38) (store (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@38) o_20@@6 f_30@@6 v@@6) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_28927) (o_20@@7 T@Ref) (f_30@@7 T@Field_29000_29001) (v@@7 T@Ref) ) (! (succHeap Heap@@39 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@39) (store (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@39) o_20@@7 f_30@@7 v@@7) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@39) (store (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@39) o_20@@7 f_30@@7 v@@7) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_28927) (o_20@@8 T@Ref) (f_30@@8 T@Field_28987_53) (v@@8 Bool) ) (! (succHeap Heap@@40 (PolymorphicMapType_28927 (store (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@40) o_20@@8 f_30@@8 v@@8) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (store (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@40) o_20@@8 f_30@@8 v@@8) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@40)))
)))
(assert (forall ((this@@15 T@Ref) ) (! (= (PredicateMaskField_16717 (inv this@@15)) (|inv#sm| this@@15))
 :qid |stdinbpl.804:15|
 :skolemid |110|
 :pattern ( (PredicateMaskField_16717 (inv this@@15)))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.320:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.321:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_16761| s@@0) 0) (= s@@0 |Set#Empty_16761|)) (=> (not (= (|Set#Card_16761| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.239:33|
 :skolemid |24|
))))
 :qid |stdinbpl.237:18|
 :skolemid |25|
 :pattern ( (|Set#Card_16761| s@@0))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@20 x@@4)) (= (|Set#Card_16761| (|Set#UnionOne_16761| a@@20 x@@4)) (+ (|Set#Card_16761| a@@20) 1)))
 :qid |stdinbpl.255:18|
 :skolemid |33|
 :pattern ( (|Set#Card_16761| (|Set#UnionOne_16761| a@@20 x@@4)))
)))
(assert (forall ((o_20@@9 T@Ref) (f_29 T@Field_29000_29001) (Heap@@41 T@PolymorphicMapType_28927) ) (!  (=> (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@41) o_20@@9 $allocated) (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@41) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@41) o_20@@9 f_29) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@41) o_20@@9 f_29))
)))
(assert (forall ((p@@2 T@Field_35771_35772) (v_1@@1 T@FrameType) (q T@Field_35771_35772) (w@@1 T@FrameType) (r@@2 T@Field_35771_35772) (u T@FrameType) ) (!  (=> (and (InsidePredicate_35771_35771 p@@2 v_1@@1 q w@@1) (InsidePredicate_35771_35771 q w@@1 r@@2 u)) (InsidePredicate_35771_35771 p@@2 v_1@@1 r@@2 u))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35771_35771 p@@2 v_1@@1 q w@@1) (InsidePredicate_35771_35771 q w@@1 r@@2 u))
)))
(assert (forall ((p@@3 T@Field_35771_35772) (v_1@@2 T@FrameType) (q@@0 T@Field_35771_35772) (w@@2 T@FrameType) (r@@3 T@Field_16582_16718) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_35771_35771 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_35771_28987 q@@0 w@@2 r@@3 u@@0)) (InsidePredicate_35771_28987 p@@3 v_1@@2 r@@3 u@@0))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35771_35771 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_35771_28987 q@@0 w@@2 r@@3 u@@0))
)))
(assert (forall ((p@@4 T@Field_35771_35772) (v_1@@3 T@FrameType) (q@@1 T@Field_16582_16718) (w@@3 T@FrameType) (r@@4 T@Field_35771_35772) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_35771_28987 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_28987_35771 q@@1 w@@3 r@@4 u@@1)) (InsidePredicate_35771_35771 p@@4 v_1@@3 r@@4 u@@1))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35771_28987 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_28987_35771 q@@1 w@@3 r@@4 u@@1))
)))
(assert (forall ((p@@5 T@Field_35771_35772) (v_1@@4 T@FrameType) (q@@2 T@Field_16582_16718) (w@@4 T@FrameType) (r@@5 T@Field_16582_16718) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_35771_28987 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_28987_28987 q@@2 w@@4 r@@5 u@@2)) (InsidePredicate_35771_28987 p@@5 v_1@@4 r@@5 u@@2))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35771_28987 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_28987_28987 q@@2 w@@4 r@@5 u@@2))
)))
(assert (forall ((p@@6 T@Field_16582_16718) (v_1@@5 T@FrameType) (q@@3 T@Field_35771_35772) (w@@5 T@FrameType) (r@@6 T@Field_35771_35772) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_28987_35771 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_35771_35771 q@@3 w@@5 r@@6 u@@3)) (InsidePredicate_28987_35771 p@@6 v_1@@5 r@@6 u@@3))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28987_35771 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_35771_35771 q@@3 w@@5 r@@6 u@@3))
)))
(assert (forall ((p@@7 T@Field_16582_16718) (v_1@@6 T@FrameType) (q@@4 T@Field_35771_35772) (w@@6 T@FrameType) (r@@7 T@Field_16582_16718) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_28987_35771 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_35771_28987 q@@4 w@@6 r@@7 u@@4)) (InsidePredicate_28987_28987 p@@7 v_1@@6 r@@7 u@@4))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28987_35771 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_35771_28987 q@@4 w@@6 r@@7 u@@4))
)))
(assert (forall ((p@@8 T@Field_16582_16718) (v_1@@7 T@FrameType) (q@@5 T@Field_16582_16718) (w@@7 T@FrameType) (r@@8 T@Field_35771_35772) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_28987_28987 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_28987_35771 q@@5 w@@7 r@@8 u@@5)) (InsidePredicate_28987_35771 p@@8 v_1@@7 r@@8 u@@5))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28987_28987 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_28987_35771 q@@5 w@@7 r@@8 u@@5))
)))
(assert (forall ((p@@9 T@Field_16582_16718) (v_1@@8 T@FrameType) (q@@6 T@Field_16582_16718) (w@@8 T@FrameType) (r@@9 T@Field_16582_16718) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_28987_28987 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_28987_28987 q@@6 w@@8 r@@9 u@@6)) (InsidePredicate_28987_28987 p@@9 v_1@@8 r@@9 u@@6))
 :qid |stdinbpl.215:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28987_28987 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_28987_28987 q@@6 w@@8 r@@9 u@@6))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.326:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Union_16660| a@@22 b@@15) o@@5)  (or (select a@@22 o@@5) (select b@@15 o@@5)))
 :qid |stdinbpl.259:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_16660| a@@22 b@@15) o@@5))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@42 () T@PolymorphicMapType_28927)
(declare-fun this@@16 () T@Ref)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_28948)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_37640 ((Array T@Ref Bool)) T@FrameType)
(declare-fun FrameFragment_5727 (Int) T@FrameType)
(declare-fun wildcard@1 () Real)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_28948)
(declare-fun QPMask@0 () T@PolymorphicMapType_28948)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id |allNodes#definedness|)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (and (state Heap@@42 ZeroMask) (not AssumePermUpperBound)) (=> (and (and (and (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@42) this@@16 $allocated) (= AssumeFunctionsAbove 1)) (and (> wildcard@0 NoPerm) (= Mask@0 (PolymorphicMapType_28948 (store (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| ZeroMask) null (inv this@@16) (+ (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| ZeroMask) null (inv this@@16)) wildcard@0)) (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| ZeroMask))))) (and (and (state Heap@@42 Mask@0) (state Heap@@42 Mask@0)) (and (|inv#trigger_16717| Heap@@42 (inv this@@16)) (= (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@42) null (inv this@@16)) (CombineFrames (FrameFragment_37640 (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) this@@16 nodes_1)) (FrameFragment_5727 (|inv#condqp1| Heap@@42 this@@16))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@0) null (inv this@@16))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@0) null (inv this@@16)))) (=> (> wildcard@1 NoPerm) (=> (and (and (not (= this@@16 null)) (= UnfoldingMask@0 (PolymorphicMapType_28948 (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@0) (store (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| Mask@0) this@@16 nodes_1 (+ (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| Mask@0) this@@16 nodes_1) wildcard@1)) (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@0) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| Mask@0) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| Mask@0) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| Mask@0) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| Mask@0) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| Mask@0) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| Mask@0) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| Mask@0)))) (and (state Heap@@42 UnfoldingMask@0) (not (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) this@@16 nodes_1) null)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((n T@Ref) (n_89 T@Ref) ) (!  (=> (and (and (and (and (not (= n n_89)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) this@@16 nodes_1) n)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) this@@16 nodes_1) n_89)) (< NoPerm wildcard@1)) (< NoPerm wildcard@1)) (not (= n n_89)))
 :qid |stdinbpl.738:17|
 :skolemid |101|
))) (=> (forall ((n@@0 T@Ref) (n_89@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n@@0 n_89@@0)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) this@@16 nodes_1) n@@0)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) this@@16 nodes_1) n_89@@0)) (< NoPerm wildcard@1)) (< NoPerm wildcard@1)) (not (= n@@0 n_89@@0)))
 :qid |stdinbpl.738:17|
 :skolemid |101|
)) (=> (and (and (forall ((n@@1 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) this@@16 nodes_1) n@@1) (and (qpRange2 n@@1) (= (invRecv2 n@@1) n@@1)))
 :qid |stdinbpl.744:24|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@42) n@@1 parent))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@0) n@@1 parent))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) this@@16 nodes_1) n@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) this@@16 nodes_1) (invRecv2 o_9)) (qpRange2 o_9)) (= (invRecv2 o_9) o_9))
 :qid |stdinbpl.748:24|
 :skolemid |103|
 :pattern ( (invRecv2 o_9))
))) (and (forall ((n@@2 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) this@@16 nodes_1) n@@2) (> wildcard@1 NoPerm)) (not (= n@@2 null)))
 :qid |stdinbpl.754:24|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@42) n@@2 parent))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@0) n@@2 parent))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) this@@16 nodes_1) n@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) this@@16 nodes_1) (invRecv2 o_9@@0)) (qpRange2 o_9@@0)) (and (= (invRecv2 o_9@@0) o_9@@0) (< (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@0 parent) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@0) o_9@@0 parent)))) (=> (not (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) this@@16 nodes_1) (invRecv2 o_9@@0)) (qpRange2 o_9@@0))) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@0) o_9@@0 parent) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@0 parent))))
 :qid |stdinbpl.760:24|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@0) o_9@@0 parent))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_28987_53) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@1 f_5) (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.764:31|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_29000_29001) ) (!  (=> (not (= f_5@@0 parent)) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@2 f_5@@0) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.764:31|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_35254_35256) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@3 f_5@@1) (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.764:31|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_16582_16718) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@4 f_5@@2) (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.764:31|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_16582_40276) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@5 f_5@@3) (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.764:31|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| QPMask@0) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_16717_53) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@6 f_5@@4) (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| QPMask@0) o_9@@6 f_5@@4)))
 :qid |stdinbpl.764:31|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| QPMask@0) o_9@@6 f_5@@4))
))) (forall ((o_9@@7 T@Ref) (f_5@@5 T@Field_16717_16583) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@7 f_5@@5) (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| QPMask@0) o_9@@7 f_5@@5)))
 :qid |stdinbpl.764:31|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| QPMask@0) o_9@@7 f_5@@5))
))) (forall ((o_9@@8 T@Ref) (f_5@@6 T@Field_16717_44510) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@8 f_5@@6) (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| QPMask@0) o_9@@8 f_5@@6)))
 :qid |stdinbpl.764:31|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| QPMask@0) o_9@@8 f_5@@6))
))) (forall ((o_9@@9 T@Ref) (f_5@@7 T@Field_35771_35772) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@9 f_5@@7) (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| QPMask@0) o_9@@9 f_5@@7)))
 :qid |stdinbpl.764:31|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| QPMask@0) o_9@@9 f_5@@7))
))) (forall ((o_9@@10 T@Ref) (f_5@@8 T@Field_40271_40276) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@10 f_5@@8) (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| QPMask@0) o_9@@10 f_5@@8)))
 :qid |stdinbpl.764:31|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| UnfoldingMask@0) o_9@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| QPMask@0) o_9@@10 f_5@@8))
))) (and (and (state Heap@@42 QPMask@0) (forall ((q_1 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) this@@16 nodes_1) q_1) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) this@@16 nodes_1) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@42) q_1 parent)))
 :qid |stdinbpl.770:22|
 :skolemid |107|
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) this@@16 nodes_1) q_1))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) this@@16 nodes_1) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@42) q_1 parent)))
))) (and (state Heap@@42 QPMask@0) (= (ControlFlow 0 2) (- 0 1))))) (HasDirectPerm_16585_44510 QPMask@0 this@@16 nodes_1)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 5) 2)) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
