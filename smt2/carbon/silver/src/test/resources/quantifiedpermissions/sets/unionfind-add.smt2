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
(declare-fun nodes () T@Field_35254_35256)
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
(assert (forall ((Heap T@PolymorphicMapType_28927) (Mask T@PolymorphicMapType_28948) (this T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 1)) (= (allNodes Heap this) (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap) this nodes)))
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
(assert (forall ((Heap2Heap T@PolymorphicMapType_28927) (Heap1Heap T@PolymorphicMapType_28927) (this@@5 T@Ref) ) (!  (=> (and (=  (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap2Heap) this@@5 nodes) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@5) (|inv#condqp1| Heap1Heap this@@5))) (< NoPerm FullPerm))  (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap1Heap) this@@5 nodes) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@5) (|inv#condqp1| Heap1Heap this@@5))) (< NoPerm FullPerm))) (=> (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap2Heap) this@@5 nodes) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@5) (|inv#condqp1| Heap1Heap this@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap2Heap) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@5) (|inv#condqp1| Heap1Heap this@@5)) parent) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap1Heap) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@5) (|inv#condqp1| Heap1Heap this@@5)) parent)))) (= (|inv#condqp1| Heap2Heap this@@5) (|inv#condqp1| Heap1Heap this@@5)))
 :qid |stdinbpl.838:15|
 :skolemid |116|
 :pattern ( (|inv#condqp1| Heap2Heap this@@5) (|inv#condqp1| Heap1Heap this@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.325:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_28927) (ExhaleHeap T@PolymorphicMapType_28927) (Mask@@1 T@PolymorphicMapType_28948) (pm_f_6 T@Field_35771_35772) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_16717_16718 Mask@@1 null pm_f_6) (IsPredicateField_16717_16718 pm_f_6)) (= (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@5) null (PredicateMaskField_16717 pm_f_6)) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap) null (PredicateMaskField_16717 pm_f_6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (IsPredicateField_16717_16718 pm_f_6) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap) null (PredicateMaskField_16717 pm_f_6)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_28927) (ExhaleHeap@@0 T@PolymorphicMapType_28927) (Mask@@2 T@PolymorphicMapType_28948) (pm_f_6@@0 T@Field_16582_16718) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_16582_16718 Mask@@2 null pm_f_6@@0) (IsPredicateField_16582_101797 pm_f_6@@0)) (= (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@6) null (PredicateMaskField_16582 pm_f_6@@0)) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@0) null (PredicateMaskField_16582 pm_f_6@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (IsPredicateField_16582_101797 pm_f_6@@0) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@0) null (PredicateMaskField_16582 pm_f_6@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_28927) (ExhaleHeap@@1 T@PolymorphicMapType_28927) (Mask@@3 T@PolymorphicMapType_28948) (pm_f_6@@1 T@Field_35771_35772) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_16717_16718 Mask@@3 null pm_f_6@@1) (IsWandField_16717_105500 pm_f_6@@1)) (= (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@7) null (WandMaskField_16717 pm_f_6@@1)) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@1) null (WandMaskField_16717 pm_f_6@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (IsWandField_16717_105500 pm_f_6@@1) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@1) null (WandMaskField_16717 pm_f_6@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_28927) (ExhaleHeap@@2 T@PolymorphicMapType_28927) (Mask@@4 T@PolymorphicMapType_28948) (pm_f_6@@2 T@Field_16582_16718) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_16582_16718 Mask@@4 null pm_f_6@@2) (IsWandField_16582_105143 pm_f_6@@2)) (= (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@8) null (WandMaskField_16582 pm_f_6@@2)) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@2) null (WandMaskField_16582 pm_f_6@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (IsWandField_16582_105143 pm_f_6@@2) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@2) null (WandMaskField_16582 pm_f_6@@2)))
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
(assert (forall ((Heap@@9 T@PolymorphicMapType_28927) (ExhaleHeap@@3 T@PolymorphicMapType_28927) (Mask@@5 T@PolymorphicMapType_28948) (pm_f_6@@3 T@Field_35771_35772) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_16717_16718 Mask@@5 null pm_f_6@@3) (IsPredicateField_16717_16718 pm_f_6@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_6 T@Ref) (f_19 T@Field_35254_35256) ) (!  (=> (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_6@@3))) o2_6 f_19) (= (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@9) o2_6 f_19) (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6 f_19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6 f_19))
)) (forall ((o2_6@@0 T@Ref) (f_19@@0 T@Field_29000_29001) ) (!  (=> (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_6@@3))) o2_6@@0 f_19@@0) (= (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@9) o2_6@@0 f_19@@0) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6@@0 f_19@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6@@0 f_19@@0))
))) (forall ((o2_6@@1 T@Ref) (f_19@@1 T@Field_28987_53) ) (!  (=> (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_6@@3))) o2_6@@1 f_19@@1) (= (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@9) o2_6@@1 f_19@@1) (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6@@1 f_19@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6@@1 f_19@@1))
))) (forall ((o2_6@@2 T@Ref) (f_19@@2 T@Field_16582_16718) ) (!  (=> (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_6@@3))) o2_6@@2 f_19@@2) (= (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@9) o2_6@@2 f_19@@2) (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6@@2 f_19@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6@@2 f_19@@2))
))) (forall ((o2_6@@3 T@Ref) (f_19@@3 T@Field_16582_40276) ) (!  (=> (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_6@@3))) o2_6@@3 f_19@@3) (= (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@9) o2_6@@3 f_19@@3) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6@@3 f_19@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6@@3 f_19@@3))
))) (forall ((o2_6@@4 T@Ref) (f_19@@4 T@Field_16717_44510) ) (!  (=> (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_6@@3))) o2_6@@4 f_19@@4) (= (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@9) o2_6@@4 f_19@@4) (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6@@4 f_19@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6@@4 f_19@@4))
))) (forall ((o2_6@@5 T@Ref) (f_19@@5 T@Field_16717_16583) ) (!  (=> (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_6@@3))) o2_6@@5 f_19@@5) (= (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@9) o2_6@@5 f_19@@5) (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6@@5 f_19@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6@@5 f_19@@5))
))) (forall ((o2_6@@6 T@Ref) (f_19@@6 T@Field_16717_53) ) (!  (=> (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_6@@3))) o2_6@@6 f_19@@6) (= (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@9) o2_6@@6 f_19@@6) (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6@@6 f_19@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6@@6 f_19@@6))
))) (forall ((o2_6@@7 T@Ref) (f_19@@7 T@Field_35771_35772) ) (!  (=> (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_6@@3))) o2_6@@7 f_19@@7) (= (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@9) o2_6@@7 f_19@@7) (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6@@7 f_19@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6@@7 f_19@@7))
))) (forall ((o2_6@@8 T@Ref) (f_19@@8 T@Field_40271_40276) ) (!  (=> (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) null (PredicateMaskField_16717 pm_f_6@@3))) o2_6@@8 f_19@@8) (= (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@9) o2_6@@8 f_19@@8) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6@@8 f_19@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@3) o2_6@@8 f_19@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (IsPredicateField_16717_16718 pm_f_6@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_28927) (ExhaleHeap@@4 T@PolymorphicMapType_28927) (Mask@@6 T@PolymorphicMapType_28948) (pm_f_6@@4 T@Field_16582_16718) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_16582_16718 Mask@@6 null pm_f_6@@4) (IsPredicateField_16582_101797 pm_f_6@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_6@@9 T@Ref) (f_19@@9 T@Field_35254_35256) ) (!  (=> (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_6@@4))) o2_6@@9 f_19@@9) (= (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@10) o2_6@@9 f_19@@9) (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@9 f_19@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@9 f_19@@9))
)) (forall ((o2_6@@10 T@Ref) (f_19@@10 T@Field_29000_29001) ) (!  (=> (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_6@@4))) o2_6@@10 f_19@@10) (= (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@10) o2_6@@10 f_19@@10) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@10 f_19@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@10 f_19@@10))
))) (forall ((o2_6@@11 T@Ref) (f_19@@11 T@Field_28987_53) ) (!  (=> (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_6@@4))) o2_6@@11 f_19@@11) (= (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@10) o2_6@@11 f_19@@11) (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@11 f_19@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@11 f_19@@11))
))) (forall ((o2_6@@12 T@Ref) (f_19@@12 T@Field_16582_16718) ) (!  (=> (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_6@@4))) o2_6@@12 f_19@@12) (= (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@10) o2_6@@12 f_19@@12) (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@12 f_19@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@12 f_19@@12))
))) (forall ((o2_6@@13 T@Ref) (f_19@@13 T@Field_16582_40276) ) (!  (=> (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_6@@4))) o2_6@@13 f_19@@13) (= (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) o2_6@@13 f_19@@13) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@13 f_19@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@13 f_19@@13))
))) (forall ((o2_6@@14 T@Ref) (f_19@@14 T@Field_16717_44510) ) (!  (=> (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_6@@4))) o2_6@@14 f_19@@14) (= (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@10) o2_6@@14 f_19@@14) (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@14 f_19@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@14 f_19@@14))
))) (forall ((o2_6@@15 T@Ref) (f_19@@15 T@Field_16717_16583) ) (!  (=> (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_6@@4))) o2_6@@15 f_19@@15) (= (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@10) o2_6@@15 f_19@@15) (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@15 f_19@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@15 f_19@@15))
))) (forall ((o2_6@@16 T@Ref) (f_19@@16 T@Field_16717_53) ) (!  (=> (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_6@@4))) o2_6@@16 f_19@@16) (= (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@10) o2_6@@16 f_19@@16) (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@16 f_19@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@16 f_19@@16))
))) (forall ((o2_6@@17 T@Ref) (f_19@@17 T@Field_35771_35772) ) (!  (=> (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_6@@4))) o2_6@@17 f_19@@17) (= (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@10) o2_6@@17 f_19@@17) (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@17 f_19@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@17 f_19@@17))
))) (forall ((o2_6@@18 T@Ref) (f_19@@18 T@Field_40271_40276) ) (!  (=> (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@10) null (PredicateMaskField_16582 pm_f_6@@4))) o2_6@@18 f_19@@18) (= (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@10) o2_6@@18 f_19@@18) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@18 f_19@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@4) o2_6@@18 f_19@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (IsPredicateField_16582_101797 pm_f_6@@4))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_28927) (ExhaleHeap@@5 T@PolymorphicMapType_28927) (Mask@@7 T@PolymorphicMapType_28948) (pm_f_6@@5 T@Field_35771_35772) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_16717_16718 Mask@@7 null pm_f_6@@5) (IsWandField_16717_105500 pm_f_6@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_6@@19 T@Ref) (f_19@@19 T@Field_35254_35256) ) (!  (=> (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_6@@5))) o2_6@@19 f_19@@19) (= (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@11) o2_6@@19 f_19@@19) (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@19 f_19@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@19 f_19@@19))
)) (forall ((o2_6@@20 T@Ref) (f_19@@20 T@Field_29000_29001) ) (!  (=> (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_6@@5))) o2_6@@20 f_19@@20) (= (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@11) o2_6@@20 f_19@@20) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@20 f_19@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@20 f_19@@20))
))) (forall ((o2_6@@21 T@Ref) (f_19@@21 T@Field_28987_53) ) (!  (=> (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_6@@5))) o2_6@@21 f_19@@21) (= (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@11) o2_6@@21 f_19@@21) (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@21 f_19@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@21 f_19@@21))
))) (forall ((o2_6@@22 T@Ref) (f_19@@22 T@Field_16582_16718) ) (!  (=> (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_6@@5))) o2_6@@22 f_19@@22) (= (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@11) o2_6@@22 f_19@@22) (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@22 f_19@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@22 f_19@@22))
))) (forall ((o2_6@@23 T@Ref) (f_19@@23 T@Field_16582_40276) ) (!  (=> (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_6@@5))) o2_6@@23 f_19@@23) (= (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@11) o2_6@@23 f_19@@23) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@23 f_19@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@23 f_19@@23))
))) (forall ((o2_6@@24 T@Ref) (f_19@@24 T@Field_16717_44510) ) (!  (=> (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_6@@5))) o2_6@@24 f_19@@24) (= (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@11) o2_6@@24 f_19@@24) (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@24 f_19@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@24 f_19@@24))
))) (forall ((o2_6@@25 T@Ref) (f_19@@25 T@Field_16717_16583) ) (!  (=> (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_6@@5))) o2_6@@25 f_19@@25) (= (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@11) o2_6@@25 f_19@@25) (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@25 f_19@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@25 f_19@@25))
))) (forall ((o2_6@@26 T@Ref) (f_19@@26 T@Field_16717_53) ) (!  (=> (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_6@@5))) o2_6@@26 f_19@@26) (= (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@11) o2_6@@26 f_19@@26) (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@26 f_19@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@26 f_19@@26))
))) (forall ((o2_6@@27 T@Ref) (f_19@@27 T@Field_35771_35772) ) (!  (=> (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_6@@5))) o2_6@@27 f_19@@27) (= (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@11) o2_6@@27 f_19@@27) (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@27 f_19@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@27 f_19@@27))
))) (forall ((o2_6@@28 T@Ref) (f_19@@28 T@Field_40271_40276) ) (!  (=> (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) null (WandMaskField_16717 pm_f_6@@5))) o2_6@@28 f_19@@28) (= (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@11) o2_6@@28 f_19@@28) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@28 f_19@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@5) o2_6@@28 f_19@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (IsWandField_16717_105500 pm_f_6@@5))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_28927) (ExhaleHeap@@6 T@PolymorphicMapType_28927) (Mask@@8 T@PolymorphicMapType_28948) (pm_f_6@@6 T@Field_16582_16718) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_16582_16718 Mask@@8 null pm_f_6@@6) (IsWandField_16582_105143 pm_f_6@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_6@@29 T@Ref) (f_19@@29 T@Field_35254_35256) ) (!  (=> (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_6@@6))) o2_6@@29 f_19@@29) (= (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@12) o2_6@@29 f_19@@29) (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@29 f_19@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@29 f_19@@29))
)) (forall ((o2_6@@30 T@Ref) (f_19@@30 T@Field_29000_29001) ) (!  (=> (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_6@@6))) o2_6@@30 f_19@@30) (= (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@12) o2_6@@30 f_19@@30) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@30 f_19@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@30 f_19@@30))
))) (forall ((o2_6@@31 T@Ref) (f_19@@31 T@Field_28987_53) ) (!  (=> (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_6@@6))) o2_6@@31 f_19@@31) (= (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@12) o2_6@@31 f_19@@31) (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@31 f_19@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@31 f_19@@31))
))) (forall ((o2_6@@32 T@Ref) (f_19@@32 T@Field_16582_16718) ) (!  (=> (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_6@@6))) o2_6@@32 f_19@@32) (= (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@12) o2_6@@32 f_19@@32) (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@32 f_19@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@32 f_19@@32))
))) (forall ((o2_6@@33 T@Ref) (f_19@@33 T@Field_16582_40276) ) (!  (=> (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_6@@6))) o2_6@@33 f_19@@33) (= (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) o2_6@@33 f_19@@33) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@33 f_19@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@33 f_19@@33))
))) (forall ((o2_6@@34 T@Ref) (f_19@@34 T@Field_16717_44510) ) (!  (=> (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_6@@6))) o2_6@@34 f_19@@34) (= (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@12) o2_6@@34 f_19@@34) (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@34 f_19@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@34 f_19@@34))
))) (forall ((o2_6@@35 T@Ref) (f_19@@35 T@Field_16717_16583) ) (!  (=> (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_6@@6))) o2_6@@35 f_19@@35) (= (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@12) o2_6@@35 f_19@@35) (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@35 f_19@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@35 f_19@@35))
))) (forall ((o2_6@@36 T@Ref) (f_19@@36 T@Field_16717_53) ) (!  (=> (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_6@@6))) o2_6@@36 f_19@@36) (= (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@12) o2_6@@36 f_19@@36) (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@36 f_19@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@36 f_19@@36))
))) (forall ((o2_6@@37 T@Ref) (f_19@@37 T@Field_35771_35772) ) (!  (=> (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_6@@6))) o2_6@@37 f_19@@37) (= (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@12) o2_6@@37 f_19@@37) (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@37 f_19@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@37 f_19@@37))
))) (forall ((o2_6@@38 T@Ref) (f_19@@38 T@Field_40271_40276) ) (!  (=> (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@12) null (WandMaskField_16582 pm_f_6@@6))) o2_6@@38 f_19@@38) (= (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@12) o2_6@@38 f_19@@38) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@38 f_19@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@6) o2_6@@38 f_19@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (IsWandField_16582_105143 pm_f_6@@6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_28927) (Mask@@9 T@PolymorphicMapType_28948) (struct@@0 T@Ref) (this@@8 T@Ref) ) (!  (=> (and (state Heap@@13 Mask@@9) (or (< AssumeFunctionsAbove 0) (|find#trigger| (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@13) null (inv struct@@0)) struct@@0 this@@8))) (=> (and (and (not (= struct@@0 null)) (not (= this@@8 null))) (select (allNodes Heap@@13 struct@@0) this@@8)) (select (allNodes Heap@@13 struct@@0) (|find'| Heap@@13 struct@@0 this@@8))))
 :qid |stdinbpl.461:15|
 :skolemid |87|
 :pattern ( (state Heap@@13 Mask@@9) (|find'| Heap@@13 struct@@0 this@@8))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_28927) (ExhaleHeap@@7 T@PolymorphicMapType_28927) (Mask@@10 T@PolymorphicMapType_28948) (o_14 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@14) o_14 $allocated) (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@7) o_14 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@7) o_14 $allocated))
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
(assert  (not (IsPredicateField_16585_35280 nodes)))
(assert  (not (IsWandField_16585_35307 nodes)))
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
(assert (forall ((Heap@@16 T@PolymorphicMapType_28927) (ExhaleHeap@@9 T@PolymorphicMapType_28927) (Mask@@32 T@PolymorphicMapType_28948) (o_14@@0 T@Ref) (f_19@@39 T@Field_40271_40276) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@32) (=> (HasDirectPerm_16717_101552 Mask@@32 o_14@@0 f_19@@39) (= (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@16) o_14@@0 f_19@@39) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@9) o_14@@0 f_19@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@32) (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| ExhaleHeap@@9) o_14@@0 f_19@@39))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_28927) (ExhaleHeap@@10 T@PolymorphicMapType_28927) (Mask@@33 T@PolymorphicMapType_28948) (o_14@@1 T@Ref) (f_19@@40 T@Field_16717_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@33) (=> (HasDirectPerm_16717_53 Mask@@33 o_14@@1 f_19@@40) (= (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@17) o_14@@1 f_19@@40) (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@10) o_14@@1 f_19@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@33) (select (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| ExhaleHeap@@10) o_14@@1 f_19@@40))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_28927) (ExhaleHeap@@11 T@PolymorphicMapType_28927) (Mask@@34 T@PolymorphicMapType_28948) (o_14@@2 T@Ref) (f_19@@41 T@Field_35771_35772) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@34) (=> (HasDirectPerm_16717_16718 Mask@@34 o_14@@2 f_19@@41) (= (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@18) o_14@@2 f_19@@41) (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@11) o_14@@2 f_19@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@34) (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| ExhaleHeap@@11) o_14@@2 f_19@@41))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_28927) (ExhaleHeap@@12 T@PolymorphicMapType_28927) (Mask@@35 T@PolymorphicMapType_28948) (o_14@@3 T@Ref) (f_19@@42 T@Field_16717_44510) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@35) (=> (HasDirectPerm_16717_100895 Mask@@35 o_14@@3 f_19@@42) (= (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@19) o_14@@3 f_19@@42) (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@12) o_14@@3 f_19@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@35) (select (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| ExhaleHeap@@12) o_14@@3 f_19@@42))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_28927) (ExhaleHeap@@13 T@PolymorphicMapType_28927) (Mask@@36 T@PolymorphicMapType_28948) (o_14@@4 T@Ref) (f_19@@43 T@Field_16717_16583) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@36) (=> (HasDirectPerm_16717_16583 Mask@@36 o_14@@4 f_19@@43) (= (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@20) o_14@@4 f_19@@43) (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@13) o_14@@4 f_19@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@36) (select (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| ExhaleHeap@@13) o_14@@4 f_19@@43))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_28927) (ExhaleHeap@@14 T@PolymorphicMapType_28927) (Mask@@37 T@PolymorphicMapType_28948) (o_14@@5 T@Ref) (f_19@@44 T@Field_16582_40276) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@37) (=> (HasDirectPerm_16582_100386 Mask@@37 o_14@@5 f_19@@44) (= (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@21) o_14@@5 f_19@@44) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@14) o_14@@5 f_19@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@37) (select (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| ExhaleHeap@@14) o_14@@5 f_19@@44))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_28927) (ExhaleHeap@@15 T@PolymorphicMapType_28927) (Mask@@38 T@PolymorphicMapType_28948) (o_14@@6 T@Ref) (f_19@@45 T@Field_28987_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@38) (=> (HasDirectPerm_16582_53 Mask@@38 o_14@@6 f_19@@45) (= (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@22) o_14@@6 f_19@@45) (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@15) o_14@@6 f_19@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@38) (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| ExhaleHeap@@15) o_14@@6 f_19@@45))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_28927) (ExhaleHeap@@16 T@PolymorphicMapType_28927) (Mask@@39 T@PolymorphicMapType_28948) (o_14@@7 T@Ref) (f_19@@46 T@Field_16582_16718) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@39) (=> (HasDirectPerm_16582_16718 Mask@@39 o_14@@7 f_19@@46) (= (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@23) o_14@@7 f_19@@46) (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@16) o_14@@7 f_19@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@39) (select (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| ExhaleHeap@@16) o_14@@7 f_19@@46))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_28927) (ExhaleHeap@@17 T@PolymorphicMapType_28927) (Mask@@40 T@PolymorphicMapType_28948) (o_14@@8 T@Ref) (f_19@@47 T@Field_35254_35256) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@40) (=> (HasDirectPerm_16585_44510 Mask@@40 o_14@@8 f_19@@47) (= (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@24) o_14@@8 f_19@@47) (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@17) o_14@@8 f_19@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@40) (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| ExhaleHeap@@17) o_14@@8 f_19@@47))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_28927) (ExhaleHeap@@18 T@PolymorphicMapType_28927) (Mask@@41 T@PolymorphicMapType_28948) (o_14@@9 T@Ref) (f_19@@48 T@Field_29000_29001) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@41) (=> (HasDirectPerm_16582_16583 Mask@@41 o_14@@9 f_19@@48) (= (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@25) o_14@@9 f_19@@48) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@18) o_14@@9 f_19@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@41) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| ExhaleHeap@@18) o_14@@9 f_19@@48))
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
(assert (forall ((Heap@@31 T@PolymorphicMapType_28927) (o_13 T@Ref) (f_13 T@Field_40271_40276) (v T@PolymorphicMapType_29476) ) (! (succHeap Heap@@31 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@31) (store (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@31) o_13 f_13 v) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@31) (store (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@31) o_13 f_13 v) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@31) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_28927) (o_13@@0 T@Ref) (f_13@@0 T@Field_16717_44510) (v@@0 (Array T@Ref Bool)) ) (! (succHeap Heap@@32 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@32) (store (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@32) o_13@@0 f_13@@0 v@@0) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@32) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@32) (store (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@32) o_13@@0 f_13@@0 v@@0) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_28927) (o_13@@1 T@Ref) (f_13@@1 T@Field_35771_35772) (v@@1 T@FrameType) ) (! (succHeap Heap@@33 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@33) (store (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@33) o_13@@1 f_13@@1 v@@1) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@33) (store (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@33) o_13@@1 f_13@@1 v@@1) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@33) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_28927) (o_13@@2 T@Ref) (f_13@@2 T@Field_16717_16583) (v@@2 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@34) (store (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@34) o_13@@2 f_13@@2 v@@2) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@34) (store (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@34) o_13@@2 f_13@@2 v@@2) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@34) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_28927) (o_13@@3 T@Ref) (f_13@@3 T@Field_16717_53) (v@@3 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@35) (store (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@35) o_13@@3 f_13@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@35) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@35) (store (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@35) o_13@@3 f_13@@3 v@@3)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_28927) (o_13@@4 T@Ref) (f_13@@4 T@Field_16582_40276) (v@@4 T@PolymorphicMapType_29476) ) (! (succHeap Heap@@36 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@36) (store (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@36) o_13@@4 f_13@@4 v@@4) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@36) (store (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@36) o_13@@4 f_13@@4 v@@4) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@36) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_28927) (o_13@@5 T@Ref) (f_13@@5 T@Field_35254_35256) (v@@5 (Array T@Ref Bool)) ) (! (succHeap Heap@@37 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@37) (store (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@37) o_13@@5 f_13@@5 v@@5) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@37) (store (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@37) o_13@@5 f_13@@5 v@@5) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@37) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_28927) (o_13@@6 T@Ref) (f_13@@6 T@Field_16582_16718) (v@@6 T@FrameType) ) (! (succHeap Heap@@38 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@38) (store (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@38) o_13@@6 f_13@@6 v@@6) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@38) (store (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@38) o_13@@6 f_13@@6 v@@6) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@38) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_28927) (o_13@@7 T@Ref) (f_13@@7 T@Field_29000_29001) (v@@7 T@Ref) ) (! (succHeap Heap@@39 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@39) (store (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@39) o_13@@7 f_13@@7 v@@7) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@39) (store (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@39) o_13@@7 f_13@@7 v@@7) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@39) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_28927) (o_13@@8 T@Ref) (f_13@@8 T@Field_28987_53) (v@@8 Bool) ) (! (succHeap Heap@@40 (PolymorphicMapType_28927 (store (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@40) o_13@@8 f_13@@8 v@@8) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28927 (store (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@40) o_13@@8 f_13@@8 v@@8) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@40) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@40)))
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
(assert (forall ((o_13@@9 T@Ref) (f_18 T@Field_29000_29001) (Heap@@41 T@PolymorphicMapType_28927) ) (!  (=> (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@41) o_13@@9 $allocated) (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@41) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@41) o_13@@9 f_18) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@41) o_13@@9 f_18))
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
(declare-fun struct@@5 () T@Ref)
(declare-fun o_17 () T@Ref)
(declare-fun Mask@1 () T@PolymorphicMapType_28948)
(declare-fun Heap@@42 () T@PolymorphicMapType_28927)
(declare-fun PostMask@0 () T@PolymorphicMapType_28948)
(declare-fun PostHeap@0 () T@PolymorphicMapType_28927)
(declare-fun this@@16 () T@Ref)
(declare-fun o_2_1 () T@Ref)
(declare-fun Heap@10 () T@PolymorphicMapType_28927)
(declare-fun Mask@6 () T@PolymorphicMapType_28948)
(declare-fun Mask@5 () T@PolymorphicMapType_28948)
(declare-fun o_21 () T@Ref)
(declare-fun x_1 () T@Ref)
(declare-fun UnfoldingMask@6 () T@PolymorphicMapType_28948)
(declare-fun UnfoldingMask@7 () T@PolymorphicMapType_28948)
(declare-fun QPMask@5 () T@PolymorphicMapType_28948)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) T@Ref)
(declare-fun x_2 () T@Ref)
(declare-fun Heap@13 () T@PolymorphicMapType_28927)
(declare-fun Heap@12 () T@PolymorphicMapType_28927)
(declare-fun newPMask@3 () T@PolymorphicMapType_29476)
(declare-fun Heap@14 () T@PolymorphicMapType_28927)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_28948)
(declare-fun UnfoldingMask@5 () T@PolymorphicMapType_28948)
(declare-fun QPMask@4 () T@PolymorphicMapType_28948)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) T@Ref)
(declare-fun Heap@11 () T@PolymorphicMapType_28927)
(declare-fun newPMask@2 () T@PolymorphicMapType_29476)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_37640 ((Array T@Ref Bool)) T@FrameType)
(declare-fun FrameFragment_5727 (Int) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_28948)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_28948)
(declare-fun Heap@8 () T@PolymorphicMapType_28927)
(declare-fun QPMask@2 () T@PolymorphicMapType_28948)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) T@Ref)
(declare-fun Heap@9 () T@PolymorphicMapType_28927)
(declare-fun newPMask@1 () T@PolymorphicMapType_29476)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_28948)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_28948)
(declare-fun QPMask@3 () T@PolymorphicMapType_28948)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) T@Ref)
(declare-fun Heap@7 () T@PolymorphicMapType_28927)
(declare-fun Heap@6 () T@PolymorphicMapType_28927)
(declare-fun newPMask@0 () T@PolymorphicMapType_29476)
(declare-fun Heap@3 () T@PolymorphicMapType_28927)
(declare-fun Heap@4 () T@PolymorphicMapType_28927)
(declare-fun Heap@5 () T@PolymorphicMapType_28927)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun QPMask@1 () T@PolymorphicMapType_28948)
(declare-fun q_1_1 () T@Ref)
(declare-fun Mask@4 () T@PolymorphicMapType_28948)
(declare-fun QPMask@0 () T@PolymorphicMapType_28948)
(declare-fun neverTriggered5 (T@Ref) Bool)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) T@Ref)
(declare-fun Mask@3 () T@PolymorphicMapType_28948)
(declare-fun Mask@2 () T@PolymorphicMapType_28948)
(declare-fun Heap@1 () T@PolymorphicMapType_28927)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) T@Ref)
(declare-fun Heap@2 () T@PolymorphicMapType_28927)
(declare-fun Heap@0 () T@PolymorphicMapType_28927)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_28948)
(set-info :boogie-vc-id add)
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
 (=> (= (ControlFlow 0 0) 113) (let ((anon69_Then_correct  (and (=> (= (ControlFlow 0 103) (- 0 106)) (not (= struct@@5 null))) (=> (not (= struct@@5 null)) (and (=> (= (ControlFlow 0 103) (- 0 105)) (not (= o_17 null))) (=> (not (= o_17 null)) (and (=> (= (ControlFlow 0 103) (- 0 104)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@1) null (inv struct@@5))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@1) null (inv struct@@5)))) (=> (= (ControlFlow 0 103) (- 0 102)) (select (allNodes Heap@@42 struct@@5) o_17))))))))))
