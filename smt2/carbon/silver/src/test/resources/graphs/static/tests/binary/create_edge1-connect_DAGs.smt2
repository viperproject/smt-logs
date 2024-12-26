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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_105161)
(declare-fun QPMask@36 () T@PolymorphicMapType_105182)
(declare-fun g0@@11 () (Array T@Ref Bool))
(declare-fun g1@@11 () (Array T@Ref Bool))
(declare-fun dummyFunction_70298 (T@Ref) Bool)
(declare-fun neverTriggered157 (T@Ref) Bool)
(declare-fun QPMask@35 () T@PolymorphicMapType_105182)
(declare-fun qpRange157 (T@Ref) Bool)
(declare-fun invRecv157 (T@Ref) T@Ref)
(declare-fun QPMask@37 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered158 (T@Ref) Bool)
(declare-fun x@@6 () T@Ref)
(declare-fun QPMask@38 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered155 (T@Ref) Bool)
(declare-fun qpRange155 (T@Ref) Bool)
(declare-fun invRecv155 (T@Ref) T@Ref)
(declare-fun QPMask@39 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered156 (T@Ref) Bool)
(declare-fun n_44 () T@Ref)
(declare-fun n$12_3 () T@Ref)
(declare-fun n$11_3 () T@Ref)
(declare-fun qpRange154 (T@Ref) Bool)
(declare-fun invRecv154 (T@Ref) T@Ref)
(declare-fun QPMask@34 () T@PolymorphicMapType_105182)
(declare-fun qpRange153 (T@Ref) Bool)
(declare-fun invRecv153 (T@Ref) T@Ref)
(declare-fun n$1_2 () T@Ref)
(declare-fun n$0_8 () T@Ref)
(declare-fun neverTriggered169 (T@Ref) Bool)
(declare-fun Heap@@29 () T@PolymorphicMapType_105161)
(declare-fun QPMask@8 () T@PolymorphicMapType_105182)
(declare-fun QPMask@5 () T@PolymorphicMapType_105182)
(declare-fun qpRange169 (T@Ref) Bool)
(declare-fun invRecv169 (T@Ref) T@Ref)
(declare-fun neverTriggered170 (T@Ref) Bool)
(declare-fun QPMask@9 () T@PolymorphicMapType_105182)
(declare-fun qpRange170 (T@Ref) Bool)
(declare-fun invRecv170 (T@Ref) T@Ref)
(declare-fun neverTriggered171 (T@Ref) Bool)
(declare-fun QPMask@10 () T@PolymorphicMapType_105182)
(declare-fun qpRange171 (T@Ref) Bool)
(declare-fun invRecv171 (T@Ref) T@Ref)
(declare-fun neverTriggered172 (T@Ref) Bool)
(declare-fun QPMask@11 () T@PolymorphicMapType_105182)
(declare-fun qpRange172 (T@Ref) Bool)
(declare-fun invRecv172 (T@Ref) T@Ref)
(declare-fun n$1_4 () T@Ref)
(declare-fun n$0_10 () T@Ref)
(declare-fun neverTriggered173 (T@Ref) Bool)
(declare-fun QPMask@12 () T@PolymorphicMapType_105182)
(declare-fun qpRange173 (T@Ref) Bool)
(declare-fun invRecv173 (T@Ref) T@Ref)
(declare-fun neverTriggered174 (T@Ref) Bool)
(declare-fun QPMask@13 () T@PolymorphicMapType_105182)
(declare-fun qpRange174 (T@Ref) Bool)
(declare-fun invRecv174 (T@Ref) T@Ref)
(declare-fun neverTriggered175 (T@Ref) Bool)
(declare-fun QPMask@14 () T@PolymorphicMapType_105182)
(declare-fun qpRange175 (T@Ref) Bool)
(declare-fun invRecv175 (T@Ref) T@Ref)
(declare-fun neverTriggered176 (T@Ref) Bool)
(declare-fun QPMask@15 () T@PolymorphicMapType_105182)
(declare-fun qpRange176 (T@Ref) Bool)
(declare-fun invRecv176 (T@Ref) T@Ref)
(declare-fun arg_g@0 () (Array T@Ref Bool))
(declare-fun n$2_2 () T@Ref)
(declare-fun n$1_6 () T@Ref)
(declare-fun n_16 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_105161)
(declare-fun n$12_2 () T@Ref)
(declare-fun n$11_2 () T@Ref)
(declare-fun Mask@8 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered159 (T@Ref) Bool)
(declare-fun QPMask@24 () T@PolymorphicMapType_105182)
(declare-fun qpRange159 (T@Ref) Bool)
(declare-fun invRecv159 (T@Ref) T@Ref)
(declare-fun neverTriggered160 (T@Ref) Bool)
(declare-fun QPMask@25 () T@PolymorphicMapType_105182)
(declare-fun qpRange160 (T@Ref) Bool)
(declare-fun invRecv160 (T@Ref) T@Ref)
(declare-fun ExhaleHeap@3 () T@PolymorphicMapType_105161)
(declare-fun QPMask@23 () T@PolymorphicMapType_105182)
(declare-fun x1_2 () T@Ref)
(declare-fun x0 () T@Ref)
(declare-fun QPMask@21 () T@PolymorphicMapType_105182)
(declare-fun perm@6 () Real)
(declare-fun Mask@6 () T@PolymorphicMapType_105182)
(declare-fun perm@7 () Real)
(declare-fun Mask@7 () T@PolymorphicMapType_105182)
(declare-fun QPMask@22 () T@PolymorphicMapType_105182)
(declare-fun qpRange179 (T@Ref) Bool)
(declare-fun invRecv179 (T@Ref) T@Ref)
(declare-fun qpRange180 (T@Ref) Bool)
(declare-fun invRecv180 (T@Ref) T@Ref)
(declare-fun Mask@5 () T@PolymorphicMapType_105182)
(declare-fun Mask@4 () T@PolymorphicMapType_105182)
(declare-fun perm@5 () Real)
(declare-fun QPMask@20 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered177 (T@Ref) Bool)
(declare-fun qpRange177 (T@Ref) Bool)
(declare-fun invRecv177 (T@Ref) T@Ref)
(declare-fun neverTriggered178 (T@Ref) Bool)
(declare-fun qpRange178 (T@Ref) Bool)
(declare-fun invRecv178 (T@Ref) T@Ref)
(declare-fun perm@4 () Real)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_105161)
(declare-fun QPMask@19 () T@PolymorphicMapType_105182)
(declare-fun arg_g_1@0 () (Array T@Ref Bool))
(declare-fun QPMask@17 () T@PolymorphicMapType_105182)
(declare-fun perm@2 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_105182)
(declare-fun perm@3 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_105182)
(declare-fun QPMask@18 () T@PolymorphicMapType_105182)
(declare-fun qpRange183 (T@Ref) Bool)
(declare-fun invRecv183 (T@Ref) T@Ref)
(declare-fun qpRange184 (T@Ref) Bool)
(declare-fun invRecv184 (T@Ref) T@Ref)
(declare-fun n$2_4_1 () T@Ref)
(declare-fun n$1_8 () T@Ref)
(declare-fun Mask@1 () T@PolymorphicMapType_105182)
(declare-fun Mask@0 () T@PolymorphicMapType_105182)
(declare-fun perm@1 () Real)
(declare-fun QPMask@16 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered181 (T@Ref) Bool)
(declare-fun qpRange181 (T@Ref) Bool)
(declare-fun invRecv181 (T@Ref) T@Ref)
(declare-fun neverTriggered182 (T@Ref) Bool)
(declare-fun qpRange182 (T@Ref) Bool)
(declare-fun invRecv182 (T@Ref) T@Ref)
(declare-fun perm@0 () Real)
(declare-fun QPMask@26 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered167 (T@Ref) Bool)
(declare-fun qpRange167 (T@Ref) Bool)
(declare-fun invRecv167 (T@Ref) T@Ref)
(declare-fun QPMask@27 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered168 (T@Ref) Bool)
(declare-fun u$2 () T@Ref)
(declare-fun v$2 () T@Ref)
(declare-fun QPMask@28 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered165 (T@Ref) Bool)
(declare-fun qpRange165 (T@Ref) Bool)
(declare-fun invRecv165 (T@Ref) T@Ref)
(declare-fun QPMask@29 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered166 (T@Ref) Bool)
(declare-fun u$1 () T@Ref)
(declare-fun v$1 () T@Ref)
(declare-fun QPMask@30 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered163 (T@Ref) Bool)
(declare-fun qpRange163 (T@Ref) Bool)
(declare-fun invRecv163 (T@Ref) T@Ref)
(declare-fun QPMask@31 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered164 (T@Ref) Bool)
(declare-fun u$0 () T@Ref)
(declare-fun v$0 () T@Ref)
(declare-fun QPMask@32 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered161 (T@Ref) Bool)
(declare-fun qpRange161 (T@Ref) Bool)
(declare-fun invRecv161 (T@Ref) T@Ref)
(declare-fun QPMask@33 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered162 (T@Ref) Bool)
(declare-fun u_29 () T@Ref)
(declare-fun v_29 () T@Ref)
(declare-fun QPMask@40 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered151 (T@Ref) Bool)
(declare-fun qpRange151 (T@Ref) Bool)
(declare-fun invRecv151 (T@Ref) T@Ref)
(declare-fun QPMask@41 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered152 (T@Ref) Bool)
(declare-fun m_7 () T@Ref)
(declare-fun QPMask@42 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered149 (T@Ref) Bool)
(declare-fun qpRange149 (T@Ref) Bool)
(declare-fun invRecv149 (T@Ref) T@Ref)
(declare-fun QPMask@43 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered150 (T@Ref) Bool)
(declare-fun n_43 () T@Ref)
(declare-fun QPMask@44 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered147 (T@Ref) Bool)
(declare-fun qpRange147 (T@Ref) Bool)
(declare-fun invRecv147 (T@Ref) T@Ref)
(declare-fun QPMask@45 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered148 (T@Ref) Bool)
(declare-fun n_42 () T@Ref)
(declare-fun QPMask@6 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered145 (T@Ref) Bool)
(declare-fun qpRange145 (T@Ref) Bool)
(declare-fun invRecv145 (T@Ref) T@Ref)
(declare-fun QPMask@7 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered146 (T@Ref) Bool)
(declare-fun n$6_10 () T@Ref)
(declare-fun n$5_7 () T@Ref)
(declare-fun qpRange144 (T@Ref) Bool)
(declare-fun invRecv144 (T@Ref) T@Ref)
(declare-fun QPMask@4 () T@PolymorphicMapType_105182)
(declare-fun qpRange143 (T@Ref) Bool)
(declare-fun invRecv143 (T@Ref) T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_105182)
(declare-fun QPMask@2 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered141 (T@Ref) Bool)
(declare-fun qpRange141 (T@Ref) Bool)
(declare-fun invRecv141 (T@Ref) T@Ref)
(declare-fun QPMask@3 () T@PolymorphicMapType_105182)
(declare-fun neverTriggered142 (T@Ref) Bool)
(declare-fun n$2_34 () T@Ref)
(declare-fun n$1_23 () T@Ref)
(declare-fun qpRange140 (T@Ref) Bool)
(declare-fun invRecv140 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_105182)
(declare-fun qpRange139 (T@Ref) Bool)
(declare-fun invRecv139 (T@Ref) T@Ref)
(set-info :boogie-vc-id connect_DAGs)
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
 (=> (= (ControlFlow 0 0) 350) (let ((anon220_Else_correct true))
(let ((anon220_Then_correct  (and (=> (= (ControlFlow 0 310) (- 0 315)) (forall ((n_14 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_14) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_14 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9575:21|
 :skolemid |1088|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_14 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@36) n_14 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_14 l_8))
))) (=> (forall ((n_14@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_14@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_14@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9575:21|
 :skolemid |1088|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_14@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@36) n_14@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_14@@0 l_8))
)) (and (=> (= (ControlFlow 0 310) (- 0 314)) (forall ((n_14@@1 T@Ref) (n_14_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14@@1 n_14_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n_14@@1)) (select (|Set#Union_70542| g0@@11 g1@@11) n_14_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_14@@1 n_14_1)))
 :qid |stdinbpl.9582:21|
 :skolemid |1089|
 :pattern ( (neverTriggered157 n_14@@1) (neverTriggered157 n_14_1))
))) (=> (forall ((n_14@@2 T@Ref) (n_14_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14@@2 n_14_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n_14@@2)) (select (|Set#Union_70542| g0@@11 g1@@11) n_14_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_14@@2 n_14_1@@0)))
 :qid |stdinbpl.9582:21|
 :skolemid |1089|
 :pattern ( (neverTriggered157 n_14@@2) (neverTriggered157 n_14_1@@0))
)) (and (=> (= (ControlFlow 0 310) (- 0 313)) (forall ((n_14@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_14@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@35) n_14@@3 l_8) NoPerm)))
 :qid |stdinbpl.9589:21|
 :skolemid |1090|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_14@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@36) n_14@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_14@@3 l_8))
))) (=> (forall ((n_14@@4 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_14@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@35) n_14@@4 l_8) NoPerm)))
 :qid |stdinbpl.9589:21|
 :skolemid |1090|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_14@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@36) n_14@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_14@@4 l_8))
)) (=> (and (forall ((n_14@@5 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_14@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange157 n_14@@5) (= (invRecv157 n_14@@5) n_14@@5)))
 :qid |stdinbpl.9595:26|
 :skolemid |1091|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_14@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@36) n_14@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_14@@5 l_8))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv157 o_4)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange157 o_4))) (= (invRecv157 o_4) o_4))
 :qid |stdinbpl.9599:26|
 :skolemid |1092|
 :pattern ( (invRecv157 o_4))
))) (and (=> (= (ControlFlow 0 310) (- 0 312)) (forall ((n_15 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_15) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_15 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9607:21|
 :skolemid |1093|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_15 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@37) n_15 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_15 r_6))
))) (=> (forall ((n_15@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_15@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_15@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9607:21|
 :skolemid |1093|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_15@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@37) n_15@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_15@@0 r_6))
)) (and (=> (= (ControlFlow 0 310) (- 0 311)) (forall ((n_15@@1 T@Ref) (n_15_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15@@1 n_15_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n_15@@1)) (select (|Set#Union_70542| g0@@11 g1@@11) n_15_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_15@@1 n_15_1)))
 :qid |stdinbpl.9614:21|
 :skolemid |1094|
 :pattern ( (neverTriggered158 n_15@@1) (neverTriggered158 n_15_1))
))) (=> (forall ((n_15@@2 T@Ref) (n_15_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15@@2 n_15_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n_15@@2)) (select (|Set#Union_70542| g0@@11 g1@@11) n_15_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_15@@2 n_15_1@@0)))
 :qid |stdinbpl.9614:21|
 :skolemid |1094|
 :pattern ( (neverTriggered158 n_15@@2) (neverTriggered158 n_15_1@@0))
)) (=> (= (ControlFlow 0 310) (- 0 309)) (forall ((n_15@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_15@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@35) n_15@@3 r_6) NoPerm)))
 :qid |stdinbpl.9621:21|
 :skolemid |1095|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_15@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@37) n_15@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n_15@@3 r_6))
))))))))))))))))
(let ((anon217_Else_correct  (=> (forall ((n_13 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_13) (exists_path ($$ PostHeap@0 (|Set#Union_70542| g0@@11 g1@@11)) x@@6 n_13))
 :qid |stdinbpl.9559:20|
 :skolemid |1087|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| PostHeap@0 (|Set#Union_70542| g0@@11 g1@@11))) (FrameFragment_8621 (|$$#condqp2| PostHeap@0 (|Set#Union_70542| g0@@11 g1@@11)))) (|Set#Union_70542| g0@@11 g1@@11)) x@@6 n_13))
)) (=> (and (state PostHeap@0 QPMask@35) (state PostHeap@0 QPMask@35)) (and (=> (= (ControlFlow 0 317) 310) anon220_Then_correct) (=> (= (ControlFlow 0 317) 316) anon220_Else_correct))))))
(let ((anon219_Then_correct  (and (=> (= (ControlFlow 0 302) (- 0 307)) (forall ((n$0_6 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$0_6) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9489:25|
 :skolemid |1077|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@38) n$0_6 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6 l_8))
))) (=> (forall ((n$0_6@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$0_6@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9489:25|
 :skolemid |1077|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@38) n$0_6@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6@@0 l_8))
)) (and (=> (= (ControlFlow 0 302) (- 0 306)) (forall ((n$0_6@@1 T@Ref) (n$0_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_6@@1 n$0_6_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$0_6@@1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$0_6_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_6@@1 n$0_6_1)))
 :qid |stdinbpl.9496:25|
 :skolemid |1078|
 :pattern ( (neverTriggered155 n$0_6@@1) (neverTriggered155 n$0_6_1))
))) (=> (forall ((n$0_6@@2 T@Ref) (n$0_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_6@@2 n$0_6_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$0_6@@2)) (select (|Set#Union_70542| g0@@11 g1@@11) n$0_6_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_6@@2 n$0_6_1@@0)))
 :qid |stdinbpl.9496:25|
 :skolemid |1078|
 :pattern ( (neverTriggered155 n$0_6@@2) (neverTriggered155 n$0_6_1@@0))
)) (and (=> (= (ControlFlow 0 302) (- 0 305)) (forall ((n$0_6@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$0_6@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@35) n$0_6@@3 l_8) NoPerm)))
 :qid |stdinbpl.9503:25|
 :skolemid |1079|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@38) n$0_6@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6@@3 l_8))
))) (=> (forall ((n$0_6@@4 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$0_6@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@35) n$0_6@@4 l_8) NoPerm)))
 :qid |stdinbpl.9503:25|
 :skolemid |1079|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@38) n$0_6@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6@@4 l_8))
)) (=> (and (forall ((n$0_6@@5 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$0_6@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange155 n$0_6@@5) (= (invRecv155 n$0_6@@5) n$0_6@@5)))
 :qid |stdinbpl.9509:30|
 :skolemid |1080|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@38) n$0_6@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_6@@5 l_8))
)) (forall ((o_4@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv155 o_4@@0)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange155 o_4@@0))) (= (invRecv155 o_4@@0) o_4@@0))
 :qid |stdinbpl.9513:30|
 :skolemid |1081|
 :pattern ( (invRecv155 o_4@@0))
))) (and (=> (= (ControlFlow 0 302) (- 0 304)) (forall ((n$0_7 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$0_7) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_7 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9521:25|
 :skolemid |1082|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_7 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@39) n$0_7 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_7 r_6))
))) (=> (forall ((n$0_7@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$0_7@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_7@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9521:25|
 :skolemid |1082|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_7@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@39) n$0_7@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_7@@0 r_6))
)) (and (=> (= (ControlFlow 0 302) (- 0 303)) (forall ((n$0_7@@1 T@Ref) (n$0_7_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_7@@1 n$0_7_2)) (select (|Set#Union_70542| g0@@11 g1@@11) n$0_7@@1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$0_7_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_7@@1 n$0_7_2)))
 :qid |stdinbpl.9528:25|
 :skolemid |1083|
 :pattern ( (neverTriggered156 n$0_7@@1) (neverTriggered156 n$0_7_2))
))) (=> (forall ((n$0_7@@2 T@Ref) (n$0_7_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_7@@2 n$0_7_2@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$0_7@@2)) (select (|Set#Union_70542| g0@@11 g1@@11) n$0_7_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_7@@2 n$0_7_2@@0)))
 :qid |stdinbpl.9528:25|
 :skolemid |1083|
 :pattern ( (neverTriggered156 n$0_7@@2) (neverTriggered156 n$0_7_2@@0))
)) (=> (= (ControlFlow 0 302) (- 0 301)) (forall ((n$0_7@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$0_7@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@35) n$0_7@@3 r_6) NoPerm)))
 :qid |stdinbpl.9535:25|
 :skolemid |1084|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_7@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@39) n$0_7@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$0_7@@3 r_6))
))))))))))))))))
(let ((anon78_correct true))
(let ((anon218_Then_correct  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_44) (and (=> (= (ControlFlow 0 308) 302) anon219_Then_correct) (=> (= (ControlFlow 0 308) 299) anon78_correct)))))
(let ((anon218_Else_correct  (=> (and (not (select (|Set#Union_70542| g0@@11 g1@@11) n_44)) (= (ControlFlow 0 300) 299)) anon78_correct)))
(let ((anon214_Else_correct  (=> (forall ((n$12_1 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$12_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$12_1 r_6) null))) (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$12_1 r_6)))
 :qid |stdinbpl.9471:20|
 :skolemid |1076|
 :pattern ( (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$12_1 r_6)))
 :pattern ( (select (|Set#Union_70542| g0@@11 g1@@11) n$12_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$12_1 r_6))
)) (=> (and (state PostHeap@0 QPMask@35) (state PostHeap@0 QPMask@35)) (and (and (=> (= (ControlFlow 0 318) 317) anon217_Else_correct) (=> (= (ControlFlow 0 318) 308) anon218_Then_correct)) (=> (= (ControlFlow 0 318) 300) anon218_Else_correct))))))
(let ((anon73_correct true))
(let ((anon216_Else_correct  (=> (and (not (and (select (|Set#Union_70542| g0@@11 g1@@11) n$12_3) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$12_3 r_6) null)))) (= (ControlFlow 0 295) 292)) anon73_correct)))
(let ((anon216_Then_correct  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$12_3) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$12_3 r_6) null))) (and (=> (= (ControlFlow 0 293) (- 0 294)) (HasDirectPerm_70297_70298 QPMask@35 n$12_3 r_6)) (=> (HasDirectPerm_70297_70298 QPMask@35 n$12_3 r_6) (=> (= (ControlFlow 0 293) 292) anon73_correct))))))
(let ((anon215_Else_correct  (=> (not (select (|Set#Union_70542| g0@@11 g1@@11) n$12_3)) (and (=> (= (ControlFlow 0 298) 293) anon216_Then_correct) (=> (= (ControlFlow 0 298) 295) anon216_Else_correct)))))
(let ((anon215_Then_correct  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$12_3) (and (=> (= (ControlFlow 0 296) (- 0 297)) (HasDirectPerm_70297_70298 QPMask@35 n$12_3 r_6)) (=> (HasDirectPerm_70297_70298 QPMask@35 n$12_3 r_6) (and (=> (= (ControlFlow 0 296) 293) anon216_Then_correct) (=> (= (ControlFlow 0 296) 295) anon216_Else_correct)))))))
(let ((anon211_Else_correct  (=> (forall ((n$11_1 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$11_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$11_1 l_8) null))) (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$11_1 l_8)))
 :qid |stdinbpl.9454:20|
 :skolemid |1075|
 :pattern ( (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$11_1 l_8)))
 :pattern ( (select (|Set#Union_70542| g0@@11 g1@@11) n$11_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$11_1 l_8))
)) (and (and (=> (= (ControlFlow 0 319) 318) anon214_Else_correct) (=> (= (ControlFlow 0 319) 296) anon215_Then_correct)) (=> (= (ControlFlow 0 319) 298) anon215_Else_correct)))))
(let ((anon67_correct true))
(let ((anon213_Else_correct  (=> (and (not (and (select (|Set#Union_70542| g0@@11 g1@@11) n$11_3) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$11_3 l_8) null)))) (= (ControlFlow 0 288) 285)) anon67_correct)))
(let ((anon213_Then_correct  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$11_3) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$11_3 l_8) null))) (and (=> (= (ControlFlow 0 286) (- 0 287)) (HasDirectPerm_70297_70298 QPMask@35 n$11_3 l_8)) (=> (HasDirectPerm_70297_70298 QPMask@35 n$11_3 l_8) (=> (= (ControlFlow 0 286) 285) anon67_correct))))))
(let ((anon212_Else_correct  (=> (not (select (|Set#Union_70542| g0@@11 g1@@11) n$11_3)) (and (=> (= (ControlFlow 0 291) 286) anon213_Then_correct) (=> (= (ControlFlow 0 291) 288) anon213_Else_correct)))))
(let ((anon212_Then_correct  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$11_3) (and (=> (= (ControlFlow 0 289) (- 0 290)) (HasDirectPerm_70297_70298 QPMask@35 n$11_3 l_8)) (=> (HasDirectPerm_70297_70298 QPMask@35 n$11_3 l_8) (and (=> (= (ControlFlow 0 289) 286) anon213_Then_correct) (=> (= (ControlFlow 0 289) 288) anon213_Else_correct)))))))
(let ((anon210_Else_correct  (and (=> (= (ControlFlow 0 320) (- 0 321)) (forall ((n$10_1 T@Ref) (n$10_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$10_1 n$10_1_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$10_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$10_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$10_1 n$10_1_1)))
 :qid |stdinbpl.9409:15|
 :skolemid |1069|
))) (=> (forall ((n$10_1@@0 T@Ref) (n$10_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$10_1@@0 n$10_1_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$10_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$10_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$10_1@@0 n$10_1_1@@0)))
 :qid |stdinbpl.9409:15|
 :skolemid |1069|
)) (=> (and (and (forall ((n$10_1@@1 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$10_1@@1) (< NoPerm FullPerm)) (and (qpRange154 n$10_1@@1) (= (invRecv154 n$10_1@@1) n$10_1@@1)))
 :qid |stdinbpl.9415:22|
 :skolemid |1070|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$10_1@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@35) n$10_1@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$10_1@@1 r_6))
)) (forall ((o_4@@1 T@Ref) ) (!  (=> (and (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv154 o_4@@1)) (< NoPerm FullPerm)) (qpRange154 o_4@@1)) (= (invRecv154 o_4@@1) o_4@@1))
 :qid |stdinbpl.9419:22|
 :skolemid |1071|
 :pattern ( (invRecv154 o_4@@1))
))) (and (forall ((n$10_1@@2 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$10_1@@2) (not (= n$10_1@@2 null)))
 :qid |stdinbpl.9425:22|
 :skolemid |1072|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$10_1@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@35) n$10_1@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$10_1@@2 r_6))
)) (forall ((o_4@@2 T@Ref) ) (!  (and (=> (and (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv154 o_4@@2)) (< NoPerm FullPerm)) (qpRange154 o_4@@2)) (and (=> (< NoPerm FullPerm) (= (invRecv154 o_4@@2) o_4@@2)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@35) o_4@@2 r_6) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@34) o_4@@2 r_6) FullPerm)))) (=> (not (and (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv154 o_4@@2)) (< NoPerm FullPerm)) (qpRange154 o_4@@2))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@35) o_4@@2 r_6) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@34) o_4@@2 r_6))))
 :qid |stdinbpl.9431:22|
 :skolemid |1073|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@35) o_4@@2 r_6))
)))) (=> (and (and (and (and (forall ((o_4@@3 T@Ref) (f_5 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@34) o_4@@3 f_5) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@35) o_4@@3 f_5)))
 :qid |stdinbpl.9435:29|
 :skolemid |1074|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@34) o_4@@3 f_5))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@35) o_4@@3 f_5))
)) (forall ((o_4@@4 T@Ref) (f_5@@0 T@Field_105234_105235) ) (!  (=> (not (= f_5@@0 r_6)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@34) o_4@@4 f_5@@0) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@35) o_4@@4 f_5@@0)))
 :qid |stdinbpl.9435:29|
 :skolemid |1074|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@34) o_4@@4 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@35) o_4@@4 f_5@@0))
))) (forall ((o_4@@5 T@Ref) (f_5@@1 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@34) o_4@@5 f_5@@1) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@35) o_4@@5 f_5@@1)))
 :qid |stdinbpl.9435:29|
 :skolemid |1074|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@34) o_4@@5 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@35) o_4@@5 f_5@@1))
))) (forall ((o_4@@6 T@Ref) (f_5@@2 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@34) o_4@@6 f_5@@2) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@35) o_4@@6 f_5@@2)))
 :qid |stdinbpl.9435:29|
 :skolemid |1074|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@34) o_4@@6 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@35) o_4@@6 f_5@@2))
))) (state PostHeap@0 QPMask@35)) (and (and (=> (= (ControlFlow 0 320) 319) anon211_Else_correct) (=> (= (ControlFlow 0 320) 289) anon212_Then_correct)) (=> (= (ControlFlow 0 320) 291) anon212_Else_correct))))))))
(let ((anon210_Then_correct true))
(let ((anon209_Else_correct  (and (=> (= (ControlFlow 0 322) (- 0 323)) (forall ((n$9_1 T@Ref) (n$9_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$9_1 n$9_1_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$9_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$9_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$9_1 n$9_1_1)))
 :qid |stdinbpl.9370:15|
 :skolemid |1063|
))) (=> (forall ((n$9_1@@0 T@Ref) (n$9_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$9_1@@0 n$9_1_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$9_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$9_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$9_1@@0 n$9_1_1@@0)))
 :qid |stdinbpl.9370:15|
 :skolemid |1063|
)) (=> (and (and (forall ((n$9_1@@1 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$9_1@@1) (< NoPerm FullPerm)) (and (qpRange153 n$9_1@@1) (= (invRecv153 n$9_1@@1) n$9_1@@1)))
 :qid |stdinbpl.9376:22|
 :skolemid |1064|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$9_1@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@34) n$9_1@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$9_1@@1 l_8))
)) (forall ((o_4@@7 T@Ref) ) (!  (=> (and (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv153 o_4@@7)) (< NoPerm FullPerm)) (qpRange153 o_4@@7)) (= (invRecv153 o_4@@7) o_4@@7))
 :qid |stdinbpl.9380:22|
 :skolemid |1065|
 :pattern ( (invRecv153 o_4@@7))
))) (and (forall ((n$9_1@@2 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$9_1@@2) (not (= n$9_1@@2 null)))
 :qid |stdinbpl.9386:22|
 :skolemid |1066|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$9_1@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@34) n$9_1@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| PostHeap@0) n$9_1@@2 l_8))
)) (forall ((o_4@@8 T@Ref) ) (!  (and (=> (and (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv153 o_4@@8)) (< NoPerm FullPerm)) (qpRange153 o_4@@8)) (and (=> (< NoPerm FullPerm) (= (invRecv153 o_4@@8) o_4@@8)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@34) o_4@@8 l_8) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_4@@8 l_8) FullPerm)))) (=> (not (and (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv153 o_4@@8)) (< NoPerm FullPerm)) (qpRange153 o_4@@8))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@34) o_4@@8 l_8) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_4@@8 l_8))))
 :qid |stdinbpl.9392:22|
 :skolemid |1067|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@34) o_4@@8 l_8))
)))) (=> (and (and (and (and (forall ((o_4@@9 T@Ref) (f_5@@3 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| ZeroMask) o_4@@9 f_5@@3) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@34) o_4@@9 f_5@@3)))
 :qid |stdinbpl.9396:29|
 :skolemid |1068|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| ZeroMask) o_4@@9 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@34) o_4@@9 f_5@@3))
)) (forall ((o_4@@10 T@Ref) (f_5@@4 T@Field_105234_105235) ) (!  (=> (not (= f_5@@4 l_8)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_4@@10 f_5@@4) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@34) o_4@@10 f_5@@4)))
 :qid |stdinbpl.9396:29|
 :skolemid |1068|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_4@@10 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@34) o_4@@10 f_5@@4))
))) (forall ((o_4@@11 T@Ref) (f_5@@5 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| ZeroMask) o_4@@11 f_5@@5) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@34) o_4@@11 f_5@@5)))
 :qid |stdinbpl.9396:29|
 :skolemid |1068|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| ZeroMask) o_4@@11 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@34) o_4@@11 f_5@@5))
))) (forall ((o_4@@12 T@Ref) (f_5@@6 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| ZeroMask) o_4@@12 f_5@@6) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@34) o_4@@12 f_5@@6)))
 :qid |stdinbpl.9396:29|
 :skolemid |1068|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| ZeroMask) o_4@@12 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@34) o_4@@12 f_5@@6))
))) (state PostHeap@0 QPMask@34)) (and (=> (= (ControlFlow 0 322) 284) anon210_Then_correct) (=> (= (ControlFlow 0 322) 320) anon210_Else_correct))))))))
(let ((anon209_Then_correct true))
(let ((anon208_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (not (select (|Set#Union_70542| g0@@11 g1@@11) null))) (and (=> (= (ControlFlow 0 324) 283) anon209_Then_correct) (=> (= (ControlFlow 0 324) 322) anon209_Else_correct)))))
(let ((anon110_correct true))
(let ((anon237_Else_correct  (=> (and (not (select g1@@11 n$1_2)) (= (ControlFlow 0 267) 264)) anon110_correct)))
(let ((anon237_Then_correct  (=> (select g1@@11 n$1_2) (and (=> (= (ControlFlow 0 265) (- 0 266)) (not (select g0@@11 n$1_2))) (=> (not (select g0@@11 n$1_2)) (=> (= (ControlFlow 0 265) 264) anon110_correct))))))
(let ((anon236_Else_correct true))
(let ((anon234_Else_correct  (=> (forall ((n$0_9_1 T@Ref) ) (!  (=> (select g0@@11 n$0_9_1) (not (select g1@@11 n$0_9_1)))
 :qid |stdinbpl.10150:24|
 :skolemid |1158|
 :pattern ( (select g0@@11 n$0_9_1) (select g1@@11 n$0_9_1))
)) (and (and (=> (= (ControlFlow 0 268) 263) anon236_Else_correct) (=> (= (ControlFlow 0 268) 265) anon237_Then_correct)) (=> (= (ControlFlow 0 268) 267) anon237_Else_correct)))))
(let ((anon106_correct true))
(let ((anon235_Else_correct  (=> (and (not (select g0@@11 n$0_8)) (= (ControlFlow 0 262) 259)) anon106_correct)))
(let ((anon235_Then_correct  (=> (select g0@@11 n$0_8) (and (=> (= (ControlFlow 0 260) (- 0 261)) (not (select g1@@11 n$0_8))) (=> (not (select g1@@11 n$0_8)) (=> (= (ControlFlow 0 260) 259) anon106_correct))))))
(let ((anon233_Then_correct  (and (=> (= (ControlFlow 0 269) (- 0 277)) (forall ((n_26_1 T@Ref) (n_26_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_26_1 n_26_2)) (select g0@@11 n_26_1)) (select g0@@11 n_26_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_26_1 n_26_2)))
 :qid |stdinbpl.10038:21|
 :skolemid |1142|
 :pattern ( (neverTriggered169 n_26_1) (neverTriggered169 n_26_2))
))) (=> (forall ((n_26_1@@0 T@Ref) (n_26_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_26_1@@0 n_26_2@@0)) (select g0@@11 n_26_1@@0)) (select g0@@11 n_26_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_26_1@@0 n_26_2@@0)))
 :qid |stdinbpl.10038:21|
 :skolemid |1142|
 :pattern ( (neverTriggered169 n_26_1@@0) (neverTriggered169 n_26_2@@0))
)) (and (=> (= (ControlFlow 0 269) (- 0 276)) (forall ((n_26_1@@1 T@Ref) ) (!  (=> (select g0@@11 n_26_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_26_1@@1 l_8) NoPerm)))
 :qid |stdinbpl.10045:21|
 :skolemid |1143|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_26_1@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n_26_1@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_26_1@@1 l_8))
))) (=> (forall ((n_26_1@@2 T@Ref) ) (!  (=> (select g0@@11 n_26_1@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_26_1@@2 l_8) NoPerm)))
 :qid |stdinbpl.10045:21|
 :skolemid |1143|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_26_1@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n_26_1@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_26_1@@2 l_8))
)) (=> (and (forall ((n_26_1@@3 T@Ref) ) (!  (=> (and (select g0@@11 n_26_1@@3) (< NoPerm FullPerm)) (and (qpRange169 n_26_1@@3) (= (invRecv169 n_26_1@@3) n_26_1@@3)))
 :qid |stdinbpl.10051:26|
 :skolemid |1144|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_26_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@8) n_26_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_26_1@@3 l_8))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (select g0@@11 (invRecv169 o_4@@13)) (and (< NoPerm FullPerm) (qpRange169 o_4@@13))) (= (invRecv169 o_4@@13) o_4@@13))
 :qid |stdinbpl.10055:26|
 :skolemid |1145|
 :pattern ( (invRecv169 o_4@@13))
))) (and (=> (= (ControlFlow 0 269) (- 0 275)) (forall ((n_27_1 T@Ref) (n_27_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_27_1 n_27_2)) (select g0@@11 n_27_1)) (select g0@@11 n_27_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_27_1 n_27_2)))
 :qid |stdinbpl.10066:21|
 :skolemid |1146|
 :pattern ( (neverTriggered170 n_27_1) (neverTriggered170 n_27_2))
))) (=> (forall ((n_27_1@@0 T@Ref) (n_27_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_27_1@@0 n_27_2@@0)) (select g0@@11 n_27_1@@0)) (select g0@@11 n_27_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_27_1@@0 n_27_2@@0)))
 :qid |stdinbpl.10066:21|
 :skolemid |1146|
 :pattern ( (neverTriggered170 n_27_1@@0) (neverTriggered170 n_27_2@@0))
)) (and (=> (= (ControlFlow 0 269) (- 0 274)) (forall ((n_27_1@@1 T@Ref) ) (!  (=> (select g0@@11 n_27_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_27_1@@1 r_6) NoPerm)))
 :qid |stdinbpl.10073:21|
 :skolemid |1147|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_27_1@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) n_27_1@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_27_1@@1 r_6))
))) (=> (forall ((n_27_1@@2 T@Ref) ) (!  (=> (select g0@@11 n_27_1@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_27_1@@2 r_6) NoPerm)))
 :qid |stdinbpl.10073:21|
 :skolemid |1147|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_27_1@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) n_27_1@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_27_1@@2 r_6))
)) (=> (and (forall ((n_27_1@@3 T@Ref) ) (!  (=> (and (select g0@@11 n_27_1@@3) (< NoPerm FullPerm)) (and (qpRange170 n_27_1@@3) (= (invRecv170 n_27_1@@3) n_27_1@@3)))
 :qid |stdinbpl.10079:26|
 :skolemid |1148|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_27_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@9) n_27_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_27_1@@3 r_6))
)) (forall ((o_4@@14 T@Ref) ) (!  (=> (and (select g0@@11 (invRecv170 o_4@@14)) (and (< NoPerm FullPerm) (qpRange170 o_4@@14))) (= (invRecv170 o_4@@14) o_4@@14))
 :qid |stdinbpl.10083:26|
 :skolemid |1149|
 :pattern ( (invRecv170 o_4@@14))
))) (and (=> (= (ControlFlow 0 269) (- 0 273)) (forall ((n_28_1 T@Ref) (n_28_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_28_1 n_28_2)) (select g1@@11 n_28_1)) (select g1@@11 n_28_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_28_1 n_28_2)))
 :qid |stdinbpl.10094:21|
 :skolemid |1150|
 :pattern ( (neverTriggered171 n_28_1) (neverTriggered171 n_28_2))
))) (=> (forall ((n_28_1@@0 T@Ref) (n_28_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_28_1@@0 n_28_2@@0)) (select g1@@11 n_28_1@@0)) (select g1@@11 n_28_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_28_1@@0 n_28_2@@0)))
 :qid |stdinbpl.10094:21|
 :skolemid |1150|
 :pattern ( (neverTriggered171 n_28_1@@0) (neverTriggered171 n_28_2@@0))
)) (and (=> (= (ControlFlow 0 269) (- 0 272)) (forall ((n_28_1@@1 T@Ref) ) (!  (=> (select g1@@11 n_28_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_28_1@@1 l_8) NoPerm)))
 :qid |stdinbpl.10101:21|
 :skolemid |1151|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_28_1@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) n_28_1@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_28_1@@1 l_8))
))) (=> (forall ((n_28_1@@2 T@Ref) ) (!  (=> (select g1@@11 n_28_1@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_28_1@@2 l_8) NoPerm)))
 :qid |stdinbpl.10101:21|
 :skolemid |1151|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_28_1@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) n_28_1@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_28_1@@2 l_8))
)) (=> (and (forall ((n_28_1@@3 T@Ref) ) (!  (=> (and (select g1@@11 n_28_1@@3) (< NoPerm FullPerm)) (and (qpRange171 n_28_1@@3) (= (invRecv171 n_28_1@@3) n_28_1@@3)))
 :qid |stdinbpl.10107:26|
 :skolemid |1152|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_28_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@10) n_28_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_28_1@@3 l_8))
)) (forall ((o_4@@15 T@Ref) ) (!  (=> (and (select g1@@11 (invRecv171 o_4@@15)) (and (< NoPerm FullPerm) (qpRange171 o_4@@15))) (= (invRecv171 o_4@@15) o_4@@15))
 :qid |stdinbpl.10111:26|
 :skolemid |1153|
 :pattern ( (invRecv171 o_4@@15))
))) (and (=> (= (ControlFlow 0 269) (- 0 271)) (forall ((n_29_1 T@Ref) (n_29_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_29_1 n_29_2)) (select g1@@11 n_29_1)) (select g1@@11 n_29_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_29_1 n_29_2)))
 :qid |stdinbpl.10122:21|
 :skolemid |1154|
 :pattern ( (neverTriggered172 n_29_1) (neverTriggered172 n_29_2))
))) (=> (forall ((n_29_1@@0 T@Ref) (n_29_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_29_1@@0 n_29_2@@0)) (select g1@@11 n_29_1@@0)) (select g1@@11 n_29_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_29_1@@0 n_29_2@@0)))
 :qid |stdinbpl.10122:21|
 :skolemid |1154|
 :pattern ( (neverTriggered172 n_29_1@@0) (neverTriggered172 n_29_2@@0))
)) (and (=> (= (ControlFlow 0 269) (- 0 270)) (forall ((n_29_1@@1 T@Ref) ) (!  (=> (select g1@@11 n_29_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_29_1@@1 r_6) NoPerm)))
 :qid |stdinbpl.10129:21|
 :skolemid |1155|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_29_1@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@11) n_29_1@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_29_1@@1 r_6))
))) (=> (forall ((n_29_1@@2 T@Ref) ) (!  (=> (select g1@@11 n_29_1@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_29_1@@2 r_6) NoPerm)))
 :qid |stdinbpl.10129:21|
 :skolemid |1155|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_29_1@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@11) n_29_1@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_29_1@@2 r_6))
)) (=> (and (forall ((n_29_1@@3 T@Ref) ) (!  (=> (and (select g1@@11 n_29_1@@3) (< NoPerm FullPerm)) (and (qpRange172 n_29_1@@3) (= (invRecv172 n_29_1@@3) n_29_1@@3)))
 :qid |stdinbpl.10135:26|
 :skolemid |1156|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_29_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@11) n_29_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_29_1@@3 r_6))
)) (forall ((o_4@@16 T@Ref) ) (!  (=> (and (select g1@@11 (invRecv172 o_4@@16)) (and (< NoPerm FullPerm) (qpRange172 o_4@@16))) (= (invRecv172 o_4@@16) o_4@@16))
 :qid |stdinbpl.10139:26|
 :skolemid |1157|
 :pattern ( (invRecv172 o_4@@16))
))) (and (and (=> (= (ControlFlow 0 269) 268) anon234_Else_correct) (=> (= (ControlFlow 0 269) 260) anon235_Then_correct)) (=> (= (ControlFlow 0 269) 262) anon235_Else_correct))))))))))))))))))))))))
(let ((anon120_correct true))
(let ((anon242_Else_correct  (=> (and (not (select g0@@11 n$1_4)) (= (ControlFlow 0 247) 244)) anon120_correct)))
(let ((anon242_Then_correct  (=> (select g0@@11 n$1_4) (and (=> (= (ControlFlow 0 245) (- 0 246)) (not (select g1@@11 n$1_4))) (=> (not (select g1@@11 n$1_4)) (=> (= (ControlFlow 0 245) 244) anon120_correct))))))
(let ((anon241_Else_correct true))
(let ((anon239_Else_correct  (=> (forall ((n$0_11_1 T@Ref) ) (!  (=> (select g1@@11 n$0_11_1) (not (select g0@@11 n$0_11_1)))
 :qid |stdinbpl.10303:24|
 :skolemid |1176|
 :pattern ( (select g1@@11 n$0_11_1) (select g0@@11 n$0_11_1))
)) (and (and (=> (= (ControlFlow 0 248) 243) anon241_Else_correct) (=> (= (ControlFlow 0 248) 245) anon242_Then_correct)) (=> (= (ControlFlow 0 248) 247) anon242_Else_correct)))))
(let ((anon116_correct true))
(let ((anon240_Else_correct  (=> (and (not (select g1@@11 n$0_10)) (= (ControlFlow 0 242) 239)) anon116_correct)))
(let ((anon240_Then_correct  (=> (select g1@@11 n$0_10) (and (=> (= (ControlFlow 0 240) (- 0 241)) (not (select g0@@11 n$0_10))) (=> (not (select g0@@11 n$0_10)) (=> (= (ControlFlow 0 240) 239) anon116_correct))))))
(let ((anon238_Then_correct  (and (=> (= (ControlFlow 0 249) (- 0 257)) (forall ((n_30_1 T@Ref) (n_30_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_30_1 n_30_2)) (select g1@@11 n_30_1)) (select g1@@11 n_30_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_30_1 n_30_2)))
 :qid |stdinbpl.10191:21|
 :skolemid |1160|
 :pattern ( (neverTriggered173 n_30_1) (neverTriggered173 n_30_2))
))) (=> (forall ((n_30_1@@0 T@Ref) (n_30_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_30_1@@0 n_30_2@@0)) (select g1@@11 n_30_1@@0)) (select g1@@11 n_30_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_30_1@@0 n_30_2@@0)))
 :qid |stdinbpl.10191:21|
 :skolemid |1160|
 :pattern ( (neverTriggered173 n_30_1@@0) (neverTriggered173 n_30_2@@0))
)) (and (=> (= (ControlFlow 0 249) (- 0 256)) (forall ((n_30_1@@1 T@Ref) ) (!  (=> (select g1@@11 n_30_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_30_1@@1 l_8) NoPerm)))
 :qid |stdinbpl.10198:21|
 :skolemid |1161|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_30_1@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n_30_1@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_30_1@@1 l_8))
))) (=> (forall ((n_30_1@@2 T@Ref) ) (!  (=> (select g1@@11 n_30_1@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_30_1@@2 l_8) NoPerm)))
 :qid |stdinbpl.10198:21|
 :skolemid |1161|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_30_1@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n_30_1@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_30_1@@2 l_8))
)) (=> (and (forall ((n_30_1@@3 T@Ref) ) (!  (=> (and (select g1@@11 n_30_1@@3) (< NoPerm FullPerm)) (and (qpRange173 n_30_1@@3) (= (invRecv173 n_30_1@@3) n_30_1@@3)))
 :qid |stdinbpl.10204:26|
 :skolemid |1162|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_30_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@12) n_30_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_30_1@@3 l_8))
)) (forall ((o_4@@17 T@Ref) ) (!  (=> (and (select g1@@11 (invRecv173 o_4@@17)) (and (< NoPerm FullPerm) (qpRange173 o_4@@17))) (= (invRecv173 o_4@@17) o_4@@17))
 :qid |stdinbpl.10208:26|
 :skolemid |1163|
 :pattern ( (invRecv173 o_4@@17))
))) (and (=> (= (ControlFlow 0 249) (- 0 255)) (forall ((n_31_1 T@Ref) (n_31_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_31_1 n_31_2)) (select g1@@11 n_31_1)) (select g1@@11 n_31_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_31_1 n_31_2)))
 :qid |stdinbpl.10219:21|
 :skolemid |1164|
 :pattern ( (neverTriggered174 n_31_1) (neverTriggered174 n_31_2))
))) (=> (forall ((n_31_1@@0 T@Ref) (n_31_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_31_1@@0 n_31_2@@0)) (select g1@@11 n_31_1@@0)) (select g1@@11 n_31_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_31_1@@0 n_31_2@@0)))
 :qid |stdinbpl.10219:21|
 :skolemid |1164|
 :pattern ( (neverTriggered174 n_31_1@@0) (neverTriggered174 n_31_2@@0))
)) (and (=> (= (ControlFlow 0 249) (- 0 254)) (forall ((n_31_1@@1 T@Ref) ) (!  (=> (select g1@@11 n_31_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_31_1@@1 r_6) NoPerm)))
 :qid |stdinbpl.10226:21|
 :skolemid |1165|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_31_1@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) n_31_1@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_31_1@@1 r_6))
))) (=> (forall ((n_31_1@@2 T@Ref) ) (!  (=> (select g1@@11 n_31_1@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_31_1@@2 r_6) NoPerm)))
 :qid |stdinbpl.10226:21|
 :skolemid |1165|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_31_1@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) n_31_1@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_31_1@@2 r_6))
)) (=> (and (forall ((n_31_1@@3 T@Ref) ) (!  (=> (and (select g1@@11 n_31_1@@3) (< NoPerm FullPerm)) (and (qpRange174 n_31_1@@3) (= (invRecv174 n_31_1@@3) n_31_1@@3)))
 :qid |stdinbpl.10232:26|
 :skolemid |1166|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_31_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@13) n_31_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_31_1@@3 r_6))
)) (forall ((o_4@@18 T@Ref) ) (!  (=> (and (select g1@@11 (invRecv174 o_4@@18)) (and (< NoPerm FullPerm) (qpRange174 o_4@@18))) (= (invRecv174 o_4@@18) o_4@@18))
 :qid |stdinbpl.10236:26|
 :skolemid |1167|
 :pattern ( (invRecv174 o_4@@18))
))) (and (=> (= (ControlFlow 0 249) (- 0 253)) (forall ((n_32_1 T@Ref) (n_32_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_32_1 n_32_2)) (select g0@@11 n_32_1)) (select g0@@11 n_32_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_32_1 n_32_2)))
 :qid |stdinbpl.10247:21|
 :skolemid |1168|
 :pattern ( (neverTriggered175 n_32_1) (neverTriggered175 n_32_2))
))) (=> (forall ((n_32_1@@0 T@Ref) (n_32_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_32_1@@0 n_32_2@@0)) (select g0@@11 n_32_1@@0)) (select g0@@11 n_32_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_32_1@@0 n_32_2@@0)))
 :qid |stdinbpl.10247:21|
 :skolemid |1168|
 :pattern ( (neverTriggered175 n_32_1@@0) (neverTriggered175 n_32_2@@0))
)) (and (=> (= (ControlFlow 0 249) (- 0 252)) (forall ((n_32_1@@1 T@Ref) ) (!  (=> (select g0@@11 n_32_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_32_1@@1 l_8) NoPerm)))
 :qid |stdinbpl.10254:21|
 :skolemid |1169|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_32_1@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) n_32_1@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_32_1@@1 l_8))
))) (=> (forall ((n_32_1@@2 T@Ref) ) (!  (=> (select g0@@11 n_32_1@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_32_1@@2 l_8) NoPerm)))
 :qid |stdinbpl.10254:21|
 :skolemid |1169|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_32_1@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) n_32_1@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_32_1@@2 l_8))
)) (=> (and (forall ((n_32_1@@3 T@Ref) ) (!  (=> (and (select g0@@11 n_32_1@@3) (< NoPerm FullPerm)) (and (qpRange175 n_32_1@@3) (= (invRecv175 n_32_1@@3) n_32_1@@3)))
 :qid |stdinbpl.10260:26|
 :skolemid |1170|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_32_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@14) n_32_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_32_1@@3 l_8))
)) (forall ((o_4@@19 T@Ref) ) (!  (=> (and (select g0@@11 (invRecv175 o_4@@19)) (and (< NoPerm FullPerm) (qpRange175 o_4@@19))) (= (invRecv175 o_4@@19) o_4@@19))
 :qid |stdinbpl.10264:26|
 :skolemid |1171|
 :pattern ( (invRecv175 o_4@@19))
))) (and (=> (= (ControlFlow 0 249) (- 0 251)) (forall ((n_33_1 T@Ref) (n_33_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_33_1 n_33_2)) (select g0@@11 n_33_1)) (select g0@@11 n_33_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_33_1 n_33_2)))
 :qid |stdinbpl.10275:21|
 :skolemid |1172|
 :pattern ( (neverTriggered176 n_33_1) (neverTriggered176 n_33_2))
))) (=> (forall ((n_33_1@@0 T@Ref) (n_33_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_33_1@@0 n_33_2@@0)) (select g0@@11 n_33_1@@0)) (select g0@@11 n_33_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_33_1@@0 n_33_2@@0)))
 :qid |stdinbpl.10275:21|
 :skolemid |1172|
 :pattern ( (neverTriggered176 n_33_1@@0) (neverTriggered176 n_33_2@@0))
)) (and (=> (= (ControlFlow 0 249) (- 0 250)) (forall ((n_33_1@@1 T@Ref) ) (!  (=> (select g0@@11 n_33_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_33_1@@1 r_6) NoPerm)))
 :qid |stdinbpl.10282:21|
 :skolemid |1173|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_33_1@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@15) n_33_1@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_33_1@@1 r_6))
))) (=> (forall ((n_33_1@@2 T@Ref) ) (!  (=> (select g0@@11 n_33_1@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_33_1@@2 r_6) NoPerm)))
 :qid |stdinbpl.10282:21|
 :skolemid |1173|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_33_1@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@15) n_33_1@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_33_1@@2 r_6))
)) (=> (and (forall ((n_33_1@@3 T@Ref) ) (!  (=> (and (select g0@@11 n_33_1@@3) (< NoPerm FullPerm)) (and (qpRange176 n_33_1@@3) (= (invRecv176 n_33_1@@3) n_33_1@@3)))
 :qid |stdinbpl.10288:26|
 :skolemid |1174|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_33_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@15) n_33_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_33_1@@3 r_6))
)) (forall ((o_4@@20 T@Ref) ) (!  (=> (and (select g0@@11 (invRecv176 o_4@@20)) (and (< NoPerm FullPerm) (qpRange176 o_4@@20))) (= (invRecv176 o_4@@20) o_4@@20))
 :qid |stdinbpl.10292:26|
 :skolemid |1175|
 :pattern ( (invRecv176 o_4@@20))
))) (and (and (=> (= (ControlFlow 0 249) 248) anon239_Else_correct) (=> (= (ControlFlow 0 249) 240) anon240_Then_correct)) (=> (= (ControlFlow 0 249) 242) anon240_Else_correct))))))))))))))))))))))))
(let ((anon136_correct true))
(let ((anon250_Else_correct  (=> (and (not (and (select arg_g@0 n$2_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_2 r_6) null)))) (= (ControlFlow 0 196) 193)) anon136_correct)))
(let ((anon250_Then_correct  (=> (and (select arg_g@0 n$2_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_2 r_6) null))) (and (=> (= (ControlFlow 0 194) (- 0 195)) (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_2 r_6))) (=> (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_2 r_6)) (=> (= (ControlFlow 0 194) 193) anon136_correct))))))
(let ((anon132_correct true))
(let ((anon248_Else_correct  (=> (and (not (and (select arg_g@0 n$1_6) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_6 l_8) null)))) (= (ControlFlow 0 192) 189)) anon132_correct)))
(let ((anon248_Then_correct  (=> (and (select arg_g@0 n$1_6) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_6 l_8) null))) (and (=> (= (ControlFlow 0 190) (- 0 191)) (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_6 l_8))) (=> (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_6 l_8)) (=> (= (ControlFlow 0 190) 189) anon132_correct))))))
(let ((anon176_correct true))
(let ((anon269_Else_correct  (=> (and (not (select (|Set#Union_70542| g0@@11 g1@@11) n_16)) (= (ControlFlow 0 140) 137)) anon176_correct)))
(let ((anon269_Then_correct  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_16) (and (=> (= (ControlFlow 0 138) (- 0 139)) (exists_path ($$ Heap@0 (|Set#Union_70542| g0@@11 g1@@11)) x@@6 n_16)) (=> (exists_path ($$ Heap@0 (|Set#Union_70542| g0@@11 g1@@11)) x@@6 n_16) (=> (= (ControlFlow 0 138) 137) anon176_correct))))))
(let ((anon268_Else_correct  (=> (and (forall ((n_17_1_1 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_17_1_1) (exists_path ($$ Heap@0 (|Set#Union_70542| g0@@11 g1@@11)) x@@6 n_17_1_1))
 :qid |stdinbpl.11011:20|
 :skolemid |1260|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@0 (|Set#Union_70542| g0@@11 g1@@11))) (FrameFragment_8621 (|$$#condqp2| Heap@0 (|Set#Union_70542| g0@@11 g1@@11)))) (|Set#Union_70542| g0@@11 g1@@11)) x@@6 n_17_1_1))
)) (= (ControlFlow 0 136) (- 0 135))) (acyclic_graph ($$ Heap@0 (|Set#Union_70542| g0@@11 g1@@11))))))
(let ((anon266_Else_correct  (=> (forall ((n$12_3_1 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$12_3_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$12_3_1 r_6) null))) (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$12_3_1 r_6)))
 :qid |stdinbpl.11000:20|
 :skolemid |1259|
 :pattern ( (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$12_3_1 r_6)))
 :pattern ( (select (|Set#Union_70542| g0@@11 g1@@11) n$12_3_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$12_3_1 r_6))
)) (and (and (=> (= (ControlFlow 0 141) 136) anon268_Else_correct) (=> (= (ControlFlow 0 141) 138) anon269_Then_correct)) (=> (= (ControlFlow 0 141) 140) anon269_Else_correct)))))
(let ((anon172_correct true))
(let ((anon267_Else_correct  (=> (and (not (and (select (|Set#Union_70542| g0@@11 g1@@11) n$12_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$12_2 r_6) null)))) (= (ControlFlow 0 134) 131)) anon172_correct)))
(let ((anon267_Then_correct  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$12_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$12_2 r_6) null))) (and (=> (= (ControlFlow 0 132) (- 0 133)) (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$12_2 r_6))) (=> (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$12_2 r_6)) (=> (= (ControlFlow 0 132) 131) anon172_correct))))))
(let ((anon264_Else_correct  (=> (forall ((n$11_3_1 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$11_3_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$11_3_1 l_8) null))) (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$11_3_1 l_8)))
 :qid |stdinbpl.10989:20|
 :skolemid |1258|
 :pattern ( (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$11_3_1 l_8)))
 :pattern ( (select (|Set#Union_70542| g0@@11 g1@@11) n$11_3_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$11_3_1 l_8))
)) (and (and (=> (= (ControlFlow 0 142) 141) anon266_Else_correct) (=> (= (ControlFlow 0 142) 132) anon267_Then_correct)) (=> (= (ControlFlow 0 142) 134) anon267_Else_correct)))))
(let ((anon168_correct true))
(let ((anon265_Else_correct  (=> (and (not (and (select (|Set#Union_70542| g0@@11 g1@@11) n$11_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$11_2 l_8) null)))) (= (ControlFlow 0 130) 127)) anon168_correct)))
(let ((anon265_Then_correct  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$11_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$11_2 l_8) null))) (and (=> (= (ControlFlow 0 128) (- 0 129)) (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$11_2 l_8))) (=> (select (|Set#Union_70542| g0@@11 g1@@11) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$11_2 l_8)) (=> (= (ControlFlow 0 128) 127) anon168_correct))))))
(let ((anon165_correct  (=> (state Heap@0 Mask@8) (and (=> (= (ControlFlow 0 143) (- 0 148)) (not (select (|Set#Union_70542| g0@@11 g1@@11) null))) (=> (not (select (|Set#Union_70542| g0@@11 g1@@11) null)) (and (=> (= (ControlFlow 0 143) (- 0 147)) (forall ((n$9_2 T@Ref) (n$9_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$9_2 n$9_2_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$9_2)) (select (|Set#Union_70542| g0@@11 g1@@11) n$9_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$9_2 n$9_2_1)))
 :qid |stdinbpl.10907:17|
 :skolemid |1246|
 :pattern ( (neverTriggered159 n$9_2) (neverTriggered159 n$9_2_1))
))) (=> (forall ((n$9_2@@0 T@Ref) (n$9_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$9_2@@0 n$9_2_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$9_2@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$9_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$9_2@@0 n$9_2_1@@0)))
 :qid |stdinbpl.10907:17|
 :skolemid |1246|
 :pattern ( (neverTriggered159 n$9_2@@0) (neverTriggered159 n$9_2_1@@0))
)) (and (=> (= (ControlFlow 0 143) (- 0 146)) (forall ((n$9_2@@1 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$9_2@@1) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@8) n$9_2@@1 l_8) FullPerm))
 :qid |stdinbpl.10914:17|
 :skolemid |1247|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$9_2@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@24) n$9_2@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$9_2@@1 l_8))
))) (=> (forall ((n$9_2@@2 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$9_2@@2) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@8) n$9_2@@2 l_8) FullPerm))
 :qid |stdinbpl.10914:17|
 :skolemid |1247|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$9_2@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@24) n$9_2@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$9_2@@2 l_8))
)) (=> (forall ((n$9_2@@3 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$9_2@@3) (< NoPerm FullPerm)) (and (qpRange159 n$9_2@@3) (= (invRecv159 n$9_2@@3) n$9_2@@3)))
 :qid |stdinbpl.10920:22|
 :skolemid |1248|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$9_2@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@24) n$9_2@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$9_2@@3 l_8))
)) (=> (and (forall ((o_4@@21 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv159 o_4@@21)) (and (< NoPerm FullPerm) (qpRange159 o_4@@21))) (= (invRecv159 o_4@@21) o_4@@21))
 :qid |stdinbpl.10924:22|
 :skolemid |1249|
 :pattern ( (invRecv159 o_4@@21))
)) (forall ((o_4@@22 T@Ref) ) (!  (and (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv159 o_4@@22)) (and (< NoPerm FullPerm) (qpRange159 o_4@@22))) (and (= (invRecv159 o_4@@22) o_4@@22) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@24) o_4@@22 l_8) (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@8) o_4@@22 l_8) FullPerm)))) (=> (not (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv159 o_4@@22)) (and (< NoPerm FullPerm) (qpRange159 o_4@@22)))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@24) o_4@@22 l_8) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@8) o_4@@22 l_8))))
 :qid |stdinbpl.10930:22|
 :skolemid |1250|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@24) o_4@@22 l_8))
))) (=> (and (and (and (forall ((o_4@@23 T@Ref) (f_5@@7 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@8) o_4@@23 f_5@@7) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@24) o_4@@23 f_5@@7)))
 :qid |stdinbpl.10936:29|
 :skolemid |1251|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@24) o_4@@23 f_5@@7))
)) (forall ((o_4@@24 T@Ref) (f_5@@8 T@Field_105234_105235) ) (!  (=> (not (= f_5@@8 l_8)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@8) o_4@@24 f_5@@8) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@24) o_4@@24 f_5@@8)))
 :qid |stdinbpl.10936:29|
 :skolemid |1251|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@24) o_4@@24 f_5@@8))
))) (forall ((o_4@@25 T@Ref) (f_5@@9 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@8) o_4@@25 f_5@@9) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@24) o_4@@25 f_5@@9)))
 :qid |stdinbpl.10936:29|
 :skolemid |1251|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@24) o_4@@25 f_5@@9))
))) (forall ((o_4@@26 T@Ref) (f_5@@10 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@8) o_4@@26 f_5@@10) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@24) o_4@@26 f_5@@10)))
 :qid |stdinbpl.10936:29|
 :skolemid |1251|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@24) o_4@@26 f_5@@10))
))) (and (=> (= (ControlFlow 0 143) (- 0 145)) (forall ((n$10_2 T@Ref) (n$10_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$10_2 n$10_2_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n$10_2)) (select (|Set#Union_70542| g0@@11 g1@@11) n$10_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$10_2 n$10_2_1)))
 :qid |stdinbpl.10948:17|
 :skolemid |1252|
 :pattern ( (neverTriggered160 n$10_2) (neverTriggered160 n$10_2_1))
))) (=> (forall ((n$10_2@@0 T@Ref) (n$10_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$10_2@@0 n$10_2_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$10_2@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n$10_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$10_2@@0 n$10_2_1@@0)))
 :qid |stdinbpl.10948:17|
 :skolemid |1252|
 :pattern ( (neverTriggered160 n$10_2@@0) (neverTriggered160 n$10_2_1@@0))
)) (and (=> (= (ControlFlow 0 143) (- 0 144)) (forall ((n$10_2@@1 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$10_2@@1) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@24) n$10_2@@1 r_6) FullPerm))
 :qid |stdinbpl.10955:17|
 :skolemid |1253|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$10_2@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@25) n$10_2@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$10_2@@1 r_6))
))) (=> (forall ((n$10_2@@2 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n$10_2@@2) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@24) n$10_2@@2 r_6) FullPerm))
 :qid |stdinbpl.10955:17|
 :skolemid |1253|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$10_2@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@25) n$10_2@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$10_2@@2 r_6))
)) (=> (forall ((n$10_2@@3 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n$10_2@@3) (< NoPerm FullPerm)) (and (qpRange160 n$10_2@@3) (= (invRecv160 n$10_2@@3) n$10_2@@3)))
 :qid |stdinbpl.10961:22|
 :skolemid |1254|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$10_2@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@25) n$10_2@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@0) n$10_2@@3 r_6))
)) (=> (and (forall ((o_4@@27 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv160 o_4@@27)) (and (< NoPerm FullPerm) (qpRange160 o_4@@27))) (= (invRecv160 o_4@@27) o_4@@27))
 :qid |stdinbpl.10965:22|
 :skolemid |1255|
 :pattern ( (invRecv160 o_4@@27))
)) (forall ((o_4@@28 T@Ref) ) (!  (and (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv160 o_4@@28)) (and (< NoPerm FullPerm) (qpRange160 o_4@@28))) (and (= (invRecv160 o_4@@28) o_4@@28) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@25) o_4@@28 r_6) (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@24) o_4@@28 r_6) FullPerm)))) (=> (not (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv160 o_4@@28)) (and (< NoPerm FullPerm) (qpRange160 o_4@@28)))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@25) o_4@@28 r_6) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@24) o_4@@28 r_6))))
 :qid |stdinbpl.10971:22|
 :skolemid |1256|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@25) o_4@@28 r_6))
))) (=> (and (and (and (forall ((o_4@@29 T@Ref) (f_5@@11 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@24) o_4@@29 f_5@@11) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@25) o_4@@29 f_5@@11)))
 :qid |stdinbpl.10977:29|
 :skolemid |1257|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@25) o_4@@29 f_5@@11))
)) (forall ((o_4@@30 T@Ref) (f_5@@12 T@Field_105234_105235) ) (!  (=> (not (= f_5@@12 r_6)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@24) o_4@@30 f_5@@12) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@25) o_4@@30 f_5@@12)))
 :qid |stdinbpl.10977:29|
 :skolemid |1257|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@25) o_4@@30 f_5@@12))
))) (forall ((o_4@@31 T@Ref) (f_5@@13 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@24) o_4@@31 f_5@@13) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@25) o_4@@31 f_5@@13)))
 :qid |stdinbpl.10977:29|
 :skolemid |1257|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@25) o_4@@31 f_5@@13))
))) (forall ((o_4@@32 T@Ref) (f_5@@14 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@24) o_4@@32 f_5@@14) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@25) o_4@@32 f_5@@14)))
 :qid |stdinbpl.10977:29|
 :skolemid |1257|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@25) o_4@@32 f_5@@14))
))) (and (and (=> (= (ControlFlow 0 143) 142) anon264_Else_correct) (=> (= (ControlFlow 0 143) 128) anon265_Then_correct)) (=> (= (ControlFlow 0 143) 130) anon265_Else_correct)))))))))))))))))))))
(let ((anon143_correct  (=> (state ExhaleHeap@3 QPMask@23) (=> (and (and (state ExhaleHeap@3 QPMask@23) (= Mask@8 QPMask@23)) (and (= Heap@0 ExhaleHeap@3) (= (ControlFlow 0 197) 143))) anon165_correct))))
(let ((anon253_Else_correct  (=> (and (= x1_2 null) (= (ControlFlow 0 199) 197)) anon143_correct)))
(let ((anon253_Then_correct  (=> (and (and (not (= x1_2 null)) (state ExhaleHeap@3 QPMask@23)) (and (forall ((v1_1 T@Ref) (v2_1 T@Ref) ) (!  (=> (not (= v1_1 v2_1)) (= (exists_path ($$ ExhaleHeap@3 arg_g@0) v1_1 v2_1)  (or (exists_path ($$ Heap@@29 arg_g@0) v1_1 v2_1) (and (exists_path ($$ Heap@@29 arg_g@0) v1_1 x0) (exists_path ($$ Heap@@29 arg_g@0) x1_2 v2_1)))))
 :qid |stdinbpl.10606:28|
 :skolemid |1211|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| ExhaleHeap@3 arg_g@0)) (FrameFragment_8621 (|$$#condqp2| ExhaleHeap@3 arg_g@0))) arg_g@0) v1_1 v2_1))
)) (= (ControlFlow 0 198) 197))) anon143_correct)))
(let ((anon252_Else_correct  (=> (= x1_2 null) (and (=> (= (ControlFlow 0 201) 198) anon253_Then_correct) (=> (= (ControlFlow 0 201) 199) anon253_Else_correct)))))
(let ((anon252_Then_correct  (=> (not (= x1_2 null)) (=> (and (state ExhaleHeap@3 QPMask@23) (forall ((v1@@2 T@Ref) (v2@@2 T@Ref) ) (! (= (edge ($$ ExhaleHeap@3 arg_g@0) v1@@2 v2@@2)  (or (edge ($$ Heap@@29 arg_g@0) v1@@2 v2@@2) (and (= v1@@2 x0) (= v2@@2 x1_2))))
 :qid |stdinbpl.10599:28|
 :skolemid |1210|
 :pattern ( (edge (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 arg_g@0)) (FrameFragment_8621 (|$$#condqp2| Heap@@29 arg_g@0))) arg_g@0) v1@@2 v2@@2))
))) (and (=> (= (ControlFlow 0 200) 198) anon253_Then_correct) (=> (= (ControlFlow 0 200) 199) anon253_Else_correct))))))
(let ((anon251_Else_correct  (=> (not (= x1_2 null)) (and (=> (= (ControlFlow 0 203) 200) anon252_Then_correct) (=> (= (ControlFlow 0 203) 201) anon252_Else_correct)))))
(let ((anon251_Then_correct  (=> (= x1_2 null) (=> (and (state ExhaleHeap@3 QPMask@23) (|Set#Equal_70309| ($$ ExhaleHeap@3 arg_g@0) ($$ Heap@@29 arg_g@0))) (and (=> (= (ControlFlow 0 202) 200) anon252_Then_correct) (=> (= (ControlFlow 0 202) 201) anon252_Else_correct))))))
(let ((anon249_Else_correct  (=> (forall ((n$2_3_1 T@Ref) ) (!  (=> (and (select arg_g@0 n$2_3_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_3_1 r_6) null))) (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_3_1 r_6)))
 :qid |stdinbpl.10478:26|
 :skolemid |1193|
 :pattern ( (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_3_1 r_6)))
 :pattern ( (select arg_g@0 n$2_3_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_3_1 r_6))
)) (and (=> (= (ControlFlow 0 204) (- 0 211)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 l_8) null)) (=> (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 l_8) null) (=> (and (and (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@3 QPMask@21) (not (select arg_g@0 null))) (and (select arg_g@0 x0) (= perm@6 (ite (= __left__ __left__) FullPerm (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 204) (- 0 210)) (>= perm@6 NoPerm)) (=> (>= perm@6 NoPerm) (=> (and (and (=> (> perm@6 NoPerm) (not (= x0 null))) (= Mask@6 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@21) x0 l_8 (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@21) x0 l_8) perm@6)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@21) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@21) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@21)))) (and (state ExhaleHeap@3 Mask@6) (= perm@7 (ite (= __left__ __right__) FullPerm (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 204) (- 0 209)) (>= perm@7 NoPerm)) (=> (>= perm@7 NoPerm) (=> (=> (> perm@7 NoPerm) (not (= x0 null))) (=> (and (= Mask@7 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@6) x0 r_6 (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@6) x0 r_6) perm@7)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@6) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@6) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@6))) (state ExhaleHeap@3 Mask@7)) (and (=> (= (ControlFlow 0 204) (- 0 208)) (forall ((n$3_2 T@Ref) (n$3_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_2 n$3_2_1)) (and (select arg_g@0 n$3_2) (not (= n$3_2 x0)))) (and (select arg_g@0 n$3_2_1) (not (= n$3_2_1 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$3_2 n$3_2_1)))
 :qid |stdinbpl.10506:21|
 :skolemid |1194|
))) (=> (forall ((n$3_2@@0 T@Ref) (n$3_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_2@@0 n$3_2_1@@0)) (and (select arg_g@0 n$3_2@@0) (not (= n$3_2@@0 x0)))) (and (select arg_g@0 n$3_2_1@@0) (not (= n$3_2_1@@0 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$3_2@@0 n$3_2_1@@0)))
 :qid |stdinbpl.10506:21|
 :skolemid |1194|
)) (=> (and (forall ((n$3_2@@1 T@Ref) ) (!  (=> (and (and (select arg_g@0 n$3_2@@1) (not (= n$3_2@@1 x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange179 n$3_2@@1) (= (invRecv179 n$3_2@@1) n$3_2@@1)))
 :qid |stdinbpl.10512:28|
 :skolemid |1195|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$3_2@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@22) n$3_2@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$3_2@@1 l_8))
)) (forall ((o_4@@33 T@Ref) ) (!  (=> (and (and (and (select arg_g@0 (invRecv179 o_4@@33)) (not (= (invRecv179 o_4@@33) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange179 o_4@@33)) (= (invRecv179 o_4@@33) o_4@@33))
 :qid |stdinbpl.10516:28|
 :skolemid |1196|
 :pattern ( (invRecv179 o_4@@33))
))) (and (=> (= (ControlFlow 0 204) (- 0 207)) (forall ((n$3_2@@2 T@Ref) ) (!  (=> (and (select arg_g@0 n$3_2@@2) (not (= n$3_2@@2 x0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.10522:21|
 :skolemid |1197|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$3_2@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@22) n$3_2@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$3_2@@2 l_8))
))) (=> (forall ((n$3_2@@3 T@Ref) ) (!  (=> (and (select arg_g@0 n$3_2@@3) (not (= n$3_2@@3 x0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.10522:21|
 :skolemid |1197|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$3_2@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@22) n$3_2@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$3_2@@3 l_8))
)) (=> (and (forall ((n$3_2@@4 T@Ref) ) (!  (=> (and (and (select arg_g@0 n$3_2@@4) (not (= n$3_2@@4 x0))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$3_2@@4 null)))
 :qid |stdinbpl.10528:28|
 :skolemid |1198|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$3_2@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@22) n$3_2@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$3_2@@4 l_8))
)) (forall ((o_4@@34 T@Ref) ) (!  (and (=> (and (and (and (select arg_g@0 (invRecv179 o_4@@34)) (not (= (invRecv179 o_4@@34) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange179 o_4@@34)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv179 o_4@@34) o_4@@34)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@22) o_4@@34 l_8) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@7) o_4@@34 l_8) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select arg_g@0 (invRecv179 o_4@@34)) (not (= (invRecv179 o_4@@34) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange179 o_4@@34))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@22) o_4@@34 l_8) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@7) o_4@@34 l_8))))
 :qid |stdinbpl.10534:28|
 :skolemid |1199|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@22) o_4@@34 l_8))
))) (=> (and (and (and (and (forall ((o_4@@35 T@Ref) (f_5@@15 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@7) o_4@@35 f_5@@15) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@22) o_4@@35 f_5@@15)))
 :qid |stdinbpl.10538:35|
 :skolemid |1200|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@7) o_4@@35 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@22) o_4@@35 f_5@@15))
)) (forall ((o_4@@36 T@Ref) (f_5@@16 T@Field_105234_105235) ) (!  (=> (not (= f_5@@16 l_8)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@7) o_4@@36 f_5@@16) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@22) o_4@@36 f_5@@16)))
 :qid |stdinbpl.10538:35|
 :skolemid |1200|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@7) o_4@@36 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@22) o_4@@36 f_5@@16))
))) (forall ((o_4@@37 T@Ref) (f_5@@17 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@7) o_4@@37 f_5@@17) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@22) o_4@@37 f_5@@17)))
 :qid |stdinbpl.10538:35|
 :skolemid |1200|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@7) o_4@@37 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@22) o_4@@37 f_5@@17))
))) (forall ((o_4@@38 T@Ref) (f_5@@18 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@7) o_4@@38 f_5@@18) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@22) o_4@@38 f_5@@18)))
 :qid |stdinbpl.10538:35|
 :skolemid |1200|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@7) o_4@@38 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@22) o_4@@38 f_5@@18))
))) (state ExhaleHeap@3 QPMask@22)) (and (=> (= (ControlFlow 0 204) (- 0 206)) (forall ((n$4_2_1 T@Ref) (n$4_2_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_2_1 n$4_2_2)) (and (select arg_g@0 n$4_2_1) (not (= n$4_2_1 x0)))) (and (select arg_g@0 n$4_2_2) (not (= n$4_2_2 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$4_2_1 n$4_2_2)))
 :qid |stdinbpl.10546:21|
 :skolemid |1201|
))) (=> (forall ((n$4_2_1@@0 T@Ref) (n$4_2_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_2_1@@0 n$4_2_2@@0)) (and (select arg_g@0 n$4_2_1@@0) (not (= n$4_2_1@@0 x0)))) (and (select arg_g@0 n$4_2_2@@0) (not (= n$4_2_2@@0 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$4_2_1@@0 n$4_2_2@@0)))
 :qid |stdinbpl.10546:21|
 :skolemid |1201|
)) (=> (and (forall ((n$4_2_1@@1 T@Ref) ) (!  (=> (and (and (select arg_g@0 n$4_2_1@@1) (not (= n$4_2_1@@1 x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange180 n$4_2_1@@1) (= (invRecv180 n$4_2_1@@1) n$4_2_1@@1)))
 :qid |stdinbpl.10552:28|
 :skolemid |1202|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$4_2_1@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@23) n$4_2_1@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$4_2_1@@1 r_6))
)) (forall ((o_4@@39 T@Ref) ) (!  (=> (and (and (and (select arg_g@0 (invRecv180 o_4@@39)) (not (= (invRecv180 o_4@@39) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange180 o_4@@39)) (= (invRecv180 o_4@@39) o_4@@39))
 :qid |stdinbpl.10556:28|
 :skolemid |1203|
 :pattern ( (invRecv180 o_4@@39))
))) (and (=> (= (ControlFlow 0 204) (- 0 205)) (forall ((n$4_2_1@@2 T@Ref) ) (!  (=> (and (select arg_g@0 n$4_2_1@@2) (not (= n$4_2_1@@2 x0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.10562:21|
 :skolemid |1204|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$4_2_1@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@23) n$4_2_1@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$4_2_1@@2 r_6))
))) (=> (forall ((n$4_2_1@@3 T@Ref) ) (!  (=> (and (select arg_g@0 n$4_2_1@@3) (not (= n$4_2_1@@3 x0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.10562:21|
 :skolemid |1204|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$4_2_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@23) n$4_2_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$4_2_1@@3 r_6))
)) (=> (and (forall ((n$4_2_1@@4 T@Ref) ) (!  (=> (and (and (select arg_g@0 n$4_2_1@@4) (not (= n$4_2_1@@4 x0))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$4_2_1@@4 null)))
 :qid |stdinbpl.10568:28|
 :skolemid |1205|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$4_2_1@@4 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@23) n$4_2_1@@4 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$4_2_1@@4 r_6))
)) (forall ((o_4@@40 T@Ref) ) (!  (and (=> (and (and (and (select arg_g@0 (invRecv180 o_4@@40)) (not (= (invRecv180 o_4@@40) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange180 o_4@@40)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv180 o_4@@40) o_4@@40)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@23) o_4@@40 r_6) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@22) o_4@@40 r_6) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select arg_g@0 (invRecv180 o_4@@40)) (not (= (invRecv180 o_4@@40) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange180 o_4@@40))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@23) o_4@@40 r_6) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@22) o_4@@40 r_6))))
 :qid |stdinbpl.10574:28|
 :skolemid |1206|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@23) o_4@@40 r_6))
))) (=> (and (and (and (and (forall ((o_4@@41 T@Ref) (f_5@@19 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@22) o_4@@41 f_5@@19) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@23) o_4@@41 f_5@@19)))
 :qid |stdinbpl.10578:35|
 :skolemid |1207|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@22) o_4@@41 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@23) o_4@@41 f_5@@19))
)) (forall ((o_4@@42 T@Ref) (f_5@@20 T@Field_105234_105235) ) (!  (=> (not (= f_5@@20 r_6)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@22) o_4@@42 f_5@@20) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@23) o_4@@42 f_5@@20)))
 :qid |stdinbpl.10578:35|
 :skolemid |1207|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@22) o_4@@42 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@23) o_4@@42 f_5@@20))
))) (forall ((o_4@@43 T@Ref) (f_5@@21 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@22) o_4@@43 f_5@@21) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@23) o_4@@43 f_5@@21)))
 :qid |stdinbpl.10578:35|
 :skolemid |1207|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@22) o_4@@43 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@23) o_4@@43 f_5@@21))
))) (forall ((o_4@@44 T@Ref) (f_5@@22 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@22) o_4@@44 f_5@@22) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@23) o_4@@44 f_5@@22)))
 :qid |stdinbpl.10578:35|
 :skolemid |1207|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@22) o_4@@44 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@23) o_4@@44 f_5@@22))
))) (and (and (state ExhaleHeap@3 QPMask@23) (forall ((n$5_2 T@Ref) ) (!  (=> (and (select arg_g@0 n$5_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$5_2 l_8) null))) (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$5_2 l_8)))
 :qid |stdinbpl.10584:26|
 :skolemid |1208|
 :pattern ( (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$5_2 l_8)))
 :pattern ( (select arg_g@0 n$5_2) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$5_2 l_8))
))) (and (forall ((n$6_2 T@Ref) ) (!  (=> (and (select arg_g@0 n$6_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$6_2 r_6) null))) (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$6_2 r_6)))
 :qid |stdinbpl.10588:26|
 :skolemid |1209|
 :pattern ( (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$6_2 r_6)))
 :pattern ( (select arg_g@0 n$6_2) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) n$6_2 r_6))
)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@3) x0 l_8) x1_2)))) (and (=> (= (ControlFlow 0 204) 202) anon251_Then_correct) (=> (= (ControlFlow 0 204) 203) anon251_Else_correct)))))))))))))))))))))))))))))
(let ((anon247_Else_correct  (=> (forall ((n$1_7_1_1 T@Ref) ) (!  (=> (and (select arg_g@0 n$1_7_1_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_7_1_1 l_8) null))) (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_7_1_1 l_8)))
 :qid |stdinbpl.10467:26|
 :skolemid |1192|
 :pattern ( (select arg_g@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_7_1_1 l_8)))
 :pattern ( (select arg_g@0 n$1_7_1_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_7_1_1 l_8))
)) (and (and (=> (= (ControlFlow 0 212) 204) anon249_Else_correct) (=> (= (ControlFlow 0 212) 194) anon250_Then_correct)) (=> (= (ControlFlow 0 212) 196) anon250_Else_correct)))))
(let ((anon129_correct  (=> (= Mask@5 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@4) x0 r_6 (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@4) x0 r_6) perm@5)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@4) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@4) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@4))) (and (=> (= (ControlFlow 0 213) (- 0 219)) (forall ((n_34_1 T@Ref) ) (!  (=> (and (and (select arg_g@0 n_34_1) (not (= n_34_1 x0))) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_34_1 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.10374:23|
 :skolemid |1178|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_34_1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) n_34_1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_34_1 l_8))
))) (=> (forall ((n_34_1@@0 T@Ref) ) (!  (=> (and (and (select arg_g@0 n_34_1@@0) (not (= n_34_1@@0 x0))) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_34_1@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.10374:23|
 :skolemid |1178|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_34_1@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) n_34_1@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_34_1@@0 l_8))
)) (and (=> (= (ControlFlow 0 213) (- 0 218)) (forall ((n_34_1@@1 T@Ref) (n_34_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_34_1@@1 n_34_2)) (and (select arg_g@0 n_34_1@@1) (not (= n_34_1@@1 x0)))) (and (select arg_g@0 n_34_2) (not (= n_34_2 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_34_1@@1 n_34_2)))
 :qid |stdinbpl.10381:23|
 :skolemid |1179|
 :pattern ( (neverTriggered177 n_34_1@@1) (neverTriggered177 n_34_2))
))) (=> (forall ((n_34_1@@2 T@Ref) (n_34_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_34_1@@2 n_34_2@@0)) (and (select arg_g@0 n_34_1@@2) (not (= n_34_1@@2 x0)))) (and (select arg_g@0 n_34_2@@0) (not (= n_34_2@@0 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_34_1@@2 n_34_2@@0)))
 :qid |stdinbpl.10381:23|
 :skolemid |1179|
 :pattern ( (neverTriggered177 n_34_1@@2) (neverTriggered177 n_34_2@@0))
)) (and (=> (= (ControlFlow 0 213) (- 0 217)) (forall ((n_34_1@@3 T@Ref) ) (!  (=> (and (select arg_g@0 n_34_1@@3) (not (= n_34_1@@3 x0))) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@5) n_34_1@@3 l_8) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.10388:23|
 :skolemid |1180|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_34_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) n_34_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_34_1@@3 l_8))
))) (=> (forall ((n_34_1@@4 T@Ref) ) (!  (=> (and (select arg_g@0 n_34_1@@4) (not (= n_34_1@@4 x0))) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@5) n_34_1@@4 l_8) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.10388:23|
 :skolemid |1180|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_34_1@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) n_34_1@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_34_1@@4 l_8))
)) (=> (forall ((n_34_1@@5 T@Ref) ) (!  (=> (and (and (select arg_g@0 n_34_1@@5) (not (= n_34_1@@5 x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange177 n_34_1@@5) (= (invRecv177 n_34_1@@5) n_34_1@@5)))
 :qid |stdinbpl.10394:28|
 :skolemid |1181|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_34_1@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) n_34_1@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_34_1@@5 l_8))
)) (=> (and (forall ((o_4@@45 T@Ref) ) (!  (=> (and (and (select arg_g@0 (invRecv177 o_4@@45)) (not (= (invRecv177 o_4@@45) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange177 o_4@@45))) (= (invRecv177 o_4@@45) o_4@@45))
 :qid |stdinbpl.10398:28|
 :skolemid |1182|
 :pattern ( (invRecv177 o_4@@45))
)) (forall ((o_4@@46 T@Ref) ) (!  (and (=> (and (and (select arg_g@0 (invRecv177 o_4@@46)) (not (= (invRecv177 o_4@@46) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange177 o_4@@46))) (and (= (invRecv177 o_4@@46) o_4@@46) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) o_4@@46 l_8) (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@5) o_4@@46 l_8) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select arg_g@0 (invRecv177 o_4@@46)) (not (= (invRecv177 o_4@@46) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange177 o_4@@46)))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) o_4@@46 l_8) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@5) o_4@@46 l_8))))
 :qid |stdinbpl.10404:28|
 :skolemid |1183|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) o_4@@46 l_8))
))) (=> (and (and (and (forall ((o_4@@47 T@Ref) (f_5@@23 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@5) o_4@@47 f_5@@23) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@20) o_4@@47 f_5@@23)))
 :qid |stdinbpl.10410:35|
 :skolemid |1184|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@20) o_4@@47 f_5@@23))
)) (forall ((o_4@@48 T@Ref) (f_5@@24 T@Field_105234_105235) ) (!  (=> (not (= f_5@@24 l_8)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@5) o_4@@48 f_5@@24) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) o_4@@48 f_5@@24)))
 :qid |stdinbpl.10410:35|
 :skolemid |1184|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) o_4@@48 f_5@@24))
))) (forall ((o_4@@49 T@Ref) (f_5@@25 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@5) o_4@@49 f_5@@25) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@20) o_4@@49 f_5@@25)))
 :qid |stdinbpl.10410:35|
 :skolemid |1184|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@20) o_4@@49 f_5@@25))
))) (forall ((o_4@@50 T@Ref) (f_5@@26 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@5) o_4@@50 f_5@@26) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@20) o_4@@50 f_5@@26)))
 :qid |stdinbpl.10410:35|
 :skolemid |1184|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@20) o_4@@50 f_5@@26))
))) (and (=> (= (ControlFlow 0 213) (- 0 216)) (forall ((n$0_12 T@Ref) ) (!  (=> (and (and (select arg_g@0 n$0_12) (not (= n$0_12 x0))) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_12 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.10419:23|
 :skolemid |1185|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_12 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@21) n$0_12 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_12 r_6))
))) (=> (forall ((n$0_12@@0 T@Ref) ) (!  (=> (and (and (select arg_g@0 n$0_12@@0) (not (= n$0_12@@0 x0))) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_12@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.10419:23|
 :skolemid |1185|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_12@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@21) n$0_12@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_12@@0 r_6))
)) (and (=> (= (ControlFlow 0 213) (- 0 215)) (forall ((n$0_12@@1 T@Ref) (n$0_12_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_12@@1 n$0_12_1)) (and (select arg_g@0 n$0_12@@1) (not (= n$0_12@@1 x0)))) (and (select arg_g@0 n$0_12_1) (not (= n$0_12_1 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_12@@1 n$0_12_1)))
 :qid |stdinbpl.10426:23|
 :skolemid |1186|
 :pattern ( (neverTriggered178 n$0_12@@1) (neverTriggered178 n$0_12_1))
))) (=> (forall ((n$0_12@@2 T@Ref) (n$0_12_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_12@@2 n$0_12_1@@0)) (and (select arg_g@0 n$0_12@@2) (not (= n$0_12@@2 x0)))) (and (select arg_g@0 n$0_12_1@@0) (not (= n$0_12_1@@0 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_12@@2 n$0_12_1@@0)))
 :qid |stdinbpl.10426:23|
 :skolemid |1186|
 :pattern ( (neverTriggered178 n$0_12@@2) (neverTriggered178 n$0_12_1@@0))
)) (and (=> (= (ControlFlow 0 213) (- 0 214)) (forall ((n$0_12@@3 T@Ref) ) (!  (=> (and (select arg_g@0 n$0_12@@3) (not (= n$0_12@@3 x0))) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) n$0_12@@3 r_6) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.10433:23|
 :skolemid |1187|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_12@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@21) n$0_12@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_12@@3 r_6))
))) (=> (forall ((n$0_12@@4 T@Ref) ) (!  (=> (and (select arg_g@0 n$0_12@@4) (not (= n$0_12@@4 x0))) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) n$0_12@@4 r_6) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.10433:23|
 :skolemid |1187|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_12@@4 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@21) n$0_12@@4 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_12@@4 r_6))
)) (=> (forall ((n$0_12@@5 T@Ref) ) (!  (=> (and (and (select arg_g@0 n$0_12@@5) (not (= n$0_12@@5 x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange178 n$0_12@@5) (= (invRecv178 n$0_12@@5) n$0_12@@5)))
 :qid |stdinbpl.10439:28|
 :skolemid |1188|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_12@@5 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@21) n$0_12@@5 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_12@@5 r_6))
)) (=> (and (forall ((o_4@@51 T@Ref) ) (!  (=> (and (and (select arg_g@0 (invRecv178 o_4@@51)) (not (= (invRecv178 o_4@@51) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange178 o_4@@51))) (= (invRecv178 o_4@@51) o_4@@51))
 :qid |stdinbpl.10443:28|
 :skolemid |1189|
 :pattern ( (invRecv178 o_4@@51))
)) (forall ((o_4@@52 T@Ref) ) (!  (and (=> (and (and (select arg_g@0 (invRecv178 o_4@@52)) (not (= (invRecv178 o_4@@52) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange178 o_4@@52))) (and (= (invRecv178 o_4@@52) o_4@@52) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@21) o_4@@52 r_6) (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) o_4@@52 r_6) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select arg_g@0 (invRecv178 o_4@@52)) (not (= (invRecv178 o_4@@52) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange178 o_4@@52)))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@21) o_4@@52 r_6) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) o_4@@52 r_6))))
 :qid |stdinbpl.10449:28|
 :skolemid |1190|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@21) o_4@@52 r_6))
))) (=> (and (and (and (forall ((o_4@@53 T@Ref) (f_5@@27 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@20) o_4@@53 f_5@@27) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@21) o_4@@53 f_5@@27)))
 :qid |stdinbpl.10455:35|
 :skolemid |1191|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@21) o_4@@53 f_5@@27))
)) (forall ((o_4@@54 T@Ref) (f_5@@28 T@Field_105234_105235) ) (!  (=> (not (= f_5@@28 r_6)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@20) o_4@@54 f_5@@28) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@21) o_4@@54 f_5@@28)))
 :qid |stdinbpl.10455:35|
 :skolemid |1191|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@21) o_4@@54 f_5@@28))
))) (forall ((o_4@@55 T@Ref) (f_5@@29 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@20) o_4@@55 f_5@@29) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@21) o_4@@55 f_5@@29)))
 :qid |stdinbpl.10455:35|
 :skolemid |1191|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@21) o_4@@55 f_5@@29))
))) (forall ((o_4@@56 T@Ref) (f_5@@30 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@20) o_4@@56 f_5@@30) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@21) o_4@@56 f_5@@30)))
 :qid |stdinbpl.10455:35|
 :skolemid |1191|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@21) o_4@@56 f_5@@30))
))) (and (and (=> (= (ControlFlow 0 213) 212) anon247_Else_correct) (=> (= (ControlFlow 0 213) 190) anon248_Then_correct)) (=> (= (ControlFlow 0 213) 192) anon248_Else_correct)))))))))))))))))))))))
(let ((anon246_Else_correct  (=> (and (= perm@5 NoPerm) (= (ControlFlow 0 222) 213)) anon129_correct)))
(let ((anon246_Then_correct  (=> (not (= perm@5 NoPerm)) (and (=> (= (ControlFlow 0 220) (- 0 221)) (<= perm@5 (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@4) x0 r_6))) (=> (<= perm@5 (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@4) x0 r_6)) (=> (= (ControlFlow 0 220) 213) anon129_correct))))))
(let ((anon127_correct  (=> (and (= Mask@4 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) x0 l_8 (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) x0 l_8) perm@4)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@5) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@5) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@5))) (= perm@5 (ite (= __left__ __right__) FullPerm (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 223) (- 0 224)) (>= perm@5 NoPerm)) (=> (>= perm@5 NoPerm) (and (=> (= (ControlFlow 0 223) 220) anon246_Then_correct) (=> (= (ControlFlow 0 223) 222) anon246_Else_correct)))))))
(let ((anon245_Else_correct  (=> (and (= perm@4 NoPerm) (= (ControlFlow 0 227) 223)) anon127_correct)))
(let ((anon245_Then_correct  (=> (not (= perm@4 NoPerm)) (and (=> (= (ControlFlow 0 225) (- 0 226)) (<= perm@4 (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) x0 l_8))) (=> (<= perm@4 (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) x0 l_8)) (=> (= (ControlFlow 0 225) 223) anon127_correct))))))
(let ((anon125_correct  (and (=> (= (ControlFlow 0 228) (- 0 231)) (not (select arg_g@0 null))) (=> (not (select arg_g@0 null)) (and (=> (= (ControlFlow 0 228) (- 0 230)) (select arg_g@0 x0)) (=> (select arg_g@0 x0) (=> (= perm@4 (ite (= __left__ __left__) FullPerm (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 228) (- 0 229)) (>= perm@4 NoPerm)) (=> (>= perm@4 NoPerm) (and (=> (= (ControlFlow 0 228) 225) anon245_Then_correct) (=> (= (ControlFlow 0 228) 227) anon245_Else_correct)))))))))))
(let ((anon244_Else_correct  (=> (and (= x1_2 null) (= (ControlFlow 0 234) 228)) anon125_correct)))
(let ((anon244_Then_correct  (=> (not (= x1_2 null)) (and (=> (= (ControlFlow 0 232) (- 0 233)) (select arg_g@0 x1_2)) (=> (select arg_g@0 x1_2) (=> (= (ControlFlow 0 232) 228) anon125_correct))))))
(let ((anon243_Then_correct  (=> (and (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 l_8) null) (= arg_g@0 (|Set#Union_70542| g0@@11 g1@@11))) (and (=> (= (ControlFlow 0 235) (- 0 236)) (select arg_g@0 x0)) (=> (select arg_g@0 x0) (and (=> (= (ControlFlow 0 235) 232) anon244_Then_correct) (=> (= (ControlFlow 0 235) 234) anon244_Else_correct)))))))
(let ((anon164_correct  (=> (state ExhaleHeap@2 QPMask@19) (=> (and (and (state ExhaleHeap@2 QPMask@19) (= Mask@8 QPMask@19)) (and (= Heap@0 ExhaleHeap@2) (= (ControlFlow 0 149) 143))) anon165_correct))))
(let ((anon263_Else_correct  (=> (and (= x1_2 null) (= (ControlFlow 0 151) 149)) anon164_correct)))
(let ((anon263_Then_correct  (=> (and (and (not (= x1_2 null)) (state ExhaleHeap@2 QPMask@19)) (and (forall ((v1_3 T@Ref) (v2_3 T@Ref) ) (!  (=> (not (= v1_3 v2_3)) (= (exists_path ($$ ExhaleHeap@2 arg_g_1@0) v1_3 v2_3)  (or (exists_path ($$ Heap@@29 arg_g_1@0) v1_3 v2_3) (and (exists_path ($$ Heap@@29 arg_g_1@0) v1_3 x0) (exists_path ($$ Heap@@29 arg_g_1@0) x1_2 v2_3)))))
 :qid |stdinbpl.10885:28|
 :skolemid |1245|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| ExhaleHeap@2 arg_g_1@0)) (FrameFragment_8621 (|$$#condqp2| ExhaleHeap@2 arg_g_1@0))) arg_g_1@0) v1_3 v2_3))
)) (= (ControlFlow 0 150) 149))) anon164_correct)))
(let ((anon262_Else_correct  (=> (= x1_2 null) (and (=> (= (ControlFlow 0 153) 150) anon263_Then_correct) (=> (= (ControlFlow 0 153) 151) anon263_Else_correct)))))
(let ((anon262_Then_correct  (=> (not (= x1_2 null)) (=> (and (state ExhaleHeap@2 QPMask@19) (forall ((v1_2_1 T@Ref) (v2_2_1 T@Ref) ) (! (= (edge ($$ ExhaleHeap@2 arg_g_1@0) v1_2_1 v2_2_1)  (or (edge ($$ Heap@@29 arg_g_1@0) v1_2_1 v2_2_1) (and (= v1_2_1 x0) (= v2_2_1 x1_2))))
 :qid |stdinbpl.10878:28|
 :skolemid |1244|
 :pattern ( (edge (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 arg_g_1@0)) (FrameFragment_8621 (|$$#condqp2| Heap@@29 arg_g_1@0))) arg_g_1@0) v1_2_1 v2_2_1))
))) (and (=> (= (ControlFlow 0 152) 150) anon263_Then_correct) (=> (= (ControlFlow 0 152) 151) anon263_Else_correct))))))
(let ((anon261_Else_correct  (=> (not (= x1_2 null)) (and (=> (= (ControlFlow 0 155) 152) anon262_Then_correct) (=> (= (ControlFlow 0 155) 153) anon262_Else_correct)))))
(let ((anon261_Then_correct  (=> (= x1_2 null) (=> (and (state ExhaleHeap@2 QPMask@19) (|Set#Equal_70309| ($$ ExhaleHeap@2 arg_g_1@0) ($$ Heap@@29 arg_g_1@0))) (and (=> (= (ControlFlow 0 154) 152) anon262_Then_correct) (=> (= (ControlFlow 0 154) 153) anon262_Else_correct))))))
(let ((anon259_Else_correct  (=> (forall ((n$2_5_1_1 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$2_5_1_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_5_1_1 r_6) null))) (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_5_1_1 r_6)))
 :qid |stdinbpl.10757:26|
 :skolemid |1227|
 :pattern ( (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_5_1_1 r_6)))
 :pattern ( (select arg_g_1@0 n$2_5_1_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_5_1_1 r_6))
)) (and (=> (= (ControlFlow 0 156) (- 0 163)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 r_6) null)) (=> (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 r_6) null) (=> (and (and (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@2 QPMask@17) (not (select arg_g_1@0 null))) (and (select arg_g_1@0 x0) (= perm@2 (ite (= __right__ __left__) FullPerm (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 156) (- 0 162)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (=> (and (and (=> (> perm@2 NoPerm) (not (= x0 null))) (= Mask@2 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) x0 l_8 (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) x0 l_8) perm@2)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@17) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@17) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@17)))) (and (state ExhaleHeap@2 Mask@2) (= perm@3 (ite (= __right__ __right__) FullPerm (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 156) (- 0 161)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (=> (=> (> perm@3 NoPerm) (not (= x0 null))) (=> (and (= Mask@3 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@2) x0 r_6 (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@2) x0 r_6) perm@3)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@2) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@2) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@2))) (state ExhaleHeap@2 Mask@3)) (and (=> (= (ControlFlow 0 156) (- 0 160)) (forall ((n$3_3 T@Ref) (n$3_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_3 n$3_3_1)) (and (select arg_g_1@0 n$3_3) (not (= n$3_3 x0)))) (and (select arg_g_1@0 n$3_3_1) (not (= n$3_3_1 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$3_3 n$3_3_1)))
 :qid |stdinbpl.10785:21|
 :skolemid |1228|
))) (=> (forall ((n$3_3@@0 T@Ref) (n$3_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_3@@0 n$3_3_1@@0)) (and (select arg_g_1@0 n$3_3@@0) (not (= n$3_3@@0 x0)))) (and (select arg_g_1@0 n$3_3_1@@0) (not (= n$3_3_1@@0 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$3_3@@0 n$3_3_1@@0)))
 :qid |stdinbpl.10785:21|
 :skolemid |1228|
)) (=> (and (forall ((n$3_3@@1 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n$3_3@@1) (not (= n$3_3@@1 x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange183 n$3_3@@1) (= (invRecv183 n$3_3@@1) n$3_3@@1)))
 :qid |stdinbpl.10791:28|
 :skolemid |1229|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$3_3@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) n$3_3@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$3_3@@1 l_8))
)) (forall ((o_4@@57 T@Ref) ) (!  (=> (and (and (and (select arg_g_1@0 (invRecv183 o_4@@57)) (not (= (invRecv183 o_4@@57) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange183 o_4@@57)) (= (invRecv183 o_4@@57) o_4@@57))
 :qid |stdinbpl.10795:28|
 :skolemid |1230|
 :pattern ( (invRecv183 o_4@@57))
))) (and (=> (= (ControlFlow 0 156) (- 0 159)) (forall ((n$3_3@@2 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$3_3@@2) (not (= n$3_3@@2 x0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.10801:21|
 :skolemid |1231|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$3_3@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) n$3_3@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$3_3@@2 l_8))
))) (=> (forall ((n$3_3@@3 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$3_3@@3) (not (= n$3_3@@3 x0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.10801:21|
 :skolemid |1231|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$3_3@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) n$3_3@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$3_3@@3 l_8))
)) (=> (and (forall ((n$3_3@@4 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n$3_3@@4) (not (= n$3_3@@4 x0))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$3_3@@4 null)))
 :qid |stdinbpl.10807:28|
 :skolemid |1232|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$3_3@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) n$3_3@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$3_3@@4 l_8))
)) (forall ((o_4@@58 T@Ref) ) (!  (and (=> (and (and (and (select arg_g_1@0 (invRecv183 o_4@@58)) (not (= (invRecv183 o_4@@58) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange183 o_4@@58)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv183 o_4@@58) o_4@@58)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) o_4@@58 l_8) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@3) o_4@@58 l_8) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select arg_g_1@0 (invRecv183 o_4@@58)) (not (= (invRecv183 o_4@@58) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange183 o_4@@58))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) o_4@@58 l_8) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@3) o_4@@58 l_8))))
 :qid |stdinbpl.10813:28|
 :skolemid |1233|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) o_4@@58 l_8))
))) (=> (and (and (and (and (forall ((o_4@@59 T@Ref) (f_5@@31 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@3) o_4@@59 f_5@@31) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@18) o_4@@59 f_5@@31)))
 :qid |stdinbpl.10817:35|
 :skolemid |1234|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@3) o_4@@59 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@18) o_4@@59 f_5@@31))
)) (forall ((o_4@@60 T@Ref) (f_5@@32 T@Field_105234_105235) ) (!  (=> (not (= f_5@@32 l_8)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@3) o_4@@60 f_5@@32) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) o_4@@60 f_5@@32)))
 :qid |stdinbpl.10817:35|
 :skolemid |1234|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@3) o_4@@60 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) o_4@@60 f_5@@32))
))) (forall ((o_4@@61 T@Ref) (f_5@@33 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@3) o_4@@61 f_5@@33) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@18) o_4@@61 f_5@@33)))
 :qid |stdinbpl.10817:35|
 :skolemid |1234|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@3) o_4@@61 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@18) o_4@@61 f_5@@33))
))) (forall ((o_4@@62 T@Ref) (f_5@@34 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@3) o_4@@62 f_5@@34) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@18) o_4@@62 f_5@@34)))
 :qid |stdinbpl.10817:35|
 :skolemid |1234|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@3) o_4@@62 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@18) o_4@@62 f_5@@34))
))) (state ExhaleHeap@2 QPMask@18)) (and (=> (= (ControlFlow 0 156) (- 0 158)) (forall ((n$4_3 T@Ref) (n$4_3_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_3 n$4_3_2)) (and (select arg_g_1@0 n$4_3) (not (= n$4_3 x0)))) (and (select arg_g_1@0 n$4_3_2) (not (= n$4_3_2 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$4_3 n$4_3_2)))
 :qid |stdinbpl.10825:21|
 :skolemid |1235|
))) (=> (forall ((n$4_3@@0 T@Ref) (n$4_3_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_3@@0 n$4_3_2@@0)) (and (select arg_g_1@0 n$4_3@@0) (not (= n$4_3@@0 x0)))) (and (select arg_g_1@0 n$4_3_2@@0) (not (= n$4_3_2@@0 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$4_3@@0 n$4_3_2@@0)))
 :qid |stdinbpl.10825:21|
 :skolemid |1235|
)) (=> (and (forall ((n$4_3@@1 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n$4_3@@1) (not (= n$4_3@@1 x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange184 n$4_3@@1) (= (invRecv184 n$4_3@@1) n$4_3@@1)))
 :qid |stdinbpl.10831:28|
 :skolemid |1236|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$4_3@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) n$4_3@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$4_3@@1 r_6))
)) (forall ((o_4@@63 T@Ref) ) (!  (=> (and (and (and (select arg_g_1@0 (invRecv184 o_4@@63)) (not (= (invRecv184 o_4@@63) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange184 o_4@@63)) (= (invRecv184 o_4@@63) o_4@@63))
 :qid |stdinbpl.10835:28|
 :skolemid |1237|
 :pattern ( (invRecv184 o_4@@63))
))) (and (=> (= (ControlFlow 0 156) (- 0 157)) (forall ((n$4_3@@2 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$4_3@@2) (not (= n$4_3@@2 x0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.10841:21|
 :skolemid |1238|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$4_3@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) n$4_3@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$4_3@@2 r_6))
))) (=> (forall ((n$4_3@@3 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$4_3@@3) (not (= n$4_3@@3 x0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.10841:21|
 :skolemid |1238|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$4_3@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) n$4_3@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$4_3@@3 r_6))
)) (=> (and (forall ((n$4_3@@4 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n$4_3@@4) (not (= n$4_3@@4 x0))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$4_3@@4 null)))
 :qid |stdinbpl.10847:28|
 :skolemid |1239|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$4_3@@4 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) n$4_3@@4 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$4_3@@4 r_6))
)) (forall ((o_4@@64 T@Ref) ) (!  (and (=> (and (and (and (select arg_g_1@0 (invRecv184 o_4@@64)) (not (= (invRecv184 o_4@@64) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange184 o_4@@64)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv184 o_4@@64) o_4@@64)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) o_4@@64 r_6) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) o_4@@64 r_6) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select arg_g_1@0 (invRecv184 o_4@@64)) (not (= (invRecv184 o_4@@64) x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange184 o_4@@64))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) o_4@@64 r_6) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) o_4@@64 r_6))))
 :qid |stdinbpl.10853:28|
 :skolemid |1240|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) o_4@@64 r_6))
))) (=> (and (and (and (and (forall ((o_4@@65 T@Ref) (f_5@@35 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@18) o_4@@65 f_5@@35) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@19) o_4@@65 f_5@@35)))
 :qid |stdinbpl.10857:35|
 :skolemid |1241|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@18) o_4@@65 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@19) o_4@@65 f_5@@35))
)) (forall ((o_4@@66 T@Ref) (f_5@@36 T@Field_105234_105235) ) (!  (=> (not (= f_5@@36 r_6)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) o_4@@66 f_5@@36) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) o_4@@66 f_5@@36)))
 :qid |stdinbpl.10857:35|
 :skolemid |1241|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@18) o_4@@66 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@19) o_4@@66 f_5@@36))
))) (forall ((o_4@@67 T@Ref) (f_5@@37 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@18) o_4@@67 f_5@@37) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@19) o_4@@67 f_5@@37)))
 :qid |stdinbpl.10857:35|
 :skolemid |1241|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@18) o_4@@67 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@19) o_4@@67 f_5@@37))
))) (forall ((o_4@@68 T@Ref) (f_5@@38 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@18) o_4@@68 f_5@@38) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@19) o_4@@68 f_5@@38)))
 :qid |stdinbpl.10857:35|
 :skolemid |1241|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@18) o_4@@68 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@19) o_4@@68 f_5@@38))
))) (and (and (state ExhaleHeap@2 QPMask@19) (forall ((n$5_3_2 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$5_3_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$5_3_2 l_8) null))) (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$5_3_2 l_8)))
 :qid |stdinbpl.10863:26|
 :skolemid |1242|
 :pattern ( (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$5_3_2 l_8)))
 :pattern ( (select arg_g_1@0 n$5_3_2) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$5_3_2 l_8))
))) (and (forall ((n$6_3_2 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$6_3_2) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$6_3_2 r_6) null))) (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$6_3_2 r_6)))
 :qid |stdinbpl.10867:26|
 :skolemid |1243|
 :pattern ( (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$6_3_2 r_6)))
 :pattern ( (select arg_g_1@0 n$6_3_2) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) n$6_3_2 r_6))
)) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| ExhaleHeap@2) x0 r_6) x1_2)))) (and (=> (= (ControlFlow 0 156) 154) anon261_Then_correct) (=> (= (ControlFlow 0 156) 155) anon261_Else_correct)))))))))))))))))))))))))))))
(let ((anon157_correct true))
(let ((anon260_Else_correct  (=> (and (not (and (select arg_g_1@0 n$2_4_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_4_1 r_6) null)))) (= (ControlFlow 0 126) 123)) anon157_correct)))
(let ((anon260_Then_correct  (=> (and (select arg_g_1@0 n$2_4_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_4_1 r_6) null))) (and (=> (= (ControlFlow 0 124) (- 0 125)) (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_4_1 r_6))) (=> (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_4_1 r_6)) (=> (= (ControlFlow 0 124) 123) anon157_correct))))))
(let ((anon257_Else_correct  (=> (forall ((n$1_9_1_1 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$1_9_1_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_9_1_1 l_8) null))) (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_9_1_1 l_8)))
 :qid |stdinbpl.10746:26|
 :skolemid |1226|
 :pattern ( (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_9_1_1 l_8)))
 :pattern ( (select arg_g_1@0 n$1_9_1_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_9_1_1 l_8))
)) (and (and (=> (= (ControlFlow 0 164) 156) anon259_Else_correct) (=> (= (ControlFlow 0 164) 124) anon260_Then_correct)) (=> (= (ControlFlow 0 164) 126) anon260_Else_correct)))))
(let ((anon153_correct true))
(let ((anon258_Else_correct  (=> (and (not (and (select arg_g_1@0 n$1_8) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_8 l_8) null)))) (= (ControlFlow 0 122) 119)) anon153_correct)))
(let ((anon258_Then_correct  (=> (and (select arg_g_1@0 n$1_8) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_8 l_8) null))) (and (=> (= (ControlFlow 0 120) (- 0 121)) (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_8 l_8))) (=> (select arg_g_1@0 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_8 l_8)) (=> (= (ControlFlow 0 120) 119) anon153_correct))))))
(let ((anon150_correct  (=> (= Mask@1 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@0) x0 r_6 (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@0) x0 r_6) perm@1)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@0) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@0) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@0))) (and (=> (= (ControlFlow 0 165) (- 0 171)) (forall ((n_35_1 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n_35_1) (not (= n_35_1 x0))) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_35_1 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.10653:23|
 :skolemid |1212|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_35_1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n_35_1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_35_1 l_8))
))) (=> (forall ((n_35_1@@0 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n_35_1@@0) (not (= n_35_1@@0 x0))) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_35_1@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.10653:23|
 :skolemid |1212|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_35_1@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n_35_1@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_35_1@@0 l_8))
)) (and (=> (= (ControlFlow 0 165) (- 0 170)) (forall ((n_35_1@@1 T@Ref) (n_35_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_35_1@@1 n_35_2)) (and (select arg_g_1@0 n_35_1@@1) (not (= n_35_1@@1 x0)))) (and (select arg_g_1@0 n_35_2) (not (= n_35_2 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_35_1@@1 n_35_2)))
 :qid |stdinbpl.10660:23|
 :skolemid |1213|
 :pattern ( (neverTriggered181 n_35_1@@1) (neverTriggered181 n_35_2))
))) (=> (forall ((n_35_1@@2 T@Ref) (n_35_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_35_1@@2 n_35_2@@0)) (and (select arg_g_1@0 n_35_1@@2) (not (= n_35_1@@2 x0)))) (and (select arg_g_1@0 n_35_2@@0) (not (= n_35_2@@0 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_35_1@@2 n_35_2@@0)))
 :qid |stdinbpl.10660:23|
 :skolemid |1213|
 :pattern ( (neverTriggered181 n_35_1@@2) (neverTriggered181 n_35_2@@0))
)) (and (=> (= (ControlFlow 0 165) (- 0 169)) (forall ((n_35_1@@3 T@Ref) ) (!  (=> (and (select arg_g_1@0 n_35_1@@3) (not (= n_35_1@@3 x0))) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@1) n_35_1@@3 l_8) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.10667:23|
 :skolemid |1214|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_35_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n_35_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_35_1@@3 l_8))
))) (=> (forall ((n_35_1@@4 T@Ref) ) (!  (=> (and (select arg_g_1@0 n_35_1@@4) (not (= n_35_1@@4 x0))) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@1) n_35_1@@4 l_8) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.10667:23|
 :skolemid |1214|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_35_1@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n_35_1@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_35_1@@4 l_8))
)) (=> (forall ((n_35_1@@5 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n_35_1@@5) (not (= n_35_1@@5 x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange181 n_35_1@@5) (= (invRecv181 n_35_1@@5) n_35_1@@5)))
 :qid |stdinbpl.10673:28|
 :skolemid |1215|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_35_1@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n_35_1@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_35_1@@5 l_8))
)) (=> (and (forall ((o_4@@69 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 (invRecv181 o_4@@69)) (not (= (invRecv181 o_4@@69) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange181 o_4@@69))) (= (invRecv181 o_4@@69) o_4@@69))
 :qid |stdinbpl.10677:28|
 :skolemid |1216|
 :pattern ( (invRecv181 o_4@@69))
)) (forall ((o_4@@70 T@Ref) ) (!  (and (=> (and (and (select arg_g_1@0 (invRecv181 o_4@@70)) (not (= (invRecv181 o_4@@70) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange181 o_4@@70))) (and (= (invRecv181 o_4@@70) o_4@@70) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) o_4@@70 l_8) (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@1) o_4@@70 l_8) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select arg_g_1@0 (invRecv181 o_4@@70)) (not (= (invRecv181 o_4@@70) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange181 o_4@@70)))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) o_4@@70 l_8) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@1) o_4@@70 l_8))))
 :qid |stdinbpl.10683:28|
 :skolemid |1217|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) o_4@@70 l_8))
))) (=> (and (and (and (forall ((o_4@@71 T@Ref) (f_5@@39 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| Mask@1) o_4@@71 f_5@@39) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@16) o_4@@71 f_5@@39)))
 :qid |stdinbpl.10689:35|
 :skolemid |1218|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@16) o_4@@71 f_5@@39))
)) (forall ((o_4@@72 T@Ref) (f_5@@40 T@Field_105234_105235) ) (!  (=> (not (= f_5@@40 l_8)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@1) o_4@@72 f_5@@40) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) o_4@@72 f_5@@40)))
 :qid |stdinbpl.10689:35|
 :skolemid |1218|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) o_4@@72 f_5@@40))
))) (forall ((o_4@@73 T@Ref) (f_5@@41 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| Mask@1) o_4@@73 f_5@@41) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@16) o_4@@73 f_5@@41)))
 :qid |stdinbpl.10689:35|
 :skolemid |1218|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@16) o_4@@73 f_5@@41))
))) (forall ((o_4@@74 T@Ref) (f_5@@42 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| Mask@1) o_4@@74 f_5@@42) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@16) o_4@@74 f_5@@42)))
 :qid |stdinbpl.10689:35|
 :skolemid |1218|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@16) o_4@@74 f_5@@42))
))) (and (=> (= (ControlFlow 0 165) (- 0 168)) (forall ((n$0_13_2 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n$0_13_2) (not (= n$0_13_2 x0))) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_13_2 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.10698:23|
 :skolemid |1219|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_13_2 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) n$0_13_2 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_13_2 r_6))
))) (=> (forall ((n$0_13_2@@0 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n$0_13_2@@0) (not (= n$0_13_2@@0 x0))) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_13_2@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.10698:23|
 :skolemid |1219|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_13_2@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) n$0_13_2@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_13_2@@0 r_6))
)) (and (=> (= (ControlFlow 0 165) (- 0 167)) (forall ((n$0_13_2@@1 T@Ref) (n$0_13_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_13_2@@1 n$0_13_3)) (and (select arg_g_1@0 n$0_13_2@@1) (not (= n$0_13_2@@1 x0)))) (and (select arg_g_1@0 n$0_13_3) (not (= n$0_13_3 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_13_2@@1 n$0_13_3)))
 :qid |stdinbpl.10705:23|
 :skolemid |1220|
 :pattern ( (neverTriggered182 n$0_13_2@@1) (neverTriggered182 n$0_13_3))
))) (=> (forall ((n$0_13_2@@2 T@Ref) (n$0_13_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_13_2@@2 n$0_13_3@@0)) (and (select arg_g_1@0 n$0_13_2@@2) (not (= n$0_13_2@@2 x0)))) (and (select arg_g_1@0 n$0_13_3@@0) (not (= n$0_13_3@@0 x0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_13_2@@2 n$0_13_3@@0)))
 :qid |stdinbpl.10705:23|
 :skolemid |1220|
 :pattern ( (neverTriggered182 n$0_13_2@@2) (neverTriggered182 n$0_13_3@@0))
)) (and (=> (= (ControlFlow 0 165) (- 0 166)) (forall ((n$0_13_2@@3 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$0_13_2@@3) (not (= n$0_13_2@@3 x0))) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n$0_13_2@@3 r_6) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.10712:23|
 :skolemid |1221|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_13_2@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) n$0_13_2@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_13_2@@3 r_6))
))) (=> (forall ((n$0_13_2@@4 T@Ref) ) (!  (=> (and (select arg_g_1@0 n$0_13_2@@4) (not (= n$0_13_2@@4 x0))) (>= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) n$0_13_2@@4 r_6) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.10712:23|
 :skolemid |1221|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_13_2@@4 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) n$0_13_2@@4 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_13_2@@4 r_6))
)) (=> (forall ((n$0_13_2@@5 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 n$0_13_2@@5) (not (= n$0_13_2@@5 x0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange182 n$0_13_2@@5) (= (invRecv182 n$0_13_2@@5) n$0_13_2@@5)))
 :qid |stdinbpl.10718:28|
 :skolemid |1222|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_13_2@@5 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) n$0_13_2@@5 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_13_2@@5 r_6))
)) (=> (and (forall ((o_4@@75 T@Ref) ) (!  (=> (and (and (select arg_g_1@0 (invRecv182 o_4@@75)) (not (= (invRecv182 o_4@@75) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange182 o_4@@75))) (= (invRecv182 o_4@@75) o_4@@75))
 :qid |stdinbpl.10722:28|
 :skolemid |1223|
 :pattern ( (invRecv182 o_4@@75))
)) (forall ((o_4@@76 T@Ref) ) (!  (and (=> (and (and (select arg_g_1@0 (invRecv182 o_4@@76)) (not (= (invRecv182 o_4@@76) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange182 o_4@@76))) (and (= (invRecv182 o_4@@76) o_4@@76) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) o_4@@76 r_6) (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) o_4@@76 r_6) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select arg_g_1@0 (invRecv182 o_4@@76)) (not (= (invRecv182 o_4@@76) x0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange182 o_4@@76)))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) o_4@@76 r_6) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) o_4@@76 r_6))))
 :qid |stdinbpl.10728:28|
 :skolemid |1224|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) o_4@@76 r_6))
))) (=> (and (and (and (forall ((o_4@@77 T@Ref) (f_5@@43 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@16) o_4@@77 f_5@@43) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@17) o_4@@77 f_5@@43)))
 :qid |stdinbpl.10734:35|
 :skolemid |1225|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@17) o_4@@77 f_5@@43))
)) (forall ((o_4@@78 T@Ref) (f_5@@44 T@Field_105234_105235) ) (!  (=> (not (= f_5@@44 r_6)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@16) o_4@@78 f_5@@44) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) o_4@@78 f_5@@44)))
 :qid |stdinbpl.10734:35|
 :skolemid |1225|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@17) o_4@@78 f_5@@44))
))) (forall ((o_4@@79 T@Ref) (f_5@@45 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@16) o_4@@79 f_5@@45) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@17) o_4@@79 f_5@@45)))
 :qid |stdinbpl.10734:35|
 :skolemid |1225|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@17) o_4@@79 f_5@@45))
))) (forall ((o_4@@80 T@Ref) (f_5@@46 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@16) o_4@@80 f_5@@46) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@17) o_4@@80 f_5@@46)))
 :qid |stdinbpl.10734:35|
 :skolemid |1225|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@17) o_4@@80 f_5@@46))
))) (and (and (=> (= (ControlFlow 0 165) 164) anon257_Else_correct) (=> (= (ControlFlow 0 165) 120) anon258_Then_correct)) (=> (= (ControlFlow 0 165) 122) anon258_Else_correct)))))))))))))))))))))))
(let ((anon256_Else_correct  (=> (and (= perm@1 NoPerm) (= (ControlFlow 0 174) 165)) anon150_correct)))
(let ((anon256_Then_correct  (=> (not (= perm@1 NoPerm)) (and (=> (= (ControlFlow 0 172) (- 0 173)) (<= perm@1 (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@0) x0 r_6))) (=> (<= perm@1 (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| Mask@0) x0 r_6)) (=> (= (ControlFlow 0 172) 165) anon150_correct))))))
(let ((anon148_correct  (=> (and (= Mask@0 (PolymorphicMapType_105182 (store (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) x0 l_8 (- (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) x0 l_8) perm@0)) (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@5) (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@5) (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@5))) (= perm@1 (ite (= __right__ __right__) FullPerm (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 175) (- 0 176)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (and (=> (= (ControlFlow 0 175) 172) anon256_Then_correct) (=> (= (ControlFlow 0 175) 174) anon256_Else_correct)))))))
(let ((anon255_Else_correct  (=> (and (= perm@0 NoPerm) (= (ControlFlow 0 179) 175)) anon148_correct)))
(let ((anon255_Then_correct  (=> (not (= perm@0 NoPerm)) (and (=> (= (ControlFlow 0 177) (- 0 178)) (<= perm@0 (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) x0 l_8))) (=> (<= perm@0 (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) x0 l_8)) (=> (= (ControlFlow 0 177) 175) anon148_correct))))))
(let ((anon146_correct  (and (=> (= (ControlFlow 0 180) (- 0 183)) (not (select arg_g_1@0 null))) (=> (not (select arg_g_1@0 null)) (and (=> (= (ControlFlow 0 180) (- 0 182)) (select arg_g_1@0 x0)) (=> (select arg_g_1@0 x0) (=> (= perm@0 (ite (= __right__ __left__) FullPerm (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 180) (- 0 181)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (and (=> (= (ControlFlow 0 180) 177) anon255_Then_correct) (=> (= (ControlFlow 0 180) 179) anon255_Else_correct)))))))))))
(let ((anon254_Else_correct  (=> (and (= x1_2 null) (= (ControlFlow 0 186) 180)) anon146_correct)))
(let ((anon254_Then_correct  (=> (not (= x1_2 null)) (and (=> (= (ControlFlow 0 184) (- 0 185)) (select arg_g_1@0 x1_2)) (=> (select arg_g_1@0 x1_2) (=> (= (ControlFlow 0 184) 180) anon146_correct))))))
(let ((anon243_Else_correct  (=> (and (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 l_8) null)) (= arg_g_1@0 (|Set#Union_70542| g0@@11 g1@@11))) (and (=> (= (ControlFlow 0 187) (- 0 188)) (select arg_g_1@0 x0)) (=> (select arg_g_1@0 x0) (and (=> (= (ControlFlow 0 187) 184) anon254_Then_correct) (=> (= (ControlFlow 0 187) 186) anon254_Else_correct)))))))
(let ((anon238_Else_correct  (=> (apply_TCFraming Heap@@29 g1@@11 g0@@11) (=> (and (state Heap@@29 QPMask@5) (state Heap@@29 QPMask@5)) (and (=> (= (ControlFlow 0 237) (- 0 238)) (HasDirectPerm_70297_70298 QPMask@5 x0 l_8)) (=> (HasDirectPerm_70297_70298 QPMask@5 x0 l_8) (and (=> (= (ControlFlow 0 237) 235) anon243_Then_correct) (=> (= (ControlFlow 0 237) 187) anon243_Else_correct))))))))
(let ((anon233_Else_correct  (=> (and (and (apply_TCFraming Heap@@29 g0@@11 g1@@11) (state Heap@@29 QPMask@5)) (and (state Heap@@29 QPMask@5) (state Heap@@29 QPMask@5))) (and (=> (= (ControlFlow 0 258) 249) anon238_Then_correct) (=> (= (ControlFlow 0 258) 237) anon238_Else_correct)))))
(let ((anon230_Else_correct  (=> (and (and (forall ((u$2_1 T@Ref) (v$2_1 T@Ref) ) (!  (=> (and (select g0@@11 u$2_1) (not (select g0@@11 v$2_1))) (not (exists_path ($$ Heap@@29 (|Set#Union_70542| g1@@11 g0@@11)) u$2_1 v$2_1)))
 :qid |stdinbpl.10016:20|
 :skolemid |1141|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 (|Set#Union_70542| g1@@11 g0@@11))) (FrameFragment_8621 (|$$#condqp2| Heap@@29 (|Set#Union_70542| g1@@11 g0@@11)))) (|Set#Union_70542| g1@@11 g0@@11)) u$2_1 v$2_1) (select g0@@11 u$2_1) (select g0@@11 v$2_1))
)) (state Heap@@29 QPMask@5)) (and (state Heap@@29 QPMask@5) (state Heap@@29 QPMask@5))) (and (=> (= (ControlFlow 0 278) 269) anon233_Then_correct) (=> (= (ControlFlow 0 278) 258) anon233_Else_correct)))))
(let ((anon232_Then_correct  (and (=> (= (ControlFlow 0 112) (- 0 117)) (forall ((n_24 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_24) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9946:25|
 :skolemid |1131|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@26) n_24 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24 l_8))
))) (=> (forall ((n_24@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_24@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9946:25|
 :skolemid |1131|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@26) n_24@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24@@0 l_8))
)) (and (=> (= (ControlFlow 0 112) (- 0 116)) (forall ((n_24@@1 T@Ref) (n_24_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_24@@1 n_24_1)) (select (|Set#Union_70542| g1@@11 g0@@11) n_24@@1)) (select (|Set#Union_70542| g1@@11 g0@@11) n_24_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_24@@1 n_24_1)))
 :qid |stdinbpl.9953:25|
 :skolemid |1132|
 :pattern ( (neverTriggered167 n_24@@1) (neverTriggered167 n_24_1))
))) (=> (forall ((n_24@@2 T@Ref) (n_24_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_24@@2 n_24_1@@0)) (select (|Set#Union_70542| g1@@11 g0@@11) n_24@@2)) (select (|Set#Union_70542| g1@@11 g0@@11) n_24_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_24@@2 n_24_1@@0)))
 :qid |stdinbpl.9953:25|
 :skolemid |1132|
 :pattern ( (neverTriggered167 n_24@@2) (neverTriggered167 n_24_1@@0))
)) (and (=> (= (ControlFlow 0 112) (- 0 115)) (forall ((n_24@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g1@@11 g0@@11) n_24@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_24@@3 l_8) NoPerm)))
 :qid |stdinbpl.9960:25|
 :skolemid |1133|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@26) n_24@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24@@3 l_8))
))) (=> (forall ((n_24@@4 T@Ref) ) (!  (=> (select (|Set#Union_70542| g1@@11 g0@@11) n_24@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_24@@4 l_8) NoPerm)))
 :qid |stdinbpl.9960:25|
 :skolemid |1133|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@26) n_24@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24@@4 l_8))
)) (=> (and (forall ((n_24@@5 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_24@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange167 n_24@@5) (= (invRecv167 n_24@@5) n_24@@5)))
 :qid |stdinbpl.9966:30|
 :skolemid |1134|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@26) n_24@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_24@@5 l_8))
)) (forall ((o_4@@81 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) (invRecv167 o_4@@81)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange167 o_4@@81))) (= (invRecv167 o_4@@81) o_4@@81))
 :qid |stdinbpl.9970:30|
 :skolemid |1135|
 :pattern ( (invRecv167 o_4@@81))
))) (and (=> (= (ControlFlow 0 112) (- 0 114)) (forall ((n_25_1 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_25_1) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_25_1 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9978:25|
 :skolemid |1136|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_25_1 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@27) n_25_1 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_25_1 r_6))
))) (=> (forall ((n_25_1@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_25_1@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_25_1@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9978:25|
 :skolemid |1136|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_25_1@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@27) n_25_1@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_25_1@@0 r_6))
)) (and (=> (= (ControlFlow 0 112) (- 0 113)) (forall ((n_25_1@@1 T@Ref) (n_25_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_25_1@@1 n_25_2)) (select (|Set#Union_70542| g1@@11 g0@@11) n_25_1@@1)) (select (|Set#Union_70542| g1@@11 g0@@11) n_25_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_25_1@@1 n_25_2)))
 :qid |stdinbpl.9985:25|
 :skolemid |1137|
 :pattern ( (neverTriggered168 n_25_1@@1) (neverTriggered168 n_25_2))
))) (=> (forall ((n_25_1@@2 T@Ref) (n_25_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_25_1@@2 n_25_2@@0)) (select (|Set#Union_70542| g1@@11 g0@@11) n_25_1@@2)) (select (|Set#Union_70542| g1@@11 g0@@11) n_25_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_25_1@@2 n_25_2@@0)))
 :qid |stdinbpl.9985:25|
 :skolemid |1137|
 :pattern ( (neverTriggered168 n_25_1@@2) (neverTriggered168 n_25_2@@0))
)) (=> (= (ControlFlow 0 112) (- 0 111)) (forall ((n_25_1@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g1@@11 g0@@11) n_25_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_25_1@@3 r_6) NoPerm)))
 :qid |stdinbpl.9992:25|
 :skolemid |1138|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_25_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@27) n_25_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_25_1@@3 r_6))
))))))))))))))))
(let ((anon101_correct true))
(let ((anon231_Then_correct  (=> (and (select g0@@11 u$2) (not (select g0@@11 v$2))) (and (=> (= (ControlFlow 0 118) 112) anon232_Then_correct) (=> (= (ControlFlow 0 118) 109) anon101_correct)))))
(let ((anon231_Else_correct  (=> (and (not (and (select g0@@11 u$2) (not (select g0@@11 v$2)))) (= (ControlFlow 0 110) 109)) anon101_correct)))
(let ((anon227_Else_correct  (=> (and (and (forall ((u$1_1 T@Ref) (v$1_1 T@Ref) ) (!  (=> (and (select g1@@11 u$1_1) (not (select g1@@11 v$1_1))) (not (exists_path ($$ Heap@@29 (|Set#Union_70542| g1@@11 g0@@11)) u$1_1 v$1_1)))
 :qid |stdinbpl.9922:20|
 :skolemid |1130|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 (|Set#Union_70542| g1@@11 g0@@11))) (FrameFragment_8621 (|$$#condqp2| Heap@@29 (|Set#Union_70542| g1@@11 g0@@11)))) (|Set#Union_70542| g1@@11 g0@@11)) u$1_1 v$1_1) (select g1@@11 u$1_1) (select g1@@11 v$1_1))
)) (state Heap@@29 QPMask@5)) (and (state Heap@@29 QPMask@5) (state Heap@@29 QPMask@5))) (and (and (=> (= (ControlFlow 0 279) 278) anon230_Else_correct) (=> (= (ControlFlow 0 279) 118) anon231_Then_correct)) (=> (= (ControlFlow 0 279) 110) anon231_Else_correct)))))
(let ((anon229_Then_correct  (and (=> (= (ControlFlow 0 102) (- 0 107)) (forall ((n_22 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_22) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9852:25|
 :skolemid |1120|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@28) n_22 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22 l_8))
))) (=> (forall ((n_22@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_22@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9852:25|
 :skolemid |1120|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@28) n_22@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22@@0 l_8))
)) (and (=> (= (ControlFlow 0 102) (- 0 106)) (forall ((n_22@@1 T@Ref) (n_22_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_22@@1 n_22_1)) (select (|Set#Union_70542| g1@@11 g0@@11) n_22@@1)) (select (|Set#Union_70542| g1@@11 g0@@11) n_22_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_22@@1 n_22_1)))
 :qid |stdinbpl.9859:25|
 :skolemid |1121|
 :pattern ( (neverTriggered165 n_22@@1) (neverTriggered165 n_22_1))
))) (=> (forall ((n_22@@2 T@Ref) (n_22_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_22@@2 n_22_1@@0)) (select (|Set#Union_70542| g1@@11 g0@@11) n_22@@2)) (select (|Set#Union_70542| g1@@11 g0@@11) n_22_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_22@@2 n_22_1@@0)))
 :qid |stdinbpl.9859:25|
 :skolemid |1121|
 :pattern ( (neverTriggered165 n_22@@2) (neverTriggered165 n_22_1@@0))
)) (and (=> (= (ControlFlow 0 102) (- 0 105)) (forall ((n_22@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g1@@11 g0@@11) n_22@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_22@@3 l_8) NoPerm)))
 :qid |stdinbpl.9866:25|
 :skolemid |1122|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@28) n_22@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22@@3 l_8))
))) (=> (forall ((n_22@@4 T@Ref) ) (!  (=> (select (|Set#Union_70542| g1@@11 g0@@11) n_22@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_22@@4 l_8) NoPerm)))
 :qid |stdinbpl.9866:25|
 :skolemid |1122|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@28) n_22@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22@@4 l_8))
)) (=> (and (forall ((n_22@@5 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_22@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange165 n_22@@5) (= (invRecv165 n_22@@5) n_22@@5)))
 :qid |stdinbpl.9872:30|
 :skolemid |1123|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@28) n_22@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_22@@5 l_8))
)) (forall ((o_4@@82 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) (invRecv165 o_4@@82)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange165 o_4@@82))) (= (invRecv165 o_4@@82) o_4@@82))
 :qid |stdinbpl.9876:30|
 :skolemid |1124|
 :pattern ( (invRecv165 o_4@@82))
))) (and (=> (= (ControlFlow 0 102) (- 0 104)) (forall ((n_23 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_23) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_23 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9884:25|
 :skolemid |1125|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_23 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@29) n_23 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_23 r_6))
))) (=> (forall ((n_23@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g1@@11 g0@@11) n_23@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_23@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9884:25|
 :skolemid |1125|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_23@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@29) n_23@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_23@@0 r_6))
)) (and (=> (= (ControlFlow 0 102) (- 0 103)) (forall ((n_23@@1 T@Ref) (n_23_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_23@@1 n_23_1)) (select (|Set#Union_70542| g1@@11 g0@@11) n_23@@1)) (select (|Set#Union_70542| g1@@11 g0@@11) n_23_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_23@@1 n_23_1)))
 :qid |stdinbpl.9891:25|
 :skolemid |1126|
 :pattern ( (neverTriggered166 n_23@@1) (neverTriggered166 n_23_1))
))) (=> (forall ((n_23@@2 T@Ref) (n_23_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_23@@2 n_23_1@@0)) (select (|Set#Union_70542| g1@@11 g0@@11) n_23@@2)) (select (|Set#Union_70542| g1@@11 g0@@11) n_23_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_23@@2 n_23_1@@0)))
 :qid |stdinbpl.9891:25|
 :skolemid |1126|
 :pattern ( (neverTriggered166 n_23@@2) (neverTriggered166 n_23_1@@0))
)) (=> (= (ControlFlow 0 102) (- 0 101)) (forall ((n_23@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g1@@11 g0@@11) n_23@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_23@@3 r_6) NoPerm)))
 :qid |stdinbpl.9898:25|
 :skolemid |1127|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_23@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@29) n_23@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_23@@3 r_6))
))))))))))))))))
(let ((anon96_correct true))
(let ((anon228_Then_correct  (=> (and (select g1@@11 u$1) (not (select g1@@11 v$1))) (and (=> (= (ControlFlow 0 108) 102) anon229_Then_correct) (=> (= (ControlFlow 0 108) 99) anon96_correct)))))
(let ((anon228_Else_correct  (=> (and (not (and (select g1@@11 u$1) (not (select g1@@11 v$1)))) (= (ControlFlow 0 100) 99)) anon96_correct)))
(let ((anon224_Else_correct  (=> (and (and (forall ((u$0_1 T@Ref) (v$0_1 T@Ref) ) (!  (=> (and (select g1@@11 u$0_1) (not (select g1@@11 v$0_1))) (not (exists_path ($$ Heap@@29 (|Set#Union_70542| g0@@11 g1@@11)) u$0_1 v$0_1)))
 :qid |stdinbpl.9828:20|
 :skolemid |1119|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 (|Set#Union_70542| g0@@11 g1@@11))) (FrameFragment_8621 (|$$#condqp2| Heap@@29 (|Set#Union_70542| g0@@11 g1@@11)))) (|Set#Union_70542| g0@@11 g1@@11)) u$0_1 v$0_1) (select g1@@11 u$0_1) (select g1@@11 v$0_1))
)) (state Heap@@29 QPMask@5)) (and (state Heap@@29 QPMask@5) (state Heap@@29 QPMask@5))) (and (and (=> (= (ControlFlow 0 280) 279) anon227_Else_correct) (=> (= (ControlFlow 0 280) 108) anon228_Then_correct)) (=> (= (ControlFlow 0 280) 100) anon228_Else_correct)))))
(let ((anon226_Then_correct  (and (=> (= (ControlFlow 0 92) (- 0 97)) (forall ((n_20 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_20) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9758:25|
 :skolemid |1109|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@30) n_20 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20 l_8))
))) (=> (forall ((n_20@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_20@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9758:25|
 :skolemid |1109|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@30) n_20@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20@@0 l_8))
)) (and (=> (= (ControlFlow 0 92) (- 0 96)) (forall ((n_20@@1 T@Ref) (n_20_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_20@@1 n_20_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n_20@@1)) (select (|Set#Union_70542| g0@@11 g1@@11) n_20_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_20@@1 n_20_1)))
 :qid |stdinbpl.9765:25|
 :skolemid |1110|
 :pattern ( (neverTriggered163 n_20@@1) (neverTriggered163 n_20_1))
))) (=> (forall ((n_20@@2 T@Ref) (n_20_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_20@@2 n_20_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n_20@@2)) (select (|Set#Union_70542| g0@@11 g1@@11) n_20_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_20@@2 n_20_1@@0)))
 :qid |stdinbpl.9765:25|
 :skolemid |1110|
 :pattern ( (neverTriggered163 n_20@@2) (neverTriggered163 n_20_1@@0))
)) (and (=> (= (ControlFlow 0 92) (- 0 95)) (forall ((n_20@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_20@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_20@@3 l_8) NoPerm)))
 :qid |stdinbpl.9772:25|
 :skolemid |1111|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@30) n_20@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20@@3 l_8))
))) (=> (forall ((n_20@@4 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_20@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_20@@4 l_8) NoPerm)))
 :qid |stdinbpl.9772:25|
 :skolemid |1111|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@30) n_20@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20@@4 l_8))
)) (=> (and (forall ((n_20@@5 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_20@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange163 n_20@@5) (= (invRecv163 n_20@@5) n_20@@5)))
 :qid |stdinbpl.9778:30|
 :skolemid |1112|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@30) n_20@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_20@@5 l_8))
)) (forall ((o_4@@83 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv163 o_4@@83)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange163 o_4@@83))) (= (invRecv163 o_4@@83) o_4@@83))
 :qid |stdinbpl.9782:30|
 :skolemid |1113|
 :pattern ( (invRecv163 o_4@@83))
))) (and (=> (= (ControlFlow 0 92) (- 0 94)) (forall ((n_21 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_21) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_21 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9790:25|
 :skolemid |1114|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_21 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@31) n_21 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_21 r_6))
))) (=> (forall ((n_21@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_21@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_21@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9790:25|
 :skolemid |1114|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_21@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@31) n_21@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_21@@0 r_6))
)) (and (=> (= (ControlFlow 0 92) (- 0 93)) (forall ((n_21@@1 T@Ref) (n_21_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_21@@1 n_21_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n_21@@1)) (select (|Set#Union_70542| g0@@11 g1@@11) n_21_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_21@@1 n_21_1)))
 :qid |stdinbpl.9797:25|
 :skolemid |1115|
 :pattern ( (neverTriggered164 n_21@@1) (neverTriggered164 n_21_1))
))) (=> (forall ((n_21@@2 T@Ref) (n_21_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_21@@2 n_21_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n_21@@2)) (select (|Set#Union_70542| g0@@11 g1@@11) n_21_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_21@@2 n_21_1@@0)))
 :qid |stdinbpl.9797:25|
 :skolemid |1115|
 :pattern ( (neverTriggered164 n_21@@2) (neverTriggered164 n_21_1@@0))
)) (=> (= (ControlFlow 0 92) (- 0 91)) (forall ((n_21@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_21@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_21@@3 r_6) NoPerm)))
 :qid |stdinbpl.9804:25|
 :skolemid |1116|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_21@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@31) n_21@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_21@@3 r_6))
))))))))))))))))
(let ((anon91_correct true))
(let ((anon225_Then_correct  (=> (and (select g1@@11 u$0) (not (select g1@@11 v$0))) (and (=> (= (ControlFlow 0 98) 92) anon226_Then_correct) (=> (= (ControlFlow 0 98) 89) anon91_correct)))))
(let ((anon225_Else_correct  (=> (and (not (and (select g1@@11 u$0) (not (select g1@@11 v$0)))) (= (ControlFlow 0 90) 89)) anon91_correct)))
(let ((anon221_Else_correct  (=> (and (and (forall ((u_1@@1 T@Ref) (v_1_1@@1 T@Ref) ) (!  (=> (and (select g0@@11 u_1@@1) (not (select g0@@11 v_1_1@@1))) (not (exists_path ($$ Heap@@29 (|Set#Union_70542| g0@@11 g1@@11)) u_1@@1 v_1_1@@1)))
 :qid |stdinbpl.9734:20|
 :skolemid |1108|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 (|Set#Union_70542| g0@@11 g1@@11))) (FrameFragment_8621 (|$$#condqp2| Heap@@29 (|Set#Union_70542| g0@@11 g1@@11)))) (|Set#Union_70542| g0@@11 g1@@11)) u_1@@1 v_1_1@@1) (select g0@@11 u_1@@1) (select g0@@11 v_1_1@@1))
)) (state Heap@@29 QPMask@5)) (and (state Heap@@29 QPMask@5) (state Heap@@29 QPMask@5))) (and (and (=> (= (ControlFlow 0 281) 280) anon224_Else_correct) (=> (= (ControlFlow 0 281) 98) anon225_Then_correct)) (=> (= (ControlFlow 0 281) 90) anon225_Else_correct)))))
(let ((anon223_Then_correct  (and (=> (= (ControlFlow 0 82) (- 0 87)) (forall ((n_18 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_18) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9664:25|
 :skolemid |1098|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@32) n_18 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18 l_8))
))) (=> (forall ((n_18@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_18@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9664:25|
 :skolemid |1098|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@32) n_18@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18@@0 l_8))
)) (and (=> (= (ControlFlow 0 82) (- 0 86)) (forall ((n_18@@1 T@Ref) (n_18_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_18@@1 n_18_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n_18@@1)) (select (|Set#Union_70542| g0@@11 g1@@11) n_18_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_18@@1 n_18_1)))
 :qid |stdinbpl.9671:25|
 :skolemid |1099|
 :pattern ( (neverTriggered161 n_18@@1) (neverTriggered161 n_18_1))
))) (=> (forall ((n_18@@2 T@Ref) (n_18_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_18@@2 n_18_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n_18@@2)) (select (|Set#Union_70542| g0@@11 g1@@11) n_18_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_18@@2 n_18_1@@0)))
 :qid |stdinbpl.9671:25|
 :skolemid |1099|
 :pattern ( (neverTriggered161 n_18@@2) (neverTriggered161 n_18_1@@0))
)) (and (=> (= (ControlFlow 0 82) (- 0 85)) (forall ((n_18@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_18@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_18@@3 l_8) NoPerm)))
 :qid |stdinbpl.9678:25|
 :skolemid |1100|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@32) n_18@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18@@3 l_8))
))) (=> (forall ((n_18@@4 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_18@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_18@@4 l_8) NoPerm)))
 :qid |stdinbpl.9678:25|
 :skolemid |1100|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@32) n_18@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18@@4 l_8))
)) (=> (and (forall ((n_18@@5 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_18@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange161 n_18@@5) (= (invRecv161 n_18@@5) n_18@@5)))
 :qid |stdinbpl.9684:30|
 :skolemid |1101|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@32) n_18@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_18@@5 l_8))
)) (forall ((o_4@@84 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) (invRecv161 o_4@@84)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange161 o_4@@84))) (= (invRecv161 o_4@@84) o_4@@84))
 :qid |stdinbpl.9688:30|
 :skolemid |1102|
 :pattern ( (invRecv161 o_4@@84))
))) (and (=> (= (ControlFlow 0 82) (- 0 84)) (forall ((n_19 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_19) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_19 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9696:25|
 :skolemid |1103|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_19 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@33) n_19 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_19 r_6))
))) (=> (forall ((n_19@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_70542| g0@@11 g1@@11) n_19@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_19@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9696:25|
 :skolemid |1103|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_19@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@33) n_19@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_19@@0 r_6))
)) (and (=> (= (ControlFlow 0 82) (- 0 83)) (forall ((n_19@@1 T@Ref) (n_19_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_19@@1 n_19_1)) (select (|Set#Union_70542| g0@@11 g1@@11) n_19@@1)) (select (|Set#Union_70542| g0@@11 g1@@11) n_19_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_19@@1 n_19_1)))
 :qid |stdinbpl.9703:25|
 :skolemid |1104|
 :pattern ( (neverTriggered162 n_19@@1) (neverTriggered162 n_19_1))
))) (=> (forall ((n_19@@2 T@Ref) (n_19_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_19@@2 n_19_1@@0)) (select (|Set#Union_70542| g0@@11 g1@@11) n_19@@2)) (select (|Set#Union_70542| g0@@11 g1@@11) n_19_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_19@@2 n_19_1@@0)))
 :qid |stdinbpl.9703:25|
 :skolemid |1104|
 :pattern ( (neverTriggered162 n_19@@2) (neverTriggered162 n_19_1@@0))
)) (=> (= (ControlFlow 0 82) (- 0 81)) (forall ((n_19@@3 T@Ref) ) (!  (=> (select (|Set#Union_70542| g0@@11 g1@@11) n_19@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_19@@3 r_6) NoPerm)))
 :qid |stdinbpl.9710:25|
 :skolemid |1105|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_19@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@33) n_19@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_19@@3 r_6))
))))))))))))))))
(let ((anon86_correct true))
(let ((anon222_Then_correct  (=> (and (select g0@@11 u_29) (not (select g0@@11 v_29))) (and (=> (= (ControlFlow 0 88) 82) anon223_Then_correct) (=> (= (ControlFlow 0 88) 79) anon86_correct)))))
(let ((anon222_Else_correct  (=> (and (not (and (select g0@@11 u_29) (not (select g0@@11 v_29)))) (= (ControlFlow 0 80) 79)) anon86_correct)))
(let ((anon208_Else_correct  (=> (state Heap@@29 QPMask@5) (and (and (=> (= (ControlFlow 0 282) 281) anon221_Else_correct) (=> (= (ControlFlow 0 282) 88) anon222_Then_correct)) (=> (= (ControlFlow 0 282) 80) anon222_Else_correct)))))
(let ((anon207_Else_correct  (=> (and (forall ((n$8_1 T@Ref) ) (!  (=> (select g1@@11 n$8_1) (not (select g0@@11 n$8_1)))
 :qid |stdinbpl.9346:20|
 :skolemid |1062|
 :pattern ( (select g0@@11 n$8_1) (select g1@@11 n$8_1))
)) (state Heap@@29 QPMask@5)) (and (=> (= (ControlFlow 0 325) 324) anon208_Then_correct) (=> (= (ControlFlow 0 325) 282) anon208_Else_correct)))))
(let ((anon207_Then_correct true))
(let ((anon206_Else_correct  (=> (forall ((n$7_1 T@Ref) ) (!  (=> (select g0@@11 n$7_1) (not (select g1@@11 n$7_1)))
 :qid |stdinbpl.9337:20|
 :skolemid |1061|
 :pattern ( (select g0@@11 n$7_1) (select g1@@11 n$7_1))
)) (and (=> (= (ControlFlow 0 326) 78) anon207_Then_correct) (=> (= (ControlFlow 0 326) 325) anon207_Else_correct)))))
(let ((anon206_Then_correct true))
(let ((anon53_correct  (=> (and (or (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 l_8) null) (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 r_6) null)) (state Heap@@29 QPMask@5)) (and (=> (= (ControlFlow 0 327) 77) anon206_Then_correct) (=> (= (ControlFlow 0 327) 326) anon206_Else_correct)))))
(let ((anon205_Else_correct  (=> (and (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 l_8) null) (= (ControlFlow 0 330) 327)) anon53_correct)))
(let ((anon205_Then_correct  (=> (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) x0 l_8) null)) (and (=> (= (ControlFlow 0 328) (- 0 329)) (HasDirectPerm_70297_70298 QPMask@5 x0 r_6)) (=> (HasDirectPerm_70297_70298 QPMask@5 x0 r_6) (=> (= (ControlFlow 0 328) 327) anon53_correct))))))
(let ((anon202_Else_correct  (=> (and (forall ((m_1_1 T@Ref) ) (!  (=> (select g1@@11 m_1_1) (exists_path ($$ Heap@@29 g1@@11) x1_2 m_1_1))
 :qid |stdinbpl.9317:20|
 :skolemid |1060|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 g1@@11)) (FrameFragment_8621 (|$$#condqp2| Heap@@29 g1@@11))) g1@@11) x1_2 m_1_1))
)) (state Heap@@29 QPMask@5)) (and (=> (= (ControlFlow 0 331) (- 0 332)) (HasDirectPerm_70297_70298 QPMask@5 x0 l_8)) (=> (HasDirectPerm_70297_70298 QPMask@5 x0 l_8) (and (=> (= (ControlFlow 0 331) 328) anon205_Then_correct) (=> (= (ControlFlow 0 331) 330) anon205_Else_correct)))))))
(let ((anon204_Then_correct  (and (=> (= (ControlFlow 0 70) (- 0 75)) (forall ((n_10_1 T@Ref) ) (!  (=> (and (select g1@@11 n_10_1) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_10_1 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9247:25|
 :skolemid |1050|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_10_1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@40) n_10_1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_10_1 l_8))
))) (=> (forall ((n_10_1@@0 T@Ref) ) (!  (=> (and (select g1@@11 n_10_1@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_10_1@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9247:25|
 :skolemid |1050|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_10_1@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@40) n_10_1@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_10_1@@0 l_8))
)) (and (=> (= (ControlFlow 0 70) (- 0 74)) (forall ((n_10_1@@1 T@Ref) (n_10_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1@@1 n_10_2)) (select g1@@11 n_10_1@@1)) (select g1@@11 n_10_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_10_1@@1 n_10_2)))
 :qid |stdinbpl.9254:25|
 :skolemid |1051|
 :pattern ( (neverTriggered151 n_10_1@@1) (neverTriggered151 n_10_2))
))) (=> (forall ((n_10_1@@2 T@Ref) (n_10_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1@@2 n_10_2@@0)) (select g1@@11 n_10_1@@2)) (select g1@@11 n_10_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_10_1@@2 n_10_2@@0)))
 :qid |stdinbpl.9254:25|
 :skolemid |1051|
 :pattern ( (neverTriggered151 n_10_1@@2) (neverTriggered151 n_10_2@@0))
)) (and (=> (= (ControlFlow 0 70) (- 0 73)) (forall ((n_10_1@@3 T@Ref) ) (!  (=> (select g1@@11 n_10_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_10_1@@3 l_8) NoPerm)))
 :qid |stdinbpl.9261:25|
 :skolemid |1052|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_10_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@40) n_10_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_10_1@@3 l_8))
))) (=> (forall ((n_10_1@@4 T@Ref) ) (!  (=> (select g1@@11 n_10_1@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_10_1@@4 l_8) NoPerm)))
 :qid |stdinbpl.9261:25|
 :skolemid |1052|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_10_1@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@40) n_10_1@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_10_1@@4 l_8))
)) (=> (and (forall ((n_10_1@@5 T@Ref) ) (!  (=> (and (select g1@@11 n_10_1@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange151 n_10_1@@5) (= (invRecv151 n_10_1@@5) n_10_1@@5)))
 :qid |stdinbpl.9267:30|
 :skolemid |1053|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_10_1@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@40) n_10_1@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_10_1@@5 l_8))
)) (forall ((o_4@@85 T@Ref) ) (!  (=> (and (select g1@@11 (invRecv151 o_4@@85)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange151 o_4@@85))) (= (invRecv151 o_4@@85) o_4@@85))
 :qid |stdinbpl.9271:30|
 :skolemid |1054|
 :pattern ( (invRecv151 o_4@@85))
))) (and (=> (= (ControlFlow 0 70) (- 0 72)) (forall ((n_11_1 T@Ref) ) (!  (=> (and (select g1@@11 n_11_1) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_11_1 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9279:25|
 :skolemid |1055|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_11_1 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@41) n_11_1 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_11_1 r_6))
))) (=> (forall ((n_11_1@@0 T@Ref) ) (!  (=> (and (select g1@@11 n_11_1@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_11_1@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9279:25|
 :skolemid |1055|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_11_1@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@41) n_11_1@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_11_1@@0 r_6))
)) (and (=> (= (ControlFlow 0 70) (- 0 71)) (forall ((n_11_1@@1 T@Ref) (n_11_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_1@@1 n_11_2)) (select g1@@11 n_11_1@@1)) (select g1@@11 n_11_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_11_1@@1 n_11_2)))
 :qid |stdinbpl.9286:25|
 :skolemid |1056|
 :pattern ( (neverTriggered152 n_11_1@@1) (neverTriggered152 n_11_2))
))) (=> (forall ((n_11_1@@2 T@Ref) (n_11_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_1@@2 n_11_2@@0)) (select g1@@11 n_11_1@@2)) (select g1@@11 n_11_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_11_1@@2 n_11_2@@0)))
 :qid |stdinbpl.9286:25|
 :skolemid |1056|
 :pattern ( (neverTriggered152 n_11_1@@2) (neverTriggered152 n_11_2@@0))
)) (=> (= (ControlFlow 0 70) (- 0 69)) (forall ((n_11_1@@3 T@Ref) ) (!  (=> (select g1@@11 n_11_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_11_1@@3 r_6) NoPerm)))
 :qid |stdinbpl.9293:25|
 :skolemid |1057|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_11_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@41) n_11_1@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_11_1@@3 r_6))
))))))))))))))))
(let ((anon50_correct true))
(let ((anon203_Then_correct  (=> (select g1@@11 m_7) (and (=> (= (ControlFlow 0 76) 70) anon204_Then_correct) (=> (= (ControlFlow 0 76) 67) anon50_correct)))))
(let ((anon203_Else_correct  (=> (and (not (select g1@@11 m_7)) (= (ControlFlow 0 68) 67)) anon50_correct)))
(let ((anon199_Else_correct  (=> (forall ((n_9 T@Ref) ) (!  (=> (select g0@@11 n_9) (exists_path ($$ Heap@@29 g0@@11) n_9 x0))
 :qid |stdinbpl.9229:20|
 :skolemid |1049|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 g0@@11)) (FrameFragment_8621 (|$$#condqp2| Heap@@29 g0@@11))) g0@@11) n_9 x0))
)) (=> (and (state Heap@@29 QPMask@5) (state Heap@@29 QPMask@5)) (and (and (=> (= (ControlFlow 0 333) 331) anon202_Else_correct) (=> (= (ControlFlow 0 333) 76) anon203_Then_correct)) (=> (= (ControlFlow 0 333) 68) anon203_Else_correct))))))
(let ((anon201_Then_correct  (and (=> (= (ControlFlow 0 60) (- 0 65)) (forall ((n$0_4 T@Ref) ) (!  (=> (and (select g0@@11 n$0_4) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9159:25|
 :skolemid |1039|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@42) n$0_4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4 l_8))
))) (=> (forall ((n$0_4@@0 T@Ref) ) (!  (=> (and (select g0@@11 n$0_4@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9159:25|
 :skolemid |1039|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@42) n$0_4@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4@@0 l_8))
)) (and (=> (= (ControlFlow 0 60) (- 0 64)) (forall ((n$0_4@@1 T@Ref) (n$0_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_4@@1 n$0_4_1)) (select g0@@11 n$0_4@@1)) (select g0@@11 n$0_4_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_4@@1 n$0_4_1)))
 :qid |stdinbpl.9166:25|
 :skolemid |1040|
 :pattern ( (neverTriggered149 n$0_4@@1) (neverTriggered149 n$0_4_1))
))) (=> (forall ((n$0_4@@2 T@Ref) (n$0_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_4@@2 n$0_4_1@@0)) (select g0@@11 n$0_4@@2)) (select g0@@11 n$0_4_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_4@@2 n$0_4_1@@0)))
 :qid |stdinbpl.9166:25|
 :skolemid |1040|
 :pattern ( (neverTriggered149 n$0_4@@2) (neverTriggered149 n$0_4_1@@0))
)) (and (=> (= (ControlFlow 0 60) (- 0 63)) (forall ((n$0_4@@3 T@Ref) ) (!  (=> (select g0@@11 n$0_4@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n$0_4@@3 l_8) NoPerm)))
 :qid |stdinbpl.9173:25|
 :skolemid |1041|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@42) n$0_4@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4@@3 l_8))
))) (=> (forall ((n$0_4@@4 T@Ref) ) (!  (=> (select g0@@11 n$0_4@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n$0_4@@4 l_8) NoPerm)))
 :qid |stdinbpl.9173:25|
 :skolemid |1041|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@42) n$0_4@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4@@4 l_8))
)) (=> (and (forall ((n$0_4@@5 T@Ref) ) (!  (=> (and (select g0@@11 n$0_4@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange149 n$0_4@@5) (= (invRecv149 n$0_4@@5) n$0_4@@5)))
 :qid |stdinbpl.9179:30|
 :skolemid |1042|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@42) n$0_4@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_4@@5 l_8))
)) (forall ((o_4@@86 T@Ref) ) (!  (=> (and (select g0@@11 (invRecv149 o_4@@86)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange149 o_4@@86))) (= (invRecv149 o_4@@86) o_4@@86))
 :qid |stdinbpl.9183:30|
 :skolemid |1043|
 :pattern ( (invRecv149 o_4@@86))
))) (and (=> (= (ControlFlow 0 60) (- 0 62)) (forall ((n$0_5 T@Ref) ) (!  (=> (and (select g0@@11 n$0_5) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_5 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9191:25|
 :skolemid |1044|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_5 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@43) n$0_5 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_5 r_6))
))) (=> (forall ((n$0_5@@0 T@Ref) ) (!  (=> (and (select g0@@11 n$0_5@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_5@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9191:25|
 :skolemid |1044|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_5@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@43) n$0_5@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_5@@0 r_6))
)) (and (=> (= (ControlFlow 0 60) (- 0 61)) (forall ((n$0_5@@1 T@Ref) (n$0_5_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_5@@1 n$0_5_2)) (select g0@@11 n$0_5@@1)) (select g0@@11 n$0_5_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_5@@1 n$0_5_2)))
 :qid |stdinbpl.9198:25|
 :skolemid |1045|
 :pattern ( (neverTriggered150 n$0_5@@1) (neverTriggered150 n$0_5_2))
))) (=> (forall ((n$0_5@@2 T@Ref) (n$0_5_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_5@@2 n$0_5_2@@0)) (select g0@@11 n$0_5@@2)) (select g0@@11 n$0_5_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_5@@2 n$0_5_2@@0)))
 :qid |stdinbpl.9198:25|
 :skolemid |1045|
 :pattern ( (neverTriggered150 n$0_5@@2) (neverTriggered150 n$0_5_2@@0))
)) (=> (= (ControlFlow 0 60) (- 0 59)) (forall ((n$0_5@@3 T@Ref) ) (!  (=> (select g0@@11 n$0_5@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n$0_5@@3 r_6) NoPerm)))
 :qid |stdinbpl.9205:25|
 :skolemid |1046|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_5@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@43) n$0_5@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_5@@3 r_6))
))))))))))))))))
(let ((anon45_correct true))
(let ((anon200_Then_correct  (=> (select g0@@11 n_43) (and (=> (= (ControlFlow 0 66) 60) anon201_Then_correct) (=> (= (ControlFlow 0 66) 57) anon45_correct)))))
(let ((anon200_Else_correct  (=> (and (not (select g0@@11 n_43)) (= (ControlFlow 0 58) 57)) anon45_correct)))
(let ((anon196_Else_correct  (=> (forall ((n_7 T@Ref) ) (!  (=> (select g0@@11 n_7) (exists_path ($$ Heap@@29 g0@@11) x@@6 n_7))
 :qid |stdinbpl.9141:20|
 :skolemid |1038|
 :pattern ( (exists_path (|$$#frame| (CombineFrames (FrameFragment_8621 (|$$#condqp1| Heap@@29 g0@@11)) (FrameFragment_8621 (|$$#condqp2| Heap@@29 g0@@11))) g0@@11) x@@6 n_7))
)) (=> (and (state Heap@@29 QPMask@5) (state Heap@@29 QPMask@5)) (and (and (=> (= (ControlFlow 0 334) 333) anon199_Else_correct) (=> (= (ControlFlow 0 334) 66) anon200_Then_correct)) (=> (= (ControlFlow 0 334) 58) anon200_Else_correct))))))
(let ((anon198_Then_correct  (and (=> (= (ControlFlow 0 50) (- 0 55)) (forall ((n$0_2_1 T@Ref) ) (!  (=> (and (select g0@@11 n$0_2_1) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2_1 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9071:25|
 :skolemid |1028|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2_1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@44) n$0_2_1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2_1 l_8))
))) (=> (forall ((n$0_2_1@@0 T@Ref) ) (!  (=> (and (select g0@@11 n$0_2_1@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2_1@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9071:25|
 :skolemid |1028|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2_1@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@44) n$0_2_1@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2_1@@0 l_8))
)) (and (=> (= (ControlFlow 0 50) (- 0 54)) (forall ((n$0_2_1@@1 T@Ref) (n$0_2_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2_1@@1 n$0_2_2)) (select g0@@11 n$0_2_1@@1)) (select g0@@11 n$0_2_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_2_1@@1 n$0_2_2)))
 :qid |stdinbpl.9078:25|
 :skolemid |1029|
 :pattern ( (neverTriggered147 n$0_2_1@@1) (neverTriggered147 n$0_2_2))
))) (=> (forall ((n$0_2_1@@2 T@Ref) (n$0_2_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2_1@@2 n$0_2_2@@0)) (select g0@@11 n$0_2_1@@2)) (select g0@@11 n$0_2_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_2_1@@2 n$0_2_2@@0)))
 :qid |stdinbpl.9078:25|
 :skolemid |1029|
 :pattern ( (neverTriggered147 n$0_2_1@@2) (neverTriggered147 n$0_2_2@@0))
)) (and (=> (= (ControlFlow 0 50) (- 0 53)) (forall ((n$0_2_1@@3 T@Ref) ) (!  (=> (select g0@@11 n$0_2_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n$0_2_1@@3 l_8) NoPerm)))
 :qid |stdinbpl.9085:25|
 :skolemid |1030|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@44) n$0_2_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2_1@@3 l_8))
))) (=> (forall ((n$0_2_1@@4 T@Ref) ) (!  (=> (select g0@@11 n$0_2_1@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n$0_2_1@@4 l_8) NoPerm)))
 :qid |stdinbpl.9085:25|
 :skolemid |1030|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2_1@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@44) n$0_2_1@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2_1@@4 l_8))
)) (=> (and (forall ((n$0_2_1@@5 T@Ref) ) (!  (=> (and (select g0@@11 n$0_2_1@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange147 n$0_2_1@@5) (= (invRecv147 n$0_2_1@@5) n$0_2_1@@5)))
 :qid |stdinbpl.9091:30|
 :skolemid |1031|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2_1@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@44) n$0_2_1@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_2_1@@5 l_8))
)) (forall ((o_4@@87 T@Ref) ) (!  (=> (and (select g0@@11 (invRecv147 o_4@@87)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange147 o_4@@87))) (= (invRecv147 o_4@@87) o_4@@87))
 :qid |stdinbpl.9095:30|
 :skolemid |1032|
 :pattern ( (invRecv147 o_4@@87))
))) (and (=> (= (ControlFlow 0 50) (- 0 52)) (forall ((n$0_3_2 T@Ref) ) (!  (=> (and (select g0@@11 n$0_3_2) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_3_2 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9103:25|
 :skolemid |1033|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_3_2 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@45) n$0_3_2 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_3_2 r_6))
))) (=> (forall ((n$0_3_2@@0 T@Ref) ) (!  (=> (and (select g0@@11 n$0_3_2@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_3_2@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9103:25|
 :skolemid |1033|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_3_2@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@45) n$0_3_2@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_3_2@@0 r_6))
)) (and (=> (= (ControlFlow 0 50) (- 0 51)) (forall ((n$0_3_2@@1 T@Ref) (n$0_3_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3_2@@1 n$0_3_3)) (select g0@@11 n$0_3_2@@1)) (select g0@@11 n$0_3_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_3_2@@1 n$0_3_3)))
 :qid |stdinbpl.9110:25|
 :skolemid |1034|
 :pattern ( (neverTriggered148 n$0_3_2@@1) (neverTriggered148 n$0_3_3))
))) (=> (forall ((n$0_3_2@@2 T@Ref) (n$0_3_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3_2@@2 n$0_3_3@@0)) (select g0@@11 n$0_3_2@@2)) (select g0@@11 n$0_3_3@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_3_2@@2 n$0_3_3@@0)))
 :qid |stdinbpl.9110:25|
 :skolemid |1034|
 :pattern ( (neverTriggered148 n$0_3_2@@2) (neverTriggered148 n$0_3_3@@0))
)) (=> (= (ControlFlow 0 50) (- 0 49)) (forall ((n$0_3_2@@3 T@Ref) ) (!  (=> (select g0@@11 n$0_3_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n$0_3_2@@3 r_6) NoPerm)))
 :qid |stdinbpl.9117:25|
 :skolemid |1035|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_3_2@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@45) n$0_3_2@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_3_2@@3 r_6))
))))))))))))))))
(let ((anon40_correct true))
(let ((anon197_Then_correct  (=> (select g0@@11 n_42) (and (=> (= (ControlFlow 0 56) 50) anon198_Then_correct) (=> (= (ControlFlow 0 56) 47) anon40_correct)))))
(let ((anon197_Else_correct  (=> (and (not (select g0@@11 n_42)) (= (ControlFlow 0 48) 47)) anon40_correct)))
(let ((anon195_Else_correct  (=> (acyclic_graph ($$ Heap@@29 g1@@11)) (=> (and (and (state Heap@@29 QPMask@5) (select g1@@11 x1_2)) (and (state Heap@@29 QPMask@5) (state Heap@@29 QPMask@5))) (and (and (=> (= (ControlFlow 0 335) 334) anon196_Else_correct) (=> (= (ControlFlow 0 335) 56) anon197_Then_correct)) (=> (= (ControlFlow 0 335) 48) anon197_Else_correct))))))
(let ((anon195_Then_correct  (and (=> (= (ControlFlow 0 41) (- 0 46)) (forall ((n_4_1 T@Ref) ) (!  (=> (and (select g1@@11 n_4_1) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4_1 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8987:21|
 :skolemid |1018|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4_1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@6) n_4_1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4_1 l_8))
))) (=> (forall ((n_4_1@@0 T@Ref) ) (!  (=> (and (select g1@@11 n_4_1@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4_1@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8987:21|
 :skolemid |1018|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4_1@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@6) n_4_1@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4_1@@0 l_8))
)) (and (=> (= (ControlFlow 0 41) (- 0 45)) (forall ((n_4_1@@1 T@Ref) (n_4_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4_1@@1 n_4_2)) (select g1@@11 n_4_1@@1)) (select g1@@11 n_4_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_4_1@@1 n_4_2)))
 :qid |stdinbpl.8994:21|
 :skolemid |1019|
 :pattern ( (neverTriggered145 n_4_1@@1) (neverTriggered145 n_4_2))
))) (=> (forall ((n_4_1@@2 T@Ref) (n_4_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4_1@@2 n_4_2@@0)) (select g1@@11 n_4_1@@2)) (select g1@@11 n_4_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_4_1@@2 n_4_2@@0)))
 :qid |stdinbpl.8994:21|
 :skolemid |1019|
 :pattern ( (neverTriggered145 n_4_1@@2) (neverTriggered145 n_4_2@@0))
)) (and (=> (= (ControlFlow 0 41) (- 0 44)) (forall ((n_4_1@@3 T@Ref) ) (!  (=> (select g1@@11 n_4_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_4_1@@3 l_8) NoPerm)))
 :qid |stdinbpl.9001:21|
 :skolemid |1020|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@6) n_4_1@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4_1@@3 l_8))
))) (=> (forall ((n_4_1@@4 T@Ref) ) (!  (=> (select g1@@11 n_4_1@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_4_1@@4 l_8) NoPerm)))
 :qid |stdinbpl.9001:21|
 :skolemid |1020|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4_1@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@6) n_4_1@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4_1@@4 l_8))
)) (=> (and (forall ((n_4_1@@5 T@Ref) ) (!  (=> (and (select g1@@11 n_4_1@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange145 n_4_1@@5) (= (invRecv145 n_4_1@@5) n_4_1@@5)))
 :qid |stdinbpl.9007:26|
 :skolemid |1021|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4_1@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@6) n_4_1@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_4_1@@5 l_8))
)) (forall ((o_4@@88 T@Ref) ) (!  (=> (and (select g1@@11 (invRecv145 o_4@@88)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange145 o_4@@88))) (= (invRecv145 o_4@@88) o_4@@88))
 :qid |stdinbpl.9011:26|
 :skolemid |1022|
 :pattern ( (invRecv145 o_4@@88))
))) (and (=> (= (ControlFlow 0 41) (- 0 43)) (forall ((n_5 T@Ref) ) (!  (=> (and (select g1@@11 n_5) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_5 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9019:21|
 :skolemid |1023|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_5 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@7) n_5 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_5 r_6))
))) (=> (forall ((n_5@@0 T@Ref) ) (!  (=> (and (select g1@@11 n_5@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_5@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.9019:21|
 :skolemid |1023|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_5@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@7) n_5@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_5@@0 r_6))
)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (forall ((n_5@@1 T@Ref) (n_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@1 n_5_1)) (select g1@@11 n_5@@1)) (select g1@@11 n_5_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_5@@1 n_5_1)))
 :qid |stdinbpl.9026:21|
 :skolemid |1024|
 :pattern ( (neverTriggered146 n_5@@1) (neverTriggered146 n_5_1))
))) (=> (forall ((n_5@@2 T@Ref) (n_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@2 n_5_1@@0)) (select g1@@11 n_5@@2)) (select g1@@11 n_5_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_5@@2 n_5_1@@0)))
 :qid |stdinbpl.9026:21|
 :skolemid |1024|
 :pattern ( (neverTriggered146 n_5@@2) (neverTriggered146 n_5_1@@0))
)) (=> (= (ControlFlow 0 41) (- 0 40)) (forall ((n_5@@3 T@Ref) ) (!  (=> (select g1@@11 n_5@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n_5@@3 r_6) NoPerm)))
 :qid |stdinbpl.9033:21|
 :skolemid |1025|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_5@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@7) n_5@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_5@@3 r_6))
))))))))))))))))
(let ((anon192_Else_correct  (=> (forall ((n$6_1 T@Ref) ) (!  (=> (and (select g1@@11 n$6_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$6_1 r_6) null))) (select g1@@11 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$6_1 r_6)))
 :qid |stdinbpl.8971:20|
 :skolemid |1017|
 :pattern ( (select g1@@11 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$6_1 r_6)))
 :pattern ( (select g1@@11 n$6_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$6_1 r_6))
)) (=> (and (state Heap@@29 QPMask@5) (state Heap@@29 QPMask@5)) (and (=> (= (ControlFlow 0 336) 41) anon195_Then_correct) (=> (= (ControlFlow 0 336) 335) anon195_Else_correct))))))
(let ((anon33_correct true))
(let ((anon194_Else_correct  (=> (and (not (and (select g1@@11 n$6_10) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$6_10 r_6) null)))) (= (ControlFlow 0 36) 33)) anon33_correct)))
(let ((anon194_Then_correct  (=> (and (select g1@@11 n$6_10) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$6_10 r_6) null))) (and (=> (= (ControlFlow 0 34) (- 0 35)) (HasDirectPerm_70297_70298 QPMask@5 n$6_10 r_6)) (=> (HasDirectPerm_70297_70298 QPMask@5 n$6_10 r_6) (=> (= (ControlFlow 0 34) 33) anon33_correct))))))
(let ((anon193_Else_correct  (=> (not (select g1@@11 n$6_10)) (and (=> (= (ControlFlow 0 39) 34) anon194_Then_correct) (=> (= (ControlFlow 0 39) 36) anon194_Else_correct)))))
(let ((anon193_Then_correct  (=> (select g1@@11 n$6_10) (and (=> (= (ControlFlow 0 37) (- 0 38)) (HasDirectPerm_70297_70298 QPMask@5 n$6_10 r_6)) (=> (HasDirectPerm_70297_70298 QPMask@5 n$6_10 r_6) (and (=> (= (ControlFlow 0 37) 34) anon194_Then_correct) (=> (= (ControlFlow 0 37) 36) anon194_Else_correct)))))))
(let ((anon189_Else_correct  (=> (forall ((n$5_1 T@Ref) ) (!  (=> (and (select g1@@11 n$5_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$5_1 l_8) null))) (select g1@@11 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$5_1 l_8)))
 :qid |stdinbpl.8954:20|
 :skolemid |1016|
 :pattern ( (select g1@@11 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$5_1 l_8)))
 :pattern ( (select g1@@11 n$5_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$5_1 l_8))
)) (and (and (=> (= (ControlFlow 0 337) 336) anon192_Else_correct) (=> (= (ControlFlow 0 337) 37) anon193_Then_correct)) (=> (= (ControlFlow 0 337) 39) anon193_Else_correct)))))
(let ((anon27_correct true))
(let ((anon191_Else_correct  (=> (and (not (and (select g1@@11 n$5_7) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$5_7 l_8) null)))) (= (ControlFlow 0 29) 26)) anon27_correct)))
(let ((anon191_Then_correct  (=> (and (select g1@@11 n$5_7) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$5_7 l_8) null))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (HasDirectPerm_70297_70298 QPMask@5 n$5_7 l_8)) (=> (HasDirectPerm_70297_70298 QPMask@5 n$5_7 l_8) (=> (= (ControlFlow 0 27) 26) anon27_correct))))))
(let ((anon190_Else_correct  (=> (not (select g1@@11 n$5_7)) (and (=> (= (ControlFlow 0 32) 27) anon191_Then_correct) (=> (= (ControlFlow 0 32) 29) anon191_Else_correct)))))
(let ((anon190_Then_correct  (=> (select g1@@11 n$5_7) (and (=> (= (ControlFlow 0 30) (- 0 31)) (HasDirectPerm_70297_70298 QPMask@5 n$5_7 l_8)) (=> (HasDirectPerm_70297_70298 QPMask@5 n$5_7 l_8) (and (=> (= (ControlFlow 0 30) 27) anon191_Then_correct) (=> (= (ControlFlow 0 30) 29) anon191_Else_correct)))))))
(let ((anon188_Else_correct  (and (=> (= (ControlFlow 0 338) (- 0 339)) (forall ((n$4_1_2 T@Ref) (n$4_1_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_1_2 n$4_1_3)) (select g1@@11 n$4_1_2)) (select g1@@11 n$4_1_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$4_1_2 n$4_1_3)))
 :qid |stdinbpl.8909:15|
 :skolemid |1010|
))) (=> (forall ((n$4_1_2@@0 T@Ref) (n$4_1_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_1_2@@0 n$4_1_3@@0)) (select g1@@11 n$4_1_2@@0)) (select g1@@11 n$4_1_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$4_1_2@@0 n$4_1_3@@0)))
 :qid |stdinbpl.8909:15|
 :skolemid |1010|
)) (=> (and (and (forall ((n$4_1_2@@1 T@Ref) ) (!  (=> (and (select g1@@11 n$4_1_2@@1) (< NoPerm FullPerm)) (and (qpRange144 n$4_1_2@@1) (= (invRecv144 n$4_1_2@@1) n$4_1_2@@1)))
 :qid |stdinbpl.8915:22|
 :skolemid |1011|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$4_1_2@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n$4_1_2@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$4_1_2@@1 r_6))
)) (forall ((o_4@@89 T@Ref) ) (!  (=> (and (and (select g1@@11 (invRecv144 o_4@@89)) (< NoPerm FullPerm)) (qpRange144 o_4@@89)) (= (invRecv144 o_4@@89) o_4@@89))
 :qid |stdinbpl.8919:22|
 :skolemid |1012|
 :pattern ( (invRecv144 o_4@@89))
))) (and (forall ((n$4_1_2@@2 T@Ref) ) (!  (=> (select g1@@11 n$4_1_2@@2) (not (= n$4_1_2@@2 null)))
 :qid |stdinbpl.8925:22|
 :skolemid |1013|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$4_1_2@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) n$4_1_2@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$4_1_2@@2 r_6))
)) (forall ((o_4@@90 T@Ref) ) (!  (and (=> (and (and (select g1@@11 (invRecv144 o_4@@90)) (< NoPerm FullPerm)) (qpRange144 o_4@@90)) (and (=> (< NoPerm FullPerm) (= (invRecv144 o_4@@90) o_4@@90)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) o_4@@90 r_6) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) o_4@@90 r_6) FullPerm)))) (=> (not (and (and (select g1@@11 (invRecv144 o_4@@90)) (< NoPerm FullPerm)) (qpRange144 o_4@@90))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) o_4@@90 r_6) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) o_4@@90 r_6))))
 :qid |stdinbpl.8931:22|
 :skolemid |1014|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) o_4@@90 r_6))
)))) (=> (and (and (and (and (forall ((o_4@@91 T@Ref) (f_5@@47 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@4) o_4@@91 f_5@@47) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@5) o_4@@91 f_5@@47)))
 :qid |stdinbpl.8935:29|
 :skolemid |1015|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@4) o_4@@91 f_5@@47))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@5) o_4@@91 f_5@@47))
)) (forall ((o_4@@92 T@Ref) (f_5@@48 T@Field_105234_105235) ) (!  (=> (not (= f_5@@48 r_6)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) o_4@@92 f_5@@48) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) o_4@@92 f_5@@48)))
 :qid |stdinbpl.8935:29|
 :skolemid |1015|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) o_4@@92 f_5@@48))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@5) o_4@@92 f_5@@48))
))) (forall ((o_4@@93 T@Ref) (f_5@@49 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@4) o_4@@93 f_5@@49) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@5) o_4@@93 f_5@@49)))
 :qid |stdinbpl.8935:29|
 :skolemid |1015|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@4) o_4@@93 f_5@@49))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@5) o_4@@93 f_5@@49))
))) (forall ((o_4@@94 T@Ref) (f_5@@50 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@4) o_4@@94 f_5@@50) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@5) o_4@@94 f_5@@50)))
 :qid |stdinbpl.8935:29|
 :skolemid |1015|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@4) o_4@@94 f_5@@50))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@5) o_4@@94 f_5@@50))
))) (state Heap@@29 QPMask@5)) (and (and (=> (= (ControlFlow 0 338) 337) anon189_Else_correct) (=> (= (ControlFlow 0 338) 30) anon190_Then_correct)) (=> (= (ControlFlow 0 338) 32) anon190_Else_correct))))))))
(let ((anon188_Then_correct true))
(let ((anon187_Else_correct  (and (=> (= (ControlFlow 0 340) (- 0 341)) (forall ((n$3_1_2 T@Ref) (n$3_1_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_1_2 n$3_1_3)) (select g1@@11 n$3_1_2)) (select g1@@11 n$3_1_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_1_2 n$3_1_3)))
 :qid |stdinbpl.8870:15|
 :skolemid |1004|
))) (=> (forall ((n$3_1_2@@0 T@Ref) (n$3_1_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_1_2@@0 n$3_1_3@@0)) (select g1@@11 n$3_1_2@@0)) (select g1@@11 n$3_1_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_1_2@@0 n$3_1_3@@0)))
 :qid |stdinbpl.8870:15|
 :skolemid |1004|
)) (=> (and (and (forall ((n$3_1_2@@1 T@Ref) ) (!  (=> (and (select g1@@11 n$3_1_2@@1) (< NoPerm FullPerm)) (and (qpRange143 n$3_1_2@@1) (= (invRecv143 n$3_1_2@@1) n$3_1_2@@1)))
 :qid |stdinbpl.8876:22|
 :skolemid |1005|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$3_1_2@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) n$3_1_2@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$3_1_2@@1 l_8))
)) (forall ((o_4@@95 T@Ref) ) (!  (=> (and (and (select g1@@11 (invRecv143 o_4@@95)) (< NoPerm FullPerm)) (qpRange143 o_4@@95)) (= (invRecv143 o_4@@95) o_4@@95))
 :qid |stdinbpl.8880:22|
 :skolemid |1006|
 :pattern ( (invRecv143 o_4@@95))
))) (and (forall ((n$3_1_2@@2 T@Ref) ) (!  (=> (select g1@@11 n$3_1_2@@2) (not (= n$3_1_2@@2 null)))
 :qid |stdinbpl.8886:22|
 :skolemid |1007|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$3_1_2@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) n$3_1_2@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$3_1_2@@2 l_8))
)) (forall ((o_4@@96 T@Ref) ) (!  (and (=> (and (and (select g1@@11 (invRecv143 o_4@@96)) (< NoPerm FullPerm)) (qpRange143 o_4@@96)) (and (=> (< NoPerm FullPerm) (= (invRecv143 o_4@@96) o_4@@96)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) o_4@@96 l_8) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_4@@96 l_8) FullPerm)))) (=> (not (and (and (select g1@@11 (invRecv143 o_4@@96)) (< NoPerm FullPerm)) (qpRange143 o_4@@96))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) o_4@@96 l_8) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_4@@96 l_8))))
 :qid |stdinbpl.8892:22|
 :skolemid |1008|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) o_4@@96 l_8))
)))) (=> (and (and (and (and (forall ((o_4@@97 T@Ref) (f_5@@51 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@1) o_4@@97 f_5@@51) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@4) o_4@@97 f_5@@51)))
 :qid |stdinbpl.8896:29|
 :skolemid |1009|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@1) o_4@@97 f_5@@51))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@4) o_4@@97 f_5@@51))
)) (forall ((o_4@@98 T@Ref) (f_5@@52 T@Field_105234_105235) ) (!  (=> (not (= f_5@@52 l_8)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_4@@98 f_5@@52) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) o_4@@98 f_5@@52)))
 :qid |stdinbpl.8896:29|
 :skolemid |1009|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_4@@98 f_5@@52))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@4) o_4@@98 f_5@@52))
))) (forall ((o_4@@99 T@Ref) (f_5@@53 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@1) o_4@@99 f_5@@53) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@4) o_4@@99 f_5@@53)))
 :qid |stdinbpl.8896:29|
 :skolemid |1009|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@1) o_4@@99 f_5@@53))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@4) o_4@@99 f_5@@53))
))) (forall ((o_4@@100 T@Ref) (f_5@@54 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@1) o_4@@100 f_5@@54) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@4) o_4@@100 f_5@@54)))
 :qid |stdinbpl.8896:29|
 :skolemid |1009|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@1) o_4@@100 f_5@@54))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@4) o_4@@100 f_5@@54))
))) (state Heap@@29 QPMask@4)) (and (=> (= (ControlFlow 0 340) 25) anon188_Then_correct) (=> (= (ControlFlow 0 340) 338) anon188_Else_correct))))))))
(let ((anon187_Then_correct true))
(let ((anon186_Else_correct  (=> (acyclic_graph ($$ Heap@@29 g0@@11)) (=> (and (state Heap@@29 QPMask@1) (select g0@@11 x0)) (=> (and (and (state Heap@@29 QPMask@1) (select g0@@11 x@@6)) (and (state Heap@@29 QPMask@1) (not (select g1@@11 null)))) (and (=> (= (ControlFlow 0 342) 24) anon187_Then_correct) (=> (= (ControlFlow 0 342) 340) anon187_Else_correct)))))))
(let ((anon186_Then_correct  (and (=> (= (ControlFlow 0 18) (- 0 23)) (forall ((n_2 T@Ref) ) (!  (=> (and (select g0@@11 n_2) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_2 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8789:21|
 :skolemid |994|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_2 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) n_2 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_2 l_8))
))) (=> (forall ((n_2@@0 T@Ref) ) (!  (=> (and (select g0@@11 n_2@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_2@@0 l_8))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8789:21|
 :skolemid |994|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_2@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) n_2@@0 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_2@@0 l_8))
)) (and (=> (= (ControlFlow 0 18) (- 0 22)) (forall ((n_2@@1 T@Ref) (n_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@1 n_2_1)) (select g0@@11 n_2@@1)) (select g0@@11 n_2_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_2@@1 n_2_1)))
 :qid |stdinbpl.8796:21|
 :skolemid |995|
 :pattern ( (neverTriggered141 n_2@@1) (neverTriggered141 n_2_1))
))) (=> (forall ((n_2@@2 T@Ref) (n_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@2 n_2_1@@0)) (select g0@@11 n_2@@2)) (select g0@@11 n_2_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_2@@2 n_2_1@@0)))
 :qid |stdinbpl.8796:21|
 :skolemid |995|
 :pattern ( (neverTriggered141 n_2@@2) (neverTriggered141 n_2_1@@0))
)) (and (=> (= (ControlFlow 0 18) (- 0 21)) (forall ((n_2@@3 T@Ref) ) (!  (=> (select g0@@11 n_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_2@@3 l_8) NoPerm)))
 :qid |stdinbpl.8803:21|
 :skolemid |996|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_2@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) n_2@@3 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_2@@3 l_8))
))) (=> (forall ((n_2@@4 T@Ref) ) (!  (=> (select g0@@11 n_2@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_2@@4 l_8) NoPerm)))
 :qid |stdinbpl.8803:21|
 :skolemid |996|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_2@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) n_2@@4 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_2@@4 l_8))
)) (=> (and (forall ((n_2@@5 T@Ref) ) (!  (=> (and (select g0@@11 n_2@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange141 n_2@@5) (= (invRecv141 n_2@@5) n_2@@5)))
 :qid |stdinbpl.8809:26|
 :skolemid |997|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_2@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@2) n_2@@5 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_2@@5 l_8))
)) (forall ((o_4@@101 T@Ref) ) (!  (=> (and (select g0@@11 (invRecv141 o_4@@101)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange141 o_4@@101))) (= (invRecv141 o_4@@101) o_4@@101))
 :qid |stdinbpl.8813:26|
 :skolemid |998|
 :pattern ( (invRecv141 o_4@@101))
))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (forall ((n_3 T@Ref) ) (!  (=> (and (select g0@@11 n_3) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_3 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8821:21|
 :skolemid |999|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_3 r_6))
))) (=> (forall ((n_3@@0 T@Ref) ) (!  (=> (and (select g0@@11 n_3@@0) (dummyFunction_70298 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_3@@0 r_6))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.8821:21|
 :skolemid |999|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_3@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_3@@0 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_3@@0 r_6))
)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (forall ((n_3@@1 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@1 n_3_1)) (select g0@@11 n_3@@1)) (select g0@@11 n_3_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_3@@1 n_3_1)))
 :qid |stdinbpl.8828:21|
 :skolemid |1000|
 :pattern ( (neverTriggered142 n_3@@1) (neverTriggered142 n_3_1))
))) (=> (forall ((n_3@@2 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@2 n_3_1@@0)) (select g0@@11 n_3@@2)) (select g0@@11 n_3_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_3@@2 n_3_1@@0)))
 :qid |stdinbpl.8828:21|
 :skolemid |1000|
 :pattern ( (neverTriggered142 n_3@@2) (neverTriggered142 n_3_1@@0))
)) (=> (= (ControlFlow 0 18) (- 0 17)) (forall ((n_3@@3 T@Ref) ) (!  (=> (select g0@@11 n_3@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n_3@@3 r_6) NoPerm)))
 :qid |stdinbpl.8835:21|
 :skolemid |1001|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_3@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@3) n_3@@3 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_3@@3 r_6))
))))))))))))))))
(let ((anon183_Else_correct  (=> (forall ((n$2_1_1 T@Ref) ) (!  (=> (and (select g0@@11 n$2_1_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_1_1 r_6) null))) (select g0@@11 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_1_1 r_6)))
 :qid |stdinbpl.8773:20|
 :skolemid |993|
 :pattern ( (select g0@@11 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_1_1 r_6)))
 :pattern ( (select g0@@11 n$2_1_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_1_1 r_6))
)) (=> (and (state Heap@@29 QPMask@1) (state Heap@@29 QPMask@1)) (and (=> (= (ControlFlow 0 343) 18) anon186_Then_correct) (=> (= (ControlFlow 0 343) 342) anon186_Else_correct))))))
(let ((anon15_correct true))
(let ((anon185_Else_correct  (=> (and (not (and (select g0@@11 n$2_34) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_34 r_6) null)))) (= (ControlFlow 0 13) 10)) anon15_correct)))
(let ((anon185_Then_correct  (=> (and (select g0@@11 n$2_34) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$2_34 r_6) null))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_70297_70298 QPMask@1 n$2_34 r_6)) (=> (HasDirectPerm_70297_70298 QPMask@1 n$2_34 r_6) (=> (= (ControlFlow 0 11) 10) anon15_correct))))))
(let ((anon184_Else_correct  (=> (not (select g0@@11 n$2_34)) (and (=> (= (ControlFlow 0 16) 11) anon185_Then_correct) (=> (= (ControlFlow 0 16) 13) anon185_Else_correct)))))
(let ((anon184_Then_correct  (=> (select g0@@11 n$2_34) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_70297_70298 QPMask@1 n$2_34 r_6)) (=> (HasDirectPerm_70297_70298 QPMask@1 n$2_34 r_6) (and (=> (= (ControlFlow 0 14) 11) anon185_Then_correct) (=> (= (ControlFlow 0 14) 13) anon185_Else_correct)))))))
(let ((anon180_Else_correct  (=> (forall ((n$1_1 T@Ref) ) (!  (=> (and (select g0@@11 n$1_1) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_1 l_8) null))) (select g0@@11 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_1 l_8)))
 :qid |stdinbpl.8756:20|
 :skolemid |992|
 :pattern ( (select g0@@11 (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_1 l_8)))
 :pattern ( (select g0@@11 n$1_1) (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_1 l_8))
)) (and (and (=> (= (ControlFlow 0 344) 343) anon183_Else_correct) (=> (= (ControlFlow 0 344) 14) anon184_Then_correct)) (=> (= (ControlFlow 0 344) 16) anon184_Else_correct)))))
(let ((anon9_correct true))
(let ((anon182_Else_correct  (=> (and (not (and (select g0@@11 n$1_23) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_23 l_8) null)))) (= (ControlFlow 0 6) 3)) anon9_correct)))
(let ((anon182_Then_correct  (=> (and (select g0@@11 n$1_23) (not (= (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$1_23 l_8) null))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_70297_70298 QPMask@1 n$1_23 l_8)) (=> (HasDirectPerm_70297_70298 QPMask@1 n$1_23 l_8) (=> (= (ControlFlow 0 4) 3) anon9_correct))))))
(let ((anon181_Else_correct  (=> (not (select g0@@11 n$1_23)) (and (=> (= (ControlFlow 0 9) 4) anon182_Then_correct) (=> (= (ControlFlow 0 9) 6) anon182_Else_correct)))))
(let ((anon181_Then_correct  (=> (select g0@@11 n$1_23) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_70297_70298 QPMask@1 n$1_23 l_8)) (=> (HasDirectPerm_70297_70298 QPMask@1 n$1_23 l_8) (and (=> (= (ControlFlow 0 7) 4) anon182_Then_correct) (=> (= (ControlFlow 0 7) 6) anon182_Else_correct)))))))
(let ((anon179_Else_correct  (and (=> (= (ControlFlow 0 345) (- 0 346)) (forall ((n$0_1 T@Ref) (n$0_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_1 n$0_1_1)) (select g0@@11 n$0_1)) (select g0@@11 n$0_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_1 n$0_1_1)))
 :qid |stdinbpl.8711:15|
 :skolemid |986|
))) (=> (forall ((n$0_1@@0 T@Ref) (n$0_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_1@@0 n$0_1_1@@0)) (select g0@@11 n$0_1@@0)) (select g0@@11 n$0_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_1@@0 n$0_1_1@@0)))
 :qid |stdinbpl.8711:15|
 :skolemid |986|
)) (=> (and (and (forall ((n$0_1@@1 T@Ref) ) (!  (=> (and (select g0@@11 n$0_1@@1) (< NoPerm FullPerm)) (and (qpRange140 n$0_1@@1) (= (invRecv140 n$0_1@@1) n$0_1@@1)))
 :qid |stdinbpl.8717:22|
 :skolemid |987|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_1@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n$0_1@@1 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_1@@1 r_6))
)) (forall ((o_4@@102 T@Ref) ) (!  (=> (and (and (select g0@@11 (invRecv140 o_4@@102)) (< NoPerm FullPerm)) (qpRange140 o_4@@102)) (= (invRecv140 o_4@@102) o_4@@102))
 :qid |stdinbpl.8721:22|
 :skolemid |988|
 :pattern ( (invRecv140 o_4@@102))
))) (and (forall ((n$0_1@@2 T@Ref) ) (!  (=> (select g0@@11 n$0_1@@2) (not (= n$0_1@@2 null)))
 :qid |stdinbpl.8727:22|
 :skolemid |989|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_1@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) n$0_1@@2 r_6))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n$0_1@@2 r_6))
)) (forall ((o_4@@103 T@Ref) ) (!  (and (=> (and (and (select g0@@11 (invRecv140 o_4@@103)) (< NoPerm FullPerm)) (qpRange140 o_4@@103)) (and (=> (< NoPerm FullPerm) (= (invRecv140 o_4@@103) o_4@@103)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_4@@103 r_6) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_4@@103 r_6) FullPerm)))) (=> (not (and (and (select g0@@11 (invRecv140 o_4@@103)) (< NoPerm FullPerm)) (qpRange140 o_4@@103))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_4@@103 r_6) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_4@@103 r_6))))
 :qid |stdinbpl.8733:22|
 :skolemid |990|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_4@@103 r_6))
)))) (=> (and (and (and (and (forall ((o_4@@104 T@Ref) (f_5@@55 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@0) o_4@@104 f_5@@55) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@1) o_4@@104 f_5@@55)))
 :qid |stdinbpl.8737:29|
 :skolemid |991|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@0) o_4@@104 f_5@@55))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@1) o_4@@104 f_5@@55))
)) (forall ((o_4@@105 T@Ref) (f_5@@56 T@Field_105234_105235) ) (!  (=> (not (= f_5@@56 r_6)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_4@@105 f_5@@56) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_4@@105 f_5@@56)))
 :qid |stdinbpl.8737:29|
 :skolemid |991|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_4@@105 f_5@@56))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@1) o_4@@105 f_5@@56))
))) (forall ((o_4@@106 T@Ref) (f_5@@57 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@0) o_4@@106 f_5@@57) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@1) o_4@@106 f_5@@57)))
 :qid |stdinbpl.8737:29|
 :skolemid |991|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@0) o_4@@106 f_5@@57))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@1) o_4@@106 f_5@@57))
))) (forall ((o_4@@107 T@Ref) (f_5@@58 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@0) o_4@@107 f_5@@58) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@1) o_4@@107 f_5@@58)))
 :qid |stdinbpl.8737:29|
 :skolemid |991|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@0) o_4@@107 f_5@@58))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@1) o_4@@107 f_5@@58))
))) (state Heap@@29 QPMask@1)) (and (and (=> (= (ControlFlow 0 345) 344) anon180_Else_correct) (=> (= (ControlFlow 0 345) 7) anon181_Then_correct)) (=> (= (ControlFlow 0 345) 9) anon181_Else_correct))))))))
(let ((anon179_Then_correct true))
(let ((anon178_Else_correct  (and (=> (= (ControlFlow 0 347) (- 0 348)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select g0@@11 n_1)) (select g0@@11 n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.8672:15|
 :skolemid |980|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select g0@@11 n_1@@0)) (select g0@@11 n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.8672:15|
 :skolemid |980|
)) (=> (and (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select g0@@11 n_1@@1) (< NoPerm FullPerm)) (and (qpRange139 n_1@@1) (= (invRecv139 n_1@@1) n_1@@1)))
 :qid |stdinbpl.8678:22|
 :skolemid |981|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_1@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) n_1@@1 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_1@@1 l_8))
)) (forall ((o_4@@108 T@Ref) ) (!  (=> (and (and (select g0@@11 (invRecv139 o_4@@108)) (< NoPerm FullPerm)) (qpRange139 o_4@@108)) (= (invRecv139 o_4@@108) o_4@@108))
 :qid |stdinbpl.8682:22|
 :skolemid |982|
 :pattern ( (invRecv139 o_4@@108))
))) (and (forall ((n_1@@2 T@Ref) ) (!  (=> (select g0@@11 n_1@@2) (not (= n_1@@2 null)))
 :qid |stdinbpl.8688:22|
 :skolemid |983|
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_1@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) n_1@@2 l_8))
 :pattern ( (select (|PolymorphicMapType_105161_69134_69135#PolymorphicMapType_105161| Heap@@29) n_1@@2 l_8))
)) (forall ((o_4@@109 T@Ref) ) (!  (and (=> (and (and (select g0@@11 (invRecv139 o_4@@109)) (< NoPerm FullPerm)) (qpRange139 o_4@@109)) (and (=> (< NoPerm FullPerm) (= (invRecv139 o_4@@109) o_4@@109)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_4@@109 l_8) (+ (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_4@@109 l_8) FullPerm)))) (=> (not (and (and (select g0@@11 (invRecv139 o_4@@109)) (< NoPerm FullPerm)) (qpRange139 o_4@@109))) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_4@@109 l_8) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_4@@109 l_8))))
 :qid |stdinbpl.8694:22|
 :skolemid |984|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_4@@109 l_8))
)))) (=> (and (and (and (and (forall ((o_4@@110 T@Ref) (f_5@@59 T@Field_105221_53) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| ZeroMask) o_4@@110 f_5@@59) (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@0) o_4@@110 f_5@@59)))
 :qid |stdinbpl.8698:29|
 :skolemid |985|
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| ZeroMask) o_4@@110 f_5@@59))
 :pattern ( (select (|PolymorphicMapType_105182_70297_53#PolymorphicMapType_105182| QPMask@0) o_4@@110 f_5@@59))
)) (forall ((o_4@@111 T@Ref) (f_5@@60 T@Field_105234_105235) ) (!  (=> (not (= f_5@@60 l_8)) (= (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_4@@111 f_5@@60) (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_4@@111 f_5@@60)))
 :qid |stdinbpl.8698:29|
 :skolemid |985|
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| ZeroMask) o_4@@111 f_5@@60))
 :pattern ( (select (|PolymorphicMapType_105182_70297_70298#PolymorphicMapType_105182| QPMask@0) o_4@@111 f_5@@60))
))) (forall ((o_4@@112 T@Ref) (f_5@@61 T@Field_70297_350585) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| ZeroMask) o_4@@112 f_5@@61) (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@0) o_4@@112 f_5@@61)))
 :qid |stdinbpl.8698:29|
 :skolemid |985|
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| ZeroMask) o_4@@112 f_5@@61))
 :pattern ( (select (|PolymorphicMapType_105182_70297_350585#PolymorphicMapType_105182| QPMask@0) o_4@@112 f_5@@61))
))) (forall ((o_4@@113 T@Ref) (f_5@@62 T@Field_70297_350718) ) (!  (=> true (= (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| ZeroMask) o_4@@113 f_5@@62) (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@0) o_4@@113 f_5@@62)))
 :qid |stdinbpl.8698:29|
 :skolemid |985|
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| ZeroMask) o_4@@113 f_5@@62))
 :pattern ( (select (|PolymorphicMapType_105182_70297_354264#PolymorphicMapType_105182| QPMask@0) o_4@@113 f_5@@62))
))) (state Heap@@29 QPMask@0)) (and (=> (= (ControlFlow 0 347) 2) anon179_Then_correct) (=> (= (ControlFlow 0 347) 345) anon179_Else_correct))))))))
(let ((anon178_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@29 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@29) x0 $allocated) (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@29) x1_2 $allocated)) (and (select (|PolymorphicMapType_105161_69131_53#PolymorphicMapType_105161| Heap@@29) x@@6 $allocated) (not (select g0@@11 null)))) (and (=> (= (ControlFlow 0 349) 1) anon178_Then_correct) (=> (= (ControlFlow 0 349) 347) anon178_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 350) 349) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 136) (- 135))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
