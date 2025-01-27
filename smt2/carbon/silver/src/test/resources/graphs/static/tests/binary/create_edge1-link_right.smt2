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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@29 () T@PolymorphicMapType_105161)
(declare-fun QPMask@6 () T@PolymorphicMapType_105182)
(declare-fun g_1 () (Array T@Ref Bool))
(declare-fun dummyFunction_70298 (T@Ref) Bool)
(declare-fun neverTriggered51 (T@Ref) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_105182)
(declare-fun qpRange51 (T@Ref) Bool)
(declare-fun invRecv51 (T@Ref) T@Ref)
(declare-fun QPMask@7 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered52 (T@Ref) Bool)
(declare-fun PostHeap@0 () T@PolymorphicMapType_105161)
(declare-fun QPMask@4 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered49 (T@Ref) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_105182)
(declare-fun qpRange49 (T@Ref) Bool)
(declare-fun invRecv49 (T@Ref) T@Ref)
(declare-fun QPMask@5 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered50 (T@Ref) Bool)
(declare-fun QPMask@18 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered55 (T@Ref) Bool)
(declare-fun qpRange55 (T@Ref) Bool)
(declare-fun invRecv55 (T@Ref) T@Ref)
(declare-fun QPMask@19 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered56 (T@Ref) Bool)
(declare-fun QPMask@16 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered53 (T@Ref) Bool)
(declare-fun qpRange53 (T@Ref) Bool)
(declare-fun invRecv53 (T@Ref) T@Ref)
(declare-fun QPMask@17 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered54 (T@Ref) Bool)
(declare-fun QPMask@14 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered63 (T@Ref) Bool)
(declare-fun qpRange63 (T@Ref) Bool)
(declare-fun invRecv63 (T@Ref) T@Ref)
(declare-fun QPMask@15 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered64 (T@Ref) Bool)
(declare-fun QPMask@12 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered61 (T@Ref) Bool)
(declare-fun qpRange61 (T@Ref) Bool)
(declare-fun invRecv61 (T@Ref) T@Ref)
(declare-fun QPMask@13 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered62 (T@Ref) Bool)
(declare-fun QPMask@10 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered59 (T@Ref) Bool)
(declare-fun qpRange59 (T@Ref) Bool)
(declare-fun invRecv59 (T@Ref) T@Ref)
(declare-fun QPMask@11 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered60 (T@Ref) Bool)
(declare-fun QPMask@8 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered57 (T@Ref) Bool)
(declare-fun qpRange57 (T@Ref) Bool)
(declare-fun invRecv57 (T@Ref) T@Ref)
(declare-fun QPMask@9 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered58 (T@Ref) Bool)
(declare-fun v1_12 () T@Ref)
(declare-fun x@@6 () T@Ref)
(declare-fun v2_12 () T@Ref)
(declare-fun y@@3 () T@Ref)
(declare-fun n$6_6 () T@Ref)
(declare-fun n$5_3 () T@Ref)
(declare-fun qpRange48 (T@Ref) Bool)
(declare-fun invRecv48 (T@Ref) T@Ref)
(declare-fun QPMask@2 () T@PolymorphicMapType_105182)
(declare-fun qpRange47 (T@Ref) Bool)
(declare-fun invRecv47 (T@Ref) T@Ref)
(declare-fun PostMask@1 () T@PolymorphicMapType_105182)
(declare-fun perm@2 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_105182)
(declare-fun perm@3 () Real)
(declare-fun n$2_25 () T@Ref)
(declare-fun n$1_14 () T@Ref)
(declare-fun qpRange46 (T@Ref) Bool)
(declare-fun invRecv46 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_105182)
(declare-fun qpRange45 (T@Ref) Bool)
(declare-fun invRecv45 (T@Ref) T@Ref)
(declare-fun Mask@1 () T@PolymorphicMapType_105182)
(declare-fun perm@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_105182)
(declare-fun perm@1 () Real)
(set-info :boogie-vc-id link_right)
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
 (=> (= (ControlFlow 0 0) 140) (let ((anon110_Then_correct  (and (=> (= (ControlFlow 0 105) (- 0 110)) (forall ((n_4 T@Ref) ) (!  (=> (and (select g_1 n_4) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3920:23|
 :skolemid |437|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@6) n_4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4 l))
))) (=> (forall ((n_4@@0 T@Ref) ) (!  (=> (and (select g_1 n_4@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4@@0 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3920:23|
 :skolemid |437|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4@@0 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@6) n_4@@0 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4@@0 l))
)) (and (=> (= (ControlFlow 0 105) (- 0 109)) (forall ((n_4@@1 T@Ref) (n_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4@@1 n_4_1)) (select g_1 n_4@@1)) (select g_1 n_4_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_4@@1 n_4_1)))
 :qid |stdinbpl.3927:23|
 :skolemid |438|
 :pattern ( (neverTriggered51 n_4@@1) (neverTriggered51 n_4_1))
))) (=> (forall ((n_4@@2 T@Ref) (n_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4@@2 n_4_1@@0)) (select g_1 n_4@@2)) (select g_1 n_4_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_4@@2 n_4_1@@0)))
 :qid |stdinbpl.3927:23|
 :skolemid |438|
 :pattern ( (neverTriggered51 n_4@@2) (neverTriggered51 n_4_1@@0))
)) (and (=> (= (ControlFlow 0 105) (- 0 108)) (forall ((n_4@@3 T@Ref) ) (!  (=> (select g_1 n_4@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_4@@3 l) NoPerm)))
 :qid |stdinbpl.3934:23|
 :skolemid |439|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@6) n_4@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4@@3 l))
))) (=> (forall ((n_4@@4 T@Ref) ) (!  (=> (select g_1 n_4@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_4@@4 l) NoPerm)))
 :qid |stdinbpl.3934:23|
 :skolemid |439|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4@@4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@6) n_4@@4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4@@4 l))
)) (=> (and (forall ((n_4@@5 T@Ref) ) (!  (=> (and (select g_1 n_4@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange51 n_4@@5) (= (invRecv51 n_4@@5) n_4@@5)))
 :qid |stdinbpl.3940:28|
 :skolemid |440|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4@@5 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@6) n_4@@5 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4@@5 l))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (select g_1 (invRecv51 o_9)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange51 o_9))) (= (invRecv51 o_9) o_9))
 :qid |stdinbpl.3944:28|
 :skolemid |441|
 :pattern ( (invRecv51 o_9))
))) (and (=> (= (ControlFlow 0 105) (- 0 107)) (forall ((n_5 T@Ref) ) (!  (=> (and (select g_1 n_5) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_5 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3952:23|
 :skolemid |442|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_5 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@7) n_5 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_5 r_11))
))) (=> (forall ((n_5@@0 T@Ref) ) (!  (=> (and (select g_1 n_5@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_5@@0 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3952:23|
 :skolemid |442|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_5@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@7) n_5@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_5@@0 r_11))
)) (and (=> (= (ControlFlow 0 105) (- 0 106)) (forall ((n_5@@1 T@Ref) (n_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@1 n_5_1)) (select g_1 n_5@@1)) (select g_1 n_5_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_5@@1 n_5_1)))
 :qid |stdinbpl.3959:23|
 :skolemid |443|
 :pattern ( (neverTriggered52 n_5@@1) (neverTriggered52 n_5_1))
))) (=> (forall ((n_5@@2 T@Ref) (n_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@2 n_5_1@@0)) (select g_1 n_5@@2)) (select g_1 n_5_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_5@@2 n_5_1@@0)))
 :qid |stdinbpl.3959:23|
 :skolemid |443|
 :pattern ( (neverTriggered52 n_5@@2) (neverTriggered52 n_5_1@@0))
)) (=> (= (ControlFlow 0 105) (- 0 104)) (forall ((n_5@@3 T@Ref) ) (!  (=> (select g_1 n_5@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_5@@3 r_11) NoPerm)))
 :qid |stdinbpl.3966:23|
 :skolemid |444|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_5@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@7) n_5@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_5@@3 r_11))
))))))))))))))))
(let ((anon109_Then_correct  (and (=> (= (ControlFlow 0 98) (- 0 103)) (forall ((n_2 T@Ref) ) (!  (=> (and (select g_1 n_2) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_2 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3845:23|
 :skolemid |427|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_2 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) n_2 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_2 l))
))) (=> (forall ((n_2@@0 T@Ref) ) (!  (=> (and (select g_1 n_2@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_2@@0 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3845:23|
 :skolemid |427|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_2@@0 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) n_2@@0 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_2@@0 l))
)) (and (=> (= (ControlFlow 0 98) (- 0 102)) (forall ((n_2@@1 T@Ref) (n_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@1 n_2_1)) (select g_1 n_2@@1)) (select g_1 n_2_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_2@@1 n_2_1)))
 :qid |stdinbpl.3852:23|
 :skolemid |428|
 :pattern ( (neverTriggered49 n_2@@1) (neverTriggered49 n_2_1))
))) (=> (forall ((n_2@@2 T@Ref) (n_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@2 n_2_1@@0)) (select g_1 n_2@@2)) (select g_1 n_2_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_2@@2 n_2_1@@0)))
 :qid |stdinbpl.3852:23|
 :skolemid |428|
 :pattern ( (neverTriggered49 n_2@@2) (neverTriggered49 n_2_1@@0))
)) (and (=> (= (ControlFlow 0 98) (- 0 101)) (forall ((n_2@@3 T@Ref) ) (!  (=> (select g_1 n_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_2@@3 l) NoPerm)))
 :qid |stdinbpl.3859:23|
 :skolemid |429|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_2@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) n_2@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_2@@3 l))
))) (=> (forall ((n_2@@4 T@Ref) ) (!  (=> (select g_1 n_2@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_2@@4 l) NoPerm)))
 :qid |stdinbpl.3859:23|
 :skolemid |429|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_2@@4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) n_2@@4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_2@@4 l))
)) (=> (and (forall ((n_2@@5 T@Ref) ) (!  (=> (and (select g_1 n_2@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange49 n_2@@5) (= (invRecv49 n_2@@5) n_2@@5)))
 :qid |stdinbpl.3865:28|
 :skolemid |430|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_2@@5 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) n_2@@5 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_2@@5 l))
)) (forall ((o_9@@0 T@Ref) ) (!  (=> (and (select g_1 (invRecv49 o_9@@0)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange49 o_9@@0))) (= (invRecv49 o_9@@0) o_9@@0))
 :qid |stdinbpl.3869:28|
 :skolemid |431|
 :pattern ( (invRecv49 o_9@@0))
))) (and (=> (= (ControlFlow 0 98) (- 0 100)) (forall ((n_3 T@Ref) ) (!  (=> (and (select g_1 n_3) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_3 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3877:23|
 :skolemid |432|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_3 r_11))
))) (=> (forall ((n_3@@0 T@Ref) ) (!  (=> (and (select g_1 n_3@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_3@@0 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3877:23|
 :skolemid |432|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_3@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_3@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_3@@0 r_11))
)) (and (=> (= (ControlFlow 0 98) (- 0 99)) (forall ((n_3@@1 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@1 n_3_1)) (select g_1 n_3@@1)) (select g_1 n_3_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_3@@1 n_3_1)))
 :qid |stdinbpl.3884:23|
 :skolemid |433|
 :pattern ( (neverTriggered50 n_3@@1) (neverTriggered50 n_3_1))
))) (=> (forall ((n_3@@2 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@2 n_3_1@@0)) (select g_1 n_3@@2)) (select g_1 n_3_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_3@@2 n_3_1@@0)))
 :qid |stdinbpl.3884:23|
 :skolemid |433|
 :pattern ( (neverTriggered50 n_3@@2) (neverTriggered50 n_3_1@@0))
)) (=> (= (ControlFlow 0 98) (- 0 97)) (forall ((n_3@@3 T@Ref) ) (!  (=> (select g_1 n_3@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_3@@3 r_11) NoPerm)))
 :qid |stdinbpl.3891:23|
 :skolemid |434|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_3@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_3@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_3@@3 r_11))
))))))))))))))))
(let ((anon114_Else_correct true))
(let ((anon114_Then_correct  (and (=> (= (ControlFlow 0 87) (- 0 92)) (forall ((n_8 T@Ref) ) (!  (=> (and (select g_1 n_8) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_8 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4075:25|
 :skolemid |457|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_8 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) n_8 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_8 l))
))) (=> (forall ((n_8@@0 T@Ref) ) (!  (=> (and (select g_1 n_8@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_8@@0 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4075:25|
 :skolemid |457|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_8@@0 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) n_8@@0 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_8@@0 l))
)) (and (=> (= (ControlFlow 0 87) (- 0 91)) (forall ((n_8@@1 T@Ref) (n_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@1 n_8_1)) (select g_1 n_8@@1)) (select g_1 n_8_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_8@@1 n_8_1)))
 :qid |stdinbpl.4082:25|
 :skolemid |458|
 :pattern ( (neverTriggered55 n_8@@1) (neverTriggered55 n_8_1))
))) (=> (forall ((n_8@@2 T@Ref) (n_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@2 n_8_1@@0)) (select g_1 n_8@@2)) (select g_1 n_8_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_8@@2 n_8_1@@0)))
 :qid |stdinbpl.4082:25|
 :skolemid |458|
 :pattern ( (neverTriggered55 n_8@@2) (neverTriggered55 n_8_1@@0))
)) (and (=> (= (ControlFlow 0 87) (- 0 90)) (forall ((n_8@@3 T@Ref) ) (!  (=> (select g_1 n_8@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_8@@3 l) NoPerm)))
 :qid |stdinbpl.4089:25|
 :skolemid |459|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_8@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) n_8@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_8@@3 l))
))) (=> (forall ((n_8@@4 T@Ref) ) (!  (=> (select g_1 n_8@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_8@@4 l) NoPerm)))
 :qid |stdinbpl.4089:25|
 :skolemid |459|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_8@@4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) n_8@@4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_8@@4 l))
)) (=> (and (forall ((n_8@@5 T@Ref) ) (!  (=> (and (select g_1 n_8@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange55 n_8@@5) (= (invRecv55 n_8@@5) n_8@@5)))
 :qid |stdinbpl.4095:30|
 :skolemid |460|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_8@@5 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) n_8@@5 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_8@@5 l))
)) (forall ((o_9@@1 T@Ref) ) (!  (=> (and (select g_1 (invRecv55 o_9@@1)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange55 o_9@@1))) (= (invRecv55 o_9@@1) o_9@@1))
 :qid |stdinbpl.4099:30|
 :skolemid |461|
 :pattern ( (invRecv55 o_9@@1))
))) (and (=> (= (ControlFlow 0 87) (- 0 89)) (forall ((n_9 T@Ref) ) (!  (=> (and (select g_1 n_9) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_9 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4107:25|
 :skolemid |462|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_9 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) n_9 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_9 r_11))
))) (=> (forall ((n_9@@0 T@Ref) ) (!  (=> (and (select g_1 n_9@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_9@@0 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4107:25|
 :skolemid |462|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_9@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) n_9@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_9@@0 r_11))
)) (and (=> (= (ControlFlow 0 87) (- 0 88)) (forall ((n_9@@1 T@Ref) (n_9_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@1 n_9_1)) (select g_1 n_9@@1)) (select g_1 n_9_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_9@@1 n_9_1)))
 :qid |stdinbpl.4114:25|
 :skolemid |463|
 :pattern ( (neverTriggered56 n_9@@1) (neverTriggered56 n_9_1))
))) (=> (forall ((n_9@@2 T@Ref) (n_9_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@2 n_9_1@@0)) (select g_1 n_9@@2)) (select g_1 n_9_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_9@@2 n_9_1@@0)))
 :qid |stdinbpl.4114:25|
 :skolemid |463|
 :pattern ( (neverTriggered56 n_9@@2) (neverTriggered56 n_9_1@@0))
)) (=> (= (ControlFlow 0 87) (- 0 86)) (forall ((n_9@@3 T@Ref) ) (!  (=> (select g_1 n_9@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_9@@3 r_11) NoPerm)))
 :qid |stdinbpl.4121:25|
 :skolemid |464|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_9@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) n_9@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_9@@3 r_11))
))))))))))))))))
(let ((anon113_Then_correct  (and (=> (= (ControlFlow 0 80) (- 0 85)) (forall ((n_6 T@Ref) ) (!  (=> (and (select g_1 n_6) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_6 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4000:25|
 :skolemid |447|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_6 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n_6 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_6 l))
))) (=> (forall ((n_6@@0 T@Ref) ) (!  (=> (and (select g_1 n_6@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_6@@0 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4000:25|
 :skolemid |447|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_6@@0 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n_6@@0 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_6@@0 l))
)) (and (=> (= (ControlFlow 0 80) (- 0 84)) (forall ((n_6@@1 T@Ref) (n_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@1 n_6_1)) (select g_1 n_6@@1)) (select g_1 n_6_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_6@@1 n_6_1)))
 :qid |stdinbpl.4007:25|
 :skolemid |448|
 :pattern ( (neverTriggered53 n_6@@1) (neverTriggered53 n_6_1))
))) (=> (forall ((n_6@@2 T@Ref) (n_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@2 n_6_1@@0)) (select g_1 n_6@@2)) (select g_1 n_6_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_6@@2 n_6_1@@0)))
 :qid |stdinbpl.4007:25|
 :skolemid |448|
 :pattern ( (neverTriggered53 n_6@@2) (neverTriggered53 n_6_1@@0))
)) (and (=> (= (ControlFlow 0 80) (- 0 83)) (forall ((n_6@@3 T@Ref) ) (!  (=> (select g_1 n_6@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_6@@3 l) NoPerm)))
 :qid |stdinbpl.4014:25|
 :skolemid |449|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_6@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n_6@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_6@@3 l))
))) (=> (forall ((n_6@@4 T@Ref) ) (!  (=> (select g_1 n_6@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_6@@4 l) NoPerm)))
 :qid |stdinbpl.4014:25|
 :skolemid |449|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_6@@4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n_6@@4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_6@@4 l))
)) (=> (and (forall ((n_6@@5 T@Ref) ) (!  (=> (and (select g_1 n_6@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange53 n_6@@5) (= (invRecv53 n_6@@5) n_6@@5)))
 :qid |stdinbpl.4020:30|
 :skolemid |450|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_6@@5 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n_6@@5 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_6@@5 l))
)) (forall ((o_9@@2 T@Ref) ) (!  (=> (and (select g_1 (invRecv53 o_9@@2)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange53 o_9@@2))) (= (invRecv53 o_9@@2) o_9@@2))
 :qid |stdinbpl.4024:30|
 :skolemid |451|
 :pattern ( (invRecv53 o_9@@2))
))) (and (=> (= (ControlFlow 0 80) (- 0 82)) (forall ((n_7 T@Ref) ) (!  (=> (and (select g_1 n_7) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_7 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4032:25|
 :skolemid |452|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_7 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) n_7 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_7 r_11))
))) (=> (forall ((n_7@@0 T@Ref) ) (!  (=> (and (select g_1 n_7@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_7@@0 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4032:25|
 :skolemid |452|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_7@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) n_7@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_7@@0 r_11))
)) (and (=> (= (ControlFlow 0 80) (- 0 81)) (forall ((n_7@@1 T@Ref) (n_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@1 n_7_1)) (select g_1 n_7@@1)) (select g_1 n_7_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_7@@1 n_7_1)))
 :qid |stdinbpl.4039:25|
 :skolemid |453|
 :pattern ( (neverTriggered54 n_7@@1) (neverTriggered54 n_7_1))
))) (=> (forall ((n_7@@2 T@Ref) (n_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@2 n_7_1@@0)) (select g_1 n_7@@2)) (select g_1 n_7_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_7@@2 n_7_1@@0)))
 :qid |stdinbpl.4039:25|
 :skolemid |453|
 :pattern ( (neverTriggered54 n_7@@2) (neverTriggered54 n_7_1@@0))
)) (=> (= (ControlFlow 0 80) (- 0 79)) (forall ((n_7@@3 T@Ref) ) (!  (=> (select g_1 n_7@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_7@@3 r_11) NoPerm)))
 :qid |stdinbpl.4046:25|
 :skolemid |454|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_7@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) n_7@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_7@@3 r_11))
))))))))))))))))
(let ((anon123_Then_correct  (and (=> (= (ControlFlow 0 66) (- 0 71)) (forall ((n_16_1 T@Ref) ) (!  (=> (and (select g_1 n_16_1) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4382:31|
 :skolemid |498|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) n_16_1 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1 l))
))) (=> (forall ((n_16_1@@0 T@Ref) ) (!  (=> (and (select g_1 n_16_1@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1@@0 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4382:31|
 :skolemid |498|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1@@0 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) n_16_1@@0 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1@@0 l))
)) (and (=> (= (ControlFlow 0 66) (- 0 70)) (forall ((n_16_1@@1 T@Ref) (n_16_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_16_1@@1 n_16_2)) (select g_1 n_16_1@@1)) (select g_1 n_16_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_16_1@@1 n_16_2)))
 :qid |stdinbpl.4389:31|
 :skolemid |499|
 :pattern ( (neverTriggered63 n_16_1@@1) (neverTriggered63 n_16_2))
))) (=> (forall ((n_16_1@@2 T@Ref) (n_16_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_16_1@@2 n_16_2@@0)) (select g_1 n_16_1@@2)) (select g_1 n_16_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_16_1@@2 n_16_2@@0)))
 :qid |stdinbpl.4389:31|
 :skolemid |499|
 :pattern ( (neverTriggered63 n_16_1@@2) (neverTriggered63 n_16_2@@0))
)) (and (=> (= (ControlFlow 0 66) (- 0 69)) (forall ((n_16_1@@3 T@Ref) ) (!  (=> (select g_1 n_16_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_16_1@@3 l) NoPerm)))
 :qid |stdinbpl.4396:31|
 :skolemid |500|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) n_16_1@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1@@3 l))
))) (=> (forall ((n_16_1@@4 T@Ref) ) (!  (=> (select g_1 n_16_1@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_16_1@@4 l) NoPerm)))
 :qid |stdinbpl.4396:31|
 :skolemid |500|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1@@4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) n_16_1@@4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1@@4 l))
)) (=> (and (forall ((n_16_1@@5 T@Ref) ) (!  (=> (and (select g_1 n_16_1@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange63 n_16_1@@5) (= (invRecv63 n_16_1@@5) n_16_1@@5)))
 :qid |stdinbpl.4402:36|
 :skolemid |501|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1@@5 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) n_16_1@@5 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16_1@@5 l))
)) (forall ((o_9@@3 T@Ref) ) (!  (=> (and (select g_1 (invRecv63 o_9@@3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange63 o_9@@3))) (= (invRecv63 o_9@@3) o_9@@3))
 :qid |stdinbpl.4406:36|
 :skolemid |502|
 :pattern ( (invRecv63 o_9@@3))
))) (and (=> (= (ControlFlow 0 66) (- 0 68)) (forall ((n_17 T@Ref) ) (!  (=> (and (select g_1 n_17) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4414:31|
 :skolemid |503|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@15) n_17 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17 r_11))
))) (=> (forall ((n_17@@0 T@Ref) ) (!  (=> (and (select g_1 n_17@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@0 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4414:31|
 :skolemid |503|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@15) n_17@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@0 r_11))
)) (and (=> (= (ControlFlow 0 66) (- 0 67)) (forall ((n_17@@1 T@Ref) (n_17_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_17@@1 n_17_1)) (select g_1 n_17@@1)) (select g_1 n_17_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_17@@1 n_17_1)))
 :qid |stdinbpl.4421:31|
 :skolemid |504|
 :pattern ( (neverTriggered64 n_17@@1) (neverTriggered64 n_17_1))
))) (=> (forall ((n_17@@2 T@Ref) (n_17_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_17@@2 n_17_1@@0)) (select g_1 n_17@@2)) (select g_1 n_17_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_17@@2 n_17_1@@0)))
 :qid |stdinbpl.4421:31|
 :skolemid |504|
 :pattern ( (neverTriggered64 n_17@@2) (neverTriggered64 n_17_1@@0))
)) (=> (= (ControlFlow 0 66) (- 0 65)) (forall ((n_17@@3 T@Ref) ) (!  (=> (select g_1 n_17@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_17@@3 r_11) NoPerm)))
 :qid |stdinbpl.4428:31|
 :skolemid |505|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@15) n_17@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@3 r_11))
))))))))))))))))
(let ((anon121_Then_correct  (and (=> (= (ControlFlow 0 58) (- 0 63)) (forall ((n_14_1 T@Ref) ) (!  (=> (and (select g_1 n_14_1) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_14_1 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4309:29|
 :skolemid |488|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_14_1 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n_14_1 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_14_1 l))
))) (=> (forall ((n_14_1@@0 T@Ref) ) (!  (=> (and (select g_1 n_14_1@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_14_1@@0 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4309:29|
 :skolemid |488|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_14_1@@0 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n_14_1@@0 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_14_1@@0 l))
)) (and (=> (= (ControlFlow 0 58) (- 0 62)) (forall ((n_14_1@@1 T@Ref) (n_14_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14_1@@1 n_14_2)) (select g_1 n_14_1@@1)) (select g_1 n_14_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_14_1@@1 n_14_2)))
 :qid |stdinbpl.4316:29|
 :skolemid |489|
 :pattern ( (neverTriggered61 n_14_1@@1) (neverTriggered61 n_14_2))
))) (=> (forall ((n_14_1@@2 T@Ref) (n_14_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14_1@@2 n_14_2@@0)) (select g_1 n_14_1@@2)) (select g_1 n_14_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_14_1@@2 n_14_2@@0)))
 :qid |stdinbpl.4316:29|
 :skolemid |489|
 :pattern ( (neverTriggered61 n_14_1@@2) (neverTriggered61 n_14_2@@0))
)) (and (=> (= (ControlFlow 0 58) (- 0 61)) (forall ((n_14_1@@3 T@Ref) ) (!  (=> (select g_1 n_14_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_14_1@@3 l) NoPerm)))
 :qid |stdinbpl.4323:29|
 :skolemid |490|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_14_1@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n_14_1@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_14_1@@3 l))
))) (=> (forall ((n_14_1@@4 T@Ref) ) (!  (=> (select g_1 n_14_1@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_14_1@@4 l) NoPerm)))
 :qid |stdinbpl.4323:29|
 :skolemid |490|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_14_1@@4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n_14_1@@4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_14_1@@4 l))
)) (=> (and (forall ((n_14_1@@5 T@Ref) ) (!  (=> (and (select g_1 n_14_1@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange61 n_14_1@@5) (= (invRecv61 n_14_1@@5) n_14_1@@5)))
 :qid |stdinbpl.4329:34|
 :skolemid |491|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_14_1@@5 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n_14_1@@5 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_14_1@@5 l))
)) (forall ((o_9@@4 T@Ref) ) (!  (=> (and (select g_1 (invRecv61 o_9@@4)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange61 o_9@@4))) (= (invRecv61 o_9@@4) o_9@@4))
 :qid |stdinbpl.4333:34|
 :skolemid |492|
 :pattern ( (invRecv61 o_9@@4))
))) (and (=> (= (ControlFlow 0 58) (- 0 60)) (forall ((n_15 T@Ref) ) (!  (=> (and (select g_1 n_15) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_15 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4341:29|
 :skolemid |493|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_15 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) n_15 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_15 r_11))
))) (=> (forall ((n_15@@0 T@Ref) ) (!  (=> (and (select g_1 n_15@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_15@@0 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4341:29|
 :skolemid |493|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_15@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) n_15@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_15@@0 r_11))
)) (and (=> (= (ControlFlow 0 58) (- 0 59)) (forall ((n_15@@1 T@Ref) (n_15_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15@@1 n_15_1)) (select g_1 n_15@@1)) (select g_1 n_15_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_15@@1 n_15_1)))
 :qid |stdinbpl.4348:29|
 :skolemid |494|
 :pattern ( (neverTriggered62 n_15@@1) (neverTriggered62 n_15_1))
))) (=> (forall ((n_15@@2 T@Ref) (n_15_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15@@2 n_15_1@@0)) (select g_1 n_15@@2)) (select g_1 n_15_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_15@@2 n_15_1@@0)))
 :qid |stdinbpl.4348:29|
 :skolemid |494|
 :pattern ( (neverTriggered62 n_15@@2) (neverTriggered62 n_15_1@@0))
)) (=> (= (ControlFlow 0 58) (- 0 57)) (forall ((n_15@@3 T@Ref) ) (!  (=> (select g_1 n_15@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_15@@3 r_11) NoPerm)))
 :qid |stdinbpl.4355:29|
 :skolemid |495|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_15@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) n_15@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_15@@3 r_11))
))))))))))))))))
(let ((anon119_Then_correct  (and (=> (= (ControlFlow 0 50) (- 0 55)) (forall ((n_12 T@Ref) ) (!  (=> (and (select g_1 n_12) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_12 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4236:27|
 :skolemid |478|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_12 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) n_12 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_12 l))
))) (=> (forall ((n_12@@0 T@Ref) ) (!  (=> (and (select g_1 n_12@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_12@@0 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4236:27|
 :skolemid |478|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_12@@0 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) n_12@@0 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_12@@0 l))
)) (and (=> (= (ControlFlow 0 50) (- 0 54)) (forall ((n_12@@1 T@Ref) (n_12_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12@@1 n_12_1)) (select g_1 n_12@@1)) (select g_1 n_12_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_12@@1 n_12_1)))
 :qid |stdinbpl.4243:27|
 :skolemid |479|
 :pattern ( (neverTriggered59 n_12@@1) (neverTriggered59 n_12_1))
))) (=> (forall ((n_12@@2 T@Ref) (n_12_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12@@2 n_12_1@@0)) (select g_1 n_12@@2)) (select g_1 n_12_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_12@@2 n_12_1@@0)))
 :qid |stdinbpl.4243:27|
 :skolemid |479|
 :pattern ( (neverTriggered59 n_12@@2) (neverTriggered59 n_12_1@@0))
)) (and (=> (= (ControlFlow 0 50) (- 0 53)) (forall ((n_12@@3 T@Ref) ) (!  (=> (select g_1 n_12@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_12@@3 l) NoPerm)))
 :qid |stdinbpl.4250:27|
 :skolemid |480|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_12@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) n_12@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_12@@3 l))
))) (=> (forall ((n_12@@4 T@Ref) ) (!  (=> (select g_1 n_12@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_12@@4 l) NoPerm)))
 :qid |stdinbpl.4250:27|
 :skolemid |480|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_12@@4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) n_12@@4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_12@@4 l))
)) (=> (and (forall ((n_12@@5 T@Ref) ) (!  (=> (and (select g_1 n_12@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange59 n_12@@5) (= (invRecv59 n_12@@5) n_12@@5)))
 :qid |stdinbpl.4256:32|
 :skolemid |481|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_12@@5 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) n_12@@5 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_12@@5 l))
)) (forall ((o_9@@5 T@Ref) ) (!  (=> (and (select g_1 (invRecv59 o_9@@5)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange59 o_9@@5))) (= (invRecv59 o_9@@5) o_9@@5))
 :qid |stdinbpl.4260:32|
 :skolemid |482|
 :pattern ( (invRecv59 o_9@@5))
))) (and (=> (= (ControlFlow 0 50) (- 0 52)) (forall ((n_13_2 T@Ref) ) (!  (=> (and (select g_1 n_13_2) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_13_2 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4268:27|
 :skolemid |483|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_13_2 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@11) n_13_2 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_13_2 r_11))
))) (=> (forall ((n_13_2@@0 T@Ref) ) (!  (=> (and (select g_1 n_13_2@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_13_2@@0 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4268:27|
 :skolemid |483|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_13_2@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@11) n_13_2@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_13_2@@0 r_11))
)) (and (=> (= (ControlFlow 0 50) (- 0 51)) (forall ((n_13_2@@1 T@Ref) (n_13_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13_2@@1 n_13_3)) (select g_1 n_13_2@@1)) (select g_1 n_13_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_13_2@@1 n_13_3)))
 :qid |stdinbpl.4275:27|
 :skolemid |484|
 :pattern ( (neverTriggered60 n_13_2@@1) (neverTriggered60 n_13_3))
))) (=> (forall ((n_13_2@@2 T@Ref) (n_13_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13_2@@2 n_13_3@@0)) (select g_1 n_13_2@@2)) (select g_1 n_13_3@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_13_2@@2 n_13_3@@0)))
 :qid |stdinbpl.4275:27|
 :skolemid |484|
 :pattern ( (neverTriggered60 n_13_2@@2) (neverTriggered60 n_13_3@@0))
)) (=> (= (ControlFlow 0 50) (- 0 49)) (forall ((n_13_2@@3 T@Ref) ) (!  (=> (select g_1 n_13_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_13_2@@3 r_11) NoPerm)))
 :qid |stdinbpl.4282:27|
 :skolemid |485|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_13_2@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@11) n_13_2@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_13_2@@3 r_11))
))))))))))))))))
(let ((anon118_Then_correct  (and (=> (= (ControlFlow 0 43) (- 0 48)) (forall ((n_10_1 T@Ref) ) (!  (=> (and (select g_1 n_10_1) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_10_1 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4161:27|
 :skolemid |468|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_10_1 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n_10_1 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_10_1 l))
))) (=> (forall ((n_10_1@@0 T@Ref) ) (!  (=> (and (select g_1 n_10_1@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_10_1@@0 l))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4161:27|
 :skolemid |468|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_10_1@@0 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n_10_1@@0 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_10_1@@0 l))
)) (and (=> (= (ControlFlow 0 43) (- 0 47)) (forall ((n_10_1@@1 T@Ref) (n_10_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1@@1 n_10_2)) (select g_1 n_10_1@@1)) (select g_1 n_10_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_10_1@@1 n_10_2)))
 :qid |stdinbpl.4168:27|
 :skolemid |469|
 :pattern ( (neverTriggered57 n_10_1@@1) (neverTriggered57 n_10_2))
))) (=> (forall ((n_10_1@@2 T@Ref) (n_10_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1@@2 n_10_2@@0)) (select g_1 n_10_1@@2)) (select g_1 n_10_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_10_1@@2 n_10_2@@0)))
 :qid |stdinbpl.4168:27|
 :skolemid |469|
 :pattern ( (neverTriggered57 n_10_1@@2) (neverTriggered57 n_10_2@@0))
)) (and (=> (= (ControlFlow 0 43) (- 0 46)) (forall ((n_10_1@@3 T@Ref) ) (!  (=> (select g_1 n_10_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_10_1@@3 l) NoPerm)))
 :qid |stdinbpl.4175:27|
 :skolemid |470|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_10_1@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n_10_1@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_10_1@@3 l))
))) (=> (forall ((n_10_1@@4 T@Ref) ) (!  (=> (select g_1 n_10_1@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_10_1@@4 l) NoPerm)))
 :qid |stdinbpl.4175:27|
 :skolemid |470|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_10_1@@4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n_10_1@@4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_10_1@@4 l))
)) (=> (and (forall ((n_10_1@@5 T@Ref) ) (!  (=> (and (select g_1 n_10_1@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange57 n_10_1@@5) (= (invRecv57 n_10_1@@5) n_10_1@@5)))
 :qid |stdinbpl.4181:32|
 :skolemid |471|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_10_1@@5 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n_10_1@@5 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_10_1@@5 l))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (select g_1 (invRecv57 o_9@@6)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange57 o_9@@6))) (= (invRecv57 o_9@@6) o_9@@6))
 :qid |stdinbpl.4185:32|
 :skolemid |472|
 :pattern ( (invRecv57 o_9@@6))
))) (and (=> (= (ControlFlow 0 43) (- 0 45)) (forall ((n_11_2 T@Ref) ) (!  (=> (and (select g_1 n_11_2) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_11_2 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4193:27|
 :skolemid |473|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_11_2 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) n_11_2 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_11_2 r_11))
))) (=> (forall ((n_11_2@@0 T@Ref) ) (!  (=> (and (select g_1 n_11_2@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_11_2@@0 r_11))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4193:27|
 :skolemid |473|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_11_2@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) n_11_2@@0 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_11_2@@0 r_11))
)) (and (=> (= (ControlFlow 0 43) (- 0 44)) (forall ((n_11_2@@1 T@Ref) (n_11_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_2@@1 n_11_3)) (select g_1 n_11_2@@1)) (select g_1 n_11_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_11_2@@1 n_11_3)))
 :qid |stdinbpl.4200:27|
 :skolemid |474|
 :pattern ( (neverTriggered58 n_11_2@@1) (neverTriggered58 n_11_3))
))) (=> (forall ((n_11_2@@2 T@Ref) (n_11_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_2@@2 n_11_3@@0)) (select g_1 n_11_2@@2)) (select g_1 n_11_3@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_11_2@@2 n_11_3@@0)))
 :qid |stdinbpl.4200:27|
 :skolemid |474|
 :pattern ( (neverTriggered58 n_11_2@@2) (neverTriggered58 n_11_3@@0))
)) (=> (= (ControlFlow 0 43) (- 0 42)) (forall ((n_11_2@@3 T@Ref) ) (!  (=> (select g_1 n_11_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_11_2@@3 r_11) NoPerm)))
 :qid |stdinbpl.4207:27|
 :skolemid |475|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_11_2@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) n_11_2@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_11_2@@3 r_11))
))))))))))))))))
(let ((anon62_correct true))
(let ((anon122_Then_correct  (=> (exists_path ($$ Heap@@29 g_1) v1_12 x@@6) (and (=> (= (ControlFlow 0 72) 66) anon123_Then_correct) (=> (= (ControlFlow 0 72) 40) anon62_correct)))))
(let ((anon122_Else_correct  (=> (and (not (exists_path ($$ Heap@@29 g_1) v1_12 x@@6)) (= (ControlFlow 0 64) 40)) anon62_correct)))
(let ((anon120_Then_correct  (=> (not (exists_path ($$ Heap@@29 g_1) v1_12 v2_12)) (and (and (=> (= (ControlFlow 0 73) 58) anon121_Then_correct) (=> (= (ControlFlow 0 73) 72) anon122_Then_correct)) (=> (= (ControlFlow 0 73) 64) anon122_Else_correct)))))
(let ((anon120_Else_correct  (=> (and (exists_path ($$ Heap@@29 g_1) v1_12 v2_12) (= (ControlFlow 0 56) 40)) anon62_correct)))
(let ((anon117_Then_correct  (=> (not (= v1_12 v2_12)) (and (and (and (=> (= (ControlFlow 0 74) 43) anon118_Then_correct) (=> (= (ControlFlow 0 74) 50) anon119_Then_correct)) (=> (= (ControlFlow 0 74) 73) anon120_Then_correct)) (=> (= (ControlFlow 0 74) 56) anon120_Else_correct)))))
(let ((anon117_Else_correct  (=> (and (= v1_12 v2_12) (= (ControlFlow 0 41) 40)) anon62_correct)))
(let ((anon64_correct true))
(let ((anon116_Else_correct  (=> (and (forall ((v1_3 T@Ref) (v2_3 T@Ref) ) (!  (=> (not (= v1_3 v2_3)) (= (exists_path ($$ PostHeap@0 g_1) v1_3 v2_3)  (or (exists_path ($$ Heap@@29 g_1) v1_3 v2_3) (and (exists_path ($$ Heap@@29 g_1) v1_3 x@@6) (exists_path ($$ Heap@@29 g_1) y@@3 v2_3)))))
 :qid |stdinbpl.4451:22|
 :skolemid |508|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| PostHeap@0 g_1)) (FrameFragment_8621 (|$$#condqp2| PostHeap@0 g_1))) g_1) v1_3 v2_3))
)) (= (ControlFlow 0 39) 37)) anon64_correct)))
(let ((anon115_Then_correct  (=> (and (not (= y@@3 null)) (state PostHeap@0 QPMask@3)) (and (and (=> (= (ControlFlow 0 75) 39) anon116_Else_correct) (=> (= (ControlFlow 0 75) 74) anon117_Then_correct)) (=> (= (ControlFlow 0 75) 41) anon117_Else_correct)))))
(let ((anon115_Else_correct  (=> (and (= y@@3 null) (= (ControlFlow 0 38) 37)) anon64_correct)))
(let ((anon49_correct  (=> (state PostHeap@0 QPMask@3) (and (=> (= (ControlFlow 0 76) 75) anon115_Then_correct) (=> (= (ControlFlow 0 76) 38) anon115_Else_correct)))))
(let ((anon112_Else_correct  (=> (and (forall ((v1_1 T@Ref) (v2_1 T@Ref) ) (! (= (edge ($$ PostHeap@0 g_1) v1_1 v2_1)  (or (edge ($$ Heap@@29 g_1) v1_1 v2_1) (and (= v1_1 x@@6) (= v2_1 y@@3))))
 :qid |stdinbpl.4141:22|
 :skolemid |467|
 :pattern ( (edge (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 g_1)) (FrameFragment_8621 (|$$#condqp2| Heap@@29 g_1))) g_1) v1_1 v2_1))
)) (= (ControlFlow 0 78) 76)) anon49_correct)))
(let ((anon111_Then_correct  (=> (and (not (= y@@3 null)) (state PostHeap@0 QPMask@3)) (and (and (and (=> (= (ControlFlow 0 94) 78) anon112_Else_correct) (=> (= (ControlFlow 0 94) 80) anon113_Then_correct)) (=> (= (ControlFlow 0 94) 87) anon114_Then_correct)) (=> (= (ControlFlow 0 94) 93) anon114_Else_correct)))))
(let ((anon111_Else_correct  (=> (and (= y@@3 null) (= (ControlFlow 0 77) 76)) anon49_correct)))
(let ((anon41_correct  (=> (state PostHeap@0 QPMask@3) (and (=> (= (ControlFlow 0 95) 94) anon111_Then_correct) (=> (= (ControlFlow 0 95) 77) anon111_Else_correct)))))
(let ((anon110_Else_correct  (=> (and (|Set#Equal_70309| ($$ PostHeap@0 g_1) ($$ Heap@@29 g_1)) (= (ControlFlow 0 111) 95)) anon41_correct)))
(let ((anon108_Then_correct  (=> (and (= y@@3 null) (state PostHeap@0 QPMask@3)) (and (and (=> (= (ControlFlow 0 112) 98) anon109_Then_correct) (=> (= (ControlFlow 0 112) 105) anon110_Then_correct)) (=> (= (ControlFlow 0 112) 111) anon110_Else_correct)))))
(let ((anon108_Else_correct  (=> (and (not (= y@@3 null)) (= (ControlFlow 0 96) 95)) anon41_correct)))
(let ((anon105_Else_correct  (=> (and (forall ((n$6_1 T@Ref) ) (!  (=> (and (select g_1 n$6_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$6_1 r_11) null))) (select g_1 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$6_1 r_11)))
 :qid |stdinbpl.3822:20|
 :skolemid |426|
 :pattern ( (select g_1 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$6_1 r_11)))
 :pattern ( (select g_1 n$6_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$6_1 r_11))
)) (state PostHeap@0 QPMask@3)) (and (=> (= (ControlFlow 0 113) (- 0 114)) (HasDirectPerm_70297_70298 QPMask@3 x@@6 r_11)) (=> (HasDirectPerm_70297_70298 QPMask@3 x@@6 r_11) (=> (and (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) x@@6 r_11) y@@3) (state PostHeap@0 QPMask@3)) (and (=> (= (ControlFlow 0 113) 112) anon108_Then_correct) (=> (= (ControlFlow 0 113) 96) anon108_Else_correct))))))))
(let ((anon34_correct true))
(let ((anon107_Else_correct  (=> (and (not (and (select g_1 n$6_6) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$6_6 r_11) null)))) (= (ControlFlow 0 33) 30)) anon34_correct)))
(let ((anon107_Then_correct  (=> (and (select g_1 n$6_6) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$6_6 r_11) null))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (HasDirectPerm_70297_70298 QPMask@3 n$6_6 r_11)) (=> (HasDirectPerm_70297_70298 QPMask@3 n$6_6 r_11) (=> (= (ControlFlow 0 31) 30) anon34_correct))))))
(let ((anon106_Else_correct  (=> (not (select g_1 n$6_6)) (and (=> (= (ControlFlow 0 36) 31) anon107_Then_correct) (=> (= (ControlFlow 0 36) 33) anon107_Else_correct)))))
(let ((anon106_Then_correct  (=> (select g_1 n$6_6) (and (=> (= (ControlFlow 0 34) (- 0 35)) (HasDirectPerm_70297_70298 QPMask@3 n$6_6 r_11)) (=> (HasDirectPerm_70297_70298 QPMask@3 n$6_6 r_11) (and (=> (= (ControlFlow 0 34) 31) anon107_Then_correct) (=> (= (ControlFlow 0 34) 33) anon107_Else_correct)))))))
(let ((anon102_Else_correct  (=> (forall ((n$5_1 T@Ref) ) (!  (=> (and (select g_1 n$5_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$5_1 l) null))) (select g_1 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$5_1 l)))
 :qid |stdinbpl.3805:20|
 :skolemid |425|
 :pattern ( (select g_1 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$5_1 l)))
 :pattern ( (select g_1 n$5_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$5_1 l))
)) (and (and (=> (= (ControlFlow 0 115) 113) anon105_Else_correct) (=> (= (ControlFlow 0 115) 34) anon106_Then_correct)) (=> (= (ControlFlow 0 115) 36) anon106_Else_correct)))))
(let ((anon28_correct true))
(let ((anon104_Else_correct  (=> (and (not (and (select g_1 n$5_3) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$5_3 l) null)))) (= (ControlFlow 0 26) 23)) anon28_correct)))
(let ((anon104_Then_correct  (=> (and (select g_1 n$5_3) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$5_3 l) null))) (and (=> (= (ControlFlow 0 24) (- 0 25)) (HasDirectPerm_70297_70298 QPMask@3 n$5_3 l)) (=> (HasDirectPerm_70297_70298 QPMask@3 n$5_3 l) (=> (= (ControlFlow 0 24) 23) anon28_correct))))))
(let ((anon103_Else_correct  (=> (not (select g_1 n$5_3)) (and (=> (= (ControlFlow 0 29) 24) anon104_Then_correct) (=> (= (ControlFlow 0 29) 26) anon104_Else_correct)))))
(let ((anon103_Then_correct  (=> (select g_1 n$5_3) (and (=> (= (ControlFlow 0 27) (- 0 28)) (HasDirectPerm_70297_70298 QPMask@3 n$5_3 l)) (=> (HasDirectPerm_70297_70298 QPMask@3 n$5_3 l) (and (=> (= (ControlFlow 0 27) 24) anon104_Then_correct) (=> (= (ControlFlow 0 27) 26) anon104_Else_correct)))))))
(let ((anon101_Else_correct  (and (=> (= (ControlFlow 0 116) (- 0 118)) (forall ((n$4_1 T@Ref) (n$4_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_1 n$4_1_1)) (and (select g_1 n$4_1) (not (= n$4_1 x@@6)))) (and (select g_1 n$4_1_1) (not (= n$4_1_1 x@@6)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$4_1 n$4_1_1)))
 :qid |stdinbpl.3754:15|
 :skolemid |418|
))) (=> (forall ((n$4_1@@0 T@Ref) (n$4_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_1@@0 n$4_1_1@@0)) (and (select g_1 n$4_1@@0) (not (= n$4_1@@0 x@@6)))) (and (select g_1 n$4_1_1@@0) (not (= n$4_1_1@@0 x@@6)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$4_1@@0 n$4_1_1@@0)))
 :qid |stdinbpl.3754:15|
 :skolemid |418|
)) (=> (and (forall ((n$4_1@@1 T@Ref) ) (!  (=> (and (and (select g_1 n$4_1@@1) (not (= n$4_1@@1 x@@6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange48 n$4_1@@1) (= (invRecv48 n$4_1@@1) n$4_1@@1)))
 :qid |stdinbpl.3760:22|
 :skolemid |419|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$4_1@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n$4_1@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$4_1@@1 r_11))
)) (forall ((o_9@@7 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv48 o_9@@7)) (not (= (invRecv48 o_9@@7) x@@6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange48 o_9@@7)) (= (invRecv48 o_9@@7) o_9@@7))
 :qid |stdinbpl.3764:22|
 :skolemid |420|
 :pattern ( (invRecv48 o_9@@7))
))) (and (=> (= (ControlFlow 0 116) (- 0 117)) (forall ((n$4_1@@2 T@Ref) ) (!  (=> (and (select g_1 n$4_1@@2) (not (= n$4_1@@2 x@@6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3770:15|
 :skolemid |421|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$4_1@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n$4_1@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$4_1@@2 r_11))
))) (=> (forall ((n$4_1@@3 T@Ref) ) (!  (=> (and (select g_1 n$4_1@@3) (not (= n$4_1@@3 x@@6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3770:15|
 :skolemid |421|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$4_1@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n$4_1@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$4_1@@3 r_11))
)) (=> (and (forall ((n$4_1@@4 T@Ref) ) (!  (=> (and (and (select g_1 n$4_1@@4) (not (= n$4_1@@4 x@@6))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$4_1@@4 null)))
 :qid |stdinbpl.3776:22|
 :skolemid |422|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$4_1@@4 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n$4_1@@4 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$4_1@@4 r_11))
)) (forall ((o_9@@8 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv48 o_9@@8)) (not (= (invRecv48 o_9@@8) x@@6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange48 o_9@@8)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv48 o_9@@8) o_9@@8)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) o_9@@8 r_11) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_9@@8 r_11) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv48 o_9@@8)) (not (= (invRecv48 o_9@@8) x@@6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange48 o_9@@8))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) o_9@@8 r_11) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_9@@8 r_11))))
 :qid |stdinbpl.3782:22|
 :skolemid |423|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) o_9@@8 r_11))
))) (=> (and (and (and (and (forall ((o_9@@9 T@Ref) (f_5 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@2) o_9@@9 f_5) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@3) o_9@@9 f_5)))
 :qid |stdinbpl.3786:29|
 :skolemid |424|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@2) o_9@@9 f_5))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@3) o_9@@9 f_5))
)) (forall ((o_9@@10 T@Ref) (f_5@@0 T@Field_105234_105235) ) (!  (=> (not (= f_5@@0 r_11)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_9@@10 f_5@@0) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) o_9@@10 f_5@@0)))
 :qid |stdinbpl.3786:29|
 :skolemid |424|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_9@@10 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) o_9@@10 f_5@@0))
))) (forall ((o_9@@11 T@Ref) (f_5@@1 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@2) o_9@@11 f_5@@1) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@3) o_9@@11 f_5@@1)))
 :qid |stdinbpl.3786:29|
 :skolemid |424|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@2) o_9@@11 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@3) o_9@@11 f_5@@1))
))) (forall ((o_9@@12 T@Ref) (f_5@@2 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@2) o_9@@12 f_5@@2) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@3) o_9@@12 f_5@@2)))
 :qid |stdinbpl.3786:29|
 :skolemid |424|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@2) o_9@@12 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@3) o_9@@12 f_5@@2))
))) (state PostHeap@0 QPMask@3)) (and (and (=> (= (ControlFlow 0 116) 115) anon102_Else_correct) (=> (= (ControlFlow 0 116) 27) anon103_Then_correct)) (=> (= (ControlFlow 0 116) 29) anon103_Else_correct)))))))))))
(let ((anon101_Then_correct true))
(let ((anon100_Else_correct  (and (=> (= (ControlFlow 0 119) (- 0 121)) (forall ((n$3_1 T@Ref) (n$3_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_1 n$3_1_1)) (and (select g_1 n$3_1) (not (= n$3_1 x@@6)))) (and (select g_1 n$3_1_1) (not (= n$3_1_1 x@@6)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$3_1 n$3_1_1)))
 :qid |stdinbpl.3709:15|
 :skolemid |411|
))) (=> (forall ((n$3_1@@0 T@Ref) (n$3_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_1@@0 n$3_1_1@@0)) (and (select g_1 n$3_1@@0) (not (= n$3_1@@0 x@@6)))) (and (select g_1 n$3_1_1@@0) (not (= n$3_1_1@@0 x@@6)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$3_1@@0 n$3_1_1@@0)))
 :qid |stdinbpl.3709:15|
 :skolemid |411|
)) (=> (and (forall ((n$3_1@@1 T@Ref) ) (!  (=> (and (and (select g_1 n$3_1@@1) (not (= n$3_1@@1 x@@6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange47 n$3_1@@1) (= (invRecv47 n$3_1@@1) n$3_1@@1)))
 :qid |stdinbpl.3715:22|
 :skolemid |412|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$3_1@@1 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) n$3_1@@1 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$3_1@@1 l))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv47 o_9@@13)) (not (= (invRecv47 o_9@@13) x@@6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange47 o_9@@13)) (= (invRecv47 o_9@@13) o_9@@13))
 :qid |stdinbpl.3719:22|
 :skolemid |413|
 :pattern ( (invRecv47 o_9@@13))
))) (and (=> (= (ControlFlow 0 119) (- 0 120)) (forall ((n$3_1@@2 T@Ref) ) (!  (=> (and (select g_1 n$3_1@@2) (not (= n$3_1@@2 x@@6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3725:15|
 :skolemid |414|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$3_1@@2 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) n$3_1@@2 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$3_1@@2 l))
))) (=> (forall ((n$3_1@@3 T@Ref) ) (!  (=> (and (select g_1 n$3_1@@3) (not (= n$3_1@@3 x@@6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3725:15|
 :skolemid |414|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$3_1@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) n$3_1@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$3_1@@3 l))
)) (=> (and (forall ((n$3_1@@4 T@Ref) ) (!  (=> (and (and (select g_1 n$3_1@@4) (not (= n$3_1@@4 x@@6))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$3_1@@4 null)))
 :qid |stdinbpl.3731:22|
 :skolemid |415|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$3_1@@4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) n$3_1@@4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$3_1@@4 l))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv47 o_9@@14)) (not (= (invRecv47 o_9@@14) x@@6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange47 o_9@@14)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv47 o_9@@14) o_9@@14)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_9@@14 l) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| PostMask@1) o_9@@14 l) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv47 o_9@@14)) (not (= (invRecv47 o_9@@14) x@@6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange47 o_9@@14))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_9@@14 l) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| PostMask@1) o_9@@14 l))))
 :qid |stdinbpl.3737:22|
 :skolemid |416|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_9@@14 l))
))) (=> (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@3 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| PostMask@1) o_9@@15 f_5@@3) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@2) o_9@@15 f_5@@3)))
 :qid |stdinbpl.3741:29|
 :skolemid |417|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| PostMask@1) o_9@@15 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@2) o_9@@15 f_5@@3))
)) (forall ((o_9@@16 T@Ref) (f_5@@4 T@Field_105234_105235) ) (!  (=> (not (= f_5@@4 l)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| PostMask@1) o_9@@16 f_5@@4) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_9@@16 f_5@@4)))
 :qid |stdinbpl.3741:29|
 :skolemid |417|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| PostMask@1) o_9@@16 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_9@@16 f_5@@4))
))) (forall ((o_9@@17 T@Ref) (f_5@@5 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| PostMask@1) o_9@@17 f_5@@5) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@2) o_9@@17 f_5@@5)))
 :qid |stdinbpl.3741:29|
 :skolemid |417|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| PostMask@1) o_9@@17 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@2) o_9@@17 f_5@@5))
))) (forall ((o_9@@18 T@Ref) (f_5@@6 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| PostMask@1) o_9@@18 f_5@@6) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@2) o_9@@18 f_5@@6)))
 :qid |stdinbpl.3741:29|
 :skolemid |417|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| PostMask@1) o_9@@18 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@2) o_9@@18 f_5@@6))
))) (state PostHeap@0 QPMask@2)) (and (=> (= (ControlFlow 0 119) 22) anon101_Then_correct) (=> (= (ControlFlow 0 119) 116) anon101_Else_correct)))))))))))
(let ((anon100_Then_correct true))
(let ((anon99_Then_correct  (=> (and (and (state PostHeap@0 ZeroMask) (not (select g_1 null))) (and (select g_1 x@@6) (= perm@2 (ite (= __right__ __left__) FullPerm (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 122) (- 0 124)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (=> (and (and (=> (> perm@2 NoPerm) (not (= x@@6 null))) (= PostMask@0 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) x@@6 l (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) x@@6 l) perm@2)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| ZeroMask) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| ZeroMask) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (= perm@3 (ite (= __right__ __right__) FullPerm (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 122) (- 0 123)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (=> (=> (> perm@3 NoPerm) (not (= x@@6 null))) (=> (and (= PostMask@1 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| PostMask@0) x@@6 r_11 (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| PostMask@0) x@@6 r_11) perm@3)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| PostMask@0) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| PostMask@0) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| PostMask@0))) (state PostHeap@0 PostMask@1)) (and (=> (= (ControlFlow 0 122) 21) anon100_Then_correct) (=> (= (ControlFlow 0 122) 119) anon100_Else_correct))))))))))))
(let ((anon99_Else_correct true))
(let ((anon96_Else_correct  (=> (and (forall ((n$2_1 T@Ref) ) (!  (=> (and (select g_1 n$2_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_1 r_11) null))) (select g_1 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_1 r_11)))
 :qid |stdinbpl.3666:20|
 :skolemid |410|
 :pattern ( (select g_1 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_1 r_11)))
 :pattern ( (select g_1 n$2_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_1 r_11))
)) (state Heap@@29 QPMask@1)) (and (=> (= (ControlFlow 0 125) (- 0 126)) (HasDirectPerm_70297_70298 QPMask@1 x@@6 r_11)) (=> (HasDirectPerm_70297_70298 QPMask@1 x@@6 r_11) (=> (and (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x@@6 r_11) null) (state Heap@@29 QPMask@1)) (and (=> (= (ControlFlow 0 125) 122) anon99_Then_correct) (=> (= (ControlFlow 0 125) 18) anon99_Else_correct))))))))
(let ((anon17_correct true))
(let ((anon98_Else_correct  (=> (and (not (and (select g_1 n$2_25) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_25 r_11) null)))) (= (ControlFlow 0 13) 10)) anon17_correct)))
(let ((anon98_Then_correct  (=> (and (select g_1 n$2_25) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_25 r_11) null))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_70297_70298 QPMask@1 n$2_25 r_11)) (=> (HasDirectPerm_70297_70298 QPMask@1 n$2_25 r_11) (=> (= (ControlFlow 0 11) 10) anon17_correct))))))
(let ((anon97_Else_correct  (=> (not (select g_1 n$2_25)) (and (=> (= (ControlFlow 0 16) 11) anon98_Then_correct) (=> (= (ControlFlow 0 16) 13) anon98_Else_correct)))))
(let ((anon97_Then_correct  (=> (select g_1 n$2_25) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_70297_70298 QPMask@1 n$2_25 r_11)) (=> (HasDirectPerm_70297_70298 QPMask@1 n$2_25 r_11) (and (=> (= (ControlFlow 0 14) 11) anon98_Then_correct) (=> (= (ControlFlow 0 14) 13) anon98_Else_correct)))))))
(let ((anon93_Else_correct  (=> (forall ((n$1_1 T@Ref) ) (!  (=> (and (select g_1 n$1_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_1 l) null))) (select g_1 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_1 l)))
 :qid |stdinbpl.3649:20|
 :skolemid |409|
 :pattern ( (select g_1 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_1 l)))
 :pattern ( (select g_1 n$1_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_1 l))
)) (and (and (=> (= (ControlFlow 0 127) 125) anon96_Else_correct) (=> (= (ControlFlow 0 127) 14) anon97_Then_correct)) (=> (= (ControlFlow 0 127) 16) anon97_Else_correct)))))
(let ((anon11_correct true))
(let ((anon95_Else_correct  (=> (and (not (and (select g_1 n$1_14) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_14 l) null)))) (= (ControlFlow 0 6) 3)) anon11_correct)))
(let ((anon95_Then_correct  (=> (and (select g_1 n$1_14) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_14 l) null))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_70297_70298 QPMask@1 n$1_14 l)) (=> (HasDirectPerm_70297_70298 QPMask@1 n$1_14 l) (=> (= (ControlFlow 0 4) 3) anon11_correct))))))
(let ((anon94_Else_correct  (=> (not (select g_1 n$1_14)) (and (=> (= (ControlFlow 0 9) 4) anon95_Then_correct) (=> (= (ControlFlow 0 9) 6) anon95_Else_correct)))))
(let ((anon94_Then_correct  (=> (select g_1 n$1_14) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_70297_70298 QPMask@1 n$1_14 l)) (=> (HasDirectPerm_70297_70298 QPMask@1 n$1_14 l) (and (=> (= (ControlFlow 0 7) 4) anon95_Then_correct) (=> (= (ControlFlow 0 7) 6) anon95_Else_correct)))))))
(let ((anon92_Else_correct  (and (=> (= (ControlFlow 0 128) (- 0 130)) (forall ((n$0_1 T@Ref) (n$0_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_1 n$0_1_1)) (and (select g_1 n$0_1) (not (= n$0_1 x@@6)))) (and (select g_1 n$0_1_1) (not (= n$0_1_1 x@@6)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_1 n$0_1_1)))
 :qid |stdinbpl.3598:15|
 :skolemid |402|
))) (=> (forall ((n$0_1@@0 T@Ref) (n$0_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_1@@0 n$0_1_1@@0)) (and (select g_1 n$0_1@@0) (not (= n$0_1@@0 x@@6)))) (and (select g_1 n$0_1_1@@0) (not (= n$0_1_1@@0 x@@6)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_1@@0 n$0_1_1@@0)))
 :qid |stdinbpl.3598:15|
 :skolemid |402|
)) (=> (and (forall ((n$0_1@@1 T@Ref) ) (!  (=> (and (and (select g_1 n$0_1@@1) (not (= n$0_1@@1 x@@6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange46 n$0_1@@1) (= (invRecv46 n$0_1@@1) n$0_1@@1)))
 :qid |stdinbpl.3604:22|
 :skolemid |403|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_1@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n$0_1@@1 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_1@@1 r_11))
)) (forall ((o_9@@19 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv46 o_9@@19)) (not (= (invRecv46 o_9@@19) x@@6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange46 o_9@@19)) (= (invRecv46 o_9@@19) o_9@@19))
 :qid |stdinbpl.3608:22|
 :skolemid |404|
 :pattern ( (invRecv46 o_9@@19))
))) (and (=> (= (ControlFlow 0 128) (- 0 129)) (forall ((n$0_1@@2 T@Ref) ) (!  (=> (and (select g_1 n$0_1@@2) (not (= n$0_1@@2 x@@6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3614:15|
 :skolemid |405|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_1@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n$0_1@@2 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_1@@2 r_11))
))) (=> (forall ((n$0_1@@3 T@Ref) ) (!  (=> (and (select g_1 n$0_1@@3) (not (= n$0_1@@3 x@@6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3614:15|
 :skolemid |405|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_1@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n$0_1@@3 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_1@@3 r_11))
)) (=> (and (forall ((n$0_1@@4 T@Ref) ) (!  (=> (and (and (select g_1 n$0_1@@4) (not (= n$0_1@@4 x@@6))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$0_1@@4 null)))
 :qid |stdinbpl.3620:22|
 :skolemid |406|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_1@@4 r_11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n$0_1@@4 r_11))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_1@@4 r_11))
)) (forall ((o_9@@20 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv46 o_9@@20)) (not (= (invRecv46 o_9@@20) x@@6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange46 o_9@@20)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv46 o_9@@20) o_9@@20)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_9@@20 r_11) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_9@@20 r_11) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv46 o_9@@20)) (not (= (invRecv46 o_9@@20) x@@6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange46 o_9@@20))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_9@@20 r_11) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_9@@20 r_11))))
 :qid |stdinbpl.3626:22|
 :skolemid |407|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_9@@20 r_11))
))) (=> (and (and (and (and (forall ((o_9@@21 T@Ref) (f_5@@7 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@0) o_9@@21 f_5@@7) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@1) o_9@@21 f_5@@7)))
 :qid |stdinbpl.3630:29|
 :skolemid |408|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@0) o_9@@21 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@1) o_9@@21 f_5@@7))
)) (forall ((o_9@@22 T@Ref) (f_5@@8 T@Field_105234_105235) ) (!  (=> (not (= f_5@@8 r_11)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_9@@22 f_5@@8) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_9@@22 f_5@@8)))
 :qid |stdinbpl.3630:29|
 :skolemid |408|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_9@@22 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_9@@22 f_5@@8))
))) (forall ((o_9@@23 T@Ref) (f_5@@9 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@0) o_9@@23 f_5@@9) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@1) o_9@@23 f_5@@9)))
 :qid |stdinbpl.3630:29|
 :skolemid |408|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@0) o_9@@23 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@1) o_9@@23 f_5@@9))
))) (forall ((o_9@@24 T@Ref) (f_5@@10 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@0) o_9@@24 f_5@@10) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@1) o_9@@24 f_5@@10)))
 :qid |stdinbpl.3630:29|
 :skolemid |408|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@0) o_9@@24 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@1) o_9@@24 f_5@@10))
))) (state Heap@@29 QPMask@1)) (and (and (=> (= (ControlFlow 0 128) 127) anon93_Else_correct) (=> (= (ControlFlow 0 128) 7) anon94_Then_correct)) (=> (= (ControlFlow 0 128) 9) anon94_Else_correct)))))))))))
(let ((anon92_Then_correct true))
(let ((anon91_Else_correct  (and (=> (= (ControlFlow 0 131) (- 0 133)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (and (select g_1 n_1) (not (= n_1 x@@6)))) (and (select g_1 n_1_1) (not (= n_1_1 x@@6)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_1 n_1_1)))
 :qid |stdinbpl.3553:15|
 :skolemid |395|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (and (select g_1 n_1@@0) (not (= n_1@@0 x@@6)))) (and (select g_1 n_1_1@@0) (not (= n_1_1@@0 x@@6)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.3553:15|
 :skolemid |395|
)) (=> (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (and (select g_1 n_1@@1) (not (= n_1@@1 x@@6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange45 n_1@@1) (= (invRecv45 n_1@@1) n_1@@1)))
 :qid |stdinbpl.3559:22|
 :skolemid |396|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_1@@1 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) n_1@@1 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_1@@1 l))
)) (forall ((o_9@@25 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv45 o_9@@25)) (not (= (invRecv45 o_9@@25) x@@6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange45 o_9@@25)) (= (invRecv45 o_9@@25) o_9@@25))
 :qid |stdinbpl.3563:22|
 :skolemid |397|
 :pattern ( (invRecv45 o_9@@25))
))) (and (=> (= (ControlFlow 0 131) (- 0 132)) (forall ((n_1@@2 T@Ref) ) (!  (=> (and (select g_1 n_1@@2) (not (= n_1@@2 x@@6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3569:15|
 :skolemid |398|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_1@@2 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) n_1@@2 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_1@@2 l))
))) (=> (forall ((n_1@@3 T@Ref) ) (!  (=> (and (select g_1 n_1@@3) (not (= n_1@@3 x@@6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3569:15|
 :skolemid |398|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_1@@3 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) n_1@@3 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_1@@3 l))
)) (=> (and (forall ((n_1@@4 T@Ref) ) (!  (=> (and (and (select g_1 n_1@@4) (not (= n_1@@4 x@@6))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n_1@@4 null)))
 :qid |stdinbpl.3575:22|
 :skolemid |399|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_1@@4 l))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) n_1@@4 l))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_1@@4 l))
)) (forall ((o_9@@26 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv45 o_9@@26)) (not (= (invRecv45 o_9@@26) x@@6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange45 o_9@@26)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv45 o_9@@26) o_9@@26)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_9@@26 l) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@1) o_9@@26 l) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv45 o_9@@26)) (not (= (invRecv45 o_9@@26) x@@6))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange45 o_9@@26))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_9@@26 l) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@1) o_9@@26 l))))
 :qid |stdinbpl.3581:22|
 :skolemid |400|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_9@@26 l))
))) (=> (and (and (and (and (forall ((o_9@@27 T@Ref) (f_5@@11 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@1) o_9@@27 f_5@@11) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@0) o_9@@27 f_5@@11)))
 :qid |stdinbpl.3585:29|
 :skolemid |401|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@1) o_9@@27 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@0) o_9@@27 f_5@@11))
)) (forall ((o_9@@28 T@Ref) (f_5@@12 T@Field_105234_105235) ) (!  (=> (not (= f_5@@12 l)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@1) o_9@@28 f_5@@12) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_9@@28 f_5@@12)))
 :qid |stdinbpl.3585:29|
 :skolemid |401|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@1) o_9@@28 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_9@@28 f_5@@12))
))) (forall ((o_9@@29 T@Ref) (f_5@@13 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@1) o_9@@29 f_5@@13) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@0) o_9@@29 f_5@@13)))
 :qid |stdinbpl.3585:29|
 :skolemid |401|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@1) o_9@@29 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@0) o_9@@29 f_5@@13))
))) (forall ((o_9@@30 T@Ref) (f_5@@14 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@1) o_9@@30 f_5@@14) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@0) o_9@@30 f_5@@14)))
 :qid |stdinbpl.3585:29|
 :skolemid |401|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@1) o_9@@30 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@0) o_9@@30 f_5@@14))
))) (state Heap@@29 QPMask@0)) (and (=> (= (ControlFlow 0 131) 2) anon92_Then_correct) (=> (= (ControlFlow 0 131) 128) anon92_Else_correct)))))))))))
(let ((anon91_Then_correct true))
(let ((anon2_correct  (=> (and (and (state Heap@@29 ZeroMask) (not (select g_1 null))) (and (select g_1 x@@6) (= perm@0 (ite (= __right__ __left__) FullPerm (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 134) (- 0 136)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (and (=> (> perm@0 NoPerm) (not (= x@@6 null))) (= Mask@0 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) x@@6 l (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) x@@6 l) perm@0)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| ZeroMask) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| ZeroMask) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| ZeroMask)))) (and (state Heap@@29 Mask@0) (= perm@1 (ite (= __right__ __right__) FullPerm (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 134) (- 0 135)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (=> (> perm@1 NoPerm) (not (= x@@6 null))) (=> (and (= Mask@1 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@0) x@@6 r_11 (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@0) x@@6 r_11) perm@1)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@0) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@0) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@0))) (state Heap@@29 Mask@1)) (and (=> (= (ControlFlow 0 134) 1) anon91_Then_correct) (=> (= (ControlFlow 0 134) 131) anon91_Else_correct))))))))))))
(let ((anon90_Else_correct  (=> (and (= y@@3 null) (= (ControlFlow 0 138) 134)) anon2_correct)))
(let ((anon90_Then_correct  (=> (not (= y@@3 null)) (=> (and (select g_1 y@@3) (= (ControlFlow 0 137) 134)) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@29 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@29) x@@6 $allocated) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@29) y@@3 $allocated)) (and (select g_1 x@@6) (state Heap@@29 ZeroMask))) (and (=> (= (ControlFlow 0 139) 137) anon90_Then_correct) (=> (= (ControlFlow 0 139) 138) anon90_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 140) 139) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
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

