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
(declare-sort T@Field_44199_53 0)
(declare-sort T@Field_44212_44213 0)
(declare-sort T@Field_29078_143936 0)
(declare-sort T@Field_29078_143803 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_44160 0)) (((PolymorphicMapType_44160 (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| (Array T@Ref T@Field_44212_44213 Real)) (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| (Array T@Ref T@Field_44199_53 Real)) (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| (Array T@Ref T@Field_29078_143803 Real)) (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| (Array T@Ref T@Field_29078_143936 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_44688 0)) (((PolymorphicMapType_44688 (|PolymorphicMapType_44688_44199_53#PolymorphicMapType_44688| (Array T@Ref T@Field_44199_53 Bool)) (|PolymorphicMapType_44688_44199_44213#PolymorphicMapType_44688| (Array T@Ref T@Field_44212_44213 Bool)) (|PolymorphicMapType_44688_44199_143803#PolymorphicMapType_44688| (Array T@Ref T@Field_29078_143803 Bool)) (|PolymorphicMapType_44688_44199_144916#PolymorphicMapType_44688| (Array T@Ref T@Field_29078_143936 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_44139 0)) (((PolymorphicMapType_44139 (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| (Array T@Ref T@Field_44199_53 Bool)) (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| (Array T@Ref T@Field_44212_44213 T@Ref)) (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| (Array T@Ref T@Field_29078_143936 T@PolymorphicMapType_44688)) (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| (Array T@Ref T@Field_29078_143803 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_44199_53)
(declare-fun next () T@Field_44212_44213)
(declare-fun succHeap (T@PolymorphicMapType_44139 T@PolymorphicMapType_44139) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_44139 T@PolymorphicMapType_44139) Bool)
(declare-fun state (T@PolymorphicMapType_44139 T@PolymorphicMapType_44160) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_44160) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_44688)
(declare-fun |Math#min| (Int Int) Int)
(declare-sort T@EdgeDomainType 0)
(declare-fun exists_path ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun edge ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun exists_path_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun exists_path_2 ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun exists_path_2_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun |$$'| (T@PolymorphicMapType_44139 (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun dummyFunction_52971 ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun |$$#triggerStateless| ((Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |Set#Union_29281| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_29281| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_29281| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_29281| ((Array T@Ref Bool)) Int)
(declare-fun $$ (T@PolymorphicMapType_44139 (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_44139 T@PolymorphicMapType_44139 T@PolymorphicMapType_44160) Bool)
(declare-fun IsPredicateField_29078_143894 (T@Field_29078_143803) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_29078 (T@Field_29078_143803) T@Field_29078_143936)
(declare-fun HasDirectPerm_29078_143867 (T@PolymorphicMapType_44160 T@Ref T@Field_29078_143803) Bool)
(declare-fun IsWandField_29078_145443 (T@Field_29078_143803) Bool)
(declare-fun WandMaskField_29078 (T@Field_29078_143803) T@Field_29078_143936)
(declare-fun func_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun unshared_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |$$#trigger| (T@FrameType (Array T@Ref Bool)) Bool)
(declare-fun FrameFragment_6496 (Int) T@FrameType)
(declare-fun |$$#condqp1| (T@PolymorphicMapType_44139 (Array T@Ref Bool)) Int)
(declare-fun create_edge (T@Ref T@Ref) T@EdgeDomainType)
(declare-fun dummyHeap () T@PolymorphicMapType_44139)
(declare-fun ZeroMask () T@PolymorphicMapType_44160)
(declare-fun InsidePredicate_44199_44199 (T@Field_29078_143803 T@FrameType T@Field_29078_143803 T@FrameType) Bool)
(declare-fun IsPredicateField_29078_29079 (T@Field_44212_44213) Bool)
(declare-fun IsWandField_29078_29079 (T@Field_44212_44213) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_29078_148377 (T@Field_29078_143936) Bool)
(declare-fun IsWandField_29078_148393 (T@Field_29078_143936) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_29078_53 (T@Field_44199_53) Bool)
(declare-fun IsWandField_29078_53 (T@Field_44199_53) Bool)
(declare-fun |Set#Equal_29085| ((Array T@EdgeDomainType Bool) (Array T@EdgeDomainType Bool)) Bool)
(declare-fun HasDirectPerm_29078_148748 (T@PolymorphicMapType_44160 T@Ref T@Field_29078_143936) Bool)
(declare-fun HasDirectPerm_29078_53 (T@PolymorphicMapType_44160 T@Ref T@Field_44199_53) Bool)
(declare-fun HasDirectPerm_29078_29079 (T@PolymorphicMapType_44160 T@Ref T@Field_44212_44213) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun apply_IND ((Array T@EdgeDomainType Bool) (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun sumMask (T@PolymorphicMapType_44160 T@PolymorphicMapType_44160 T@PolymorphicMapType_44160) Bool)
(declare-fun |Set#Difference_29281| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_29281| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun acyclic_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun edge_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun |Set#Empty_29281| () (Array T@Ref Bool))
(declare-fun edge_pred (T@EdgeDomainType) T@Ref)
(declare-fun edge_succ (T@EdgeDomainType) T@Ref)
(declare-fun |$$#frame| (T@FrameType (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |sk_$$#condqp1| (Int Int) T@Ref)
(declare-fun inst_uReach_rev ((Array T@EdgeDomainType Bool) T@Ref) (Array T@Ref Bool))
(declare-fun inst_uReach_2 ((Array T@EdgeDomainType Bool) T@Ref) (Array T@Ref Bool))
(declare-fun inst_uReach ((Array T@EdgeDomainType Bool) T@Ref) (Array T@Ref Bool))
(declare-fun apply_IND_2 ((Array T@EdgeDomainType Bool) (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_44139) (Heap1 T@PolymorphicMapType_44139) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_44139) (Mask T@PolymorphicMapType_44160) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_44139) (Heap1@@0 T@PolymorphicMapType_44139) (Heap2 T@PolymorphicMapType_44139) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_29078_143936) ) (!  (not (select (|PolymorphicMapType_44688_44199_144916#PolymorphicMapType_44688| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_44688_44199_144916#PolymorphicMapType_44688| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_29078_143803) ) (!  (not (select (|PolymorphicMapType_44688_44199_143803#PolymorphicMapType_44688| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_44688_44199_143803#PolymorphicMapType_44688| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_44212_44213) ) (!  (not (select (|PolymorphicMapType_44688_44199_44213#PolymorphicMapType_44688| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_44688_44199_44213#PolymorphicMapType_44688| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_44199_53) ) (!  (not (select (|PolymorphicMapType_44688_44199_53#PolymorphicMapType_44688| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_44688_44199_53#PolymorphicMapType_44688| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.519:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (start_1 T@Ref) (end_1 T@Ref) ) (! (= (exists_path_ EG_1 start_1 end_1)  (or (= start_1 end_1) (exists ((w_2 T@Ref) ) (!  (and (edge EG_1 start_1 w_2) (exists_path_ EG_1 w_2 end_1))
 :qid |stdinbpl.774:78|
 :skolemid |98|
 :pattern ( (edge EG_1 start_1 w_2))
 :pattern ( (exists_path_ EG_1 w_2 end_1))
))))
 :qid |stdinbpl.772:15|
 :skolemid |99|
 :pattern ( (exists_path EG_1 start_1 end_1))
 :pattern ( (edge EG_1 start_1 end_1))
)))
(assert (forall ((EG_1@@0 (Array T@EdgeDomainType Bool)) (start_1@@0 T@Ref) (end_1@@0 T@Ref) ) (! (= (exists_path_2_ EG_1@@0 start_1@@0 end_1@@0)  (or (= start_1@@0 end_1@@0) (exists ((w_2@@0 T@Ref) ) (!  (and (exists_path_2_ EG_1@@0 start_1@@0 w_2@@0) (edge EG_1@@0 w_2@@0 end_1@@0))
 :qid |stdinbpl.783:80|
 :skolemid |100|
 :pattern ( (exists_path_2_ EG_1@@0 start_1@@0 w_2@@0))
 :pattern ( (edge EG_1@@0 w_2@@0 end_1@@0))
))))
 :qid |stdinbpl.781:15|
 :skolemid |101|
 :pattern ( (exists_path_2 EG_1@@0 start_1@@0 end_1@@0))
 :pattern ( (edge EG_1@@0 start_1@@0 end_1@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_44139) (refs (Array T@Ref Bool)) ) (! (dummyFunction_52971 (|$$#triggerStateless| refs))
 :qid |stdinbpl.841:15|
 :skolemid |110|
 :pattern ( (|$$'| Heap@@0 refs))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_29281| (|Set#Union_29281| a@@0 b@@0) b@@0) (|Set#Union_29281| a@@0 b@@0))
 :qid |stdinbpl.471:18|
 :skolemid |38|
 :pattern ( (|Set#Union_29281| (|Set#Union_29281| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_29281| (|Set#Intersection_29281| a@@1 b@@1) b@@1) (|Set#Intersection_29281| a@@1 b@@1))
 :qid |stdinbpl.475:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_29281| (|Set#Intersection_29281| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_29281| r) o) (= r o))
 :qid |stdinbpl.440:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_29281| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_29281| (|Set#Union_29281| a@@2 b@@2)) (|Set#Card_29281| (|Set#Intersection_29281| a@@2 b@@2))) (+ (|Set#Card_29281| a@@2) (|Set#Card_29281| b@@2)))
 :qid |stdinbpl.479:18|
 :skolemid |42|
 :pattern ( (|Set#Card_29281| (|Set#Union_29281| a@@2 b@@2)))
 :pattern ( (|Set#Card_29281| (|Set#Intersection_29281| a@@2 b@@2)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_44139) (refs@@0 (Array T@Ref Bool)) ) (!  (and (= ($$ Heap@@1 refs@@0) (|$$'| Heap@@1 refs@@0)) (dummyFunction_52971 (|$$#triggerStateless| refs@@0)))
 :qid |stdinbpl.837:15|
 :skolemid |109|
 :pattern ( ($$ Heap@@1 refs@@0))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.522:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_44139) (ExhaleHeap T@PolymorphicMapType_44139) (Mask@@0 T@PolymorphicMapType_44160) (pm_f_11 T@Field_29078_143803) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_29078_143867 Mask@@0 null pm_f_11) (IsPredicateField_29078_143894 pm_f_11)) (= (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@2) null (PredicateMaskField_29078 pm_f_11)) (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap) null (PredicateMaskField_29078 pm_f_11)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_29078_143894 pm_f_11) (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap) null (PredicateMaskField_29078 pm_f_11)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_44139) (ExhaleHeap@@0 T@PolymorphicMapType_44139) (Mask@@1 T@PolymorphicMapType_44160) (pm_f_11@@0 T@Field_29078_143803) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_29078_143867 Mask@@1 null pm_f_11@@0) (IsWandField_29078_145443 pm_f_11@@0)) (= (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@3) null (WandMaskField_29078 pm_f_11@@0)) (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap@@0) null (WandMaskField_29078 pm_f_11@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_29078_145443 pm_f_11@@0) (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap@@0) null (WandMaskField_29078 pm_f_11@@0)))
)))
(assert (forall ((EG_1@@1 (Array T@EdgeDomainType Bool)) ) (! (= (func_graph EG_1@@1) (forall ((v1 T@Ref) (v2 T@Ref) (v_2 T@Ref) ) (!  (=> (and (edge EG_1@@1 v_2 v1) (edge EG_1@@1 v_2 v2)) (= v1 v2))
 :qid |stdinbpl.798:39|
 :skolemid |103|
 :pattern ( (edge EG_1@@1 v_2 v1) (edge EG_1@@1 v_2 v2))
)))
 :qid |stdinbpl.796:15|
 :skolemid |104|
 :pattern ( (func_graph EG_1@@1))
)))
(assert (forall ((EG_1@@2 (Array T@EdgeDomainType Bool)) ) (! (= (unshared_graph EG_1@@2) (forall ((v1@@0 T@Ref) (v2@@0 T@Ref) (v_2@@0 T@Ref) ) (!  (=> (and (edge EG_1@@2 v1@@0 v_2@@0) (edge EG_1@@2 v2@@0 v_2@@0)) (= v1@@0 v2@@0))
 :qid |stdinbpl.807:43|
 :skolemid |105|
 :pattern ( (edge EG_1@@2 v1@@0 v_2@@0) (edge EG_1@@2 v2@@0 v_2@@0))
)))
 :qid |stdinbpl.805:15|
 :skolemid |106|
 :pattern ( (unshared_graph EG_1@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_44139) (Mask@@2 T@PolymorphicMapType_44160) (refs@@1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@4 Mask@@2) (or (< AssumeFunctionsAbove 0) (|$$#trigger| (FrameFragment_6496 (|$$#condqp1| Heap@@4 refs@@1)) refs@@1))) (forall ((p_1 T@Ref) (s_1 T@Ref) ) (! (=  (and (select refs@@1 p_1) (and (select refs@@1 s_1) (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@4) p_1 next) s_1))) (select (|$$'| Heap@@4 refs@@1) (create_edge p_1 s_1)))
 :qid |stdinbpl.866:122|
 :skolemid |113|
 :pattern ( (create_edge p_1 s_1))
)))
 :qid |stdinbpl.864:15|
 :skolemid |114|
 :pattern ( (state Heap@@4 Mask@@2) (|$$'| Heap@@4 refs@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_44139) (ExhaleHeap@@1 T@PolymorphicMapType_44139) (Mask@@3 T@PolymorphicMapType_44160) (pm_f_11@@1 T@Field_29078_143803) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_29078_143867 Mask@@3 null pm_f_11@@1) (IsPredicateField_29078_143894 pm_f_11@@1)) (and (and (and (forall ((o2_11 T@Ref) (f_33 T@Field_44199_53) ) (!  (=> (select (|PolymorphicMapType_44688_44199_53#PolymorphicMapType_44688| (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@5) null (PredicateMaskField_29078 pm_f_11@@1))) o2_11 f_33) (= (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@5) o2_11 f_33) (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| ExhaleHeap@@1) o2_11 f_33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| ExhaleHeap@@1) o2_11 f_33))
)) (forall ((o2_11@@0 T@Ref) (f_33@@0 T@Field_44212_44213) ) (!  (=> (select (|PolymorphicMapType_44688_44199_44213#PolymorphicMapType_44688| (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@5) null (PredicateMaskField_29078 pm_f_11@@1))) o2_11@@0 f_33@@0) (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@5) o2_11@@0 f_33@@0) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@@1) o2_11@@0 f_33@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@@1) o2_11@@0 f_33@@0))
))) (forall ((o2_11@@1 T@Ref) (f_33@@1 T@Field_29078_143803) ) (!  (=> (select (|PolymorphicMapType_44688_44199_143803#PolymorphicMapType_44688| (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@5) null (PredicateMaskField_29078 pm_f_11@@1))) o2_11@@1 f_33@@1) (= (select (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@5) o2_11@@1 f_33@@1) (select (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| ExhaleHeap@@1) o2_11@@1 f_33@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| ExhaleHeap@@1) o2_11@@1 f_33@@1))
))) (forall ((o2_11@@2 T@Ref) (f_33@@2 T@Field_29078_143936) ) (!  (=> (select (|PolymorphicMapType_44688_44199_144916#PolymorphicMapType_44688| (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@5) null (PredicateMaskField_29078 pm_f_11@@1))) o2_11@@2 f_33@@2) (= (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@5) o2_11@@2 f_33@@2) (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap@@1) o2_11@@2 f_33@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap@@1) o2_11@@2 f_33@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (IsPredicateField_29078_143894 pm_f_11@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_44139) (ExhaleHeap@@2 T@PolymorphicMapType_44139) (Mask@@4 T@PolymorphicMapType_44160) (pm_f_11@@2 T@Field_29078_143803) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_29078_143867 Mask@@4 null pm_f_11@@2) (IsWandField_29078_145443 pm_f_11@@2)) (and (and (and (forall ((o2_11@@3 T@Ref) (f_33@@3 T@Field_44199_53) ) (!  (=> (select (|PolymorphicMapType_44688_44199_53#PolymorphicMapType_44688| (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@6) null (WandMaskField_29078 pm_f_11@@2))) o2_11@@3 f_33@@3) (= (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@6) o2_11@@3 f_33@@3) (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| ExhaleHeap@@2) o2_11@@3 f_33@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| ExhaleHeap@@2) o2_11@@3 f_33@@3))
)) (forall ((o2_11@@4 T@Ref) (f_33@@4 T@Field_44212_44213) ) (!  (=> (select (|PolymorphicMapType_44688_44199_44213#PolymorphicMapType_44688| (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@6) null (WandMaskField_29078 pm_f_11@@2))) o2_11@@4 f_33@@4) (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@6) o2_11@@4 f_33@@4) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@@2) o2_11@@4 f_33@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@@2) o2_11@@4 f_33@@4))
))) (forall ((o2_11@@5 T@Ref) (f_33@@5 T@Field_29078_143803) ) (!  (=> (select (|PolymorphicMapType_44688_44199_143803#PolymorphicMapType_44688| (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@6) null (WandMaskField_29078 pm_f_11@@2))) o2_11@@5 f_33@@5) (= (select (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@6) o2_11@@5 f_33@@5) (select (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| ExhaleHeap@@2) o2_11@@5 f_33@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| ExhaleHeap@@2) o2_11@@5 f_33@@5))
))) (forall ((o2_11@@6 T@Ref) (f_33@@6 T@Field_29078_143936) ) (!  (=> (select (|PolymorphicMapType_44688_44199_144916#PolymorphicMapType_44688| (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@6) null (WandMaskField_29078 pm_f_11@@2))) o2_11@@6 f_33@@6) (= (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@6) o2_11@@6 f_33@@6) (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap@@2) o2_11@@6 f_33@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap@@2) o2_11@@6 f_33@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (IsWandField_29078_145443 pm_f_11@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1@@3 (Array T@EdgeDomainType Bool)) (u_1 T@Ref) (v_2@@1 T@Ref) (w_2@@1 T@Ref) ) (!  (=> (and (exists_path_ EG_1@@3 u_1 w_2@@1) (exists_path_ EG_1@@3 w_2@@1 v_2@@1)) (exists_path_ EG_1@@3 u_1 v_2@@1))
 :qid |stdinbpl.790:15|
 :skolemid |102|
 :pattern ( (exists_path EG_1@@3 u_1 w_2@@1) (exists_path EG_1@@3 w_2@@1 v_2@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_44139) (ExhaleHeap@@3 T@PolymorphicMapType_44139) (Mask@@5 T@PolymorphicMapType_44160) (o_25 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (=> (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@7) o_25 $allocated) (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| ExhaleHeap@@3) o_25 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| ExhaleHeap@@3) o_25 $allocated))
)))
(assert (forall ((p T@Field_29078_143803) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_44199_44199 p v_1 p w))
 :qid |stdinbpl.417:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_44199_44199 p v_1 p w))
)))
(assert  (not (IsPredicateField_29078_29079 next)))
(assert  (not (IsWandField_29078_29079 next)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_44139) (ExhaleHeap@@4 T@PolymorphicMapType_44139) (Mask@@6 T@PolymorphicMapType_44160) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (succHeap Heap@@8 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_44160) (o_2@@3 T@Ref) (f_4@@3 T@Field_29078_143936) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| Mask@@7) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_29078_148377 f_4@@3))) (not (IsWandField_29078_148393 f_4@@3))) (<= (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| Mask@@7) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| Mask@@7) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_44160) (o_2@@4 T@Ref) (f_4@@4 T@Field_29078_143803) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_29078_143894 f_4@@4))) (not (IsWandField_29078_145443 f_4@@4))) (<= (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_44160) (o_2@@5 T@Ref) (f_4@@5 T@Field_44199_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_29078_53 f_4@@5))) (not (IsWandField_29078_53 f_4@@5))) (<= (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_44160) (o_2@@6 T@Ref) (f_4@@6 T@Field_44212_44213) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_29078_29079 f_4@@6))) (not (IsWandField_29078_29079 f_4@@6))) (<= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((a@@4 (Array T@EdgeDomainType Bool)) (b@@3 (Array T@EdgeDomainType Bool)) ) (! (= (|Set#Equal_29085| a@@4 b@@3) (forall ((o@@0 T@EdgeDomainType) ) (! (= (select a@@4 o@@0) (select b@@3 o@@0))
 :qid |stdinbpl.504:31|
 :skolemid |48|
 :pattern ( (select a@@4 o@@0))
 :pattern ( (select b@@3 o@@0))
)))
 :qid |stdinbpl.503:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_29085| a@@4 b@@3))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_44160) (o_2@@7 T@Ref) (f_4@@7 T@Field_29078_143936) ) (! (= (HasDirectPerm_29078_148748 Mask@@11 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| Mask@@11) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29078_148748 Mask@@11 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_44160) (o_2@@8 T@Ref) (f_4@@8 T@Field_29078_143803) ) (! (= (HasDirectPerm_29078_143867 Mask@@12 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| Mask@@12) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29078_143867 Mask@@12 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_44160) (o_2@@9 T@Ref) (f_4@@9 T@Field_44199_53) ) (! (= (HasDirectPerm_29078_53 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29078_53 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_44160) (o_2@@10 T@Ref) (f_4@@10 T@Field_44212_44213) ) (! (= (HasDirectPerm_29078_29079 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29078_29079 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.405:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_44139) (ExhaleHeap@@5 T@PolymorphicMapType_44139) (Mask@@15 T@PolymorphicMapType_44160) (o_25@@0 T@Ref) (f_33@@7 T@Field_29078_143936) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@15) (=> (HasDirectPerm_29078_148748 Mask@@15 o_25@@0 f_33@@7) (= (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@9) o_25@@0 f_33@@7) (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap@@5) o_25@@0 f_33@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@15) (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap@@5) o_25@@0 f_33@@7))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_44139) (ExhaleHeap@@6 T@PolymorphicMapType_44139) (Mask@@16 T@PolymorphicMapType_44160) (o_25@@1 T@Ref) (f_33@@8 T@Field_29078_143803) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@16) (=> (HasDirectPerm_29078_143867 Mask@@16 o_25@@1 f_33@@8) (= (select (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@10) o_25@@1 f_33@@8) (select (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| ExhaleHeap@@6) o_25@@1 f_33@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@16) (select (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| ExhaleHeap@@6) o_25@@1 f_33@@8))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_44139) (ExhaleHeap@@7 T@PolymorphicMapType_44139) (Mask@@17 T@PolymorphicMapType_44160) (o_25@@2 T@Ref) (f_33@@9 T@Field_44199_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@17) (=> (HasDirectPerm_29078_53 Mask@@17 o_25@@2 f_33@@9) (= (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@11) o_25@@2 f_33@@9) (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| ExhaleHeap@@7) o_25@@2 f_33@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@17) (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| ExhaleHeap@@7) o_25@@2 f_33@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_44139) (ExhaleHeap@@8 T@PolymorphicMapType_44139) (Mask@@18 T@PolymorphicMapType_44160) (o_25@@3 T@Ref) (f_33@@10 T@Field_44212_44213) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@18) (=> (HasDirectPerm_29078_29079 Mask@@18 o_25@@3 f_33@@10) (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@12) o_25@@3 f_33@@10) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@@8) o_25@@3 f_33@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@18) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@@8) o_25@@3 f_33@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_29078_143936) ) (! (= (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_29078_143803) ) (! (= (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_44199_53) ) (! (= (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_44212_44213) ) (! (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((EG_1@@4 (Array T@EdgeDomainType Bool)) (Z_1 (Array T@Ref Bool)) (P_2 (Array T@Ref Bool)) ) (!  (=> (apply_IND EG_1@@4 Z_1 P_2) (=> (and (forall ((z T@Ref) ) (!  (=> (select Z_1 z) (select P_2 z))
 :qid |stdinbpl.714:49|
 :skolemid |85|
 :pattern ( (select Z_1 z))
 :pattern ( (select P_2 z))
)) (forall ((u_1@@0 T@Ref) (v_2@@2 T@Ref) ) (!  (=> (and (select P_2 u_1@@0) (edge EG_1@@4 u_1@@0 v_2@@2)) (select P_2 v_2@@2))
 :qid |stdinbpl.717:16|
 :skolemid |86|
 :pattern ( (edge EG_1@@4 u_1@@0 v_2@@2))
 :pattern ( (select P_2 u_1@@0) (select P_2 v_2@@2))
))) (forall ((u_1_1 T@Ref) (z_1 T@Ref) ) (!  (=> (and (select Z_1 z_1) (exists_path EG_1@@4 z_1 u_1_1)) (select P_2 u_1_1))
 :qid |stdinbpl.720:17|
 :skolemid |87|
 :pattern ( (exists_path EG_1@@4 z_1 u_1_1))
 :pattern ( (select Z_1 z_1) (select P_2 u_1_1))
))))
 :qid |stdinbpl.712:15|
 :skolemid |88|
 :pattern ( (apply_IND EG_1@@4 Z_1 P_2))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_44160) (SummandMask1 T@PolymorphicMapType_44160) (SummandMask2 T@PolymorphicMapType_44160) (o_2@@15 T@Ref) (f_4@@15 T@Field_29078_143936) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_44160) (SummandMask1@@0 T@PolymorphicMapType_44160) (SummandMask2@@0 T@PolymorphicMapType_44160) (o_2@@16 T@Ref) (f_4@@16 T@Field_29078_143803) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_44160) (SummandMask1@@1 T@PolymorphicMapType_44160) (SummandMask2@@1 T@PolymorphicMapType_44160) (o_2@@17 T@Ref) (f_4@@17 T@Field_44199_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_44160) (SummandMask1@@2 T@PolymorphicMapType_44160) (SummandMask2@@2 T@PolymorphicMapType_44160) (o_2@@18 T@Ref) (f_4@@18 T@Field_44212_44213) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Intersection_29281| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (select b@@4 o@@1)))
 :qid |stdinbpl.468:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_29281| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Intersection_29281| a@@5 b@@4) (select a@@5 o@@1))
 :pattern ( (|Set#Intersection_29281| a@@5 b@@4) (select b@@4 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (o@@2 T@Ref) ) (! (= (select (|Set#Difference_29281| a@@6 b@@5) o@@2)  (and (select a@@6 o@@2) (not (select b@@5 o@@2))))
 :qid |stdinbpl.483:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_29281| a@@6 b@@5) o@@2))
 :pattern ( (|Set#Difference_29281| a@@6 b@@5) (select a@@6 o@@2))
)))
(assert (forall ((a@@7 (Array T@EdgeDomainType Bool)) (b@@6 (Array T@EdgeDomainType Bool)) ) (!  (=> (|Set#Equal_29085| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.505:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_29085| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@8 y) (select (|Set#UnionOne_29281| a@@8 x) y))
 :qid |stdinbpl.448:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_29281| a@@8 x) (select a@@8 y))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@9 y@@0) (select (|Set#Union_29281| a@@9 b@@7) y@@0))
 :qid |stdinbpl.458:18|
 :skolemid |35|
 :pattern ( (|Set#Union_29281| a@@9 b@@7) (select a@@9 y@@0))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@8 y@@1) (select (|Set#Union_29281| a@@10 b@@8) y@@1))
 :qid |stdinbpl.460:18|
 :skolemid |36|
 :pattern ( (|Set#Union_29281| a@@10 b@@8) (select b@@8 y@@1))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@3 T@Ref) ) (! (= (select (|Set#UnionOne_29281| a@@11 x@@0) o@@3)  (or (= o@@3 x@@0) (select a@@11 o@@3)))
 :qid |stdinbpl.444:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_29281| a@@11 x@@0) o@@3))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@9 y@@2) (not (select (|Set#Difference_29281| a@@12 b@@9) y@@2)))
 :qid |stdinbpl.485:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_29281| a@@12 b@@9) (select b@@9 y@@2))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_29281| (|Set#Difference_29281| a@@13 b@@10)) (|Set#Card_29281| (|Set#Difference_29281| b@@10 a@@13))) (|Set#Card_29281| (|Set#Intersection_29281| a@@13 b@@10))) (|Set#Card_29281| (|Set#Union_29281| a@@13 b@@10))) (= (|Set#Card_29281| (|Set#Difference_29281| a@@13 b@@10)) (- (|Set#Card_29281| a@@13) (|Set#Card_29281| (|Set#Intersection_29281| a@@13 b@@10)))))
 :qid |stdinbpl.487:18|
 :skolemid |45|
 :pattern ( (|Set#Card_29281| (|Set#Difference_29281| a@@13 b@@10)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_29281| s))
 :qid |stdinbpl.430:18|
 :skolemid |22|
 :pattern ( (|Set#Card_29281| s))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_29281| a@@14 x@@1) x@@1)
 :qid |stdinbpl.446:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_29281| a@@14 x@@1))
)))
(assert (forall ((EG_1@@5 (Array T@EdgeDomainType Bool)) ) (! (= (acyclic_graph EG_1@@5) (forall ((v1@@1 T@Ref) (v2@@1 T@Ref) ) (!  (or (not (edge EG_1@@5 v1@@1 v2@@1)) (not (exists_path EG_1@@5 v2@@1 v1@@1)))
 :qid |stdinbpl.816:42|
 :skolemid |107|
 :pattern ( (edge EG_1@@5 v1@@1 v2@@1))
 :pattern ( (exists_path EG_1@@5 v2@@1 v1@@1))
)))
 :qid |stdinbpl.814:15|
 :skolemid |108|
 :pattern ( (acyclic_graph EG_1@@5))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@15 x@@2) (= (|Set#Card_29281| (|Set#UnionOne_29281| a@@15 x@@2)) (|Set#Card_29281| a@@15)))
 :qid |stdinbpl.450:18|
 :skolemid |32|
 :pattern ( (|Set#Card_29281| (|Set#UnionOne_29281| a@@15 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_29281| (|Set#Singleton_29281| r@@0)) 1)
 :qid |stdinbpl.441:18|
 :skolemid |28|
 :pattern ( (|Set#Card_29281| (|Set#Singleton_29281| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_29281| r@@1) r@@1)
 :qid |stdinbpl.439:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_29281| r@@1))
)))
(assert (forall ((EG_1@@6 (Array T@EdgeDomainType Bool)) (p_1@@0 T@Ref) (s_1@@0 T@Ref) ) (! (= (edge_ EG_1@@6 p_1@@0 s_1@@0) (select EG_1@@6 (create_edge p_1@@0 s_1@@0)))
 :qid |stdinbpl.706:15|
 :skolemid |84|
 :pattern ( (select EG_1@@6 (create_edge p_1@@0 s_1@@0)))
 :pattern ( (edge EG_1@@6 p_1@@0 s_1@@0))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) ) (! (= (|Set#Union_29281| a@@16 (|Set#Union_29281| a@@16 b@@11)) (|Set#Union_29281| a@@16 b@@11))
 :qid |stdinbpl.473:18|
 :skolemid |39|
 :pattern ( (|Set#Union_29281| a@@16 (|Set#Union_29281| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_29281| a@@17 (|Set#Intersection_29281| a@@17 b@@12)) (|Set#Intersection_29281| a@@17 b@@12))
 :qid |stdinbpl.477:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_29281| a@@17 (|Set#Intersection_29281| a@@17 b@@12)))
)))
(assert (forall ((o@@4 T@Ref) ) (!  (not (select |Set#Empty_29281| o@@4))
 :qid |stdinbpl.433:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_29281| o@@4))
)))
(assert (forall ((p_1@@1 T@Ref) (s_1@@1 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@1 s_1@@1)) p_1@@1) (= (edge_succ (create_edge p_1@@1 s_1@@1)) s_1@@1))
 :qid |stdinbpl.633:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@1 s_1@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_44139) (o_24 T@Ref) (f_17 T@Field_29078_143803) (v T@FrameType) ) (! (succHeap Heap@@13 (PolymorphicMapType_44139 (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@13) (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@13) (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@13) (store (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@13) o_24 f_17 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_44139 (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@13) (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@13) (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@13) (store (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@13) o_24 f_17 v)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_44139) (o_24@@0 T@Ref) (f_17@@0 T@Field_29078_143936) (v@@0 T@PolymorphicMapType_44688) ) (! (succHeap Heap@@14 (PolymorphicMapType_44139 (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@14) (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@14) (store (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@14) o_24@@0 f_17@@0 v@@0) (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_44139 (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@14) (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@14) (store (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@14) o_24@@0 f_17@@0 v@@0) (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_44139) (o_24@@1 T@Ref) (f_17@@1 T@Field_44212_44213) (v@@1 T@Ref) ) (! (succHeap Heap@@15 (PolymorphicMapType_44139 (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@15) (store (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@15) o_24@@1 f_17@@1 v@@1) (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@15) (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_44139 (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@15) (store (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@15) o_24@@1 f_17@@1 v@@1) (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@15) (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_44139) (o_24@@2 T@Ref) (f_17@@2 T@Field_44199_53) (v@@2 Bool) ) (! (succHeap Heap@@16 (PolymorphicMapType_44139 (store (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@16) o_24@@2 f_17@@2 v@@2) (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@16) (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@16) (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_44139 (store (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@16) o_24@@2 f_17@@2 v@@2) (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@16) (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@16) (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@16)))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.517:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.518:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_29281| s@@0) 0) (= s@@0 |Set#Empty_29281|)) (=> (not (= (|Set#Card_29281| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.436:33|
 :skolemid |24|
))))
 :qid |stdinbpl.434:18|
 :skolemid |25|
 :pattern ( (|Set#Card_29281| s@@0))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_44139) (Mask@@19 T@PolymorphicMapType_44160) (refs@@2 (Array T@Ref Bool)) ) (!  (=> (state Heap@@17 Mask@@19) (= (|$$'| Heap@@17 refs@@2) (|$$#frame| (FrameFragment_6496 (|$$#condqp1| Heap@@17 refs@@2)) refs@@2)))
 :qid |stdinbpl.848:15|
 :skolemid |111|
 :pattern ( (state Heap@@17 Mask@@19) (|$$'| Heap@@17 refs@@2))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_44139) (Heap1Heap T@PolymorphicMapType_44139) (refs@@3 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select refs@@3 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3))) (< NoPerm FullPerm))  (and (select refs@@3 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3))) (< NoPerm FullPerm))) (=> (and (select refs@@3 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap2Heap) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3)) next) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap1Heap) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3)) next)))) (= (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3)))
 :qid |stdinbpl.858:15|
 :skolemid |112|
 :pattern ( (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@20 x@@4)) (= (|Set#Card_29281| (|Set#UnionOne_29281| a@@20 x@@4)) (+ (|Set#Card_29281| a@@20) 1)))
 :qid |stdinbpl.452:18|
 :skolemid |33|
 :pattern ( (|Set#Card_29281| (|Set#UnionOne_29281| a@@20 x@@4)))
)))
(assert (forall ((o_24@@3 T@Ref) (f_34 T@Field_44212_44213) (Heap@@18 T@PolymorphicMapType_44139) ) (!  (=> (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@18) o_24@@3 $allocated) (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@18) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@18) o_24@@3 f_34) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@18) o_24@@3 f_34))
)))
(assert (forall ((p@@1 T@Field_29078_143803) (v_1@@0 T@FrameType) (q T@Field_29078_143803) (w@@0 T@FrameType) (r@@2 T@Field_29078_143803) (u T@FrameType) ) (!  (=> (and (InsidePredicate_44199_44199 p@@1 v_1@@0 q w@@0) (InsidePredicate_44199_44199 q w@@0 r@@2 u)) (InsidePredicate_44199_44199 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.412:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_44199_44199 p@@1 v_1@@0 q w@@0) (InsidePredicate_44199_44199 q w@@0 r@@2 u))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.523:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (forall ((EG_1@@7 (Array T@EdgeDomainType Bool)) (u_1@@1 T@Ref) (y@@3 T@Ref) ) (! (= (select (inst_uReach_rev EG_1@@7 y@@3) u_1@@1) (exists_path EG_1@@7 u_1@@1 y@@3))
 :qid |stdinbpl.742:15|
 :skolemid |93|
 :pattern ( (select (inst_uReach_rev EG_1@@7 y@@3) u_1@@1))
 :pattern ( (exists_path EG_1@@7 u_1@@1 y@@3))
)))
(assert (forall ((EG_1@@8 (Array T@EdgeDomainType Bool)) (x@@5 T@Ref) (v_2@@3 T@Ref) ) (! (= (select (inst_uReach_2 EG_1@@8 x@@5) v_2@@3) (exists_path_2 EG_1@@8 x@@5 v_2@@3))
 :qid |stdinbpl.748:15|
 :skolemid |94|
 :pattern ( (select (inst_uReach_2 EG_1@@8 x@@5) v_2@@3))
 :pattern ( (exists_path_2 EG_1@@8 x@@5 v_2@@3))
)))
(assert (forall ((EG_1@@9 (Array T@EdgeDomainType Bool)) (x@@6 T@Ref) (v_2@@4 T@Ref) ) (! (= (select (inst_uReach EG_1@@9 x@@6) v_2@@4) (exists_path EG_1@@9 x@@6 v_2@@4))
 :qid |stdinbpl.754:15|
 :skolemid |95|
 :pattern ( (select (inst_uReach EG_1@@9 x@@6) v_2@@4))
 :pattern ( (exists_path EG_1@@9 x@@6 v_2@@4))
)))
(assert (forall ((EG_1@@10 (Array T@EdgeDomainType Bool)) (Z_1@@0 (Array T@Ref Bool)) (P_2@@0 (Array T@Ref Bool)) ) (!  (=> (apply_IND_2 EG_1@@10 Z_1@@0 P_2@@0) (=> (and (forall ((z@@0 T@Ref) ) (!  (=> (select Z_1@@0 z@@0) (select P_2@@0 z@@0))
 :qid |stdinbpl.729:51|
 :skolemid |89|
 :pattern ( (select Z_1@@0 z@@0))
 :pattern ( (select P_2@@0 z@@0))
)) (forall ((u_1@@2 T@Ref) (v_2@@5 T@Ref) ) (!  (=> (and (edge EG_1@@10 u_1@@2 v_2@@5) (select P_2@@0 v_2@@5)) (select P_2@@0 u_1@@2))
 :qid |stdinbpl.732:16|
 :skolemid |90|
 :pattern ( (edge EG_1@@10 u_1@@2 v_2@@5))
 :pattern ( (select P_2@@0 u_1@@2) (select P_2@@0 v_2@@5))
))) (forall ((u_1_1@@0 T@Ref) (z_1@@0 T@Ref) ) (!  (=> (and (select Z_1@@0 z_1@@0) (exists_path_2 EG_1@@10 u_1_1@@0 z_1@@0)) (select P_2@@0 u_1_1@@0))
 :qid |stdinbpl.735:17|
 :skolemid |91|
 :pattern ( (exists_path_2 EG_1@@10 z_1@@0 u_1_1@@0))
 :pattern ( (select Z_1@@0 z_1@@0) (select P_2@@0 u_1_1@@0))
))))
 :qid |stdinbpl.727:15|
 :skolemid |92|
 :pattern ( (apply_IND_2 EG_1@@10 Z_1@@0 P_2@@0))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Union_29281| a@@22 b@@15) o@@5)  (or (select a@@22 o@@5) (select b@@15 o@@5)))
 :qid |stdinbpl.456:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_29281| a@@22 b@@15) o@@5))
)))
(assert (forall ((EG_1@@11 (Array T@EdgeDomainType Bool)) (p_1@@2 T@Ref) (s_1@@2 T@Ref) ) (! (= (edge EG_1@@11 p_1@@2 s_1@@2) (edge_ EG_1@@11 p_1@@2 s_1@@2))
 :qid |stdinbpl.700:15|
 :skolemid |83|
 :pattern ( (edge EG_1@@11 p_1@@2 s_1@@2))
)))
(assert (forall ((EG_1@@12 (Array T@EdgeDomainType Bool)) (start_1@@1 T@Ref) (end_1@@1 T@Ref) ) (! (= (exists_path EG_1@@12 start_1@@1 end_1@@1) (exists_path_ EG_1@@12 start_1@@1 end_1@@1))
 :qid |stdinbpl.760:15|
 :skolemid |96|
 :pattern ( (exists_path EG_1@@12 start_1@@1 end_1@@1))
)))
(assert (forall ((EG_1@@13 (Array T@EdgeDomainType Bool)) (start_1@@2 T@Ref) (end_1@@2 T@Ref) ) (! (= (exists_path_2 EG_1@@13 start_1@@2 end_1@@2) (exists_path_2_ EG_1@@13 start_1@@2 end_1@@2))
 :qid |stdinbpl.766:15|
 :skolemid |97|
 :pattern ( (exists_path_2 EG_1@@13 start_1@@2 end_1@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun refs@@4 () (Array T@Ref Bool))
(declare-fun s_2 () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_44160)
(declare-fun p_4 () T@Ref)
(declare-fun Heap@@19 () T@PolymorphicMapType_44139)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(set-info :boogie-vc-id |$$#definedness|)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon6_correct true))
(let ((anon11_Else_correct  (=> (and (not (select refs@@4 s_2)) (= (ControlFlow 0 7) 3)) anon6_correct)))
(let ((anon11_Then_correct  (=> (select refs@@4 s_2) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_29078_29079 QPMask@0 p_4 next)) (=> (HasDirectPerm_29078_29079 QPMask@0 p_4 next) (=> (= (ControlFlow 0 5) 3) anon6_correct))))))
(let ((anon10_Then_correct  (=> (select refs@@4 p_4) (and (=> (= (ControlFlow 0 8) 5) anon11_Then_correct) (=> (= (ControlFlow 0 8) 7) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (and (not (select refs@@4 p_4)) (= (ControlFlow 0 4) 3)) anon6_correct)))
(let ((anon9_Else_correct true))
(let ((anon8_Else_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (forall ((n_3 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3 n_3_1)) (select refs@@4 n_3)) (select refs@@4 n_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3 n_3_1)))
 :qid |stdinbpl.900:15|
 :skolemid |115|
))) (=> (forall ((n_3@@0 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@0 n_3_1@@0)) (select refs@@4 n_3@@0)) (select refs@@4 n_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3@@0 n_3_1@@0)))
 :qid |stdinbpl.900:15|
 :skolemid |115|
)) (=> (and (and (forall ((n_3@@1 T@Ref) ) (!  (=> (and (select refs@@4 n_3@@1) (< NoPerm FullPerm)) (and (qpRange1 n_3@@1) (= (invRecv1 n_3@@1) n_3@@1)))
 :qid |stdinbpl.906:22|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) n_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n_3@@1 next))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (select refs@@4 (invRecv1 o_9)) (< NoPerm FullPerm)) (qpRange1 o_9)) (= (invRecv1 o_9) o_9))
 :qid |stdinbpl.910:22|
 :skolemid |117|
 :pattern ( (invRecv1 o_9))
))) (and (forall ((n_3@@2 T@Ref) ) (!  (=> (select refs@@4 n_3@@2) (not (= n_3@@2 null)))
 :qid |stdinbpl.916:22|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) n_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n_3@@2 next))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (select refs@@4 (invRecv1 o_9@@0)) (< NoPerm FullPerm)) (qpRange1 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) o_9@@0 next) (+ (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| ZeroMask) o_9@@0 next) FullPerm)))) (=> (not (and (and (select refs@@4 (invRecv1 o_9@@0)) (< NoPerm FullPerm)) (qpRange1 o_9@@0))) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) o_9@@0 next) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| ZeroMask) o_9@@0 next))))
 :qid |stdinbpl.922:22|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) o_9@@0 next))
)))) (=> (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_44199_53) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.926:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_44212_44213) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.926:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_29078_143803) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.926:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_29078_143936) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.926:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@0) o_9@@4 f_5@@2))
))) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (and (=> (= (ControlFlow 0 9) 2) anon9_Else_correct) (=> (= (ControlFlow 0 9) 8) anon10_Then_correct)) (=> (= (ControlFlow 0 9) 4) anon10_Else_correct))))))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 0)) (and (=> (= (ControlFlow 0 11) 1) anon8_Then_correct) (=> (= (ControlFlow 0 11) 9) anon8_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12) 11) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
