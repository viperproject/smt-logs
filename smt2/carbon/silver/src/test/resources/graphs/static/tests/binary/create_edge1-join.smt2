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
(declare-sort T@Field_105221_53 0)
(declare-sort T@Field_105234_105235 0)
(declare-sort T@Field_70297_350718 0)
(declare-sort T@Field_70297_350585 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_105182 0)) (((PolymorphicMapType_105182 (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| (Array T@Ref T@Field_105234_105235 Real)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| (Array T@Ref T@Field_105221_53 Real)) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| (Array T@Ref T@Field_70297_350585 Real)) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| (Array T@Ref T@Field_70297_350718 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_105710 0)) (((PolymorphicMapType_105710 (|PolymorphicMapType_105710_105221_53#PolymorphicMapType_105710| (Array T@Ref T@Field_105221_53 Bool)) (|PolymorphicMapType_105710_105221_105235#PolymorphicMapType_105710| (Array T@Ref T@Field_105234_105235 Bool)) (|PolymorphicMapType_105710_105221_350585#PolymorphicMapType_105710| (Array T@Ref T@Field_70297_350585 Bool)) (|PolymorphicMapType_105710_105221_351698#PolymorphicMapType_105710| (Array T@Ref T@Field_70297_350718 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_105161 0)) (((PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| (Array T@Ref T@Field_105221_53 Bool)) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| (Array T@Ref T@Field_105234_105235 T@Ref)) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| (Array T@Ref T@Field_70297_350718 T@PolymorphicMapType_105710)) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| (Array T@Ref T@Field_70297_350585 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_105221_53)
(declare-sort T@__FieldEnum__DomainType 0)
(declare-fun __left__ () T@__FieldEnum__DomainType)
(declare-fun __right__ () T@__FieldEnum__DomainType)
(declare-fun l () T@Field_105234_105235)
(declare-fun r_11 () T@Field_105234_105235)
(declare-fun marker () T@Field_105221_53)
(declare-fun succHeap (T@PolymorphicMapType_105161 T@PolymorphicMapType_105161) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_105161 T@PolymorphicMapType_105161) Bool)
(declare-fun state (T@PolymorphicMapType_105161 T@PolymorphicMapType_105182) Bool)
(declare-fun |apply_TCFraming'| (T@PolymorphicMapType_105161 (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |apply_TCFraming#trigger| (T@FrameType (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_8621 (Int) T@FrameType)
(declare-fun |apply_TCFraming#condqp3| (T@PolymorphicMapType_105161 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |apply_TCFraming#condqp4| (T@PolymorphicMapType_105161 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |apply_TCFraming#condqp5| (T@PolymorphicMapType_105161 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |apply_TCFraming#condqp6| (T@PolymorphicMapType_105161 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-sort T@EdgeDomainType 0)
(declare-fun exists_path ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun |$$#frame| (T@FrameType (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |$$#condqp1| (T@PolymorphicMapType_105161 (Array T@Ref Bool)) Int)
(declare-fun |$$#condqp2| (T@PolymorphicMapType_105161 (Array T@Ref Bool)) Int)
(declare-fun |Set#Union_70542| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun $$ (T@PolymorphicMapType_105161 (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun GoodMask (T@PolymorphicMapType_105182) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_105710)
(declare-fun dummyFunction_11901 (Bool) Bool)
(declare-fun |apply_TCFraming#triggerStateless| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun edge ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun exists_path_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun |$$'| (T@PolymorphicMapType_105161 (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun dummyFunction_113709 ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun |$$#triggerStateless| ((Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |Set#Intersection_70542| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_70542| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_70542| ((Array T@Ref Bool)) Int)
(declare-fun |$$#trigger| (T@FrameType (Array T@Ref Bool)) Bool)
(declare-fun create_edge (T@Ref T@Ref) T@EdgeDomainType)
(declare-fun apply_noExit ((Array T@EdgeDomainType Bool) (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_105161 T@PolymorphicMapType_105161 T@PolymorphicMapType_105182) Bool)
(declare-fun IsPredicateField_70297_350676 (T@Field_70297_350585) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_70297 (T@Field_70297_350585) T@Field_70297_350718)
(declare-fun HasDirectPerm_70297_350649 (T@PolymorphicMapType_105182 T@Ref T@Field_70297_350585) Bool)
(declare-fun IsWandField_70297_352225 (T@Field_70297_350585) Bool)
(declare-fun WandMaskField_70297 (T@Field_70297_350585) T@Field_70297_350718)
(declare-fun unshared_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun func_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_105161)
(declare-fun ZeroMask () T@PolymorphicMapType_105182)
(declare-fun InsidePredicate_105221_105221 (T@Field_70297_350585 T@FrameType T@Field_70297_350585 T@FrameType) Bool)
(declare-fun |sk_$$#condqp1| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun |sk_$$#condqp2| (Int Int) T@Ref)
(declare-fun IsPredicateField_70297_70298 (T@Field_105234_105235) Bool)
(declare-fun IsWandField_70297_70298 (T@Field_105234_105235) Bool)
(declare-fun IsPredicateField_70303_8460 (T@Field_105221_53) Bool)
(declare-fun IsWandField_70303_8460 (T@Field_105221_53) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_70297_355145 (T@Field_70297_350718) Bool)
(declare-fun IsWandField_70297_355161 (T@Field_70297_350718) Bool)
(declare-fun FullPerm () Real)
(declare-fun |Set#Equal_70309| ((Array T@EdgeDomainType Bool) (Array T@EdgeDomainType Bool)) Bool)
(declare-fun |Set#Equal_70542| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun HasDirectPerm_70297_355516 (T@PolymorphicMapType_105182 T@Ref T@Field_70297_350718) Bool)
(declare-fun HasDirectPerm_70297_53 (T@PolymorphicMapType_105182 T@Ref T@Field_105221_53) Bool)
(declare-fun HasDirectPerm_70297_70298 (T@PolymorphicMapType_105182 T@Ref T@Field_105234_105235) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_105182 T@PolymorphicMapType_105182 T@PolymorphicMapType_105182) Bool)
(declare-fun |Set#Difference_70542| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |sk_apply_TCFraming#condqp3| (Int Int) T@Ref)
(declare-fun |sk_apply_TCFraming#condqp4| (Int Int) T@Ref)
(declare-fun |sk_apply_TCFraming#condqp5| (Int Int) T@Ref)
(declare-fun |sk_apply_TCFraming#condqp6| (Int Int) T@Ref)
(declare-fun |Set#UnionOne_70542| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun acyclic_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun edge_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun |apply_TCFraming#frame| (T@FrameType (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Set#Empty_70542| () (Array T@Ref Bool))
(declare-fun edge_pred (T@EdgeDomainType) T@Ref)
(declare-fun edge_succ (T@EdgeDomainType) T@Ref)
(declare-fun inst_uReach ((Array T@EdgeDomainType Bool) T@Ref) (Array T@Ref Bool))
(declare-fun apply_TCFraming (T@PolymorphicMapType_105161 (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(assert (and (distinct $allocated marker)(distinct __left__ __right__)(distinct l r_11))
)
(assert (forall ((Heap0 T@PolymorphicMapType_105161) (Heap1 T@PolymorphicMapType_105161) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_105161) (Mask T@PolymorphicMapType_105182) (g0 (Array T@Ref Bool)) (g1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap Mask) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp3| Heap g0 g1)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp4| Heap g0 g1)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp5| Heap g0 g1)) (FrameFragment_8621 (|apply_TCFraming#condqp6| Heap g0 g1))))) g0 g1))) (=> (and (forall ((n$0_14 T@Ref) ) (!  (=> (select g0 n$0_14) (not (select g1 n$0_14)))
 :qid |stdinbpl.1401:359|
 :skolemid |137|
 :pattern ( (select g0 n$0_14) (select g1 n$0_14))
)) (forall ((n$1 T@Ref) ) (!  (=> (select g1 n$1) (not (select g0 n$1)))
 :qid |stdinbpl.1404:16|
 :skolemid |138|
 :pattern ( (select g0 n$1) (select g1 n$1))
))) (forall ((u_1 T@Ref) (v_2 T@Ref) ) (!  (=> (and (select g0 u_1) (and (select g0 v_2) (exists_path ($$ Heap g0) u_1 v_2))) (exists_path ($$ Heap (|Set#Union_70542| g0 g1)) u_1 v_2))
 :qid |stdinbpl.1407:17|
 :skolemid |139|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap g0)) (FrameFragment_8621 (|$$#condqp2| Heap g0))) g0) u_1 v_2))
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap (|Set#Union_70542| g0 g1))) (FrameFragment_8621 (|$$#condqp2| Heap (|Set#Union_70542| g0 g1)))) (|Set#Union_70542| g0 g1)) u_1 v_2))
))))
 :qid |stdinbpl.1399:15|
 :skolemid |140|
 :pattern ( (state Heap Mask) (|apply_TCFraming'| Heap g0 g1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_105161) (Mask@@0 T@PolymorphicMapType_105182) (g0@@0 (Array T@Ref Bool)) (g1@@0 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@0 Mask@@0) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp3| Heap@@0 g0@@0 g1@@0)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp4| Heap@@0 g0@@0 g1@@0)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp5| Heap@@0 g0@@0 g1@@0)) (FrameFragment_8621 (|apply_TCFraming#condqp6| Heap@@0 g0@@0 g1@@0))))) g0@@0 g1@@0))) (=> (and (forall ((n$0_14@@0 T@Ref) ) (!  (=> (select g0@@0 n$0_14@@0) (not (select g1@@0 n$0_14@@0)))
 :qid |stdinbpl.1414:359|
 :skolemid |141|
 :pattern ( (select g0@@0 n$0_14@@0) (select g1@@0 n$0_14@@0))
)) (forall ((n$1@@0 T@Ref) ) (!  (=> (select g1@@0 n$1@@0) (not (select g0@@0 n$1@@0)))
 :qid |stdinbpl.1417:16|
 :skolemid |142|
 :pattern ( (select g0@@0 n$1@@0) (select g1@@0 n$1@@0))
))) (forall ((u_1_1 T@Ref) (v_1_1 T@Ref) ) (!  (=> (and (select g1@@0 u_1_1) (and (select g1@@0 v_1_1) (exists_path ($$ Heap@@0 g1@@0) u_1_1 v_1_1))) (exists_path ($$ Heap@@0 (|Set#Union_70542| g1@@0 g0@@0)) u_1_1 v_1_1))
 :qid |stdinbpl.1420:17|
 :skolemid |143|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@0 g1@@0)) (FrameFragment_8621 (|$$#condqp2| Heap@@0 g1@@0))) g1@@0) u_1_1 v_1_1))
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@0 (|Set#Union_70542| g1@@0 g0@@0))) (FrameFragment_8621 (|$$#condqp2| Heap@@0 (|Set#Union_70542| g1@@0 g0@@0)))) (|Set#Union_70542| g1@@0 g0@@0)) u_1_1 v_1_1))
))))
 :qid |stdinbpl.1412:15|
 :skolemid |144|
 :pattern ( (state Heap@@0 Mask@@0) (|apply_TCFraming'| Heap@@0 g0@@0 g1@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_105161) (Mask@@1 T@PolymorphicMapType_105182) ) (!  (=> (state Heap@@1 Mask@@1) (GoodMask Mask@@1))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@1 Mask@@1))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_105161) (Heap1@@0 T@PolymorphicMapType_105161) (Heap2 T@PolymorphicMapType_105161) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_70297_350718) ) (!  (not (select (|PolymorphicMapType_105710_105221_351698#PolymorphicMapType_105710| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_105710_105221_351698#PolymorphicMapType_105710| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_70297_350585) ) (!  (not (select (|PolymorphicMapType_105710_105221_350585#PolymorphicMapType_105710| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_105710_105221_350585#PolymorphicMapType_105710| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_105234_105235) ) (!  (not (select (|PolymorphicMapType_105710_105221_105235#PolymorphicMapType_105710| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_105710_105221_105235#PolymorphicMapType_105710| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_105221_53) ) (!  (not (select (|PolymorphicMapType_105710_105221_53#PolymorphicMapType_105710| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_105710_105221_53#PolymorphicMapType_105710| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_105161) (g0@@1 (Array T@Ref Bool)) (g1@@1 (Array T@Ref Bool)) ) (! (dummyFunction_11901 (|apply_TCFraming#triggerStateless| g0@@1 g1@@1))
 :qid |stdinbpl.1336:15|
 :skolemid |128|
 :pattern ( (|apply_TCFraming'| Heap@@2 g0@@1 g1@@1))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.841:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (start_1 T@Ref) (end_1 T@Ref) ) (! (= (exists_path_ EG_1 start_1 end_1)  (or (= start_1 end_1) (exists ((w_2 T@Ref) ) (!  (and (edge EG_1 start_1 w_2) (exists_path_ EG_1 w_2 end_1))
 :qid |stdinbpl.1036:78|
 :skolemid |90|
 :pattern ( (edge EG_1 start_1 w_2))
 :pattern ( (exists_path_ EG_1 w_2 end_1))
))))
 :qid |stdinbpl.1034:15|
 :skolemid |91|
 :pattern ( (exists_path EG_1 start_1 end_1))
 :pattern ( (edge EG_1 start_1 end_1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_105161) (refs (Array T@Ref Bool)) ) (! (dummyFunction_113709 (|$$#triggerStateless| refs))
 :qid |stdinbpl.1113:15|
 :skolemid |100|
 :pattern ( (|$$'| Heap@@3 refs))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_70542| (|Set#Union_70542| a@@0 b@@0) b@@0) (|Set#Union_70542| a@@0 b@@0))
 :qid |stdinbpl.793:18|
 :skolemid |38|
 :pattern ( (|Set#Union_70542| (|Set#Union_70542| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_70542| (|Set#Intersection_70542| a@@1 b@@1) b@@1) (|Set#Intersection_70542| a@@1 b@@1))
 :qid |stdinbpl.797:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_70542| (|Set#Intersection_70542| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_70542| r) o) (= r o))
 :qid |stdinbpl.762:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_70542| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_70542| (|Set#Union_70542| a@@2 b@@2)) (|Set#Card_70542| (|Set#Intersection_70542| a@@2 b@@2))) (+ (|Set#Card_70542| a@@2) (|Set#Card_70542| b@@2)))
 :qid |stdinbpl.801:18|
 :skolemid |42|
 :pattern ( (|Set#Card_70542| (|Set#Union_70542| a@@2 b@@2)))
 :pattern ( (|Set#Card_70542| (|Set#Intersection_70542| a@@2 b@@2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_105161) (Mask@@2 T@PolymorphicMapType_105182) (refs@@0 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@4 Mask@@2) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@4 refs@@0)) (FrameFragment_8621 (|$$#condqp2| Heap@@4 refs@@0))) refs@@0))) (forall ((p_1 T@Ref) (s_1 T@Ref) ) (! (=  (and (select refs@@0 p_1) (and (select refs@@0 s_1) (or (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@4) p_1 l) s_1) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@4) p_1 r_11) s_1)))) (select (|$$'| Heap@@4 refs@@0) (create_edge p_1 s_1)))
 :qid |stdinbpl.1148:176|
 :skolemid |104|
 :pattern ( (create_edge p_1 s_1))
)))
 :qid |stdinbpl.1146:15|
 :skolemid |105|
 :pattern ( (state Heap@@4 Mask@@2) (|$$'| Heap@@4 refs@@0))
)))
(assert (forall ((EG_1@@0 (Array T@EdgeDomainType Bool)) (U_1 (Array T@Ref Bool)) (M_1 (Array T@Ref Bool)) ) (!  (=> (apply_noExit EG_1@@0 U_1 M_1) (=> (forall ((u_1@@0 T@Ref) (v_2@@0 T@Ref) ) (!  (=> (and (select M_1 u_1@@0) (and (select U_1 v_2@@0) (not (select M_1 v_2@@0)))) (not (edge EG_1@@0 u_1@@0 v_2@@0)))
 :qid |stdinbpl.1012:52|
 :skolemid |85|
 :pattern ( (edge EG_1@@0 u_1@@0 v_2@@0))
 :pattern ( (select M_1 u_1@@0) (select M_1 v_2@@0))
)) (forall ((u_1_1@@0 T@Ref) (v_1_1@@0 T@Ref) ) (!  (=> (and (select M_1 u_1_1@@0) (and (select U_1 v_1_1@@0) (not (select M_1 v_1_1@@0)))) (not (exists_path EG_1@@0 u_1_1@@0 v_1_1@@0)))
 :qid |stdinbpl.1015:17|
 :skolemid |86|
 :pattern ( (exists_path EG_1@@0 u_1_1@@0 v_1_1@@0))
 :pattern ( (select M_1 u_1_1@@0) (select M_1 v_1_1@@0))
))))
 :qid |stdinbpl.1010:15|
 :skolemid |87|
 :pattern ( (apply_noExit EG_1@@0 U_1 M_1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_105161) (refs@@1 (Array T@Ref Bool)) ) (!  (and (= ($$ Heap@@5 refs@@1) (|$$'| Heap@@5 refs@@1)) (dummyFunction_113709 (|$$#triggerStateless| refs@@1)))
 :qid |stdinbpl.1109:15|
 :skolemid |99|
 :pattern ( ($$ Heap@@5 refs@@1))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.844:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_105161) (ExhaleHeap T@PolymorphicMapType_105161) (Mask@@3 T@PolymorphicMapType_105182) (pm_f_15 T@Field_70297_350585) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_70297_350649 Mask@@3 null pm_f_15) (IsPredicateField_70297_350676 pm_f_15)) (= (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@6) null (PredicateMaskField_70297 pm_f_15)) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap) null (PredicateMaskField_70297 pm_f_15)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@3) (IsPredicateField_70297_350676 pm_f_15) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap) null (PredicateMaskField_70297 pm_f_15)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_105161) (ExhaleHeap@@0 T@PolymorphicMapType_105161) (Mask@@4 T@PolymorphicMapType_105182) (pm_f_15@@0 T@Field_70297_350585) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_70297_350649 Mask@@4 null pm_f_15@@0) (IsWandField_70297_352225 pm_f_15@@0)) (= (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@7) null (WandMaskField_70297 pm_f_15@@0)) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@0) null (WandMaskField_70297 pm_f_15@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@4) (IsWandField_70297_352225 pm_f_15@@0) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@0) null (WandMaskField_70297 pm_f_15@@0)))
)))
(assert (forall ((EG_1@@1 (Array T@EdgeDomainType Bool)) ) (! (= (unshared_graph EG_1@@1) (forall ((v1 T@Ref) (v2 T@Ref) (v_2@@1 T@Ref) ) (!  (=> (and (edge EG_1@@1 v1 v_2@@1) (edge EG_1@@1 v2 v_2@@1)) (= v1 v2))
 :qid |stdinbpl.1060:43|
 :skolemid |95|
 :pattern ( (edge EG_1@@1 v1 v_2@@1) (edge EG_1@@1 v2 v_2@@1))
)))
 :qid |stdinbpl.1058:15|
 :skolemid |96|
 :pattern ( (unshared_graph EG_1@@1))
)))
(assert (forall ((EG_1@@2 (Array T@EdgeDomainType Bool)) ) (! (= (func_graph EG_1@@2) (forall ((v1@@0 T@Ref) (v2@@0 T@Ref) (v_2@@2 T@Ref) ) (!  (=> (and (edge EG_1@@2 v_2@@2 v1@@0) (edge EG_1@@2 v_2@@2 v2@@0)) (= v1@@0 v2@@0))
 :qid |stdinbpl.1069:39|
 :skolemid |97|
 :pattern ( (edge EG_1@@2 v_2@@2 v1@@0) (edge EG_1@@2 v_2@@2 v2@@0))
)))
 :qid |stdinbpl.1067:15|
 :skolemid |98|
 :pattern ( (func_graph EG_1@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_105161) (ExhaleHeap@@1 T@PolymorphicMapType_105161) (Mask@@5 T@PolymorphicMapType_105182) (pm_f_15@@1 T@Field_70297_350585) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (and (HasDirectPerm_70297_350649 Mask@@5 null pm_f_15@@1) (IsPredicateField_70297_350676 pm_f_15@@1)) (and (and (and (forall ((o2_15 T@Ref) (f_45 T@Field_105221_53) ) (!  (=> (select (|PolymorphicMapType_105710_105221_53#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@8) null (PredicateMaskField_70297 pm_f_15@@1))) o2_15 f_45) (= (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@8) o2_15 f_45) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@1) o2_15 f_45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@1) o2_15 f_45))
)) (forall ((o2_15@@0 T@Ref) (f_45@@0 T@Field_105234_105235) ) (!  (=> (select (|PolymorphicMapType_105710_105221_105235#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@8) null (PredicateMaskField_70297 pm_f_15@@1))) o2_15@@0 f_45@@0) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@8) o2_15@@0 f_45@@0) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@@1) o2_15@@0 f_45@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@@1) o2_15@@0 f_45@@0))
))) (forall ((o2_15@@1 T@Ref) (f_45@@1 T@Field_70297_350585) ) (!  (=> (select (|PolymorphicMapType_105710_105221_350585#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@8) null (PredicateMaskField_70297 pm_f_15@@1))) o2_15@@1 f_45@@1) (= (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@8) o2_15@@1 f_45@@1) (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| ExhaleHeap@@1) o2_15@@1 f_45@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| ExhaleHeap@@1) o2_15@@1 f_45@@1))
))) (forall ((o2_15@@2 T@Ref) (f_45@@2 T@Field_70297_350718) ) (!  (=> (select (|PolymorphicMapType_105710_105221_351698#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@8) null (PredicateMaskField_70297 pm_f_15@@1))) o2_15@@2 f_45@@2) (= (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@8) o2_15@@2 f_45@@2) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@1) o2_15@@2 f_45@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@1) o2_15@@2 f_45@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (IsPredicateField_70297_350676 pm_f_15@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_105161) (ExhaleHeap@@2 T@PolymorphicMapType_105161) (Mask@@6 T@PolymorphicMapType_105182) (pm_f_15@@2 T@Field_70297_350585) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (=> (and (HasDirectPerm_70297_350649 Mask@@6 null pm_f_15@@2) (IsWandField_70297_352225 pm_f_15@@2)) (and (and (and (forall ((o2_15@@3 T@Ref) (f_45@@3 T@Field_105221_53) ) (!  (=> (select (|PolymorphicMapType_105710_105221_53#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@9) null (WandMaskField_70297 pm_f_15@@2))) o2_15@@3 f_45@@3) (= (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@9) o2_15@@3 f_45@@3) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@2) o2_15@@3 f_45@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@2) o2_15@@3 f_45@@3))
)) (forall ((o2_15@@4 T@Ref) (f_45@@4 T@Field_105234_105235) ) (!  (=> (select (|PolymorphicMapType_105710_105221_105235#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@9) null (WandMaskField_70297 pm_f_15@@2))) o2_15@@4 f_45@@4) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@9) o2_15@@4 f_45@@4) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@@2) o2_15@@4 f_45@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@@2) o2_15@@4 f_45@@4))
))) (forall ((o2_15@@5 T@Ref) (f_45@@5 T@Field_70297_350585) ) (!  (=> (select (|PolymorphicMapType_105710_105221_350585#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@9) null (WandMaskField_70297 pm_f_15@@2))) o2_15@@5 f_45@@5) (= (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@9) o2_15@@5 f_45@@5) (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| ExhaleHeap@@2) o2_15@@5 f_45@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| ExhaleHeap@@2) o2_15@@5 f_45@@5))
))) (forall ((o2_15@@6 T@Ref) (f_45@@6 T@Field_70297_350718) ) (!  (=> (select (|PolymorphicMapType_105710_105221_351698#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@9) null (WandMaskField_70297 pm_f_15@@2))) o2_15@@6 f_45@@6) (= (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@9) o2_15@@6 f_45@@6) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@2) o2_15@@6 f_45@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@2) o2_15@@6 f_45@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (IsWandField_70297_352225 pm_f_15@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1@@3 (Array T@EdgeDomainType Bool)) (u_1@@1 T@Ref) (v_2@@3 T@Ref) (w_2@@0 T@Ref) ) (!  (=> (and (exists_path_ EG_1@@3 u_1@@1 w_2@@0) (exists_path_ EG_1@@3 w_2@@0 v_2@@3)) (exists_path_ EG_1@@3 u_1@@1 v_2@@3))
 :qid |stdinbpl.1043:15|
 :skolemid |92|
 :pattern ( (exists_path EG_1@@3 u_1@@1 w_2@@0) (exists_path EG_1@@3 w_2@@0 v_2@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_105161) (Mask@@7 T@PolymorphicMapType_105182) (refs@@2 (Array T@Ref Bool)) ) (!  (=> (state Heap@@10 Mask@@7) (= (|$$'| Heap@@10 refs@@2) (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@10 refs@@2)) (FrameFragment_8621 (|$$#condqp2| Heap@@10 refs@@2))) refs@@2)))
 :qid |stdinbpl.1120:15|
 :skolemid |101|
 :pattern ( (state Heap@@10 Mask@@7) (|$$'| Heap@@10 refs@@2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_105161) (ExhaleHeap@@3 T@PolymorphicMapType_105161) (Mask@@8 T@PolymorphicMapType_105182) (o_33 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@8) (=> (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@11) o_33 $allocated) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@3) o_33 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@8) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@3) o_33 $allocated))
)))
(assert (forall ((p T@Field_70297_350585) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_105221_105221 p v_1 p w))
 :qid |stdinbpl.739:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_105221_105221 p v_1 p w))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_105161) (Heap1Heap T@PolymorphicMapType_105161) (refs@@3 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select refs@@3 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select refs@@3 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select refs@@3 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap2Heap) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3)) l) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap1Heap) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3)) l)))) (= (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3)))
 :qid |stdinbpl.1130:15|
 :skolemid |102|
 :pattern ( (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_105161) (Heap1Heap@@0 T@PolymorphicMapType_105161) (refs@@4 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select refs@@4 (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select refs@@4 (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select refs@@4 (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap2Heap@@0) (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4)) r_11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap1Heap@@0) (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4)) r_11)))) (= (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4)))
 :qid |stdinbpl.1140:15|
 :skolemid |103|
 :pattern ( (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert  (not (IsPredicateField_70297_70298 l)))
(assert  (not (IsWandField_70297_70298 l)))
(assert  (not (IsPredicateField_70297_70298 r_11)))
(assert  (not (IsWandField_70297_70298 r_11)))
(assert  (not (IsPredicateField_70303_8460 marker)))
(assert  (not (IsWandField_70303_8460 marker)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_105161) (ExhaleHeap@@4 T@PolymorphicMapType_105161) (Mask@@9 T@PolymorphicMapType_105182) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_105182) (o_2@@3 T@Ref) (f_4@@3 T@Field_70297_350718) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@@10) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_70297_355145 f_4@@3))) (not (IsWandField_70297_355161 f_4@@3))) (<= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@@10) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@@10) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_105182) (o_2@@4 T@Ref) (f_4@@4 T@Field_70297_350585) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@@11) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_70297_350676 f_4@@4))) (not (IsWandField_70297_352225 f_4@@4))) (<= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@@11) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@@11) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_105182) (o_2@@5 T@Ref) (f_4@@5 T@Field_105221_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@@12) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_70303_8460 f_4@@5))) (not (IsWandField_70303_8460 f_4@@5))) (<= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@@12) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@@12) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_105182) (o_2@@6 T@Ref) (f_4@@6 T@Field_105234_105235) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@@13) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_70297_70298 f_4@@6))) (not (IsWandField_70297_70298 f_4@@6))) (<= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@@13) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@@13) o_2@@6 f_4@@6))
)))
(assert (forall ((a@@4 (Array T@EdgeDomainType Bool)) (b@@3 (Array T@EdgeDomainType Bool)) ) (! (= (|Set#Equal_70309| a@@4 b@@3) (forall ((o@@0 T@EdgeDomainType) ) (! (= (select a@@4 o@@0) (select b@@3 o@@0))
 :qid |stdinbpl.826:31|
 :skolemid |48|
 :pattern ( (select a@@4 o@@0))
 :pattern ( (select b@@3 o@@0))
)))
 :qid |stdinbpl.825:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_70309| a@@4 b@@3))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) ) (! (= (|Set#Equal_70542| a@@5 b@@4) (forall ((o@@1 T@Ref) ) (! (= (select a@@5 o@@1) (select b@@4 o@@1))
 :qid |stdinbpl.826:31|
 :skolemid |48|
 :pattern ( (select a@@5 o@@1))
 :pattern ( (select b@@4 o@@1))
)))
 :qid |stdinbpl.825:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_70542| a@@5 b@@4))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_105182) (o_2@@7 T@Ref) (f_4@@7 T@Field_70297_350718) ) (! (= (HasDirectPerm_70297_355516 Mask@@14 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@@14) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_70297_355516 Mask@@14 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_105182) (o_2@@8 T@Ref) (f_4@@8 T@Field_70297_350585) ) (! (= (HasDirectPerm_70297_350649 Mask@@15 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@@15) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_70297_350649 Mask@@15 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_105182) (o_2@@9 T@Ref) (f_4@@9 T@Field_105221_53) ) (! (= (HasDirectPerm_70297_53 Mask@@16 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@@16) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_70297_53 Mask@@16 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_105182) (o_2@@10 T@Ref) (f_4@@10 T@Field_105234_105235) ) (! (= (HasDirectPerm_70297_70298 Mask@@17 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@@17) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_70297_70298 Mask@@17 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.727:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_105161) (ExhaleHeap@@5 T@PolymorphicMapType_105161) (Mask@@18 T@PolymorphicMapType_105182) (o_33@@0 T@Ref) (f_45@@7 T@Field_70297_350718) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_70297_355516 Mask@@18 o_33@@0 f_45@@7) (= (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@13) o_33@@0 f_45@@7) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@5) o_33@@0 f_45@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@5) o_33@@0 f_45@@7))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_105161) (ExhaleHeap@@6 T@PolymorphicMapType_105161) (Mask@@19 T@PolymorphicMapType_105182) (o_33@@1 T@Ref) (f_45@@8 T@Field_70297_350585) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_70297_350649 Mask@@19 o_33@@1 f_45@@8) (= (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@14) o_33@@1 f_45@@8) (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| ExhaleHeap@@6) o_33@@1 f_45@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| ExhaleHeap@@6) o_33@@1 f_45@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_105161) (ExhaleHeap@@7 T@PolymorphicMapType_105161) (Mask@@20 T@PolymorphicMapType_105182) (o_33@@2 T@Ref) (f_45@@9 T@Field_105221_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_70297_53 Mask@@20 o_33@@2 f_45@@9) (= (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@15) o_33@@2 f_45@@9) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@7) o_33@@2 f_45@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@7) o_33@@2 f_45@@9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_105161) (ExhaleHeap@@8 T@PolymorphicMapType_105161) (Mask@@21 T@PolymorphicMapType_105182) (o_33@@3 T@Ref) (f_45@@10 T@Field_105234_105235) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_70297_70298 Mask@@21 o_33@@3 f_45@@10) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@16) o_33@@3 f_45@@10) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@@8) o_33@@3 f_45@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@@8) o_33@@3 f_45@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_70297_350718) ) (! (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_70297_350585) ) (! (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_105221_53) ) (! (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_105234_105235) ) (! (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_105182) (SummandMask1 T@PolymorphicMapType_105182) (SummandMask2 T@PolymorphicMapType_105182) (o_2@@15 T@Ref) (f_4@@15 T@Field_70297_350718) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_105182) (SummandMask1@@0 T@PolymorphicMapType_105182) (SummandMask2@@0 T@PolymorphicMapType_105182) (o_2@@16 T@Ref) (f_4@@16 T@Field_70297_350585) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_105182) (SummandMask1@@1 T@PolymorphicMapType_105182) (SummandMask2@@1 T@PolymorphicMapType_105182) (o_2@@17 T@Ref) (f_4@@17 T@Field_105221_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_105182) (SummandMask1@@2 T@PolymorphicMapType_105182) (SummandMask2@@2 T@PolymorphicMapType_105182) (o_2@@18 T@Ref) (f_4@@18 T@Field_105234_105235) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (o@@2 T@Ref) ) (! (= (select (|Set#Intersection_70542| a@@6 b@@5) o@@2)  (and (select a@@6 o@@2) (select b@@5 o@@2)))
 :qid |stdinbpl.790:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_70542| a@@6 b@@5) o@@2))
 :pattern ( (|Set#Intersection_70542| a@@6 b@@5) (select a@@6 o@@2))
 :pattern ( (|Set#Intersection_70542| a@@6 b@@5) (select b@@5 o@@2))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (o@@3 T@Ref) ) (! (= (select (|Set#Difference_70542| a@@7 b@@6) o@@3)  (and (select a@@7 o@@3) (not (select b@@6 o@@3))))
 :qid |stdinbpl.805:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_70542| a@@7 b@@6) o@@3))
 :pattern ( (|Set#Difference_70542| a@@7 b@@6) (select a@@7 o@@3))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_105161) (Heap1Heap@@1 T@PolymorphicMapType_105161) (g0@@2 (Array T@Ref Bool)) (g1@@2 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g0@@2 (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2))) (< NoPerm FullPerm))  (and (select g0@@2 (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2))) (< NoPerm FullPerm))) (=> (and (select g0@@2 (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap2Heap@@1) (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2)) l) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap1Heap@@1) (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2)) l)))) (= (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2)))
 :qid |stdinbpl.1353:15|
 :skolemid |130|
 :pattern ( (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_105161) (Heap1Heap@@2 T@PolymorphicMapType_105161) (g0@@3 (Array T@Ref Bool)) (g1@@3 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g0@@3 (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3))) (< NoPerm FullPerm))  (and (select g0@@3 (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3))) (< NoPerm FullPerm))) (=> (and (select g0@@3 (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap2Heap@@2) (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3)) r_11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap1Heap@@2) (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3)) r_11)))) (= (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3)))
 :qid |stdinbpl.1363:15|
 :skolemid |131|
 :pattern ( (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap2Heap@@3 T@PolymorphicMapType_105161) (Heap1Heap@@3 T@PolymorphicMapType_105161) (g0@@4 (Array T@Ref Bool)) (g1@@4 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g1@@4 (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4))) (< NoPerm FullPerm))  (and (select g1@@4 (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4))) (< NoPerm FullPerm))) (=> (and (select g1@@4 (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap2Heap@@3) (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4)) l) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap1Heap@@3) (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4)) l)))) (= (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4)))
 :qid |stdinbpl.1373:15|
 :skolemid |132|
 :pattern ( (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4) (succHeapTrans Heap2Heap@@3 Heap1Heap@@3))
)))
(assert (forall ((Heap2Heap@@4 T@PolymorphicMapType_105161) (Heap1Heap@@4 T@PolymorphicMapType_105161) (g0@@5 (Array T@Ref Bool)) (g1@@5 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g1@@5 (|sk_apply_TCFraming#condqp6| (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5))) (< NoPerm FullPerm))  (and (select g1@@5 (|sk_apply_TCFraming#condqp6| (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5))) (< NoPerm FullPerm))) (=> (and (select g1@@5 (|sk_apply_TCFraming#condqp6| (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap2Heap@@4) (|sk_apply_TCFraming#condqp6| (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5)) r_11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap1Heap@@4) (|sk_apply_TCFraming#condqp6| (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5)) r_11)))) (= (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5)))
 :qid |stdinbpl.1383:15|
 :skolemid |133|
 :pattern ( (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5) (succHeapTrans Heap2Heap@@4 Heap1Heap@@4))
)))
(assert (forall ((a@@8 (Array T@EdgeDomainType Bool)) (b@@7 (Array T@EdgeDomainType Bool)) ) (!  (=> (|Set#Equal_70309| a@@8 b@@7) (= a@@8 b@@7))
 :qid |stdinbpl.827:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_70309| a@@8 b@@7))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_70542| a@@9 b@@8) (= a@@9 b@@8))
 :qid |stdinbpl.827:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_70542| a@@9 b@@8))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@10 y) (select (|Set#UnionOne_70542| a@@10 x) y))
 :qid |stdinbpl.770:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_70542| a@@10 x) (select a@@10 y))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@11 y@@0) (select (|Set#Union_70542| a@@11 b@@9) y@@0))
 :qid |stdinbpl.780:18|
 :skolemid |35|
 :pattern ( (|Set#Union_70542| a@@11 b@@9) (select a@@11 y@@0))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@10 y@@1) (select (|Set#Union_70542| a@@12 b@@10) y@@1))
 :qid |stdinbpl.782:18|
 :skolemid |36|
 :pattern ( (|Set#Union_70542| a@@12 b@@10) (select b@@10 y@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_105161) (Mask@@22 T@PolymorphicMapType_105182) (g0@@6 (Array T@Ref Bool)) (g1@@6 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@17 Mask@@22) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp3| Heap@@17 g0@@6 g1@@6)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp4| Heap@@17 g0@@6 g1@@6)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp5| Heap@@17 g0@@6 g1@@6)) (FrameFragment_8621 (|apply_TCFraming#condqp6| Heap@@17 g0@@6 g1@@6))))) g0@@6 g1@@6))) (=> (and (forall ((n$0_14@@1 T@Ref) ) (!  (=> (select g0@@6 n$0_14@@1) (not (select g1@@6 n$0_14@@1)))
 :qid |stdinbpl.1427:359|
 :skolemid |145|
 :pattern ( (select g0@@6 n$0_14@@1) (select g1@@6 n$0_14@@1))
)) (forall ((n$1@@1 T@Ref) ) (!  (=> (select g1@@6 n$1@@1) (not (select g0@@6 n$1@@1)))
 :qid |stdinbpl.1430:16|
 :skolemid |146|
 :pattern ( (select g0@@6 n$1@@1) (select g1@@6 n$1@@1))
))) (forall ((u_2_2 T@Ref) (v_2_2 T@Ref) ) (!  (=> (and (select g0@@6 u_2_2) (and (select g0@@6 v_2_2) (not (exists_path ($$ Heap@@17 g0@@6) u_2_2 v_2_2)))) (not (exists_path ($$ Heap@@17 (|Set#Union_70542| g0@@6 g1@@6)) u_2_2 v_2_2)))
 :qid |stdinbpl.1433:17|
 :skolemid |147|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@17 g0@@6)) (FrameFragment_8621 (|$$#condqp2| Heap@@17 g0@@6))) g0@@6) u_2_2 v_2_2))
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@17 (|Set#Union_70542| g0@@6 g1@@6))) (FrameFragment_8621 (|$$#condqp2| Heap@@17 (|Set#Union_70542| g0@@6 g1@@6)))) (|Set#Union_70542| g0@@6 g1@@6)) u_2_2 v_2_2))
))))
 :qid |stdinbpl.1425:15|
 :skolemid |148|
 :pattern ( (state Heap@@17 Mask@@22) (|apply_TCFraming'| Heap@@17 g0@@6 g1@@6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_105161) (Mask@@23 T@PolymorphicMapType_105182) (g0@@7 (Array T@Ref Bool)) (g1@@7 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@18 Mask@@23) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp3| Heap@@18 g0@@7 g1@@7)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp4| Heap@@18 g0@@7 g1@@7)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp5| Heap@@18 g0@@7 g1@@7)) (FrameFragment_8621 (|apply_TCFraming#condqp6| Heap@@18 g0@@7 g1@@7))))) g0@@7 g1@@7))) (=> (and (forall ((n$0_14@@2 T@Ref) ) (!  (=> (select g0@@7 n$0_14@@2) (not (select g1@@7 n$0_14@@2)))
 :qid |stdinbpl.1440:359|
 :skolemid |149|
 :pattern ( (select g0@@7 n$0_14@@2) (select g1@@7 n$0_14@@2))
)) (forall ((n$1@@2 T@Ref) ) (!  (=> (select g1@@7 n$1@@2) (not (select g0@@7 n$1@@2)))
 :qid |stdinbpl.1443:16|
 :skolemid |150|
 :pattern ( (select g0@@7 n$1@@2) (select g1@@7 n$1@@2))
))) (forall ((u_3_1 T@Ref) (v_3_1 T@Ref) ) (!  (=> (and (select g1@@7 u_3_1) (and (select g1@@7 v_3_1) (not (exists_path ($$ Heap@@18 g1@@7) u_3_1 v_3_1)))) (not (exists_path ($$ Heap@@18 (|Set#Union_70542| g1@@7 g0@@7)) u_3_1 v_3_1)))
 :qid |stdinbpl.1446:17|
 :skolemid |151|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@18 g1@@7)) (FrameFragment_8621 (|$$#condqp2| Heap@@18 g1@@7))) g1@@7) u_3_1 v_3_1))
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@18 (|Set#Union_70542| g0@@7 g1@@7))) (FrameFragment_8621 (|$$#condqp2| Heap@@18 (|Set#Union_70542| g0@@7 g1@@7)))) (|Set#Union_70542| g0@@7 g1@@7)) u_3_1 v_3_1))
))))
 :qid |stdinbpl.1438:15|
 :skolemid |152|
 :pattern ( (state Heap@@18 Mask@@23) (|apply_TCFraming'| Heap@@18 g0@@7 g1@@7))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@4 T@Ref) ) (! (= (select (|Set#UnionOne_70542| a@@13 x@@0) o@@4)  (or (= o@@4 x@@0) (select a@@13 o@@4)))
 :qid |stdinbpl.766:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_70542| a@@13 x@@0) o@@4))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@11 y@@2) (not (select (|Set#Difference_70542| a@@14 b@@11) y@@2)))
 :qid |stdinbpl.807:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_70542| a@@14 b@@11) (select b@@11 y@@2))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_70542| (|Set#Difference_70542| a@@15 b@@12)) (|Set#Card_70542| (|Set#Difference_70542| b@@12 a@@15))) (|Set#Card_70542| (|Set#Intersection_70542| a@@15 b@@12))) (|Set#Card_70542| (|Set#Union_70542| a@@15 b@@12))) (= (|Set#Card_70542| (|Set#Difference_70542| a@@15 b@@12)) (- (|Set#Card_70542| a@@15) (|Set#Card_70542| (|Set#Intersection_70542| a@@15 b@@12)))))
 :qid |stdinbpl.809:18|
 :skolemid |45|
 :pattern ( (|Set#Card_70542| (|Set#Difference_70542| a@@15 b@@12)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_70542| s))
 :qid |stdinbpl.752:18|
 :skolemid |22|
 :pattern ( (|Set#Card_70542| s))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_70542| a@@16 x@@1) x@@1)
 :qid |stdinbpl.768:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_70542| a@@16 x@@1))
)))
(assert (forall ((EG_1@@4 (Array T@EdgeDomainType Bool)) ) (! (= (acyclic_graph EG_1@@4) (forall ((v1@@1 T@Ref) (v2@@1 T@Ref) ) (!  (or (not (edge EG_1@@4 v1@@1 v2@@1)) (not (exists_path EG_1@@4 v2@@1 v1@@1)))
 :qid |stdinbpl.1051:42|
 :skolemid |93|
 :pattern ( (edge EG_1@@4 v1@@1 v2@@1))
 :pattern ( (exists_path EG_1@@4 v2@@1 v1@@1))
)))
 :qid |stdinbpl.1049:15|
 :skolemid |94|
 :pattern ( (acyclic_graph EG_1@@4))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@17 x@@2) (= (|Set#Card_70542| (|Set#UnionOne_70542| a@@17 x@@2)) (|Set#Card_70542| a@@17)))
 :qid |stdinbpl.772:18|
 :skolemid |32|
 :pattern ( (|Set#Card_70542| (|Set#UnionOne_70542| a@@17 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_70542| (|Set#Singleton_70542| r@@0)) 1)
 :qid |stdinbpl.763:18|
 :skolemid |28|
 :pattern ( (|Set#Card_70542| (|Set#Singleton_70542| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_70542| r@@1) r@@1)
 :qid |stdinbpl.761:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_70542| r@@1))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_105161) (Mask@@24 T@PolymorphicMapType_105182) (g0@@8 (Array T@Ref Bool)) (g1@@8 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@19 Mask@@24) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp3| Heap@@19 g0@@8 g1@@8)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp4| Heap@@19 g0@@8 g1@@8)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp5| Heap@@19 g0@@8 g1@@8)) (FrameFragment_8621 (|apply_TCFraming#condqp6| Heap@@19 g0@@8 g1@@8))))) g0@@8 g1@@8))) (=> (and (forall ((n$0_14@@3 T@Ref) ) (!  (=> (select g0@@8 n$0_14@@3) (not (select g1@@8 n$0_14@@3)))
 :qid |stdinbpl.1391:359|
 :skolemid |134|
 :pattern ( (select g0@@8 n$0_14@@3) (select g1@@8 n$0_14@@3))
)) (forall ((n$1@@3 T@Ref) ) (!  (=> (select g1@@8 n$1@@3) (not (select g0@@8 n$1@@3)))
 :qid |stdinbpl.1394:16|
 :skolemid |135|
 :pattern ( (select g0@@8 n$1@@3) (select g1@@8 n$1@@3))
))) (|Set#Equal_70542| (|Set#Union_70542| g0@@8 g1@@8) (|Set#Union_70542| g1@@8 g0@@8))))
 :qid |stdinbpl.1389:15|
 :skolemid |136|
 :pattern ( (state Heap@@19 Mask@@24) (|apply_TCFraming'| Heap@@19 g0@@8 g1@@8))
)))
(assert (forall ((EG_1@@5 (Array T@EdgeDomainType Bool)) (p_1@@0 T@Ref) (s_1@@0 T@Ref) ) (! (= (edge_ EG_1@@5 p_1@@0 s_1@@0) (select EG_1@@5 (create_edge p_1@@0 s_1@@0)))
 :qid |stdinbpl.1004:15|
 :skolemid |84|
 :pattern ( (select EG_1@@5 (create_edge p_1@@0 s_1@@0)))
 :pattern ( (edge EG_1@@5 p_1@@0 s_1@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) ) (! (= (|Set#Union_70542| a@@18 (|Set#Union_70542| a@@18 b@@13)) (|Set#Union_70542| a@@18 b@@13))
 :qid |stdinbpl.795:18|
 :skolemid |39|
 :pattern ( (|Set#Union_70542| a@@18 (|Set#Union_70542| a@@18 b@@13)))
)))
(assert (forall ((a@@19 (Array T@Ref Bool)) (b@@14 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_70542| a@@19 (|Set#Intersection_70542| a@@19 b@@14)) (|Set#Intersection_70542| a@@19 b@@14))
 :qid |stdinbpl.799:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_70542| a@@19 (|Set#Intersection_70542| a@@19 b@@14)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_105161) (Mask@@25 T@PolymorphicMapType_105182) (g0@@9 (Array T@Ref Bool)) (g1@@9 (Array T@Ref Bool)) ) (!  (=> (state Heap@@20 Mask@@25) (= (|apply_TCFraming'| Heap@@20 g0@@9 g1@@9) (|apply_TCFraming#frame| (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp3| Heap@@20 g0@@9 g1@@9)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp4| Heap@@20 g0@@9 g1@@9)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp5| Heap@@20 g0@@9 g1@@9)) (FrameFragment_8621 (|apply_TCFraming#condqp6| Heap@@20 g0@@9 g1@@9))))) g0@@9 g1@@9)))
 :qid |stdinbpl.1343:15|
 :skolemid |129|
 :pattern ( (state Heap@@20 Mask@@25) (|apply_TCFraming'| Heap@@20 g0@@9 g1@@9))
)))
(assert (forall ((o@@5 T@Ref) ) (!  (not (select |Set#Empty_70542| o@@5))
 :qid |stdinbpl.755:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_70542| o@@5))
)))
(assert (forall ((p_1@@1 T@Ref) (s_1@@1 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@1 s_1@@1)) p_1@@1) (= (edge_succ (create_edge p_1@@1 s_1@@1)) s_1@@1))
 :qid |stdinbpl.955:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@1 s_1@@1))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_105161) (o_32 T@Ref) (f_46 T@Field_70297_350585) (v T@FrameType) ) (! (succHeap Heap@@21 (PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@21) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@21) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@21) (store (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@21) o_32 f_46 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@21) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@21) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@21) (store (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@21) o_32 f_46 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_105161) (o_32@@0 T@Ref) (f_46@@0 T@Field_70297_350718) (v@@0 T@PolymorphicMapType_105710) ) (! (succHeap Heap@@22 (PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@22) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@22) (store (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@22) o_32@@0 f_46@@0 v@@0) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@22) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@22) (store (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@22) o_32@@0 f_46@@0 v@@0) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_105161) (o_32@@1 T@Ref) (f_46@@1 T@Field_105234_105235) (v@@1 T@Ref) ) (! (succHeap Heap@@23 (PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@23) (store (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@23) o_32@@1 f_46@@1 v@@1) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@23) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@23) (store (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@23) o_32@@1 f_46@@1 v@@1) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@23) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_105161) (o_32@@2 T@Ref) (f_46@@2 T@Field_105221_53) (v@@2 Bool) ) (! (succHeap Heap@@24 (PolymorphicMapType_105161 (store (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@24) o_32@@2 f_46@@2 v@@2) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@24) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@24) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_105161 (store (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@24) o_32@@2 f_46@@2 v@@2) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@24) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@24) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@24)))
)))
(assert (forall ((a@@20 Int) (b@@15 Int) ) (! (= (<= a@@20 b@@15) (= (|Math#min| a@@20 b@@15) a@@20))
 :qid |stdinbpl.839:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@20 b@@15))
)))
(assert (forall ((a@@21 Int) (b@@16 Int) ) (! (= (<= b@@16 a@@21) (= (|Math#min| a@@21 b@@16) b@@16))
 :qid |stdinbpl.840:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@21 b@@16))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_70542| s@@0) 0) (= s@@0 |Set#Empty_70542|)) (=> (not (= (|Set#Card_70542| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.758:33|
 :skolemid |24|
))))
 :qid |stdinbpl.756:18|
 :skolemid |25|
 :pattern ( (|Set#Card_70542| s@@0))
)))
(assert (forall ((a@@22 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@22 x@@4)) (= (|Set#Card_70542| (|Set#UnionOne_70542| a@@22 x@@4)) (+ (|Set#Card_70542| a@@22) 1)))
 :qid |stdinbpl.774:18|
 :skolemid |33|
 :pattern ( (|Set#Card_70542| (|Set#UnionOne_70542| a@@22 x@@4)))
)))
(assert (forall ((o_32@@3 T@Ref) (f_44 T@Field_105234_105235) (Heap@@25 T@PolymorphicMapType_105161) ) (!  (=> (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@25) o_32@@3 $allocated) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@25) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@25) o_32@@3 f_44) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@25) o_32@@3 f_44))
)))
(assert (forall ((p@@1 T@Field_70297_350585) (v_1@@0 T@FrameType) (q T@Field_70297_350585) (w@@0 T@FrameType) (r@@2 T@Field_70297_350585) (u T@FrameType) ) (!  (=> (and (InsidePredicate_105221_105221 p@@1 v_1@@0 q w@@0) (InsidePredicate_105221_105221 q w@@0 r@@2 u)) (InsidePredicate_105221_105221 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.734:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_105221_105221 p@@1 v_1@@0 q w@@0) (InsidePredicate_105221_105221 q w@@0 r@@2 u))
)))
(assert (forall ((a@@23 Int) ) (!  (=> (< a@@23 0) (= (|Math#clip| a@@23) 0))
 :qid |stdinbpl.845:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@23))
)))
(assert (forall ((EG_1@@6 (Array T@EdgeDomainType Bool)) (x@@5 T@Ref) (v_2@@4 T@Ref) ) (! (= (select (inst_uReach EG_1@@6 x@@5) v_2@@4) (exists_path EG_1@@6 x@@5 v_2@@4))
 :qid |stdinbpl.1022:15|
 :skolemid |88|
 :pattern ( (select (inst_uReach EG_1@@6 x@@5) v_2@@4))
 :pattern ( (exists_path EG_1@@6 x@@5 v_2@@4))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_105161) (Mask@@26 T@PolymorphicMapType_105182) (refs@@5 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@26 Mask@@26) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@26 refs@@5)) (FrameFragment_8621 (|$$#condqp2| Heap@@26 refs@@5))) refs@@5))) (forall ((p_1_1 T@Ref) (s_1_1 T@Ref) ) (!  (=> (and (select refs@@5 p_1_1) (exists_path (|$$'| Heap@@26 refs@@5) p_1_1 s_1_1)) (select refs@@5 s_1_1))
 :qid |stdinbpl.1155:176|
 :skolemid |106|
 :pattern ( (select refs@@5 p_1_1) (select refs@@5 s_1_1) (exists_path (|$$'| Heap@@26 refs@@5) p_1_1 s_1_1))
)))
 :qid |stdinbpl.1153:15|
 :skolemid |107|
 :pattern ( (state Heap@@26 Mask@@26) (|$$'| Heap@@26 refs@@5))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_105161) (Mask@@27 T@PolymorphicMapType_105182) (refs@@6 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@27 Mask@@27) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@27 refs@@6)) (FrameFragment_8621 (|$$#condqp2| Heap@@27 refs@@6))) refs@@6))) (forall ((p_2_1 T@Ref) (s_2_1 T@Ref) ) (!  (=> (and (select refs@@6 s_2_1) (exists_path (|$$'| Heap@@27 refs@@6) p_2_1 s_2_1)) (select refs@@6 p_2_1))
 :qid |stdinbpl.1162:176|
 :skolemid |108|
 :pattern ( (select refs@@6 p_2_1) (select refs@@6 s_2_1) (exists_path (|$$'| Heap@@27 refs@@6) p_2_1 s_2_1))
)))
 :qid |stdinbpl.1160:15|
 :skolemid |109|
 :pattern ( (state Heap@@27 Mask@@27) (|$$'| Heap@@27 refs@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@24 (Array T@Ref Bool)) (b@@17 (Array T@Ref Bool)) (o@@6 T@Ref) ) (! (= (select (|Set#Union_70542| a@@24 b@@17) o@@6)  (or (select a@@24 o@@6) (select b@@17 o@@6)))
 :qid |stdinbpl.778:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_70542| a@@24 b@@17) o@@6))
)))
(assert (forall ((EG_1@@7 (Array T@EdgeDomainType Bool)) (p_1@@2 T@Ref) (s_1@@2 T@Ref) ) (! (= (edge EG_1@@7 p_1@@2 s_1@@2) (edge_ EG_1@@7 p_1@@2 s_1@@2))
 :qid |stdinbpl.998:15|
 :skolemid |83|
 :pattern ( (edge EG_1@@7 p_1@@2 s_1@@2))
)))
(assert (forall ((EG_1@@8 (Array T@EdgeDomainType Bool)) (start_1@@0 T@Ref) (end_1@@0 T@Ref) ) (! (= (exists_path EG_1@@8 start_1@@0 end_1@@0) (exists_path_ EG_1@@8 start_1@@0 end_1@@0))
 :qid |stdinbpl.1028:15|
 :skolemid |89|
 :pattern ( (exists_path EG_1@@8 start_1@@0 end_1@@0))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_105161) (g0@@10 (Array T@Ref Bool)) (g1@@10 (Array T@Ref Bool)) ) (!  (and (= (apply_TCFraming Heap@@28 g0@@10 g1@@10) (|apply_TCFraming'| Heap@@28 g0@@10 g1@@10)) (dummyFunction_11901 (|apply_TCFraming#triggerStateless| g0@@10 g1@@10)))
 :qid |stdinbpl.1332:15|
 :skolemid |127|
 :pattern ( (apply_TCFraming Heap@@28 g0@@10 g1@@10))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_105161)
(declare-fun QPMask@20 () T@PolymorphicMapType_105182)
(declare-fun g0@@11 () (Array T@Ref Bool))
(declare-fun g1@@11 () (Array T@Ref Bool))
(declare-fun dummyFunction_70298 (T@Ref) Bool)
(declare-fun neverTriggered123 (T@Ref) Bool)
(declare-fun QPMask@19 () T@PolymorphicMapType_105182)
(declare-fun qpRange123 (T@Ref) Bool)
(declare-fun invRecv123 (T@Ref) T@Ref)
(declare-fun QPMask@21 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered124 (T@Ref) Bool)
(declare-fun n_61 () T@Ref)
(declare-fun n$12 () T@Ref)
(declare-fun n$11 () T@Ref)
(declare-fun qpRange122 (T@Ref) Bool)
(declare-fun invRecv122 (T@Ref) T@Ref)
(declare-fun QPMask@18 () T@PolymorphicMapType_105182)
(declare-fun qpRange121 (T@Ref) Bool)
(declare-fun invRecv121 (T@Ref) T@Ref)
(declare-fun n$1_2 () T@Ref)
(declare-fun n$0_8 () T@Ref)
(declare-fun neverTriggered127 (T@Ref) Bool)
(declare-fun Heap@@29 () T@PolymorphicMapType_105161)
(declare-fun QPMask@4 () T@PolymorphicMapType_105182)
(declare-fun QPMask@3 () T@PolymorphicMapType_105182)
(declare-fun qpRange127 (T@Ref) Bool)
(declare-fun invRecv127 (T@Ref) T@Ref)
(declare-fun neverTriggered128 (T@Ref) Bool)
(declare-fun QPMask@5 () T@PolymorphicMapType_105182)
(declare-fun qpRange128 (T@Ref) Bool)
(declare-fun invRecv128 (T@Ref) T@Ref)
(declare-fun neverTriggered129 (T@Ref) Bool)
(declare-fun QPMask@6 () T@PolymorphicMapType_105182)
(declare-fun qpRange129 (T@Ref) Bool)
(declare-fun invRecv129 (T@Ref) T@Ref)
(declare-fun neverTriggered130 (T@Ref) Bool)
(declare-fun QPMask@7 () T@PolymorphicMapType_105182)
(declare-fun qpRange130 (T@Ref) Bool)
(declare-fun invRecv130 (T@Ref) T@Ref)
(declare-fun arg_g@0 () (Array T@Ref Bool))
(declare-fun n$2_2 () T@Ref)
(declare-fun n$1_4 () T@Ref)
(declare-fun n_10_1 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_105161)
(declare-fun x@@6 () T@Ref)
(declare-fun n$12_2 () T@Ref)
(declare-fun n$11_2 () T@Ref)
(declare-fun Mask@8 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered125 (T@Ref) Bool)
(declare-fun QPMask@16 () T@PolymorphicMapType_105182)
(declare-fun qpRange125 (T@Ref) Bool)
(declare-fun invRecv125 (T@Ref) T@Ref)
(declare-fun neverTriggered126 (T@Ref) Bool)
(declare-fun QPMask@17 () T@PolymorphicMapType_105182)
(declare-fun qpRange126 (T@Ref) Bool)
(declare-fun invRecv126 (T@Ref) T@Ref)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_105161)
(declare-fun QPMask@15 () T@PolymorphicMapType_105182)
(declare-fun x1 () T@Ref)
(declare-fun x0 () T@Ref)
(declare-fun QPMask@13 () T@PolymorphicMapType_105182)
(declare-fun perm@6 () Real)
(declare-fun Mask@6 () T@PolymorphicMapType_105182)
(declare-fun perm@7 () Real)
(declare-fun Mask@7 () T@PolymorphicMapType_105182)
(declare-fun QPMask@14 () T@PolymorphicMapType_105182)
(declare-fun qpRange133 (T@Ref) Bool)
(declare-fun invRecv133 (T@Ref) T@Ref)
(declare-fun qpRange134 (T@Ref) Bool)
(declare-fun invRecv134 (T@Ref) T@Ref)
(declare-fun Mask@5 () T@PolymorphicMapType_105182)
(declare-fun Mask@4 () T@PolymorphicMapType_105182)
(declare-fun perm@5 () Real)
(declare-fun QPMask@12 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered131 (T@Ref) Bool)
(declare-fun qpRange131 (T@Ref) Bool)
(declare-fun invRecv131 (T@Ref) T@Ref)
(declare-fun neverTriggered132 (T@Ref) Bool)
(declare-fun qpRange132 (T@Ref) Bool)
(declare-fun invRecv132 (T@Ref) T@Ref)
(declare-fun perm@4 () Real)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_105161)
(declare-fun QPMask@11 () T@PolymorphicMapType_105182)
(declare-fun arg_g_1@0 () (Array T@Ref Bool))
(declare-fun QPMask@9 () T@PolymorphicMapType_105182)
(declare-fun perm@2 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_105182)
(declare-fun perm@3 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_105182)
(declare-fun QPMask@10 () T@PolymorphicMapType_105182)
(declare-fun qpRange137 (T@Ref) Bool)
(declare-fun invRecv137 (T@Ref) T@Ref)
(declare-fun qpRange138 (T@Ref) Bool)
(declare-fun invRecv138 (T@Ref) T@Ref)
(declare-fun n$2_4_1 () T@Ref)
(declare-fun n$1_6 () T@Ref)
(declare-fun Mask@1 () T@PolymorphicMapType_105182)
(declare-fun Mask@0 () T@PolymorphicMapType_105182)
(declare-fun perm@1 () Real)
(declare-fun QPMask@8 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered135 (T@Ref) Bool)
(declare-fun qpRange135 (T@Ref) Bool)
(declare-fun invRecv135 (T@Ref) T@Ref)
(declare-fun neverTriggered136 (T@Ref) Bool)
(declare-fun qpRange136 (T@Ref) Bool)
(declare-fun invRecv136 (T@Ref) T@Ref)
(declare-fun perm@0 () Real)
(declare-fun QPMask@22 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered119 (T@Ref) Bool)
(declare-fun qpRange119 (T@Ref) Bool)
(declare-fun invRecv119 (T@Ref) T@Ref)
(declare-fun QPMask@23 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered120 (T@Ref) Bool)
(declare-fun m_6 () T@Ref)
(declare-fun QPMask@24 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered117 (T@Ref) Bool)
(declare-fun qpRange117 (T@Ref) Bool)
(declare-fun invRecv117 (T@Ref) T@Ref)
(declare-fun QPMask@25 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered118 (T@Ref) Bool)
(declare-fun n_60 () T@Ref)
(declare-fun QPMask@26 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered115 (T@Ref) Bool)
(declare-fun qpRange115 (T@Ref) Bool)
(declare-fun invRecv115 (T@Ref) T@Ref)
(declare-fun QPMask@27 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered116 (T@Ref) Bool)
(declare-fun n_59 () T@Ref)
(declare-fun n$6_9 () T@Ref)
(declare-fun n$5_6 () T@Ref)
(declare-fun qpRange114 (T@Ref) Bool)
(declare-fun invRecv114 (T@Ref) T@Ref)
(declare-fun QPMask@2 () T@PolymorphicMapType_105182)
(declare-fun qpRange113 (T@Ref) Bool)
(declare-fun invRecv113 (T@Ref) T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_105182)
(declare-fun n$2_27 () T@Ref)
(declare-fun n$1_17 () T@Ref)
(declare-fun qpRange112 (T@Ref) Bool)
(declare-fun invRecv112 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_105182)
(declare-fun qpRange111 (T@Ref) Bool)
(declare-fun invRecv111 (T@Ref) T@Ref)
(set-info :boogie-vc-id join)
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
 (=> (= (ControlFlow 0 0) 261) (let ((anon181_Then_correct  (and (=> (= (ControlFlow 0 224) (- 0 229)) (forall ((n$0_6 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$0_6) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7678:25|
 :skolemid |868|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) n$0_6 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6 l))
))) (=> (forall ((n$0_6@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$0_6@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6@@0 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7678:25|
 :skolemid |868|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6@@0 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) n$0_6@@0 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6@@0 l))
)) (and (=> (= (ControlFlow 0 224) (- 0 228)) (forall ((n$0_6@@1 T@Ref) (n$0_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_6@@1 n$0_6_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$0_6@@1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$0_6_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_6@@1 n$0_6_1)))
 :qid |stdinbpl.7685:25|
 :skolemid |869|
 :pattern ( (neverTriggered123 n$0_6@@1) (neverTriggered123 n$0_6_1))
))) (=> (forall ((n$0_6@@2 T@Ref) (n$0_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_6@@2 n$0_6_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$0_6@@2)) (select (|Set#Union_70542| g0@@11 g1@@11) n$0_6_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_6@@2 n$0_6_1@@0)))
 :qid |stdinbpl.7685:25|
 :skolemid |869|
 :pattern ( (neverTriggered123 n$0_6@@2) (neverTriggered123 n$0_6_1@@0))
)) (and (=> (= (ControlFlow 0 224) (- 0 227)) (forall ((n$0_6@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$0_6@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) n$0_6@@3 l) NoPerm)))
 :qid |stdinbpl.7692:25|
 :skolemid |870|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) n$0_6@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6@@3 l))
))) (=> (forall ((n$0_6@@4 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$0_6@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) n$0_6@@4 l) NoPerm)))
 :qid |stdinbpl.7692:25|
 :skolemid |870|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6@@4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) n$0_6@@4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6@@4 l))
)) (=> (and (forall ((n$0_6@@5 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$0_6@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange123 n$0_6@@5) (= (invRecv123 n$0_6@@5) n$0_6@@5)))
 :qid |stdinbpl.7698:30|
 :skolemid |871|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6@@5 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) n$0_6@@5 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6@@5 l))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv123 o_9)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange123 o_9))) (= (invRecv123 o_9) o_9))
 :qid |stdinbpl.7702:30|
 :skolemid |872|
 :pattern ( (invRecv123 o_9))
))) (and (=> (= (ControlFlow 0 224) (- 0 226)) (forall ((n$0_7 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$0_7) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_7 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7710:25|
 :skolemid |873|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_7 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@21) n$0_7 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_7 r_11))
))) (=> (forall ((n$0_7@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$0_7@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_7@@0 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7710:25|
 :skolemid |873|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_7@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@21) n$0_7@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_7@@0 r_11))
)) (and (=> (= (ControlFlow 0 224) (- 0 225)) (forall ((n$0_7@@1 T@Ref) (n$0_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_7@@1 n$0_7_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$0_7@@1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$0_7_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_7@@1 n$0_7_1)))
 :qid |stdinbpl.7717:25|
 :skolemid |874|
 :pattern ( (neverTriggered124 n$0_7@@1) (neverTriggered124 n$0_7_1))
))) (=> (forall ((n$0_7@@2 T@Ref) (n$0_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_7@@2 n$0_7_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$0_7@@2)) (select (|Set#Union_70542| g0@@11 g1@@11) n$0_7_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_7@@2 n$0_7_1@@0)))
 :qid |stdinbpl.7717:25|
 :skolemid |874|
 :pattern ( (neverTriggered124 n$0_7@@2) (neverTriggered124 n$0_7_1@@0))
)) (=> (= (ControlFlow 0 224) (- 0 223)) (forall ((n$0_7@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$0_7@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) n$0_7@@3 r_11) NoPerm)))
 :qid |stdinbpl.7724:25|
 :skolemid |875|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_7@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@21) n$0_7@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_7@@3 r_11))
))))))))))))))))
(let ((anon74_correct true))
(let ((anon180_Then_correct  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_61) (and (=> (= (ControlFlow 0 230) 224) anon181_Then_correct) (=> (= (ControlFlow 0 230) 221) anon74_correct)))))
(let ((anon180_Else_correct  (=> (and (not (select (|Set#Union_70542| g0@@11 g1@@11) n_61)) (= (ControlFlow 0 222) 221)) anon74_correct)))
(let ((anon179_Else_correct true))
(let ((anon176_Else_correct  (=> (forall ((n$12_1 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$12_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$12_1 r_11) null))) (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$12_1 r_11)))
 :qid |stdinbpl.7660:20|
 :skolemid |867|
 :pattern ( (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$12_1 r_11)))
 :pattern ( (select (|Set#Union_70542| g0@@11 g1@@11) n$12_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$12_1 r_11))
)) (=> (and (state PostHeap@0 QPMask@19) (state PostHeap@0 QPMask@19)) (and (and (=> (= (ControlFlow 0 231) 220) anon179_Else_correct) (=> (= (ControlFlow 0 231) 230) anon180_Then_correct)) (=> (= (ControlFlow 0 231) 222) anon180_Else_correct))))))
(let ((anon69_correct true))
(let ((anon178_Else_correct  (=> (and (not (and (select (|Set#Union_70542| g0@@11 g1@@11) n$12) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$12 r_11) null)))) (= (ControlFlow 0 216) 213)) anon69_correct)))
(let ((anon178_Then_correct  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$12) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$12 r_11) null))) (and (=> (= (ControlFlow 0 214) (- 0 215)) (HasDirectPerm_70297_70298 QPMask@19 n$12 r_11)) (=> (HasDirectPerm_70297_70298 QPMask@19 n$12 r_11) (=> (= (ControlFlow 0 214) 213) anon69_correct))))))
(let ((anon177_Else_correct  (=> (not (select (|Set#Union_70542| g0@@11 g1@@11) n$12)) (and (=> (= (ControlFlow 0 219) 214) anon178_Then_correct) (=> (= (ControlFlow 0 219) 216) anon178_Else_correct)))))
(let ((anon177_Then_correct  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$12) (and (=> (= (ControlFlow 0 217) (- 0 218)) (HasDirectPerm_70297_70298 QPMask@19 n$12 r_11)) (=> (HasDirectPerm_70297_70298 QPMask@19 n$12 r_11) (and (=> (= (ControlFlow 0 217) 214) anon178_Then_correct) (=> (= (ControlFlow 0 217) 216) anon178_Else_correct)))))))
(let ((anon173_Else_correct  (=> (forall ((n$11_1 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$11_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$11_1 l) null))) (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$11_1 l)))
 :qid |stdinbpl.7643:20|
 :skolemid |866|
 :pattern ( (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$11_1 l)))
 :pattern ( (select (|Set#Union_70542| g0@@11 g1@@11) n$11_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$11_1 l))
)) (and (and (=> (= (ControlFlow 0 232) 231) anon176_Else_correct) (=> (= (ControlFlow 0 232) 217) anon177_Then_correct)) (=> (= (ControlFlow 0 232) 219) anon177_Else_correct)))))
(let ((anon63_correct true))
(let ((anon175_Else_correct  (=> (and (not (and (select (|Set#Union_70542| g0@@11 g1@@11) n$11) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$11 l) null)))) (= (ControlFlow 0 209) 206)) anon63_correct)))
(let ((anon175_Then_correct  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$11) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$11 l) null))) (and (=> (= (ControlFlow 0 207) (- 0 208)) (HasDirectPerm_70297_70298 QPMask@19 n$11 l)) (=> (HasDirectPerm_70297_70298 QPMask@19 n$11 l) (=> (= (ControlFlow 0 207) 206) anon63_correct))))))
(let ((anon174_Else_correct  (=> (not (select (|Set#Union_70542| g0@@11 g1@@11) n$11)) (and (=> (= (ControlFlow 0 212) 207) anon175_Then_correct) (=> (= (ControlFlow 0 212) 209) anon175_Else_correct)))))
(let ((anon174_Then_correct  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$11) (and (=> (= (ControlFlow 0 210) (- 0 211)) (HasDirectPerm_70297_70298 QPMask@19 n$11 l)) (=> (HasDirectPerm_70297_70298 QPMask@19 n$11 l) (and (=> (= (ControlFlow 0 210) 207) anon175_Then_correct) (=> (= (ControlFlow 0 210) 209) anon175_Else_correct)))))))
(let ((anon172_Else_correct  (and (=> (= (ControlFlow 0 233) (- 0 234)) (forall ((n$10_1 T@Ref) (n$10_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$10_1 n$10_1_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$10_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$10_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$10_1 n$10_1_1)))
 :qid |stdinbpl.7598:15|
 :skolemid |860|
))) (=> (forall ((n$10_1@@0 T@Ref) (n$10_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$10_1@@0 n$10_1_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$10_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$10_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$10_1@@0 n$10_1_1@@0)))
 :qid |stdinbpl.7598:15|
 :skolemid |860|
)) (=> (and (and (forall ((n$10_1@@1 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$10_1@@1) (< NoPerm FullPerm)) (and (qpRange122 n$10_1@@1) (= (invRecv122 n$10_1@@1) n$10_1@@1)))
 :qid |stdinbpl.7604:22|
 :skolemid |861|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$10_1@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) n$10_1@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$10_1@@1 r_11))
)) (forall ((o_9@@0 T@Ref) ) (!  (=> (and (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv122 o_9@@0)) (< NoPerm FullPerm)) (qpRange122 o_9@@0)) (= (invRecv122 o_9@@0) o_9@@0))
 :qid |stdinbpl.7608:22|
 :skolemid |862|
 :pattern ( (invRecv122 o_9@@0))
))) (and (forall ((n$10_1@@2 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$10_1@@2) (not (= n$10_1@@2 null)))
 :qid |stdinbpl.7614:22|
 :skolemid |863|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$10_1@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) n$10_1@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$10_1@@2 r_11))
)) (forall ((o_9@@1 T@Ref) ) (!  (and (=> (and (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv122 o_9@@1)) (< NoPerm FullPerm)) (qpRange122 o_9@@1)) (and (=> (< NoPerm FullPerm) (= (invRecv122 o_9@@1) o_9@@1)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) o_9@@1 r_11) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) o_9@@1 r_11) FullPerm)))) (=> (not (and (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv122 o_9@@1)) (< NoPerm FullPerm)) (qpRange122 o_9@@1))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) o_9@@1 r_11) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) o_9@@1 r_11))))
 :qid |stdinbpl.7620:22|
 :skolemid |864|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) o_9@@1 r_11))
)))) (=> (and (and (and (and (forall ((o_9@@2 T@Ref) (f_5 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@18) o_9@@2 f_5) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@19) o_9@@2 f_5)))
 :qid |stdinbpl.7624:29|
 :skolemid |865|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@18) o_9@@2 f_5))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@19) o_9@@2 f_5))
)) (forall ((o_9@@3 T@Ref) (f_5@@0 T@Field_105234_105235) ) (!  (=> (not (= f_5@@0 r_11)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) o_9@@3 f_5@@0) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) o_9@@3 f_5@@0)))
 :qid |stdinbpl.7624:29|
 :skolemid |865|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) o_9@@3 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) o_9@@3 f_5@@0))
))) (forall ((o_9@@4 T@Ref) (f_5@@1 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@18) o_9@@4 f_5@@1) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@19) o_9@@4 f_5@@1)))
 :qid |stdinbpl.7624:29|
 :skolemid |865|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@18) o_9@@4 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@19) o_9@@4 f_5@@1))
))) (forall ((o_9@@5 T@Ref) (f_5@@2 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@18) o_9@@5 f_5@@2) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@19) o_9@@5 f_5@@2)))
 :qid |stdinbpl.7624:29|
 :skolemid |865|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@18) o_9@@5 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@19) o_9@@5 f_5@@2))
))) (state PostHeap@0 QPMask@19)) (and (and (=> (= (ControlFlow 0 233) 232) anon173_Else_correct) (=> (= (ControlFlow 0 233) 210) anon174_Then_correct)) (=> (= (ControlFlow 0 233) 212) anon174_Else_correct))))))))
(let ((anon172_Then_correct true))
(let ((anon171_Else_correct  (and (=> (= (ControlFlow 0 235) (- 0 236)) (forall ((n$9_1 T@Ref) (n$9_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$9_1 n$9_1_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$9_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$9_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$9_1 n$9_1_1)))
 :qid |stdinbpl.7559:15|
 :skolemid |854|
))) (=> (forall ((n$9_1@@0 T@Ref) (n$9_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$9_1@@0 n$9_1_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$9_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$9_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$9_1@@0 n$9_1_1@@0)))
 :qid |stdinbpl.7559:15|
 :skolemid |854|
)) (=> (and (and (forall ((n$9_1@@1 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$9_1@@1) (< NoPerm FullPerm)) (and (qpRange121 n$9_1@@1) (= (invRecv121 n$9_1@@1) n$9_1@@1)))
 :qid |stdinbpl.7565:22|
 :skolemid |855|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$9_1@@1 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) n$9_1@@1 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$9_1@@1 l))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv121 o_9@@6)) (< NoPerm FullPerm)) (qpRange121 o_9@@6)) (= (invRecv121 o_9@@6) o_9@@6))
 :qid |stdinbpl.7569:22|
 :skolemid |856|
 :pattern ( (invRecv121 o_9@@6))
))) (and (forall ((n$9_1@@2 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$9_1@@2) (not (= n$9_1@@2 null)))
 :qid |stdinbpl.7575:22|
 :skolemid |857|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$9_1@@2 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) n$9_1@@2 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$9_1@@2 l))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv121 o_9@@7)) (< NoPerm FullPerm)) (qpRange121 o_9@@7)) (and (=> (< NoPerm FullPerm) (= (invRecv121 o_9@@7) o_9@@7)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) o_9@@7 l) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_9@@7 l) FullPerm)))) (=> (not (and (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv121 o_9@@7)) (< NoPerm FullPerm)) (qpRange121 o_9@@7))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) o_9@@7 l) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_9@@7 l))))
 :qid |stdinbpl.7581:22|
 :skolemid |858|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) o_9@@7 l))
)))) (=> (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@3 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| ZeroMask) o_9@@8 f_5@@3) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@18) o_9@@8 f_5@@3)))
 :qid |stdinbpl.7585:29|
 :skolemid |859|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| ZeroMask) o_9@@8 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@18) o_9@@8 f_5@@3))
)) (forall ((o_9@@9 T@Ref) (f_5@@4 T@Field_105234_105235) ) (!  (=> (not (= f_5@@4 l)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_9@@9 f_5@@4) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) o_9@@9 f_5@@4)))
 :qid |stdinbpl.7585:29|
 :skolemid |859|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_9@@9 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) o_9@@9 f_5@@4))
))) (forall ((o_9@@10 T@Ref) (f_5@@5 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| ZeroMask) o_9@@10 f_5@@5) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@18) o_9@@10 f_5@@5)))
 :qid |stdinbpl.7585:29|
 :skolemid |859|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| ZeroMask) o_9@@10 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@18) o_9@@10 f_5@@5))
))) (forall ((o_9@@11 T@Ref) (f_5@@6 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| ZeroMask) o_9@@11 f_5@@6) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@18) o_9@@11 f_5@@6)))
 :qid |stdinbpl.7585:29|
 :skolemid |859|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| ZeroMask) o_9@@11 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@18) o_9@@11 f_5@@6))
))) (state PostHeap@0 QPMask@18)) (and (=> (= (ControlFlow 0 235) 205) anon172_Then_correct) (=> (= (ControlFlow 0 235) 233) anon172_Else_correct))))))))
(let ((anon171_Then_correct true))
(let ((anon170_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (not (select (|Set#Union_70542| g0@@11 g1@@11) null))) (and (=> (= (ControlFlow 0 237) 204) anon171_Then_correct) (=> (= (ControlFlow 0 237) 235) anon171_Else_correct)))))
(let ((anon84_correct true))
(let ((anon186_Else_correct  (=> (and (not (select g1@@11 n$1_2)) (= (ControlFlow 0 192) 189)) anon84_correct)))
(let ((anon186_Then_correct  (=> (select g1@@11 n$1_2) (and (=> (= (ControlFlow 0 190) (- 0 191)) (not (select g0@@11 n$1_2))) (=> (not (select g0@@11 n$1_2)) (=> (= (ControlFlow 0 190) 189) anon84_correct))))))
(let ((anon185_Else_correct true))
(let ((anon183_Else_correct  (=> (forall ((n$0_9_1_1 T@Ref) ) (!  (=> (select g0@@11 n$0_9_1_1) (not (select g1@@11 n$0_9_1_1)))
 :qid |stdinbpl.7884:24|
 :skolemid |895|
 :pattern ( (select g0@@11 n$0_9_1_1) (select g1@@11 n$0_9_1_1))
)) (and (and (=> (= (ControlFlow 0 193) 188) anon185_Else_correct) (=> (= (ControlFlow 0 193) 190) anon186_Then_correct)) (=> (= (ControlFlow 0 193) 192) anon186_Else_correct)))))
(let ((anon80_correct true))
(let ((anon184_Else_correct  (=> (and (not (select g0@@11 n$0_8)) (= (ControlFlow 0 187) 184)) anon80_correct)))
(let ((anon184_Then_correct  (=> (select g0@@11 n$0_8) (and (=> (= (ControlFlow 0 185) (- 0 186)) (not (select g1@@11 n$0_8))) (=> (not (select g1@@11 n$0_8)) (=> (= (ControlFlow 0 185) 184) anon80_correct))))))
(let ((anon182_Then_correct  (and (=> (= (ControlFlow 0 194) (- 0 202)) (forall ((n_12 T@Ref) (n_12_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12 n_12_1)) (select g0@@11 n_12)) (select g0@@11 n_12_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_12 n_12_1)))
 :qid |stdinbpl.7772:21|
 :skolemid |879|
 :pattern ( (neverTriggered127 n_12) (neverTriggered127 n_12_1))
))) (=> (forall ((n_12@@0 T@Ref) (n_12_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12@@0 n_12_1@@0)) (select g0@@11 n_12@@0)) (select g0@@11 n_12_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_12@@0 n_12_1@@0)))
 :qid |stdinbpl.7772:21|
 :skolemid |879|
 :pattern ( (neverTriggered127 n_12@@0) (neverTriggered127 n_12_1@@0))
)) (and (=> (= (ControlFlow 0 194) (- 0 201)) (forall ((n_12@@1 T@Ref) ) (!  (=> (select g0@@11 n_12@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_12@@1 l) NoPerm)))
 :qid |stdinbpl.7779:21|
 :skolemid |880|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_12@@1 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) n_12@@1 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_12@@1 l))
))) (=> (forall ((n_12@@2 T@Ref) ) (!  (=> (select g0@@11 n_12@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_12@@2 l) NoPerm)))
 :qid |stdinbpl.7779:21|
 :skolemid |880|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_12@@2 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) n_12@@2 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_12@@2 l))
)) (=> (and (forall ((n_12@@3 T@Ref) ) (!  (=> (and (select g0@@11 n_12@@3) (< NoPerm FullPerm)) (and (qpRange127 n_12@@3) (= (invRecv127 n_12@@3) n_12@@3)))
 :qid |stdinbpl.7785:26|
 :skolemid |881|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_12@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) n_12@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_12@@3 l))
)) (forall ((o_9@@12 T@Ref) ) (!  (=> (and (select g0@@11 (invRecv127 o_9@@12)) (and (< NoPerm FullPerm) (qpRange127 o_9@@12))) (= (invRecv127 o_9@@12) o_9@@12))
 :qid |stdinbpl.7789:26|
 :skolemid |882|
 :pattern ( (invRecv127 o_9@@12))
))) (and (=> (= (ControlFlow 0 194) (- 0 200)) (forall ((n_13_2 T@Ref) (n_13_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13_2 n_13_3)) (select g0@@11 n_13_2)) (select g0@@11 n_13_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_13_2 n_13_3)))
 :qid |stdinbpl.7800:21|
 :skolemid |883|
 :pattern ( (neverTriggered128 n_13_2) (neverTriggered128 n_13_3))
))) (=> (forall ((n_13_2@@0 T@Ref) (n_13_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13_2@@0 n_13_3@@0)) (select g0@@11 n_13_2@@0)) (select g0@@11 n_13_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_13_2@@0 n_13_3@@0)))
 :qid |stdinbpl.7800:21|
 :skolemid |883|
 :pattern ( (neverTriggered128 n_13_2@@0) (neverTriggered128 n_13_3@@0))
)) (and (=> (= (ControlFlow 0 194) (- 0 199)) (forall ((n_13_2@@1 T@Ref) ) (!  (=> (select g0@@11 n_13_2@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_13_2@@1 r_11) NoPerm)))
 :qid |stdinbpl.7807:21|
 :skolemid |884|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_13_2@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_13_2@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_13_2@@1 r_11))
))) (=> (forall ((n_13_2@@2 T@Ref) ) (!  (=> (select g0@@11 n_13_2@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_13_2@@2 r_11) NoPerm)))
 :qid |stdinbpl.7807:21|
 :skolemid |884|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_13_2@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_13_2@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_13_2@@2 r_11))
)) (=> (and (forall ((n_13_2@@3 T@Ref) ) (!  (=> (and (select g0@@11 n_13_2@@3) (< NoPerm FullPerm)) (and (qpRange128 n_13_2@@3) (= (invRecv128 n_13_2@@3) n_13_2@@3)))
 :qid |stdinbpl.7813:26|
 :skolemid |885|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_13_2@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_13_2@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_13_2@@3 r_11))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (select g0@@11 (invRecv128 o_9@@13)) (and (< NoPerm FullPerm) (qpRange128 o_9@@13))) (= (invRecv128 o_9@@13) o_9@@13))
 :qid |stdinbpl.7817:26|
 :skolemid |886|
 :pattern ( (invRecv128 o_9@@13))
))) (and (=> (= (ControlFlow 0 194) (- 0 198)) (forall ((n_14_1 T@Ref) (n_14_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14_1 n_14_2)) (select g1@@11 n_14_1)) (select g1@@11 n_14_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_14_1 n_14_2)))
 :qid |stdinbpl.7828:21|
 :skolemid |887|
 :pattern ( (neverTriggered129 n_14_1) (neverTriggered129 n_14_2))
))) (=> (forall ((n_14_1@@0 T@Ref) (n_14_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14_1@@0 n_14_2@@0)) (select g1@@11 n_14_1@@0)) (select g1@@11 n_14_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_14_1@@0 n_14_2@@0)))
 :qid |stdinbpl.7828:21|
 :skolemid |887|
 :pattern ( (neverTriggered129 n_14_1@@0) (neverTriggered129 n_14_2@@0))
)) (and (=> (= (ControlFlow 0 194) (- 0 197)) (forall ((n_14_1@@1 T@Ref) ) (!  (=> (select g1@@11 n_14_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_14_1@@1 l) NoPerm)))
 :qid |stdinbpl.7835:21|
 :skolemid |888|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_14_1@@1 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@6) n_14_1@@1 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_14_1@@1 l))
))) (=> (forall ((n_14_1@@2 T@Ref) ) (!  (=> (select g1@@11 n_14_1@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_14_1@@2 l) NoPerm)))
 :qid |stdinbpl.7835:21|
 :skolemid |888|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_14_1@@2 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@6) n_14_1@@2 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_14_1@@2 l))
)) (=> (and (forall ((n_14_1@@3 T@Ref) ) (!  (=> (and (select g1@@11 n_14_1@@3) (< NoPerm FullPerm)) (and (qpRange129 n_14_1@@3) (= (invRecv129 n_14_1@@3) n_14_1@@3)))
 :qid |stdinbpl.7841:26|
 :skolemid |889|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_14_1@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@6) n_14_1@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_14_1@@3 l))
)) (forall ((o_9@@14 T@Ref) ) (!  (=> (and (select g1@@11 (invRecv129 o_9@@14)) (and (< NoPerm FullPerm) (qpRange129 o_9@@14))) (= (invRecv129 o_9@@14) o_9@@14))
 :qid |stdinbpl.7845:26|
 :skolemid |890|
 :pattern ( (invRecv129 o_9@@14))
))) (and (=> (= (ControlFlow 0 194) (- 0 196)) (forall ((n_15 T@Ref) (n_15_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15 n_15_1)) (select g1@@11 n_15)) (select g1@@11 n_15_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_15 n_15_1)))
 :qid |stdinbpl.7856:21|
 :skolemid |891|
 :pattern ( (neverTriggered130 n_15) (neverTriggered130 n_15_1))
))) (=> (forall ((n_15@@0 T@Ref) (n_15_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15@@0 n_15_1@@0)) (select g1@@11 n_15@@0)) (select g1@@11 n_15_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_15@@0 n_15_1@@0)))
 :qid |stdinbpl.7856:21|
 :skolemid |891|
 :pattern ( (neverTriggered130 n_15@@0) (neverTriggered130 n_15_1@@0))
)) (and (=> (= (ControlFlow 0 194) (- 0 195)) (forall ((n_15@@1 T@Ref) ) (!  (=> (select g1@@11 n_15@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_15@@1 r_11) NoPerm)))
 :qid |stdinbpl.7863:21|
 :skolemid |892|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_15@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@7) n_15@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_15@@1 r_11))
))) (=> (forall ((n_15@@2 T@Ref) ) (!  (=> (select g1@@11 n_15@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_15@@2 r_11) NoPerm)))
 :qid |stdinbpl.7863:21|
 :skolemid |892|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_15@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@7) n_15@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_15@@2 r_11))
)) (=> (and (forall ((n_15@@3 T@Ref) ) (!  (=> (and (select g1@@11 n_15@@3) (< NoPerm FullPerm)) (and (qpRange130 n_15@@3) (= (invRecv130 n_15@@3) n_15@@3)))
 :qid |stdinbpl.7869:26|
 :skolemid |893|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_15@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@7) n_15@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_15@@3 r_11))
)) (forall ((o_9@@15 T@Ref) ) (!  (=> (and (select g1@@11 (invRecv130 o_9@@15)) (and (< NoPerm FullPerm) (qpRange130 o_9@@15))) (= (invRecv130 o_9@@15) o_9@@15))
 :qid |stdinbpl.7873:26|
 :skolemid |894|
 :pattern ( (invRecv130 o_9@@15))
))) (and (and (=> (= (ControlFlow 0 194) 193) anon183_Else_correct) (=> (= (ControlFlow 0 194) 185) anon184_Then_correct)) (=> (= (ControlFlow 0 194) 187) anon184_Else_correct))))))))))))))))))))))))
(let ((anon100_correct true))
(let ((anon194_Else_correct  (=> (and (not (and (select arg_g@0 n$2_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_2 r_11) null)))) (= (ControlFlow 0 141) 138)) anon100_correct)))
(let ((anon194_Then_correct  (=> (and (select arg_g@0 n$2_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_2 r_11) null))) (and (=> (= (ControlFlow 0 139) (- 0 140)) (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_2 r_11))) (=> (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_2 r_11)) (=> (= (ControlFlow 0 139) 138) anon100_correct))))))
(let ((anon96_correct true))
(let ((anon192_Else_correct  (=> (and (not (and (select arg_g@0 n$1_4) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_4 l) null)))) (= (ControlFlow 0 137) 134)) anon96_correct)))
(let ((anon192_Then_correct  (=> (and (select arg_g@0 n$1_4) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_4 l) null))) (and (=> (= (ControlFlow 0 135) (- 0 136)) (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_4 l))) (=> (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_4 l)) (=> (= (ControlFlow 0 135) 134) anon96_correct))))))
(let ((anon140_correct true))
(let ((anon213_Else_correct  (=> (and (not (select (|Set#Union_70542| g0@@11 g1@@11) n_10_1)) (= (ControlFlow 0 85) 82)) anon140_correct)))
(let ((anon213_Then_correct  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_10_1) (and (=> (= (ControlFlow 0 83) (- 0 84)) (exists_path ($$ Heap@0 (|Set#Union_70542| g0@@11 g1@@11)) x@@6 n_10_1)) (=> (exists_path ($$ Heap@0 (|Set#Union_70542| g0@@11 g1@@11)) x@@6 n_10_1) (=> (= (ControlFlow 0 83) 82) anon140_correct))))))
(let ((anon212_Else_correct true))
(let ((anon210_Else_correct  (=> (forall ((n$12_3_1 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$12_3_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$12_3_1 r_11) null))) (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$12_3_1 r_11)))
 :qid |stdinbpl.8581:20|
 :skolemid |978|
 :pattern ( (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$12_3_1 r_11)))
 :pattern ( (select (|Set#Union_70542| g0@@11 g1@@11) n$12_3_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$12_3_1 r_11))
)) (and (and (=> (= (ControlFlow 0 86) 81) anon212_Else_correct) (=> (= (ControlFlow 0 86) 83) anon213_Then_correct)) (=> (= (ControlFlow 0 86) 85) anon213_Else_correct)))))
(let ((anon136_correct true))
(let ((anon211_Else_correct  (=> (and (not (and (select (|Set#Union_70542| g0@@11 g1@@11) n$12_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$12_2 r_11) null)))) (= (ControlFlow 0 80) 77)) anon136_correct)))
(let ((anon211_Then_correct  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$12_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$12_2 r_11) null))) (and (=> (= (ControlFlow 0 78) (- 0 79)) (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$12_2 r_11))) (=> (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$12_2 r_11)) (=> (= (ControlFlow 0 78) 77) anon136_correct))))))
(let ((anon208_Else_correct  (=> (forall ((n$11_3_1 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$11_3_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$11_3_1 l) null))) (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$11_3_1 l)))
 :qid |stdinbpl.8570:20|
 :skolemid |977|
 :pattern ( (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$11_3_1 l)))
 :pattern ( (select (|Set#Union_70542| g0@@11 g1@@11) n$11_3_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$11_3_1 l))
)) (and (and (=> (= (ControlFlow 0 87) 86) anon210_Else_correct) (=> (= (ControlFlow 0 87) 78) anon211_Then_correct)) (=> (= (ControlFlow 0 87) 80) anon211_Else_correct)))))
(let ((anon132_correct true))
(let ((anon209_Else_correct  (=> (and (not (and (select (|Set#Union_70542| g0@@11 g1@@11) n$11_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$11_2 l) null)))) (= (ControlFlow 0 76) 73)) anon132_correct)))
(let ((anon209_Then_correct  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$11_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$11_2 l) null))) (and (=> (= (ControlFlow 0 74) (- 0 75)) (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$11_2 l))) (=> (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$11_2 l)) (=> (= (ControlFlow 0 74) 73) anon132_correct))))))
(let ((anon129_correct  (=> (state Heap@0 Mask@8) (and (=> (= (ControlFlow 0 88) (- 0 93)) (not (select (|Set#Union_70542| g0@@11 g1@@11) null))) (=> (not (select (|Set#Union_70542| g0@@11 g1@@11) null)) (and (=> (= (ControlFlow 0 88) (- 0 92)) (forall ((n$9_2 T@Ref) (n$9_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$9_2 n$9_2_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$9_2)) (select (|Set#Union_70542| g0@@11 g1@@11) n$9_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$9_2 n$9_2_1)))
 :qid |stdinbpl.8488:17|
 :skolemid |965|
 :pattern ( (neverTriggered125 n$9_2) (neverTriggered125 n$9_2_1))
))) (=> (forall ((n$9_2@@0 T@Ref) (n$9_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$9_2@@0 n$9_2_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$9_2@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$9_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$9_2@@0 n$9_2_1@@0)))
 :qid |stdinbpl.8488:17|
 :skolemid |965|
 :pattern ( (neverTriggered125 n$9_2@@0) (neverTriggered125 n$9_2_1@@0))
)) (and (=> (= (ControlFlow 0 88) (- 0 91)) (forall ((n$9_2@@1 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$9_2@@1) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@8) n$9_2@@1 l) FullPerm))
 :qid |stdinbpl.8495:17|
 :skolemid |966|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$9_2@@1 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n$9_2@@1 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$9_2@@1 l))
))) (=> (forall ((n$9_2@@2 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$9_2@@2) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@8) n$9_2@@2 l) FullPerm))
 :qid |stdinbpl.8495:17|
 :skolemid |966|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$9_2@@2 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n$9_2@@2 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$9_2@@2 l))
)) (=> (forall ((n$9_2@@3 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$9_2@@3) (< NoPerm FullPerm)) (and (qpRange125 n$9_2@@3) (= (invRecv125 n$9_2@@3) n$9_2@@3)))
 :qid |stdinbpl.8501:22|
 :skolemid |967|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$9_2@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n$9_2@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$9_2@@3 l))
)) (=> (and (forall ((o_9@@16 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv125 o_9@@16)) (and (< NoPerm FullPerm) (qpRange125 o_9@@16))) (= (invRecv125 o_9@@16) o_9@@16))
 :qid |stdinbpl.8505:22|
 :skolemid |968|
 :pattern ( (invRecv125 o_9@@16))
)) (forall ((o_9@@17 T@Ref) ) (!  (and (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv125 o_9@@17)) (and (< NoPerm FullPerm) (qpRange125 o_9@@17))) (and (= (invRecv125 o_9@@17) o_9@@17) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) o_9@@17 l) (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@8) o_9@@17 l) FullPerm)))) (=> (not (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv125 o_9@@17)) (and (< NoPerm FullPerm) (qpRange125 o_9@@17)))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) o_9@@17 l) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@8) o_9@@17 l))))
 :qid |stdinbpl.8511:22|
 :skolemid |969|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) o_9@@17 l))
))) (=> (and (and (and (forall ((o_9@@18 T@Ref) (f_5@@7 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@8) o_9@@18 f_5@@7) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@16) o_9@@18 f_5@@7)))
 :qid |stdinbpl.8517:29|
 :skolemid |970|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@16) o_9@@18 f_5@@7))
)) (forall ((o_9@@19 T@Ref) (f_5@@8 T@Field_105234_105235) ) (!  (=> (not (= f_5@@8 l)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@8) o_9@@19 f_5@@8) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) o_9@@19 f_5@@8)))
 :qid |stdinbpl.8517:29|
 :skolemid |970|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) o_9@@19 f_5@@8))
))) (forall ((o_9@@20 T@Ref) (f_5@@9 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@8) o_9@@20 f_5@@9) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@16) o_9@@20 f_5@@9)))
 :qid |stdinbpl.8517:29|
 :skolemid |970|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@16) o_9@@20 f_5@@9))
))) (forall ((o_9@@21 T@Ref) (f_5@@10 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@8) o_9@@21 f_5@@10) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@16) o_9@@21 f_5@@10)))
 :qid |stdinbpl.8517:29|
 :skolemid |970|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@16) o_9@@21 f_5@@10))
))) (and (=> (= (ControlFlow 0 88) (- 0 90)) (forall ((n$10_2 T@Ref) (n$10_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$10_2 n$10_2_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$10_2)) (select (|Set#Union_70542| g0@@11 g1@@11) n$10_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$10_2 n$10_2_1)))
 :qid |stdinbpl.8529:17|
 :skolemid |971|
 :pattern ( (neverTriggered126 n$10_2) (neverTriggered126 n$10_2_1))
))) (=> (forall ((n$10_2@@0 T@Ref) (n$10_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$10_2@@0 n$10_2_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$10_2@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$10_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$10_2@@0 n$10_2_1@@0)))
 :qid |stdinbpl.8529:17|
 :skolemid |971|
 :pattern ( (neverTriggered126 n$10_2@@0) (neverTriggered126 n$10_2_1@@0))
)) (and (=> (= (ControlFlow 0 88) (- 0 89)) (forall ((n$10_2@@1 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$10_2@@1) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n$10_2@@1 r_11) FullPerm))
 :qid |stdinbpl.8536:17|
 :skolemid |972|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$10_2@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) n$10_2@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$10_2@@1 r_11))
))) (=> (forall ((n$10_2@@2 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$10_2@@2) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n$10_2@@2 r_11) FullPerm))
 :qid |stdinbpl.8536:17|
 :skolemid |972|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$10_2@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) n$10_2@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$10_2@@2 r_11))
)) (=> (forall ((n$10_2@@3 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$10_2@@3) (< NoPerm FullPerm)) (and (qpRange126 n$10_2@@3) (= (invRecv126 n$10_2@@3) n$10_2@@3)))
 :qid |stdinbpl.8542:22|
 :skolemid |973|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$10_2@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) n$10_2@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$10_2@@3 r_11))
)) (=> (and (forall ((o_9@@22 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv126 o_9@@22)) (and (< NoPerm FullPerm) (qpRange126 o_9@@22))) (= (invRecv126 o_9@@22) o_9@@22))
 :qid |stdinbpl.8546:22|
 :skolemid |974|
 :pattern ( (invRecv126 o_9@@22))
)) (forall ((o_9@@23 T@Ref) ) (!  (and (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv126 o_9@@23)) (and (< NoPerm FullPerm) (qpRange126 o_9@@23))) (and (= (invRecv126 o_9@@23) o_9@@23) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) o_9@@23 r_11) (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) o_9@@23 r_11) FullPerm)))) (=> (not (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv126 o_9@@23)) (and (< NoPerm FullPerm) (qpRange126 o_9@@23)))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) o_9@@23 r_11) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) o_9@@23 r_11))))
 :qid |stdinbpl.8552:22|
 :skolemid |975|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) o_9@@23 r_11))
))) (=> (and (and (and (forall ((o_9@@24 T@Ref) (f_5@@11 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@16) o_9@@24 f_5@@11) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@17) o_9@@24 f_5@@11)))
 :qid |stdinbpl.8558:29|
 :skolemid |976|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@17) o_9@@24 f_5@@11))
)) (forall ((o_9@@25 T@Ref) (f_5@@12 T@Field_105234_105235) ) (!  (=> (not (= f_5@@12 r_11)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) o_9@@25 f_5@@12) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) o_9@@25 f_5@@12)))
 :qid |stdinbpl.8558:29|
 :skolemid |976|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) o_9@@25 f_5@@12))
))) (forall ((o_9@@26 T@Ref) (f_5@@13 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@16) o_9@@26 f_5@@13) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@17) o_9@@26 f_5@@13)))
 :qid |stdinbpl.8558:29|
 :skolemid |976|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@17) o_9@@26 f_5@@13))
))) (forall ((o_9@@27 T@Ref) (f_5@@14 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@16) o_9@@27 f_5@@14) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@17) o_9@@27 f_5@@14)))
 :qid |stdinbpl.8558:29|
 :skolemid |976|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@17) o_9@@27 f_5@@14))
))) (and (and (=> (= (ControlFlow 0 88) 87) anon208_Else_correct) (=> (= (ControlFlow 0 88) 74) anon209_Then_correct)) (=> (= (ControlFlow 0 88) 76) anon209_Else_correct)))))))))))))))))))))
(let ((anon107_correct  (=> (state ExhaleHeap@1 QPMask@15) (=> (and (and (state ExhaleHeap@1 QPMask@15) (= Mask@8 QPMask@15)) (and (= Heap@0 ExhaleHeap@1) (= (ControlFlow 0 142) 88))) anon129_correct))))
(let ((anon197_Else_correct  (=> (and (= x1 null) (= (ControlFlow 0 144) 142)) anon107_correct)))
(let ((anon197_Then_correct  (=> (and (and (not (= x1 null)) (state ExhaleHeap@1 QPMask@15)) (and (forall ((v1_1 T@Ref) (v2_1 T@Ref) ) (!  (=> (not (= v1_1 v2_1)) (= (exists_path ($$ ExhaleHeap@1 arg_g@0) v1_1 v2_1)  (or (exists_path ($$ Heap@@29 arg_g@0) v1_1 v2_1) (and (exists_path ($$ Heap@@29 arg_g@0) v1_1 x0) (exists_path ($$ Heap@@29 arg_g@0) x1 v2_1)))))
 :qid |stdinbpl.8187:28|
 :skolemid |930|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| ExhaleHeap@1 arg_g@0)) (FrameFragment_8621 (|$$#condqp2| ExhaleHeap@1 arg_g@0))) arg_g@0) v1_1 v2_1))
)) (= (ControlFlow 0 143) 142))) anon107_correct)))
(let ((anon196_Else_correct  (=> (= x1 null) (and (=> (= (ControlFlow 0 146) 143) anon197_Then_correct) (=> (= (ControlFlow 0 146) 144) anon197_Else_correct)))))
(let ((anon196_Then_correct  (=> (not (= x1 null)) (=> (and (state ExhaleHeap@1 QPMask@15) (forall ((v1@@2 T@Ref) (v2@@2 T@Ref) ) (! (= (edge ($$ ExhaleHeap@1 arg_g@0) v1@@2 v2@@2)  (or (edge ($$ Heap@@29 arg_g@0) v1@@2 v2@@2) (and (= v1@@2 x0) (= v2@@2 x1))))
 :qid |stdinbpl.8180:28|
 :skolemid |929|
 :pattern ( (edge (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 arg_g@0)) (FrameFragment_8621 (|$$#condqp2| Heap@@29 arg_g@0))) arg_g@0) v1@@2 v2@@2))
))) (and (=> (= (ControlFlow 0 145) 143) anon197_Then_correct) (=> (= (ControlFlow 0 145) 144) anon197_Else_correct))))))
(let ((anon195_Else_correct  (=> (not (= x1 null)) (and (=> (= (ControlFlow 0 148) 145) anon196_Then_correct) (=> (= (ControlFlow 0 148) 146) anon196_Else_correct)))))
(let ((anon195_Then_correct  (=> (= x1 null) (=> (and (state ExhaleHeap@1 QPMask@15) (|Set#Equal_70309| ($$ ExhaleHeap@1 arg_g@0) ($$ Heap@@29 arg_g@0))) (and (=> (= (ControlFlow 0 147) 145) anon196_Then_correct) (=> (= (ControlFlow 0 147) 146) anon196_Else_correct))))))
(let ((anon193_Else_correct  (=> (forall ((n$2_3_1 T@Ref) ) (!  (=> (and (select arg_g@0 n$2_3_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_3_1 r_11) null))) (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_3_1 r_11)))
 :qid |stdinbpl.8059:26|
 :skolemid |912|
 :pattern ( (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_3_1 r_11)))
 :pattern ( (select arg_g@0 n$2_3_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_3_1 r_11))
)) (and (=> (= (ControlFlow 0 149) (- 0 156)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 l) null)) (=> (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 l) null) (=> (and (and (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@1 QPMask@13) (not (select arg_g@0 null))) (and (select arg_g@0 x0) (= perm@6 (ite (= __left__ __left__) FullPerm (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 149) (- 0 155)) (>= perm@6 NoPerm)) (=> (>= perm@6 NoPerm) (=> (and (and (=> (> perm@6 NoPerm) (not (= x0 null))) (= Mask@6 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) x0 l (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) x0 l) perm@6)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@13) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@13) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@13)))) (and (state ExhaleHeap@1 Mask@6) (= perm@7 (ite (= __left__ __right__) FullPerm (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 149) (- 0 154)) (>= perm@7 NoPerm)) (=> (>= perm@7 NoPerm) (=> (=> (> perm@7 NoPerm) (not (= x0 null))) (=> (and (= Mask@7 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@6) x0 r_11 (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@6) x0 r_11) perm@7)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@6) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@6) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@6))) (state ExhaleHeap@1 Mask@7)) (and (=> (= (ControlFlow 0 149) (- 0 153)) (forall ((n$3_2 T@Ref) (n$3_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_2 n$3_2_1)) (and (select arg_g@0 n$3_2) (not (= n$3_2 x0)))) (and (select arg_g@0 n$3_2_1) (not (= n$3_2_1 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$3_2 n$3_2_1)))
 :qid |stdinbpl.8087:21|
 :skolemid |913|
))) (=> (forall ((n$3_2@@0 T@Ref) (n$3_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_2@@0 n$3_2_1@@0)) (and (select arg_g@0 n$3_2@@0) (not (= n$3_2@@0 x0)))) (and (select arg_g@0 n$3_2_1@@0) (not (= n$3_2_1@@0 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$3_2@@0 n$3_2_1@@0)))
 :qid |stdinbpl.8087:21|
 :skolemid |913|
)) (=> (and (forall ((n$3_2@@1 T@Ref) ) (!  (=> (and (and (select arg_g@0 n$3_2@@1) (not (= n$3_2@@1 x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange133 n$3_2@@1) (= (invRecv133 n$3_2@@1) n$3_2@@1)))
 :qid |stdinbpl.8093:28|
 :skolemid |914|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$3_2@@1 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) n$3_2@@1 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$3_2@@1 l))
)) (forall ((o_9@@28 T@Ref) ) (!  (=> (and (and (and (select arg_g@0 (invRecv133 o_9@@28)) (not (= (invRecv133 o_9@@28) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange133 o_9@@28)) (= (invRecv133 o_9@@28) o_9@@28))
 :qid |stdinbpl.8097:28|
 :skolemid |915|
 :pattern ( (invRecv133 o_9@@28))
))) (and (=> (= (ControlFlow 0 149) (- 0 152)) (forall ((n$3_2@@2 T@Ref) ) (!  (=> (and (select arg_g@0 n$3_2@@2) (not (= n$3_2@@2 x0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8103:21|
 :skolemid |916|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$3_2@@2 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) n$3_2@@2 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$3_2@@2 l))
))) (=> (forall ((n$3_2@@3 T@Ref) ) (!  (=> (and (select arg_g@0 n$3_2@@3) (not (= n$3_2@@3 x0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8103:21|
 :skolemid |916|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$3_2@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) n$3_2@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$3_2@@3 l))
)) (=> (and (forall ((n$3_2@@4 T@Ref) ) (!  (=> (and (and (select arg_g@0 n$3_2@@4) (not (= n$3_2@@4 x0))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$3_2@@4 null)))
 :qid |stdinbpl.8109:28|
 :skolemid |917|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$3_2@@4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) n$3_2@@4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$3_2@@4 l))
)) (forall ((o_9@@29 T@Ref) ) (!  (and (=> (and (and (and (select arg_g@0 (invRecv133 o_9@@29)) (not (= (invRecv133 o_9@@29) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange133 o_9@@29)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv133 o_9@@29) o_9@@29)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) o_9@@29 l) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@7) o_9@@29 l) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select arg_g@0 (invRecv133 o_9@@29)) (not (= (invRecv133 o_9@@29) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange133 o_9@@29))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) o_9@@29 l) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@7) o_9@@29 l))))
 :qid |stdinbpl.8115:28|
 :skolemid |918|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) o_9@@29 l))
))) (=> (and (and (and (and (forall ((o_9@@30 T@Ref) (f_5@@15 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@7) o_9@@30 f_5@@15) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@14) o_9@@30 f_5@@15)))
 :qid |stdinbpl.8119:35|
 :skolemid |919|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@7) o_9@@30 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@14) o_9@@30 f_5@@15))
)) (forall ((o_9@@31 T@Ref) (f_5@@16 T@Field_105234_105235) ) (!  (=> (not (= f_5@@16 l)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@7) o_9@@31 f_5@@16) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) o_9@@31 f_5@@16)))
 :qid |stdinbpl.8119:35|
 :skolemid |919|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@7) o_9@@31 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) o_9@@31 f_5@@16))
))) (forall ((o_9@@32 T@Ref) (f_5@@17 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@7) o_9@@32 f_5@@17) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@14) o_9@@32 f_5@@17)))
 :qid |stdinbpl.8119:35|
 :skolemid |919|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@7) o_9@@32 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@14) o_9@@32 f_5@@17))
))) (forall ((o_9@@33 T@Ref) (f_5@@18 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@7) o_9@@33 f_5@@18) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@14) o_9@@33 f_5@@18)))
 :qid |stdinbpl.8119:35|
 :skolemid |919|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@7) o_9@@33 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@14) o_9@@33 f_5@@18))
))) (state ExhaleHeap@1 QPMask@14)) (and (=> (= (ControlFlow 0 149) (- 0 151)) (forall ((n$4_2 T@Ref) (n$4_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_2 n$4_2_1)) (and (select arg_g@0 n$4_2) (not (= n$4_2 x0)))) (and (select arg_g@0 n$4_2_1) (not (= n$4_2_1 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$4_2 n$4_2_1)))
 :qid |stdinbpl.8127:21|
 :skolemid |920|
))) (=> (forall ((n$4_2@@0 T@Ref) (n$4_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_2@@0 n$4_2_1@@0)) (and (select arg_g@0 n$4_2@@0) (not (= n$4_2@@0 x0)))) (and (select arg_g@0 n$4_2_1@@0) (not (= n$4_2_1@@0 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$4_2@@0 n$4_2_1@@0)))
 :qid |stdinbpl.8127:21|
 :skolemid |920|
)) (=> (and (forall ((n$4_2@@1 T@Ref) ) (!  (=> (and (and (select arg_g@0 n$4_2@@1) (not (= n$4_2@@1 x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange134 n$4_2@@1) (= (invRecv134 n$4_2@@1) n$4_2@@1)))
 :qid |stdinbpl.8133:28|
 :skolemid |921|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$4_2@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@15) n$4_2@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$4_2@@1 r_11))
)) (forall ((o_9@@34 T@Ref) ) (!  (=> (and (and (and (select arg_g@0 (invRecv134 o_9@@34)) (not (= (invRecv134 o_9@@34) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange134 o_9@@34)) (= (invRecv134 o_9@@34) o_9@@34))
 :qid |stdinbpl.8137:28|
 :skolemid |922|
 :pattern ( (invRecv134 o_9@@34))
))) (and (=> (= (ControlFlow 0 149) (- 0 150)) (forall ((n$4_2@@2 T@Ref) ) (!  (=> (and (select arg_g@0 n$4_2@@2) (not (= n$4_2@@2 x0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8143:21|
 :skolemid |923|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$4_2@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@15) n$4_2@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$4_2@@2 r_11))
))) (=> (forall ((n$4_2@@3 T@Ref) ) (!  (=> (and (select arg_g@0 n$4_2@@3) (not (= n$4_2@@3 x0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8143:21|
 :skolemid |923|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$4_2@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@15) n$4_2@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$4_2@@3 r_11))
)) (=> (and (forall ((n$4_2@@4 T@Ref) ) (!  (=> (and (and (select arg_g@0 n$4_2@@4) (not (= n$4_2@@4 x0))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$4_2@@4 null)))
 :qid |stdinbpl.8149:28|
 :skolemid |924|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$4_2@@4 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@15) n$4_2@@4 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$4_2@@4 r_11))
)) (forall ((o_9@@35 T@Ref) ) (!  (and (=> (and (and (and (select arg_g@0 (invRecv134 o_9@@35)) (not (= (invRecv134 o_9@@35) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange134 o_9@@35)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv134 o_9@@35) o_9@@35)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@15) o_9@@35 r_11) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) o_9@@35 r_11) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select arg_g@0 (invRecv134 o_9@@35)) (not (= (invRecv134 o_9@@35) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange134 o_9@@35))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@15) o_9@@35 r_11) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) o_9@@35 r_11))))
 :qid |stdinbpl.8155:28|
 :skolemid |925|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@15) o_9@@35 r_11))
))) (=> (and (and (and (and (forall ((o_9@@36 T@Ref) (f_5@@19 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@14) o_9@@36 f_5@@19) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@15) o_9@@36 f_5@@19)))
 :qid |stdinbpl.8159:35|
 :skolemid |926|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@14) o_9@@36 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@15) o_9@@36 f_5@@19))
)) (forall ((o_9@@37 T@Ref) (f_5@@20 T@Field_105234_105235) ) (!  (=> (not (= f_5@@20 r_11)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) o_9@@37 f_5@@20) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@15) o_9@@37 f_5@@20)))
 :qid |stdinbpl.8159:35|
 :skolemid |926|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) o_9@@37 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@15) o_9@@37 f_5@@20))
))) (forall ((o_9@@38 T@Ref) (f_5@@21 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@14) o_9@@38 f_5@@21) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@15) o_9@@38 f_5@@21)))
 :qid |stdinbpl.8159:35|
 :skolemid |926|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@14) o_9@@38 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@15) o_9@@38 f_5@@21))
))) (forall ((o_9@@39 T@Ref) (f_5@@22 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@14) o_9@@39 f_5@@22) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@15) o_9@@39 f_5@@22)))
 :qid |stdinbpl.8159:35|
 :skolemid |926|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@14) o_9@@39 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@15) o_9@@39 f_5@@22))
))) (and (and (state ExhaleHeap@1 QPMask@15) (forall ((n$5_2 T@Ref) ) (!  (=> (and (select arg_g@0 n$5_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$5_2 l) null))) (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$5_2 l)))
 :qid |stdinbpl.8165:26|
 :skolemid |927|
 :pattern ( (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$5_2 l)))
 :pattern ( (select arg_g@0 n$5_2) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$5_2 l))
))) (and (forall ((n$6_2 T@Ref) ) (!  (=> (and (select arg_g@0 n$6_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$6_2 r_11) null))) (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$6_2 r_11)))
 :qid |stdinbpl.8169:26|
 :skolemid |928|
 :pattern ( (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$6_2 r_11)))
 :pattern ( (select arg_g@0 n$6_2) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) n$6_2 r_11))
)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@1) x0 l) x1)))) (and (=> (= (ControlFlow 0 149) 147) anon195_Then_correct) (=> (= (ControlFlow 0 149) 148) anon195_Else_correct)))))))))))))))))))))))))))))
(let ((anon191_Else_correct  (=> (forall ((n$1_5_1_1 T@Ref) ) (!  (=> (and (select arg_g@0 n$1_5_1_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_5_1_1 l) null))) (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_5_1_1 l)))
 :qid |stdinbpl.8048:26|
 :skolemid |911|
 :pattern ( (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_5_1_1 l)))
 :pattern ( (select arg_g@0 n$1_5_1_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_5_1_1 l))
)) (and (and (=> (= (ControlFlow 0 157) 149) anon193_Else_correct) (=> (= (ControlFlow 0 157) 139) anon194_Then_correct)) (=> (= (ControlFlow 0 157) 141) anon194_Else_correct)))))
(let ((anon93_correct  (=> (= Mask@5 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@4) x0 r_11 (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@4) x0 r_11) perm@5)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@4) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@4) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@4))) (and (=> (= (ControlFlow 0 158) (- 0 164)) (forall ((n_16_1 T@Ref) ) (!  (=> (and (and (select arg_g@0 n_16_1) (not (= n_16_1 x0))) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7955:23|
 :skolemid |897|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n_16_1 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1 l))
))) (=> (forall ((n_16_1@@0 T@Ref) ) (!  (=> (and (and (select arg_g@0 n_16_1@@0) (not (= n_16_1@@0 x0))) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1@@0 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7955:23|
 :skolemid |897|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1@@0 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n_16_1@@0 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1@@0 l))
)) (and (=> (= (ControlFlow 0 158) (- 0 163)) (forall ((n_16_1@@1 T@Ref) (n_16_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_16_1@@1 n_16_2)) (and (select arg_g@0 n_16_1@@1) (not (= n_16_1@@1 x0)))) (and (select arg_g@0 n_16_2) (not (= n_16_2 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_16_1@@1 n_16_2)))
 :qid |stdinbpl.7962:23|
 :skolemid |898|
 :pattern ( (neverTriggered131 n_16_1@@1) (neverTriggered131 n_16_2))
))) (=> (forall ((n_16_1@@2 T@Ref) (n_16_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_16_1@@2 n_16_2@@0)) (and (select arg_g@0 n_16_1@@2) (not (= n_16_1@@2 x0)))) (and (select arg_g@0 n_16_2@@0) (not (= n_16_2@@0 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_16_1@@2 n_16_2@@0)))
 :qid |stdinbpl.7962:23|
 :skolemid |898|
 :pattern ( (neverTriggered131 n_16_1@@2) (neverTriggered131 n_16_2@@0))
)) (and (=> (= (ControlFlow 0 158) (- 0 162)) (forall ((n_16_1@@3 T@Ref) ) (!  (=> (and (select arg_g@0 n_16_1@@3) (not (= n_16_1@@3 x0))) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@5) n_16_1@@3 l) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.7969:23|
 :skolemid |899|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n_16_1@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1@@3 l))
))) (=> (forall ((n_16_1@@4 T@Ref) ) (!  (=> (and (select arg_g@0 n_16_1@@4) (not (= n_16_1@@4 x0))) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@5) n_16_1@@4 l) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.7969:23|
 :skolemid |899|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1@@4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n_16_1@@4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1@@4 l))
)) (=> (forall ((n_16_1@@5 T@Ref) ) (!  (=> (and (and (select arg_g@0 n_16_1@@5) (not (= n_16_1@@5 x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange131 n_16_1@@5) (= (invRecv131 n_16_1@@5) n_16_1@@5)))
 :qid |stdinbpl.7975:28|
 :skolemid |900|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1@@5 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n_16_1@@5 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1@@5 l))
)) (=> (and (forall ((o_9@@40 T@Ref) ) (!  (=> (and (and (select arg_g@0 (invRecv131 o_9@@40)) (not (= (invRecv131 o_9@@40) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange131 o_9@@40))) (= (invRecv131 o_9@@40) o_9@@40))
 :qid |stdinbpl.7979:28|
 :skolemid |901|
 :pattern ( (invRecv131 o_9@@40))
)) (forall ((o_9@@41 T@Ref) ) (!  (and (=> (and (and (select arg_g@0 (invRecv131 o_9@@41)) (not (= (invRecv131 o_9@@41) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange131 o_9@@41))) (and (= (invRecv131 o_9@@41) o_9@@41) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) o_9@@41 l) (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@5) o_9@@41 l) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select arg_g@0 (invRecv131 o_9@@41)) (not (= (invRecv131 o_9@@41) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange131 o_9@@41)))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) o_9@@41 l) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@5) o_9@@41 l))))
 :qid |stdinbpl.7985:28|
 :skolemid |902|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) o_9@@41 l))
))) (=> (and (and (and (forall ((o_9@@42 T@Ref) (f_5@@23 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@5) o_9@@42 f_5@@23) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@12) o_9@@42 f_5@@23)))
 :qid |stdinbpl.7991:35|
 :skolemid |903|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@12) o_9@@42 f_5@@23))
)) (forall ((o_9@@43 T@Ref) (f_5@@24 T@Field_105234_105235) ) (!  (=> (not (= f_5@@24 l)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@5) o_9@@43 f_5@@24) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) o_9@@43 f_5@@24)))
 :qid |stdinbpl.7991:35|
 :skolemid |903|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) o_9@@43 f_5@@24))
))) (forall ((o_9@@44 T@Ref) (f_5@@25 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@5) o_9@@44 f_5@@25) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@12) o_9@@44 f_5@@25)))
 :qid |stdinbpl.7991:35|
 :skolemid |903|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@12) o_9@@44 f_5@@25))
))) (forall ((o_9@@45 T@Ref) (f_5@@26 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@5) o_9@@45 f_5@@26) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@12) o_9@@45 f_5@@26)))
 :qid |stdinbpl.7991:35|
 :skolemid |903|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@12) o_9@@45 f_5@@26))
))) (and (=> (= (ControlFlow 0 158) (- 0 161)) (forall ((n$0_10_1 T@Ref) ) (!  (=> (and (and (select arg_g@0 n$0_10_1) (not (= n$0_10_1 x0))) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_10_1 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8000:23|
 :skolemid |904|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_10_1 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) n$0_10_1 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_10_1 r_11))
))) (=> (forall ((n$0_10_1@@0 T@Ref) ) (!  (=> (and (and (select arg_g@0 n$0_10_1@@0) (not (= n$0_10_1@@0 x0))) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_10_1@@0 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8000:23|
 :skolemid |904|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_10_1@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) n$0_10_1@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_10_1@@0 r_11))
)) (and (=> (= (ControlFlow 0 158) (- 0 160)) (forall ((n$0_10_1@@1 T@Ref) (n$0_10_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_10_1@@1 n$0_10_2)) (and (select arg_g@0 n$0_10_1@@1) (not (= n$0_10_1@@1 x0)))) (and (select arg_g@0 n$0_10_2) (not (= n$0_10_2 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_10_1@@1 n$0_10_2)))
 :qid |stdinbpl.8007:23|
 :skolemid |905|
 :pattern ( (neverTriggered132 n$0_10_1@@1) (neverTriggered132 n$0_10_2))
))) (=> (forall ((n$0_10_1@@2 T@Ref) (n$0_10_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_10_1@@2 n$0_10_2@@0)) (and (select arg_g@0 n$0_10_1@@2) (not (= n$0_10_1@@2 x0)))) (and (select arg_g@0 n$0_10_2@@0) (not (= n$0_10_2@@0 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_10_1@@2 n$0_10_2@@0)))
 :qid |stdinbpl.8007:23|
 :skolemid |905|
 :pattern ( (neverTriggered132 n$0_10_1@@2) (neverTriggered132 n$0_10_2@@0))
)) (and (=> (= (ControlFlow 0 158) (- 0 159)) (forall ((n$0_10_1@@3 T@Ref) ) (!  (=> (and (select arg_g@0 n$0_10_1@@3) (not (= n$0_10_1@@3 x0))) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n$0_10_1@@3 r_11) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.8014:23|
 :skolemid |906|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_10_1@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) n$0_10_1@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_10_1@@3 r_11))
))) (=> (forall ((n$0_10_1@@4 T@Ref) ) (!  (=> (and (select arg_g@0 n$0_10_1@@4) (not (= n$0_10_1@@4 x0))) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n$0_10_1@@4 r_11) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.8014:23|
 :skolemid |906|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_10_1@@4 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) n$0_10_1@@4 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_10_1@@4 r_11))
)) (=> (forall ((n$0_10_1@@5 T@Ref) ) (!  (=> (and (and (select arg_g@0 n$0_10_1@@5) (not (= n$0_10_1@@5 x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange132 n$0_10_1@@5) (= (invRecv132 n$0_10_1@@5) n$0_10_1@@5)))
 :qid |stdinbpl.8020:28|
 :skolemid |907|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_10_1@@5 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) n$0_10_1@@5 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_10_1@@5 r_11))
)) (=> (and (forall ((o_9@@46 T@Ref) ) (!  (=> (and (and (select arg_g@0 (invRecv132 o_9@@46)) (not (= (invRecv132 o_9@@46) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange132 o_9@@46))) (= (invRecv132 o_9@@46) o_9@@46))
 :qid |stdinbpl.8024:28|
 :skolemid |908|
 :pattern ( (invRecv132 o_9@@46))
)) (forall ((o_9@@47 T@Ref) ) (!  (and (=> (and (and (select arg_g@0 (invRecv132 o_9@@47)) (not (= (invRecv132 o_9@@47) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange132 o_9@@47))) (and (= (invRecv132 o_9@@47) o_9@@47) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) o_9@@47 r_11) (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) o_9@@47 r_11) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select arg_g@0 (invRecv132 o_9@@47)) (not (= (invRecv132 o_9@@47) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange132 o_9@@47)))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) o_9@@47 r_11) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) o_9@@47 r_11))))
 :qid |stdinbpl.8030:28|
 :skolemid |909|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) o_9@@47 r_11))
))) (=> (and (and (and (forall ((o_9@@48 T@Ref) (f_5@@27 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@12) o_9@@48 f_5@@27) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@13) o_9@@48 f_5@@27)))
 :qid |stdinbpl.8036:35|
 :skolemid |910|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@13) o_9@@48 f_5@@27))
)) (forall ((o_9@@49 T@Ref) (f_5@@28 T@Field_105234_105235) ) (!  (=> (not (= f_5@@28 r_11)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) o_9@@49 f_5@@28) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) o_9@@49 f_5@@28)))
 :qid |stdinbpl.8036:35|
 :skolemid |910|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) o_9@@49 f_5@@28))
))) (forall ((o_9@@50 T@Ref) (f_5@@29 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@12) o_9@@50 f_5@@29) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@13) o_9@@50 f_5@@29)))
 :qid |stdinbpl.8036:35|
 :skolemid |910|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@13) o_9@@50 f_5@@29))
))) (forall ((o_9@@51 T@Ref) (f_5@@30 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@12) o_9@@51 f_5@@30) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@13) o_9@@51 f_5@@30)))
 :qid |stdinbpl.8036:35|
 :skolemid |910|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@13) o_9@@51 f_5@@30))
))) (and (and (=> (= (ControlFlow 0 158) 157) anon191_Else_correct) (=> (= (ControlFlow 0 158) 135) anon192_Then_correct)) (=> (= (ControlFlow 0 158) 137) anon192_Else_correct)))))))))))))))))))))))
(let ((anon190_Else_correct  (=> (and (= perm@5 NoPerm) (= (ControlFlow 0 167) 158)) anon93_correct)))
(let ((anon190_Then_correct  (=> (not (= perm@5 NoPerm)) (and (=> (= (ControlFlow 0 165) (- 0 166)) (<= perm@5 (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@4) x0 r_11))) (=> (<= perm@5 (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@4) x0 r_11)) (=> (= (ControlFlow 0 165) 158) anon93_correct))))))
(let ((anon91_correct  (=> (and (= Mask@4 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) x0 l (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) x0 l) perm@4)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@3) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@3) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@3))) (= perm@5 (ite (= __left__ __right__) FullPerm (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 168) (- 0 169)) (>= perm@5 NoPerm)) (=> (>= perm@5 NoPerm) (and (=> (= (ControlFlow 0 168) 165) anon190_Then_correct) (=> (= (ControlFlow 0 168) 167) anon190_Else_correct)))))))
(let ((anon189_Else_correct  (=> (and (= perm@4 NoPerm) (= (ControlFlow 0 172) 168)) anon91_correct)))
(let ((anon189_Then_correct  (=> (not (= perm@4 NoPerm)) (and (=> (= (ControlFlow 0 170) (- 0 171)) (<= perm@4 (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) x0 l))) (=> (<= perm@4 (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) x0 l)) (=> (= (ControlFlow 0 170) 168) anon91_correct))))))
(let ((anon89_correct  (and (=> (= (ControlFlow 0 173) (- 0 176)) (not (select arg_g@0 null))) (=> (not (select arg_g@0 null)) (and (=> (= (ControlFlow 0 173) (- 0 175)) (select arg_g@0 x0)) (=> (select arg_g@0 x0) (=> (= perm@4 (ite (= __left__ __left__) FullPerm (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 173) (- 0 174)) (>= perm@4 NoPerm)) (=> (>= perm@4 NoPerm) (and (=> (= (ControlFlow 0 173) 170) anon189_Then_correct) (=> (= (ControlFlow 0 173) 172) anon189_Else_correct)))))))))))
(let ((anon188_Else_correct  (=> (and (= x1 null) (= (ControlFlow 0 179) 173)) anon89_correct)))
(let ((anon188_Then_correct  (=> (not (= x1 null)) (and (=> (= (ControlFlow 0 177) (- 0 178)) (select arg_g@0 x1)) (=> (select arg_g@0 x1) (=> (= (ControlFlow 0 177) 173) anon89_correct))))))
(let ((anon187_Then_correct  (=> (and (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 l) null) (= arg_g@0 (|Set#Union_70542| g0@@11 g1@@11))) (and (=> (= (ControlFlow 0 180) (- 0 181)) (select arg_g@0 x0)) (=> (select arg_g@0 x0) (and (=> (= (ControlFlow 0 180) 177) anon188_Then_correct) (=> (= (ControlFlow 0 180) 179) anon188_Else_correct)))))))
(let ((anon128_correct  (=> (state ExhaleHeap@0 QPMask@11) (=> (and (and (state ExhaleHeap@0 QPMask@11) (= Mask@8 QPMask@11)) (and (= Heap@0 ExhaleHeap@0) (= (ControlFlow 0 94) 88))) anon129_correct))))
(let ((anon207_Else_correct  (=> (and (= x1 null) (= (ControlFlow 0 96) 94)) anon128_correct)))
(let ((anon207_Then_correct  (=> (and (and (not (= x1 null)) (state ExhaleHeap@0 QPMask@11)) (and (forall ((v1_3 T@Ref) (v2_3 T@Ref) ) (!  (=> (not (= v1_3 v2_3)) (= (exists_path ($$ ExhaleHeap@0 arg_g_1@0) v1_3 v2_3)  (or (exists_path ($$ Heap@@29 arg_g_1@0) v1_3 v2_3) (and (exists_path ($$ Heap@@29 arg_g_1@0) v1_3 x0) (exists_path ($$ Heap@@29 arg_g_1@0) x1 v2_3)))))
 :qid |stdinbpl.8466:28|
 :skolemid |964|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| ExhaleHeap@0 arg_g_1@0)) (FrameFragment_8621 (|$$#condqp2| ExhaleHeap@0 arg_g_1@0))) arg_g_1@0) v1_3 v2_3))
)) (= (ControlFlow 0 95) 94))) anon128_correct)))
(let ((anon206_Else_correct  (=> (= x1 null) (and (=> (= (ControlFlow 0 98) 95) anon207_Then_correct) (=> (= (ControlFlow 0 98) 96) anon207_Else_correct)))))
(let ((anon206_Then_correct  (=> (not (= x1 null)) (=> (and (state ExhaleHeap@0 QPMask@11) (forall ((v1_2_1 T@Ref) (v2_2_1 T@Ref) ) (! (= (edge ($$ ExhaleHeap@0 arg_g_1@0) v1_2_1 v2_2_1)  (or (edge ($$ Heap@@29 arg_g_1@0) v1_2_1 v2_2_1) (and (= v1_2_1 x0) (= v2_2_1 x1))))
 :qid |stdinbpl.8459:28|
 :skolemid |963|
 :pattern ( (edge (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 arg_g_1@0)) (FrameFragment_8621 (|$$#condqp2| Heap@@29 arg_g_1@0))) arg_g_1@0) v1_2_1 v2_2_1))
))) (and (=> (= (ControlFlow 0 97) 95) anon207_Then_correct) (=> (= (ControlFlow 0 97) 96) anon207_Else_correct))))))
(let ((anon205_Else_correct  (=> (not (= x1 null)) (and (=> (= (ControlFlow 0 100) 97) anon206_Then_correct) (=> (= (ControlFlow 0 100) 98) anon206_Else_correct)))))
(let ((anon205_Then_correct  (=> (= x1 null) (=> (and (state ExhaleHeap@0 QPMask@11) (|Set#Equal_70309| ($$ ExhaleHeap@0 arg_g_1@0) ($$ Heap@@29 arg_g_1@0))) (and (=> (= (ControlFlow 0 99) 97) anon206_Then_correct) (=> (= (ControlFlow 0 99) 98) anon206_Else_correct))))))
(let ((anon203_Else_correct  (=> (forall ((n$2_5_1_1 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$2_5_1_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_5_1_1 r_11) null))) (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_5_1_1 r_11)))
 :qid |stdinbpl.8338:26|
 :skolemid |946|
 :pattern ( (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_5_1_1 r_11)))
 :pattern ( (select arg_g_1@0 n$2_5_1_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_5_1_1 r_11))
)) (and (=> (= (ControlFlow 0 101) (- 0 108)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 r_11) null)) (=> (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 r_11) null) (=> (and (and (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@0 QPMask@9) (not (select arg_g_1@0 null))) (and (select arg_g_1@0 x0) (= perm@2 (ite (= __right__ __left__) FullPerm (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 101) (- 0 107)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (=> (and (and (=> (> perm@2 NoPerm) (not (= x0 null))) (= Mask@2 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) x0 l (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) x0 l) perm@2)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@9) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@9) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@9)))) (and (state ExhaleHeap@0 Mask@2) (= perm@3 (ite (= __right__ __right__) FullPerm (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 101) (- 0 106)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (=> (=> (> perm@3 NoPerm) (not (= x0 null))) (=> (and (= Mask@3 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@2) x0 r_11 (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@2) x0 r_11) perm@3)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@2) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@2) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@2))) (state ExhaleHeap@0 Mask@3)) (and (=> (= (ControlFlow 0 101) (- 0 105)) (forall ((n$3_3 T@Ref) (n$3_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_3 n$3_3_1)) (and (select arg_g_1@0 n$3_3) (not (= n$3_3 x0)))) (and (select arg_g_1@0 n$3_3_1) (not (= n$3_3_1 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$3_3 n$3_3_1)))
 :qid |stdinbpl.8366:21|
 :skolemid |947|
))) (=> (forall ((n$3_3@@0 T@Ref) (n$3_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_3@@0 n$3_3_1@@0)) (and (select arg_g_1@0 n$3_3@@0) (not (= n$3_3@@0 x0)))) (and (select arg_g_1@0 n$3_3_1@@0) (not (= n$3_3_1@@0 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$3_3@@0 n$3_3_1@@0)))
 :qid |stdinbpl.8366:21|
 :skolemid |947|
)) (=> (and (forall ((n$3_3@@1 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n$3_3@@1) (not (= n$3_3@@1 x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange137 n$3_3@@1) (= (invRecv137 n$3_3@@1) n$3_3@@1)))
 :qid |stdinbpl.8372:28|
 :skolemid |948|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$3_3@@1 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) n$3_3@@1 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$3_3@@1 l))
)) (forall ((o_9@@52 T@Ref) ) (!  (=> (and (and (and (select arg_g_1@0 (invRecv137 o_9@@52)) (not (= (invRecv137 o_9@@52) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange137 o_9@@52)) (= (invRecv137 o_9@@52) o_9@@52))
 :qid |stdinbpl.8376:28|
 :skolemid |949|
 :pattern ( (invRecv137 o_9@@52))
))) (and (=> (= (ControlFlow 0 101) (- 0 104)) (forall ((n$3_3@@2 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$3_3@@2) (not (= n$3_3@@2 x0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8382:21|
 :skolemid |950|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$3_3@@2 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) n$3_3@@2 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$3_3@@2 l))
))) (=> (forall ((n$3_3@@3 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$3_3@@3) (not (= n$3_3@@3 x0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8382:21|
 :skolemid |950|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$3_3@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) n$3_3@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$3_3@@3 l))
)) (=> (and (forall ((n$3_3@@4 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n$3_3@@4) (not (= n$3_3@@4 x0))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$3_3@@4 null)))
 :qid |stdinbpl.8388:28|
 :skolemid |951|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$3_3@@4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) n$3_3@@4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$3_3@@4 l))
)) (forall ((o_9@@53 T@Ref) ) (!  (and (=> (and (and (and (select arg_g_1@0 (invRecv137 o_9@@53)) (not (= (invRecv137 o_9@@53) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange137 o_9@@53)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv137 o_9@@53) o_9@@53)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) o_9@@53 l) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@3) o_9@@53 l) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select arg_g_1@0 (invRecv137 o_9@@53)) (not (= (invRecv137 o_9@@53) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange137 o_9@@53))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) o_9@@53 l) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@3) o_9@@53 l))))
 :qid |stdinbpl.8394:28|
 :skolemid |952|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) o_9@@53 l))
))) (=> (and (and (and (and (forall ((o_9@@54 T@Ref) (f_5@@31 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@3) o_9@@54 f_5@@31) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@10) o_9@@54 f_5@@31)))
 :qid |stdinbpl.8398:35|
 :skolemid |953|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@3) o_9@@54 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@10) o_9@@54 f_5@@31))
)) (forall ((o_9@@55 T@Ref) (f_5@@32 T@Field_105234_105235) ) (!  (=> (not (= f_5@@32 l)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@3) o_9@@55 f_5@@32) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) o_9@@55 f_5@@32)))
 :qid |stdinbpl.8398:35|
 :skolemid |953|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@3) o_9@@55 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) o_9@@55 f_5@@32))
))) (forall ((o_9@@56 T@Ref) (f_5@@33 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@3) o_9@@56 f_5@@33) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@10) o_9@@56 f_5@@33)))
 :qid |stdinbpl.8398:35|
 :skolemid |953|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@3) o_9@@56 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@10) o_9@@56 f_5@@33))
))) (forall ((o_9@@57 T@Ref) (f_5@@34 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@3) o_9@@57 f_5@@34) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@10) o_9@@57 f_5@@34)))
 :qid |stdinbpl.8398:35|
 :skolemid |953|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@3) o_9@@57 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@10) o_9@@57 f_5@@34))
))) (state ExhaleHeap@0 QPMask@10)) (and (=> (= (ControlFlow 0 101) (- 0 103)) (forall ((n$4_3_2 T@Ref) (n$4_3_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_3_2 n$4_3_3)) (and (select arg_g_1@0 n$4_3_2) (not (= n$4_3_2 x0)))) (and (select arg_g_1@0 n$4_3_3) (not (= n$4_3_3 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$4_3_2 n$4_3_3)))
 :qid |stdinbpl.8406:21|
 :skolemid |954|
))) (=> (forall ((n$4_3_2@@0 T@Ref) (n$4_3_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_3_2@@0 n$4_3_3@@0)) (and (select arg_g_1@0 n$4_3_2@@0) (not (= n$4_3_2@@0 x0)))) (and (select arg_g_1@0 n$4_3_3@@0) (not (= n$4_3_3@@0 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$4_3_2@@0 n$4_3_3@@0)))
 :qid |stdinbpl.8406:21|
 :skolemid |954|
)) (=> (and (forall ((n$4_3_2@@1 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n$4_3_2@@1) (not (= n$4_3_2@@1 x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange138 n$4_3_2@@1) (= (invRecv138 n$4_3_2@@1) n$4_3_2@@1)))
 :qid |stdinbpl.8412:28|
 :skolemid |955|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$4_3_2@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@11) n$4_3_2@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$4_3_2@@1 r_11))
)) (forall ((o_9@@58 T@Ref) ) (!  (=> (and (and (and (select arg_g_1@0 (invRecv138 o_9@@58)) (not (= (invRecv138 o_9@@58) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange138 o_9@@58)) (= (invRecv138 o_9@@58) o_9@@58))
 :qid |stdinbpl.8416:28|
 :skolemid |956|
 :pattern ( (invRecv138 o_9@@58))
))) (and (=> (= (ControlFlow 0 101) (- 0 102)) (forall ((n$4_3_2@@2 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$4_3_2@@2) (not (= n$4_3_2@@2 x0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8422:21|
 :skolemid |957|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$4_3_2@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@11) n$4_3_2@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$4_3_2@@2 r_11))
))) (=> (forall ((n$4_3_2@@3 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$4_3_2@@3) (not (= n$4_3_2@@3 x0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8422:21|
 :skolemid |957|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$4_3_2@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@11) n$4_3_2@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$4_3_2@@3 r_11))
)) (=> (and (forall ((n$4_3_2@@4 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n$4_3_2@@4) (not (= n$4_3_2@@4 x0))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$4_3_2@@4 null)))
 :qid |stdinbpl.8428:28|
 :skolemid |958|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$4_3_2@@4 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@11) n$4_3_2@@4 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$4_3_2@@4 r_11))
)) (forall ((o_9@@59 T@Ref) ) (!  (and (=> (and (and (and (select arg_g_1@0 (invRecv138 o_9@@59)) (not (= (invRecv138 o_9@@59) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange138 o_9@@59)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv138 o_9@@59) o_9@@59)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@11) o_9@@59 r_11) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) o_9@@59 r_11) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select arg_g_1@0 (invRecv138 o_9@@59)) (not (= (invRecv138 o_9@@59) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange138 o_9@@59))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@11) o_9@@59 r_11) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) o_9@@59 r_11))))
 :qid |stdinbpl.8434:28|
 :skolemid |959|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@11) o_9@@59 r_11))
))) (=> (and (and (and (and (forall ((o_9@@60 T@Ref) (f_5@@35 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@10) o_9@@60 f_5@@35) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@11) o_9@@60 f_5@@35)))
 :qid |stdinbpl.8438:35|
 :skolemid |960|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@10) o_9@@60 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@11) o_9@@60 f_5@@35))
)) (forall ((o_9@@61 T@Ref) (f_5@@36 T@Field_105234_105235) ) (!  (=> (not (= f_5@@36 r_11)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) o_9@@61 f_5@@36) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@11) o_9@@61 f_5@@36)))
 :qid |stdinbpl.8438:35|
 :skolemid |960|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) o_9@@61 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@11) o_9@@61 f_5@@36))
))) (forall ((o_9@@62 T@Ref) (f_5@@37 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@10) o_9@@62 f_5@@37) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@11) o_9@@62 f_5@@37)))
 :qid |stdinbpl.8438:35|
 :skolemid |960|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@10) o_9@@62 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@11) o_9@@62 f_5@@37))
))) (forall ((o_9@@63 T@Ref) (f_5@@38 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@10) o_9@@63 f_5@@38) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@11) o_9@@63 f_5@@38)))
 :qid |stdinbpl.8438:35|
 :skolemid |960|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@10) o_9@@63 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@11) o_9@@63 f_5@@38))
))) (and (and (state ExhaleHeap@0 QPMask@11) (forall ((n$5_3_2 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$5_3_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$5_3_2 l) null))) (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$5_3_2 l)))
 :qid |stdinbpl.8444:26|
 :skolemid |961|
 :pattern ( (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$5_3_2 l)))
 :pattern ( (select arg_g_1@0 n$5_3_2) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$5_3_2 l))
))) (and (forall ((n$6_3_2 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$6_3_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$6_3_2 r_11) null))) (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$6_3_2 r_11)))
 :qid |stdinbpl.8448:26|
 :skolemid |962|
 :pattern ( (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$6_3_2 r_11)))
 :pattern ( (select arg_g_1@0 n$6_3_2) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) n$6_3_2 r_11))
)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@0) x0 r_11) x1)))) (and (=> (= (ControlFlow 0 101) 99) anon205_Then_correct) (=> (= (ControlFlow 0 101) 100) anon205_Else_correct)))))))))))))))))))))))))))))
(let ((anon121_correct true))
(let ((anon204_Else_correct  (=> (and (not (and (select arg_g_1@0 n$2_4_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_4_1 r_11) null)))) (= (ControlFlow 0 72) 69)) anon121_correct)))
(let ((anon204_Then_correct  (=> (and (select arg_g_1@0 n$2_4_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_4_1 r_11) null))) (and (=> (= (ControlFlow 0 70) (- 0 71)) (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_4_1 r_11))) (=> (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_4_1 r_11)) (=> (= (ControlFlow 0 70) 69) anon121_correct))))))
(let ((anon201_Else_correct  (=> (forall ((n$1_7_1 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$1_7_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_7_1 l) null))) (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_7_1 l)))
 :qid |stdinbpl.8327:26|
 :skolemid |945|
 :pattern ( (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_7_1 l)))
 :pattern ( (select arg_g_1@0 n$1_7_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_7_1 l))
)) (and (and (=> (= (ControlFlow 0 109) 101) anon203_Else_correct) (=> (= (ControlFlow 0 109) 70) anon204_Then_correct)) (=> (= (ControlFlow 0 109) 72) anon204_Else_correct)))))
(let ((anon117_correct true))
(let ((anon202_Else_correct  (=> (and (not (and (select arg_g_1@0 n$1_6) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_6 l) null)))) (= (ControlFlow 0 68) 65)) anon117_correct)))
(let ((anon202_Then_correct  (=> (and (select arg_g_1@0 n$1_6) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_6 l) null))) (and (=> (= (ControlFlow 0 66) (- 0 67)) (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_6 l))) (=> (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_6 l)) (=> (= (ControlFlow 0 66) 65) anon117_correct))))))
(let ((anon114_correct  (=> (= Mask@1 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@0) x0 r_11 (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@0) x0 r_11) perm@1)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@0) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@0) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@0))) (and (=> (= (ControlFlow 0 110) (- 0 116)) (forall ((n_17 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n_17) (not (= n_17 x0))) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8234:23|
 :skolemid |931|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n_17 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17 l))
))) (=> (forall ((n_17@@0 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n_17@@0) (not (= n_17@@0 x0))) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@0 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8234:23|
 :skolemid |931|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@0 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n_17@@0 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@0 l))
)) (and (=> (= (ControlFlow 0 110) (- 0 115)) (forall ((n_17@@1 T@Ref) (n_17_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_17@@1 n_17_1)) (and (select arg_g_1@0 n_17@@1) (not (= n_17@@1 x0)))) (and (select arg_g_1@0 n_17_1) (not (= n_17_1 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_17@@1 n_17_1)))
 :qid |stdinbpl.8241:23|
 :skolemid |932|
 :pattern ( (neverTriggered135 n_17@@1) (neverTriggered135 n_17_1))
))) (=> (forall ((n_17@@2 T@Ref) (n_17_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_17@@2 n_17_1@@0)) (and (select arg_g_1@0 n_17@@2) (not (= n_17@@2 x0)))) (and (select arg_g_1@0 n_17_1@@0) (not (= n_17_1@@0 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_17@@2 n_17_1@@0)))
 :qid |stdinbpl.8241:23|
 :skolemid |932|
 :pattern ( (neverTriggered135 n_17@@2) (neverTriggered135 n_17_1@@0))
)) (and (=> (= (ControlFlow 0 110) (- 0 114)) (forall ((n_17@@3 T@Ref) ) (!  (=> (and (select arg_g_1@0 n_17@@3) (not (= n_17@@3 x0))) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@1) n_17@@3 l) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.8248:23|
 :skolemid |933|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n_17@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@3 l))
))) (=> (forall ((n_17@@4 T@Ref) ) (!  (=> (and (select arg_g_1@0 n_17@@4) (not (= n_17@@4 x0))) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@1) n_17@@4 l) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.8248:23|
 :skolemid |933|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n_17@@4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@4 l))
)) (=> (forall ((n_17@@5 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n_17@@5) (not (= n_17@@5 x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange135 n_17@@5) (= (invRecv135 n_17@@5) n_17@@5)))
 :qid |stdinbpl.8254:28|
 :skolemid |934|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@5 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n_17@@5 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@5 l))
)) (=> (and (forall ((o_9@@64 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 (invRecv135 o_9@@64)) (not (= (invRecv135 o_9@@64) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange135 o_9@@64))) (= (invRecv135 o_9@@64) o_9@@64))
 :qid |stdinbpl.8258:28|
 :skolemid |935|
 :pattern ( (invRecv135 o_9@@64))
)) (forall ((o_9@@65 T@Ref) ) (!  (and (=> (and (and (select arg_g_1@0 (invRecv135 o_9@@65)) (not (= (invRecv135 o_9@@65) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange135 o_9@@65))) (and (= (invRecv135 o_9@@65) o_9@@65) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) o_9@@65 l) (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@1) o_9@@65 l) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select arg_g_1@0 (invRecv135 o_9@@65)) (not (= (invRecv135 o_9@@65) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange135 o_9@@65)))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) o_9@@65 l) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@1) o_9@@65 l))))
 :qid |stdinbpl.8264:28|
 :skolemid |936|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) o_9@@65 l))
))) (=> (and (and (and (forall ((o_9@@66 T@Ref) (f_5@@39 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@1) o_9@@66 f_5@@39) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@8) o_9@@66 f_5@@39)))
 :qid |stdinbpl.8270:35|
 :skolemid |937|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@8) o_9@@66 f_5@@39))
)) (forall ((o_9@@67 T@Ref) (f_5@@40 T@Field_105234_105235) ) (!  (=> (not (= f_5@@40 l)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@1) o_9@@67 f_5@@40) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) o_9@@67 f_5@@40)))
 :qid |stdinbpl.8270:35|
 :skolemid |937|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) o_9@@67 f_5@@40))
))) (forall ((o_9@@68 T@Ref) (f_5@@41 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@1) o_9@@68 f_5@@41) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@8) o_9@@68 f_5@@41)))
 :qid |stdinbpl.8270:35|
 :skolemid |937|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@8) o_9@@68 f_5@@41))
))) (forall ((o_9@@69 T@Ref) (f_5@@42 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@1) o_9@@69 f_5@@42) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@8) o_9@@69 f_5@@42)))
 :qid |stdinbpl.8270:35|
 :skolemid |937|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@8) o_9@@69 f_5@@42))
))) (and (=> (= (ControlFlow 0 110) (- 0 113)) (forall ((n$0_11_2 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n$0_11_2) (not (= n$0_11_2 x0))) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_11_2 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8279:23|
 :skolemid |938|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_11_2 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) n$0_11_2 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_11_2 r_11))
))) (=> (forall ((n$0_11_2@@0 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n$0_11_2@@0) (not (= n$0_11_2@@0 x0))) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_11_2@@0 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8279:23|
 :skolemid |938|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_11_2@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) n$0_11_2@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_11_2@@0 r_11))
)) (and (=> (= (ControlFlow 0 110) (- 0 112)) (forall ((n$0_11_2@@1 T@Ref) (n$0_11_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_11_2@@1 n$0_11_3)) (and (select arg_g_1@0 n$0_11_2@@1) (not (= n$0_11_2@@1 x0)))) (and (select arg_g_1@0 n$0_11_3) (not (= n$0_11_3 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_11_2@@1 n$0_11_3)))
 :qid |stdinbpl.8286:23|
 :skolemid |939|
 :pattern ( (neverTriggered136 n$0_11_2@@1) (neverTriggered136 n$0_11_3))
))) (=> (forall ((n$0_11_2@@2 T@Ref) (n$0_11_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_11_2@@2 n$0_11_3@@0)) (and (select arg_g_1@0 n$0_11_2@@2) (not (= n$0_11_2@@2 x0)))) (and (select arg_g_1@0 n$0_11_3@@0) (not (= n$0_11_3@@0 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_11_2@@2 n$0_11_3@@0)))
 :qid |stdinbpl.8286:23|
 :skolemid |939|
 :pattern ( (neverTriggered136 n$0_11_2@@2) (neverTriggered136 n$0_11_3@@0))
)) (and (=> (= (ControlFlow 0 110) (- 0 111)) (forall ((n$0_11_2@@3 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$0_11_2@@3) (not (= n$0_11_2@@3 x0))) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n$0_11_2@@3 r_11) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.8293:23|
 :skolemid |940|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_11_2@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) n$0_11_2@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_11_2@@3 r_11))
))) (=> (forall ((n$0_11_2@@4 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$0_11_2@@4) (not (= n$0_11_2@@4 x0))) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n$0_11_2@@4 r_11) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.8293:23|
 :skolemid |940|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_11_2@@4 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) n$0_11_2@@4 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_11_2@@4 r_11))
)) (=> (forall ((n$0_11_2@@5 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n$0_11_2@@5) (not (= n$0_11_2@@5 x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange136 n$0_11_2@@5) (= (invRecv136 n$0_11_2@@5) n$0_11_2@@5)))
 :qid |stdinbpl.8299:28|
 :skolemid |941|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_11_2@@5 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) n$0_11_2@@5 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_11_2@@5 r_11))
)) (=> (and (forall ((o_9@@70 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 (invRecv136 o_9@@70)) (not (= (invRecv136 o_9@@70) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange136 o_9@@70))) (= (invRecv136 o_9@@70) o_9@@70))
 :qid |stdinbpl.8303:28|
 :skolemid |942|
 :pattern ( (invRecv136 o_9@@70))
)) (forall ((o_9@@71 T@Ref) ) (!  (and (=> (and (and (select arg_g_1@0 (invRecv136 o_9@@71)) (not (= (invRecv136 o_9@@71) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange136 o_9@@71))) (and (= (invRecv136 o_9@@71) o_9@@71) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) o_9@@71 r_11) (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) o_9@@71 r_11) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select arg_g_1@0 (invRecv136 o_9@@71)) (not (= (invRecv136 o_9@@71) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange136 o_9@@71)))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) o_9@@71 r_11) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) o_9@@71 r_11))))
 :qid |stdinbpl.8309:28|
 :skolemid |943|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) o_9@@71 r_11))
))) (=> (and (and (and (forall ((o_9@@72 T@Ref) (f_5@@43 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@8) o_9@@72 f_5@@43) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@9) o_9@@72 f_5@@43)))
 :qid |stdinbpl.8315:35|
 :skolemid |944|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@9) o_9@@72 f_5@@43))
)) (forall ((o_9@@73 T@Ref) (f_5@@44 T@Field_105234_105235) ) (!  (=> (not (= f_5@@44 r_11)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) o_9@@73 f_5@@44) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) o_9@@73 f_5@@44)))
 :qid |stdinbpl.8315:35|
 :skolemid |944|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) o_9@@73 f_5@@44))
))) (forall ((o_9@@74 T@Ref) (f_5@@45 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@8) o_9@@74 f_5@@45) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@9) o_9@@74 f_5@@45)))
 :qid |stdinbpl.8315:35|
 :skolemid |944|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@9) o_9@@74 f_5@@45))
))) (forall ((o_9@@75 T@Ref) (f_5@@46 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@8) o_9@@75 f_5@@46) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@9) o_9@@75 f_5@@46)))
 :qid |stdinbpl.8315:35|
 :skolemid |944|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@9) o_9@@75 f_5@@46))
))) (and (and (=> (= (ControlFlow 0 110) 109) anon201_Else_correct) (=> (= (ControlFlow 0 110) 66) anon202_Then_correct)) (=> (= (ControlFlow 0 110) 68) anon202_Else_correct)))))))))))))))))))))))
(let ((anon200_Else_correct  (=> (and (= perm@1 NoPerm) (= (ControlFlow 0 119) 110)) anon114_correct)))
(let ((anon200_Then_correct  (=> (not (= perm@1 NoPerm)) (and (=> (= (ControlFlow 0 117) (- 0 118)) (<= perm@1 (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@0) x0 r_11))) (=> (<= perm@1 (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@0) x0 r_11)) (=> (= (ControlFlow 0 117) 110) anon114_correct))))))
(let ((anon112_correct  (=> (and (= Mask@0 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) x0 l (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) x0 l) perm@0)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@3) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@3) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@3))) (= perm@1 (ite (= __right__ __right__) FullPerm (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 120) (- 0 121)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (and (=> (= (ControlFlow 0 120) 117) anon200_Then_correct) (=> (= (ControlFlow 0 120) 119) anon200_Else_correct)))))))
(let ((anon199_Else_correct  (=> (and (= perm@0 NoPerm) (= (ControlFlow 0 124) 120)) anon112_correct)))
(let ((anon199_Then_correct  (=> (not (= perm@0 NoPerm)) (and (=> (= (ControlFlow 0 122) (- 0 123)) (<= perm@0 (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) x0 l))) (=> (<= perm@0 (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) x0 l)) (=> (= (ControlFlow 0 122) 120) anon112_correct))))))
(let ((anon110_correct  (and (=> (= (ControlFlow 0 125) (- 0 128)) (not (select arg_g_1@0 null))) (=> (not (select arg_g_1@0 null)) (and (=> (= (ControlFlow 0 125) (- 0 127)) (select arg_g_1@0 x0)) (=> (select arg_g_1@0 x0) (=> (= perm@0 (ite (= __right__ __left__) FullPerm (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 125) (- 0 126)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (and (=> (= (ControlFlow 0 125) 122) anon199_Then_correct) (=> (= (ControlFlow 0 125) 124) anon199_Else_correct)))))))))))
(let ((anon198_Else_correct  (=> (and (= x1 null) (= (ControlFlow 0 131) 125)) anon110_correct)))
(let ((anon198_Then_correct  (=> (not (= x1 null)) (and (=> (= (ControlFlow 0 129) (- 0 130)) (select arg_g_1@0 x1)) (=> (select arg_g_1@0 x1) (=> (= (ControlFlow 0 129) 125) anon110_correct))))))
(let ((anon187_Else_correct  (=> (and (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 l) null)) (= arg_g_1@0 (|Set#Union_70542| g0@@11 g1@@11))) (and (=> (= (ControlFlow 0 132) (- 0 133)) (select arg_g_1@0 x0)) (=> (select arg_g_1@0 x0) (and (=> (= (ControlFlow 0 132) 129) anon198_Then_correct) (=> (= (ControlFlow 0 132) 131) anon198_Else_correct)))))))
(let ((anon182_Else_correct  (=> (apply_TCFraming Heap@@29 g0@@11 g1@@11) (=> (and (state Heap@@29 QPMask@3) (state Heap@@29 QPMask@3)) (and (=> (= (ControlFlow 0 182) (- 0 183)) (HasDirectPerm_70297_70298 QPMask@3 x0 l)) (=> (HasDirectPerm_70297_70298 QPMask@3 x0 l) (and (=> (= (ControlFlow 0 182) 180) anon187_Then_correct) (=> (= (ControlFlow 0 182) 132) anon187_Else_correct))))))))
(let ((anon170_Else_correct  (=> (state Heap@@29 QPMask@3) (and (=> (= (ControlFlow 0 203) 194) anon182_Then_correct) (=> (= (ControlFlow 0 203) 182) anon182_Else_correct)))))
(let ((anon53_correct  (=> (and (or (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 l) null) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 r_11) null)) (state Heap@@29 QPMask@3)) (and (=> (= (ControlFlow 0 238) 237) anon170_Then_correct) (=> (= (ControlFlow 0 238) 203) anon170_Else_correct)))))
(let ((anon169_Else_correct  (=> (and (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 l) null) (= (ControlFlow 0 241) 238)) anon53_correct)))
(let ((anon169_Then_correct  (=> (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 l) null)) (and (=> (= (ControlFlow 0 239) (- 0 240)) (HasDirectPerm_70297_70298 QPMask@3 x0 r_11)) (=> (HasDirectPerm_70297_70298 QPMask@3 x0 r_11) (=> (= (ControlFlow 0 239) 238) anon53_correct))))))
(let ((anon166_Else_correct  (=> (and (forall ((m_1 T@Ref) ) (!  (=> (select g1@@11 m_1) (exists_path ($$ Heap@@29 g1@@11) x1 m_1))
 :qid |stdinbpl.7525:20|
 :skolemid |853|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 g1@@11)) (FrameFragment_8621 (|$$#condqp2| Heap@@29 g1@@11))) g1@@11) x1 m_1))
 :pattern ( (select g1@@11 m_1))
)) (state Heap@@29 QPMask@3)) (and (=> (= (ControlFlow 0 242) (- 0 243)) (HasDirectPerm_70297_70298 QPMask@3 x0 l)) (=> (HasDirectPerm_70297_70298 QPMask@3 x0 l) (and (=> (= (ControlFlow 0 242) 239) anon169_Then_correct) (=> (= (ControlFlow 0 242) 241) anon169_Else_correct)))))))
(let ((anon168_Then_correct  (and (=> (= (ControlFlow 0 58) (- 0 63)) (forall ((n_6 T@Ref) ) (!  (=> (and (select g1@@11 n_6) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_6 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7455:25|
 :skolemid |843|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_6 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@22) n_6 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_6 l))
))) (=> (forall ((n_6@@0 T@Ref) ) (!  (=> (and (select g1@@11 n_6@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_6@@0 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7455:25|
 :skolemid |843|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_6@@0 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@22) n_6@@0 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_6@@0 l))
)) (and (=> (= (ControlFlow 0 58) (- 0 62)) (forall ((n_6@@1 T@Ref) (n_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@1 n_6_1)) (select g1@@11 n_6@@1)) (select g1@@11 n_6_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_6@@1 n_6_1)))
 :qid |stdinbpl.7462:25|
 :skolemid |844|
 :pattern ( (neverTriggered119 n_6@@1) (neverTriggered119 n_6_1))
))) (=> (forall ((n_6@@2 T@Ref) (n_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@2 n_6_1@@0)) (select g1@@11 n_6@@2)) (select g1@@11 n_6_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_6@@2 n_6_1@@0)))
 :qid |stdinbpl.7462:25|
 :skolemid |844|
 :pattern ( (neverTriggered119 n_6@@2) (neverTriggered119 n_6_1@@0))
)) (and (=> (= (ControlFlow 0 58) (- 0 61)) (forall ((n_6@@3 T@Ref) ) (!  (=> (select g1@@11 n_6@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_6@@3 l) NoPerm)))
 :qid |stdinbpl.7469:25|
 :skolemid |845|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_6@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@22) n_6@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_6@@3 l))
))) (=> (forall ((n_6@@4 T@Ref) ) (!  (=> (select g1@@11 n_6@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_6@@4 l) NoPerm)))
 :qid |stdinbpl.7469:25|
 :skolemid |845|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_6@@4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@22) n_6@@4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_6@@4 l))
)) (=> (and (forall ((n_6@@5 T@Ref) ) (!  (=> (and (select g1@@11 n_6@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange119 n_6@@5) (= (invRecv119 n_6@@5) n_6@@5)))
 :qid |stdinbpl.7475:30|
 :skolemid |846|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_6@@5 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@22) n_6@@5 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_6@@5 l))
)) (forall ((o_9@@76 T@Ref) ) (!  (=> (and (select g1@@11 (invRecv119 o_9@@76)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange119 o_9@@76))) (= (invRecv119 o_9@@76) o_9@@76))
 :qid |stdinbpl.7479:30|
 :skolemid |847|
 :pattern ( (invRecv119 o_9@@76))
))) (and (=> (= (ControlFlow 0 58) (- 0 60)) (forall ((n_7 T@Ref) ) (!  (=> (and (select g1@@11 n_7) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_7 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7487:25|
 :skolemid |848|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_7 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@23) n_7 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_7 r_11))
))) (=> (forall ((n_7@@0 T@Ref) ) (!  (=> (and (select g1@@11 n_7@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_7@@0 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7487:25|
 :skolemid |848|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_7@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@23) n_7@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_7@@0 r_11))
)) (and (=> (= (ControlFlow 0 58) (- 0 59)) (forall ((n_7@@1 T@Ref) (n_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@1 n_7_1)) (select g1@@11 n_7@@1)) (select g1@@11 n_7_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_7@@1 n_7_1)))
 :qid |stdinbpl.7494:25|
 :skolemid |849|
 :pattern ( (neverTriggered120 n_7@@1) (neverTriggered120 n_7_1))
))) (=> (forall ((n_7@@2 T@Ref) (n_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@2 n_7_1@@0)) (select g1@@11 n_7@@2)) (select g1@@11 n_7_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_7@@2 n_7_1@@0)))
 :qid |stdinbpl.7494:25|
 :skolemid |849|
 :pattern ( (neverTriggered120 n_7@@2) (neverTriggered120 n_7_1@@0))
)) (=> (= (ControlFlow 0 58) (- 0 57)) (forall ((n_7@@3 T@Ref) ) (!  (=> (select g1@@11 n_7@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_7@@3 r_11) NoPerm)))
 :qid |stdinbpl.7501:25|
 :skolemid |850|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_7@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@23) n_7@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_7@@3 r_11))
))))))))))))))))
(let ((anon50_correct true))
(let ((anon167_Then_correct  (=> (select g1@@11 m_6) (and (=> (= (ControlFlow 0 64) 58) anon168_Then_correct) (=> (= (ControlFlow 0 64) 55) anon50_correct)))))
(let ((anon167_Else_correct  (=> (and (not (select g1@@11 m_6)) (= (ControlFlow 0 56) 55)) anon50_correct)))
(let ((anon163_Else_correct  (=> (forall ((n_5 T@Ref) ) (!  (=> (select g0@@11 n_5) (exists_path ($$ Heap@@29 g0@@11) n_5 x0))
 :qid |stdinbpl.7437:20|
 :skolemid |842|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 g0@@11)) (FrameFragment_8621 (|$$#condqp2| Heap@@29 g0@@11))) g0@@11) n_5 x0))
)) (=> (and (state Heap@@29 QPMask@3) (state Heap@@29 QPMask@3)) (and (and (=> (= (ControlFlow 0 244) 242) anon166_Else_correct) (=> (= (ControlFlow 0 244) 64) anon167_Then_correct)) (=> (= (ControlFlow 0 244) 56) anon167_Else_correct))))))
(let ((anon165_Then_correct  (and (=> (= (ControlFlow 0 48) (- 0 53)) (forall ((n$0_4 T@Ref) ) (!  (=> (and (select g0@@11 n$0_4) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7367:25|
 :skolemid |832|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@24) n$0_4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4 l))
))) (=> (forall ((n$0_4@@0 T@Ref) ) (!  (=> (and (select g0@@11 n$0_4@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4@@0 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7367:25|
 :skolemid |832|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4@@0 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@24) n$0_4@@0 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4@@0 l))
)) (and (=> (= (ControlFlow 0 48) (- 0 52)) (forall ((n$0_4@@1 T@Ref) (n$0_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_4@@1 n$0_4_1)) (select g0@@11 n$0_4@@1)) (select g0@@11 n$0_4_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_4@@1 n$0_4_1)))
 :qid |stdinbpl.7374:25|
 :skolemid |833|
 :pattern ( (neverTriggered117 n$0_4@@1) (neverTriggered117 n$0_4_1))
))) (=> (forall ((n$0_4@@2 T@Ref) (n$0_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_4@@2 n$0_4_1@@0)) (select g0@@11 n$0_4@@2)) (select g0@@11 n$0_4_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_4@@2 n$0_4_1@@0)))
 :qid |stdinbpl.7374:25|
 :skolemid |833|
 :pattern ( (neverTriggered117 n$0_4@@2) (neverTriggered117 n$0_4_1@@0))
)) (and (=> (= (ControlFlow 0 48) (- 0 51)) (forall ((n$0_4@@3 T@Ref) ) (!  (=> (select g0@@11 n$0_4@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n$0_4@@3 l) NoPerm)))
 :qid |stdinbpl.7381:25|
 :skolemid |834|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@24) n$0_4@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4@@3 l))
))) (=> (forall ((n$0_4@@4 T@Ref) ) (!  (=> (select g0@@11 n$0_4@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n$0_4@@4 l) NoPerm)))
 :qid |stdinbpl.7381:25|
 :skolemid |834|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4@@4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@24) n$0_4@@4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4@@4 l))
)) (=> (and (forall ((n$0_4@@5 T@Ref) ) (!  (=> (and (select g0@@11 n$0_4@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange117 n$0_4@@5) (= (invRecv117 n$0_4@@5) n$0_4@@5)))
 :qid |stdinbpl.7387:30|
 :skolemid |835|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4@@5 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@24) n$0_4@@5 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4@@5 l))
)) (forall ((o_9@@77 T@Ref) ) (!  (=> (and (select g0@@11 (invRecv117 o_9@@77)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange117 o_9@@77))) (= (invRecv117 o_9@@77) o_9@@77))
 :qid |stdinbpl.7391:30|
 :skolemid |836|
 :pattern ( (invRecv117 o_9@@77))
))) (and (=> (= (ControlFlow 0 48) (- 0 50)) (forall ((n$0_5 T@Ref) ) (!  (=> (and (select g0@@11 n$0_5) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_5 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7399:25|
 :skolemid |837|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_5 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@25) n$0_5 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_5 r_11))
))) (=> (forall ((n$0_5@@0 T@Ref) ) (!  (=> (and (select g0@@11 n$0_5@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_5@@0 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7399:25|
 :skolemid |837|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_5@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@25) n$0_5@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_5@@0 r_11))
)) (and (=> (= (ControlFlow 0 48) (- 0 49)) (forall ((n$0_5@@1 T@Ref) (n$0_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_5@@1 n$0_5_1)) (select g0@@11 n$0_5@@1)) (select g0@@11 n$0_5_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_5@@1 n$0_5_1)))
 :qid |stdinbpl.7406:25|
 :skolemid |838|
 :pattern ( (neverTriggered118 n$0_5@@1) (neverTriggered118 n$0_5_1))
))) (=> (forall ((n$0_5@@2 T@Ref) (n$0_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_5@@2 n$0_5_1@@0)) (select g0@@11 n$0_5@@2)) (select g0@@11 n$0_5_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_5@@2 n$0_5_1@@0)))
 :qid |stdinbpl.7406:25|
 :skolemid |838|
 :pattern ( (neverTriggered118 n$0_5@@2) (neverTriggered118 n$0_5_1@@0))
)) (=> (= (ControlFlow 0 48) (- 0 47)) (forall ((n$0_5@@3 T@Ref) ) (!  (=> (select g0@@11 n$0_5@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n$0_5@@3 r_11) NoPerm)))
 :qid |stdinbpl.7413:25|
 :skolemid |839|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_5@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@25) n$0_5@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_5@@3 r_11))
))))))))))))))))
(let ((anon45_correct true))
(let ((anon164_Then_correct  (=> (select g0@@11 n_60) (and (=> (= (ControlFlow 0 54) 48) anon165_Then_correct) (=> (= (ControlFlow 0 54) 45) anon45_correct)))))
(let ((anon164_Else_correct  (=> (and (not (select g0@@11 n_60)) (= (ControlFlow 0 46) 45)) anon45_correct)))
(let ((anon160_Else_correct  (=> (forall ((n_3 T@Ref) ) (!  (=> (select g0@@11 n_3) (exists_path ($$ Heap@@29 g0@@11) x@@6 n_3))
 :qid |stdinbpl.7349:20|
 :skolemid |831|
 :pattern ( (select g0@@11 n_3))
)) (=> (and (state Heap@@29 QPMask@3) (state Heap@@29 QPMask@3)) (and (and (=> (= (ControlFlow 0 245) 244) anon163_Else_correct) (=> (= (ControlFlow 0 245) 54) anon164_Then_correct)) (=> (= (ControlFlow 0 245) 46) anon164_Else_correct))))))
(let ((anon162_Then_correct  (and (=> (= (ControlFlow 0 38) (- 0 43)) (forall ((n$0_2 T@Ref) ) (!  (=> (and (select g0@@11 n$0_2) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7279:25|
 :skolemid |821|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@26) n$0_2 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2 l))
))) (=> (forall ((n$0_2@@0 T@Ref) ) (!  (=> (and (select g0@@11 n$0_2@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2@@0 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7279:25|
 :skolemid |821|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2@@0 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@26) n$0_2@@0 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2@@0 l))
)) (and (=> (= (ControlFlow 0 38) (- 0 42)) (forall ((n$0_2@@1 T@Ref) (n$0_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2@@1 n$0_2_1)) (select g0@@11 n$0_2@@1)) (select g0@@11 n$0_2_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_2@@1 n$0_2_1)))
 :qid |stdinbpl.7286:25|
 :skolemid |822|
 :pattern ( (neverTriggered115 n$0_2@@1) (neverTriggered115 n$0_2_1))
))) (=> (forall ((n$0_2@@2 T@Ref) (n$0_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2@@2 n$0_2_1@@0)) (select g0@@11 n$0_2@@2)) (select g0@@11 n$0_2_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_2@@2 n$0_2_1@@0)))
 :qid |stdinbpl.7286:25|
 :skolemid |822|
 :pattern ( (neverTriggered115 n$0_2@@2) (neverTriggered115 n$0_2_1@@0))
)) (and (=> (= (ControlFlow 0 38) (- 0 41)) (forall ((n$0_2@@3 T@Ref) ) (!  (=> (select g0@@11 n$0_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n$0_2@@3 l) NoPerm)))
 :qid |stdinbpl.7293:25|
 :skolemid |823|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@26) n$0_2@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2@@3 l))
))) (=> (forall ((n$0_2@@4 T@Ref) ) (!  (=> (select g0@@11 n$0_2@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n$0_2@@4 l) NoPerm)))
 :qid |stdinbpl.7293:25|
 :skolemid |823|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2@@4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@26) n$0_2@@4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2@@4 l))
)) (=> (and (forall ((n$0_2@@5 T@Ref) ) (!  (=> (and (select g0@@11 n$0_2@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange115 n$0_2@@5) (= (invRecv115 n$0_2@@5) n$0_2@@5)))
 :qid |stdinbpl.7299:30|
 :skolemid |824|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2@@5 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@26) n$0_2@@5 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2@@5 l))
)) (forall ((o_9@@78 T@Ref) ) (!  (=> (and (select g0@@11 (invRecv115 o_9@@78)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange115 o_9@@78))) (= (invRecv115 o_9@@78) o_9@@78))
 :qid |stdinbpl.7303:30|
 :skolemid |825|
 :pattern ( (invRecv115 o_9@@78))
))) (and (=> (= (ControlFlow 0 38) (- 0 40)) (forall ((n$0_3 T@Ref) ) (!  (=> (and (select g0@@11 n$0_3) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_3 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7311:25|
 :skolemid |826|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@27) n$0_3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_3 r_11))
))) (=> (forall ((n$0_3@@0 T@Ref) ) (!  (=> (and (select g0@@11 n$0_3@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_3@@0 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7311:25|
 :skolemid |826|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_3@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@27) n$0_3@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_3@@0 r_11))
)) (and (=> (= (ControlFlow 0 38) (- 0 39)) (forall ((n$0_3@@1 T@Ref) (n$0_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3@@1 n$0_3_1)) (select g0@@11 n$0_3@@1)) (select g0@@11 n$0_3_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_3@@1 n$0_3_1)))
 :qid |stdinbpl.7318:25|
 :skolemid |827|
 :pattern ( (neverTriggered116 n$0_3@@1) (neverTriggered116 n$0_3_1))
))) (=> (forall ((n$0_3@@2 T@Ref) (n$0_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3@@2 n$0_3_1@@0)) (select g0@@11 n$0_3@@2)) (select g0@@11 n$0_3_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_3@@2 n$0_3_1@@0)))
 :qid |stdinbpl.7318:25|
 :skolemid |827|
 :pattern ( (neverTriggered116 n$0_3@@2) (neverTriggered116 n$0_3_1@@0))
)) (=> (= (ControlFlow 0 38) (- 0 37)) (forall ((n$0_3@@3 T@Ref) ) (!  (=> (select g0@@11 n$0_3@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n$0_3@@3 r_11) NoPerm)))
 :qid |stdinbpl.7325:25|
 :skolemid |828|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_3@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@27) n$0_3@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_3@@3 r_11))
))))))))))))))))
(let ((anon40_correct true))
(let ((anon161_Then_correct  (=> (select g0@@11 n_59) (and (=> (= (ControlFlow 0 44) 38) anon162_Then_correct) (=> (= (ControlFlow 0 44) 35) anon40_correct)))))
(let ((anon161_Else_correct  (=> (and (not (select g0@@11 n_59)) (= (ControlFlow 0 36) 35)) anon40_correct)))
(let ((anon159_Else_correct  (=> (forall ((n$8_1 T@Ref) ) (!  (=> (select g1@@11 n$8_1) (not (select g0@@11 n$8_1)))
 :qid |stdinbpl.7261:20|
 :skolemid |820|
 :pattern ( (select g0@@11 n$8_1) (select g1@@11 n$8_1))
)) (=> (and (state Heap@@29 QPMask@3) (state Heap@@29 QPMask@3)) (and (and (=> (= (ControlFlow 0 246) 245) anon160_Else_correct) (=> (= (ControlFlow 0 246) 44) anon161_Then_correct)) (=> (= (ControlFlow 0 246) 36) anon161_Else_correct))))))
(let ((anon159_Then_correct true))
(let ((anon158_Else_correct  (=> (forall ((n$7_1 T@Ref) ) (!  (=> (select g0@@11 n$7_1) (not (select g1@@11 n$7_1)))
 :qid |stdinbpl.7252:20|
 :skolemid |819|
 :pattern ( (select g0@@11 n$7_1) (select g1@@11 n$7_1))
)) (and (=> (= (ControlFlow 0 247) 34) anon159_Then_correct) (=> (= (ControlFlow 0 247) 246) anon159_Else_correct)))))
(let ((anon158_Then_correct true))
(let ((anon155_Else_correct  (=> (and (and (forall ((n$6_1 T@Ref) ) (!  (=> (and (select g1@@11 n$6_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$6_1 r_11) null))) (select g1@@11 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$6_1 r_11)))
 :qid |stdinbpl.7240:20|
 :skolemid |818|
 :pattern ( (select g1@@11 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$6_1 r_11)))
 :pattern ( (select g1@@11 n$6_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$6_1 r_11))
)) (state Heap@@29 QPMask@3)) (and (select g1@@11 x1) (state Heap@@29 QPMask@3))) (and (=> (= (ControlFlow 0 248) 33) anon158_Then_correct) (=> (= (ControlFlow 0 248) 247) anon158_Else_correct)))))
(let ((anon31_correct true))
(let ((anon157_Else_correct  (=> (and (not (and (select g1@@11 n$6_9) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$6_9 r_11) null)))) (= (ControlFlow 0 29) 26)) anon31_correct)))
(let ((anon157_Then_correct  (=> (and (select g1@@11 n$6_9) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$6_9 r_11) null))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (HasDirectPerm_70297_70298 QPMask@3 n$6_9 r_11)) (=> (HasDirectPerm_70297_70298 QPMask@3 n$6_9 r_11) (=> (= (ControlFlow 0 27) 26) anon31_correct))))))
(let ((anon156_Else_correct  (=> (not (select g1@@11 n$6_9)) (and (=> (= (ControlFlow 0 32) 27) anon157_Then_correct) (=> (= (ControlFlow 0 32) 29) anon157_Else_correct)))))
(let ((anon156_Then_correct  (=> (select g1@@11 n$6_9) (and (=> (= (ControlFlow 0 30) (- 0 31)) (HasDirectPerm_70297_70298 QPMask@3 n$6_9 r_11)) (=> (HasDirectPerm_70297_70298 QPMask@3 n$6_9 r_11) (and (=> (= (ControlFlow 0 30) 27) anon157_Then_correct) (=> (= (ControlFlow 0 30) 29) anon157_Else_correct)))))))
(let ((anon152_Else_correct  (=> (forall ((n$5_1 T@Ref) ) (!  (=> (and (select g1@@11 n$5_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$5_1 l) null))) (select g1@@11 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$5_1 l)))
 :qid |stdinbpl.7223:20|
 :skolemid |817|
 :pattern ( (select g1@@11 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$5_1 l)))
 :pattern ( (select g1@@11 n$5_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$5_1 l))
)) (and (and (=> (= (ControlFlow 0 249) 248) anon155_Else_correct) (=> (= (ControlFlow 0 249) 30) anon156_Then_correct)) (=> (= (ControlFlow 0 249) 32) anon156_Else_correct)))))
(let ((anon25_correct true))
(let ((anon154_Else_correct  (=> (and (not (and (select g1@@11 n$5_6) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$5_6 l) null)))) (= (ControlFlow 0 22) 19)) anon25_correct)))
(let ((anon154_Then_correct  (=> (and (select g1@@11 n$5_6) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$5_6 l) null))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (HasDirectPerm_70297_70298 QPMask@3 n$5_6 l)) (=> (HasDirectPerm_70297_70298 QPMask@3 n$5_6 l) (=> (= (ControlFlow 0 20) 19) anon25_correct))))))
(let ((anon153_Else_correct  (=> (not (select g1@@11 n$5_6)) (and (=> (= (ControlFlow 0 25) 20) anon154_Then_correct) (=> (= (ControlFlow 0 25) 22) anon154_Else_correct)))))
(let ((anon153_Then_correct  (=> (select g1@@11 n$5_6) (and (=> (= (ControlFlow 0 23) (- 0 24)) (HasDirectPerm_70297_70298 QPMask@3 n$5_6 l)) (=> (HasDirectPerm_70297_70298 QPMask@3 n$5_6 l) (and (=> (= (ControlFlow 0 23) 20) anon154_Then_correct) (=> (= (ControlFlow 0 23) 22) anon154_Else_correct)))))))
(let ((anon151_Else_correct  (and (=> (= (ControlFlow 0 250) (- 0 251)) (forall ((n$4_1 T@Ref) (n$4_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_1 n$4_1_1)) (select g1@@11 n$4_1)) (select g1@@11 n$4_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$4_1 n$4_1_1)))
 :qid |stdinbpl.7178:15|
 :skolemid |811|
))) (=> (forall ((n$4_1@@0 T@Ref) (n$4_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_1@@0 n$4_1_1@@0)) (select g1@@11 n$4_1@@0)) (select g1@@11 n$4_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$4_1@@0 n$4_1_1@@0)))
 :qid |stdinbpl.7178:15|
 :skolemid |811|
)) (=> (and (and (forall ((n$4_1@@1 T@Ref) ) (!  (=> (and (select g1@@11 n$4_1@@1) (< NoPerm FullPerm)) (and (qpRange114 n$4_1@@1) (= (invRecv114 n$4_1@@1) n$4_1@@1)))
 :qid |stdinbpl.7184:22|
 :skolemid |812|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$4_1@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n$4_1@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$4_1@@1 r_11))
)) (forall ((o_9@@79 T@Ref) ) (!  (=> (and (and (select g1@@11 (invRecv114 o_9@@79)) (< NoPerm FullPerm)) (qpRange114 o_9@@79)) (= (invRecv114 o_9@@79) o_9@@79))
 :qid |stdinbpl.7188:22|
 :skolemid |813|
 :pattern ( (invRecv114 o_9@@79))
))) (and (forall ((n$4_1@@2 T@Ref) ) (!  (=> (select g1@@11 n$4_1@@2) (not (= n$4_1@@2 null)))
 :qid |stdinbpl.7194:22|
 :skolemid |814|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$4_1@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n$4_1@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$4_1@@2 r_11))
)) (forall ((o_9@@80 T@Ref) ) (!  (and (=> (and (and (select g1@@11 (invRecv114 o_9@@80)) (< NoPerm FullPerm)) (qpRange114 o_9@@80)) (and (=> (< NoPerm FullPerm) (= (invRecv114 o_9@@80) o_9@@80)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) o_9@@80 r_11) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_9@@80 r_11) FullPerm)))) (=> (not (and (and (select g1@@11 (invRecv114 o_9@@80)) (< NoPerm FullPerm)) (qpRange114 o_9@@80))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) o_9@@80 r_11) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_9@@80 r_11))))
 :qid |stdinbpl.7200:22|
 :skolemid |815|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) o_9@@80 r_11))
)))) (=> (and (and (and (and (forall ((o_9@@81 T@Ref) (f_5@@47 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@2) o_9@@81 f_5@@47) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@3) o_9@@81 f_5@@47)))
 :qid |stdinbpl.7204:29|
 :skolemid |816|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@2) o_9@@81 f_5@@47))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@3) o_9@@81 f_5@@47))
)) (forall ((o_9@@82 T@Ref) (f_5@@48 T@Field_105234_105235) ) (!  (=> (not (= f_5@@48 r_11)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_9@@82 f_5@@48) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) o_9@@82 f_5@@48)))
 :qid |stdinbpl.7204:29|
 :skolemid |816|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_9@@82 f_5@@48))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) o_9@@82 f_5@@48))
))) (forall ((o_9@@83 T@Ref) (f_5@@49 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@2) o_9@@83 f_5@@49) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@3) o_9@@83 f_5@@49)))
 :qid |stdinbpl.7204:29|
 :skolemid |816|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@2) o_9@@83 f_5@@49))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@3) o_9@@83 f_5@@49))
))) (forall ((o_9@@84 T@Ref) (f_5@@50 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@2) o_9@@84 f_5@@50) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@3) o_9@@84 f_5@@50)))
 :qid |stdinbpl.7204:29|
 :skolemid |816|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@2) o_9@@84 f_5@@50))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@3) o_9@@84 f_5@@50))
))) (state Heap@@29 QPMask@3)) (and (and (=> (= (ControlFlow 0 250) 249) anon152_Else_correct) (=> (= (ControlFlow 0 250) 23) anon153_Then_correct)) (=> (= (ControlFlow 0 250) 25) anon153_Else_correct))))))))
(let ((anon151_Then_correct true))
(let ((anon150_Else_correct  (and (=> (= (ControlFlow 0 252) (- 0 253)) (forall ((n$3_1 T@Ref) (n$3_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_1 n$3_1_1)) (select g1@@11 n$3_1)) (select g1@@11 n$3_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_1 n$3_1_1)))
 :qid |stdinbpl.7139:15|
 :skolemid |805|
))) (=> (forall ((n$3_1@@0 T@Ref) (n$3_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_1@@0 n$3_1_1@@0)) (select g1@@11 n$3_1@@0)) (select g1@@11 n$3_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_1@@0 n$3_1_1@@0)))
 :qid |stdinbpl.7139:15|
 :skolemid |805|
)) (=> (and (and (forall ((n$3_1@@1 T@Ref) ) (!  (=> (and (select g1@@11 n$3_1@@1) (< NoPerm FullPerm)) (and (qpRange113 n$3_1@@1) (= (invRecv113 n$3_1@@1) n$3_1@@1)))
 :qid |stdinbpl.7145:22|
 :skolemid |806|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$3_1@@1 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) n$3_1@@1 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$3_1@@1 l))
)) (forall ((o_9@@85 T@Ref) ) (!  (=> (and (and (select g1@@11 (invRecv113 o_9@@85)) (< NoPerm FullPerm)) (qpRange113 o_9@@85)) (= (invRecv113 o_9@@85) o_9@@85))
 :qid |stdinbpl.7149:22|
 :skolemid |807|
 :pattern ( (invRecv113 o_9@@85))
))) (and (forall ((n$3_1@@2 T@Ref) ) (!  (=> (select g1@@11 n$3_1@@2) (not (= n$3_1@@2 null)))
 :qid |stdinbpl.7155:22|
 :skolemid |808|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$3_1@@2 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) n$3_1@@2 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$3_1@@2 l))
)) (forall ((o_9@@86 T@Ref) ) (!  (and (=> (and (and (select g1@@11 (invRecv113 o_9@@86)) (< NoPerm FullPerm)) (qpRange113 o_9@@86)) (and (=> (< NoPerm FullPerm) (= (invRecv113 o_9@@86) o_9@@86)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_9@@86 l) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_9@@86 l) FullPerm)))) (=> (not (and (and (select g1@@11 (invRecv113 o_9@@86)) (< NoPerm FullPerm)) (qpRange113 o_9@@86))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_9@@86 l) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_9@@86 l))))
 :qid |stdinbpl.7161:22|
 :skolemid |809|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_9@@86 l))
)))) (=> (and (and (and (and (forall ((o_9@@87 T@Ref) (f_5@@51 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@1) o_9@@87 f_5@@51) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@2) o_9@@87 f_5@@51)))
 :qid |stdinbpl.7165:29|
 :skolemid |810|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@1) o_9@@87 f_5@@51))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@2) o_9@@87 f_5@@51))
)) (forall ((o_9@@88 T@Ref) (f_5@@52 T@Field_105234_105235) ) (!  (=> (not (= f_5@@52 l)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_9@@88 f_5@@52) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_9@@88 f_5@@52)))
 :qid |stdinbpl.7165:29|
 :skolemid |810|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_9@@88 f_5@@52))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_9@@88 f_5@@52))
))) (forall ((o_9@@89 T@Ref) (f_5@@53 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@1) o_9@@89 f_5@@53) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@2) o_9@@89 f_5@@53)))
 :qid |stdinbpl.7165:29|
 :skolemid |810|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@1) o_9@@89 f_5@@53))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@2) o_9@@89 f_5@@53))
))) (forall ((o_9@@90 T@Ref) (f_5@@54 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@1) o_9@@90 f_5@@54) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@2) o_9@@90 f_5@@54)))
 :qid |stdinbpl.7165:29|
 :skolemid |810|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@1) o_9@@90 f_5@@54))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@2) o_9@@90 f_5@@54))
))) (state Heap@@29 QPMask@2)) (and (=> (= (ControlFlow 0 252) 18) anon151_Then_correct) (=> (= (ControlFlow 0 252) 250) anon151_Else_correct))))))))
(let ((anon150_Then_correct true))
(let ((anon147_Else_correct  (=> (forall ((n$2_1 T@Ref) ) (!  (=> (and (select g0@@11 n$2_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_1 r_11) null))) (select g0@@11 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_1 r_11)))
 :qid |stdinbpl.7122:20|
 :skolemid |804|
 :pattern ( (select g0@@11 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_1 r_11)))
 :pattern ( (select g0@@11 n$2_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_1 r_11))
)) (=> (and (state Heap@@29 QPMask@1) (select g0@@11 x0)) (=> (and (and (state Heap@@29 QPMask@1) (select g0@@11 x@@6)) (and (state Heap@@29 QPMask@1) (not (select g1@@11 null)))) (and (=> (= (ControlFlow 0 254) 17) anon150_Then_correct) (=> (= (ControlFlow 0 254) 252) anon150_Else_correct)))))))
(let ((anon15_correct true))
(let ((anon149_Else_correct  (=> (and (not (and (select g0@@11 n$2_27) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_27 r_11) null)))) (= (ControlFlow 0 13) 10)) anon15_correct)))
(let ((anon149_Then_correct  (=> (and (select g0@@11 n$2_27) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_27 r_11) null))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_70297_70298 QPMask@1 n$2_27 r_11)) (=> (HasDirectPerm_70297_70298 QPMask@1 n$2_27 r_11) (=> (= (ControlFlow 0 11) 10) anon15_correct))))))
(let ((anon148_Else_correct  (=> (not (select g0@@11 n$2_27)) (and (=> (= (ControlFlow 0 16) 11) anon149_Then_correct) (=> (= (ControlFlow 0 16) 13) anon149_Else_correct)))))
(let ((anon148_Then_correct  (=> (select g0@@11 n$2_27) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_70297_70298 QPMask@1 n$2_27 r_11)) (=> (HasDirectPerm_70297_70298 QPMask@1 n$2_27 r_11) (and (=> (= (ControlFlow 0 14) 11) anon149_Then_correct) (=> (= (ControlFlow 0 14) 13) anon149_Else_correct)))))))
(let ((anon144_Else_correct  (=> (forall ((n$1_1 T@Ref) ) (!  (=> (and (select g0@@11 n$1_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_1 l) null))) (select g0@@11 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_1 l)))
 :qid |stdinbpl.7105:20|
 :skolemid |803|
 :pattern ( (select g0@@11 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_1 l)))
 :pattern ( (select g0@@11 n$1_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_1 l))
)) (and (and (=> (= (ControlFlow 0 255) 254) anon147_Else_correct) (=> (= (ControlFlow 0 255) 14) anon148_Then_correct)) (=> (= (ControlFlow 0 255) 16) anon148_Else_correct)))))
(let ((anon9_correct true))
(let ((anon146_Else_correct  (=> (and (not (and (select g0@@11 n$1_17) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_17 l) null)))) (= (ControlFlow 0 6) 3)) anon9_correct)))
(let ((anon146_Then_correct  (=> (and (select g0@@11 n$1_17) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_17 l) null))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_70297_70298 QPMask@1 n$1_17 l)) (=> (HasDirectPerm_70297_70298 QPMask@1 n$1_17 l) (=> (= (ControlFlow 0 4) 3) anon9_correct))))))
(let ((anon145_Else_correct  (=> (not (select g0@@11 n$1_17)) (and (=> (= (ControlFlow 0 9) 4) anon146_Then_correct) (=> (= (ControlFlow 0 9) 6) anon146_Else_correct)))))
(let ((anon145_Then_correct  (=> (select g0@@11 n$1_17) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_70297_70298 QPMask@1 n$1_17 l)) (=> (HasDirectPerm_70297_70298 QPMask@1 n$1_17 l) (and (=> (= (ControlFlow 0 7) 4) anon146_Then_correct) (=> (= (ControlFlow 0 7) 6) anon146_Else_correct)))))))
(let ((anon143_Else_correct  (and (=> (= (ControlFlow 0 256) (- 0 257)) (forall ((n$0_1 T@Ref) (n$0_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_1 n$0_1_1)) (select g0@@11 n$0_1)) (select g0@@11 n$0_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_1 n$0_1_1)))
 :qid |stdinbpl.7060:15|
 :skolemid |797|
))) (=> (forall ((n$0_1@@0 T@Ref) (n$0_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_1@@0 n$0_1_1@@0)) (select g0@@11 n$0_1@@0)) (select g0@@11 n$0_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_1@@0 n$0_1_1@@0)))
 :qid |stdinbpl.7060:15|
 :skolemid |797|
)) (=> (and (and (forall ((n$0_1@@1 T@Ref) ) (!  (=> (and (select g0@@11 n$0_1@@1) (< NoPerm FullPerm)) (and (qpRange112 n$0_1@@1) (= (invRecv112 n$0_1@@1) n$0_1@@1)))
 :qid |stdinbpl.7066:22|
 :skolemid |798|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_1@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n$0_1@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_1@@1 r_11))
)) (forall ((o_9@@91 T@Ref) ) (!  (=> (and (and (select g0@@11 (invRecv112 o_9@@91)) (< NoPerm FullPerm)) (qpRange112 o_9@@91)) (= (invRecv112 o_9@@91) o_9@@91))
 :qid |stdinbpl.7070:22|
 :skolemid |799|
 :pattern ( (invRecv112 o_9@@91))
))) (and (forall ((n$0_1@@2 T@Ref) ) (!  (=> (select g0@@11 n$0_1@@2) (not (= n$0_1@@2 null)))
 :qid |stdinbpl.7076:22|
 :skolemid |800|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_1@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n$0_1@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_1@@2 r_11))
)) (forall ((o_9@@92 T@Ref) ) (!  (and (=> (and (and (select g0@@11 (invRecv112 o_9@@92)) (< NoPerm FullPerm)) (qpRange112 o_9@@92)) (and (=> (< NoPerm FullPerm) (= (invRecv112 o_9@@92) o_9@@92)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_9@@92 r_11) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_9@@92 r_11) FullPerm)))) (=> (not (and (and (select g0@@11 (invRecv112 o_9@@92)) (< NoPerm FullPerm)) (qpRange112 o_9@@92))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_9@@92 r_11) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_9@@92 r_11))))
 :qid |stdinbpl.7082:22|
 :skolemid |801|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_9@@92 r_11))
)))) (=> (and (and (and (and (forall ((o_9@@93 T@Ref) (f_5@@55 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@0) o_9@@93 f_5@@55) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@1) o_9@@93 f_5@@55)))
 :qid |stdinbpl.7086:29|
 :skolemid |802|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@0) o_9@@93 f_5@@55))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@1) o_9@@93 f_5@@55))
)) (forall ((o_9@@94 T@Ref) (f_5@@56 T@Field_105234_105235) ) (!  (=> (not (= f_5@@56 r_11)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_9@@94 f_5@@56) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_9@@94 f_5@@56)))
 :qid |stdinbpl.7086:29|
 :skolemid |802|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_9@@94 f_5@@56))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_9@@94 f_5@@56))
))) (forall ((o_9@@95 T@Ref) (f_5@@57 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@0) o_9@@95 f_5@@57) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@1) o_9@@95 f_5@@57)))
 :qid |stdinbpl.7086:29|
 :skolemid |802|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@0) o_9@@95 f_5@@57))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@1) o_9@@95 f_5@@57))
))) (forall ((o_9@@96 T@Ref) (f_5@@58 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@0) o_9@@96 f_5@@58) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@1) o_9@@96 f_5@@58)))
 :qid |stdinbpl.7086:29|
 :skolemid |802|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@0) o_9@@96 f_5@@58))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@1) o_9@@96 f_5@@58))
))) (state Heap@@29 QPMask@1)) (and (and (=> (= (ControlFlow 0 256) 255) anon144_Else_correct) (=> (= (ControlFlow 0 256) 7) anon145_Then_correct)) (=> (= (ControlFlow 0 256) 9) anon145_Else_correct))))))))
(let ((anon143_Then_correct true))
(let ((anon142_Else_correct  (and (=> (= (ControlFlow 0 258) (- 0 259)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select g0@@11 n_1)) (select g0@@11 n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.7021:15|
 :skolemid |791|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select g0@@11 n_1@@0)) (select g0@@11 n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.7021:15|
 :skolemid |791|
)) (=> (and (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select g0@@11 n_1@@1) (< NoPerm FullPerm)) (and (qpRange111 n_1@@1) (= (invRecv111 n_1@@1) n_1@@1)))
 :qid |stdinbpl.7027:22|
 :skolemid |792|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_1@@1 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) n_1@@1 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_1@@1 l))
)) (forall ((o_9@@97 T@Ref) ) (!  (=> (and (and (select g0@@11 (invRecv111 o_9@@97)) (< NoPerm FullPerm)) (qpRange111 o_9@@97)) (= (invRecv111 o_9@@97) o_9@@97))
 :qid |stdinbpl.7031:22|
 :skolemid |793|
 :pattern ( (invRecv111 o_9@@97))
))) (and (forall ((n_1@@2 T@Ref) ) (!  (=> (select g0@@11 n_1@@2) (not (= n_1@@2 null)))
 :qid |stdinbpl.7037:22|
 :skolemid |794|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_1@@2 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) n_1@@2 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_1@@2 l))
)) (forall ((o_9@@98 T@Ref) ) (!  (and (=> (and (and (select g0@@11 (invRecv111 o_9@@98)) (< NoPerm FullPerm)) (qpRange111 o_9@@98)) (and (=> (< NoPerm FullPerm) (= (invRecv111 o_9@@98) o_9@@98)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_9@@98 l) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_9@@98 l) FullPerm)))) (=> (not (and (and (select g0@@11 (invRecv111 o_9@@98)) (< NoPerm FullPerm)) (qpRange111 o_9@@98))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_9@@98 l) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_9@@98 l))))
 :qid |stdinbpl.7043:22|
 :skolemid |795|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_9@@98 l))
)))) (=> (and (and (and (and (forall ((o_9@@99 T@Ref) (f_5@@59 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| ZeroMask) o_9@@99 f_5@@59) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@0) o_9@@99 f_5@@59)))
 :qid |stdinbpl.7047:29|
 :skolemid |796|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| ZeroMask) o_9@@99 f_5@@59))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@0) o_9@@99 f_5@@59))
)) (forall ((o_9@@100 T@Ref) (f_5@@60 T@Field_105234_105235) ) (!  (=> (not (= f_5@@60 l)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_9@@100 f_5@@60) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_9@@100 f_5@@60)))
 :qid |stdinbpl.7047:29|
 :skolemid |796|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_9@@100 f_5@@60))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_9@@100 f_5@@60))
))) (forall ((o_9@@101 T@Ref) (f_5@@61 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| ZeroMask) o_9@@101 f_5@@61) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@0) o_9@@101 f_5@@61)))
 :qid |stdinbpl.7047:29|
 :skolemid |796|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| ZeroMask) o_9@@101 f_5@@61))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@0) o_9@@101 f_5@@61))
))) (forall ((o_9@@102 T@Ref) (f_5@@62 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| ZeroMask) o_9@@102 f_5@@62) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@0) o_9@@102 f_5@@62)))
 :qid |stdinbpl.7047:29|
 :skolemid |796|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| ZeroMask) o_9@@102 f_5@@62))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@0) o_9@@102 f_5@@62))
))) (state Heap@@29 QPMask@0)) (and (=> (= (ControlFlow 0 258) 2) anon143_Then_correct) (=> (= (ControlFlow 0 258) 256) anon143_Else_correct))))))))
(let ((anon142_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@29 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@29) x0 $allocated) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@29) x1 $allocated)) (and (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@29) x@@6 $allocated) (not (select g0@@11 null)))) (and (=> (= (ControlFlow 0 260) 1) anon142_Then_correct) (=> (= (ControlFlow 0 260) 258) anon142_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 261) 260) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