(let ((anon68_Then_correct  (and (=> (= (ControlFlow 0 98) (- 0 101)) (not (= struct@@5 null))) (=> (not (= struct@@5 null)) (and (=> (= (ControlFlow 0 98) (- 0 100)) (not (= o_17 null))) (=> (not (= o_17 null)) (and (=> (= (ControlFlow 0 98) (- 0 99)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| PostMask@0) null (inv struct@@5))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| PostMask@0) null (inv struct@@5)))) (=> (= (ControlFlow 0 98) (- 0 97)) (select (allNodes PostHeap@0 struct@@5) o_17))))))))))
(let ((anon15_correct true))
(let ((anon67_Then_correct  (=> (select (allNodes Heap@@42 struct@@5) o_17) (and (and (=> (= (ControlFlow 0 107) 98) anon68_Then_correct) (=> (= (ControlFlow 0 107) 103) anon69_Then_correct)) (=> (= (ControlFlow 0 107) 95) anon15_correct)))))
(let ((anon67_Else_correct  (=> (and (not (select (allNodes Heap@@42 struct@@5) o_17)) (= (ControlFlow 0 96) 95)) anon15_correct)))
(let ((anon66_Then_correct  (=> (= (ControlFlow 0 94) (- 0 93)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@1) null (inv struct@@5)))))))
(let ((anon65_Else_correct true))
(let ((anon64_Else_correct  (=> (= this@@16 (find PostHeap@0 struct@@5 this@@16)) (=> (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)) (and (and (and (=> (= (ControlFlow 0 108) 92) anon65_Else_correct) (=> (= (ControlFlow 0 108) 94) anon66_Then_correct)) (=> (= (ControlFlow 0 108) 107) anon67_Then_correct)) (=> (= (ControlFlow 0 108) 96) anon67_Else_correct))))))
(let ((anon64_Then_correct  (and (=> (= (ControlFlow 0 88) (- 0 91)) (not (= struct@@5 null))) (=> (not (= struct@@5 null)) (and (=> (= (ControlFlow 0 88) (- 0 90)) (not (= this@@16 null))) (=> (not (= this@@16 null)) (and (=> (= (ControlFlow 0 88) (- 0 89)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| PostMask@0) null (inv struct@@5))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| PostMask@0) null (inv struct@@5)))) (=> (= (ControlFlow 0 88) (- 0 87)) (select (allNodes PostHeap@0 struct@@5) this@@16))))))))))
(let ((anon63_Else_correct  (=> (|Set#Equal_16660| (allNodes PostHeap@0 struct@@5) (|Set#Union_16660| (allNodes Heap@@42 struct@@5) (|Set#Singleton_16761| this@@16))) (=> (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)) (and (=> (= (ControlFlow 0 109) 88) anon64_Then_correct) (=> (= (ControlFlow 0 109) 108) anon64_Else_correct))))))
(let ((anon63_Then_correct  (=> (= (ControlFlow 0 86) (- 0 85)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@1) null (inv struct@@5)))))))
(let ((anon62_Then_correct  (=> (= (ControlFlow 0 84) (- 0 83)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| PostMask@0) null (inv struct@@5)))))))
(let ((anon61_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (and (= PostMask@0 (PolymorphicMapType_28948 (store (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| ZeroMask) null (inv struct@@5) (+ (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| ZeroMask) null (inv struct@@5)) FullPerm)) (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| ZeroMask))) (state PostHeap@0 PostMask@0)) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (and (=> (= (ControlFlow 0 110) 84) anon62_Then_correct) (=> (= (ControlFlow 0 110) 86) anon63_Then_correct)) (=> (= (ControlFlow 0 110) 109) anon63_Else_correct))))))
(let ((anon59_correct true))
(let ((anon91_Else_correct  (=> (and (not (select (allNodes Heap@@42 struct@@5) o_2_1)) (= (ControlFlow 0 45) 42)) anon59_correct)))
(let ((anon91_Then_correct  (=> (select (allNodes Heap@@42 struct@@5) o_2_1) (and (=> (= (ControlFlow 0 43) (- 0 44)) (= (find Heap@10 struct@@5 o_2_1) (find Heap@@42 struct@@5 o_2_1))) (=> (= (find Heap@10 struct@@5 o_2_1) (find Heap@@42 struct@@5 o_2_1)) (=> (= (ControlFlow 0 43) 42) anon59_correct))))))
(let ((anon90_Else_correct true))
(let ((anon56_correct  (=> (= Mask@6 (PolymorphicMapType_28948 (store (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@5) null (inv struct@@5) (- (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@5) null (inv struct@@5)) FullPerm)) (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| Mask@5))) (and (=> (= (ControlFlow 0 46) (- 0 48)) (|Set#Equal_16660| (allNodes Heap@10 struct@@5) (|Set#Union_16660| (allNodes Heap@@42 struct@@5) (|Set#Singleton_16761| this@@16)))) (=> (|Set#Equal_16660| (allNodes Heap@10 struct@@5) (|Set#Union_16660| (allNodes Heap@@42 struct@@5) (|Set#Singleton_16761| this@@16))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (= this@@16 (find Heap@10 struct@@5 this@@16))) (=> (= this@@16 (find Heap@10 struct@@5 this@@16)) (and (and (=> (= (ControlFlow 0 46) 41) anon90_Else_correct) (=> (= (ControlFlow 0 46) 43) anon91_Then_correct)) (=> (= (ControlFlow 0 46) 45) anon91_Else_correct)))))))))
(let ((anon89_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 51) 46)) anon56_correct)))
(let ((anon89_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 49) (- 0 50)) (<= FullPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@5) null (inv struct@@5)))) (=> (<= FullPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@5) null (inv struct@@5))) (=> (= (ControlFlow 0 49) 46) anon56_correct))))))
(let ((anon84_Else_correct  (=> (forall ((o_5_1 T@Ref) ) (!  (=> (select (allNodes Heap@@42 struct@@5) o_5_1) (= (find Heap@10 struct@@5 o_5_1) (find Heap@@42 struct@@5 o_5_1)))
 :qid |stdinbpl.1661:20|
 :skolemid |175|
 :pattern ( (select (|allNodes#frame| (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@42) null (inv struct@@5)) struct@@5) o_5_1))
 :pattern ( (|find#frame| (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@42) null (inv struct@@5)) struct@@5 o_5_1))
)) (=> (and (state Heap@10 Mask@5) (state Heap@10 Mask@5)) (and (=> (= (ControlFlow 0 52) 49) anon89_Then_correct) (=> (= (ControlFlow 0 52) 51) anon89_Else_correct))))))
(let ((anon88_Then_correct  (and (=> (= (ControlFlow 0 36) (- 0 39)) (not (= struct@@5 null))) (=> (not (= struct@@5 null)) (and (=> (= (ControlFlow 0 36) (- 0 38)) (not (= o_21 null))) (=> (not (= o_21 null)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@1) null (inv struct@@5))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@1) null (inv struct@@5)))) (=> (= (ControlFlow 0 36) (- 0 35)) (select (allNodes Heap@@42 struct@@5) o_21))))))))))
(let ((anon87_Then_correct  (and (=> (= (ControlFlow 0 31) (- 0 34)) (not (= struct@@5 null))) (=> (not (= struct@@5 null)) (and (=> (= (ControlFlow 0 31) (- 0 33)) (not (= o_21 null))) (=> (not (= o_21 null)) (and (=> (= (ControlFlow 0 31) (- 0 32)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@5) null (inv struct@@5))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@5) null (inv struct@@5)))) (=> (= (ControlFlow 0 31) (- 0 30)) (select (allNodes Heap@10 struct@@5) o_21))))))))))
(let ((anon53_correct true))
(let ((anon86_Then_correct  (=> (select (allNodes Heap@@42 struct@@5) o_21) (and (and (=> (= (ControlFlow 0 40) 31) anon87_Then_correct) (=> (= (ControlFlow 0 40) 36) anon88_Then_correct)) (=> (= (ControlFlow 0 40) 28) anon53_correct)))))
(let ((anon86_Else_correct  (=> (and (not (select (allNodes Heap@@42 struct@@5) o_21)) (= (ControlFlow 0 29) 28)) anon53_correct)))
(let ((anon85_Then_correct  (=> (= (ControlFlow 0 27) (- 0 26)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@1) null (inv struct@@5)))))))
(let ((anon82_Else_correct  (=> (forall ((x_2_1 T@Ref) ) (!  (=> (select (allNodes Heap@@42 struct@@5) x_2_1) (= (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@10) x_2_1 parent) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@42) x_2_1 parent)))
 :qid |stdinbpl.1594:20|
 :skolemid |174|
 :pattern ( (select (|allNodes#frame| (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@42) null (inv struct@@5)) struct@@5) x_2_1))
)) (=> (and (state Heap@10 Mask@5) (state Heap@10 Mask@5)) (and (and (and (=> (= (ControlFlow 0 53) 52) anon84_Else_correct) (=> (= (ControlFlow 0 53) 27) anon85_Then_correct)) (=> (= (ControlFlow 0 53) 40) anon86_Then_correct)) (=> (= (ControlFlow 0 53) 29) anon86_Else_correct))))))
(let ((anon44_correct true))
(let ((anon83_Else_correct  (=> (and (not (select (allNodes Heap@@42 struct@@5) x_1)) (= (ControlFlow 0 25) 22)) anon44_correct)))
(let ((anon83_Then_correct  (=> (select (allNodes Heap@@42 struct@@5) x_1) (and (=> (= (ControlFlow 0 23) (- 0 24)) (= (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@10) x_1 parent) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@42) x_1 parent))) (=> (= (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@10) x_1 parent) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@42) x_1 parent)) (=> (= (ControlFlow 0 23) 22) anon44_correct))))))
(let ((anon40_correct true))
(let ((anon39_correct  (=> (= UnfoldingMask@6 (PolymorphicMapType_28948 (store (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@1) null (inv struct@@5) (- (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@1) null (inv struct@@5)) FullPerm)) (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| Mask@1) (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@1) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| Mask@1) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| Mask@1) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| Mask@1) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| Mask@1) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| Mask@1) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| Mask@1) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| Mask@1))) (=> (and (and (not (= struct@@5 null)) (= UnfoldingMask@7 (PolymorphicMapType_28948 (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| UnfoldingMask@6) (store (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| UnfoldingMask@6) struct@@5 nodes (+ (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| UnfoldingMask@6) struct@@5 nodes) FullPerm)) (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@6) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| UnfoldingMask@6) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| UnfoldingMask@6) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| UnfoldingMask@6) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| UnfoldingMask@6) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| UnfoldingMask@6) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| UnfoldingMask@6) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| UnfoldingMask@6)))) (and (state Heap@@42 UnfoldingMask@7) (not (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) struct@@5 nodes) null)))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (forall ((n_8 T@Ref) (n_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8 n_8_1)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) struct@@5 nodes) n_8)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) struct@@5 nodes) n_8_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_8 n_8_1)))
 :qid |stdinbpl.1530:21|
 :skolemid |165|
))) (=> (forall ((n_8@@0 T@Ref) (n_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@0 n_8_1@@0)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) struct@@5 nodes) n_8@@0)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) struct@@5 nodes) n_8_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_8@@0 n_8_1@@0)))
 :qid |stdinbpl.1530:21|
 :skolemid |165|
)) (=> (and (and (forall ((n_8@@1 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) struct@@5 nodes) n_8@@1) (< NoPerm FullPerm)) (and (qpRange9 n_8@@1) (= (invRecv9 n_8@@1) n_8@@1)))
 :qid |stdinbpl.1536:28|
 :skolemid |166|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@42) n_8@@1 parent))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@5) n_8@@1 parent))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) struct@@5 nodes) n_8@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) struct@@5 nodes) (invRecv9 o_4)) (< NoPerm FullPerm)) (qpRange9 o_4)) (= (invRecv9 o_4) o_4))
 :qid |stdinbpl.1540:28|
 :skolemid |167|
 :pattern ( (invRecv9 o_4))
))) (and (forall ((n_8@@2 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) struct@@5 nodes) n_8@@2) (not (= n_8@@2 null)))
 :qid |stdinbpl.1546:28|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@42) n_8@@2 parent))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@5) n_8@@2 parent))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) struct@@5 nodes) n_8@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) struct@@5 nodes) (invRecv9 o_4@@0)) (< NoPerm FullPerm)) (qpRange9 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv9 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@5) o_4@@0 parent) (+ (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@0 parent) FullPerm)))) (=> (not (and (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) struct@@5 nodes) (invRecv9 o_4@@0)) (< NoPerm FullPerm)) (qpRange9 o_4@@0))) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@5) o_4@@0 parent) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@0 parent))))
 :qid |stdinbpl.1552:28|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@5) o_4@@0 parent))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_28987_53) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@1 f_5) (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| QPMask@5) o_4@@1 f_5)))
 :qid |stdinbpl.1556:35|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| QPMask@5) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_29000_29001) ) (!  (=> (not (= f_5@@0 parent)) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@2 f_5@@0) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@5) o_4@@2 f_5@@0)))
 :qid |stdinbpl.1556:35|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@5) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_35254_35256) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@3 f_5@@1) (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@5) o_4@@3 f_5@@1)))
 :qid |stdinbpl.1556:35|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@5) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_16582_16718) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@4 f_5@@2) (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| QPMask@5) o_4@@4 f_5@@2)))
 :qid |stdinbpl.1556:35|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| QPMask@5) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_16582_40276) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@5 f_5@@3) (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| QPMask@5) o_4@@5 f_5@@3)))
 :qid |stdinbpl.1556:35|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| QPMask@5) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_16717_53) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@6 f_5@@4) (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| QPMask@5) o_4@@6 f_5@@4)))
 :qid |stdinbpl.1556:35|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| QPMask@5) o_4@@6 f_5@@4))
))) (forall ((o_4@@7 T@Ref) (f_5@@5 T@Field_16717_16583) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@7 f_5@@5) (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| QPMask@5) o_4@@7 f_5@@5)))
 :qid |stdinbpl.1556:35|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| QPMask@5) o_4@@7 f_5@@5))
))) (forall ((o_4@@8 T@Ref) (f_5@@6 T@Field_16717_44510) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@8 f_5@@6) (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| QPMask@5) o_4@@8 f_5@@6)))
 :qid |stdinbpl.1556:35|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| QPMask@5) o_4@@8 f_5@@6))
))) (forall ((o_4@@9 T@Ref) (f_5@@7 T@Field_35771_35772) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@9 f_5@@7) (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| QPMask@5) o_4@@9 f_5@@7)))
 :qid |stdinbpl.1556:35|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| QPMask@5) o_4@@9 f_5@@7))
))) (forall ((o_4@@10 T@Ref) (f_5@@8 T@Field_40271_40276) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@10 f_5@@8) (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| QPMask@5) o_4@@10 f_5@@8)))
 :qid |stdinbpl.1556:35|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| UnfoldingMask@7) o_4@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| QPMask@5) o_4@@10 f_5@@8))
))) (state Heap@@42 QPMask@5)) (and (forall ((q_6 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) struct@@5 nodes) q_6) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) struct@@5 nodes) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@42) q_6 parent)))
 :qid |stdinbpl.1562:26|
 :skolemid |171|
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) struct@@5 nodes) q_6))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) struct@@5 nodes) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@42) q_6 parent)))
)) (state Heap@@42 QPMask@5))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (HasDirectPerm_16582_16583 QPMask@5 x_2 parent)) (=> (HasDirectPerm_16582_16583 QPMask@5 x_2 parent) (=> (= Heap@13 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@12) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@12) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@12) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@12) (store (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@12) null (|inv#sm| struct@@5) (PolymorphicMapType_29476 (store (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@12) null (|inv#sm| struct@@5))) struct@@5 nodes true) (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@12) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@12) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@12) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@12) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@12) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@12) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@12) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@12) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@12) null (|inv#sm| struct@@5))))) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@12) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@12) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@12) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@12) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@12))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_20 T@Ref) (f_10 T@Field_35254_35256) ) (!  (=> (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@13) null (|inv#sm| struct@@5))) o_20 f_10) (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| newPMask@3) o_20 f_10))
 :qid |stdinbpl.1574:35|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| newPMask@3) o_20 f_10))
)) (forall ((o_20@@0 T@Ref) (f_10@@0 T@Field_29000_29001) ) (!  (=> (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@13) null (|inv#sm| struct@@5))) o_20@@0 f_10@@0) (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| newPMask@3) o_20@@0 f_10@@0))
 :qid |stdinbpl.1574:35|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| newPMask@3) o_20@@0 f_10@@0))
))) (forall ((o_20@@1 T@Ref) (f_10@@1 T@Field_28987_53) ) (!  (=> (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@13) null (|inv#sm| struct@@5))) o_20@@1 f_10@@1) (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| newPMask@3) o_20@@1 f_10@@1))
 :qid |stdinbpl.1574:35|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| newPMask@3) o_20@@1 f_10@@1))
))) (forall ((o_20@@2 T@Ref) (f_10@@2 T@Field_16582_16718) ) (!  (=> (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@13) null (|inv#sm| struct@@5))) o_20@@2 f_10@@2) (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| newPMask@3) o_20@@2 f_10@@2))
 :qid |stdinbpl.1574:35|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| newPMask@3) o_20@@2 f_10@@2))
))) (forall ((o_20@@3 T@Ref) (f_10@@3 T@Field_16582_40276) ) (!  (=> (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@13) null (|inv#sm| struct@@5))) o_20@@3 f_10@@3) (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| newPMask@3) o_20@@3 f_10@@3))
 :qid |stdinbpl.1574:35|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| newPMask@3) o_20@@3 f_10@@3))
))) (forall ((o_20@@4 T@Ref) (f_10@@4 T@Field_16717_44510) ) (!  (=> (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@13) null (|inv#sm| struct@@5))) o_20@@4 f_10@@4) (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| newPMask@3) o_20@@4 f_10@@4))
 :qid |stdinbpl.1574:35|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| newPMask@3) o_20@@4 f_10@@4))
))) (forall ((o_20@@5 T@Ref) (f_10@@5 T@Field_16717_16583) ) (!  (=> (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@13) null (|inv#sm| struct@@5))) o_20@@5 f_10@@5) (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| newPMask@3) o_20@@5 f_10@@5))
 :qid |stdinbpl.1574:35|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| newPMask@3) o_20@@5 f_10@@5))
))) (forall ((o_20@@6 T@Ref) (f_10@@6 T@Field_16717_53) ) (!  (=> (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@13) null (|inv#sm| struct@@5))) o_20@@6 f_10@@6) (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| newPMask@3) o_20@@6 f_10@@6))
 :qid |stdinbpl.1574:35|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| newPMask@3) o_20@@6 f_10@@6))
))) (forall ((o_20@@7 T@Ref) (f_10@@7 T@Field_35771_35772) ) (!  (=> (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@13) null (|inv#sm| struct@@5))) o_20@@7 f_10@@7) (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| newPMask@3) o_20@@7 f_10@@7))
 :qid |stdinbpl.1574:35|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| newPMask@3) o_20@@7 f_10@@7))
))) (forall ((o_20@@8 T@Ref) (f_10@@8 T@Field_40271_40276) ) (!  (=> (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@13) null (|inv#sm| struct@@5))) o_20@@8 f_10@@8) (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| newPMask@3) o_20@@8 f_10@@8))
 :qid |stdinbpl.1574:35|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| newPMask@3) o_20@@8 f_10@@8))
))) (and (and (forall ((n_9 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@13) struct@@5 nodes) n_9) (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| newPMask@3) n_9 parent))
 :qid |stdinbpl.1578:28|
 :skolemid |173|
)) (= Heap@14 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@13) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@13) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@13) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@13) (store (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@13) null (|inv#sm| struct@@5) newPMask@3) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@13) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@13) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@13) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@13) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@13)))) (and (state Heap@14 Mask@5) (= (ControlFlow 0 9) 7)))) anon40_correct))))))))))))
(let ((anon81_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 14) 9)) anon39_correct)))
(let ((anon81_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (<= FullPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@1) null (inv struct@@5)))) (=> (<= FullPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@1) null (inv struct@@5))) (=> (= (ControlFlow 0 12) 9) anon39_correct))))))
(let ((anon37_correct  (=> (= UnfoldingMask@4 (PolymorphicMapType_28948 (store (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@5) null (inv struct@@5) (- (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@5) null (inv struct@@5)) FullPerm)) (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| Mask@5))) (=> (and (and (not (= struct@@5 null)) (= UnfoldingMask@5 (PolymorphicMapType_28948 (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| UnfoldingMask@4) (store (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| UnfoldingMask@4) struct@@5 nodes (+ (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| UnfoldingMask@4) struct@@5 nodes) FullPerm)) (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@4) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| UnfoldingMask@4) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| UnfoldingMask@4) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| UnfoldingMask@4) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| UnfoldingMask@4) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| UnfoldingMask@4) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| UnfoldingMask@4) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| UnfoldingMask@4)))) (and (state Heap@10 UnfoldingMask@5) (not (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) null)))) (and (=> (= (ControlFlow 0 15) (- 0 17)) (forall ((n_6 T@Ref) (n_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6 n_6_1)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) n_6)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) n_6_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_6 n_6_1)))
 :qid |stdinbpl.1457:21|
 :skolemid |156|
))) (=> (forall ((n_6@@0 T@Ref) (n_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@0 n_6_1@@0)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) n_6@@0)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) n_6_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_6@@0 n_6_1@@0)))
 :qid |stdinbpl.1457:21|
 :skolemid |156|
)) (=> (and (and (forall ((n_6@@1 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) n_6@@1) (< NoPerm FullPerm)) (and (qpRange8 n_6@@1) (= (invRecv8 n_6@@1) n_6@@1)))
 :qid |stdinbpl.1463:28|
 :skolemid |157|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@10) n_6@@1 parent))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@4) n_6@@1 parent))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) n_6@@1))
)) (forall ((o_4@@11 T@Ref) ) (!  (=> (and (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) (invRecv8 o_4@@11)) (< NoPerm FullPerm)) (qpRange8 o_4@@11)) (= (invRecv8 o_4@@11) o_4@@11))
 :qid |stdinbpl.1467:28|
 :skolemid |158|
 :pattern ( (invRecv8 o_4@@11))
))) (and (forall ((n_6@@2 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) n_6@@2) (not (= n_6@@2 null)))
 :qid |stdinbpl.1473:28|
 :skolemid |159|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@10) n_6@@2 parent))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@4) n_6@@2 parent))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) n_6@@2))
)) (forall ((o_4@@12 T@Ref) ) (!  (and (=> (and (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) (invRecv8 o_4@@12)) (< NoPerm FullPerm)) (qpRange8 o_4@@12)) (and (=> (< NoPerm FullPerm) (= (invRecv8 o_4@@12) o_4@@12)) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@4) o_4@@12 parent) (+ (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@12 parent) FullPerm)))) (=> (not (and (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) (invRecv8 o_4@@12)) (< NoPerm FullPerm)) (qpRange8 o_4@@12))) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@4) o_4@@12 parent) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@12 parent))))
 :qid |stdinbpl.1479:28|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@4) o_4@@12 parent))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@13 T@Ref) (f_5@@9 T@Field_28987_53) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@13 f_5@@9) (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| QPMask@4) o_4@@13 f_5@@9)))
 :qid |stdinbpl.1483:35|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@13 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| QPMask@4) o_4@@13 f_5@@9))
)) (forall ((o_4@@14 T@Ref) (f_5@@10 T@Field_29000_29001) ) (!  (=> (not (= f_5@@10 parent)) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@14 f_5@@10) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@4) o_4@@14 f_5@@10)))
 :qid |stdinbpl.1483:35|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@14 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@4) o_4@@14 f_5@@10))
))) (forall ((o_4@@15 T@Ref) (f_5@@11 T@Field_35254_35256) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@15 f_5@@11) (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@4) o_4@@15 f_5@@11)))
 :qid |stdinbpl.1483:35|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@15 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@4) o_4@@15 f_5@@11))
))) (forall ((o_4@@16 T@Ref) (f_5@@12 T@Field_16582_16718) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@16 f_5@@12) (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| QPMask@4) o_4@@16 f_5@@12)))
 :qid |stdinbpl.1483:35|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@16 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| QPMask@4) o_4@@16 f_5@@12))
))) (forall ((o_4@@17 T@Ref) (f_5@@13 T@Field_16582_40276) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@17 f_5@@13) (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| QPMask@4) o_4@@17 f_5@@13)))
 :qid |stdinbpl.1483:35|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@17 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| QPMask@4) o_4@@17 f_5@@13))
))) (forall ((o_4@@18 T@Ref) (f_5@@14 T@Field_16717_53) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@18 f_5@@14) (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| QPMask@4) o_4@@18 f_5@@14)))
 :qid |stdinbpl.1483:35|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@18 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| QPMask@4) o_4@@18 f_5@@14))
))) (forall ((o_4@@19 T@Ref) (f_5@@15 T@Field_16717_16583) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@19 f_5@@15) (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| QPMask@4) o_4@@19 f_5@@15)))
 :qid |stdinbpl.1483:35|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@19 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| QPMask@4) o_4@@19 f_5@@15))
))) (forall ((o_4@@20 T@Ref) (f_5@@16 T@Field_16717_44510) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@20 f_5@@16) (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| QPMask@4) o_4@@20 f_5@@16)))
 :qid |stdinbpl.1483:35|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@20 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| QPMask@4) o_4@@20 f_5@@16))
))) (forall ((o_4@@21 T@Ref) (f_5@@17 T@Field_35771_35772) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@21 f_5@@17) (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| QPMask@4) o_4@@21 f_5@@17)))
 :qid |stdinbpl.1483:35|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@21 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| QPMask@4) o_4@@21 f_5@@17))
))) (forall ((o_4@@22 T@Ref) (f_5@@18 T@Field_40271_40276) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@22 f_5@@18) (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| QPMask@4) o_4@@22 f_5@@18)))
 :qid |stdinbpl.1483:35|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| UnfoldingMask@5) o_4@@22 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| QPMask@4) o_4@@22 f_5@@18))
))) (state Heap@10 QPMask@4)) (and (forall ((q_5 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) q_5) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@10) q_5 parent)))
 :qid |stdinbpl.1489:26|
 :skolemid |162|
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) q_5))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@10) q_5 parent)))
)) (state Heap@10 QPMask@4))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (HasDirectPerm_16582_16583 QPMask@4 x_2 parent)) (=> (HasDirectPerm_16582_16583 QPMask@4 x_2 parent) (=> (= Heap@11 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@10) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@10) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@10) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) (store (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@10) null (|inv#sm| struct@@5) (PolymorphicMapType_29476 (store (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@10) null (|inv#sm| struct@@5))) struct@@5 nodes true) (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@10) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@10) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@10) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@10) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@10) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@10) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@10) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@10) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@10) null (|inv#sm| struct@@5))))) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@10) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@10) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@10) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@10) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@10))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_5 T@Ref) (f T@Field_35254_35256) ) (!  (=> (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@11) null (|inv#sm| struct@@5))) o_5 f) (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| newPMask@2) o_5 f))
 :qid |stdinbpl.1501:35|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| newPMask@2) o_5 f))
)) (forall ((o_5@@0 T@Ref) (f@@0 T@Field_29000_29001) ) (!  (=> (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@11) null (|inv#sm| struct@@5))) o_5@@0 f@@0) (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| newPMask@2) o_5@@0 f@@0))
 :qid |stdinbpl.1501:35|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| newPMask@2) o_5@@0 f@@0))
))) (forall ((o_5@@1 T@Ref) (f@@1 T@Field_28987_53) ) (!  (=> (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@11) null (|inv#sm| struct@@5))) o_5@@1 f@@1) (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| newPMask@2) o_5@@1 f@@1))
 :qid |stdinbpl.1501:35|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| newPMask@2) o_5@@1 f@@1))
))) (forall ((o_5@@2 T@Ref) (f@@2 T@Field_16582_16718) ) (!  (=> (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@11) null (|inv#sm| struct@@5))) o_5@@2 f@@2) (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| newPMask@2) o_5@@2 f@@2))
 :qid |stdinbpl.1501:35|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| newPMask@2) o_5@@2 f@@2))
))) (forall ((o_5@@3 T@Ref) (f@@3 T@Field_16582_40276) ) (!  (=> (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@11) null (|inv#sm| struct@@5))) o_5@@3 f@@3) (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| newPMask@2) o_5@@3 f@@3))
 :qid |stdinbpl.1501:35|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| newPMask@2) o_5@@3 f@@3))
))) (forall ((o_5@@4 T@Ref) (f@@4 T@Field_16717_44510) ) (!  (=> (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@11) null (|inv#sm| struct@@5))) o_5@@4 f@@4) (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| newPMask@2) o_5@@4 f@@4))
 :qid |stdinbpl.1501:35|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| newPMask@2) o_5@@4 f@@4))
))) (forall ((o_5@@5 T@Ref) (f@@5 T@Field_16717_16583) ) (!  (=> (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@11) null (|inv#sm| struct@@5))) o_5@@5 f@@5) (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| newPMask@2) o_5@@5 f@@5))
 :qid |stdinbpl.1501:35|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| newPMask@2) o_5@@5 f@@5))
))) (forall ((o_5@@6 T@Ref) (f@@6 T@Field_16717_53) ) (!  (=> (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@11) null (|inv#sm| struct@@5))) o_5@@6 f@@6) (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| newPMask@2) o_5@@6 f@@6))
 :qid |stdinbpl.1501:35|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| newPMask@2) o_5@@6 f@@6))
))) (forall ((o_5@@7 T@Ref) (f@@7 T@Field_35771_35772) ) (!  (=> (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@11) null (|inv#sm| struct@@5))) o_5@@7 f@@7) (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| newPMask@2) o_5@@7 f@@7))
 :qid |stdinbpl.1501:35|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| newPMask@2) o_5@@7 f@@7))
))) (forall ((o_5@@8 T@Ref) (f@@8 T@Field_40271_40276) ) (!  (=> (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@11) null (|inv#sm| struct@@5))) o_5@@8 f@@8) (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| newPMask@2) o_5@@8 f@@8))
 :qid |stdinbpl.1501:35|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| newPMask@2) o_5@@8 f@@8))
))) (forall ((n_7 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@11) struct@@5 nodes) n_7) (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| newPMask@2) n_7 parent))
 :qid |stdinbpl.1505:28|
 :skolemid |164|
))) (and (and (= Heap@12 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@11) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@11) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@11) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@11) (store (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@11) null (|inv#sm| struct@@5) newPMask@2) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@11) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@11) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@11) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@11) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@11))) (state Heap@12 Mask@5)) (and (|inv#trigger_16717| Heap@@42 (inv struct@@5)) (= (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@42) null (inv struct@@5)) (CombineFrames (FrameFragment_37640 (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) struct@@5 nodes)) (FrameFragment_5727 (|inv#condqp1| Heap@@42 struct@@5))))))) (and (=> (= (ControlFlow 0 15) 12) anon81_Then_correct) (=> (= (ControlFlow 0 15) 14) anon81_Else_correct))))))))))))))
(let ((anon80_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 20) 15)) anon37_correct)))
(let ((anon80_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (<= FullPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@5) null (inv struct@@5)))) (=> (<= FullPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@5) null (inv struct@@5))) (=> (= (ControlFlow 0 18) 15) anon37_correct))))))
(let ((anon79_Then_correct  (=> (select (allNodes Heap@@42 struct@@5) x_2) (=> (and (|inv#trigger_16717| Heap@10 (inv struct@@5)) (= (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@10) null (inv struct@@5)) (CombineFrames (FrameFragment_37640 (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes)) (FrameFragment_5727 (|inv#condqp1| Heap@10 struct@@5))))) (and (=> (= (ControlFlow 0 21) 18) anon80_Then_correct) (=> (= (ControlFlow 0 21) 20) anon80_Else_correct))))))
(let ((anon79_Else_correct  (=> (and (not (select (allNodes Heap@@42 struct@@5) x_2)) (= (ControlFlow 0 8) 7)) anon40_correct)))
(let ((anon78_Then_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@1) null (inv struct@@5)))))))
(let ((anon31_correct  (=> (= UnfoldingMask@0 (PolymorphicMapType_28948 (store (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@5) null (inv struct@@5) (- (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@5) null (inv struct@@5)) FullPerm)) (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| Mask@5))) (=> (and (and (not (= struct@@5 null)) (= UnfoldingMask@1 (PolymorphicMapType_28948 (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| UnfoldingMask@0) (store (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| UnfoldingMask@0) struct@@5 nodes (+ (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| UnfoldingMask@0) struct@@5 nodes) FullPerm)) (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@0) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| UnfoldingMask@0) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| UnfoldingMask@0) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| UnfoldingMask@0) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| UnfoldingMask@0) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| UnfoldingMask@0) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| UnfoldingMask@0) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| UnfoldingMask@0)))) (and (state Heap@8 UnfoldingMask@1) (not (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@8) struct@@5 nodes) null)))) (and (=> (= (ControlFlow 0 54) (- 0 56)) (forall ((n_3 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3 n_3_1)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@8) struct@@5 nodes) n_3)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@8) struct@@5 nodes) n_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3 n_3_1)))
 :qid |stdinbpl.1309:17|
 :skolemid |141|
))) (=> (forall ((n_3@@0 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@0 n_3_1@@0)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@8) struct@@5 nodes) n_3@@0)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@8) struct@@5 nodes) n_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3@@0 n_3_1@@0)))
 :qid |stdinbpl.1309:17|
 :skolemid |141|
)) (=> (and (and (forall ((n_3@@1 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@8) struct@@5 nodes) n_3@@1) (< NoPerm FullPerm)) (and (qpRange6 n_3@@1) (= (invRecv6 n_3@@1) n_3@@1)))
 :qid |stdinbpl.1315:24|
 :skolemid |142|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@8) n_3@@1 parent))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@2) n_3@@1 parent))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@8) struct@@5 nodes) n_3@@1))
)) (forall ((o_4@@23 T@Ref) ) (!  (=> (and (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@8) struct@@5 nodes) (invRecv6 o_4@@23)) (< NoPerm FullPerm)) (qpRange6 o_4@@23)) (= (invRecv6 o_4@@23) o_4@@23))
 :qid |stdinbpl.1319:24|
 :skolemid |143|
 :pattern ( (invRecv6 o_4@@23))
))) (and (forall ((n_3@@2 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@8) struct@@5 nodes) n_3@@2) (not (= n_3@@2 null)))
 :qid |stdinbpl.1325:24|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@8) n_3@@2 parent))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@2) n_3@@2 parent))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@8) struct@@5 nodes) n_3@@2))
)) (forall ((o_4@@24 T@Ref) ) (!  (and (=> (and (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@8) struct@@5 nodes) (invRecv6 o_4@@24)) (< NoPerm FullPerm)) (qpRange6 o_4@@24)) (and (=> (< NoPerm FullPerm) (= (invRecv6 o_4@@24) o_4@@24)) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@2) o_4@@24 parent) (+ (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@24 parent) FullPerm)))) (=> (not (and (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@8) struct@@5 nodes) (invRecv6 o_4@@24)) (< NoPerm FullPerm)) (qpRange6 o_4@@24))) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@2) o_4@@24 parent) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@24 parent))))
 :qid |stdinbpl.1331:24|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@2) o_4@@24 parent))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@25 T@Ref) (f_5@@19 T@Field_28987_53) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@25 f_5@@19) (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| QPMask@2) o_4@@25 f_5@@19)))
 :qid |stdinbpl.1335:31|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@25 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| QPMask@2) o_4@@25 f_5@@19))
)) (forall ((o_4@@26 T@Ref) (f_5@@20 T@Field_29000_29001) ) (!  (=> (not (= f_5@@20 parent)) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@26 f_5@@20) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@2) o_4@@26 f_5@@20)))
 :qid |stdinbpl.1335:31|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@26 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@2) o_4@@26 f_5@@20))
))) (forall ((o_4@@27 T@Ref) (f_5@@21 T@Field_35254_35256) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@27 f_5@@21) (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@2) o_4@@27 f_5@@21)))
 :qid |stdinbpl.1335:31|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@27 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@2) o_4@@27 f_5@@21))
))) (forall ((o_4@@28 T@Ref) (f_5@@22 T@Field_16582_16718) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@28 f_5@@22) (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| QPMask@2) o_4@@28 f_5@@22)))
 :qid |stdinbpl.1335:31|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@28 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| QPMask@2) o_4@@28 f_5@@22))
))) (forall ((o_4@@29 T@Ref) (f_5@@23 T@Field_16582_40276) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@29 f_5@@23) (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| QPMask@2) o_4@@29 f_5@@23)))
 :qid |stdinbpl.1335:31|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@29 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| QPMask@2) o_4@@29 f_5@@23))
))) (forall ((o_4@@30 T@Ref) (f_5@@24 T@Field_16717_53) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@30 f_5@@24) (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| QPMask@2) o_4@@30 f_5@@24)))
 :qid |stdinbpl.1335:31|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@30 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| QPMask@2) o_4@@30 f_5@@24))
))) (forall ((o_4@@31 T@Ref) (f_5@@25 T@Field_16717_16583) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@31 f_5@@25) (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| QPMask@2) o_4@@31 f_5@@25)))
 :qid |stdinbpl.1335:31|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@31 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| QPMask@2) o_4@@31 f_5@@25))
))) (forall ((o_4@@32 T@Ref) (f_5@@26 T@Field_16717_44510) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@32 f_5@@26) (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| QPMask@2) o_4@@32 f_5@@26)))
 :qid |stdinbpl.1335:31|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@32 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| QPMask@2) o_4@@32 f_5@@26))
))) (forall ((o_4@@33 T@Ref) (f_5@@27 T@Field_35771_35772) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@33 f_5@@27) (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| QPMask@2) o_4@@33 f_5@@27)))
 :qid |stdinbpl.1335:31|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@33 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| QPMask@2) o_4@@33 f_5@@27))
))) (forall ((o_4@@34 T@Ref) (f_5@@28 T@Field_40271_40276) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@34 f_5@@28) (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| QPMask@2) o_4@@34 f_5@@28)))
 :qid |stdinbpl.1335:31|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| UnfoldingMask@1) o_4@@34 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| QPMask@2) o_4@@34 f_5@@28))
))) (state Heap@8 QPMask@2)) (and (forall ((q_3 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@8) struct@@5 nodes) q_3) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@8) struct@@5 nodes) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@8) q_3 parent)))
 :qid |stdinbpl.1341:22|
 :skolemid |147|
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@8) struct@@5 nodes) q_3))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@8) struct@@5 nodes) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@8) q_3 parent)))
)) (state Heap@8 QPMask@2))) (and (=> (= (ControlFlow 0 54) (- 0 55)) (HasDirectPerm_16582_16583 QPMask@2 this@@16 parent)) (=> (HasDirectPerm_16582_16583 QPMask@2 this@@16 parent) (=> (= Heap@9 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@8) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@8) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@8) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@8) (store (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@8) null (|inv#sm| struct@@5) (PolymorphicMapType_29476 (store (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@8) null (|inv#sm| struct@@5))) struct@@5 nodes true) (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@8) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@8) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@8) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@8) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@8) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@8) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@8) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@8) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@8) null (|inv#sm| struct@@5))))) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@8) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@8) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@8) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@8) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@8))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_19 T@Ref) (f_23 T@Field_35254_35256) ) (!  (=> (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@9) null (|inv#sm| struct@@5))) o_19 f_23) (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| newPMask@1) o_19 f_23))
 :qid |stdinbpl.1353:31|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| newPMask@1) o_19 f_23))
)) (forall ((o_19@@0 T@Ref) (f_23@@0 T@Field_29000_29001) ) (!  (=> (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@9) null (|inv#sm| struct@@5))) o_19@@0 f_23@@0) (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| newPMask@1) o_19@@0 f_23@@0))
 :qid |stdinbpl.1353:31|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| newPMask@1) o_19@@0 f_23@@0))
))) (forall ((o_19@@1 T@Ref) (f_23@@1 T@Field_28987_53) ) (!  (=> (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@9) null (|inv#sm| struct@@5))) o_19@@1 f_23@@1) (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| newPMask@1) o_19@@1 f_23@@1))
 :qid |stdinbpl.1353:31|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| newPMask@1) o_19@@1 f_23@@1))
))) (forall ((o_19@@2 T@Ref) (f_23@@2 T@Field_16582_16718) ) (!  (=> (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@9) null (|inv#sm| struct@@5))) o_19@@2 f_23@@2) (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| newPMask@1) o_19@@2 f_23@@2))
 :qid |stdinbpl.1353:31|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| newPMask@1) o_19@@2 f_23@@2))
))) (forall ((o_19@@3 T@Ref) (f_23@@3 T@Field_16582_40276) ) (!  (=> (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@9) null (|inv#sm| struct@@5))) o_19@@3 f_23@@3) (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| newPMask@1) o_19@@3 f_23@@3))
 :qid |stdinbpl.1353:31|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| newPMask@1) o_19@@3 f_23@@3))
))) (forall ((o_19@@4 T@Ref) (f_23@@4 T@Field_16717_44510) ) (!  (=> (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@9) null (|inv#sm| struct@@5))) o_19@@4 f_23@@4) (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| newPMask@1) o_19@@4 f_23@@4))
 :qid |stdinbpl.1353:31|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| newPMask@1) o_19@@4 f_23@@4))
))) (forall ((o_19@@5 T@Ref) (f_23@@5 T@Field_16717_16583) ) (!  (=> (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@9) null (|inv#sm| struct@@5))) o_19@@5 f_23@@5) (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| newPMask@1) o_19@@5 f_23@@5))
 :qid |stdinbpl.1353:31|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| newPMask@1) o_19@@5 f_23@@5))
))) (forall ((o_19@@6 T@Ref) (f_23@@6 T@Field_16717_53) ) (!  (=> (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@9) null (|inv#sm| struct@@5))) o_19@@6 f_23@@6) (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| newPMask@1) o_19@@6 f_23@@6))
 :qid |stdinbpl.1353:31|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| newPMask@1) o_19@@6 f_23@@6))
))) (forall ((o_19@@7 T@Ref) (f_23@@7 T@Field_35771_35772) ) (!  (=> (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@9) null (|inv#sm| struct@@5))) o_19@@7 f_23@@7) (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| newPMask@1) o_19@@7 f_23@@7))
 :qid |stdinbpl.1353:31|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| newPMask@1) o_19@@7 f_23@@7))
))) (forall ((o_19@@8 T@Ref) (f_23@@8 T@Field_40271_40276) ) (!  (=> (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@9) null (|inv#sm| struct@@5))) o_19@@8 f_23@@8) (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| newPMask@1) o_19@@8 f_23@@8))
 :qid |stdinbpl.1353:31|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| newPMask@1) o_19@@8 f_23@@8))
))) (and (forall ((n_4_1 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@9) struct@@5 nodes) n_4_1) (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| newPMask@1) n_4_1 parent))
 :qid |stdinbpl.1357:24|
 :skolemid |149|
)) (= Heap@10 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@9) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@9) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@9) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@9) (store (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@9) null (|inv#sm| struct@@5) newPMask@1) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@9) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@9) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@9) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@9) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@9))))) (and (and (state Heap@10 Mask@5) (|inv#trigger_16717| Heap@10 (inv struct@@5))) (and (= (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@10) null (inv struct@@5)) (CombineFrames (FrameFragment_37640 (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes)) (FrameFragment_5727 (|inv#condqp1| Heap@10 struct@@5)))) (= UnfoldingMask@2 (PolymorphicMapType_28948 (store (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@5) null (inv struct@@5) (- (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@5) null (inv struct@@5)) FullPerm)) (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| Mask@5) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| Mask@5)))))) (and (and (and (not (= struct@@5 null)) (= UnfoldingMask@3 (PolymorphicMapType_28948 (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| UnfoldingMask@2) (store (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| UnfoldingMask@2) struct@@5 nodes (+ (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| UnfoldingMask@2) struct@@5 nodes) FullPerm)) (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@2) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| UnfoldingMask@2) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| UnfoldingMask@2) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| UnfoldingMask@2) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| UnfoldingMask@2) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| UnfoldingMask@2) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| UnfoldingMask@2) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| UnfoldingMask@2)))) (and (state Heap@10 UnfoldingMask@3) (not (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) null)))) (and (and (forall ((n_5 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) n_5) (< NoPerm FullPerm)) (and (qpRange7 n_5) (= (invRecv7 n_5) n_5)))
 :qid |stdinbpl.1381:24|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@10) n_5 parent))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@3) n_5 parent))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) n_5))
)) (forall ((o_4@@35 T@Ref) ) (!  (=> (and (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) (invRecv7 o_4@@35)) (< NoPerm FullPerm)) (qpRange7 o_4@@35)) (= (invRecv7 o_4@@35) o_4@@35))
 :qid |stdinbpl.1385:24|
 :skolemid |151|
 :pattern ( (invRecv7 o_4@@35))
))) (and (forall ((n_5@@0 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) n_5@@0) (not (= n_5@@0 null)))
 :qid |stdinbpl.1391:24|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@10) n_5@@0 parent))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@3) n_5@@0 parent))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) n_5@@0))
)) (forall ((o_4@@36 T@Ref) ) (!  (and (=> (and (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) (invRecv7 o_4@@36)) (< NoPerm FullPerm)) (qpRange7 o_4@@36)) (and (=> (< NoPerm FullPerm) (= (invRecv7 o_4@@36) o_4@@36)) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@3) o_4@@36 parent) (+ (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@36 parent) FullPerm)))) (=> (not (and (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) (invRecv7 o_4@@36)) (< NoPerm FullPerm)) (qpRange7 o_4@@36))) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@3) o_4@@36 parent) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@36 parent))))
 :qid |stdinbpl.1397:24|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@3) o_4@@36 parent))
)))))) (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@37 T@Ref) (f_5@@29 T@Field_28987_53) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@37 f_5@@29) (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| QPMask@3) o_4@@37 f_5@@29)))
 :qid |stdinbpl.1401:31|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@37 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| QPMask@3) o_4@@37 f_5@@29))
)) (forall ((o_4@@38 T@Ref) (f_5@@30 T@Field_29000_29001) ) (!  (=> (not (= f_5@@30 parent)) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@38 f_5@@30) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@3) o_4@@38 f_5@@30)))
 :qid |stdinbpl.1401:31|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@38 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@3) o_4@@38 f_5@@30))
))) (forall ((o_4@@39 T@Ref) (f_5@@31 T@Field_35254_35256) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@39 f_5@@31) (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@3) o_4@@39 f_5@@31)))
 :qid |stdinbpl.1401:31|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@39 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@3) o_4@@39 f_5@@31))
))) (forall ((o_4@@40 T@Ref) (f_5@@32 T@Field_16582_16718) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@40 f_5@@32) (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| QPMask@3) o_4@@40 f_5@@32)))
 :qid |stdinbpl.1401:31|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@40 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| QPMask@3) o_4@@40 f_5@@32))
))) (forall ((o_4@@41 T@Ref) (f_5@@33 T@Field_16582_40276) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@41 f_5@@33) (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| QPMask@3) o_4@@41 f_5@@33)))
 :qid |stdinbpl.1401:31|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@41 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| QPMask@3) o_4@@41 f_5@@33))
))) (forall ((o_4@@42 T@Ref) (f_5@@34 T@Field_16717_53) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@42 f_5@@34) (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| QPMask@3) o_4@@42 f_5@@34)))
 :qid |stdinbpl.1401:31|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@42 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| QPMask@3) o_4@@42 f_5@@34))
))) (forall ((o_4@@43 T@Ref) (f_5@@35 T@Field_16717_16583) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@43 f_5@@35) (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| QPMask@3) o_4@@43 f_5@@35)))
 :qid |stdinbpl.1401:31|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@43 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| QPMask@3) o_4@@43 f_5@@35))
))) (forall ((o_4@@44 T@Ref) (f_5@@36 T@Field_16717_44510) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@44 f_5@@36) (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| QPMask@3) o_4@@44 f_5@@36)))
 :qid |stdinbpl.1401:31|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@44 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| QPMask@3) o_4@@44 f_5@@36))
))) (forall ((o_4@@45 T@Ref) (f_5@@37 T@Field_35771_35772) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@45 f_5@@37) (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| QPMask@3) o_4@@45 f_5@@37)))
 :qid |stdinbpl.1401:31|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@45 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| QPMask@3) o_4@@45 f_5@@37))
))) (forall ((o_4@@46 T@Ref) (f_5@@38 T@Field_40271_40276) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@46 f_5@@38) (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| QPMask@3) o_4@@46 f_5@@38)))
 :qid |stdinbpl.1401:31|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| UnfoldingMask@3) o_4@@46 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| QPMask@3) o_4@@46 f_5@@38))
))) (and (state Heap@10 QPMask@3) (forall ((q_4 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) q_4) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@10) q_4 parent)))
 :qid |stdinbpl.1407:22|
 :skolemid |155|
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) q_4))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@10) struct@@5 nodes) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@10) q_4 parent)))
)))) (and (and (state Heap@10 QPMask@3) (= (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@10) this@@16 parent) this@@16)) (and (state Heap@10 Mask@5) (state Heap@10 Mask@5))))) (and (and (and (and (and (=> (= (ControlFlow 0 54) 53) anon82_Else_correct) (=> (= (ControlFlow 0 54) 23) anon83_Then_correct)) (=> (= (ControlFlow 0 54) 25) anon83_Else_correct)) (=> (= (ControlFlow 0 54) 6) anon78_Then_correct)) (=> (= (ControlFlow 0 54) 21) anon79_Then_correct)) (=> (= (ControlFlow 0 54) 8) anon79_Else_correct))))))))))))))
(let ((anon76_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 59) 54)) anon31_correct)))
(let ((anon76_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 57) (- 0 58)) (<= FullPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@5) null (inv struct@@5)))) (=> (<= FullPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@5) null (inv struct@@5))) (=> (= (ControlFlow 0 57) 54) anon31_correct))))))
(let ((anon29_correct  (=> (= Heap@7 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@6) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@6) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@6) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@6) (store (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@6) null (|inv#sm| struct@@5) (PolymorphicMapType_29476 (store (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@6) null (|inv#sm| struct@@5))) struct@@5 nodes true) (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@6) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@6) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@6) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@6) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@6) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@6) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@6) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@6) null (|inv#sm| struct@@5))) (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@6) null (|inv#sm| struct@@5))))) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@6) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@6) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@6) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@6) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@6))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_18 T@Ref) (f_22 T@Field_35254_35256) ) (!  (=> (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@7) null (|inv#sm| struct@@5))) o_18 f_22) (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| newPMask@0) o_18 f_22))
 :qid |stdinbpl.1275:27|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_29476_16585_40444#PolymorphicMapType_29476| newPMask@0) o_18 f_22))
)) (forall ((o_18@@0 T@Ref) (f_22@@0 T@Field_29000_29001) ) (!  (=> (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@7) null (|inv#sm| struct@@5))) o_18@@0 f_22@@0) (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| newPMask@0) o_18@@0 f_22@@0))
 :qid |stdinbpl.1275:27|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| newPMask@0) o_18@@0 f_22@@0))
))) (forall ((o_18@@1 T@Ref) (f_22@@1 T@Field_28987_53) ) (!  (=> (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@7) null (|inv#sm| struct@@5))) o_18@@1 f_22@@1) (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| newPMask@0) o_18@@1 f_22@@1))
 :qid |stdinbpl.1275:27|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_29476_16585_53#PolymorphicMapType_29476| newPMask@0) o_18@@1 f_22@@1))
))) (forall ((o_18@@2 T@Ref) (f_22@@2 T@Field_16582_16718) ) (!  (=> (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@7) null (|inv#sm| struct@@5))) o_18@@2 f_22@@2) (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| newPMask@0) o_18@@2 f_22@@2))
 :qid |stdinbpl.1275:27|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_29476_16585_35772#PolymorphicMapType_29476| newPMask@0) o_18@@2 f_22@@2))
))) (forall ((o_18@@3 T@Ref) (f_22@@3 T@Field_16582_40276) ) (!  (=> (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@7) null (|inv#sm| struct@@5))) o_18@@3 f_22@@3) (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| newPMask@0) o_18@@3 f_22@@3))
 :qid |stdinbpl.1275:27|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_29476_16585_103267#PolymorphicMapType_29476| newPMask@0) o_18@@3 f_22@@3))
))) (forall ((o_18@@4 T@Ref) (f_22@@4 T@Field_16717_44510) ) (!  (=> (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@7) null (|inv#sm| struct@@5))) o_18@@4 f_22@@4) (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| newPMask@0) o_18@@4 f_22@@4))
 :qid |stdinbpl.1275:27|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_29476_35771_103511#PolymorphicMapType_29476| newPMask@0) o_18@@4 f_22@@4))
))) (forall ((o_18@@5 T@Ref) (f_22@@5 T@Field_16717_16583) ) (!  (=> (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@7) null (|inv#sm| struct@@5))) o_18@@5 f_22@@5) (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| newPMask@0) o_18@@5 f_22@@5))
 :qid |stdinbpl.1275:27|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_29476_35771_16583#PolymorphicMapType_29476| newPMask@0) o_18@@5 f_22@@5))
))) (forall ((o_18@@6 T@Ref) (f_22@@6 T@Field_16717_53) ) (!  (=> (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@7) null (|inv#sm| struct@@5))) o_18@@6 f_22@@6) (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| newPMask@0) o_18@@6 f_22@@6))
 :qid |stdinbpl.1275:27|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_29476_35771_53#PolymorphicMapType_29476| newPMask@0) o_18@@6 f_22@@6))
))) (forall ((o_18@@7 T@Ref) (f_22@@7 T@Field_35771_35772) ) (!  (=> (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@7) null (|inv#sm| struct@@5))) o_18@@7 f_22@@7) (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| newPMask@0) o_18@@7 f_22@@7))
 :qid |stdinbpl.1275:27|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_29476_35771_35772#PolymorphicMapType_29476| newPMask@0) o_18@@7 f_22@@7))
))) (forall ((o_18@@8 T@Ref) (f_22@@8 T@Field_40271_40276) ) (!  (=> (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| (select (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@7) null (|inv#sm| struct@@5))) o_18@@8 f_22@@8) (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| newPMask@0) o_18@@8 f_22@@8))
 :qid |stdinbpl.1275:27|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_29476_35771_104335#PolymorphicMapType_29476| newPMask@0) o_18@@8 f_22@@8))
))) (and (forall ((n_2 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@7) struct@@5 nodes) n_2) (select (|PolymorphicMapType_29476_16582_16583#PolymorphicMapType_29476| newPMask@0) n_2 parent))
 :qid |stdinbpl.1279:20|
 :skolemid |140|
)) (= Heap@8 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@7) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@7) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@7) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@7) (store (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@7) null (|inv#sm| struct@@5) newPMask@0) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@7) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@7) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@7) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@7) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@7))))) (and (and (state Heap@8 Mask@5) (state Heap@8 Mask@5)) (and (|inv#trigger_16717| Heap@8 (inv struct@@5)) (= (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@8) null (inv struct@@5)) (CombineFrames (FrameFragment_37640 (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@8) struct@@5 nodes)) (FrameFragment_5727 (|inv#condqp1| Heap@8 struct@@5))))))) (and (=> (= (ControlFlow 0 60) 57) anon76_Then_correct) (=> (= (ControlFlow 0 60) 59) anon76_Else_correct))))))
(let ((anon75_Else_correct  (=> (HasDirectPerm_16717_16718 Mask@5 null (inv struct@@5)) (=> (and (= Heap@6 Heap@3) (= (ControlFlow 0 62) 60)) anon29_correct))))
(let ((anon75_Then_correct  (=> (not (HasDirectPerm_16717_16718 Mask@5 null (inv struct@@5))) (=> (and (and (= Heap@4 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@3) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@3) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@3) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) (store (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@3) null (|inv#sm| struct@@5) ZeroPMask) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@3) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@3) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@3) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@3) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@3))) (= Heap@5 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@4) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@4) (store (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@4) null (inv struct@@5) freshVersion@0) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@4) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@4) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@4) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@4) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@4) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@4) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@4)))) (and (= Heap@6 Heap@5) (= (ControlFlow 0 61) 60))) anon29_correct))))
(let ((anon73_Else_correct  (=> (and (forall ((q_2_1 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) q_2_1) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@3) q_2_1 parent)))
 :qid |stdinbpl.1257:20|
 :skolemid |138|
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) q_2_1))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@3) q_2_1 parent)))
)) (= Mask@5 (PolymorphicMapType_28948 (store (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| QPMask@1) null (inv struct@@5) (+ (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| QPMask@1) null (inv struct@@5)) FullPerm)) (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@1) (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@1) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| QPMask@1) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| QPMask@1) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| QPMask@1) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| QPMask@1) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| QPMask@1) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| QPMask@1) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| QPMask@1)))) (=> (and (and (state Heap@3 Mask@5) (state Heap@3 Mask@5)) (and (|inv#trigger_16717| Heap@3 (inv struct@@5)) (= (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@3) null (inv struct@@5)) (CombineFrames (FrameFragment_37640 (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes)) (FrameFragment_5727 (|inv#condqp1| Heap@3 struct@@5)))))) (and (=> (= (ControlFlow 0 63) 61) anon75_Then_correct) (=> (= (ControlFlow 0 63) 62) anon75_Else_correct))))))
(let ((anon26_correct true))
(let ((anon74_Else_correct  (=> (and (not (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) q_1_1)) (= (ControlFlow 0 4) 1)) anon26_correct)))
(let ((anon74_Then_correct  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) q_1_1) (and (=> (= (ControlFlow 0 2) (- 0 3)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@3) q_1_1 parent))) (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@3) q_1_1 parent)) (=> (= (ControlFlow 0 2) 1) anon26_correct))))))
(let ((anon23_correct  (=> (= Mask@4 (PolymorphicMapType_28948 (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| QPMask@0) (store (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@0) struct@@5 nodes (- (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@0) struct@@5 nodes) FullPerm)) (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@0) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| QPMask@0) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| QPMask@0) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| QPMask@0) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| QPMask@0) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| QPMask@0) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| QPMask@0) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| QPMask@0))) (and (=> (= (ControlFlow 0 64) (- 0 67)) (not (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) null))) (=> (not (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) null)) (and (=> (= (ControlFlow 0 64) (- 0 66)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) n_1)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.1216:17|
 :skolemid |132|
 :pattern ( (neverTriggered5 n_1) (neverTriggered5 n_1_1))
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) n_1@@0)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.1216:17|
 :skolemid |132|
 :pattern ( (neverTriggered5 n_1@@0) (neverTriggered5 n_1_1@@0))
)) (and (=> (= (ControlFlow 0 64) (- 0 65)) (forall ((n_1@@1 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) n_1@@1) (>= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@4) n_1@@1 parent) FullPerm))
 :qid |stdinbpl.1223:17|
 :skolemid |133|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@3) n_1@@1 parent))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@1) n_1@@1 parent))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) n_1@@1))
))) (=> (forall ((n_1@@2 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) n_1@@2) (>= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@4) n_1@@2 parent) FullPerm))
 :qid |stdinbpl.1223:17|
 :skolemid |133|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@3) n_1@@2 parent))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@1) n_1@@2 parent))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) n_1@@2))
)) (=> (forall ((n_1@@3 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) n_1@@3) (< NoPerm FullPerm)) (and (qpRange5 n_1@@3) (= (invRecv5 n_1@@3) n_1@@3)))
 :qid |stdinbpl.1229:22|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@3) n_1@@3 parent))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@1) n_1@@3 parent))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) n_1@@3))
)) (=> (and (forall ((o_4@@47 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) (invRecv5 o_4@@47)) (and (< NoPerm FullPerm) (qpRange5 o_4@@47))) (= (invRecv5 o_4@@47) o_4@@47))
 :qid |stdinbpl.1233:22|
 :skolemid |135|
 :pattern ( (invRecv5 o_4@@47))
)) (forall ((o_4@@48 T@Ref) ) (!  (and (=> (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) (invRecv5 o_4@@48)) (and (< NoPerm FullPerm) (qpRange5 o_4@@48))) (and (= (invRecv5 o_4@@48) o_4@@48) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@1) o_4@@48 parent) (- (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@4) o_4@@48 parent) FullPerm)))) (=> (not (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@3) struct@@5 nodes) (invRecv5 o_4@@48)) (and (< NoPerm FullPerm) (qpRange5 o_4@@48)))) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@1) o_4@@48 parent) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@4) o_4@@48 parent))))
 :qid |stdinbpl.1239:22|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@1) o_4@@48 parent))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@49 T@Ref) (f_5@@39 T@Field_28987_53) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| Mask@4) o_4@@49 f_5@@39) (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| QPMask@1) o_4@@49 f_5@@39)))
 :qid |stdinbpl.1245:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| QPMask@1) o_4@@49 f_5@@39))
)) (forall ((o_4@@50 T@Ref) (f_5@@40 T@Field_29000_29001) ) (!  (=> (not (= f_5@@40 parent)) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@4) o_4@@50 f_5@@40) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@1) o_4@@50 f_5@@40)))
 :qid |stdinbpl.1245:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@1) o_4@@50 f_5@@40))
))) (forall ((o_4@@51 T@Ref) (f_5@@41 T@Field_35254_35256) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| Mask@4) o_4@@51 f_5@@41) (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@1) o_4@@51 f_5@@41)))
 :qid |stdinbpl.1245:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@1) o_4@@51 f_5@@41))
))) (forall ((o_4@@52 T@Ref) (f_5@@42 T@Field_16582_16718) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| Mask@4) o_4@@52 f_5@@42) (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| QPMask@1) o_4@@52 f_5@@42)))
 :qid |stdinbpl.1245:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| QPMask@1) o_4@@52 f_5@@42))
))) (forall ((o_4@@53 T@Ref) (f_5@@43 T@Field_16582_40276) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| Mask@4) o_4@@53 f_5@@43) (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| QPMask@1) o_4@@53 f_5@@43)))
 :qid |stdinbpl.1245:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| QPMask@1) o_4@@53 f_5@@43))
))) (forall ((o_4@@54 T@Ref) (f_5@@44 T@Field_16717_53) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| Mask@4) o_4@@54 f_5@@44) (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| QPMask@1) o_4@@54 f_5@@44)))
 :qid |stdinbpl.1245:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| QPMask@1) o_4@@54 f_5@@44))
))) (forall ((o_4@@55 T@Ref) (f_5@@45 T@Field_16717_16583) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| Mask@4) o_4@@55 f_5@@45) (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| QPMask@1) o_4@@55 f_5@@45)))
 :qid |stdinbpl.1245:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| QPMask@1) o_4@@55 f_5@@45))
))) (forall ((o_4@@56 T@Ref) (f_5@@46 T@Field_16717_44510) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| Mask@4) o_4@@56 f_5@@46) (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| QPMask@1) o_4@@56 f_5@@46)))
 :qid |stdinbpl.1245:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| QPMask@1) o_4@@56 f_5@@46))
))) (forall ((o_4@@57 T@Ref) (f_5@@47 T@Field_35771_35772) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@4) o_4@@57 f_5@@47) (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| QPMask@1) o_4@@57 f_5@@47)))
 :qid |stdinbpl.1245:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| QPMask@1) o_4@@57 f_5@@47))
))) (forall ((o_4@@58 T@Ref) (f_5@@48 T@Field_40271_40276) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| Mask@4) o_4@@58 f_5@@48) (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| QPMask@1) o_4@@58 f_5@@48)))
 :qid |stdinbpl.1245:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| QPMask@1) o_4@@58 f_5@@48))
))) (and (and (=> (= (ControlFlow 0 64) 63) anon73_Else_correct) (=> (= (ControlFlow 0 64) 2) anon74_Then_correct)) (=> (= (ControlFlow 0 64) 4) anon74_Else_correct))))))))))))))
(let ((anon72_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 70) 64)) anon23_correct)))
(let ((anon72_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 68) (- 0 69)) (<= FullPerm (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@0) struct@@5 nodes))) (=> (<= FullPerm (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@0) struct@@5 nodes)) (=> (= (ControlFlow 0 68) 64) anon23_correct))))))
(let ((anon21_correct  (=> (and (and (not (= struct@@5 null)) (= Mask@3 (PolymorphicMapType_28948 (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@2) (store (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| Mask@2) struct@@5 nodes (+ (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| Mask@2) struct@@5 nodes) FullPerm)) (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@2) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| Mask@2) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| Mask@2) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| Mask@2) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| Mask@2) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| Mask@2) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| Mask@2) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| Mask@2)))) (and (state Heap@1 Mask@3) (not (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@1) struct@@5 nodes) null)))) (and (=> (= (ControlFlow 0 71) (- 0 75)) (forall ((n T@Ref) (n_4 T@Ref) ) (!  (=> (and (and (and (and (not (= n n_4)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@1) struct@@5 nodes) n)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@1) struct@@5 nodes) n_4)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n n_4)))
 :qid |stdinbpl.1143:15|
 :skolemid |125|
))) (=> (forall ((n@@0 T@Ref) (n_4@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n@@0 n_4@@0)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@1) struct@@5 nodes) n@@0)) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@1) struct@@5 nodes) n_4@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n@@0 n_4@@0)))
 :qid |stdinbpl.1143:15|
 :skolemid |125|
)) (=> (and (and (forall ((n@@1 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@1) struct@@5 nodes) n@@1) (< NoPerm FullPerm)) (and (qpRange4 n@@1) (= (invRecv4 n@@1) n@@1)))
 :qid |stdinbpl.1149:22|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@1) n@@1 parent))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@0) n@@1 parent))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@1) struct@@5 nodes) n@@1))
)) (forall ((o_4@@59 T@Ref) ) (!  (=> (and (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@1) struct@@5 nodes) (invRecv4 o_4@@59)) (< NoPerm FullPerm)) (qpRange4 o_4@@59)) (= (invRecv4 o_4@@59) o_4@@59))
 :qid |stdinbpl.1153:22|
 :skolemid |127|
 :pattern ( (invRecv4 o_4@@59))
))) (and (forall ((n@@2 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@1) struct@@5 nodes) n@@2) (not (= n@@2 null)))
 :qid |stdinbpl.1159:22|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@1) n@@2 parent))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@0) n@@2 parent))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@1) struct@@5 nodes) n@@2))
)) (forall ((o_4@@60 T@Ref) ) (!  (and (=> (and (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@1) struct@@5 nodes) (invRecv4 o_4@@60)) (< NoPerm FullPerm)) (qpRange4 o_4@@60)) (and (=> (< NoPerm FullPerm) (= (invRecv4 o_4@@60) o_4@@60)) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@0) o_4@@60 parent) (+ (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@3) o_4@@60 parent) FullPerm)))) (=> (not (and (and (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@1) struct@@5 nodes) (invRecv4 o_4@@60)) (< NoPerm FullPerm)) (qpRange4 o_4@@60))) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@0) o_4@@60 parent) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@3) o_4@@60 parent))))
 :qid |stdinbpl.1165:22|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@0) o_4@@60 parent))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@61 T@Ref) (f_5@@49 T@Field_28987_53) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| Mask@3) o_4@@61 f_5@@49) (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| QPMask@0) o_4@@61 f_5@@49)))
 :qid |stdinbpl.1169:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| Mask@3) o_4@@61 f_5@@49))
 :pattern ( (select (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| QPMask@0) o_4@@61 f_5@@49))
)) (forall ((o_4@@62 T@Ref) (f_5@@50 T@Field_29000_29001) ) (!  (=> (not (= f_5@@50 parent)) (= (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@3) o_4@@62 f_5@@50) (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@0) o_4@@62 f_5@@50)))
 :qid |stdinbpl.1169:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@3) o_4@@62 f_5@@50))
 :pattern ( (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@0) o_4@@62 f_5@@50))
))) (forall ((o_4@@63 T@Ref) (f_5@@51 T@Field_35254_35256) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| Mask@3) o_4@@63 f_5@@51) (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@0) o_4@@63 f_5@@51)))
 :qid |stdinbpl.1169:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| Mask@3) o_4@@63 f_5@@51))
 :pattern ( (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@0) o_4@@63 f_5@@51))
))) (forall ((o_4@@64 T@Ref) (f_5@@52 T@Field_16582_16718) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| Mask@3) o_4@@64 f_5@@52) (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| QPMask@0) o_4@@64 f_5@@52)))
 :qid |stdinbpl.1169:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| Mask@3) o_4@@64 f_5@@52))
 :pattern ( (select (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| QPMask@0) o_4@@64 f_5@@52))
))) (forall ((o_4@@65 T@Ref) (f_5@@53 T@Field_16582_40276) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| Mask@3) o_4@@65 f_5@@53) (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| QPMask@0) o_4@@65 f_5@@53)))
 :qid |stdinbpl.1169:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| Mask@3) o_4@@65 f_5@@53))
 :pattern ( (select (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| QPMask@0) o_4@@65 f_5@@53))
))) (forall ((o_4@@66 T@Ref) (f_5@@54 T@Field_16717_53) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| Mask@3) o_4@@66 f_5@@54) (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| QPMask@0) o_4@@66 f_5@@54)))
 :qid |stdinbpl.1169:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| Mask@3) o_4@@66 f_5@@54))
 :pattern ( (select (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| QPMask@0) o_4@@66 f_5@@54))
))) (forall ((o_4@@67 T@Ref) (f_5@@55 T@Field_16717_16583) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| Mask@3) o_4@@67 f_5@@55) (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| QPMask@0) o_4@@67 f_5@@55)))
 :qid |stdinbpl.1169:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| Mask@3) o_4@@67 f_5@@55))
 :pattern ( (select (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| QPMask@0) o_4@@67 f_5@@55))
))) (forall ((o_4@@68 T@Ref) (f_5@@56 T@Field_16717_44510) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| Mask@3) o_4@@68 f_5@@56) (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| QPMask@0) o_4@@68 f_5@@56)))
 :qid |stdinbpl.1169:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| Mask@3) o_4@@68 f_5@@56))
 :pattern ( (select (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| QPMask@0) o_4@@68 f_5@@56))
))) (forall ((o_4@@69 T@Ref) (f_5@@57 T@Field_35771_35772) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@3) o_4@@69 f_5@@57) (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| QPMask@0) o_4@@69 f_5@@57)))
 :qid |stdinbpl.1169:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@3) o_4@@69 f_5@@57))
 :pattern ( (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| QPMask@0) o_4@@69 f_5@@57))
))) (forall ((o_4@@70 T@Ref) (f_5@@58 T@Field_40271_40276) ) (!  (=> true (= (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| Mask@3) o_4@@70 f_5@@58) (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| QPMask@0) o_4@@70 f_5@@58)))
 :qid |stdinbpl.1169:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| Mask@3) o_4@@70 f_5@@58))
 :pattern ( (select (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| QPMask@0) o_4@@70 f_5@@58))
))) (and (and (state Heap@1 QPMask@0) (forall ((q_1 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@1) struct@@5 nodes) q_1) (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@1) struct@@5 nodes) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@1) q_1 parent)))
 :qid |stdinbpl.1175:20|
 :skolemid |131|
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@1) struct@@5 nodes) q_1))
 :pattern ( (select (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@1) struct@@5 nodes) (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@1) q_1 parent)))
))) (and (state Heap@1 QPMask@0) (state Heap@1 QPMask@0)))) (and (=> (= (ControlFlow 0 71) (- 0 74)) (= FullPerm (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@0) this@@16 parent))) (=> (= FullPerm (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| QPMask@0) this@@16 parent)) (=> (and (= Heap@2 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@1) (store (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@1) this@@16 parent this@@16) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@1) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@1) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@1) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@1) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@1) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@1) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@1) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@1))) (state Heap@2 QPMask@0)) (and (=> (= (ControlFlow 0 71) (- 0 73)) (HasDirectPerm_16585_44510 QPMask@0 struct@@5 nodes)) (=> (HasDirectPerm_16585_44510 QPMask@0 struct@@5 nodes) (and (=> (= (ControlFlow 0 71) (- 0 72)) (= FullPerm (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@0) struct@@5 nodes))) (=> (= FullPerm (select (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| QPMask@0) struct@@5 nodes)) (=> (and (= Heap@3 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@2) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@2) (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@2) (store (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@2) struct@@5 nodes (|Set#Union_16660| (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@2) struct@@5 nodes) (|Set#Singleton_16761| this@@16))) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@2) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@2) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@2) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@2) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@2) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@2))) (state Heap@3 QPMask@0)) (and (=> (= (ControlFlow 0 71) 68) anon72_Then_correct) (=> (= (ControlFlow 0 71) 70) anon72_Else_correct)))))))))))))))))
(let ((anon71_Else_correct  (=> (HasDirectPerm_16717_16718 Mask@2 null (inv struct@@5)) (=> (and (= Heap@1 Heap@@42) (= (ControlFlow 0 77) 71)) anon21_correct))))
(let ((anon71_Then_correct  (=> (and (and (not (HasDirectPerm_16717_16718 Mask@2 null (inv struct@@5))) (= Heap@0 (PolymorphicMapType_28927 (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@42) (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@42) (store (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@42) null (inv struct@@5) newVersion@0) (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) (|PolymorphicMapType_28927_16721_40363#PolymorphicMapType_28927| Heap@@42) (|PolymorphicMapType_28927_16582_16718#PolymorphicMapType_28927| Heap@@42) (|PolymorphicMapType_28927_16582_100428#PolymorphicMapType_28927| Heap@@42) (|PolymorphicMapType_28927_16717_16583#PolymorphicMapType_28927| Heap@@42) (|PolymorphicMapType_28927_16717_100937#PolymorphicMapType_28927| Heap@@42) (|PolymorphicMapType_28927_16717_53#PolymorphicMapType_28927| Heap@@42)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 76) 71))) anon21_correct)))
(let ((anon19_correct  (=> (= Mask@2 (PolymorphicMapType_28948 (store (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@1) null (inv struct@@5) (- (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@1) null (inv struct@@5)) FullPerm)) (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| Mask@1) (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@1) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| Mask@1) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| Mask@1) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| Mask@1) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| Mask@1) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| Mask@1) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| Mask@1) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| Mask@1))) (and (=> (= (ControlFlow 0 78) 76) anon71_Then_correct) (=> (= (ControlFlow 0 78) 77) anon71_Else_correct)))))
(let ((anon70_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 81) 78)) anon19_correct)))
(let ((anon70_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 79) (- 0 80)) (<= FullPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@1) null (inv struct@@5)))) (=> (<= FullPerm (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@1) null (inv struct@@5))) (=> (= (ControlFlow 0 79) 78) anon19_correct))))))
(let ((anon61_Else_correct  (=> (and (|inv#trigger_16717| Heap@@42 (inv struct@@5)) (= (select (|PolymorphicMapType_28927_16717_16718#PolymorphicMapType_28927| Heap@@42) null (inv struct@@5)) (CombineFrames (FrameFragment_37640 (select (|PolymorphicMapType_28927_16585_37610#PolymorphicMapType_28927| Heap@@42) struct@@5 nodes)) (FrameFragment_5727 (|inv#condqp1| Heap@@42 struct@@5))))) (and (=> (= (ControlFlow 0 82) 79) anon70_Then_correct) (=> (= (ControlFlow 0 82) 81) anon70_Else_correct)))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@42 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@42) struct@@5 $allocated))) (and (and (select (|PolymorphicMapType_28927_16249_53#PolymorphicMapType_28927| Heap@@42) this@@16 $allocated) (not (= this@@16 null))) (and (= Mask@0 (PolymorphicMapType_28948 (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| ZeroMask) (store (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| ZeroMask) this@@16 parent (+ (select (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| ZeroMask) this@@16 parent) FullPerm)) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| ZeroMask) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| ZeroMask))) (state Heap@@42 Mask@0)))) (and (=> (= (ControlFlow 0 111) (- 0 112)) (HasDirectPerm_16582_16583 Mask@0 this@@16 parent)) (=> (HasDirectPerm_16582_16583 Mask@0 this@@16 parent) (=> (and (= (select (|PolymorphicMapType_28927_16252_16253#PolymorphicMapType_28927| Heap@@42) this@@16 parent) null) (state Heap@@42 Mask@0)) (=> (and (and (not (= struct@@5 null)) (= Mask@1 (PolymorphicMapType_28948 (store (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@0) null (inv struct@@5) (+ (select (|PolymorphicMapType_28948_16717_16718#PolymorphicMapType_28948| Mask@0) null (inv struct@@5)) FullPerm)) (|PolymorphicMapType_28948_16585_37930#PolymorphicMapType_28948| Mask@0) (|PolymorphicMapType_28948_16582_16583#PolymorphicMapType_28948| Mask@0) (|PolymorphicMapType_28948_16717_109525#PolymorphicMapType_28948| Mask@0) (|PolymorphicMapType_28948_16717_16583#PolymorphicMapType_28948| Mask@0) (|PolymorphicMapType_28948_16717_53#PolymorphicMapType_28948| Mask@0) (|PolymorphicMapType_28948_16717_109777#PolymorphicMapType_28948| Mask@0) (|PolymorphicMapType_28948_16585_16718#PolymorphicMapType_28948| Mask@0) (|PolymorphicMapType_28948_16585_53#PolymorphicMapType_28948| Mask@0) (|PolymorphicMapType_28948_16585_110178#PolymorphicMapType_28948| Mask@0)))) (and (state Heap@@42 Mask@1) (state Heap@@42 Mask@1))) (and (=> (= (ControlFlow 0 111) 110) anon61_Then_correct) (=> (= (ControlFlow 0 111) 82) anon61_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 113) 111) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
