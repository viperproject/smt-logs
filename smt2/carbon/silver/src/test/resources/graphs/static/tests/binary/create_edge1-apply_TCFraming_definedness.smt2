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
(declare-fun l_8 () T@Field_105234_105235)
(declare-fun r_6 () T@Field_105234_105235)
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
(assert (and (distinct $allocated marker)(distinct __left__ __right__)(distinct l_8 r_6))
)
(assert (forall ((Heap0 T@PolymorphicMapType_105161) (Heap1 T@PolymorphicMapType_105161) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_105161) (Mask T@PolymorphicMapType_105182) (g0 (Array T@Ref Bool)) (g1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap Mask) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp3| Heap g0 g1)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp4| Heap g0 g1)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp5| Heap g0 g1)) (FrameFragment_8621 (|apply_TCFraming#condqp6| Heap g0 g1))))) g0 g1))) (=> (and (forall ((n$0_13 T@Ref) ) (!  (=> (select g0 n$0_13) (not (select g1 n$0_13)))
 :qid |stdinbpl.1401:359|
 :skolemid |137|
 :pattern ( (select g0 n$0_13) (select g1 n$0_13))
)) (forall ((n$1_12 T@Ref) ) (!  (=> (select g1 n$1_12) (not (select g0 n$1_12)))
 :qid |stdinbpl.1404:16|
 :skolemid |138|
 :pattern ( (select g0 n$1_12) (select g1 n$1_12))
))) (forall ((u_3 T@Ref) (v_2 T@Ref) ) (!  (=> (and (select g0 u_3) (and (select g0 v_2) (exists_path ($$ Heap g0) u_3 v_2))) (exists_path ($$ Heap (|Set#Union_70542| g0 g1)) u_3 v_2))
 :qid |stdinbpl.1407:17|
 :skolemid |139|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap g0)) (FrameFragment_8621 (|$$#condqp2| Heap g0))) g0) u_3 v_2))
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap (|Set#Union_70542| g0 g1))) (FrameFragment_8621 (|$$#condqp2| Heap (|Set#Union_70542| g0 g1)))) (|Set#Union_70542| g0 g1)) u_3 v_2))
))))
 :qid |stdinbpl.1399:15|
 :skolemid |140|
 :pattern ( (state Heap Mask) (|apply_TCFraming'| Heap g0 g1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_105161) (Mask@@0 T@PolymorphicMapType_105182) (g0@@0 (Array T@Ref Bool)) (g1@@0 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@0 Mask@@0) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp3| Heap@@0 g0@@0 g1@@0)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp4| Heap@@0 g0@@0 g1@@0)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp5| Heap@@0 g0@@0 g1@@0)) (FrameFragment_8621 (|apply_TCFraming#condqp6| Heap@@0 g0@@0 g1@@0))))) g0@@0 g1@@0))) (=> (and (forall ((n$0_13@@0 T@Ref) ) (!  (=> (select g0@@0 n$0_13@@0) (not (select g1@@0 n$0_13@@0)))
 :qid |stdinbpl.1414:359|
 :skolemid |141|
 :pattern ( (select g0@@0 n$0_13@@0) (select g1@@0 n$0_13@@0))
)) (forall ((n$1_12@@0 T@Ref) ) (!  (=> (select g1@@0 n$1_12@@0) (not (select g0@@0 n$1_12@@0)))
 :qid |stdinbpl.1417:16|
 :skolemid |142|
 :pattern ( (select g0@@0 n$1_12@@0) (select g1@@0 n$1_12@@0))
))) (forall ((u_1 T@Ref) (v_1_1 T@Ref) ) (!  (=> (and (select g1@@0 u_1) (and (select g1@@0 v_1_1) (exists_path ($$ Heap@@0 g1@@0) u_1 v_1_1))) (exists_path ($$ Heap@@0 (|Set#Union_70542| g1@@0 g0@@0)) u_1 v_1_1))
 :qid |stdinbpl.1420:17|
 :skolemid |143|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@0 g1@@0)) (FrameFragment_8621 (|$$#condqp2| Heap@@0 g1@@0))) g1@@0) u_1 v_1_1))
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@0 (|Set#Union_70542| g1@@0 g0@@0))) (FrameFragment_8621 (|$$#condqp2| Heap@@0 (|Set#Union_70542| g1@@0 g0@@0)))) (|Set#Union_70542| g1@@0 g0@@0)) u_1 v_1_1))
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
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (start T@Ref) (end T@Ref) ) (! (= (exists_path_ EG_1 start end)  (or (= start end) (exists ((w_2 T@Ref) ) (!  (and (edge EG_1 start w_2) (exists_path_ EG_1 w_2 end))
 :qid |stdinbpl.1036:70|
 :skolemid |90|
 :pattern ( (edge EG_1 start w_2))
 :pattern ( (exists_path_ EG_1 w_2 end))
))))
 :qid |stdinbpl.1034:15|
 :skolemid |91|
 :pattern ( (exists_path EG_1 start end))
 :pattern ( (edge EG_1 start end))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_105161) (Mask@@2 T@PolymorphicMapType_105182) (refs@@0 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@4 Mask@@2) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@4 refs@@0)) (FrameFragment_8621 (|$$#condqp2| Heap@@4 refs@@0))) refs@@0))) (forall ((p_1 T@Ref) (s_2 T@Ref) ) (! (=  (and (select refs@@0 p_1) (and (select refs@@0 s_2) (or (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@4) p_1 l_8) s_2) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@4) p_1 r_6) s_2)))) (select (|$$'| Heap@@4 refs@@0) (create_edge p_1 s_2)))
 :qid |stdinbpl.1148:176|
 :skolemid |104|
 :pattern ( (create_edge p_1 s_2))
)))
 :qid |stdinbpl.1146:15|
 :skolemid |105|
 :pattern ( (state Heap@@4 Mask@@2) (|$$'| Heap@@4 refs@@0))
)))
(assert (forall ((EG_1@@0 (Array T@EdgeDomainType Bool)) (U_1 (Array T@Ref Bool)) (M (Array T@Ref Bool)) ) (!  (=> (apply_noExit EG_1@@0 U_1 M) (=> (forall ((u_3@@0 T@Ref) (v_2@@0 T@Ref) ) (!  (=> (and (select M u_3@@0) (and (select U_1 v_2@@0) (not (select M v_2@@0)))) (not (edge EG_1@@0 u_3@@0 v_2@@0)))
 :qid |stdinbpl.1012:50|
 :skolemid |85|
 :pattern ( (edge EG_1@@0 u_3@@0 v_2@@0))
 :pattern ( (select M u_3@@0) (select M v_2@@0))
)) (forall ((u_1@@0 T@Ref) (v_1_1@@0 T@Ref) ) (!  (=> (and (select M u_1@@0) (and (select U_1 v_1_1@@0) (not (select M v_1_1@@0)))) (not (exists_path EG_1@@0 u_1@@0 v_1_1@@0)))
 :qid |stdinbpl.1015:17|
 :skolemid |86|
 :pattern ( (exists_path EG_1@@0 u_1@@0 v_1_1@@0))
 :pattern ( (select M u_1@@0) (select M v_1_1@@0))
))))
 :qid |stdinbpl.1010:15|
 :skolemid |87|
 :pattern ( (apply_noExit EG_1@@0 U_1 M))
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
(assert (forall ((Heap@@6 T@PolymorphicMapType_105161) (ExhaleHeap T@PolymorphicMapType_105161) (Mask@@3 T@PolymorphicMapType_105182) (pm_f_38 T@Field_70297_350585) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_70297_350649 Mask@@3 null pm_f_38) (IsPredicateField_70297_350676 pm_f_38)) (= (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@6) null (PredicateMaskField_70297 pm_f_38)) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap) null (PredicateMaskField_70297 pm_f_38)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@3) (IsPredicateField_70297_350676 pm_f_38) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap) null (PredicateMaskField_70297 pm_f_38)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_105161) (ExhaleHeap@@0 T@PolymorphicMapType_105161) (Mask@@4 T@PolymorphicMapType_105182) (pm_f_38@@0 T@Field_70297_350585) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_70297_350649 Mask@@4 null pm_f_38@@0) (IsWandField_70297_352225 pm_f_38@@0)) (= (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@7) null (WandMaskField_70297 pm_f_38@@0)) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@0) null (WandMaskField_70297 pm_f_38@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@4) (IsWandField_70297_352225 pm_f_38@@0) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@0) null (WandMaskField_70297 pm_f_38@@0)))
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
(assert (forall ((Heap@@8 T@PolymorphicMapType_105161) (ExhaleHeap@@1 T@PolymorphicMapType_105161) (Mask@@5 T@PolymorphicMapType_105182) (pm_f_38@@1 T@Field_70297_350585) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (and (HasDirectPerm_70297_350649 Mask@@5 null pm_f_38@@1) (IsPredicateField_70297_350676 pm_f_38@@1)) (and (and (and (forall ((o2_38 T@Ref) (f_76 T@Field_105221_53) ) (!  (=> (select (|PolymorphicMapType_105710_105221_53#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@8) null (PredicateMaskField_70297 pm_f_38@@1))) o2_38 f_76) (= (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@8) o2_38 f_76) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@1) o2_38 f_76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@1) o2_38 f_76))
)) (forall ((o2_38@@0 T@Ref) (f_76@@0 T@Field_105234_105235) ) (!  (=> (select (|PolymorphicMapType_105710_105221_105235#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@8) null (PredicateMaskField_70297 pm_f_38@@1))) o2_38@@0 f_76@@0) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@8) o2_38@@0 f_76@@0) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@@1) o2_38@@0 f_76@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@@1) o2_38@@0 f_76@@0))
))) (forall ((o2_38@@1 T@Ref) (f_76@@1 T@Field_70297_350585) ) (!  (=> (select (|PolymorphicMapType_105710_105221_350585#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@8) null (PredicateMaskField_70297 pm_f_38@@1))) o2_38@@1 f_76@@1) (= (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@8) o2_38@@1 f_76@@1) (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| ExhaleHeap@@1) o2_38@@1 f_76@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| ExhaleHeap@@1) o2_38@@1 f_76@@1))
))) (forall ((o2_38@@2 T@Ref) (f_76@@2 T@Field_70297_350718) ) (!  (=> (select (|PolymorphicMapType_105710_105221_351698#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@8) null (PredicateMaskField_70297 pm_f_38@@1))) o2_38@@2 f_76@@2) (= (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@8) o2_38@@2 f_76@@2) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@1) o2_38@@2 f_76@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@1) o2_38@@2 f_76@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (IsPredicateField_70297_350676 pm_f_38@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_105161) (ExhaleHeap@@2 T@PolymorphicMapType_105161) (Mask@@6 T@PolymorphicMapType_105182) (pm_f_38@@2 T@Field_70297_350585) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (=> (and (HasDirectPerm_70297_350649 Mask@@6 null pm_f_38@@2) (IsWandField_70297_352225 pm_f_38@@2)) (and (and (and (forall ((o2_38@@3 T@Ref) (f_76@@3 T@Field_105221_53) ) (!  (=> (select (|PolymorphicMapType_105710_105221_53#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@9) null (WandMaskField_70297 pm_f_38@@2))) o2_38@@3 f_76@@3) (= (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@9) o2_38@@3 f_76@@3) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@2) o2_38@@3 f_76@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@2) o2_38@@3 f_76@@3))
)) (forall ((o2_38@@4 T@Ref) (f_76@@4 T@Field_105234_105235) ) (!  (=> (select (|PolymorphicMapType_105710_105221_105235#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@9) null (WandMaskField_70297 pm_f_38@@2))) o2_38@@4 f_76@@4) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@9) o2_38@@4 f_76@@4) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@@2) o2_38@@4 f_76@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@@2) o2_38@@4 f_76@@4))
))) (forall ((o2_38@@5 T@Ref) (f_76@@5 T@Field_70297_350585) ) (!  (=> (select (|PolymorphicMapType_105710_105221_350585#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@9) null (WandMaskField_70297 pm_f_38@@2))) o2_38@@5 f_76@@5) (= (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@9) o2_38@@5 f_76@@5) (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| ExhaleHeap@@2) o2_38@@5 f_76@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| ExhaleHeap@@2) o2_38@@5 f_76@@5))
))) (forall ((o2_38@@6 T@Ref) (f_76@@6 T@Field_70297_350718) ) (!  (=> (select (|PolymorphicMapType_105710_105221_351698#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@9) null (WandMaskField_70297 pm_f_38@@2))) o2_38@@6 f_76@@6) (= (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@9) o2_38@@6 f_76@@6) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@2) o2_38@@6 f_76@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@2) o2_38@@6 f_76@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (IsWandField_70297_352225 pm_f_38@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1@@3 (Array T@EdgeDomainType Bool)) (u_3@@1 T@Ref) (v_2@@3 T@Ref) (w_2@@0 T@Ref) ) (!  (=> (and (exists_path_ EG_1@@3 u_3@@1 w_2@@0) (exists_path_ EG_1@@3 w_2@@0 v_2@@3)) (exists_path_ EG_1@@3 u_3@@1 v_2@@3))
 :qid |stdinbpl.1043:15|
 :skolemid |92|
 :pattern ( (exists_path EG_1@@3 u_3@@1 w_2@@0) (exists_path EG_1@@3 w_2@@0 v_2@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_105161) (Mask@@7 T@PolymorphicMapType_105182) (refs@@2 (Array T@Ref Bool)) ) (!  (=> (state Heap@@10 Mask@@7) (= (|$$'| Heap@@10 refs@@2) (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@10 refs@@2)) (FrameFragment_8621 (|$$#condqp2| Heap@@10 refs@@2))) refs@@2)))
 :qid |stdinbpl.1120:15|
 :skolemid |101|
 :pattern ( (state Heap@@10 Mask@@7) (|$$'| Heap@@10 refs@@2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_105161) (ExhaleHeap@@3 T@PolymorphicMapType_105161) (Mask@@8 T@PolymorphicMapType_105182) (o_71 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@8) (=> (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@11) o_71 $allocated) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@3) o_71 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@8) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@3) o_71 $allocated))
)))
(assert (forall ((p T@Field_70297_350585) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_105221_105221 p v_1 p w))
 :qid |stdinbpl.739:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_105221_105221 p v_1 p w))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_105161) (Heap1Heap T@PolymorphicMapType_105161) (refs@@3 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select refs@@3 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select refs@@3 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select refs@@3 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap2Heap) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3)) l_8) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap1Heap) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3)) l_8)))) (= (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3)))
 :qid |stdinbpl.1130:15|
 :skolemid |102|
 :pattern ( (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_105161) (Heap1Heap@@0 T@PolymorphicMapType_105161) (refs@@4 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select refs@@4 (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select refs@@4 (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select refs@@4 (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap2Heap@@0) (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4)) r_6) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap1Heap@@0) (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4)) r_6)))) (= (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4)))
 :qid |stdinbpl.1140:15|
 :skolemid |103|
 :pattern ( (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert  (not (IsPredicateField_70297_70298 l_8)))
(assert  (not (IsWandField_70297_70298 l_8)))
(assert  (not (IsPredicateField_70297_70298 r_6)))
(assert  (not (IsWandField_70297_70298 r_6)))
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
(assert (forall ((Heap@@13 T@PolymorphicMapType_105161) (ExhaleHeap@@5 T@PolymorphicMapType_105161) (Mask@@18 T@PolymorphicMapType_105182) (o_71@@0 T@Ref) (f_76@@7 T@Field_70297_350718) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_70297_355516 Mask@@18 o_71@@0 f_76@@7) (= (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@13) o_71@@0 f_76@@7) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@5) o_71@@0 f_76@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@5) o_71@@0 f_76@@7))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_105161) (ExhaleHeap@@6 T@PolymorphicMapType_105161) (Mask@@19 T@PolymorphicMapType_105182) (o_71@@1 T@Ref) (f_76@@8 T@Field_70297_350585) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_70297_350649 Mask@@19 o_71@@1 f_76@@8) (= (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@14) o_71@@1 f_76@@8) (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| ExhaleHeap@@6) o_71@@1 f_76@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| ExhaleHeap@@6) o_71@@1 f_76@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_105161) (ExhaleHeap@@7 T@PolymorphicMapType_105161) (Mask@@20 T@PolymorphicMapType_105182) (o_71@@2 T@Ref) (f_76@@9 T@Field_105221_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_70297_53 Mask@@20 o_71@@2 f_76@@9) (= (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@15) o_71@@2 f_76@@9) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@7) o_71@@2 f_76@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@7) o_71@@2 f_76@@9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_105161) (ExhaleHeap@@8 T@PolymorphicMapType_105161) (Mask@@21 T@PolymorphicMapType_105182) (o_71@@3 T@Ref) (f_76@@10 T@Field_105234_105235) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_70297_70298 Mask@@21 o_71@@3 f_76@@10) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@16) o_71@@3 f_76@@10) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@@8) o_71@@3 f_76@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@@8) o_71@@3 f_76@@10))
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
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_105161) (Heap1Heap@@1 T@PolymorphicMapType_105161) (g0@@2 (Array T@Ref Bool)) (g1@@2 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g0@@2 (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2))) (< NoPerm FullPerm))  (and (select g0@@2 (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2))) (< NoPerm FullPerm))) (=> (and (select g0@@2 (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap2Heap@@1) (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2)) l_8) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap1Heap@@1) (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2)) l_8)))) (= (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2)))
 :qid |stdinbpl.1353:15|
 :skolemid |130|
 :pattern ( (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_105161) (Heap1Heap@@2 T@PolymorphicMapType_105161) (g0@@3 (Array T@Ref Bool)) (g1@@3 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g0@@3 (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3))) (< NoPerm FullPerm))  (and (select g0@@3 (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3))) (< NoPerm FullPerm))) (=> (and (select g0@@3 (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap2Heap@@2) (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3)) r_6) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap1Heap@@2) (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3)) r_6)))) (= (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3)))
 :qid |stdinbpl.1363:15|
 :skolemid |131|
 :pattern ( (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap2Heap@@3 T@PolymorphicMapType_105161) (Heap1Heap@@3 T@PolymorphicMapType_105161) (g0@@4 (Array T@Ref Bool)) (g1@@4 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g1@@4 (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4))) (< NoPerm FullPerm))  (and (select g1@@4 (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4))) (< NoPerm FullPerm))) (=> (and (select g1@@4 (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap2Heap@@3) (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4)) l_8) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap1Heap@@3) (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4)) l_8)))) (= (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4)))
 :qid |stdinbpl.1373:15|
 :skolemid |132|
 :pattern ( (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4) (succHeapTrans Heap2Heap@@3 Heap1Heap@@3))
)))
(assert (forall ((Heap2Heap@@4 T@PolymorphicMapType_105161) (Heap1Heap@@4 T@PolymorphicMapType_105161) (g0@@5 (Array T@Ref Bool)) (g1@@5 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g1@@5 (|sk_apply_TCFraming#condqp6| (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5))) (< NoPerm FullPerm))  (and (select g1@@5 (|sk_apply_TCFraming#condqp6| (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5))) (< NoPerm FullPerm))) (=> (and (select g1@@5 (|sk_apply_TCFraming#condqp6| (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap2Heap@@4) (|sk_apply_TCFraming#condqp6| (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5)) r_6) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap1Heap@@4) (|sk_apply_TCFraming#condqp6| (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5)) r_6)))) (= (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5)))
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
(assert (forall ((Heap@@17 T@PolymorphicMapType_105161) (Mask@@22 T@PolymorphicMapType_105182) (g0@@6 (Array T@Ref Bool)) (g1@@6 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@17 Mask@@22) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp3| Heap@@17 g0@@6 g1@@6)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp4| Heap@@17 g0@@6 g1@@6)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp5| Heap@@17 g0@@6 g1@@6)) (FrameFragment_8621 (|apply_TCFraming#condqp6| Heap@@17 g0@@6 g1@@6))))) g0@@6 g1@@6))) (=> (and (forall ((n$0_13@@1 T@Ref) ) (!  (=> (select g0@@6 n$0_13@@1) (not (select g1@@6 n$0_13@@1)))
 :qid |stdinbpl.1427:359|
 :skolemid |145|
 :pattern ( (select g0@@6 n$0_13@@1) (select g1@@6 n$0_13@@1))
)) (forall ((n$1_12@@1 T@Ref) ) (!  (=> (select g1@@6 n$1_12@@1) (not (select g0@@6 n$1_12@@1)))
 :qid |stdinbpl.1430:16|
 :skolemid |146|
 :pattern ( (select g0@@6 n$1_12@@1) (select g1@@6 n$1_12@@1))
))) (forall ((u_2_1 T@Ref) (v_2_1 T@Ref) ) (!  (=> (and (select g0@@6 u_2_1) (and (select g0@@6 v_2_1) (not (exists_path ($$ Heap@@17 g0@@6) u_2_1 v_2_1)))) (not (exists_path ($$ Heap@@17 (|Set#Union_70542| g0@@6 g1@@6)) u_2_1 v_2_1)))
 :qid |stdinbpl.1433:17|
 :skolemid |147|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@17 g0@@6)) (FrameFragment_8621 (|$$#condqp2| Heap@@17 g0@@6))) g0@@6) u_2_1 v_2_1))
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@17 (|Set#Union_70542| g0@@6 g1@@6))) (FrameFragment_8621 (|$$#condqp2| Heap@@17 (|Set#Union_70542| g0@@6 g1@@6)))) (|Set#Union_70542| g0@@6 g1@@6)) u_2_1 v_2_1))
))))
 :qid |stdinbpl.1425:15|
 :skolemid |148|
 :pattern ( (state Heap@@17 Mask@@22) (|apply_TCFraming'| Heap@@17 g0@@6 g1@@6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_105161) (Mask@@23 T@PolymorphicMapType_105182) (g0@@7 (Array T@Ref Bool)) (g1@@7 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@18 Mask@@23) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp3| Heap@@18 g0@@7 g1@@7)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp4| Heap@@18 g0@@7 g1@@7)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp5| Heap@@18 g0@@7 g1@@7)) (FrameFragment_8621 (|apply_TCFraming#condqp6| Heap@@18 g0@@7 g1@@7))))) g0@@7 g1@@7))) (=> (and (forall ((n$0_13@@2 T@Ref) ) (!  (=> (select g0@@7 n$0_13@@2) (not (select g1@@7 n$0_13@@2)))
 :qid |stdinbpl.1440:359|
 :skolemid |149|
 :pattern ( (select g0@@7 n$0_13@@2) (select g1@@7 n$0_13@@2))
)) (forall ((n$1_12@@2 T@Ref) ) (!  (=> (select g1@@7 n$1_12@@2) (not (select g0@@7 n$1_12@@2)))
 :qid |stdinbpl.1443:16|
 :skolemid |150|
 :pattern ( (select g0@@7 n$1_12@@2) (select g1@@7 n$1_12@@2))
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
(assert (forall ((Heap@@19 T@PolymorphicMapType_105161) (Mask@@24 T@PolymorphicMapType_105182) (g0@@8 (Array T@Ref Bool)) (g1@@8 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@19 Mask@@24) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp3| Heap@@19 g0@@8 g1@@8)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp4| Heap@@19 g0@@8 g1@@8)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp5| Heap@@19 g0@@8 g1@@8)) (FrameFragment_8621 (|apply_TCFraming#condqp6| Heap@@19 g0@@8 g1@@8))))) g0@@8 g1@@8))) (=> (and (forall ((n$0_13@@3 T@Ref) ) (!  (=> (select g0@@8 n$0_13@@3) (not (select g1@@8 n$0_13@@3)))
 :qid |stdinbpl.1391:359|
 :skolemid |134|
 :pattern ( (select g0@@8 n$0_13@@3) (select g1@@8 n$0_13@@3))
)) (forall ((n$1_12@@3 T@Ref) ) (!  (=> (select g1@@8 n$1_12@@3) (not (select g0@@8 n$1_12@@3)))
 :qid |stdinbpl.1394:16|
 :skolemid |135|
 :pattern ( (select g0@@8 n$1_12@@3) (select g1@@8 n$1_12@@3))
))) (|Set#Equal_70542| (|Set#Union_70542| g0@@8 g1@@8) (|Set#Union_70542| g1@@8 g0@@8))))
 :qid |stdinbpl.1389:15|
 :skolemid |136|
 :pattern ( (state Heap@@19 Mask@@24) (|apply_TCFraming'| Heap@@19 g0@@8 g1@@8))
)))
(assert (forall ((EG_1@@5 (Array T@EdgeDomainType Bool)) (p_1@@0 T@Ref) (s_2@@0 T@Ref) ) (! (= (edge_ EG_1@@5 p_1@@0 s_2@@0) (select EG_1@@5 (create_edge p_1@@0 s_2@@0)))
 :qid |stdinbpl.1004:15|
 :skolemid |84|
 :pattern ( (select EG_1@@5 (create_edge p_1@@0 s_2@@0)))
 :pattern ( (edge EG_1@@5 p_1@@0 s_2@@0))
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
(assert (forall ((p_1@@1 T@Ref) (s_2@@1 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@1 s_2@@1)) p_1@@1) (= (edge_succ (create_edge p_1@@1 s_2@@1)) s_2@@1))
 :qid |stdinbpl.955:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@1 s_2@@1))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_105161) (o_70 T@Ref) (f_77 T@Field_70297_350585) (v T@FrameType) ) (! (succHeap Heap@@21 (PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@21) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@21) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@21) (store (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@21) o_70 f_77 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@21) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@21) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@21) (store (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@21) o_70 f_77 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_105161) (o_70@@0 T@Ref) (f_77@@0 T@Field_70297_350718) (v@@0 T@PolymorphicMapType_105710) ) (! (succHeap Heap@@22 (PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@22) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@22) (store (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@22) o_70@@0 f_77@@0 v@@0) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@22) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@22) (store (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@22) o_70@@0 f_77@@0 v@@0) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_105161) (o_70@@1 T@Ref) (f_77@@1 T@Field_105234_105235) (v@@1 T@Ref) ) (! (succHeap Heap@@23 (PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@23) (store (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@23) o_70@@1 f_77@@1 v@@1) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@23) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@23) (store (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@23) o_70@@1 f_77@@1 v@@1) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@23) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_105161) (o_70@@2 T@Ref) (f_77@@2 T@Field_105221_53) (v@@2 Bool) ) (! (succHeap Heap@@24 (PolymorphicMapType_105161 (store (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@24) o_70@@2 f_77@@2 v@@2) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@24) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@24) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_105161 (store (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@24) o_70@@2 f_77@@2 v@@2) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@24) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@24) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@24)))
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
(assert (forall ((o_70@@3 T@Ref) (f_75 T@Field_105234_105235) (Heap@@25 T@PolymorphicMapType_105161) ) (!  (=> (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@25) o_70@@3 $allocated) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@25) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@25) o_70@@3 f_75) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@25) o_70@@3 f_75))
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
(assert (forall ((Heap@@26 T@PolymorphicMapType_105161) (Mask@@26 T@PolymorphicMapType_105182) (refs@@5 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@26 Mask@@26) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@26 refs@@5)) (FrameFragment_8621 (|$$#condqp2| Heap@@26 refs@@5))) refs@@5))) (forall ((p_1_1 T@Ref) (s_1 T@Ref) ) (!  (=> (and (select refs@@5 p_1_1) (exists_path (|$$'| Heap@@26 refs@@5) p_1_1 s_1)) (select refs@@5 s_1))
 :qid |stdinbpl.1155:176|
 :skolemid |106|
 :pattern ( (select refs@@5 p_1_1) (select refs@@5 s_1) (exists_path (|$$'| Heap@@26 refs@@5) p_1_1 s_1))
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
(assert (forall ((EG_1@@7 (Array T@EdgeDomainType Bool)) (p_1@@2 T@Ref) (s_2@@2 T@Ref) ) (! (= (edge EG_1@@7 p_1@@2 s_2@@2) (edge_ EG_1@@7 p_1@@2 s_2@@2))
 :qid |stdinbpl.998:15|
 :skolemid |83|
 :pattern ( (edge EG_1@@7 p_1@@2 s_2@@2))
)))
(assert (forall ((EG_1@@8 (Array T@EdgeDomainType Bool)) (start@@0 T@Ref) (end@@0 T@Ref) ) (! (= (exists_path EG_1@@8 start@@0 end@@0) (exists_path_ EG_1@@8 start@@0 end@@0))
 :qid |stdinbpl.1028:15|
 :skolemid |89|
 :pattern ( (exists_path EG_1@@8 start@@0 end@@0))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_105161) (g0@@10 (Array T@Ref Bool)) (g1@@10 (Array T@Ref Bool)) ) (!  (and (= (apply_TCFraming Heap@@28 g0@@10 g1@@10) (|apply_TCFraming'| Heap@@28 g0@@10 g1@@10)) (dummyFunction_11901 (|apply_TCFraming#triggerStateless| g0@@10 g1@@10)))
 :qid |stdinbpl.1332:15|
 :skolemid |127|
 :pattern ( (apply_TCFraming Heap@@28 g0@@10 g1@@10))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@29 () T@PolymorphicMapType_105161)
(declare-fun QPMask@4 () T@PolymorphicMapType_105182)
(declare-fun g1@@11 () (Array T@Ref Bool))
(declare-fun dummyFunction_70298 (T@Ref) Bool)
(declare-fun neverTriggered19 (T@Ref) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_105182)
(declare-fun qpRange19 (T@Ref) Bool)
(declare-fun invRecv19 (T@Ref) T@Ref)
(declare-fun QPMask@5 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered20 (T@Ref) Bool)
(declare-fun QPMask@6 () T@PolymorphicMapType_105182)
(declare-fun g0@@11 () (Array T@Ref Bool))
(declare-fun neverTriggered21 (T@Ref) Bool)
(declare-fun qpRange21 (T@Ref) Bool)
(declare-fun invRecv21 (T@Ref) T@Ref)
(declare-fun QPMask@7 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered22 (T@Ref) Bool)
(declare-fun u_28 () T@Ref)
(declare-fun v_28 () T@Ref)
(declare-fun QPMask@8 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered15 (T@Ref) Bool)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) T@Ref)
(declare-fun QPMask@9 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered16 (T@Ref) Bool)
(declare-fun QPMask@10 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered17 (T@Ref) Bool)
(declare-fun qpRange17 (T@Ref) Bool)
(declare-fun invRecv17 (T@Ref) T@Ref)
(declare-fun QPMask@11 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered18 (T@Ref) Bool)
(declare-fun u_27 () T@Ref)
(declare-fun v_27 () T@Ref)
(declare-fun QPMask@12 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered11 (T@Ref) Bool)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) T@Ref)
(declare-fun QPMask@13 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered12 (T@Ref) Bool)
(declare-fun QPMask@14 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered13 (T@Ref) Bool)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) T@Ref)
(declare-fun QPMask@15 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered14 (T@Ref) Bool)
(declare-fun u_22 () T@Ref)
(declare-fun v_22 () T@Ref)
(declare-fun QPMask@16 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered7 (T@Ref) Bool)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) T@Ref)
(declare-fun QPMask@17 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered8 (T@Ref) Bool)
(declare-fun QPMask@18 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered9 (T@Ref) Bool)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) T@Ref)
(declare-fun QPMask@19 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered10 (T@Ref) Bool)
(declare-fun u_21 () T@Ref)
(declare-fun v_21 () T@Ref)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) T@Ref)
(declare-fun QPMask@2 () T@PolymorphicMapType_105182)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_105182)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_105182)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) T@Ref)
(set-info :boogie-vc-id |apply_TCFraming#definedness|)
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
 (=> (= (ControlFlow 0 0) 106) (let ((anon76_Then_correct  (and (=> (= (ControlFlow 0 84) (- 0 89)) (forall ((n_28_1 T@Ref) ) (!  (=> (and (select g1@@11 n_28_1) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_28_1 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2180:27|
 :skolemid |242|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_28_1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) n_28_1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_28_1 l_8))
))) (=> (forall ((n_28_1@@0 T@Ref) ) (!  (=> (and (select g1@@11 n_28_1@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_28_1@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2180:27|
 :skolemid |242|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_28_1@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) n_28_1@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_28_1@@0 l_8))
)) (and (=> (= (ControlFlow 0 84) (- 0 88)) (forall ((n_28_1@@1 T@Ref) (n_28_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_28_1@@1 n_28_2)) (select g1@@11 n_28_1@@1)) (select g1@@11 n_28_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_28_1@@1 n_28_2)))
 :qid |stdinbpl.2187:27|
 :skolemid |243|
 :pattern ( (neverTriggered19 n_28_1@@1) (neverTriggered19 n_28_2))
))) (=> (forall ((n_28_1@@2 T@Ref) (n_28_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_28_1@@2 n_28_2@@0)) (select g1@@11 n_28_1@@2)) (select g1@@11 n_28_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_28_1@@2 n_28_2@@0)))
 :qid |stdinbpl.2187:27|
 :skolemid |243|
 :pattern ( (neverTriggered19 n_28_1@@2) (neverTriggered19 n_28_2@@0))
)) (and (=> (= (ControlFlow 0 84) (- 0 87)) (forall ((n_28_1@@3 T@Ref) ) (!  (=> (select g1@@11 n_28_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_28_1@@3 l_8) NoPerm)))
 :qid |stdinbpl.2194:27|
 :skolemid |244|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_28_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) n_28_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_28_1@@3 l_8))
))) (=> (forall ((n_28_1@@4 T@Ref) ) (!  (=> (select g1@@11 n_28_1@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_28_1@@4 l_8) NoPerm)))
 :qid |stdinbpl.2194:27|
 :skolemid |244|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_28_1@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) n_28_1@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_28_1@@4 l_8))
)) (=> (and (forall ((n_28_1@@5 T@Ref) ) (!  (=> (and (select g1@@11 n_28_1@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange19 n_28_1@@5) (= (invRecv19 n_28_1@@5) n_28_1@@5)))
 :qid |stdinbpl.2200:32|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_28_1@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) n_28_1@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_28_1@@5 l_8))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (select g1@@11 (invRecv19 o_4)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange19 o_4))) (= (invRecv19 o_4) o_4))
 :qid |stdinbpl.2204:32|
 :skolemid |246|
 :pattern ( (invRecv19 o_4))
))) (and (=> (= (ControlFlow 0 84) (- 0 86)) (forall ((n_29_1 T@Ref) ) (!  (=> (and (select g1@@11 n_29_1) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_29_1 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2212:27|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_29_1 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_29_1 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_29_1 r_6))
))) (=> (forall ((n_29_1@@0 T@Ref) ) (!  (=> (and (select g1@@11 n_29_1@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_29_1@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2212:27|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_29_1@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_29_1@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_29_1@@0 r_6))
)) (and (=> (= (ControlFlow 0 84) (- 0 85)) (forall ((n_29_1@@1 T@Ref) (n_29_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_29_1@@1 n_29_2)) (select g1@@11 n_29_1@@1)) (select g1@@11 n_29_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_29_1@@1 n_29_2)))
 :qid |stdinbpl.2219:27|
 :skolemid |248|
 :pattern ( (neverTriggered20 n_29_1@@1) (neverTriggered20 n_29_2))
))) (=> (forall ((n_29_1@@2 T@Ref) (n_29_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_29_1@@2 n_29_2@@0)) (select g1@@11 n_29_1@@2)) (select g1@@11 n_29_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_29_1@@2 n_29_2@@0)))
 :qid |stdinbpl.2219:27|
 :skolemid |248|
 :pattern ( (neverTriggered20 n_29_1@@2) (neverTriggered20 n_29_2@@0))
)) (=> (= (ControlFlow 0 84) (- 0 83)) (forall ((n_29_1@@3 T@Ref) ) (!  (=> (select g1@@11 n_29_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_29_1@@3 r_6) NoPerm)))
 :qid |stdinbpl.2226:27|
 :skolemid |249|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_29_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_29_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_29_1@@3 r_6))
))))))))))))))))
(let ((anon78_Then_correct  (and (=> (= (ControlFlow 0 74) (- 0 79)) (forall ((n_30_1 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_30_1) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_30_1 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2258:25|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_30_1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@6) n_30_1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_30_1 l_8))
))) (=> (forall ((n_30_1@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_30_1@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_30_1@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2258:25|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_30_1@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@6) n_30_1@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_30_1@@0 l_8))
)) (and (=> (= (ControlFlow 0 74) (- 0 78)) (forall ((n_30_1@@1 T@Ref) (n_30_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_30_1@@1 n_30_2)) (select (|Set#Union_70542| g1@@11 g0@@11) n_30_1@@1)) (select (|Set#Union_70542| g1@@11 g0@@11) n_30_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_30_1@@1 n_30_2)))
 :qid |stdinbpl.2265:25|
 :skolemid |253|
 :pattern ( (neverTriggered21 n_30_1@@1) (neverTriggered21 n_30_2))
))) (=> (forall ((n_30_1@@2 T@Ref) (n_30_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_30_1@@2 n_30_2@@0)) (select (|Set#Union_70542| g1@@11 g0@@11) n_30_1@@2)) (select (|Set#Union_70542| g1@@11 g0@@11) n_30_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_30_1@@2 n_30_2@@0)))
 :qid |stdinbpl.2265:25|
 :skolemid |253|
 :pattern ( (neverTriggered21 n_30_1@@2) (neverTriggered21 n_30_2@@0))
)) (and (=> (= (ControlFlow 0 74) (- 0 77)) (forall ((n_30_1@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g1@@11 g0@@11) n_30_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_30_1@@3 l_8) NoPerm)))
 :qid |stdinbpl.2272:25|
 :skolemid |254|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_30_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@6) n_30_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_30_1@@3 l_8))
))) (=> (forall ((n_30_1@@4 T@Ref) ) (!  (=> (select (|Set#Union_70542| g1@@11 g0@@11) n_30_1@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_30_1@@4 l_8) NoPerm)))
 :qid |stdinbpl.2272:25|
 :skolemid |254|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_30_1@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@6) n_30_1@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_30_1@@4 l_8))
)) (=> (and (forall ((n_30_1@@5 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_30_1@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange21 n_30_1@@5) (= (invRecv21 n_30_1@@5) n_30_1@@5)))
 :qid |stdinbpl.2278:30|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_30_1@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@6) n_30_1@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_30_1@@5 l_8))
)) (forall ((o_4@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) (invRecv21 o_4@@0)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange21 o_4@@0))) (= (invRecv21 o_4@@0) o_4@@0))
 :qid |stdinbpl.2282:30|
 :skolemid |256|
 :pattern ( (invRecv21 o_4@@0))
))) (and (=> (= (ControlFlow 0 74) (- 0 76)) (forall ((n_31_1 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_31_1) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_31_1 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2290:25|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_31_1 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@7) n_31_1 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_31_1 r_6))
))) (=> (forall ((n_31_1@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_31_1@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_31_1@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2290:25|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_31_1@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@7) n_31_1@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_31_1@@0 r_6))
)) (and (=> (= (ControlFlow 0 74) (- 0 75)) (forall ((n_31_1@@1 T@Ref) (n_31_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_31_1@@1 n_31_2)) (select (|Set#Union_70542| g1@@11 g0@@11) n_31_1@@1)) (select (|Set#Union_70542| g1@@11 g0@@11) n_31_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_31_1@@1 n_31_2)))
 :qid |stdinbpl.2297:25|
 :skolemid |258|
 :pattern ( (neverTriggered22 n_31_1@@1) (neverTriggered22 n_31_2))
))) (=> (forall ((n_31_1@@2 T@Ref) (n_31_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_31_1@@2 n_31_2@@0)) (select (|Set#Union_70542| g1@@11 g0@@11) n_31_1@@2)) (select (|Set#Union_70542| g1@@11 g0@@11) n_31_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_31_1@@2 n_31_2@@0)))
 :qid |stdinbpl.2297:25|
 :skolemid |258|
 :pattern ( (neverTriggered22 n_31_1@@2) (neverTriggered22 n_31_2@@0))
)) (=> (= (ControlFlow 0 74) (- 0 73)) (forall ((n_31_1@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g1@@11 g0@@11) n_31_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_31_1@@3 r_6) NoPerm)))
 :qid |stdinbpl.2304:25|
 :skolemid |259|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_31_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@7) n_31_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_31_1@@3 r_6))
))))))))))))))))
(let ((anon47_correct true))
(let ((anon77_Then_correct  (=> (and (select g1@@11 u_28) (and (select g1@@11 v_28) (not (exists_path ($$ Heap@@29 g1@@11) u_28 v_28)))) (and (=> (= (ControlFlow 0 80) 74) anon78_Then_correct) (=> (= (ControlFlow 0 80) 71) anon47_correct)))))
(let ((anon77_Else_correct  (=> (and (not (and (select g1@@11 u_28) (and (select g1@@11 v_28) (not (exists_path ($$ Heap@@29 g1@@11) u_28 v_28))))) (= (ControlFlow 0 72) 71)) anon47_correct)))
(let ((anon75_Then_correct  (=> (select g1@@11 v_28) (and (and (=> (= (ControlFlow 0 90) 84) anon76_Then_correct) (=> (= (ControlFlow 0 90) 80) anon77_Then_correct)) (=> (= (ControlFlow 0 90) 72) anon77_Else_correct)))))
(let ((anon75_Else_correct  (=> (not (select g1@@11 v_28)) (and (=> (= (ControlFlow 0 82) 80) anon77_Then_correct) (=> (= (ControlFlow 0 82) 72) anon77_Else_correct)))))
(let ((anon74_Then_correct  (=> (select g1@@11 u_28) (and (=> (= (ControlFlow 0 91) 90) anon75_Then_correct) (=> (= (ControlFlow 0 91) 82) anon75_Else_correct)))))
(let ((anon74_Else_correct  (=> (not (select g1@@11 u_28)) (and (=> (= (ControlFlow 0 81) 80) anon77_Then_correct) (=> (= (ControlFlow 0 81) 72) anon77_Else_correct)))))
(let ((anon73_Else_correct true))
(let ((anon67_Else_correct  (=> (forall ((u_9 T@Ref) (v_9 T@Ref) ) (!  (=> (and (select g0@@11 u_9) (and (select g0@@11 v_9) (not (exists_path ($$ Heap@@29 g0@@11) u_9 v_9)))) (not (exists_path ($$ Heap@@29 (|Set#Union_70542| g0@@11 g1@@11)) u_9 v_9)))
 :qid |stdinbpl.2161:20|
 :skolemid |241|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 g0@@11)) (FrameFragment_8621 (|$$#condqp2| Heap@@29 g0@@11))) g0@@11) u_9 v_9))
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 (|Set#Union_70542| g0@@11 g1@@11))) (FrameFragment_8621 (|$$#condqp2| Heap@@29 (|Set#Union_70542| g0@@11 g1@@11)))) (|Set#Union_70542| g0@@11 g1@@11)) u_9 v_9))
)) (=> (and (state Heap@@29 QPMask@3) (state Heap@@29 QPMask@3)) (and (and (=> (= (ControlFlow 0 92) 70) anon73_Else_correct) (=> (= (ControlFlow 0 92) 91) anon74_Then_correct)) (=> (= (ControlFlow 0 92) 81) anon74_Else_correct))))))
(let ((anon70_Then_correct  (and (=> (= (ControlFlow 0 62) (- 0 67)) (forall ((n_24 T@Ref) ) (!  (=> (and (select g0@@11 n_24) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2013:27|
 :skolemid |221|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n_24 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24 l_8))
))) (=> (forall ((n_24@@0 T@Ref) ) (!  (=> (and (select g0@@11 n_24@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2013:27|
 :skolemid |221|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n_24@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24@@0 l_8))
)) (and (=> (= (ControlFlow 0 62) (- 0 66)) (forall ((n_24@@1 T@Ref) (n_24_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_24@@1 n_24_1)) (select g0@@11 n_24@@1)) (select g0@@11 n_24_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_24@@1 n_24_1)))
 :qid |stdinbpl.2020:27|
 :skolemid |222|
 :pattern ( (neverTriggered15 n_24@@1) (neverTriggered15 n_24_1))
))) (=> (forall ((n_24@@2 T@Ref) (n_24_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_24@@2 n_24_1@@0)) (select g0@@11 n_24@@2)) (select g0@@11 n_24_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_24@@2 n_24_1@@0)))
 :qid |stdinbpl.2020:27|
 :skolemid |222|
 :pattern ( (neverTriggered15 n_24@@2) (neverTriggered15 n_24_1@@0))
)) (and (=> (= (ControlFlow 0 62) (- 0 65)) (forall ((n_24@@3 T@Ref) ) (!  (=> (select g0@@11 n_24@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_24@@3 l_8) NoPerm)))
 :qid |stdinbpl.2027:27|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n_24@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24@@3 l_8))
))) (=> (forall ((n_24@@4 T@Ref) ) (!  (=> (select g0@@11 n_24@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_24@@4 l_8) NoPerm)))
 :qid |stdinbpl.2027:27|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n_24@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24@@4 l_8))
)) (=> (and (forall ((n_24@@5 T@Ref) ) (!  (=> (and (select g0@@11 n_24@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange15 n_24@@5) (= (invRecv15 n_24@@5) n_24@@5)))
 :qid |stdinbpl.2033:32|
 :skolemid |224|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n_24@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24@@5 l_8))
)) (forall ((o_4@@1 T@Ref) ) (!  (=> (and (select g0@@11 (invRecv15 o_4@@1)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange15 o_4@@1))) (= (invRecv15 o_4@@1) o_4@@1))
 :qid |stdinbpl.2037:32|
 :skolemid |225|
 :pattern ( (invRecv15 o_4@@1))
))) (and (=> (= (ControlFlow 0 62) (- 0 64)) (forall ((n_25_1 T@Ref) ) (!  (=> (and (select g0@@11 n_25_1) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_25_1 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2045:27|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_25_1 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) n_25_1 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_25_1 r_6))
))) (=> (forall ((n_25_1@@0 T@Ref) ) (!  (=> (and (select g0@@11 n_25_1@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_25_1@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2045:27|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_25_1@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) n_25_1@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_25_1@@0 r_6))
)) (and (=> (= (ControlFlow 0 62) (- 0 63)) (forall ((n_25_1@@1 T@Ref) (n_25_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_25_1@@1 n_25_2)) (select g0@@11 n_25_1@@1)) (select g0@@11 n_25_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_25_1@@1 n_25_2)))
 :qid |stdinbpl.2052:27|
 :skolemid |227|
 :pattern ( (neverTriggered16 n_25_1@@1) (neverTriggered16 n_25_2))
))) (=> (forall ((n_25_1@@2 T@Ref) (n_25_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_25_1@@2 n_25_2@@0)) (select g0@@11 n_25_1@@2)) (select g0@@11 n_25_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_25_1@@2 n_25_2@@0)))
 :qid |stdinbpl.2052:27|
 :skolemid |227|
 :pattern ( (neverTriggered16 n_25_1@@2) (neverTriggered16 n_25_2@@0))
)) (=> (= (ControlFlow 0 62) (- 0 61)) (forall ((n_25_1@@3 T@Ref) ) (!  (=> (select g0@@11 n_25_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_25_1@@3 r_6) NoPerm)))
 :qid |stdinbpl.2059:27|
 :skolemid |228|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_25_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) n_25_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_25_1@@3 r_6))
))))))))))))))))
(let ((anon72_Then_correct  (and (=> (= (ControlFlow 0 52) (- 0 57)) (forall ((n_26_1 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_26_1) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_26_1 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2091:25|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_26_1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) n_26_1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_26_1 l_8))
))) (=> (forall ((n_26_1@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_26_1@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_26_1@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2091:25|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_26_1@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) n_26_1@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_26_1@@0 l_8))
)) (and (=> (= (ControlFlow 0 52) (- 0 56)) (forall ((n_26_1@@1 T@Ref) (n_26_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_26_1@@1 n_26_2)) (select (|Set#Union_70542| g0@@11 g1@@11) n_26_1@@1)) (select (|Set#Union_70542| g0@@11 g1@@11) n_26_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_26_1@@1 n_26_2)))
 :qid |stdinbpl.2098:25|
 :skolemid |232|
 :pattern ( (neverTriggered17 n_26_1@@1) (neverTriggered17 n_26_2))
))) (=> (forall ((n_26_1@@2 T@Ref) (n_26_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_26_1@@2 n_26_2@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n_26_1@@2)) (select (|Set#Union_70542| g0@@11 g1@@11) n_26_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_26_1@@2 n_26_2@@0)))
 :qid |stdinbpl.2098:25|
 :skolemid |232|
 :pattern ( (neverTriggered17 n_26_1@@2) (neverTriggered17 n_26_2@@0))
)) (and (=> (= (ControlFlow 0 52) (- 0 55)) (forall ((n_26_1@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_26_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_26_1@@3 l_8) NoPerm)))
 :qid |stdinbpl.2105:25|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_26_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) n_26_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_26_1@@3 l_8))
))) (=> (forall ((n_26_1@@4 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_26_1@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_26_1@@4 l_8) NoPerm)))
 :qid |stdinbpl.2105:25|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_26_1@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) n_26_1@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_26_1@@4 l_8))
)) (=> (and (forall ((n_26_1@@5 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_26_1@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange17 n_26_1@@5) (= (invRecv17 n_26_1@@5) n_26_1@@5)))
 :qid |stdinbpl.2111:30|
 :skolemid |234|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_26_1@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) n_26_1@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_26_1@@5 l_8))
)) (forall ((o_4@@2 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv17 o_4@@2)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange17 o_4@@2))) (= (invRecv17 o_4@@2) o_4@@2))
 :qid |stdinbpl.2115:30|
 :skolemid |235|
 :pattern ( (invRecv17 o_4@@2))
))) (and (=> (= (ControlFlow 0 52) (- 0 54)) (forall ((n_27_1 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_27_1) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_27_1 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2123:25|
 :skolemid |236|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_27_1 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@11) n_27_1 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_27_1 r_6))
))) (=> (forall ((n_27_1@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_27_1@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_27_1@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2123:25|
 :skolemid |236|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_27_1@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@11) n_27_1@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_27_1@@0 r_6))
)) (and (=> (= (ControlFlow 0 52) (- 0 53)) (forall ((n_27_1@@1 T@Ref) (n_27_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_27_1@@1 n_27_2)) (select (|Set#Union_70542| g0@@11 g1@@11) n_27_1@@1)) (select (|Set#Union_70542| g0@@11 g1@@11) n_27_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_27_1@@1 n_27_2)))
 :qid |stdinbpl.2130:25|
 :skolemid |237|
 :pattern ( (neverTriggered18 n_27_1@@1) (neverTriggered18 n_27_2))
))) (=> (forall ((n_27_1@@2 T@Ref) (n_27_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_27_1@@2 n_27_2@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n_27_1@@2)) (select (|Set#Union_70542| g0@@11 g1@@11) n_27_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_27_1@@2 n_27_2@@0)))
 :qid |stdinbpl.2130:25|
 :skolemid |237|
 :pattern ( (neverTriggered18 n_27_1@@2) (neverTriggered18 n_27_2@@0))
)) (=> (= (ControlFlow 0 52) (- 0 51)) (forall ((n_27_1@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_27_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_27_1@@3 r_6) NoPerm)))
 :qid |stdinbpl.2137:25|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_27_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@11) n_27_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_27_1@@3 r_6))
))))))))))))))))
(let ((anon38_correct true))
(let ((anon71_Then_correct  (=> (and (select g0@@11 u_27) (and (select g0@@11 v_27) (not (exists_path ($$ Heap@@29 g0@@11) u_27 v_27)))) (and (=> (= (ControlFlow 0 58) 52) anon72_Then_correct) (=> (= (ControlFlow 0 58) 49) anon38_correct)))))
(let ((anon71_Else_correct  (=> (and (not (and (select g0@@11 u_27) (and (select g0@@11 v_27) (not (exists_path ($$ Heap@@29 g0@@11) u_27 v_27))))) (= (ControlFlow 0 50) 49)) anon38_correct)))
(let ((anon69_Then_correct  (=> (select g0@@11 v_27) (and (and (=> (= (ControlFlow 0 68) 62) anon70_Then_correct) (=> (= (ControlFlow 0 68) 58) anon71_Then_correct)) (=> (= (ControlFlow 0 68) 50) anon71_Else_correct)))))
(let ((anon69_Else_correct  (=> (not (select g0@@11 v_27)) (and (=> (= (ControlFlow 0 60) 58) anon71_Then_correct) (=> (= (ControlFlow 0 60) 50) anon71_Else_correct)))))
(let ((anon68_Then_correct  (=> (select g0@@11 u_27) (and (=> (= (ControlFlow 0 69) 68) anon69_Then_correct) (=> (= (ControlFlow 0 69) 60) anon69_Else_correct)))))
(let ((anon68_Else_correct  (=> (not (select g0@@11 u_27)) (and (=> (= (ControlFlow 0 59) 58) anon71_Then_correct) (=> (= (ControlFlow 0 59) 50) anon71_Else_correct)))))
(let ((anon61_Else_correct  (=> (forall ((u_7 T@Ref) (v_7 T@Ref) ) (!  (=> (and (select g1@@11 u_7) (and (select g1@@11 v_7) (exists_path ($$ Heap@@29 g1@@11) u_7 v_7))) (exists_path ($$ Heap@@29 (|Set#Union_70542| g1@@11 g0@@11)) u_7 v_7))
 :qid |stdinbpl.1994:20|
 :skolemid |220|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 g1@@11)) (FrameFragment_8621 (|$$#condqp2| Heap@@29 g1@@11))) g1@@11) u_7 v_7))
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 (|Set#Union_70542| g1@@11 g0@@11))) (FrameFragment_8621 (|$$#condqp2| Heap@@29 (|Set#Union_70542| g1@@11 g0@@11)))) (|Set#Union_70542| g1@@11 g0@@11)) u_7 v_7))
)) (=> (and (state Heap@@29 QPMask@3) (state Heap@@29 QPMask@3)) (and (and (=> (= (ControlFlow 0 93) 92) anon67_Else_correct) (=> (= (ControlFlow 0 93) 69) anon68_Then_correct)) (=> (= (ControlFlow 0 93) 59) anon68_Else_correct))))))
(let ((anon64_Then_correct  (and (=> (= (ControlFlow 0 41) (- 0 46)) (forall ((n_20 T@Ref) ) (!  (=> (and (select g1@@11 n_20) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1846:27|
 :skolemid |200|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n_20 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20 l_8))
))) (=> (forall ((n_20@@0 T@Ref) ) (!  (=> (and (select g1@@11 n_20@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1846:27|
 :skolemid |200|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n_20@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20@@0 l_8))
)) (and (=> (= (ControlFlow 0 41) (- 0 45)) (forall ((n_20@@1 T@Ref) (n_20_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_20@@1 n_20_1)) (select g1@@11 n_20@@1)) (select g1@@11 n_20_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_20@@1 n_20_1)))
 :qid |stdinbpl.1853:27|
 :skolemid |201|
 :pattern ( (neverTriggered11 n_20@@1) (neverTriggered11 n_20_1))
))) (=> (forall ((n_20@@2 T@Ref) (n_20_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_20@@2 n_20_1@@0)) (select g1@@11 n_20@@2)) (select g1@@11 n_20_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_20@@2 n_20_1@@0)))
 :qid |stdinbpl.1853:27|
 :skolemid |201|
 :pattern ( (neverTriggered11 n_20@@2) (neverTriggered11 n_20_1@@0))
)) (and (=> (= (ControlFlow 0 41) (- 0 44)) (forall ((n_20@@3 T@Ref) ) (!  (=> (select g1@@11 n_20@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_20@@3 l_8) NoPerm)))
 :qid |stdinbpl.1860:27|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n_20@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20@@3 l_8))
))) (=> (forall ((n_20@@4 T@Ref) ) (!  (=> (select g1@@11 n_20@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_20@@4 l_8) NoPerm)))
 :qid |stdinbpl.1860:27|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n_20@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20@@4 l_8))
)) (=> (and (forall ((n_20@@5 T@Ref) ) (!  (=> (and (select g1@@11 n_20@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange11 n_20@@5) (= (invRecv11 n_20@@5) n_20@@5)))
 :qid |stdinbpl.1866:32|
 :skolemid |203|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n_20@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20@@5 l_8))
)) (forall ((o_4@@3 T@Ref) ) (!  (=> (and (select g1@@11 (invRecv11 o_4@@3)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange11 o_4@@3))) (= (invRecv11 o_4@@3) o_4@@3))
 :qid |stdinbpl.1870:32|
 :skolemid |204|
 :pattern ( (invRecv11 o_4@@3))
))) (and (=> (= (ControlFlow 0 41) (- 0 43)) (forall ((n_21 T@Ref) ) (!  (=> (and (select g1@@11 n_21) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_21 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1878:27|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_21 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) n_21 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_21 r_6))
))) (=> (forall ((n_21@@0 T@Ref) ) (!  (=> (and (select g1@@11 n_21@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_21@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1878:27|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_21@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) n_21@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_21@@0 r_6))
)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (forall ((n_21@@1 T@Ref) (n_21_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_21@@1 n_21_1)) (select g1@@11 n_21@@1)) (select g1@@11 n_21_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_21@@1 n_21_1)))
 :qid |stdinbpl.1885:27|
 :skolemid |206|
 :pattern ( (neverTriggered12 n_21@@1) (neverTriggered12 n_21_1))
))) (=> (forall ((n_21@@2 T@Ref) (n_21_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_21@@2 n_21_1@@0)) (select g1@@11 n_21@@2)) (select g1@@11 n_21_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_21@@2 n_21_1@@0)))
 :qid |stdinbpl.1885:27|
 :skolemid |206|
 :pattern ( (neverTriggered12 n_21@@2) (neverTriggered12 n_21_1@@0))
)) (=> (= (ControlFlow 0 41) (- 0 40)) (forall ((n_21@@3 T@Ref) ) (!  (=> (select g1@@11 n_21@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_21@@3 r_6) NoPerm)))
 :qid |stdinbpl.1892:27|
 :skolemid |207|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_21@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) n_21@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_21@@3 r_6))
))))))))))))))))
(let ((anon66_Then_correct  (and (=> (= (ControlFlow 0 31) (- 0 36)) (forall ((n_22 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_22) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1924:25|
 :skolemid |210|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) n_22 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22 l_8))
))) (=> (forall ((n_22@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_22@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1924:25|
 :skolemid |210|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) n_22@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22@@0 l_8))
)) (and (=> (= (ControlFlow 0 31) (- 0 35)) (forall ((n_22@@1 T@Ref) (n_22_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_22@@1 n_22_1)) (select (|Set#Union_70542| g1@@11 g0@@11) n_22@@1)) (select (|Set#Union_70542| g1@@11 g0@@11) n_22_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_22@@1 n_22_1)))
 :qid |stdinbpl.1931:25|
 :skolemid |211|
 :pattern ( (neverTriggered13 n_22@@1) (neverTriggered13 n_22_1))
))) (=> (forall ((n_22@@2 T@Ref) (n_22_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_22@@2 n_22_1@@0)) (select (|Set#Union_70542| g1@@11 g0@@11) n_22@@2)) (select (|Set#Union_70542| g1@@11 g0@@11) n_22_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_22@@2 n_22_1@@0)))
 :qid |stdinbpl.1931:25|
 :skolemid |211|
 :pattern ( (neverTriggered13 n_22@@2) (neverTriggered13 n_22_1@@0))
)) (and (=> (= (ControlFlow 0 31) (- 0 34)) (forall ((n_22@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g1@@11 g0@@11) n_22@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_22@@3 l_8) NoPerm)))
 :qid |stdinbpl.1938:25|
 :skolemid |212|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) n_22@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22@@3 l_8))
))) (=> (forall ((n_22@@4 T@Ref) ) (!  (=> (select (|Set#Union_70542| g1@@11 g0@@11) n_22@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_22@@4 l_8) NoPerm)))
 :qid |stdinbpl.1938:25|
 :skolemid |212|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) n_22@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22@@4 l_8))
)) (=> (and (forall ((n_22@@5 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_22@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange13 n_22@@5) (= (invRecv13 n_22@@5) n_22@@5)))
 :qid |stdinbpl.1944:30|
 :skolemid |213|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) n_22@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22@@5 l_8))
)) (forall ((o_4@@4 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) (invRecv13 o_4@@4)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange13 o_4@@4))) (= (invRecv13 o_4@@4) o_4@@4))
 :qid |stdinbpl.1948:30|
 :skolemid |214|
 :pattern ( (invRecv13 o_4@@4))
))) (and (=> (= (ControlFlow 0 31) (- 0 33)) (forall ((n_23 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_23) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_23 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1956:25|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_23 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@15) n_23 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_23 r_6))
))) (=> (forall ((n_23@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_23@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_23@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1956:25|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_23@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@15) n_23@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_23@@0 r_6))
)) (and (=> (= (ControlFlow 0 31) (- 0 32)) (forall ((n_23@@1 T@Ref) (n_23_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_23@@1 n_23_1)) (select (|Set#Union_70542| g1@@11 g0@@11) n_23@@1)) (select (|Set#Union_70542| g1@@11 g0@@11) n_23_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_23@@1 n_23_1)))
 :qid |stdinbpl.1963:25|
 :skolemid |216|
 :pattern ( (neverTriggered14 n_23@@1) (neverTriggered14 n_23_1))
))) (=> (forall ((n_23@@2 T@Ref) (n_23_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_23@@2 n_23_1@@0)) (select (|Set#Union_70542| g1@@11 g0@@11) n_23@@2)) (select (|Set#Union_70542| g1@@11 g0@@11) n_23_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_23@@2 n_23_1@@0)))
 :qid |stdinbpl.1963:25|
 :skolemid |216|
 :pattern ( (neverTriggered14 n_23@@2) (neverTriggered14 n_23_1@@0))
)) (=> (= (ControlFlow 0 31) (- 0 30)) (forall ((n_23@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g1@@11 g0@@11) n_23@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_23@@3 r_6) NoPerm)))
 :qid |stdinbpl.1970:25|
 :skolemid |217|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_23@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@15) n_23@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_23@@3 r_6))
))))))))))))))))
(let ((anon29_correct true))
(let ((anon65_Then_correct  (=> (and (select g1@@11 u_22) (and (select g1@@11 v_22) (exists_path ($$ Heap@@29 g1@@11) u_22 v_22))) (and (=> (= (ControlFlow 0 37) 31) anon66_Then_correct) (=> (= (ControlFlow 0 37) 28) anon29_correct)))))
(let ((anon65_Else_correct  (=> (and (not (and (select g1@@11 u_22) (and (select g1@@11 v_22) (exists_path ($$ Heap@@29 g1@@11) u_22 v_22)))) (= (ControlFlow 0 29) 28)) anon29_correct)))
(let ((anon63_Then_correct  (=> (select g1@@11 v_22) (and (and (=> (= (ControlFlow 0 47) 41) anon64_Then_correct) (=> (= (ControlFlow 0 47) 37) anon65_Then_correct)) (=> (= (ControlFlow 0 47) 29) anon65_Else_correct)))))
(let ((anon63_Else_correct  (=> (not (select g1@@11 v_22)) (and (=> (= (ControlFlow 0 39) 37) anon65_Then_correct) (=> (= (ControlFlow 0 39) 29) anon65_Else_correct)))))
(let ((anon62_Then_correct  (=> (select g1@@11 u_22) (and (=> (= (ControlFlow 0 48) 47) anon63_Then_correct) (=> (= (ControlFlow 0 48) 39) anon63_Else_correct)))))
(let ((anon62_Else_correct  (=> (not (select g1@@11 u_22)) (and (=> (= (ControlFlow 0 38) 37) anon65_Then_correct) (=> (= (ControlFlow 0 38) 29) anon65_Else_correct)))))
(let ((anon55_Else_correct  (=> (forall ((u_5 T@Ref) (v_5_1 T@Ref) ) (!  (=> (and (select g0@@11 u_5) (and (select g0@@11 v_5_1) (exists_path ($$ Heap@@29 g0@@11) u_5 v_5_1))) (exists_path ($$ Heap@@29 (|Set#Union_70542| g0@@11 g1@@11)) u_5 v_5_1))
 :qid |stdinbpl.1827:20|
 :skolemid |199|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 g0@@11)) (FrameFragment_8621 (|$$#condqp2| Heap@@29 g0@@11))) g0@@11) u_5 v_5_1))
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 (|Set#Union_70542| g0@@11 g1@@11))) (FrameFragment_8621 (|$$#condqp2| Heap@@29 (|Set#Union_70542| g0@@11 g1@@11)))) (|Set#Union_70542| g0@@11 g1@@11)) u_5 v_5_1))
)) (=> (and (state Heap@@29 QPMask@3) (state Heap@@29 QPMask@3)) (and (and (=> (= (ControlFlow 0 94) 93) anon61_Else_correct) (=> (= (ControlFlow 0 94) 48) anon62_Then_correct)) (=> (= (ControlFlow 0 94) 38) anon62_Else_correct))))))
(let ((anon58_Then_correct  (and (=> (= (ControlFlow 0 20) (- 0 25)) (forall ((n_16 T@Ref) ) (!  (=> (and (select g0@@11 n_16) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1679:27|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n_16 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16 l_8))
))) (=> (forall ((n_16@@0 T@Ref) ) (!  (=> (and (select g0@@11 n_16@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1679:27|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n_16@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16@@0 l_8))
)) (and (=> (= (ControlFlow 0 20) (- 0 24)) (forall ((n_16@@1 T@Ref) (n_16_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_16@@1 n_16_1)) (select g0@@11 n_16@@1)) (select g0@@11 n_16_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_16@@1 n_16_1)))
 :qid |stdinbpl.1686:27|
 :skolemid |180|
 :pattern ( (neverTriggered7 n_16@@1) (neverTriggered7 n_16_1))
))) (=> (forall ((n_16@@2 T@Ref) (n_16_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_16@@2 n_16_1@@0)) (select g0@@11 n_16@@2)) (select g0@@11 n_16_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_16@@2 n_16_1@@0)))
 :qid |stdinbpl.1686:27|
 :skolemid |180|
 :pattern ( (neverTriggered7 n_16@@2) (neverTriggered7 n_16_1@@0))
)) (and (=> (= (ControlFlow 0 20) (- 0 23)) (forall ((n_16@@3 T@Ref) ) (!  (=> (select g0@@11 n_16@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_16@@3 l_8) NoPerm)))
 :qid |stdinbpl.1693:27|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n_16@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16@@3 l_8))
))) (=> (forall ((n_16@@4 T@Ref) ) (!  (=> (select g0@@11 n_16@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_16@@4 l_8) NoPerm)))
 :qid |stdinbpl.1693:27|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n_16@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16@@4 l_8))
)) (=> (and (forall ((n_16@@5 T@Ref) ) (!  (=> (and (select g0@@11 n_16@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange7 n_16@@5) (= (invRecv7 n_16@@5) n_16@@5)))
 :qid |stdinbpl.1699:32|
 :skolemid |182|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n_16@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_16@@5 l_8))
)) (forall ((o_4@@5 T@Ref) ) (!  (=> (and (select g0@@11 (invRecv7 o_4@@5)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange7 o_4@@5))) (= (invRecv7 o_4@@5) o_4@@5))
 :qid |stdinbpl.1703:32|
 :skolemid |183|
 :pattern ( (invRecv7 o_4@@5))
))) (and (=> (= (ControlFlow 0 20) (- 0 22)) (forall ((n_17 T@Ref) ) (!  (=> (and (select g0@@11 n_17) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1711:27|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) n_17 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17 r_6))
))) (=> (forall ((n_17@@0 T@Ref) ) (!  (=> (and (select g0@@11 n_17@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1711:27|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) n_17@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@0 r_6))
)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (forall ((n_17@@1 T@Ref) (n_17_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_17@@1 n_17_1)) (select g0@@11 n_17@@1)) (select g0@@11 n_17_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_17@@1 n_17_1)))
 :qid |stdinbpl.1718:27|
 :skolemid |185|
 :pattern ( (neverTriggered8 n_17@@1) (neverTriggered8 n_17_1))
))) (=> (forall ((n_17@@2 T@Ref) (n_17_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_17@@2 n_17_1@@0)) (select g0@@11 n_17@@2)) (select g0@@11 n_17_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_17@@2 n_17_1@@0)))
 :qid |stdinbpl.1718:27|
 :skolemid |185|
 :pattern ( (neverTriggered8 n_17@@2) (neverTriggered8 n_17_1@@0))
)) (=> (= (ControlFlow 0 20) (- 0 19)) (forall ((n_17@@3 T@Ref) ) (!  (=> (select g0@@11 n_17@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_17@@3 r_6) NoPerm)))
 :qid |stdinbpl.1725:27|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) n_17@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_17@@3 r_6))
))))))))))))))))
(let ((anon60_Then_correct  (and (=> (= (ControlFlow 0 10) (- 0 15)) (forall ((n_18 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_18) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1757:25|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) n_18 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18 l_8))
))) (=> (forall ((n_18@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_18@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1757:25|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) n_18@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18@@0 l_8))
)) (and (=> (= (ControlFlow 0 10) (- 0 14)) (forall ((n_18@@1 T@Ref) (n_18_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_18@@1 n_18_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n_18@@1)) (select (|Set#Union_70542| g0@@11 g1@@11) n_18_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_18@@1 n_18_1)))
 :qid |stdinbpl.1764:25|
 :skolemid |190|
 :pattern ( (neverTriggered9 n_18@@1) (neverTriggered9 n_18_1))
))) (=> (forall ((n_18@@2 T@Ref) (n_18_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_18@@2 n_18_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n_18@@2)) (select (|Set#Union_70542| g0@@11 g1@@11) n_18_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_18@@2 n_18_1@@0)))
 :qid |stdinbpl.1764:25|
 :skolemid |190|
 :pattern ( (neverTriggered9 n_18@@2) (neverTriggered9 n_18_1@@0))
)) (and (=> (= (ControlFlow 0 10) (- 0 13)) (forall ((n_18@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_18@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_18@@3 l_8) NoPerm)))
 :qid |stdinbpl.1771:25|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) n_18@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18@@3 l_8))
))) (=> (forall ((n_18@@4 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_18@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_18@@4 l_8) NoPerm)))
 :qid |stdinbpl.1771:25|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) n_18@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18@@4 l_8))
)) (=> (and (forall ((n_18@@5 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_18@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange9 n_18@@5) (= (invRecv9 n_18@@5) n_18@@5)))
 :qid |stdinbpl.1777:30|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) n_18@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18@@5 l_8))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv9 o_4@@6)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange9 o_4@@6))) (= (invRecv9 o_4@@6) o_4@@6))
 :qid |stdinbpl.1781:30|
 :skolemid |193|
 :pattern ( (invRecv9 o_4@@6))
))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (forall ((n_19 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_19) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_19 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1789:25|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_19 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) n_19 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_19 r_6))
))) (=> (forall ((n_19@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_19@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_19@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1789:25|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_19@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) n_19@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_19@@0 r_6))
)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (forall ((n_19@@1 T@Ref) (n_19_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_19@@1 n_19_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n_19@@1)) (select (|Set#Union_70542| g0@@11 g1@@11) n_19_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_19@@1 n_19_1)))
 :qid |stdinbpl.1796:25|
 :skolemid |195|
 :pattern ( (neverTriggered10 n_19@@1) (neverTriggered10 n_19_1))
))) (=> (forall ((n_19@@2 T@Ref) (n_19_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_19@@2 n_19_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n_19@@2)) (select (|Set#Union_70542| g0@@11 g1@@11) n_19_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_19@@2 n_19_1@@0)))
 :qid |stdinbpl.1796:25|
 :skolemid |195|
 :pattern ( (neverTriggered10 n_19@@2) (neverTriggered10 n_19_1@@0))
)) (=> (= (ControlFlow 0 10) (- 0 9)) (forall ((n_19@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_19@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_19@@3 r_6) NoPerm)))
 :qid |stdinbpl.1803:25|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_19@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) n_19@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_19@@3 r_6))
))))))))))))))))
(let ((anon20_correct true))
(let ((anon59_Then_correct  (=> (and (select g0@@11 u_21) (and (select g0@@11 v_21) (exists_path ($$ Heap@@29 g0@@11) u_21 v_21))) (and (=> (= (ControlFlow 0 16) 10) anon60_Then_correct) (=> (= (ControlFlow 0 16) 7) anon20_correct)))))
(let ((anon59_Else_correct  (=> (and (not (and (select g0@@11 u_21) (and (select g0@@11 v_21) (exists_path ($$ Heap@@29 g0@@11) u_21 v_21)))) (= (ControlFlow 0 8) 7)) anon20_correct)))
(let ((anon57_Then_correct  (=> (select g0@@11 v_21) (and (and (=> (= (ControlFlow 0 26) 20) anon58_Then_correct) (=> (= (ControlFlow 0 26) 16) anon59_Then_correct)) (=> (= (ControlFlow 0 26) 8) anon59_Else_correct)))))
(let ((anon57_Else_correct  (=> (not (select g0@@11 v_21)) (and (=> (= (ControlFlow 0 18) 16) anon59_Then_correct) (=> (= (ControlFlow 0 18) 8) anon59_Else_correct)))))
(let ((anon56_Then_correct  (=> (select g0@@11 u_21) (and (=> (= (ControlFlow 0 27) 26) anon57_Then_correct) (=> (= (ControlFlow 0 27) 18) anon57_Else_correct)))))
(let ((anon56_Else_correct  (=> (not (select g0@@11 u_21)) (and (=> (= (ControlFlow 0 17) 16) anon59_Then_correct) (=> (= (ControlFlow 0 17) 8) anon59_Else_correct)))))
(let ((anon54_Else_correct  (=> (forall ((n$1_2 T@Ref) ) (!  (=> (select g1@@11 n$1_2) (not (select g0@@11 n$1_2)))
 :qid |stdinbpl.1656:20|
 :skolemid |178|
 :pattern ( (select g0@@11 n$1_2) (select g1@@11 n$1_2))
)) (=> (and (and (state Heap@@29 QPMask@3) (|Set#Equal_70542| (|Set#Union_70542| g0@@11 g1@@11) (|Set#Union_70542| g1@@11 g0@@11))) (and (state Heap@@29 QPMask@3) (state Heap@@29 QPMask@3))) (and (and (=> (= (ControlFlow 0 95) 94) anon55_Else_correct) (=> (= (ControlFlow 0 95) 27) anon56_Then_correct)) (=> (= (ControlFlow 0 95) 17) anon56_Else_correct))))))
(let ((anon54_Then_correct true))
(let ((anon53_Else_correct  (=> (forall ((n$0_2_1 T@Ref) ) (!  (=> (select g0@@11 n$0_2_1) (not (select g1@@11 n$0_2_1)))
 :qid |stdinbpl.1647:20|
 :skolemid |177|
 :pattern ( (select g0@@11 n$0_2_1) (select g1@@11 n$0_2_1))
)) (and (=> (= (ControlFlow 0 96) 6) anon54_Then_correct) (=> (= (ControlFlow 0 96) 95) anon54_Else_correct)))))
(let ((anon53_Then_correct true))
(let ((anon52_Else_correct  (and (=> (= (ControlFlow 0 97) (- 0 98)) (forall ((n_15 T@Ref) (n_15_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15 n_15_1)) (select g1@@11 n_15)) (select g1@@11 n_15_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_15 n_15_1)))
 :qid |stdinbpl.1609:15|
 :skolemid |171|
))) (=> (forall ((n_15@@0 T@Ref) (n_15_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15@@0 n_15_1@@0)) (select g1@@11 n_15@@0)) (select g1@@11 n_15_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_15@@0 n_15_1@@0)))
 :qid |stdinbpl.1609:15|
 :skolemid |171|
)) (=> (and (and (forall ((n_15@@1 T@Ref) ) (!  (=> (and (select g1@@11 n_15@@1) (< NoPerm FullPerm)) (and (qpRange6 n_15@@1) (= (invRecv6 n_15@@1) n_15@@1)))
 :qid |stdinbpl.1615:22|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_15@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_15@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_15@@1 r_6))
)) (forall ((o_4@@7 T@Ref) ) (!  (=> (and (and (select g1@@11 (invRecv6 o_4@@7)) (< NoPerm FullPerm)) (qpRange6 o_4@@7)) (= (invRecv6 o_4@@7) o_4@@7))
 :qid |stdinbpl.1619:22|
 :skolemid |173|
 :pattern ( (invRecv6 o_4@@7))
))) (and (forall ((n_15@@2 T@Ref) ) (!  (=> (select g1@@11 n_15@@2) (not (= n_15@@2 null)))
 :qid |stdinbpl.1625:22|
 :skolemid |174|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_15@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_15@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_15@@2 r_6))
)) (forall ((o_4@@8 T@Ref) ) (!  (and (=> (and (and (select g1@@11 (invRecv6 o_4@@8)) (< NoPerm FullPerm)) (qpRange6 o_4@@8)) (and (=> (< NoPerm FullPerm) (= (invRecv6 o_4@@8) o_4@@8)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) o_4@@8 r_6) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_4@@8 r_6) FullPerm)))) (=> (not (and (and (select g1@@11 (invRecv6 o_4@@8)) (< NoPerm FullPerm)) (qpRange6 o_4@@8))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) o_4@@8 r_6) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_4@@8 r_6))))
 :qid |stdinbpl.1631:22|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) o_4@@8 r_6))
)))) (=> (and (and (and (and (forall ((o_4@@9 T@Ref) (f_5 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@2) o_4@@9 f_5) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@3) o_4@@9 f_5)))
 :qid |stdinbpl.1635:29|
 :skolemid |176|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@2) o_4@@9 f_5))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@3) o_4@@9 f_5))
)) (forall ((o_4@@10 T@Ref) (f_5@@0 T@Field_105234_105235) ) (!  (=> (not (= f_5@@0 r_6)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_4@@10 f_5@@0) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) o_4@@10 f_5@@0)))
 :qid |stdinbpl.1635:29|
 :skolemid |176|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_4@@10 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) o_4@@10 f_5@@0))
))) (forall ((o_4@@11 T@Ref) (f_5@@1 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@2) o_4@@11 f_5@@1) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@3) o_4@@11 f_5@@1)))
 :qid |stdinbpl.1635:29|
 :skolemid |176|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@2) o_4@@11 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@3) o_4@@11 f_5@@1))
))) (forall ((o_4@@12 T@Ref) (f_5@@2 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@2) o_4@@12 f_5@@2) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@3) o_4@@12 f_5@@2)))
 :qid |stdinbpl.1635:29|
 :skolemid |176|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@2) o_4@@12 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@3) o_4@@12 f_5@@2))
))) (and (state Heap@@29 QPMask@3) (state Heap@@29 QPMask@3))) (and (=> (= (ControlFlow 0 97) 5) anon53_Then_correct) (=> (= (ControlFlow 0 97) 96) anon53_Else_correct))))))))
(let ((anon52_Then_correct true))
(let ((anon51_Else_correct  (and (=> (= (ControlFlow 0 99) (- 0 100)) (forall ((n_13 T@Ref) (n_13_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13 n_13_1)) (select g1@@11 n_13)) (select g1@@11 n_13_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_13 n_13_1)))
 :qid |stdinbpl.1569:15|
 :skolemid |165|
))) (=> (forall ((n_13@@0 T@Ref) (n_13_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13@@0 n_13_1@@0)) (select g1@@11 n_13@@0)) (select g1@@11 n_13_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_13@@0 n_13_1@@0)))
 :qid |stdinbpl.1569:15|
 :skolemid |165|
)) (=> (and (and (forall ((n_13@@1 T@Ref) ) (!  (=> (and (select g1@@11 n_13@@1) (< NoPerm FullPerm)) (and (qpRange5 n_13@@1) (= (invRecv5 n_13@@1) n_13@@1)))
 :qid |stdinbpl.1575:22|
 :skolemid |166|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_13@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) n_13@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_13@@1 l_8))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (select g1@@11 (invRecv5 o_4@@13)) (< NoPerm FullPerm)) (qpRange5 o_4@@13)) (= (invRecv5 o_4@@13) o_4@@13))
 :qid |stdinbpl.1579:22|
 :skolemid |167|
 :pattern ( (invRecv5 o_4@@13))
))) (and (forall ((n_13@@2 T@Ref) ) (!  (=> (select g1@@11 n_13@@2) (not (= n_13@@2 null)))
 :qid |stdinbpl.1585:22|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_13@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) n_13@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_13@@2 l_8))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (select g1@@11 (invRecv5 o_4@@14)) (< NoPerm FullPerm)) (qpRange5 o_4@@14)) (and (=> (< NoPerm FullPerm) (= (invRecv5 o_4@@14) o_4@@14)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_4@@14 l_8) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_4@@14 l_8) FullPerm)))) (=> (not (and (and (select g1@@11 (invRecv5 o_4@@14)) (< NoPerm FullPerm)) (qpRange5 o_4@@14))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_4@@14 l_8) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_4@@14 l_8))))
 :qid |stdinbpl.1591:22|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_4@@14 l_8))
)))) (=> (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@3 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@1) o_4@@15 f_5@@3) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@2) o_4@@15 f_5@@3)))
 :qid |stdinbpl.1595:29|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@1) o_4@@15 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@2) o_4@@15 f_5@@3))
)) (forall ((o_4@@16 T@Ref) (f_5@@4 T@Field_105234_105235) ) (!  (=> (not (= f_5@@4 l_8)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_4@@16 f_5@@4) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_4@@16 f_5@@4)))
 :qid |stdinbpl.1595:29|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_4@@16 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) o_4@@16 f_5@@4))
))) (forall ((o_4@@17 T@Ref) (f_5@@5 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@1) o_4@@17 f_5@@5) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@2) o_4@@17 f_5@@5)))
 :qid |stdinbpl.1595:29|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@1) o_4@@17 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@2) o_4@@17 f_5@@5))
))) (forall ((o_4@@18 T@Ref) (f_5@@6 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@1) o_4@@18 f_5@@6) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@2) o_4@@18 f_5@@6)))
 :qid |stdinbpl.1595:29|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@1) o_4@@18 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@2) o_4@@18 f_5@@6))
))) (and (state Heap@@29 QPMask@2) (state Heap@@29 QPMask@2))) (and (=> (= (ControlFlow 0 99) 4) anon52_Then_correct) (=> (= (ControlFlow 0 99) 97) anon52_Else_correct))))))))
(let ((anon51_Then_correct true))
(let ((anon50_Else_correct  (and (=> (= (ControlFlow 0 101) (- 0 102)) (forall ((n_11_1 T@Ref) (n_11_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_1 n_11_2)) (select g0@@11 n_11_1)) (select g0@@11 n_11_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_11_1 n_11_2)))
 :qid |stdinbpl.1529:15|
 :skolemid |159|
))) (=> (forall ((n_11_1@@0 T@Ref) (n_11_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_1@@0 n_11_2@@0)) (select g0@@11 n_11_1@@0)) (select g0@@11 n_11_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_11_1@@0 n_11_2@@0)))
 :qid |stdinbpl.1529:15|
 :skolemid |159|
)) (=> (and (and (forall ((n_11_1@@1 T@Ref) ) (!  (=> (and (select g0@@11 n_11_1@@1) (< NoPerm FullPerm)) (and (qpRange4 n_11_1@@1) (= (invRecv4 n_11_1@@1) n_11_1@@1)))
 :qid |stdinbpl.1535:22|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_11_1@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_11_1@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_11_1@@1 r_6))
)) (forall ((o_4@@19 T@Ref) ) (!  (=> (and (and (select g0@@11 (invRecv4 o_4@@19)) (< NoPerm FullPerm)) (qpRange4 o_4@@19)) (= (invRecv4 o_4@@19) o_4@@19))
 :qid |stdinbpl.1539:22|
 :skolemid |161|
 :pattern ( (invRecv4 o_4@@19))
))) (and (forall ((n_11_1@@2 T@Ref) ) (!  (=> (select g0@@11 n_11_1@@2) (not (= n_11_1@@2 null)))
 :qid |stdinbpl.1545:22|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_11_1@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_11_1@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_11_1@@2 r_6))
)) (forall ((o_4@@20 T@Ref) ) (!  (and (=> (and (and (select g0@@11 (invRecv4 o_4@@20)) (< NoPerm FullPerm)) (qpRange4 o_4@@20)) (and (=> (< NoPerm FullPerm) (= (invRecv4 o_4@@20) o_4@@20)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_4@@20 r_6) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_4@@20 r_6) FullPerm)))) (=> (not (and (and (select g0@@11 (invRecv4 o_4@@20)) (< NoPerm FullPerm)) (qpRange4 o_4@@20))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_4@@20 r_6) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_4@@20 r_6))))
 :qid |stdinbpl.1551:22|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_4@@20 r_6))
)))) (=> (and (and (and (and (forall ((o_4@@21 T@Ref) (f_5@@7 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@0) o_4@@21 f_5@@7) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@1) o_4@@21 f_5@@7)))
 :qid |stdinbpl.1555:29|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@0) o_4@@21 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@1) o_4@@21 f_5@@7))
)) (forall ((o_4@@22 T@Ref) (f_5@@8 T@Field_105234_105235) ) (!  (=> (not (= f_5@@8 r_6)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_4@@22 f_5@@8) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_4@@22 f_5@@8)))
 :qid |stdinbpl.1555:29|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_4@@22 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_4@@22 f_5@@8))
))) (forall ((o_4@@23 T@Ref) (f_5@@9 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@0) o_4@@23 f_5@@9) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@1) o_4@@23 f_5@@9)))
 :qid |stdinbpl.1555:29|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@0) o_4@@23 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@1) o_4@@23 f_5@@9))
))) (forall ((o_4@@24 T@Ref) (f_5@@10 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@0) o_4@@24 f_5@@10) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@1) o_4@@24 f_5@@10)))
 :qid |stdinbpl.1555:29|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@0) o_4@@24 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@1) o_4@@24 f_5@@10))
))) (and (state Heap@@29 QPMask@1) (state Heap@@29 QPMask@1))) (and (=> (= (ControlFlow 0 101) 3) anon51_Then_correct) (=> (= (ControlFlow 0 101) 99) anon51_Else_correct))))))))
(let ((anon50_Then_correct true))
(let ((anon49_Else_correct  (and (=> (= (ControlFlow 0 103) (- 0 104)) (forall ((n_9 T@Ref) (n_9_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9 n_9_1)) (select g0@@11 n_9)) (select g0@@11 n_9_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_9 n_9_1)))
 :qid |stdinbpl.1489:15|
 :skolemid |153|
))) (=> (forall ((n_9@@0 T@Ref) (n_9_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@0 n_9_1@@0)) (select g0@@11 n_9@@0)) (select g0@@11 n_9_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_9@@0 n_9_1@@0)))
 :qid |stdinbpl.1489:15|
 :skolemid |153|
)) (=> (and (and (forall ((n_9@@1 T@Ref) ) (!  (=> (and (select g0@@11 n_9@@1) (< NoPerm FullPerm)) (and (qpRange3 n_9@@1) (= (invRecv3 n_9@@1) n_9@@1)))
 :qid |stdinbpl.1495:22|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_9@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) n_9@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_9@@1 l_8))
)) (forall ((o_4@@25 T@Ref) ) (!  (=> (and (and (select g0@@11 (invRecv3 o_4@@25)) (< NoPerm FullPerm)) (qpRange3 o_4@@25)) (= (invRecv3 o_4@@25) o_4@@25))
 :qid |stdinbpl.1499:22|
 :skolemid |155|
 :pattern ( (invRecv3 o_4@@25))
))) (and (forall ((n_9@@2 T@Ref) ) (!  (=> (select g0@@11 n_9@@2) (not (= n_9@@2 null)))
 :qid |stdinbpl.1505:22|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_9@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) n_9@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_9@@2 l_8))
)) (forall ((o_4@@26 T@Ref) ) (!  (and (=> (and (and (select g0@@11 (invRecv3 o_4@@26)) (< NoPerm FullPerm)) (qpRange3 o_4@@26)) (and (=> (< NoPerm FullPerm) (= (invRecv3 o_4@@26) o_4@@26)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_4@@26 l_8) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_4@@26 l_8) FullPerm)))) (=> (not (and (and (select g0@@11 (invRecv3 o_4@@26)) (< NoPerm FullPerm)) (qpRange3 o_4@@26))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_4@@26 l_8) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_4@@26 l_8))))
 :qid |stdinbpl.1511:22|
 :skolemid |157|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_4@@26 l_8))
)))) (=> (and (and (and (and (forall ((o_4@@27 T@Ref) (f_5@@11 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| ZeroMask) o_4@@27 f_5@@11) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@0) o_4@@27 f_5@@11)))
 :qid |stdinbpl.1515:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| ZeroMask) o_4@@27 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@0) o_4@@27 f_5@@11))
)) (forall ((o_4@@28 T@Ref) (f_5@@12 T@Field_105234_105235) ) (!  (=> (not (= f_5@@12 l_8)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_4@@28 f_5@@12) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_4@@28 f_5@@12)))
 :qid |stdinbpl.1515:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_4@@28 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_4@@28 f_5@@12))
))) (forall ((o_4@@29 T@Ref) (f_5@@13 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| ZeroMask) o_4@@29 f_5@@13) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@0) o_4@@29 f_5@@13)))
 :qid |stdinbpl.1515:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| ZeroMask) o_4@@29 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@0) o_4@@29 f_5@@13))
))) (forall ((o_4@@30 T@Ref) (f_5@@14 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| ZeroMask) o_4@@30 f_5@@14) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@0) o_4@@30 f_5@@14)))
 :qid |stdinbpl.1515:29|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| ZeroMask) o_4@@30 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@0) o_4@@30 f_5@@14))
))) (and (state Heap@@29 QPMask@0) (state Heap@@29 QPMask@0))) (and (=> (= (ControlFlow 0 103) 2) anon50_Then_correct) (=> (= (ControlFlow 0 103) 101) anon50_Else_correct))))))))
(let ((anon49_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@29 ZeroMask) (=> (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 0)) (and (=> (= (ControlFlow 0 105) 1) anon49_Then_correct) (=> (= (ControlFlow 0 105) 103) anon49_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 106) 105) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-fun l_8 () T@Field_105234_105235)
(declare-fun r_6 () T@Field_105234_105235)
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
(assert (and (distinct $allocated marker)(distinct __left__ __right__)(distinct l_8 r_6))
)
(assert (forall ((Heap0 T@PolymorphicMapType_105161) (Heap1 T@PolymorphicMapType_105161) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_105161) (Mask T@PolymorphicMapType_105182) (g0 (Array T@Ref Bool)) (g1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap Mask) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp3| Heap g0 g1)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp4| Heap g0 g1)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp5| Heap g0 g1)) (FrameFragment_8621 (|apply_TCFraming#condqp6| Heap g0 g1))))) g0 g1))) (=> (and (forall ((n$0_13 T@Ref) ) (!  (=> (select g0 n$0_13) (not (select g1 n$0_13)))
 :qid |stdinbpl.1401:359|
 :skolemid |137|
 :pattern ( (select g0 n$0_13) (select g1 n$0_13))
)) (forall ((n$1_12 T@Ref) ) (!  (=> (select g1 n$1_12) (not (select g0 n$1_12)))
 :qid |stdinbpl.1404:16|
 :skolemid |138|
 :pattern ( (select g0 n$1_12) (select g1 n$1_12))
))) (forall ((u_3 T@Ref) (v_2 T@Ref) ) (!  (=> (and (select g0 u_3) (and (select g0 v_2) (exists_path ($$ Heap g0) u_3 v_2))) (exists_path ($$ Heap (|Set#Union_70542| g0 g1)) u_3 v_2))
 :qid |stdinbpl.1407:17|
 :skolemid |139|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap g0)) (FrameFragment_8621 (|$$#condqp2| Heap g0))) g0) u_3 v_2))
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap (|Set#Union_70542| g0 g1))) (FrameFragment_8621 (|$$#condqp2| Heap (|Set#Union_70542| g0 g1)))) (|Set#Union_70542| g0 g1)) u_3 v_2))
))))
 :qid |stdinbpl.1399:15|
 :skolemid |140|
 :pattern ( (state Heap Mask) (|apply_TCFraming'| Heap g0 g1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_105161) (Mask@@0 T@PolymorphicMapType_105182) (g0@@0 (Array T@Ref Bool)) (g1@@0 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@0 Mask@@0) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp3| Heap@@0 g0@@0 g1@@0)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp4| Heap@@0 g0@@0 g1@@0)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp5| Heap@@0 g0@@0 g1@@0)) (FrameFragment_8621 (|apply_TCFraming#condqp6| Heap@@0 g0@@0 g1@@0))))) g0@@0 g1@@0))) (=> (and (forall ((n$0_13@@0 T@Ref) ) (!  (=> (select g0@@0 n$0_13@@0) (not (select g1@@0 n$0_13@@0)))
 :qid |stdinbpl.1414:359|
 :skolemid |141|
 :pattern ( (select g0@@0 n$0_13@@0) (select g1@@0 n$0_13@@0))
)) (forall ((n$1_12@@0 T@Ref) ) (!  (=> (select g1@@0 n$1_12@@0) (not (select g0@@0 n$1_12@@0)))
 :qid |stdinbpl.1417:16|
 :skolemid |142|
 :pattern ( (select g0@@0 n$1_12@@0) (select g1@@0 n$1_12@@0))
))) (forall ((u_1 T@Ref) (v_1_1 T@Ref) ) (!  (=> (and (select g1@@0 u_1) (and (select g1@@0 v_1_1) (exists_path ($$ Heap@@0 g1@@0) u_1 v_1_1))) (exists_path ($$ Heap@@0 (|Set#Union_70542| g1@@0 g0@@0)) u_1 v_1_1))
 :qid |stdinbpl.1420:17|
 :skolemid |143|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@0 g1@@0)) (FrameFragment_8621 (|$$#condqp2| Heap@@0 g1@@0))) g1@@0) u_1 v_1_1))
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@0 (|Set#Union_70542| g1@@0 g0@@0))) (FrameFragment_8621 (|$$#condqp2| Heap@@0 (|Set#Union_70542| g1@@0 g0@@0)))) (|Set#Union_70542| g1@@0 g0@@0)) u_1 v_1_1))
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
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (start T@Ref) (end T@Ref) ) (! (= (exists_path_ EG_1 start end)  (or (= start end) (exists ((w_2 T@Ref) ) (!  (and (edge EG_1 start w_2) (exists_path_ EG_1 w_2 end))
 :qid |stdinbpl.1036:70|
 :skolemid |90|
 :pattern ( (edge EG_1 start w_2))
 :pattern ( (exists_path_ EG_1 w_2 end))
))))
 :qid |stdinbpl.1034:15|
 :skolemid |91|
 :pattern ( (exists_path EG_1 start end))
 :pattern ( (edge EG_1 start end))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_105161) (Mask@@2 T@PolymorphicMapType_105182) (refs@@0 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@4 Mask@@2) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@4 refs@@0)) (FrameFragment_8621 (|$$#condqp2| Heap@@4 refs@@0))) refs@@0))) (forall ((p_1 T@Ref) (s_2 T@Ref) ) (! (=  (and (select refs@@0 p_1) (and (select refs@@0 s_2) (or (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@4) p_1 l_8) s_2) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@4) p_1 r_6) s_2)))) (select (|$$'| Heap@@4 refs@@0) (create_edge p_1 s_2)))
 :qid |stdinbpl.1148:176|
 :skolemid |104|
 :pattern ( (create_edge p_1 s_2))
)))
 :qid |stdinbpl.1146:15|
 :skolemid |105|
 :pattern ( (state Heap@@4 Mask@@2) (|$$'| Heap@@4 refs@@0))
)))
(assert (forall ((EG_1@@0 (Array T@EdgeDomainType Bool)) (U_1 (Array T@Ref Bool)) (M (Array T@Ref Bool)) ) (!  (=> (apply_noExit EG_1@@0 U_1 M) (=> (forall ((u_3@@0 T@Ref) (v_2@@0 T@Ref) ) (!  (=> (and (select M u_3@@0) (and (select U_1 v_2@@0) (not (select M v_2@@0)))) (not (edge EG_1@@0 u_3@@0 v_2@@0)))
 :qid |stdinbpl.1012:50|
 :skolemid |85|
 :pattern ( (edge EG_1@@0 u_3@@0 v_2@@0))
 :pattern ( (select M u_3@@0) (select M v_2@@0))
)) (forall ((u_1@@0 T@Ref) (v_1_1@@0 T@Ref) ) (!  (=> (and (select M u_1@@0) (and (select U_1 v_1_1@@0) (not (select M v_1_1@@0)))) (not (exists_path EG_1@@0 u_1@@0 v_1_1@@0)))
 :qid |stdinbpl.1015:17|
 :skolemid |86|
 :pattern ( (exists_path EG_1@@0 u_1@@0 v_1_1@@0))
 :pattern ( (select M u_1@@0) (select M v_1_1@@0))
))))
 :qid |stdinbpl.1010:15|
 :skolemid |87|
 :pattern ( (apply_noExit EG_1@@0 U_1 M))
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
(assert (forall ((Heap@@6 T@PolymorphicMapType_105161) (ExhaleHeap T@PolymorphicMapType_105161) (Mask@@3 T@PolymorphicMapType_105182) (pm_f_38 T@Field_70297_350585) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_70297_350649 Mask@@3 null pm_f_38) (IsPredicateField_70297_350676 pm_f_38)) (= (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@6) null (PredicateMaskField_70297 pm_f_38)) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap) null (PredicateMaskField_70297 pm_f_38)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@3) (IsPredicateField_70297_350676 pm_f_38) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap) null (PredicateMaskField_70297 pm_f_38)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_105161) (ExhaleHeap@@0 T@PolymorphicMapType_105161) (Mask@@4 T@PolymorphicMapType_105182) (pm_f_38@@0 T@Field_70297_350585) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_70297_350649 Mask@@4 null pm_f_38@@0) (IsWandField_70297_352225 pm_f_38@@0)) (= (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@7) null (WandMaskField_70297 pm_f_38@@0)) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@0) null (WandMaskField_70297 pm_f_38@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@4) (IsWandField_70297_352225 pm_f_38@@0) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@0) null (WandMaskField_70297 pm_f_38@@0)))
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
(assert (forall ((Heap@@8 T@PolymorphicMapType_105161) (ExhaleHeap@@1 T@PolymorphicMapType_105161) (Mask@@5 T@PolymorphicMapType_105182) (pm_f_38@@1 T@Field_70297_350585) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (=> (and (HasDirectPerm_70297_350649 Mask@@5 null pm_f_38@@1) (IsPredicateField_70297_350676 pm_f_38@@1)) (and (and (and (forall ((o2_38 T@Ref) (f_76 T@Field_105221_53) ) (!  (=> (select (|PolymorphicMapType_105710_105221_53#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@8) null (PredicateMaskField_70297 pm_f_38@@1))) o2_38 f_76) (= (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@8) o2_38 f_76) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@1) o2_38 f_76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@1) o2_38 f_76))
)) (forall ((o2_38@@0 T@Ref) (f_76@@0 T@Field_105234_105235) ) (!  (=> (select (|PolymorphicMapType_105710_105221_105235#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@8) null (PredicateMaskField_70297 pm_f_38@@1))) o2_38@@0 f_76@@0) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@8) o2_38@@0 f_76@@0) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@@1) o2_38@@0 f_76@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@@1) o2_38@@0 f_76@@0))
))) (forall ((o2_38@@1 T@Ref) (f_76@@1 T@Field_70297_350585) ) (!  (=> (select (|PolymorphicMapType_105710_105221_350585#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@8) null (PredicateMaskField_70297 pm_f_38@@1))) o2_38@@1 f_76@@1) (= (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@8) o2_38@@1 f_76@@1) (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| ExhaleHeap@@1) o2_38@@1 f_76@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| ExhaleHeap@@1) o2_38@@1 f_76@@1))
))) (forall ((o2_38@@2 T@Ref) (f_76@@2 T@Field_70297_350718) ) (!  (=> (select (|PolymorphicMapType_105710_105221_351698#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@8) null (PredicateMaskField_70297 pm_f_38@@1))) o2_38@@2 f_76@@2) (= (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@8) o2_38@@2 f_76@@2) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@1) o2_38@@2 f_76@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@1) o2_38@@2 f_76@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@5) (IsPredicateField_70297_350676 pm_f_38@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_105161) (ExhaleHeap@@2 T@PolymorphicMapType_105161) (Mask@@6 T@PolymorphicMapType_105182) (pm_f_38@@2 T@Field_70297_350585) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (=> (and (HasDirectPerm_70297_350649 Mask@@6 null pm_f_38@@2) (IsWandField_70297_352225 pm_f_38@@2)) (and (and (and (forall ((o2_38@@3 T@Ref) (f_76@@3 T@Field_105221_53) ) (!  (=> (select (|PolymorphicMapType_105710_105221_53#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@9) null (WandMaskField_70297 pm_f_38@@2))) o2_38@@3 f_76@@3) (= (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@9) o2_38@@3 f_76@@3) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@2) o2_38@@3 f_76@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@2) o2_38@@3 f_76@@3))
)) (forall ((o2_38@@4 T@Ref) (f_76@@4 T@Field_105234_105235) ) (!  (=> (select (|PolymorphicMapType_105710_105221_105235#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@9) null (WandMaskField_70297 pm_f_38@@2))) o2_38@@4 f_76@@4) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@9) o2_38@@4 f_76@@4) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@@2) o2_38@@4 f_76@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@@2) o2_38@@4 f_76@@4))
))) (forall ((o2_38@@5 T@Ref) (f_76@@5 T@Field_70297_350585) ) (!  (=> (select (|PolymorphicMapType_105710_105221_350585#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@9) null (WandMaskField_70297 pm_f_38@@2))) o2_38@@5 f_76@@5) (= (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@9) o2_38@@5 f_76@@5) (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| ExhaleHeap@@2) o2_38@@5 f_76@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| ExhaleHeap@@2) o2_38@@5 f_76@@5))
))) (forall ((o2_38@@6 T@Ref) (f_76@@6 T@Field_70297_350718) ) (!  (=> (select (|PolymorphicMapType_105710_105221_351698#PolymorphicMapType_105710| (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@9) null (WandMaskField_70297 pm_f_38@@2))) o2_38@@6 f_76@@6) (= (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@9) o2_38@@6 f_76@@6) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@2) o2_38@@6 f_76@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@2) o2_38@@6 f_76@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@6) (IsWandField_70297_352225 pm_f_38@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1@@3 (Array T@EdgeDomainType Bool)) (u_3@@1 T@Ref) (v_2@@3 T@Ref) (w_2@@0 T@Ref) ) (!  (=> (and (exists_path_ EG_1@@3 u_3@@1 w_2@@0) (exists_path_ EG_1@@3 w_2@@0 v_2@@3)) (exists_path_ EG_1@@3 u_3@@1 v_2@@3))
 :qid |stdinbpl.1043:15|
 :skolemid |92|
 :pattern ( (exists_path EG_1@@3 u_3@@1 w_2@@0) (exists_path EG_1@@3 w_2@@0 v_2@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_105161) (Mask@@7 T@PolymorphicMapType_105182) (refs@@2 (Array T@Ref Bool)) ) (!  (=> (state Heap@@10 Mask@@7) (= (|$$'| Heap@@10 refs@@2) (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@10 refs@@2)) (FrameFragment_8621 (|$$#condqp2| Heap@@10 refs@@2))) refs@@2)))
 :qid |stdinbpl.1120:15|
 :skolemid |101|
 :pattern ( (state Heap@@10 Mask@@7) (|$$'| Heap@@10 refs@@2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_105161) (ExhaleHeap@@3 T@PolymorphicMapType_105161) (Mask@@8 T@PolymorphicMapType_105182) (o_71 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@8) (=> (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@11) o_71 $allocated) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@3) o_71 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@8) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@3) o_71 $allocated))
)))
(assert (forall ((p T@Field_70297_350585) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_105221_105221 p v_1 p w))
 :qid |stdinbpl.739:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_105221_105221 p v_1 p w))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_105161) (Heap1Heap T@PolymorphicMapType_105161) (refs@@3 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select refs@@3 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select refs@@3 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select refs@@3 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap2Heap) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3)) l_8) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap1Heap) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3)) l_8)))) (= (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3)))
 :qid |stdinbpl.1130:15|
 :skolemid |102|
 :pattern ( (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_105161) (Heap1Heap@@0 T@PolymorphicMapType_105161) (refs@@4 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select refs@@4 (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select refs@@4 (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select refs@@4 (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap2Heap@@0) (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4)) r_6) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap1Heap@@0) (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4)) r_6)))) (= (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4)))
 :qid |stdinbpl.1140:15|
 :skolemid |103|
 :pattern ( (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert  (not (IsPredicateField_70297_70298 l_8)))
(assert  (not (IsWandField_70297_70298 l_8)))
(assert  (not (IsPredicateField_70297_70298 r_6)))
(assert  (not (IsWandField_70297_70298 r_6)))
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
(assert (forall ((Heap@@13 T@PolymorphicMapType_105161) (ExhaleHeap@@5 T@PolymorphicMapType_105161) (Mask@@18 T@PolymorphicMapType_105182) (o_71@@0 T@Ref) (f_76@@7 T@Field_70297_350718) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_70297_355516 Mask@@18 o_71@@0 f_76@@7) (= (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@13) o_71@@0 f_76@@7) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@5) o_71@@0 f_76@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| ExhaleHeap@@5) o_71@@0 f_76@@7))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_105161) (ExhaleHeap@@6 T@PolymorphicMapType_105161) (Mask@@19 T@PolymorphicMapType_105182) (o_71@@1 T@Ref) (f_76@@8 T@Field_70297_350585) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_70297_350649 Mask@@19 o_71@@1 f_76@@8) (= (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@14) o_71@@1 f_76@@8) (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| ExhaleHeap@@6) o_71@@1 f_76@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| ExhaleHeap@@6) o_71@@1 f_76@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_105161) (ExhaleHeap@@7 T@PolymorphicMapType_105161) (Mask@@20 T@PolymorphicMapType_105182) (o_71@@2 T@Ref) (f_76@@9 T@Field_105221_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_70297_53 Mask@@20 o_71@@2 f_76@@9) (= (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@15) o_71@@2 f_76@@9) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@7) o_71@@2 f_76@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| ExhaleHeap@@7) o_71@@2 f_76@@9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_105161) (ExhaleHeap@@8 T@PolymorphicMapType_105161) (Mask@@21 T@PolymorphicMapType_105182) (o_71@@3 T@Ref) (f_76@@10 T@Field_105234_105235) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_70297_70298 Mask@@21 o_71@@3 f_76@@10) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@16) o_71@@3 f_76@@10) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@@8) o_71@@3 f_76@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@@8) o_71@@3 f_76@@10))
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
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_105161) (Heap1Heap@@1 T@PolymorphicMapType_105161) (g0@@2 (Array T@Ref Bool)) (g1@@2 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g0@@2 (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2))) (< NoPerm FullPerm))  (and (select g0@@2 (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2))) (< NoPerm FullPerm))) (=> (and (select g0@@2 (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap2Heap@@1) (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2)) l_8) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap1Heap@@1) (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2)) l_8)))) (= (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2)))
 :qid |stdinbpl.1353:15|
 :skolemid |130|
 :pattern ( (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@2 g1@@2) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@2 g1@@2) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_105161) (Heap1Heap@@2 T@PolymorphicMapType_105161) (g0@@3 (Array T@Ref Bool)) (g1@@3 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g0@@3 (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3))) (< NoPerm FullPerm))  (and (select g0@@3 (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3))) (< NoPerm FullPerm))) (=> (and (select g0@@3 (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap2Heap@@2) (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3)) r_6) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap1Heap@@2) (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3)) r_6)))) (= (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3)))
 :qid |stdinbpl.1363:15|
 :skolemid |131|
 :pattern ( (|apply_TCFraming#condqp4| Heap2Heap@@2 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@2 g0@@3 g1@@3) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap2Heap@@3 T@PolymorphicMapType_105161) (Heap1Heap@@3 T@PolymorphicMapType_105161) (g0@@4 (Array T@Ref Bool)) (g1@@4 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g1@@4 (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4))) (< NoPerm FullPerm))  (and (select g1@@4 (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4))) (< NoPerm FullPerm))) (=> (and (select g1@@4 (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap2Heap@@3) (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4)) l_8) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap1Heap@@3) (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4)) l_8)))) (= (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4)))
 :qid |stdinbpl.1373:15|
 :skolemid |132|
 :pattern ( (|apply_TCFraming#condqp5| Heap2Heap@@3 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@3 g0@@4 g1@@4) (succHeapTrans Heap2Heap@@3 Heap1Heap@@3))
)))
(assert (forall ((Heap2Heap@@4 T@PolymorphicMapType_105161) (Heap1Heap@@4 T@PolymorphicMapType_105161) (g0@@5 (Array T@Ref Bool)) (g1@@5 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g1@@5 (|sk_apply_TCFraming#condqp6| (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5))) (< NoPerm FullPerm))  (and (select g1@@5 (|sk_apply_TCFraming#condqp6| (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5))) (< NoPerm FullPerm))) (=> (and (select g1@@5 (|sk_apply_TCFraming#condqp6| (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap2Heap@@4) (|sk_apply_TCFraming#condqp6| (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5)) r_6) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap1Heap@@4) (|sk_apply_TCFraming#condqp6| (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5)) r_6)))) (= (|apply_TCFraming#condqp6| Heap2Heap@@4 g0@@5 g1@@5) (|apply_TCFraming#condqp6| Heap1Heap@@4 g0@@5 g1@@5)))
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
(assert (forall ((Heap@@17 T@PolymorphicMapType_105161) (Mask@@22 T@PolymorphicMapType_105182) (g0@@6 (Array T@Ref Bool)) (g1@@6 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@17 Mask@@22) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp3| Heap@@17 g0@@6 g1@@6)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp4| Heap@@17 g0@@6 g1@@6)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp5| Heap@@17 g0@@6 g1@@6)) (FrameFragment_8621 (|apply_TCFraming#condqp6| Heap@@17 g0@@6 g1@@6))))) g0@@6 g1@@6))) (=> (and (forall ((n$0_13@@1 T@Ref) ) (!  (=> (select g0@@6 n$0_13@@1) (not (select g1@@6 n$0_13@@1)))
 :qid |stdinbpl.1427:359|
 :skolemid |145|
 :pattern ( (select g0@@6 n$0_13@@1) (select g1@@6 n$0_13@@1))
)) (forall ((n$1_12@@1 T@Ref) ) (!  (=> (select g1@@6 n$1_12@@1) (not (select g0@@6 n$1_12@@1)))
 :qid |stdinbpl.1430:16|
 :skolemid |146|
 :pattern ( (select g0@@6 n$1_12@@1) (select g1@@6 n$1_12@@1))
))) (forall ((u_2_1 T@Ref) (v_2_1 T@Ref) ) (!  (=> (and (select g0@@6 u_2_1) (and (select g0@@6 v_2_1) (not (exists_path ($$ Heap@@17 g0@@6) u_2_1 v_2_1)))) (not (exists_path ($$ Heap@@17 (|Set#Union_70542| g0@@6 g1@@6)) u_2_1 v_2_1)))
 :qid |stdinbpl.1433:17|
 :skolemid |147|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@17 g0@@6)) (FrameFragment_8621 (|$$#condqp2| Heap@@17 g0@@6))) g0@@6) u_2_1 v_2_1))
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@17 (|Set#Union_70542| g0@@6 g1@@6))) (FrameFragment_8621 (|$$#condqp2| Heap@@17 (|Set#Union_70542| g0@@6 g1@@6)))) (|Set#Union_70542| g0@@6 g1@@6)) u_2_1 v_2_1))
))))
 :qid |stdinbpl.1425:15|
 :skolemid |148|
 :pattern ( (state Heap@@17 Mask@@22) (|apply_TCFraming'| Heap@@17 g0@@6 g1@@6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_105161) (Mask@@23 T@PolymorphicMapType_105182) (g0@@7 (Array T@Ref Bool)) (g1@@7 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@18 Mask@@23) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp3| Heap@@18 g0@@7 g1@@7)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp4| Heap@@18 g0@@7 g1@@7)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp5| Heap@@18 g0@@7 g1@@7)) (FrameFragment_8621 (|apply_TCFraming#condqp6| Heap@@18 g0@@7 g1@@7))))) g0@@7 g1@@7))) (=> (and (forall ((n$0_13@@2 T@Ref) ) (!  (=> (select g0@@7 n$0_13@@2) (not (select g1@@7 n$0_13@@2)))
 :qid |stdinbpl.1440:359|
 :skolemid |149|
 :pattern ( (select g0@@7 n$0_13@@2) (select g1@@7 n$0_13@@2))
)) (forall ((n$1_12@@2 T@Ref) ) (!  (=> (select g1@@7 n$1_12@@2) (not (select g0@@7 n$1_12@@2)))
 :qid |stdinbpl.1443:16|
 :skolemid |150|
 :pattern ( (select g0@@7 n$1_12@@2) (select g1@@7 n$1_12@@2))
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
(assert (forall ((Heap@@19 T@PolymorphicMapType_105161) (Mask@@24 T@PolymorphicMapType_105182) (g0@@8 (Array T@Ref Bool)) (g1@@8 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@19 Mask@@24) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp3| Heap@@19 g0@@8 g1@@8)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp4| Heap@@19 g0@@8 g1@@8)) (CombineFrames (FrameFragment_8621 (|apply_TCFraming#condqp5| Heap@@19 g0@@8 g1@@8)) (FrameFragment_8621 (|apply_TCFraming#condqp6| Heap@@19 g0@@8 g1@@8))))) g0@@8 g1@@8))) (=> (and (forall ((n$0_13@@3 T@Ref) ) (!  (=> (select g0@@8 n$0_13@@3) (not (select g1@@8 n$0_13@@3)))
 :qid |stdinbpl.1391:359|
 :skolemid |134|
 :pattern ( (select g0@@8 n$0_13@@3) (select g1@@8 n$0_13@@3))
)) (forall ((n$1_12@@3 T@Ref) ) (!  (=> (select g1@@8 n$1_12@@3) (not (select g0@@8 n$1_12@@3)))
 :qid |stdinbpl.1394:16|
 :skolemid |135|
 :pattern ( (select g0@@8 n$1_12@@3) (select g1@@8 n$1_12@@3))
))) (|Set#Equal_70542| (|Set#Union_70542| g0@@8 g1@@8) (|Set#Union_70542| g1@@8 g0@@8))))
 :qid |stdinbpl.1389:15|
 :skolemid |136|
 :pattern ( (state Heap@@19 Mask@@24) (|apply_TCFraming'| Heap@@19 g0@@8 g1@@8))
)))
(assert (forall ((EG_1@@5 (Array T@EdgeDomainType Bool)) (p_1@@0 T@Ref) (s_2@@0 T@Ref) ) (! (= (edge_ EG_1@@5 p_1@@0 s_2@@0) (select EG_1@@5 (create_edge p_1@@0 s_2@@0)))
 :qid |stdinbpl.1004:15|
 :skolemid |84|
 :pattern ( (select EG_1@@5 (create_edge p_1@@0 s_2@@0)))
 :pattern ( (edge EG_1@@5 p_1@@0 s_2@@0))
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
(assert (forall ((p_1@@1 T@Ref) (s_2@@1 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@1 s_2@@1)) p_1@@1) (= (edge_succ (create_edge p_1@@1 s_2@@1)) s_2@@1))
 :qid |stdinbpl.955:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@1 s_2@@1))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_105161) (o_70 T@Ref) (f_77 T@Field_70297_350585) (v T@FrameType) ) (! (succHeap Heap@@21 (PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@21) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@21) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@21) (store (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@21) o_70 f_77 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@21) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@21) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@21) (store (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@21) o_70 f_77 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_105161) (o_70@@0 T@Ref) (f_77@@0 T@Field_70297_350718) (v@@0 T@PolymorphicMapType_105710) ) (! (succHeap Heap@@22 (PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@22) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@22) (store (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@22) o_70@@0 f_77@@0 v@@0) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@22) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@22) (store (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@22) o_70@@0 f_77@@0 v@@0) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_105161) (o_70@@1 T@Ref) (f_77@@1 T@Field_105234_105235) (v@@1 T@Ref) ) (! (succHeap Heap@@23 (PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@23) (store (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@23) o_70@@1 f_77@@1 v@@1) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@23) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_105161 (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@23) (store (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@23) o_70@@1 f_77@@1 v@@1) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@23) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_105161) (o_70@@2 T@Ref) (f_77@@2 T@Field_105221_53) (v@@2 Bool) ) (! (succHeap Heap@@24 (PolymorphicMapType_105161 (store (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@24) o_70@@2 f_77@@2 v@@2) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@24) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@24) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_105161 (store (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@24) o_70@@2 f_77@@2 v@@2) (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@24) (|PolymorphicMapType_105161_70297_350762#PolymorphicMapType_105161| Heap@@24) (|PolymorphicMapType_105161_105221_350585#PolymorphicMapType_105161| Heap@@24)))
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
(assert (forall ((o_70@@3 T@Ref) (f_75 T@Field_105234_105235) (Heap@@25 T@PolymorphicMapType_105161) ) (!  (=> (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@25) o_70@@3 $allocated) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@25) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@25) o_70@@3 f_75) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@25) o_70@@3 f_75))
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
(assert (forall ((Heap@@26 T@PolymorphicMapType_105161) (Mask@@26 T@PolymorphicMapType_105182) (refs@@5 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@26 Mask@@26) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@26 refs@@5)) (FrameFragment_8621 (|$$#condqp2| Heap@@26 refs@@5))) refs@@5))) (forall ((p_1_1 T@Ref) (s_1 T@Ref) ) (!  (=> (and (select refs@@5 p_1_1) (exists_path (|$$'| Heap@@26 refs@@5) p_1_1 s_1)) (select refs@@5 s_1))
 :qid |stdinbpl.1155:176|
 :skolemid |106|
 :pattern ( (select refs@@5 p_1_1) (select refs@@5 s_1) (exists_path (|$$'| Heap@@26 refs@@5) p_1_1 s_1))
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
(assert (forall ((EG_1@@7 (Array T@EdgeDomainType Bool)) (p_1@@2 T@Ref) (s_2@@2 T@Ref) ) (! (= (edge EG_1@@7 p_1@@2 s_2@@2) (edge_ EG_1@@7 p_1@@2 s_2@@2))
 :qid |stdinbpl.998:15|
 :skolemid |83|
 :pattern ( (edge EG_1@@7 p_1@@2 s_2@@2))
)))
(assert (forall ((EG_1@@8 (Array T@EdgeDomainType Bool)) (start@@0 T@Ref) (end@@0 T@Ref) ) (! (= (exists_path EG_1@@8 start@@0 end@@0) (exists_path_ EG_1@@8 start@@0 end@@0))
 :qid |stdinbpl.1028:15|
 :skolemid |89|
 :pattern ( (exists_path EG_1@@8 start@@0 end@@0))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_105161) (g0@@10 (Array T@Ref Bool)) (g1@@10 (Array T@Ref Bool)) ) (!  (and (= (apply_TCFraming Heap@@28 g0@@10 g1@@10) (|apply_TCFraming'| Heap@@28 g0@@10 g1@@10)) (dummyFunction_11901 (|apply_TCFraming#triggerStateless| g0@@10 g1@@10)))
 :qid |stdinbpl.1332:15|
 :skolemid |127|
 :pattern ( (apply_TCFraming Heap@@28 g0@@10 g1@@10))
)))
; Valid

