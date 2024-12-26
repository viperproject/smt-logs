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
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (start T@Ref) (end T@Ref) ) (! (= (exists_path_ EG_1 start end)  (or (= start end) (exists ((w_2 T@Ref) ) (!  (and (edge EG_1 start w_2) (exists_path_ EG_1 w_2 end))
 :qid |stdinbpl.774:70|
 :skolemid |98|
 :pattern ( (edge EG_1 start w_2))
 :pattern ( (exists_path_ EG_1 w_2 end))
))))
 :qid |stdinbpl.772:15|
 :skolemid |99|
 :pattern ( (exists_path EG_1 start end))
 :pattern ( (edge EG_1 start end))
)))
(assert (forall ((EG_1@@0 (Array T@EdgeDomainType Bool)) (start@@0 T@Ref) (end@@0 T@Ref) ) (! (= (exists_path_2_ EG_1@@0 start@@0 end@@0)  (or (= start@@0 end@@0) (exists ((w_2@@0 T@Ref) ) (!  (and (exists_path_2_ EG_1@@0 start@@0 w_2@@0) (edge EG_1@@0 w_2@@0 end@@0))
 :qid |stdinbpl.783:72|
 :skolemid |100|
 :pattern ( (exists_path_2_ EG_1@@0 start@@0 w_2@@0))
 :pattern ( (edge EG_1@@0 w_2@@0 end@@0))
))))
 :qid |stdinbpl.781:15|
 :skolemid |101|
 :pattern ( (exists_path_2 EG_1@@0 start@@0 end@@0))
 :pattern ( (edge EG_1@@0 start@@0 end@@0))
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
(assert (forall ((Heap@@2 T@PolymorphicMapType_44139) (ExhaleHeap T@PolymorphicMapType_44139) (Mask@@0 T@PolymorphicMapType_44160) (pm_f_40 T@Field_29078_143803) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_29078_143867 Mask@@0 null pm_f_40) (IsPredicateField_29078_143894 pm_f_40)) (= (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@2) null (PredicateMaskField_29078 pm_f_40)) (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap) null (PredicateMaskField_29078 pm_f_40)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_29078_143894 pm_f_40) (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap) null (PredicateMaskField_29078 pm_f_40)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_44139) (ExhaleHeap@@0 T@PolymorphicMapType_44139) (Mask@@1 T@PolymorphicMapType_44160) (pm_f_40@@0 T@Field_29078_143803) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_29078_143867 Mask@@1 null pm_f_40@@0) (IsWandField_29078_145443 pm_f_40@@0)) (= (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@3) null (WandMaskField_29078 pm_f_40@@0)) (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap@@0) null (WandMaskField_29078 pm_f_40@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_29078_145443 pm_f_40@@0) (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap@@0) null (WandMaskField_29078 pm_f_40@@0)))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_44139) (Mask@@2 T@PolymorphicMapType_44160) (refs@@1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@4 Mask@@2) (or (< AssumeFunctionsAbove 0) (|$$#trigger| (FrameFragment_6496 (|$$#condqp1| Heap@@4 refs@@1)) refs@@1))) (forall ((p_1 T@Ref) (s_2 T@Ref) ) (! (=  (and (select refs@@1 p_1) (and (select refs@@1 s_2) (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@4) p_1 next) s_2))) (select (|$$'| Heap@@4 refs@@1) (create_edge p_1 s_2)))
 :qid |stdinbpl.866:122|
 :skolemid |113|
 :pattern ( (create_edge p_1 s_2))
)))
 :qid |stdinbpl.864:15|
 :skolemid |114|
 :pattern ( (state Heap@@4 Mask@@2) (|$$'| Heap@@4 refs@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_44139) (ExhaleHeap@@1 T@PolymorphicMapType_44139) (Mask@@3 T@PolymorphicMapType_44160) (pm_f_40@@1 T@Field_29078_143803) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_29078_143867 Mask@@3 null pm_f_40@@1) (IsPredicateField_29078_143894 pm_f_40@@1)) (and (and (and (forall ((o2_40 T@Ref) (f_81 T@Field_44199_53) ) (!  (=> (select (|PolymorphicMapType_44688_44199_53#PolymorphicMapType_44688| (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@5) null (PredicateMaskField_29078 pm_f_40@@1))) o2_40 f_81) (= (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@5) o2_40 f_81) (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| ExhaleHeap@@1) o2_40 f_81)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| ExhaleHeap@@1) o2_40 f_81))
)) (forall ((o2_40@@0 T@Ref) (f_81@@0 T@Field_44212_44213) ) (!  (=> (select (|PolymorphicMapType_44688_44199_44213#PolymorphicMapType_44688| (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@5) null (PredicateMaskField_29078 pm_f_40@@1))) o2_40@@0 f_81@@0) (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@5) o2_40@@0 f_81@@0) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@@1) o2_40@@0 f_81@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@@1) o2_40@@0 f_81@@0))
))) (forall ((o2_40@@1 T@Ref) (f_81@@1 T@Field_29078_143803) ) (!  (=> (select (|PolymorphicMapType_44688_44199_143803#PolymorphicMapType_44688| (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@5) null (PredicateMaskField_29078 pm_f_40@@1))) o2_40@@1 f_81@@1) (= (select (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@5) o2_40@@1 f_81@@1) (select (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| ExhaleHeap@@1) o2_40@@1 f_81@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| ExhaleHeap@@1) o2_40@@1 f_81@@1))
))) (forall ((o2_40@@2 T@Ref) (f_81@@2 T@Field_29078_143936) ) (!  (=> (select (|PolymorphicMapType_44688_44199_144916#PolymorphicMapType_44688| (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@5) null (PredicateMaskField_29078 pm_f_40@@1))) o2_40@@2 f_81@@2) (= (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@5) o2_40@@2 f_81@@2) (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap@@1) o2_40@@2 f_81@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap@@1) o2_40@@2 f_81@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (IsPredicateField_29078_143894 pm_f_40@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_44139) (ExhaleHeap@@2 T@PolymorphicMapType_44139) (Mask@@4 T@PolymorphicMapType_44160) (pm_f_40@@2 T@Field_29078_143803) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_29078_143867 Mask@@4 null pm_f_40@@2) (IsWandField_29078_145443 pm_f_40@@2)) (and (and (and (forall ((o2_40@@3 T@Ref) (f_81@@3 T@Field_44199_53) ) (!  (=> (select (|PolymorphicMapType_44688_44199_53#PolymorphicMapType_44688| (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@6) null (WandMaskField_29078 pm_f_40@@2))) o2_40@@3 f_81@@3) (= (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@6) o2_40@@3 f_81@@3) (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| ExhaleHeap@@2) o2_40@@3 f_81@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| ExhaleHeap@@2) o2_40@@3 f_81@@3))
)) (forall ((o2_40@@4 T@Ref) (f_81@@4 T@Field_44212_44213) ) (!  (=> (select (|PolymorphicMapType_44688_44199_44213#PolymorphicMapType_44688| (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@6) null (WandMaskField_29078 pm_f_40@@2))) o2_40@@4 f_81@@4) (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@6) o2_40@@4 f_81@@4) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@@2) o2_40@@4 f_81@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@@2) o2_40@@4 f_81@@4))
))) (forall ((o2_40@@5 T@Ref) (f_81@@5 T@Field_29078_143803) ) (!  (=> (select (|PolymorphicMapType_44688_44199_143803#PolymorphicMapType_44688| (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@6) null (WandMaskField_29078 pm_f_40@@2))) o2_40@@5 f_81@@5) (= (select (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@6) o2_40@@5 f_81@@5) (select (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| ExhaleHeap@@2) o2_40@@5 f_81@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| ExhaleHeap@@2) o2_40@@5 f_81@@5))
))) (forall ((o2_40@@6 T@Ref) (f_81@@6 T@Field_29078_143936) ) (!  (=> (select (|PolymorphicMapType_44688_44199_144916#PolymorphicMapType_44688| (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@6) null (WandMaskField_29078 pm_f_40@@2))) o2_40@@6 f_81@@6) (= (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@6) o2_40@@6 f_81@@6) (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap@@2) o2_40@@6 f_81@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap@@2) o2_40@@6 f_81@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (IsWandField_29078_145443 pm_f_40@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1@@3 (Array T@EdgeDomainType Bool)) (u_3 T@Ref) (v_2@@1 T@Ref) (w_2@@1 T@Ref) ) (!  (=> (and (exists_path_ EG_1@@3 u_3 w_2@@1) (exists_path_ EG_1@@3 w_2@@1 v_2@@1)) (exists_path_ EG_1@@3 u_3 v_2@@1))
 :qid |stdinbpl.790:15|
 :skolemid |102|
 :pattern ( (exists_path EG_1@@3 u_3 w_2@@1) (exists_path EG_1@@3 w_2@@1 v_2@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_44139) (ExhaleHeap@@3 T@PolymorphicMapType_44139) (Mask@@5 T@PolymorphicMapType_44160) (o_60 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (=> (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@7) o_60 $allocated) (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| ExhaleHeap@@3) o_60 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| ExhaleHeap@@3) o_60 $allocated))
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
(assert (forall ((Heap@@9 T@PolymorphicMapType_44139) (ExhaleHeap@@5 T@PolymorphicMapType_44139) (Mask@@15 T@PolymorphicMapType_44160) (o_60@@0 T@Ref) (f_81@@7 T@Field_29078_143936) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@15) (=> (HasDirectPerm_29078_148748 Mask@@15 o_60@@0 f_81@@7) (= (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@9) o_60@@0 f_81@@7) (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap@@5) o_60@@0 f_81@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@15) (select (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| ExhaleHeap@@5) o_60@@0 f_81@@7))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_44139) (ExhaleHeap@@6 T@PolymorphicMapType_44139) (Mask@@16 T@PolymorphicMapType_44160) (o_60@@1 T@Ref) (f_81@@8 T@Field_29078_143803) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@16) (=> (HasDirectPerm_29078_143867 Mask@@16 o_60@@1 f_81@@8) (= (select (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@10) o_60@@1 f_81@@8) (select (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| ExhaleHeap@@6) o_60@@1 f_81@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@16) (select (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| ExhaleHeap@@6) o_60@@1 f_81@@8))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_44139) (ExhaleHeap@@7 T@PolymorphicMapType_44139) (Mask@@17 T@PolymorphicMapType_44160) (o_60@@2 T@Ref) (f_81@@9 T@Field_44199_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@17) (=> (HasDirectPerm_29078_53 Mask@@17 o_60@@2 f_81@@9) (= (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@11) o_60@@2 f_81@@9) (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| ExhaleHeap@@7) o_60@@2 f_81@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@17) (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| ExhaleHeap@@7) o_60@@2 f_81@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_44139) (ExhaleHeap@@8 T@PolymorphicMapType_44139) (Mask@@18 T@PolymorphicMapType_44160) (o_60@@3 T@Ref) (f_81@@10 T@Field_44212_44213) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@18) (=> (HasDirectPerm_29078_29079 Mask@@18 o_60@@3 f_81@@10) (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@12) o_60@@3 f_81@@10) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@@8) o_60@@3 f_81@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@18) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@@8) o_60@@3 f_81@@10))
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
(assert (forall ((EG_1@@4 (Array T@EdgeDomainType Bool)) (Z_1 (Array T@Ref Bool)) (P_1 (Array T@Ref Bool)) ) (!  (=> (apply_IND EG_1@@4 Z_1 P_1) (=> (and (forall ((z T@Ref) ) (!  (=> (select Z_1 z) (select P_1 z))
 :qid |stdinbpl.714:49|
 :skolemid |85|
 :pattern ( (select Z_1 z))
 :pattern ( (select P_1 z))
)) (forall ((u_3@@0 T@Ref) (v_2@@2 T@Ref) ) (!  (=> (and (select P_1 u_3@@0) (edge EG_1@@4 u_3@@0 v_2@@2)) (select P_1 v_2@@2))
 :qid |stdinbpl.717:16|
 :skolemid |86|
 :pattern ( (edge EG_1@@4 u_3@@0 v_2@@2))
 :pattern ( (select P_1 u_3@@0) (select P_1 v_2@@2))
))) (forall ((u_1 T@Ref) (z_1 T@Ref) ) (!  (=> (and (select Z_1 z_1) (exists_path EG_1@@4 z_1 u_1)) (select P_1 u_1))
 :qid |stdinbpl.720:17|
 :skolemid |87|
 :pattern ( (exists_path EG_1@@4 z_1 u_1))
 :pattern ( (select Z_1 z_1) (select P_1 u_1))
))))
 :qid |stdinbpl.712:15|
 :skolemid |88|
 :pattern ( (apply_IND EG_1@@4 Z_1 P_1))
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
(assert (forall ((EG_1@@6 (Array T@EdgeDomainType Bool)) (p_1@@0 T@Ref) (s_2@@0 T@Ref) ) (! (= (edge_ EG_1@@6 p_1@@0 s_2@@0) (select EG_1@@6 (create_edge p_1@@0 s_2@@0)))
 :qid |stdinbpl.706:15|
 :skolemid |84|
 :pattern ( (select EG_1@@6 (create_edge p_1@@0 s_2@@0)))
 :pattern ( (edge EG_1@@6 p_1@@0 s_2@@0))
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
(assert (forall ((p_1@@1 T@Ref) (s_2@@1 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@1 s_2@@1)) p_1@@1) (= (edge_succ (create_edge p_1@@1 s_2@@1)) s_2@@1))
 :qid |stdinbpl.633:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@1 s_2@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_44139) (o_37 T@Ref) (f_32 T@Field_29078_143803) (v T@FrameType) ) (! (succHeap Heap@@13 (PolymorphicMapType_44139 (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@13) (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@13) (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@13) (store (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@13) o_37 f_32 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_44139 (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@13) (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@13) (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@13) (store (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@13) o_37 f_32 v)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_44139) (o_37@@0 T@Ref) (f_32@@0 T@Field_29078_143936) (v@@0 T@PolymorphicMapType_44688) ) (! (succHeap Heap@@14 (PolymorphicMapType_44139 (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@14) (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@14) (store (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@14) o_37@@0 f_32@@0 v@@0) (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_44139 (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@14) (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@14) (store (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@14) o_37@@0 f_32@@0 v@@0) (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_44139) (o_37@@1 T@Ref) (f_32@@1 T@Field_44212_44213) (v@@1 T@Ref) ) (! (succHeap Heap@@15 (PolymorphicMapType_44139 (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@15) (store (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@15) o_37@@1 f_32@@1 v@@1) (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@15) (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_44139 (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@15) (store (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@15) o_37@@1 f_32@@1 v@@1) (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@15) (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_44139) (o_37@@2 T@Ref) (f_32@@2 T@Field_44199_53) (v@@2 Bool) ) (! (succHeap Heap@@16 (PolymorphicMapType_44139 (store (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@16) o_37@@2 f_32@@2 v@@2) (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@16) (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@16) (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_44139 (store (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@16) o_37@@2 f_32@@2 v@@2) (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@16) (|PolymorphicMapType_44139_29078_143980#PolymorphicMapType_44139| Heap@@16) (|PolymorphicMapType_44139_44199_143803#PolymorphicMapType_44139| Heap@@16)))
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
(assert (forall ((o_37@@3 T@Ref) (f_42 T@Field_44212_44213) (Heap@@18 T@PolymorphicMapType_44139) ) (!  (=> (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@18) o_37@@3 $allocated) (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@18) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@18) o_37@@3 f_42) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@18) o_37@@3 f_42))
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
(assert (forall ((EG_1@@7 (Array T@EdgeDomainType Bool)) (u_3@@1 T@Ref) (y@@3 T@Ref) ) (! (= (select (inst_uReach_rev EG_1@@7 y@@3) u_3@@1) (exists_path EG_1@@7 u_3@@1 y@@3))
 :qid |stdinbpl.742:15|
 :skolemid |93|
 :pattern ( (select (inst_uReach_rev EG_1@@7 y@@3) u_3@@1))
 :pattern ( (exists_path EG_1@@7 u_3@@1 y@@3))
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
(assert (forall ((EG_1@@10 (Array T@EdgeDomainType Bool)) (Z_1@@0 (Array T@Ref Bool)) (P_1@@0 (Array T@Ref Bool)) ) (!  (=> (apply_IND_2 EG_1@@10 Z_1@@0 P_1@@0) (=> (and (forall ((z@@0 T@Ref) ) (!  (=> (select Z_1@@0 z@@0) (select P_1@@0 z@@0))
 :qid |stdinbpl.729:51|
 :skolemid |89|
 :pattern ( (select Z_1@@0 z@@0))
 :pattern ( (select P_1@@0 z@@0))
)) (forall ((u_3@@2 T@Ref) (v_2@@5 T@Ref) ) (!  (=> (and (edge EG_1@@10 u_3@@2 v_2@@5) (select P_1@@0 v_2@@5)) (select P_1@@0 u_3@@2))
 :qid |stdinbpl.732:16|
 :skolemid |90|
 :pattern ( (edge EG_1@@10 u_3@@2 v_2@@5))
 :pattern ( (select P_1@@0 u_3@@2) (select P_1@@0 v_2@@5))
))) (forall ((u_1@@0 T@Ref) (z_1@@0 T@Ref) ) (!  (=> (and (select Z_1@@0 z_1@@0) (exists_path_2 EG_1@@10 u_1@@0 z_1@@0)) (select P_1@@0 u_1@@0))
 :qid |stdinbpl.735:17|
 :skolemid |91|
 :pattern ( (exists_path_2 EG_1@@10 z_1@@0 u_1@@0))
 :pattern ( (select Z_1@@0 z_1@@0) (select P_1@@0 u_1@@0))
))))
 :qid |stdinbpl.727:15|
 :skolemid |92|
 :pattern ( (apply_IND_2 EG_1@@10 Z_1@@0 P_1@@0))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Union_29281| a@@22 b@@15) o@@5)  (or (select a@@22 o@@5) (select b@@15 o@@5)))
 :qid |stdinbpl.456:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_29281| a@@22 b@@15) o@@5))
)))
(assert (forall ((EG_1@@11 (Array T@EdgeDomainType Bool)) (p_1@@2 T@Ref) (s_2@@2 T@Ref) ) (! (= (edge EG_1@@11 p_1@@2 s_2@@2) (edge_ EG_1@@11 p_1@@2 s_2@@2))
 :qid |stdinbpl.700:15|
 :skolemid |83|
 :pattern ( (edge EG_1@@11 p_1@@2 s_2@@2))
)))
(assert (forall ((EG_1@@12 (Array T@EdgeDomainType Bool)) (start@@1 T@Ref) (end@@1 T@Ref) ) (! (= (exists_path EG_1@@12 start@@1 end@@1) (exists_path_ EG_1@@12 start@@1 end@@1))
 :qid |stdinbpl.760:15|
 :skolemid |96|
 :pattern ( (exists_path EG_1@@12 start@@1 end@@1))
)))
(assert (forall ((EG_1@@13 (Array T@EdgeDomainType Bool)) (start@@2 T@Ref) (end@@2 T@Ref) ) (! (= (exists_path_2 EG_1@@13 start@@2 end@@2) (exists_path_2_ EG_1@@13 start@@2 end@@2))
 :qid |stdinbpl.766:15|
 :skolemid |97|
 :pattern ( (exists_path_2 EG_1@@13 start@@2 end@@2))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered57 (T@Ref) Bool)
(declare-fun g_1 () (Array T@Ref Bool))
(declare-fun ExhaleHeap@4 () T@PolymorphicMapType_44139)
(declare-fun QPMask@31 () T@PolymorphicMapType_44160)
(declare-fun QPMask@25 () T@PolymorphicMapType_44160)
(declare-fun neverTriggered58 (T@Ref) Bool)
(declare-fun QPMask@32 () T@PolymorphicMapType_44160)
(declare-fun neverTriggered56 (T@Ref) Bool)
(declare-fun QPMask@30 () T@PolymorphicMapType_44160)
(declare-fun last@0 () T@Ref)
(declare-fun x@@7 () T@Ref)
(declare-fun neverTriggered55 (T@Ref) Bool)
(declare-fun QPMask@29 () T@PolymorphicMapType_44160)
(declare-fun old_g@0 () (Array T@EdgeDomainType Bool))
(declare-fun neverTriggered54 (T@Ref) Bool)
(declare-fun QPMask@28 () T@PolymorphicMapType_44160)
(declare-fun neverTriggered53 (T@Ref) Bool)
(declare-fun QPMask@27 () T@PolymorphicMapType_44160)
(declare-fun neverTriggered52 (T@Ref) Bool)
(declare-fun QPMask@26 () T@PolymorphicMapType_44160)
(declare-fun y@@4 () T@Ref)
(declare-fun neverTriggered51 (T@Ref) Bool)
(declare-fun QPMask@34 () T@PolymorphicMapType_44160)
(declare-fun neverTriggered50 (T@Ref) Bool)
(declare-fun QPMask@33 () T@PolymorphicMapType_44160)
(declare-fun n_76 () T@Ref)
(declare-fun neverTriggered49 (T@Ref) Bool)
(declare-fun QPMask@36 () T@PolymorphicMapType_44160)
(declare-fun neverTriggered48 (T@Ref) Bool)
(declare-fun QPMask@35 () T@PolymorphicMapType_44160)
(declare-fun n_75 () T@Ref)
(declare-fun n$2_41 () T@Ref)
(declare-fun qpRange47 (T@Ref) Bool)
(declare-fun invRecv47 (T@Ref) T@Ref)
(declare-fun QPMask@5 () T@PolymorphicMapType_44160)
(declare-fun neverTriggered61 (T@Ref) Bool)
(declare-fun QPMask@21 () T@PolymorphicMapType_44160)
(declare-fun QPMask@6 () T@PolymorphicMapType_44160)
(declare-fun neverTriggered60 (T@Ref) Bool)
(declare-fun QPMask@20 () T@PolymorphicMapType_44160)
(declare-fun neverTriggered63 (T@Ref) Bool)
(declare-fun QPMask@23 () T@PolymorphicMapType_44160)
(declare-fun neverTriggered62 (T@Ref) Bool)
(declare-fun QPMask@22 () T@PolymorphicMapType_44160)
(declare-fun last@2 () T@Ref)
(declare-fun n_33_1 () T@Ref)
(declare-fun n_31_1 () T@Ref)
(declare-fun n$2_5_1 () T@Ref)
(declare-fun neverTriggered64 (T@Ref) Bool)
(declare-fun QPMask@24 () T@PolymorphicMapType_44160)
(declare-fun qpRange64 (T@Ref) Bool)
(declare-fun invRecv64 (T@Ref) T@Ref)
(declare-fun qpRange59 (T@Ref) Bool)
(declare-fun invRecv59 (T@Ref) T@Ref)
(declare-fun neverTriggered77 (T@Ref) Bool)
(declare-fun Heap@0 () T@PolymorphicMapType_44139)
(declare-fun QPMask@13 () T@PolymorphicMapType_44160)
(declare-fun Mask@0 () T@PolymorphicMapType_44160)
(declare-fun u_10_1 () T@Ref)
(declare-fun v_7 () T@Ref)
(declare-fun last@1 () T@Ref)
(declare-fun neverTriggered76 (T@Ref) Bool)
(declare-fun QPMask@14 () T@PolymorphicMapType_44160)
(declare-fun u_7 () T@Ref)
(declare-fun neverTriggered75 (T@Ref) Bool)
(declare-fun QPMask@12 () T@PolymorphicMapType_44160)
(declare-fun neverTriggered74 (T@Ref) Bool)
(declare-fun QPMask@11 () T@PolymorphicMapType_44160)
(declare-fun neverTriggered73 (T@Ref) Bool)
(declare-fun QPMask@10 () T@PolymorphicMapType_44160)
(declare-fun ExhaleHeap@5 () T@PolymorphicMapType_44139)
(declare-fun QPMask@9 () T@PolymorphicMapType_44160)
(declare-fun Heap@@19 () T@PolymorphicMapType_44139)
(declare-fun QPMask@0 () T@PolymorphicMapType_44160)
(declare-fun u_4_1 () T@Ref)
(declare-fun v_4_1 () T@Ref)
(declare-fun neverTriggered72 (T@Ref) Bool)
(declare-fun QPMask@16 () T@PolymorphicMapType_44160)
(declare-fun u_23 () T@Ref)
(declare-fun v_23 () T@Ref)
(declare-fun neverTriggered71 (T@Ref) Bool)
(declare-fun QPMask@15 () T@PolymorphicMapType_44160)
(declare-fun u_1@@1 () T@Ref)
(declare-fun w_1 () T@Ref)
(declare-fun v_1_1 () T@Ref)
(declare-fun neverTriggered70 (T@Ref) Bool)
(declare-fun QPMask@19 () T@PolymorphicMapType_44160)
(declare-fun u_34 () T@Ref)
(declare-fun w_11 () T@Ref)
(declare-fun neverTriggered69 (T@Ref) Bool)
(declare-fun QPMask@18 () T@PolymorphicMapType_44160)
(declare-fun v_33 () T@Ref)
(declare-fun neverTriggered68 (T@Ref) Bool)
(declare-fun QPMask@17 () T@PolymorphicMapType_44160)
(declare-fun QPMask@8 () T@PolymorphicMapType_44160)
(declare-fun qpRange67 (T@Ref) Bool)
(declare-fun invRecv67 (T@Ref) T@Ref)
(declare-fun n$0_10 () T@Ref)
(declare-fun neverTriggered66 (T@Ref) Bool)
(declare-fun QPMask@7 () T@PolymorphicMapType_44160)
(declare-fun qpRange66 (T@Ref) Bool)
(declare-fun invRecv66 (T@Ref) T@Ref)
(declare-fun qpRange65 (T@Ref) Bool)
(declare-fun invRecv65 (T@Ref) T@Ref)
(declare-fun n_12_1 () T@Ref)
(declare-fun n_10_1 () T@Ref)
(declare-fun n$2 () T@Ref)
(declare-fun neverTriggered46 (T@Ref) Bool)
(declare-fun qpRange46 (T@Ref) Bool)
(declare-fun invRecv46 (T@Ref) T@Ref)
(declare-fun neverTriggered45 (T@Ref) Bool)
(declare-fun QPMask@4 () T@PolymorphicMapType_44160)
(declare-fun neverTriggered44 (T@Ref) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_44160)
(declare-fun neverTriggered43 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_44160)
(declare-fun neverTriggered42 (T@Ref) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_44160)
(declare-fun neverTriggered41 (T@Ref) Bool)
(declare-fun QPMask@38 () T@PolymorphicMapType_44160)
(declare-fun neverTriggered40 (T@Ref) Bool)
(declare-fun QPMask@37 () T@PolymorphicMapType_44160)
(declare-fun n_74 () T@Ref)
(declare-fun neverTriggered39 (T@Ref) Bool)
(declare-fun QPMask@40 () T@PolymorphicMapType_44160)
(declare-fun neverTriggered38 (T@Ref) Bool)
(declare-fun QPMask@39 () T@PolymorphicMapType_44160)
(declare-fun n_73 () T@Ref)
(declare-fun n$0_41 () T@Ref)
(declare-fun qpRange37 (T@Ref) Bool)
(declare-fun invRecv37 (T@Ref) T@Ref)
(set-info :boogie-vc-id append)
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
 (=> (= (ControlFlow 0 0) 322) (let ((anon240_Then_correct  (and (=> (= (ControlFlow 0 272) (- 0 273)) (forall ((n_23 T@Ref) (n_23_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_23 n_23_1)) (select g_1 n_23)) (select g_1 n_23_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_23 n_23_1)))
 :qid |stdinbpl.4002:33|
 :skolemid |397|
 :pattern ( (neverTriggered57 n_23) (neverTriggered57 n_23_1))
))) (=> (forall ((n_23@@0 T@Ref) (n_23_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_23@@0 n_23_1@@0)) (select g_1 n_23@@0)) (select g_1 n_23_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_23@@0 n_23_1@@0)))
 :qid |stdinbpl.4002:33|
 :skolemid |397|
 :pattern ( (neverTriggered57 n_23@@0) (neverTriggered57 n_23_1@@0))
)) (=> (= (ControlFlow 0 272) (- 0 271)) (forall ((n_23@@1 T@Ref) ) (!  (=> (select g_1 n_23@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@25) n_23@@1 next) NoPerm)))
 :qid |stdinbpl.4009:33|
 :skolemid |398|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_23@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@31) n_23@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_23@@1 next))
)))))))
(let ((anon242_Then_correct  (and (=> (= (ControlFlow 0 265) (- 0 266)) (forall ((n_24 T@Ref) (n_24_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_24 n_24_1)) (select g_1 n_24)) (select g_1 n_24_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_24 n_24_1)))
 :qid |stdinbpl.4050:33|
 :skolemid |401|
 :pattern ( (neverTriggered58 n_24) (neverTriggered58 n_24_1))
))) (=> (forall ((n_24@@0 T@Ref) (n_24_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_24@@0 n_24_1@@0)) (select g_1 n_24@@0)) (select g_1 n_24_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_24@@0 n_24_1@@0)))
 :qid |stdinbpl.4050:33|
 :skolemid |401|
 :pattern ( (neverTriggered58 n_24@@0) (neverTriggered58 n_24_1@@0))
)) (=> (= (ControlFlow 0 265) (- 0 264)) (forall ((n_24@@1 T@Ref) ) (!  (=> (select g_1 n_24@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@25) n_24@@1 next) NoPerm)))
 :qid |stdinbpl.4057:33|
 :skolemid |402|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_24@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@32) n_24@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_24@@1 next))
)))))))
(let ((anon238_Then_correct  (and (=> (= (ControlFlow 0 261) (- 0 262)) (forall ((n_22 T@Ref) (n_22_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_22 n_22_1)) (select g_1 n_22)) (select g_1 n_22_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_22 n_22_1)))
 :qid |stdinbpl.3960:31|
 :skolemid |393|
 :pattern ( (neverTriggered56 n_22) (neverTriggered56 n_22_1))
))) (=> (forall ((n_22@@0 T@Ref) (n_22_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_22@@0 n_22_1@@0)) (select g_1 n_22@@0)) (select g_1 n_22_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_22@@0 n_22_1@@0)))
 :qid |stdinbpl.3960:31|
 :skolemid |393|
 :pattern ( (neverTriggered56 n_22@@0) (neverTriggered56 n_22_1@@0))
)) (=> (= (ControlFlow 0 261) (- 0 260)) (forall ((n_22@@1 T@Ref) ) (!  (=> (select g_1 n_22@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@25) n_22@@1 next) NoPerm)))
 :qid |stdinbpl.3967:31|
 :skolemid |394|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_22@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@30) n_22@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_22@@1 next))
)))))))
(let ((anon93_correct true))
(let ((anon242_Else_correct  (and (=> (= (ControlFlow 0 267) (- 0 268)) (HasDirectPerm_29078_29079 QPMask@25 last@0 next)) (=> (HasDirectPerm_29078_29079 QPMask@25 last@0 next) (=> (and (exists_path ($$ ExhaleHeap@4 g_1) last@0 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next)) (= (ControlFlow 0 267) 258)) anon93_correct)))))
(let ((anon241_Then_correct  (=> (and (and (edge ($$ ExhaleHeap@4 g_1) last@0 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next)) (exists_path ($$ ExhaleHeap@4 g_1) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next))) (state ExhaleHeap@4 QPMask@25)) (and (=> (= (ControlFlow 0 269) 265) anon242_Then_correct) (=> (= (ControlFlow 0 269) 267) anon242_Else_correct)))))
(let ((anon241_Else_correct  (=> (and (not (and (edge ($$ ExhaleHeap@4 g_1) last@0 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next)) (exists_path ($$ ExhaleHeap@4 g_1) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next)))) (= (ControlFlow 0 263) 258)) anon93_correct)))
(let ((anon240_Else_correct  (and (=> (= (ControlFlow 0 274) (- 0 276)) (HasDirectPerm_29078_29079 QPMask@25 last@0 next)) (=> (HasDirectPerm_29078_29079 QPMask@25 last@0 next) (and (=> (= (ControlFlow 0 274) (- 0 275)) (HasDirectPerm_29078_29079 QPMask@25 last@0 next)) (=> (HasDirectPerm_29078_29079 QPMask@25 last@0 next) (and (=> (= (ControlFlow 0 274) 269) anon241_Then_correct) (=> (= (ControlFlow 0 274) 263) anon241_Else_correct))))))))
(let ((anon239_Then_correct  (=> (edge ($$ ExhaleHeap@4 g_1) last@0 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next)) (and (=> (= (ControlFlow 0 277) 272) anon240_Then_correct) (=> (= (ControlFlow 0 277) 274) anon240_Else_correct)))))
(let ((anon239_Else_correct  (=> (not (edge ($$ ExhaleHeap@4 g_1) last@0 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next))) (and (=> (= (ControlFlow 0 270) 269) anon241_Then_correct) (=> (= (ControlFlow 0 270) 263) anon241_Else_correct)))))
(let ((anon238_Else_correct  (and (=> (= (ControlFlow 0 278) (- 0 279)) (HasDirectPerm_29078_29079 QPMask@25 last@0 next)) (=> (HasDirectPerm_29078_29079 QPMask@25 last@0 next) (and (=> (= (ControlFlow 0 278) 277) anon239_Then_correct) (=> (= (ControlFlow 0 278) 270) anon239_Else_correct))))))
(let ((anon237_Then_correct  (=> (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next) null)) (and (=> (= (ControlFlow 0 280) 261) anon238_Then_correct) (=> (= (ControlFlow 0 280) 278) anon238_Else_correct)))))
(let ((anon237_Else_correct  (=> (and (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next) null) (= (ControlFlow 0 259) 258)) anon93_correct)))
(let ((anon236_Else_correct  (=> (exists_path ($$ ExhaleHeap@4 g_1) x@@7 last@0) (and (=> (= (ControlFlow 0 281) (- 0 282)) (HasDirectPerm_29078_29079 QPMask@25 last@0 next)) (=> (HasDirectPerm_29078_29079 QPMask@25 last@0 next) (and (=> (= (ControlFlow 0 281) 280) anon237_Then_correct) (=> (= (ControlFlow 0 281) 259) anon237_Else_correct)))))))
(let ((anon236_Then_correct  (and (=> (= (ControlFlow 0 256) (- 0 257)) (forall ((n_21 T@Ref) (n_21_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_21 n_21_1)) (select g_1 n_21)) (select g_1 n_21_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_21 n_21_1)))
 :qid |stdinbpl.3913:29|
 :skolemid |389|
 :pattern ( (neverTriggered55 n_21) (neverTriggered55 n_21_1))
))) (=> (forall ((n_21@@0 T@Ref) (n_21_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_21@@0 n_21_1@@0)) (select g_1 n_21@@0)) (select g_1 n_21_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_21@@0 n_21_1@@0)))
 :qid |stdinbpl.3913:29|
 :skolemid |389|
 :pattern ( (neverTriggered55 n_21@@0) (neverTriggered55 n_21_1@@0))
)) (=> (= (ControlFlow 0 256) (- 0 255)) (forall ((n_21@@1 T@Ref) ) (!  (=> (select g_1 n_21@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@25) n_21@@1 next) NoPerm)))
 :qid |stdinbpl.3920:29|
 :skolemid |390|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_21@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@29) n_21@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_21@@1 next))
)))))))
(let ((anon235_Else_correct  (=> (|Set#Equal_29085| ($$ ExhaleHeap@4 g_1) old_g@0) (=> (and (state ExhaleHeap@4 QPMask@25) (state ExhaleHeap@4 QPMask@25)) (and (=> (= (ControlFlow 0 283) 256) anon236_Then_correct) (=> (= (ControlFlow 0 283) 281) anon236_Else_correct))))))
(let ((anon235_Then_correct  (and (=> (= (ControlFlow 0 253) (- 0 254)) (forall ((n_20 T@Ref) (n_20_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_20 n_20_1)) (select g_1 n_20)) (select g_1 n_20_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_20 n_20_1)))
 :qid |stdinbpl.3869:29|
 :skolemid |385|
 :pattern ( (neverTriggered54 n_20) (neverTriggered54 n_20_1))
))) (=> (forall ((n_20@@0 T@Ref) (n_20_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_20@@0 n_20_1@@0)) (select g_1 n_20@@0)) (select g_1 n_20_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_20@@0 n_20_1@@0)))
 :qid |stdinbpl.3869:29|
 :skolemid |385|
 :pattern ( (neverTriggered54 n_20@@0) (neverTriggered54 n_20_1@@0))
)) (=> (= (ControlFlow 0 253) (- 0 252)) (forall ((n_20@@1 T@Ref) ) (!  (=> (select g_1 n_20@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@25) n_20@@1 next) NoPerm)))
 :qid |stdinbpl.3876:29|
 :skolemid |386|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_20@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@28) n_20@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_20@@1 next))
)))))))
(let ((anon234_Else_correct  (=> (unshared_graph ($$ ExhaleHeap@4 g_1)) (=> (and (state ExhaleHeap@4 QPMask@25) (state ExhaleHeap@4 QPMask@25)) (and (=> (= (ControlFlow 0 284) 253) anon235_Then_correct) (=> (= (ControlFlow 0 284) 283) anon235_Else_correct))))))
(let ((anon234_Then_correct  (and (=> (= (ControlFlow 0 250) (- 0 251)) (forall ((n_19 T@Ref) (n_19_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_19 n_19_1)) (select g_1 n_19)) (select g_1 n_19_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_19 n_19_1)))
 :qid |stdinbpl.3825:29|
 :skolemid |381|
 :pattern ( (neverTriggered53 n_19) (neverTriggered53 n_19_1))
))) (=> (forall ((n_19@@0 T@Ref) (n_19_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_19@@0 n_19_1@@0)) (select g_1 n_19@@0)) (select g_1 n_19_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_19@@0 n_19_1@@0)))
 :qid |stdinbpl.3825:29|
 :skolemid |381|
 :pattern ( (neverTriggered53 n_19@@0) (neverTriggered53 n_19_1@@0))
)) (=> (= (ControlFlow 0 250) (- 0 249)) (forall ((n_19@@1 T@Ref) ) (!  (=> (select g_1 n_19@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@25) n_19@@1 next) NoPerm)))
 :qid |stdinbpl.3832:29|
 :skolemid |382|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_19@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@27) n_19@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_19@@1 next))
)))))))
(let ((anon233_Else_correct  (=> (acyclic_graph ($$ ExhaleHeap@4 g_1)) (=> (and (state ExhaleHeap@4 QPMask@25) (state ExhaleHeap@4 QPMask@25)) (and (=> (= (ControlFlow 0 285) 250) anon234_Then_correct) (=> (= (ControlFlow 0 285) 284) anon234_Else_correct))))))
(let ((anon233_Then_correct  (and (=> (= (ControlFlow 0 247) (- 0 248)) (forall ((n_18 T@Ref) (n_18_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_18 n_18_1)) (select g_1 n_18)) (select g_1 n_18_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_18 n_18_1)))
 :qid |stdinbpl.3781:29|
 :skolemid |377|
 :pattern ( (neverTriggered52 n_18) (neverTriggered52 n_18_1))
))) (=> (forall ((n_18@@0 T@Ref) (n_18_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_18@@0 n_18_1@@0)) (select g_1 n_18@@0)) (select g_1 n_18_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_18@@0 n_18_1@@0)))
 :qid |stdinbpl.3781:29|
 :skolemid |377|
 :pattern ( (neverTriggered52 n_18@@0) (neverTriggered52 n_18_1@@0))
)) (=> (= (ControlFlow 0 247) (- 0 246)) (forall ((n_18@@1 T@Ref) ) (!  (=> (select g_1 n_18@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@25) n_18@@1 next) NoPerm)))
 :qid |stdinbpl.3788:29|
 :skolemid |378|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_18@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@26) n_18@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_18@@1 next))
)))))))
(let ((anon228_Else_correct  (=> (forall ((n_17 T@Ref) ) (!  (=> (select g_1 n_17) (or (not (exists_path ($$ ExhaleHeap@4 g_1) x@@7 n_17)) (not (exists_path ($$ ExhaleHeap@4 g_1) y@@4 n_17))))
 :qid |stdinbpl.3762:28|
 :skolemid |376|
 :pattern ( (select g_1 n_17))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) x@@7 n_17))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) y@@4 n_17))
)) (=> (and (state ExhaleHeap@4 QPMask@25) (state ExhaleHeap@4 QPMask@25)) (and (=> (= (ControlFlow 0 286) 247) anon233_Then_correct) (=> (= (ControlFlow 0 286) 285) anon233_Else_correct))))))
(let ((anon232_Then_correct  (and (=> (= (ControlFlow 0 242) (- 0 243)) (forall ((n$0_9 T@Ref) (n$0_9_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_9 n$0_9_2)) (select g_1 n$0_9)) (select g_1 n$0_9_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_9 n$0_9_2)))
 :qid |stdinbpl.3730:35|
 :skolemid |372|
 :pattern ( (neverTriggered51 n$0_9) (neverTriggered51 n$0_9_2))
))) (=> (forall ((n$0_9@@0 T@Ref) (n$0_9_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_9@@0 n$0_9_2@@0)) (select g_1 n$0_9@@0)) (select g_1 n$0_9_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_9@@0 n$0_9_2@@0)))
 :qid |stdinbpl.3730:35|
 :skolemid |372|
 :pattern ( (neverTriggered51 n$0_9@@0) (neverTriggered51 n$0_9_2@@0))
)) (=> (= (ControlFlow 0 242) (- 0 241)) (forall ((n$0_9@@1 T@Ref) ) (!  (=> (select g_1 n$0_9@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@25) n$0_9@@1 next) NoPerm)))
 :qid |stdinbpl.3737:35|
 :skolemid |373|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$0_9@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@34) n$0_9@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$0_9@@1 next))
)))))))
(let ((anon230_Then_correct  (and (=> (= (ControlFlow 0 238) (- 0 239)) (forall ((n$0_8 T@Ref) (n$0_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_8 n$0_8_1)) (select g_1 n$0_8)) (select g_1 n$0_8_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_8 n$0_8_1)))
 :qid |stdinbpl.3690:33|
 :skolemid |368|
 :pattern ( (neverTriggered50 n$0_8) (neverTriggered50 n$0_8_1))
))) (=> (forall ((n$0_8@@0 T@Ref) (n$0_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_8@@0 n$0_8_1@@0)) (select g_1 n$0_8@@0)) (select g_1 n$0_8_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_8@@0 n$0_8_1@@0)))
 :qid |stdinbpl.3690:33|
 :skolemid |368|
 :pattern ( (neverTriggered50 n$0_8@@0) (neverTriggered50 n$0_8_1@@0))
)) (=> (= (ControlFlow 0 238) (- 0 237)) (forall ((n$0_8@@1 T@Ref) ) (!  (=> (select g_1 n$0_8@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@25) n$0_8@@1 next) NoPerm)))
 :qid |stdinbpl.3697:33|
 :skolemid |369|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$0_8@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@33) n$0_8@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$0_8@@1 next))
)))))))
(let ((anon73_correct true))
(let ((anon231_Then_correct  (=> (exists_path ($$ ExhaleHeap@4 g_1) x@@7 n_76) (and (=> (= (ControlFlow 0 244) 242) anon232_Then_correct) (=> (= (ControlFlow 0 244) 235) anon73_correct)))))
(let ((anon231_Else_correct  (=> (and (not (exists_path ($$ ExhaleHeap@4 g_1) x@@7 n_76)) (= (ControlFlow 0 240) 235)) anon73_correct)))
(let ((anon229_Then_correct  (=> (select g_1 n_76) (and (and (=> (= (ControlFlow 0 245) 238) anon230_Then_correct) (=> (= (ControlFlow 0 245) 244) anon231_Then_correct)) (=> (= (ControlFlow 0 245) 240) anon231_Else_correct)))))
(let ((anon229_Else_correct  (=> (and (not (select g_1 n_76)) (= (ControlFlow 0 236) 235)) anon73_correct)))
(let ((anon223_Else_correct  (=> (forall ((n_15 T@Ref) ) (!  (=> (select g_1 n_15) (or (exists_path ($$ ExhaleHeap@4 g_1) x@@7 n_15) (exists_path ($$ ExhaleHeap@4 g_1) y@@4 n_15)))
 :qid |stdinbpl.3669:28|
 :skolemid |367|
 :pattern ( (select g_1 n_15))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) x@@7 n_15))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) y@@4 n_15))
)) (=> (and (state ExhaleHeap@4 QPMask@25) (state ExhaleHeap@4 QPMask@25)) (and (and (=> (= (ControlFlow 0 287) 286) anon228_Else_correct) (=> (= (ControlFlow 0 287) 245) anon229_Then_correct)) (=> (= (ControlFlow 0 287) 236) anon229_Else_correct))))))
(let ((anon227_Then_correct  (and (=> (= (ControlFlow 0 231) (- 0 232)) (forall ((n$0_7 T@Ref) (n$0_7_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_7 n$0_7_2)) (select g_1 n$0_7)) (select g_1 n$0_7_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_7 n$0_7_2)))
 :qid |stdinbpl.3637:35|
 :skolemid |363|
 :pattern ( (neverTriggered49 n$0_7) (neverTriggered49 n$0_7_2))
))) (=> (forall ((n$0_7@@0 T@Ref) (n$0_7_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_7@@0 n$0_7_2@@0)) (select g_1 n$0_7@@0)) (select g_1 n$0_7_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_7@@0 n$0_7_2@@0)))
 :qid |stdinbpl.3637:35|
 :skolemid |363|
 :pattern ( (neverTriggered49 n$0_7@@0) (neverTriggered49 n$0_7_2@@0))
)) (=> (= (ControlFlow 0 231) (- 0 230)) (forall ((n$0_7@@1 T@Ref) ) (!  (=> (select g_1 n$0_7@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@25) n$0_7@@1 next) NoPerm)))
 :qid |stdinbpl.3644:35|
 :skolemid |364|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$0_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@36) n$0_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$0_7@@1 next))
)))))))
(let ((anon225_Then_correct  (and (=> (= (ControlFlow 0 227) (- 0 228)) (forall ((n$0_6 T@Ref) (n$0_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_6 n$0_6_1)) (select g_1 n$0_6)) (select g_1 n$0_6_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_6 n$0_6_1)))
 :qid |stdinbpl.3597:33|
 :skolemid |359|
 :pattern ( (neverTriggered48 n$0_6) (neverTriggered48 n$0_6_1))
))) (=> (forall ((n$0_6@@0 T@Ref) (n$0_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_6@@0 n$0_6_1@@0)) (select g_1 n$0_6@@0)) (select g_1 n$0_6_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_6@@0 n$0_6_1@@0)))
 :qid |stdinbpl.3597:33|
 :skolemid |359|
 :pattern ( (neverTriggered48 n$0_6@@0) (neverTriggered48 n$0_6_1@@0))
)) (=> (= (ControlFlow 0 227) (- 0 226)) (forall ((n$0_6@@1 T@Ref) ) (!  (=> (select g_1 n$0_6@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@25) n$0_6@@1 next) NoPerm)))
 :qid |stdinbpl.3604:33|
 :skolemid |360|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$0_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@35) n$0_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$0_6@@1 next))
)))))))
(let ((anon65_correct true))
(let ((anon226_Then_correct  (=> (not (exists_path ($$ ExhaleHeap@4 g_1) x@@7 n_75)) (and (=> (= (ControlFlow 0 233) 231) anon227_Then_correct) (=> (= (ControlFlow 0 233) 224) anon65_correct)))))
(let ((anon226_Else_correct  (=> (and (exists_path ($$ ExhaleHeap@4 g_1) x@@7 n_75) (= (ControlFlow 0 229) 224)) anon65_correct)))
(let ((anon224_Then_correct  (=> (select g_1 n_75) (and (and (=> (= (ControlFlow 0 234) 227) anon225_Then_correct) (=> (= (ControlFlow 0 234) 233) anon226_Then_correct)) (=> (= (ControlFlow 0 234) 229) anon226_Else_correct)))))
(let ((anon224_Else_correct  (=> (and (not (select g_1 n_75)) (= (ControlFlow 0 225) 224)) anon65_correct)))
(let ((anon220_Else_correct  (=> (and (and (and (forall ((n$2_3 T@Ref) ) (!  (=> (and (select g_1 n$2_3) (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_3 next) null))) (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_3 next)))
 :qid |stdinbpl.3571:28|
 :skolemid |358|
 :pattern ( (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_3 next)))
 :pattern ( (select g_1 n$2_3) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_3 next))
)) (state ExhaleHeap@4 QPMask@25)) (and (select g_1 last@0) (state ExhaleHeap@4 QPMask@25))) (and (and (select g_1 x@@7) (select g_1 y@@4)) (and (state ExhaleHeap@4 QPMask@25) (state ExhaleHeap@4 QPMask@25)))) (and (and (=> (= (ControlFlow 0 288) 287) anon223_Else_correct) (=> (= (ControlFlow 0 288) 234) anon224_Then_correct)) (=> (= (ControlFlow 0 288) 225) anon224_Else_correct)))))
(let ((anon57_correct true))
(let ((anon222_Else_correct  (=> (and (not (and (select g_1 n$2_41) (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_41 next) null)))) (= (ControlFlow 0 220) 217)) anon57_correct)))
(let ((anon222_Then_correct  (=> (and (select g_1 n$2_41) (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_41 next) null))) (and (=> (= (ControlFlow 0 218) (- 0 219)) (HasDirectPerm_29078_29079 QPMask@25 n$2_41 next)) (=> (HasDirectPerm_29078_29079 QPMask@25 n$2_41 next) (=> (= (ControlFlow 0 218) 217) anon57_correct))))))
(let ((anon221_Else_correct  (=> (not (select g_1 n$2_41)) (and (=> (= (ControlFlow 0 223) 218) anon222_Then_correct) (=> (= (ControlFlow 0 223) 220) anon222_Else_correct)))))
(let ((anon221_Then_correct  (=> (select g_1 n$2_41) (and (=> (= (ControlFlow 0 221) (- 0 222)) (HasDirectPerm_29078_29079 QPMask@25 n$2_41 next)) (=> (HasDirectPerm_29078_29079 QPMask@25 n$2_41 next) (and (=> (= (ControlFlow 0 221) 218) anon222_Then_correct) (=> (= (ControlFlow 0 221) 220) anon222_Else_correct)))))))
(let ((anon219_Else_correct  (and (=> (= (ControlFlow 0 289) (- 0 290)) (forall ((n$1_2 T@Ref) (n$1_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_2 n$1_2_1)) (select g_1 n$1_2)) (select g_1 n$1_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_2 n$1_2_1)))
 :qid |stdinbpl.3526:23|
 :skolemid |352|
))) (=> (forall ((n$1_2@@0 T@Ref) (n$1_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_2@@0 n$1_2_1@@0)) (select g_1 n$1_2@@0)) (select g_1 n$1_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_2@@0 n$1_2_1@@0)))
 :qid |stdinbpl.3526:23|
 :skolemid |352|
)) (=> (and (and (forall ((n$1_2@@1 T@Ref) ) (!  (=> (and (select g_1 n$1_2@@1) (< NoPerm FullPerm)) (and (qpRange47 n$1_2@@1) (= (invRecv47 n$1_2@@1) n$1_2@@1)))
 :qid |stdinbpl.3532:30|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$1_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@25) n$1_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$1_2@@1 next))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv47 o_4)) (< NoPerm FullPerm)) (qpRange47 o_4)) (= (invRecv47 o_4) o_4))
 :qid |stdinbpl.3536:30|
 :skolemid |354|
 :pattern ( (invRecv47 o_4))
))) (and (forall ((n$1_2@@2 T@Ref) ) (!  (=> (select g_1 n$1_2@@2) (not (= n$1_2@@2 null)))
 :qid |stdinbpl.3542:30|
 :skolemid |355|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$1_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@25) n$1_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$1_2@@2 next))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv47 o_4@@0)) (< NoPerm FullPerm)) (qpRange47 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv47 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@25) o_4@@0 next) (+ (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@5) o_4@@0 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv47 o_4@@0)) (< NoPerm FullPerm)) (qpRange47 o_4@@0))) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@25) o_4@@0 next) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@5) o_4@@0 next))))
 :qid |stdinbpl.3548:30|
 :skolemid |356|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@25) o_4@@0 next))
)))) (=> (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_44199_53) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@5) o_4@@1 f_5) (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@25) o_4@@1 f_5)))
 :qid |stdinbpl.3552:37|
 :skolemid |357|
 :pattern ( (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@5) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@25) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_44212_44213) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@5) o_4@@2 f_5@@0) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@25) o_4@@2 f_5@@0)))
 :qid |stdinbpl.3552:37|
 :skolemid |357|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@5) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@25) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_29078_143803) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@5) o_4@@3 f_5@@1) (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@25) o_4@@3 f_5@@1)))
 :qid |stdinbpl.3552:37|
 :skolemid |357|
 :pattern ( (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@5) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@25) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_29078_143936) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@5) o_4@@4 f_5@@2) (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@25) o_4@@4 f_5@@2)))
 :qid |stdinbpl.3552:37|
 :skolemid |357|
 :pattern ( (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@5) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@25) o_4@@4 f_5@@2))
))) (state ExhaleHeap@4 QPMask@25)) (and (and (=> (= (ControlFlow 0 289) 288) anon220_Else_correct) (=> (= (ControlFlow 0 289) 221) anon221_Then_correct)) (=> (= (ControlFlow 0 289) 223) anon221_Else_correct))))))))
(let ((anon219_Then_correct true))
(let ((anon218_Then_correct  (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 291) 216) anon219_Then_correct) (=> (= (ControlFlow 0 291) 289) anon219_Else_correct)))))
(let ((anon248_Then_correct  (and (=> (= (ControlFlow 0 202) (- 0 203)) (forall ((n_28_1 T@Ref) (n_28_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_28_1 n_28_2)) (select g_1 n_28_1)) (select g_1 n_28_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_28_1 n_28_2)))
 :qid |stdinbpl.4232:35|
 :skolemid |418|
 :pattern ( (neverTriggered61 n_28_1) (neverTriggered61 n_28_2))
))) (=> (forall ((n_28_1@@0 T@Ref) (n_28_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_28_1@@0 n_28_2@@0)) (select g_1 n_28_1@@0)) (select g_1 n_28_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_28_1@@0 n_28_2@@0)))
 :qid |stdinbpl.4232:35|
 :skolemid |418|
 :pattern ( (neverTriggered61 n_28_1@@0) (neverTriggered61 n_28_2@@0))
)) (=> (= (ControlFlow 0 202) (- 0 201)) (forall ((n_28_1@@1 T@Ref) ) (!  (=> (select g_1 n_28_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@6) n_28_1@@1 next) NoPerm)))
 :qid |stdinbpl.4239:35|
 :skolemid |419|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_28_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@21) n_28_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_28_1@@1 next))
)))))))
(let ((anon247_Then_correct  (and (=> (= (ControlFlow 0 199) (- 0 200)) (forall ((n_27_1 T@Ref) (n_27_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_27_1 n_27_2)) (select g_1 n_27_1)) (select g_1 n_27_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_27_1 n_27_2)))
 :qid |stdinbpl.4193:35|
 :skolemid |414|
 :pattern ( (neverTriggered60 n_27_1) (neverTriggered60 n_27_2))
))) (=> (forall ((n_27_1@@0 T@Ref) (n_27_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_27_1@@0 n_27_2@@0)) (select g_1 n_27_1@@0)) (select g_1 n_27_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_27_1@@0 n_27_2@@0)))
 :qid |stdinbpl.4193:35|
 :skolemid |414|
 :pattern ( (neverTriggered60 n_27_1@@0) (neverTriggered60 n_27_2@@0))
)) (=> (= (ControlFlow 0 199) (- 0 198)) (forall ((n_27_1@@1 T@Ref) ) (!  (=> (select g_1 n_27_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@6) n_27_1@@1 next) NoPerm)))
 :qid |stdinbpl.4200:35|
 :skolemid |415|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_27_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@20) n_27_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_27_1@@1 next))
)))))))
(let ((anon251_Then_correct  (and (=> (= (ControlFlow 0 191) (- 0 192)) (forall ((n_30_1 T@Ref) (n_30_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_30_1 n_30_2)) (select g_1 n_30_1)) (select g_1 n_30_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_30_1 n_30_2)))
 :qid |stdinbpl.4327:35|
 :skolemid |426|
 :pattern ( (neverTriggered63 n_30_1) (neverTriggered63 n_30_2))
))) (=> (forall ((n_30_1@@0 T@Ref) (n_30_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_30_1@@0 n_30_2@@0)) (select g_1 n_30_1@@0)) (select g_1 n_30_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_30_1@@0 n_30_2@@0)))
 :qid |stdinbpl.4327:35|
 :skolemid |426|
 :pattern ( (neverTriggered63 n_30_1@@0) (neverTriggered63 n_30_2@@0))
)) (=> (= (ControlFlow 0 191) (- 0 190)) (forall ((n_30_1@@1 T@Ref) ) (!  (=> (select g_1 n_30_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@6) n_30_1@@1 next) NoPerm)))
 :qid |stdinbpl.4334:35|
 :skolemid |427|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_30_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@23) n_30_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_30_1@@1 next))
)))))))
(let ((anon250_Then_correct  (and (=> (= (ControlFlow 0 188) (- 0 189)) (forall ((n_29_1 T@Ref) (n_29_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_29_1 n_29_2)) (select g_1 n_29_1)) (select g_1 n_29_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_29_1 n_29_2)))
 :qid |stdinbpl.4288:35|
 :skolemid |422|
 :pattern ( (neverTriggered62 n_29_1) (neverTriggered62 n_29_2))
))) (=> (forall ((n_29_1@@0 T@Ref) (n_29_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_29_1@@0 n_29_2@@0)) (select g_1 n_29_1@@0)) (select g_1 n_29_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_29_1@@0 n_29_2@@0)))
 :qid |stdinbpl.4288:35|
 :skolemid |422|
 :pattern ( (neverTriggered62 n_29_1@@0) (neverTriggered62 n_29_2@@0))
)) (=> (= (ControlFlow 0 188) (- 0 187)) (forall ((n_29_1@@1 T@Ref) ) (!  (=> (select g_1 n_29_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@6) n_29_1@@1 next) NoPerm)))
 :qid |stdinbpl.4295:35|
 :skolemid |423|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_29_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@22) n_29_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_29_1@@1 next))
)))))))
(let ((anon125_correct true))
(let ((anon259_Else_correct  (=> (and (not (and (edge ($$ ExhaleHeap@4 g_1) last@2 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@2 next)) (exists_path ($$ ExhaleHeap@4 g_1) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@2 next) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@2 next)))) (= (ControlFlow 0 169) 165)) anon125_correct)))
(let ((anon259_Then_correct  (=> (and (edge ($$ ExhaleHeap@4 g_1) last@2 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@2 next)) (exists_path ($$ ExhaleHeap@4 g_1) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@2 next) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@2 next))) (and (=> (= (ControlFlow 0 167) (- 0 168)) (exists_path ($$ ExhaleHeap@4 g_1) last@2 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@2 next))) (=> (exists_path ($$ ExhaleHeap@4 g_1) last@2 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@2 next)) (=> (= (ControlFlow 0 167) 165) anon125_correct))))))
(let ((anon258_Then_correct  (=> (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@2 next) null)) (and (=> (= (ControlFlow 0 170) 167) anon259_Then_correct) (=> (= (ControlFlow 0 170) 169) anon259_Else_correct)))))
(let ((anon258_Else_correct  (=> (and (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@2 next) null) (= (ControlFlow 0 166) 165)) anon125_correct)))
(let ((anon256_Else_correct  (=> (forall ((n_34_1_1 T@Ref) ) (!  (=> (select g_1 n_34_1_1) (or (not (exists_path ($$ ExhaleHeap@4 g_1) x@@7 n_34_1_1)) (not (exists_path ($$ ExhaleHeap@4 g_1) y@@4 n_34_1_1))))
 :qid |stdinbpl.4448:28|
 :skolemid |438|
 :pattern ( (select g_1 n_34_1_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) x@@7 n_34_1_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) y@@4 n_34_1_1))
)) (and (=> (= (ControlFlow 0 171) (- 0 175)) (acyclic_graph ($$ ExhaleHeap@4 g_1))) (=> (acyclic_graph ($$ ExhaleHeap@4 g_1)) (and (=> (= (ControlFlow 0 171) (- 0 174)) (unshared_graph ($$ ExhaleHeap@4 g_1))) (=> (unshared_graph ($$ ExhaleHeap@4 g_1)) (and (=> (= (ControlFlow 0 171) (- 0 173)) (|Set#Equal_29085| ($$ ExhaleHeap@4 g_1) old_g@0)) (=> (|Set#Equal_29085| ($$ ExhaleHeap@4 g_1) old_g@0) (and (=> (= (ControlFlow 0 171) (- 0 172)) (exists_path ($$ ExhaleHeap@4 g_1) x@@7 last@2)) (=> (exists_path ($$ ExhaleHeap@4 g_1) x@@7 last@2) (and (=> (= (ControlFlow 0 171) 170) anon258_Then_correct) (=> (= (ControlFlow 0 171) 166) anon258_Else_correct)))))))))))))
(let ((anon121_correct true))
(let ((anon257_Else_correct  (=> (and (not (select g_1 n_33_1)) (= (ControlFlow 0 164) 161)) anon121_correct)))
(let ((anon257_Then_correct  (=> (select g_1 n_33_1) (and (=> (= (ControlFlow 0 162) (- 0 163)) (or (not (exists_path ($$ ExhaleHeap@4 g_1) x@@7 n_33_1)) (not (exists_path ($$ ExhaleHeap@4 g_1) y@@4 n_33_1)))) (=> (or (not (exists_path ($$ ExhaleHeap@4 g_1) x@@7 n_33_1)) (not (exists_path ($$ ExhaleHeap@4 g_1) y@@4 n_33_1))) (=> (= (ControlFlow 0 162) 161) anon121_correct))))))
(let ((anon254_Else_correct  (=> (forall ((n_32_1_1 T@Ref) ) (!  (=> (select g_1 n_32_1_1) (or (exists_path ($$ ExhaleHeap@4 g_1) x@@7 n_32_1_1) (exists_path ($$ ExhaleHeap@4 g_1) y@@4 n_32_1_1)))
 :qid |stdinbpl.4437:28|
 :skolemid |437|
 :pattern ( (select g_1 n_32_1_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) x@@7 n_32_1_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) y@@4 n_32_1_1))
)) (and (and (=> (= (ControlFlow 0 176) 171) anon256_Else_correct) (=> (= (ControlFlow 0 176) 162) anon257_Then_correct)) (=> (= (ControlFlow 0 176) 164) anon257_Else_correct)))))
(let ((anon117_correct true))
(let ((anon255_Else_correct  (=> (and (not (select g_1 n_31_1)) (= (ControlFlow 0 160) 157)) anon117_correct)))
(let ((anon255_Then_correct  (=> (select g_1 n_31_1) (and (=> (= (ControlFlow 0 158) (- 0 159)) (or (exists_path ($$ ExhaleHeap@4 g_1) x@@7 n_31_1) (exists_path ($$ ExhaleHeap@4 g_1) y@@4 n_31_1))) (=> (or (exists_path ($$ ExhaleHeap@4 g_1) x@@7 n_31_1) (exists_path ($$ ExhaleHeap@4 g_1) y@@4 n_31_1)) (=> (= (ControlFlow 0 158) 157) anon117_correct))))))
(let ((anon252_Else_correct  (=> (forall ((n$2_6_1 T@Ref) ) (!  (=> (and (select g_1 n$2_6_1) (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_6_1 next) null))) (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_6_1 next)))
 :qid |stdinbpl.4420:28|
 :skolemid |436|
 :pattern ( (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_6_1 next)))
 :pattern ( (select g_1 n$2_6_1) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_6_1 next))
)) (and (=> (= (ControlFlow 0 177) (- 0 180)) (select g_1 last@2)) (=> (select g_1 last@2) (and (=> (= (ControlFlow 0 177) (- 0 179)) (select g_1 x@@7)) (=> (select g_1 x@@7) (and (=> (= (ControlFlow 0 177) (- 0 178)) (select g_1 y@@4)) (=> (select g_1 y@@4) (and (and (=> (= (ControlFlow 0 177) 176) anon254_Else_correct) (=> (= (ControlFlow 0 177) 158) anon255_Then_correct)) (=> (= (ControlFlow 0 177) 160) anon255_Else_correct)))))))))))
(let ((anon113_correct true))
(let ((anon253_Else_correct  (=> (and (not (and (select g_1 n$2_5_1) (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_5_1 next) null)))) (= (ControlFlow 0 156) 153)) anon113_correct)))
(let ((anon253_Then_correct  (=> (and (select g_1 n$2_5_1) (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_5_1 next) null))) (and (=> (= (ControlFlow 0 154) (- 0 155)) (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_5_1 next))) (=> (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_5_1 next)) (=> (= (ControlFlow 0 154) 153) anon113_correct))))))
(let ((anon110_correct  (=> (and (state ExhaleHeap@4 QPMask@6) (state ExhaleHeap@4 QPMask@6)) (and (=> (= (ControlFlow 0 181) (- 0 185)) (HasDirectPerm_29078_29079 QPMask@6 last@0 next)) (=> (HasDirectPerm_29078_29079 QPMask@6 last@0 next) (=> (and (= last@2 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next)) (state ExhaleHeap@4 QPMask@6)) (and (=> (= (ControlFlow 0 181) (- 0 184)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 181) (- 0 183)) (forall ((n$1_4 T@Ref) (n$1_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_4 n$1_4_1)) (select g_1 n$1_4)) (select g_1 n$1_4_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_4 n$1_4_1)))
 :qid |stdinbpl.4379:25|
 :skolemid |430|
 :pattern ( (neverTriggered64 n$1_4) (neverTriggered64 n$1_4_1))
))) (=> (forall ((n$1_4@@0 T@Ref) (n$1_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_4@@0 n$1_4_1@@0)) (select g_1 n$1_4@@0)) (select g_1 n$1_4_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_4@@0 n$1_4_1@@0)))
 :qid |stdinbpl.4379:25|
 :skolemid |430|
 :pattern ( (neverTriggered64 n$1_4@@0) (neverTriggered64 n$1_4_1@@0))
)) (and (=> (= (ControlFlow 0 181) (- 0 182)) (forall ((n$1_4@@1 T@Ref) ) (!  (=> (select g_1 n$1_4@@1) (>= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@6) n$1_4@@1 next) FullPerm))
 :qid |stdinbpl.4386:25|
 :skolemid |431|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$1_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@24) n$1_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$1_4@@1 next))
))) (=> (forall ((n$1_4@@2 T@Ref) ) (!  (=> (select g_1 n$1_4@@2) (>= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@6) n$1_4@@2 next) FullPerm))
 :qid |stdinbpl.4386:25|
 :skolemid |431|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$1_4@@2 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@24) n$1_4@@2 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$1_4@@2 next))
)) (=> (forall ((n$1_4@@3 T@Ref) ) (!  (=> (and (select g_1 n$1_4@@3) (< NoPerm FullPerm)) (and (qpRange64 n$1_4@@3) (= (invRecv64 n$1_4@@3) n$1_4@@3)))
 :qid |stdinbpl.4392:30|
 :skolemid |432|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$1_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@24) n$1_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$1_4@@3 next))
)) (=> (and (forall ((o_4@@5 T@Ref) ) (!  (=> (and (select g_1 (invRecv64 o_4@@5)) (and (< NoPerm FullPerm) (qpRange64 o_4@@5))) (= (invRecv64 o_4@@5) o_4@@5))
 :qid |stdinbpl.4396:30|
 :skolemid |433|
 :pattern ( (invRecv64 o_4@@5))
)) (forall ((o_4@@6 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv64 o_4@@6)) (and (< NoPerm FullPerm) (qpRange64 o_4@@6))) (and (= (invRecv64 o_4@@6) o_4@@6) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@24) o_4@@6 next) (- (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@6) o_4@@6 next) FullPerm)))) (=> (not (and (select g_1 (invRecv64 o_4@@6)) (and (< NoPerm FullPerm) (qpRange64 o_4@@6)))) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@24) o_4@@6 next) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@6) o_4@@6 next))))
 :qid |stdinbpl.4402:30|
 :skolemid |434|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@24) o_4@@6 next))
))) (=> (and (and (and (forall ((o_4@@7 T@Ref) (f_5@@3 T@Field_44199_53) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@6) o_4@@7 f_5@@3) (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@24) o_4@@7 f_5@@3)))
 :qid |stdinbpl.4408:37|
 :skolemid |435|
 :pattern ( (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@24) o_4@@7 f_5@@3))
)) (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_44212_44213) ) (!  (=> (not (= f_5@@4 next)) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@6) o_4@@8 f_5@@4) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@24) o_4@@8 f_5@@4)))
 :qid |stdinbpl.4408:37|
 :skolemid |435|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@24) o_4@@8 f_5@@4))
))) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_29078_143803) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@6) o_4@@9 f_5@@5) (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@24) o_4@@9 f_5@@5)))
 :qid |stdinbpl.4408:37|
 :skolemid |435|
 :pattern ( (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@24) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_29078_143936) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@6) o_4@@10 f_5@@6) (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@24) o_4@@10 f_5@@6)))
 :qid |stdinbpl.4408:37|
 :skolemid |435|
 :pattern ( (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@24) o_4@@10 f_5@@6))
))) (and (and (=> (= (ControlFlow 0 181) 177) anon252_Else_correct) (=> (= (ControlFlow 0 181) 154) anon253_Then_correct)) (=> (= (ControlFlow 0 181) 156) anon253_Else_correct)))))))))))))))))
(let ((anon251_Else_correct  (=> (and (apply_IND ($$ ExhaleHeap@4 g_1) (|Set#Singleton_29281| x@@7) (inst_uReach_2 ($$ ExhaleHeap@4 g_1) x@@7)) (= (ControlFlow 0 193) 181)) anon110_correct)))
(let ((anon249_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next) null)) (state ExhaleHeap@4 QPMask@6)) (and (and (=> (= (ControlFlow 0 194) 188) anon250_Then_correct) (=> (= (ControlFlow 0 194) 191) anon251_Then_correct)) (=> (= (ControlFlow 0 194) 193) anon251_Else_correct)))))
(let ((anon249_Else_correct  (=> (and (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next) null) (= (ControlFlow 0 186) 181)) anon110_correct)))
(let ((anon104_correct  (=> (and (state ExhaleHeap@4 QPMask@6) (state ExhaleHeap@4 QPMask@6)) (and (=> (= (ControlFlow 0 195) (- 0 196)) (HasDirectPerm_29078_29079 QPMask@6 last@0 next)) (=> (HasDirectPerm_29078_29079 QPMask@6 last@0 next) (and (=> (= (ControlFlow 0 195) 194) anon249_Then_correct) (=> (= (ControlFlow 0 195) 186) anon249_Else_correct)))))))
(let ((anon248_Else_correct  (and (=> (= (ControlFlow 0 204) (- 0 205)) (HasDirectPerm_29078_29079 QPMask@6 last@0 next)) (=> (HasDirectPerm_29078_29079 QPMask@6 last@0 next) (=> (and (apply_IND_2 ($$ ExhaleHeap@4 g_1) (|Set#Singleton_29281| last@0) (inst_uReach_rev ($$ ExhaleHeap@4 g_1) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next))) (= (ControlFlow 0 204) 195)) anon104_correct)))))
(let ((anon246_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next) null)) (state ExhaleHeap@4 QPMask@6)) (and (and (=> (= (ControlFlow 0 206) 199) anon247_Then_correct) (=> (= (ControlFlow 0 206) 202) anon248_Then_correct)) (=> (= (ControlFlow 0 206) 204) anon248_Else_correct)))))
(let ((anon246_Else_correct  (=> (and (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next) null) (= (ControlFlow 0 197) 195)) anon104_correct)))
(let ((anon98_correct  (=> (state ExhaleHeap@4 QPMask@6) (and (=> (= (ControlFlow 0 207) (- 0 209)) (HasDirectPerm_29078_29079 QPMask@6 last@0 next)) (=> (HasDirectPerm_29078_29079 QPMask@6 last@0 next) (=> (and (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next) null)) (state ExhaleHeap@4 QPMask@6)) (and (=> (= (ControlFlow 0 207) (- 0 208)) (HasDirectPerm_29078_29079 QPMask@6 last@0 next)) (=> (HasDirectPerm_29078_29079 QPMask@6 last@0 next) (and (=> (= (ControlFlow 0 207) 206) anon246_Then_correct) (=> (= (ControlFlow 0 207) 197) anon246_Else_correct))))))))))
(let ((anon245_Else_correct  (=> (and (not (and (edge ($$ ExhaleHeap@4 g_1) last@0 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next)) (exists_path ($$ ExhaleHeap@4 g_1) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next)))) (= (ControlFlow 0 212) 207)) anon98_correct)))
(let ((anon245_Then_correct  (=> (and (and (and (edge ($$ ExhaleHeap@4 g_1) last@0 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next)) (exists_path ($$ ExhaleHeap@4 g_1) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next))) (state ExhaleHeap@4 QPMask@6)) (and (exists_path ($$ ExhaleHeap@4 g_1) last@0 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next)) (= (ControlFlow 0 211) 207))) anon98_correct)))
(let ((anon244_Then_correct  (=> (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next) null)) (and (=> (= (ControlFlow 0 213) 211) anon245_Then_correct) (=> (= (ControlFlow 0 213) 212) anon245_Else_correct)))))
(let ((anon244_Else_correct  (=> (and (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next) null) (= (ControlFlow 0 210) 207)) anon98_correct)))
(let ((anon243_Then_correct  (=> (and (state ExhaleHeap@4 ZeroMask) (not (select g_1 null))) (and (=> (= (ControlFlow 0 214) (- 0 215)) (forall ((n$1_3 T@Ref) (n$1_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_3 n$1_3_1)) (select g_1 n$1_3)) (select g_1 n$1_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_3 n$1_3_1)))
 :qid |stdinbpl.4098:23|
 :skolemid |405|
))) (=> (forall ((n$1_3@@0 T@Ref) (n$1_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_3@@0 n$1_3_1@@0)) (select g_1 n$1_3@@0)) (select g_1 n$1_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_3@@0 n$1_3_1@@0)))
 :qid |stdinbpl.4098:23|
 :skolemid |405|
)) (=> (and (and (forall ((n$1_3@@1 T@Ref) ) (!  (=> (and (select g_1 n$1_3@@1) (< NoPerm FullPerm)) (and (qpRange59 n$1_3@@1) (= (invRecv59 n$1_3@@1) n$1_3@@1)))
 :qid |stdinbpl.4104:30|
 :skolemid |406|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$1_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@6) n$1_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$1_3@@1 next))
)) (forall ((o_4@@11 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv59 o_4@@11)) (< NoPerm FullPerm)) (qpRange59 o_4@@11)) (= (invRecv59 o_4@@11) o_4@@11))
 :qid |stdinbpl.4108:30|
 :skolemid |407|
 :pattern ( (invRecv59 o_4@@11))
))) (and (forall ((n$1_3@@2 T@Ref) ) (!  (=> (select g_1 n$1_3@@2) (not (= n$1_3@@2 null)))
 :qid |stdinbpl.4114:30|
 :skolemid |408|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$1_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@6) n$1_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$1_3@@2 next))
)) (forall ((o_4@@12 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv59 o_4@@12)) (< NoPerm FullPerm)) (qpRange59 o_4@@12)) (and (=> (< NoPerm FullPerm) (= (invRecv59 o_4@@12) o_4@@12)) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@6) o_4@@12 next) (+ (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| ZeroMask) o_4@@12 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv59 o_4@@12)) (< NoPerm FullPerm)) (qpRange59 o_4@@12))) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@6) o_4@@12 next) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| ZeroMask) o_4@@12 next))))
 :qid |stdinbpl.4120:30|
 :skolemid |409|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@6) o_4@@12 next))
)))) (=> (and (and (and (and (and (forall ((o_4@@13 T@Ref) (f_5@@7 T@Field_44199_53) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| ZeroMask) o_4@@13 f_5@@7) (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@6) o_4@@13 f_5@@7)))
 :qid |stdinbpl.4124:37|
 :skolemid |410|
 :pattern ( (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| ZeroMask) o_4@@13 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@6) o_4@@13 f_5@@7))
)) (forall ((o_4@@14 T@Ref) (f_5@@8 T@Field_44212_44213) ) (!  (=> (not (= f_5@@8 next)) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| ZeroMask) o_4@@14 f_5@@8) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@6) o_4@@14 f_5@@8)))
 :qid |stdinbpl.4124:37|
 :skolemid |410|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| ZeroMask) o_4@@14 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@6) o_4@@14 f_5@@8))
))) (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_29078_143803) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| ZeroMask) o_4@@15 f_5@@9) (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@6) o_4@@15 f_5@@9)))
 :qid |stdinbpl.4124:37|
 :skolemid |410|
 :pattern ( (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| ZeroMask) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@6) o_4@@15 f_5@@9))
))) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_29078_143936) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| ZeroMask) o_4@@16 f_5@@10) (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@6) o_4@@16 f_5@@10)))
 :qid |stdinbpl.4124:37|
 :skolemid |410|
 :pattern ( (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| ZeroMask) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@6) o_4@@16 f_5@@10))
))) (state ExhaleHeap@4 QPMask@6)) (and (and (and (and (forall ((n$2_4_1 T@Ref) ) (!  (=> (and (select g_1 n$2_4_1) (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_4_1 next) null))) (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_4_1 next)))
 :qid |stdinbpl.4130:28|
 :skolemid |411|
 :pattern ( (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_4_1 next)))
 :pattern ( (select g_1 n$2_4_1) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_4_1 next))
)) (select g_1 last@0)) (and (select g_1 x@@7) (select g_1 y@@4))) (and (and (state ExhaleHeap@4 QPMask@6) (forall ((n_25_1 T@Ref) ) (!  (=> (select g_1 n_25_1) (or (exists_path ($$ ExhaleHeap@4 g_1) x@@7 n_25_1) (exists_path ($$ ExhaleHeap@4 g_1) y@@4 n_25_1)))
 :qid |stdinbpl.4138:28|
 :skolemid |412|
 :pattern ( (select g_1 n_25_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) x@@7 n_25_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) y@@4 n_25_1))
))) (and (state ExhaleHeap@4 QPMask@6) (forall ((n_26_1 T@Ref) ) (!  (=> (select g_1 n_26_1) (or (not (exists_path ($$ ExhaleHeap@4 g_1) x@@7 n_26_1)) (not (exists_path ($$ ExhaleHeap@4 g_1) y@@4 n_26_1))))
 :qid |stdinbpl.4143:28|
 :skolemid |413|
 :pattern ( (select g_1 n_26_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) x@@7 n_26_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) y@@4 n_26_1))
))))) (and (and (and (state ExhaleHeap@4 QPMask@6) (acyclic_graph ($$ ExhaleHeap@4 g_1))) (and (state ExhaleHeap@4 QPMask@6) (unshared_graph ($$ ExhaleHeap@4 g_1)))) (and (and (state ExhaleHeap@4 QPMask@6) (|Set#Equal_29085| ($$ ExhaleHeap@4 g_1) old_g@0)) (and (state ExhaleHeap@4 QPMask@6) (exists_path ($$ ExhaleHeap@4 g_1) x@@7 last@0)))))) (and (=> (= (ControlFlow 0 214) 213) anon244_Then_correct) (=> (= (ControlFlow 0 214) 210) anon244_Else_correct)))))))))
(let ((anon292_Else_correct true))
(let ((anon292_Then_correct  (and (=> (= (ControlFlow 0 115) (- 0 116)) (forall ((n_47 T@Ref) (n_47_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_47 n_47_1)) (select g_1 n_47)) (select g_1 n_47_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_47 n_47_1)))
 :qid |stdinbpl.5183:23|
 :skolemid |505|
 :pattern ( (neverTriggered77 n_47) (neverTriggered77 n_47_1))
))) (=> (forall ((n_47@@0 T@Ref) (n_47_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_47@@0 n_47_1@@0)) (select g_1 n_47@@0)) (select g_1 n_47_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_47@@0 n_47_1@@0)))
 :qid |stdinbpl.5183:23|
 :skolemid |505|
 :pattern ( (neverTriggered77 n_47@@0) (neverTriggered77 n_47_1@@0))
)) (=> (= (ControlFlow 0 115) (- 0 114)) (forall ((n_47@@1 T@Ref) ) (!  (=> (select g_1 n_47@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| Mask@0) n_47@@1 next) NoPerm)))
 :qid |stdinbpl.5190:23|
 :skolemid |506|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@0) n_47@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@13) n_47@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@0) n_47@@1 next))
)))))))
(let ((anon293_Else_correct true))
(let ((anon293_Then_correct  (=> (= (ControlFlow 0 112) (- 0 111)) (= (edge ($$ Heap@0 g_1) u_10_1 v_7)  (or (edge old_g@0 u_10_1 v_7) (and (= u_10_1 last@1) (= v_7 y@@4)))))))
(let ((anon290_Else_correct  (=> (and (forall ((u_8_1_1 T@Ref) ) (! (= (exists_path ($$ Heap@0 g_1) x@@7 u_8_1_1)  (or (exists_path old_g@0 x@@7 u_8_1_1) (exists_path old_g@0 y@@4 u_8_1_1)))
 :qid |stdinbpl.5157:20|
 :skolemid |504|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| Heap@0 g_1)) g_1) x@@7 u_8_1_1))
 :pattern ( (exists_path old_g@0 x@@7 u_8_1_1))
 :pattern ( (exists_path old_g@0 y@@4 u_8_1_1))
)) (state Heap@0 Mask@0)) (and (and (and (=> (= (ControlFlow 0 118) 112) anon293_Then_correct) (=> (= (ControlFlow 0 118) 113) anon293_Else_correct)) (=> (= (ControlFlow 0 118) 115) anon292_Then_correct)) (=> (= (ControlFlow 0 118) 117) anon292_Else_correct)))))
(let ((anon289_Else_correct true))
(let ((anon289_Then_correct  (and (=> (= (ControlFlow 0 108) (- 0 109)) (forall ((n_46_1 T@Ref) (n_46_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_46_1 n_46_2)) (select g_1 n_46_1)) (select g_1 n_46_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_46_1 n_46_2)))
 :qid |stdinbpl.5122:23|
 :skolemid |500|
 :pattern ( (neverTriggered76 n_46_1) (neverTriggered76 n_46_2))
))) (=> (forall ((n_46_1@@0 T@Ref) (n_46_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_46_1@@0 n_46_2@@0)) (select g_1 n_46_1@@0)) (select g_1 n_46_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_46_1@@0 n_46_2@@0)))
 :qid |stdinbpl.5122:23|
 :skolemid |500|
 :pattern ( (neverTriggered76 n_46_1@@0) (neverTriggered76 n_46_2@@0))
)) (=> (= (ControlFlow 0 108) (- 0 107)) (forall ((n_46_1@@1 T@Ref) ) (!  (=> (select g_1 n_46_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| Mask@0) n_46_1@@1 next) NoPerm)))
 :qid |stdinbpl.5129:23|
 :skolemid |501|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@0) n_46_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@14) n_46_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@0) n_46_1@@1 next))
)))))))
(let ((anon290_Then_correct  (=> (= (ControlFlow 0 106) (- 0 105)) (= (exists_path ($$ Heap@0 g_1) x@@7 u_7)  (or (exists_path old_g@0 x@@7 u_7) (exists_path old_g@0 y@@4 u_7))))))
(let ((anon287_Else_correct  (and (=> (= (ControlFlow 0 119) (- 0 120)) (unshared_graph ($$ Heap@0 g_1))) (=> (unshared_graph ($$ Heap@0 g_1)) (=> (state Heap@0 Mask@0) (and (and (and (=> (= (ControlFlow 0 119) 106) anon290_Then_correct) (=> (= (ControlFlow 0 119) 118) anon290_Else_correct)) (=> (= (ControlFlow 0 119) 108) anon289_Then_correct)) (=> (= (ControlFlow 0 119) 110) anon289_Else_correct)))))))
(let ((anon287_Then_correct  (and (=> (= (ControlFlow 0 103) (- 0 104)) (forall ((n_45_1 T@Ref) (n_45_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_45_1 n_45_2)) (select g_1 n_45_1)) (select g_1 n_45_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_45_1 n_45_2)))
 :qid |stdinbpl.5068:21|
 :skolemid |496|
 :pattern ( (neverTriggered75 n_45_1) (neverTriggered75 n_45_2))
))) (=> (forall ((n_45_1@@0 T@Ref) (n_45_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_45_1@@0 n_45_2@@0)) (select g_1 n_45_1@@0)) (select g_1 n_45_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_45_1@@0 n_45_2@@0)))
 :qid |stdinbpl.5068:21|
 :skolemid |496|
 :pattern ( (neverTriggered75 n_45_1@@0) (neverTriggered75 n_45_2@@0))
)) (=> (= (ControlFlow 0 103) (- 0 102)) (forall ((n_45_1@@1 T@Ref) ) (!  (=> (select g_1 n_45_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| Mask@0) n_45_1@@1 next) NoPerm)))
 :qid |stdinbpl.5075:21|
 :skolemid |497|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@0) n_45_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@12) n_45_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@0) n_45_1@@1 next))
)))))))
(let ((anon286_Else_correct  (and (=> (= (ControlFlow 0 121) (- 0 122)) (acyclic_graph ($$ Heap@0 g_1))) (=> (acyclic_graph ($$ Heap@0 g_1)) (=> (state Heap@0 Mask@0) (and (=> (= (ControlFlow 0 121) 103) anon287_Then_correct) (=> (= (ControlFlow 0 121) 119) anon287_Else_correct)))))))
(let ((anon286_Then_correct  (and (=> (= (ControlFlow 0 100) (- 0 101)) (forall ((n_44_1 T@Ref) (n_44_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_44_1 n_44_2)) (select g_1 n_44_1)) (select g_1 n_44_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_44_1 n_44_2)))
 :qid |stdinbpl.5020:21|
 :skolemid |492|
 :pattern ( (neverTriggered74 n_44_1) (neverTriggered74 n_44_2))
))) (=> (forall ((n_44_1@@0 T@Ref) (n_44_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_44_1@@0 n_44_2@@0)) (select g_1 n_44_1@@0)) (select g_1 n_44_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_44_1@@0 n_44_2@@0)))
 :qid |stdinbpl.5020:21|
 :skolemid |492|
 :pattern ( (neverTriggered74 n_44_1@@0) (neverTriggered74 n_44_2@@0))
)) (=> (= (ControlFlow 0 100) (- 0 99)) (forall ((n_44_1@@1 T@Ref) ) (!  (=> (select g_1 n_44_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| Mask@0) n_44_1@@1 next) NoPerm)))
 :qid |stdinbpl.5027:21|
 :skolemid |493|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@0) n_44_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@11) n_44_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@0) n_44_1@@1 next))
)))))))
(let ((anon285_Else_correct  (and (=> (= (ControlFlow 0 123) (- 0 124)) (func_graph ($$ Heap@0 g_1))) (=> (func_graph ($$ Heap@0 g_1)) (=> (state Heap@0 Mask@0) (and (=> (= (ControlFlow 0 123) 100) anon286_Then_correct) (=> (= (ControlFlow 0 123) 121) anon286_Else_correct)))))))
(let ((anon285_Then_correct  (and (=> (= (ControlFlow 0 97) (- 0 98)) (forall ((n_43_1 T@Ref) (n_43_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_43_1 n_43_2)) (select g_1 n_43_1)) (select g_1 n_43_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_43_1 n_43_2)))
 :qid |stdinbpl.4972:21|
 :skolemid |488|
 :pattern ( (neverTriggered73 n_43_1) (neverTriggered73 n_43_2))
))) (=> (forall ((n_43_1@@0 T@Ref) (n_43_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_43_1@@0 n_43_2@@0)) (select g_1 n_43_1@@0)) (select g_1 n_43_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_43_1@@0 n_43_2@@0)))
 :qid |stdinbpl.4972:21|
 :skolemid |488|
 :pattern ( (neverTriggered73 n_43_1@@0) (neverTriggered73 n_43_2@@0))
)) (=> (= (ControlFlow 0 97) (- 0 96)) (forall ((n_43_1@@1 T@Ref) ) (!  (=> (select g_1 n_43_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| Mask@0) n_43_1@@1 next) NoPerm)))
 :qid |stdinbpl.4979:21|
 :skolemid |489|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@0) n_43_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@10) n_43_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@0) n_43_1@@1 next))
)))))))
(let ((anon172_correct  (=> (and (state Heap@0 Mask@0) (state Heap@0 Mask@0)) (and (=> (= (ControlFlow 0 125) 97) anon285_Then_correct) (=> (= (ControlFlow 0 125) 123) anon285_Else_correct)))))
(let ((anon283_Else_correct  (=> (and (forall ((u_5_1 T@Ref) (v_5_1_1 T@Ref) ) (!  (=> (not (exists_path ($$ ExhaleHeap@5 g_1) u_5_1 v_5_1_1)) (not (edge ($$ ExhaleHeap@5 g_1) u_5_1 v_5_1_1)))
 :qid |stdinbpl.4944:24|
 :skolemid |487|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@5 g_1)) g_1) u_5_1 v_5_1_1))
 :pattern ( (edge (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@5 g_1)) g_1) u_5_1 v_5_1_1))
)) (state ExhaleHeap@5 QPMask@9)) (=> (and (and (= Heap@0 ExhaleHeap@5) (= Mask@0 QPMask@9)) (and (= last@1 last@0) (= (ControlFlow 0 127) 125))) anon172_correct))))
(let ((anon209_Then_correct  (=> (and (= x@@7 null) (state Heap@@19 QPMask@0)) (=> (and (and (= Heap@0 Heap@@19) (= Mask@0 QPMask@0)) (and (= last@1 x@@7) (= (ControlFlow 0 126) 125))) anon172_correct))))
(let ((anon170_correct true))
(let ((anon284_Else_correct  (=> (and (exists_path ($$ ExhaleHeap@5 g_1) u_4_1 v_4_1) (= (ControlFlow 0 95) 92)) anon170_correct)))
(let ((anon284_Then_correct  (=> (not (exists_path ($$ ExhaleHeap@5 g_1) u_4_1 v_4_1)) (and (=> (= (ControlFlow 0 93) (- 0 94)) (not (edge ($$ ExhaleHeap@5 g_1) u_4_1 v_4_1))) (=> (not (edge ($$ ExhaleHeap@5 g_1) u_4_1 v_4_1)) (=> (= (ControlFlow 0 93) 92) anon170_correct))))))
(let ((anon282_Then_correct  (and (=> (= (ControlFlow 0 89) (- 0 90)) (forall ((n_42_1 T@Ref) (n_42_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_42_1 n_42_2)) (select g_1 n_42_1)) (select g_1 n_42_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_42_1 n_42_2)))
 :qid |stdinbpl.4906:29|
 :skolemid |483|
 :pattern ( (neverTriggered72 n_42_1) (neverTriggered72 n_42_2))
))) (=> (forall ((n_42_1@@0 T@Ref) (n_42_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_42_1@@0 n_42_2@@0)) (select g_1 n_42_1@@0)) (select g_1 n_42_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_42_1@@0 n_42_2@@0)))
 :qid |stdinbpl.4906:29|
 :skolemid |483|
 :pattern ( (neverTriggered72 n_42_1@@0) (neverTriggered72 n_42_2@@0))
)) (=> (= (ControlFlow 0 89) (- 0 88)) (forall ((n_42_1@@1 T@Ref) ) (!  (=> (select g_1 n_42_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@9) n_42_1@@1 next) NoPerm)))
 :qid |stdinbpl.4913:29|
 :skolemid |484|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) n_42_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@16) n_42_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) n_42_1@@1 next))
)))))))
(let ((anon166_correct true))
(let ((anon281_Then_correct  (=> (not (exists_path ($$ ExhaleHeap@5 g_1) u_23 v_23)) (and (=> (= (ControlFlow 0 91) 89) anon282_Then_correct) (=> (= (ControlFlow 0 91) 86) anon166_correct)))))
(let ((anon281_Else_correct  (=> (and (exists_path ($$ ExhaleHeap@5 g_1) u_23 v_23) (= (ControlFlow 0 87) 86)) anon166_correct)))
(let ((anon280_Then_correct  (and (=> (= (ControlFlow 0 84) (- 0 85)) (forall ((n_41_1 T@Ref) (n_41_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_41_1 n_41_2)) (select g_1 n_41_1)) (select g_1 n_41_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_41_1 n_41_2)))
 :qid |stdinbpl.4866:27|
 :skolemid |479|
 :pattern ( (neverTriggered71 n_41_1) (neverTriggered71 n_41_2))
))) (=> (forall ((n_41_1@@0 T@Ref) (n_41_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_41_1@@0 n_41_2@@0)) (select g_1 n_41_1@@0)) (select g_1 n_41_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_41_1@@0 n_41_2@@0)))
 :qid |stdinbpl.4866:27|
 :skolemid |479|
 :pattern ( (neverTriggered71 n_41_1@@0) (neverTriggered71 n_41_2@@0))
)) (=> (= (ControlFlow 0 84) (- 0 83)) (forall ((n_41_1@@1 T@Ref) ) (!  (=> (select g_1 n_41_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@9) n_41_1@@1 next) NoPerm)))
 :qid |stdinbpl.4873:27|
 :skolemid |480|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) n_41_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@15) n_41_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) n_41_1@@1 next))
)))))))
(let ((anon276_Else_correct  (=> (and (forall ((u_2_1_1 T@Ref) (v_2_1_1 T@Ref) ) (!  (=> (not (exists_path ($$ ExhaleHeap@5 g_1) u_2_1_1 v_2_1_1)) (and (not (= u_2_1_1 v_2_1_1)) (forall ((w_3_1 T@Ref) ) (!  (or (not (edge ($$ ExhaleHeap@5 g_1) u_2_1_1 w_3_1)) (not (exists_path ($$ ExhaleHeap@5 g_1) w_3_1 v_2_1_1)))
 :qid |stdinbpl.4839:99|
 :skolemid |477|
 :pattern ( (edge (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@5 g_1)) g_1) u_2_1_1 w_3_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@5 g_1)) g_1) w_3_1 v_2_1_1))
))))
 :qid |stdinbpl.4837:24|
 :skolemid |478|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@5 g_1)) g_1) u_2_1_1 v_2_1_1))
)) (state ExhaleHeap@5 QPMask@9)) (and (and (and (and (and (=> (= (ControlFlow 0 128) 127) anon283_Else_correct) (=> (= (ControlFlow 0 128) 93) anon284_Then_correct)) (=> (= (ControlFlow 0 128) 95) anon284_Else_correct)) (=> (= (ControlFlow 0 128) 84) anon280_Then_correct)) (=> (= (ControlFlow 0 128) 91) anon281_Then_correct)) (=> (= (ControlFlow 0 128) 87) anon281_Else_correct)))))
(let ((anon278_Then_correct  (=> (= (ControlFlow 0 79) (- 0 78)) (or (not (edge ($$ ExhaleHeap@5 g_1) u_1@@1 w_1)) (not (exists_path ($$ ExhaleHeap@5 g_1) w_1 v_1_1))))))
(let ((anon159_correct true))
(let ((anon278_Else_correct  (=> (and (forall ((w_2_1 T@Ref) ) (!  (or (not (edge ($$ ExhaleHeap@5 g_1) u_1@@1 w_2_1)) (not (exists_path ($$ ExhaleHeap@5 g_1) w_2_1 v_1_1)))
 :qid |stdinbpl.4830:28|
 :skolemid |476|
 :pattern ( (edge (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@5 g_1)) g_1) u_1@@1 w_2_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@5 g_1)) g_1) w_2_1 v_1_1))
)) (= (ControlFlow 0 80) 76)) anon159_correct)))
(let ((anon277_Then_correct  (=> (not (exists_path ($$ ExhaleHeap@5 g_1) u_1@@1 v_1_1)) (and (=> (= (ControlFlow 0 81) (- 0 82)) (not (= u_1@@1 v_1_1))) (=> (not (= u_1@@1 v_1_1)) (and (=> (= (ControlFlow 0 81) 79) anon278_Then_correct) (=> (= (ControlFlow 0 81) 80) anon278_Else_correct)))))))
(let ((anon277_Else_correct  (=> (and (exists_path ($$ ExhaleHeap@5 g_1) u_1@@1 v_1_1) (= (ControlFlow 0 77) 76)) anon159_correct)))
(let ((anon275_Then_correct  (and (=> (= (ControlFlow 0 71) (- 0 72)) (forall ((n_40_1 T@Ref) (n_40_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_40_1 n_40_2)) (select g_1 n_40_1)) (select g_1 n_40_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_40_1 n_40_2)))
 :qid |stdinbpl.4786:35|
 :skolemid |472|
 :pattern ( (neverTriggered70 n_40_1) (neverTriggered70 n_40_2))
))) (=> (forall ((n_40_1@@0 T@Ref) (n_40_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_40_1@@0 n_40_2@@0)) (select g_1 n_40_1@@0)) (select g_1 n_40_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_40_1@@0 n_40_2@@0)))
 :qid |stdinbpl.4786:35|
 :skolemid |472|
 :pattern ( (neverTriggered70 n_40_1@@0) (neverTriggered70 n_40_2@@0))
)) (=> (= (ControlFlow 0 71) (- 0 70)) (forall ((n_40_1@@1 T@Ref) ) (!  (=> (select g_1 n_40_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@9) n_40_1@@1 next) NoPerm)))
 :qid |stdinbpl.4793:35|
 :skolemid |473|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) n_40_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@19) n_40_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) n_40_1@@1 next))
)))))))
(let ((anon152_correct true))
(let ((anon274_Then_correct  (=> (edge ($$ ExhaleHeap@5 g_1) u_34 w_11) (and (=> (= (ControlFlow 0 73) 71) anon275_Then_correct) (=> (= (ControlFlow 0 73) 68) anon152_correct)))))
(let ((anon274_Else_correct  (=> (and (not (edge ($$ ExhaleHeap@5 g_1) u_34 w_11)) (= (ControlFlow 0 69) 68)) anon152_correct)))
(let ((anon273_Then_correct  (and (=> (= (ControlFlow 0 66) (- 0 67)) (forall ((n_39_1 T@Ref) (n_39_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_39_1 n_39_2)) (select g_1 n_39_1)) (select g_1 n_39_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_39_1 n_39_2)))
 :qid |stdinbpl.4746:33|
 :skolemid |468|
 :pattern ( (neverTriggered69 n_39_1) (neverTriggered69 n_39_2))
))) (=> (forall ((n_39_1@@0 T@Ref) (n_39_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_39_1@@0 n_39_2@@0)) (select g_1 n_39_1@@0)) (select g_1 n_39_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_39_1@@0 n_39_2@@0)))
 :qid |stdinbpl.4746:33|
 :skolemid |468|
 :pattern ( (neverTriggered69 n_39_1@@0) (neverTriggered69 n_39_2@@0))
)) (=> (= (ControlFlow 0 66) (- 0 65)) (forall ((n_39_1@@1 T@Ref) ) (!  (=> (select g_1 n_39_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@9) n_39_1@@1 next) NoPerm)))
 :qid |stdinbpl.4753:33|
 :skolemid |469|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) n_39_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@18) n_39_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) n_39_1@@1 next))
)))))))
(let ((anon153_correct true))
(let ((anon271_Then_correct  (=> (not (= u_34 v_33)) (and (and (and (=> (= (ControlFlow 0 74) 62) anon153_correct) (=> (= (ControlFlow 0 74) 66) anon273_Then_correct)) (=> (= (ControlFlow 0 74) 73) anon274_Then_correct)) (=> (= (ControlFlow 0 74) 69) anon274_Else_correct)))))
(let ((anon271_Else_correct  (=> (and (= u_34 v_33) (= (ControlFlow 0 64) 62)) anon153_correct)))
(let ((anon270_Then_correct  (=> (not (exists_path ($$ ExhaleHeap@5 g_1) u_34 v_33)) (and (=> (= (ControlFlow 0 75) 74) anon271_Then_correct) (=> (= (ControlFlow 0 75) 64) anon271_Else_correct)))))
(let ((anon270_Else_correct  (=> (and (exists_path ($$ ExhaleHeap@5 g_1) u_34 v_33) (= (ControlFlow 0 63) 62)) anon153_correct)))
(let ((anon269_Then_correct  (and (=> (= (ControlFlow 0 60) (- 0 61)) (forall ((n_38_1 T@Ref) (n_38_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_38_1 n_38_2)) (select g_1 n_38_1)) (select g_1 n_38_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_38_1 n_38_2)))
 :qid |stdinbpl.4704:27|
 :skolemid |464|
 :pattern ( (neverTriggered68 n_38_1) (neverTriggered68 n_38_2))
))) (=> (forall ((n_38_1@@0 T@Ref) (n_38_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_38_1@@0 n_38_2@@0)) (select g_1 n_38_1@@0)) (select g_1 n_38_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_38_1@@0 n_38_2@@0)))
 :qid |stdinbpl.4704:27|
 :skolemid |464|
 :pattern ( (neverTriggered68 n_38_1@@0) (neverTriggered68 n_38_2@@0))
)) (=> (= (ControlFlow 0 60) (- 0 59)) (forall ((n_38_1@@1 T@Ref) ) (!  (=> (select g_1 n_38_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@9) n_38_1@@1 next) NoPerm)))
 :qid |stdinbpl.4711:27|
 :skolemid |465|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) n_38_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@17) n_38_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) n_38_1@@1 next))
)))))))
(let ((anon141_correct  (=> (and (state ExhaleHeap@5 QPMask@9) (state ExhaleHeap@5 QPMask@9)) (and (and (and (and (and (=> (= (ControlFlow 0 129) 128) anon276_Else_correct) (=> (= (ControlFlow 0 129) 81) anon277_Then_correct)) (=> (= (ControlFlow 0 129) 77) anon277_Else_correct)) (=> (= (ControlFlow 0 129) 60) anon269_Then_correct)) (=> (= (ControlFlow 0 129) 75) anon270_Then_correct)) (=> (= (ControlFlow 0 129) 63) anon270_Else_correct)))))
(let ((anon267_Else_correct  (=> (and (= y@@4 null) (= (ControlFlow 0 131) 129)) anon141_correct)))
(let ((anon267_Then_correct  (=> (and (and (not (= y@@4 null)) (state ExhaleHeap@5 QPMask@9)) (and (forall ((v1_1 T@Ref) (v2_1 T@Ref) ) (! (= (exists_path ($$ ExhaleHeap@5 g_1) v1_1 v2_1)  (or (exists_path ($$ ExhaleHeap@4 g_1) v1_1 v2_1) (and (exists_path ($$ ExhaleHeap@4 g_1) v1_1 last@0) (exists_path ($$ ExhaleHeap@4 g_1) y@@4 v2_1))))
 :qid |stdinbpl.4672:28|
 :skolemid |463|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@5 g_1)) g_1) v1_1 v2_1))
)) (= (ControlFlow 0 130) 129))) anon141_correct)))
(let ((anon266_Else_correct  (=> (= y@@4 null) (and (=> (= (ControlFlow 0 133) 130) anon267_Then_correct) (=> (= (ControlFlow 0 133) 131) anon267_Else_correct)))))
(let ((anon266_Then_correct  (=> (not (= y@@4 null)) (=> (and (state ExhaleHeap@5 QPMask@9) (forall ((v1@@2 T@Ref) (v2@@2 T@Ref) ) (! (= (edge ($$ ExhaleHeap@5 g_1) v1@@2 v2@@2)  (or (edge ($$ ExhaleHeap@4 g_1) v1@@2 v2@@2) (and (= v1@@2 last@0) (= v2@@2 y@@4))))
 :qid |stdinbpl.4665:28|
 :skolemid |462|
 :pattern ( (edge (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) v1@@2 v2@@2))
))) (and (=> (= (ControlFlow 0 132) 130) anon267_Then_correct) (=> (= (ControlFlow 0 132) 131) anon267_Else_correct))))))
(let ((anon265_Else_correct  (=> (not (= y@@4 null)) (and (=> (= (ControlFlow 0 135) 132) anon266_Then_correct) (=> (= (ControlFlow 0 135) 133) anon266_Else_correct)))))
(let ((anon265_Then_correct  (=> (= y@@4 null) (=> (and (state ExhaleHeap@5 QPMask@9) (|Set#Equal_29085| ($$ ExhaleHeap@5 g_1) ($$ ExhaleHeap@4 g_1))) (and (=> (= (ControlFlow 0 134) 132) anon266_Then_correct) (=> (= (ControlFlow 0 134) 133) anon266_Else_correct))))))
(let ((anon263_Else_correct  (=> (forall ((n$0_11_1 T@Ref) ) (!  (=> (and (select g_1 n$0_11_1) (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$0_11_1 next) null))) (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$0_11_1 next)))
 :qid |stdinbpl.4609:26|
 :skolemid |454|
 :pattern ( (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$0_11_1 next)))
 :pattern ( (select g_1 n$0_11_1) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$0_11_1 next))
)) (=> (and (IdenticalOnKnownLocations ExhaleHeap@4 ExhaleHeap@5 QPMask@8) (not (select g_1 null))) (and (=> (= (ControlFlow 0 136) (- 0 137)) (forall ((n$1_6 T@Ref) (n$1_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_6 n$1_6_1)) (select g_1 n$1_6)) (select g_1 n$1_6_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_6 n$1_6_1)))
 :qid |stdinbpl.4622:21|
 :skolemid |455|
))) (=> (forall ((n$1_6@@0 T@Ref) (n$1_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_6@@0 n$1_6_1@@0)) (select g_1 n$1_6@@0)) (select g_1 n$1_6_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_6@@0 n$1_6_1@@0)))
 :qid |stdinbpl.4622:21|
 :skolemid |455|
)) (=> (and (and (forall ((n$1_6@@1 T@Ref) ) (!  (=> (and (select g_1 n$1_6@@1) (< NoPerm FullPerm)) (and (qpRange67 n$1_6@@1) (= (invRecv67 n$1_6@@1) n$1_6@@1)))
 :qid |stdinbpl.4628:28|
 :skolemid |456|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) n$1_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@9) n$1_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) n$1_6@@1 next))
)) (forall ((o_4@@17 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv67 o_4@@17)) (< NoPerm FullPerm)) (qpRange67 o_4@@17)) (= (invRecv67 o_4@@17) o_4@@17))
 :qid |stdinbpl.4632:28|
 :skolemid |457|
 :pattern ( (invRecv67 o_4@@17))
))) (and (forall ((n$1_6@@2 T@Ref) ) (!  (=> (select g_1 n$1_6@@2) (not (= n$1_6@@2 null)))
 :qid |stdinbpl.4638:28|
 :skolemid |458|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) n$1_6@@2 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@9) n$1_6@@2 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) n$1_6@@2 next))
)) (forall ((o_4@@18 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv67 o_4@@18)) (< NoPerm FullPerm)) (qpRange67 o_4@@18)) (and (=> (< NoPerm FullPerm) (= (invRecv67 o_4@@18) o_4@@18)) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@9) o_4@@18 next) (+ (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@8) o_4@@18 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv67 o_4@@18)) (< NoPerm FullPerm)) (qpRange67 o_4@@18))) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@9) o_4@@18 next) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@8) o_4@@18 next))))
 :qid |stdinbpl.4644:28|
 :skolemid |459|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@9) o_4@@18 next))
)))) (=> (and (and (and (and (and (forall ((o_4@@19 T@Ref) (f_5@@11 T@Field_44199_53) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@8) o_4@@19 f_5@@11) (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@9) o_4@@19 f_5@@11)))
 :qid |stdinbpl.4648:35|
 :skolemid |460|
 :pattern ( (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@8) o_4@@19 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@9) o_4@@19 f_5@@11))
)) (forall ((o_4@@20 T@Ref) (f_5@@12 T@Field_44212_44213) ) (!  (=> (not (= f_5@@12 next)) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@8) o_4@@20 f_5@@12) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@9) o_4@@20 f_5@@12)))
 :qid |stdinbpl.4648:35|
 :skolemid |460|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@8) o_4@@20 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@9) o_4@@20 f_5@@12))
))) (forall ((o_4@@21 T@Ref) (f_5@@13 T@Field_29078_143803) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@8) o_4@@21 f_5@@13) (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@9) o_4@@21 f_5@@13)))
 :qid |stdinbpl.4648:35|
 :skolemid |460|
 :pattern ( (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@8) o_4@@21 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@9) o_4@@21 f_5@@13))
))) (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_29078_143936) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@8) o_4@@22 f_5@@14) (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@9) o_4@@22 f_5@@14)))
 :qid |stdinbpl.4648:35|
 :skolemid |460|
 :pattern ( (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@8) o_4@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@9) o_4@@22 f_5@@14))
))) (state ExhaleHeap@5 QPMask@9)) (and (forall ((n$2_8 T@Ref) ) (!  (=> (and (select g_1 n$2_8) (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) n$2_8 next) null))) (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) n$2_8 next)))
 :qid |stdinbpl.4654:26|
 :skolemid |461|
 :pattern ( (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) n$2_8 next)))
 :pattern ( (select g_1 n$2_8) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) n$2_8 next))
)) (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@5) last@0 next) y@@4))) (and (=> (= (ControlFlow 0 136) 134) anon265_Then_correct) (=> (= (ControlFlow 0 136) 135) anon265_Else_correct))))))))))
(let ((anon134_correct true))
(let ((anon264_Else_correct  (=> (and (not (and (select g_1 n$0_10) (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$0_10 next) null)))) (= (ControlFlow 0 58) 55)) anon134_correct)))
(let ((anon264_Then_correct  (=> (and (select g_1 n$0_10) (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$0_10 next) null))) (and (=> (= (ControlFlow 0 56) (- 0 57)) (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$0_10 next))) (=> (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$0_10 next)) (=> (= (ControlFlow 0 56) 55) anon134_correct))))))
(let ((anon131_correct  (and (=> (= (ControlFlow 0 138) (- 0 141)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 138) (- 0 140)) (forall ((n_37_1 T@Ref) (n_37_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_37_1 n_37_2)) (select g_1 n_37_1)) (select g_1 n_37_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_37_1 n_37_2)))
 :qid |stdinbpl.4568:23|
 :skolemid |448|
 :pattern ( (neverTriggered66 n_37_1) (neverTriggered66 n_37_2))
))) (=> (forall ((n_37_1@@0 T@Ref) (n_37_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_37_1@@0 n_37_2@@0)) (select g_1 n_37_1@@0)) (select g_1 n_37_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_37_1@@0 n_37_2@@0)))
 :qid |stdinbpl.4568:23|
 :skolemid |448|
 :pattern ( (neverTriggered66 n_37_1@@0) (neverTriggered66 n_37_2@@0))
)) (and (=> (= (ControlFlow 0 138) (- 0 139)) (forall ((n_37_1@@1 T@Ref) ) (!  (=> (select g_1 n_37_1@@1) (>= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@7) n_37_1@@1 next) FullPerm))
 :qid |stdinbpl.4575:23|
 :skolemid |449|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_37_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@8) n_37_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_37_1@@1 next))
))) (=> (forall ((n_37_1@@2 T@Ref) ) (!  (=> (select g_1 n_37_1@@2) (>= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@7) n_37_1@@2 next) FullPerm))
 :qid |stdinbpl.4575:23|
 :skolemid |449|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_37_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@8) n_37_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_37_1@@2 next))
)) (=> (forall ((n_37_1@@3 T@Ref) ) (!  (=> (and (select g_1 n_37_1@@3) (< NoPerm FullPerm)) (and (qpRange66 n_37_1@@3) (= (invRecv66 n_37_1@@3) n_37_1@@3)))
 :qid |stdinbpl.4581:28|
 :skolemid |450|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_37_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@8) n_37_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n_37_1@@3 next))
)) (=> (and (forall ((o_4@@23 T@Ref) ) (!  (=> (and (select g_1 (invRecv66 o_4@@23)) (and (< NoPerm FullPerm) (qpRange66 o_4@@23))) (= (invRecv66 o_4@@23) o_4@@23))
 :qid |stdinbpl.4585:28|
 :skolemid |451|
 :pattern ( (invRecv66 o_4@@23))
)) (forall ((o_4@@24 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv66 o_4@@24)) (and (< NoPerm FullPerm) (qpRange66 o_4@@24))) (and (= (invRecv66 o_4@@24) o_4@@24) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@8) o_4@@24 next) (- (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@7) o_4@@24 next) FullPerm)))) (=> (not (and (select g_1 (invRecv66 o_4@@24)) (and (< NoPerm FullPerm) (qpRange66 o_4@@24)))) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@8) o_4@@24 next) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@7) o_4@@24 next))))
 :qid |stdinbpl.4591:28|
 :skolemid |452|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@8) o_4@@24 next))
))) (=> (and (and (and (forall ((o_4@@25 T@Ref) (f_5@@15 T@Field_44199_53) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@7) o_4@@25 f_5@@15) (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@8) o_4@@25 f_5@@15)))
 :qid |stdinbpl.4597:35|
 :skolemid |453|
 :pattern ( (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@8) o_4@@25 f_5@@15))
)) (forall ((o_4@@26 T@Ref) (f_5@@16 T@Field_44212_44213) ) (!  (=> (not (= f_5@@16 next)) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@7) o_4@@26 f_5@@16) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@8) o_4@@26 f_5@@16)))
 :qid |stdinbpl.4597:35|
 :skolemid |453|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@8) o_4@@26 f_5@@16))
))) (forall ((o_4@@27 T@Ref) (f_5@@17 T@Field_29078_143803) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@7) o_4@@27 f_5@@17) (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@8) o_4@@27 f_5@@17)))
 :qid |stdinbpl.4597:35|
 :skolemid |453|
 :pattern ( (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@8) o_4@@27 f_5@@17))
))) (forall ((o_4@@28 T@Ref) (f_5@@18 T@Field_29078_143936) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@7) o_4@@28 f_5@@18) (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@8) o_4@@28 f_5@@18)))
 :qid |stdinbpl.4597:35|
 :skolemid |453|
 :pattern ( (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@8) o_4@@28 f_5@@18))
))) (and (and (=> (= (ControlFlow 0 138) 136) anon263_Else_correct) (=> (= (ControlFlow 0 138) 56) anon264_Then_correct)) (=> (= (ControlFlow 0 138) 58) anon264_Else_correct)))))))))))))
(let ((anon262_Else_correct  (=> (and (= y@@4 null) (= (ControlFlow 0 144) 138)) anon131_correct)))
(let ((anon262_Then_correct  (=> (not (= y@@4 null)) (and (=> (= (ControlFlow 0 142) (- 0 143)) (select g_1 y@@4)) (=> (select g_1 y@@4) (=> (= (ControlFlow 0 142) 138) anon131_correct))))))
(let ((anon129_correct  (=> (and (state ExhaleHeap@4 QPMask@7) (state ExhaleHeap@4 QPMask@7)) (and (=> (= (ControlFlow 0 145) (- 0 146)) (select g_1 last@0)) (=> (select g_1 last@0) (and (=> (= (ControlFlow 0 145) 142) anon262_Then_correct) (=> (= (ControlFlow 0 145) 144) anon262_Else_correct)))))))
(let ((anon261_Else_correct  (=> (and (not (and (edge ($$ ExhaleHeap@4 g_1) last@0 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next)) (exists_path ($$ ExhaleHeap@4 g_1) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next)))) (= (ControlFlow 0 149) 145)) anon129_correct)))
(let ((anon261_Then_correct  (=> (and (and (and (edge ($$ ExhaleHeap@4 g_1) last@0 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next)) (exists_path ($$ ExhaleHeap@4 g_1) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next))) (state ExhaleHeap@4 QPMask@7)) (and (exists_path ($$ ExhaleHeap@4 g_1) last@0 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next)) (= (ControlFlow 0 148) 145))) anon129_correct)))
(let ((anon260_Then_correct  (=> (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next) null)) (and (=> (= (ControlFlow 0 150) 148) anon261_Then_correct) (=> (= (ControlFlow 0 150) 149) anon261_Else_correct)))))
(let ((anon260_Else_correct  (=> (and (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next) null) (= (ControlFlow 0 147) 145)) anon129_correct)))
(let ((anon243_Else_correct  (=> (not (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) last@0 next) null))) (=> (and (state ExhaleHeap@4 QPMask@5) (not (select g_1 null))) (and (=> (= (ControlFlow 0 151) (- 0 152)) (forall ((n$1_5 T@Ref) (n$1_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_5 n$1_5_1)) (select g_1 n$1_5)) (select g_1 n$1_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_5 n$1_5_1)))
 :qid |stdinbpl.4480:21|
 :skolemid |439|
))) (=> (forall ((n$1_5@@0 T@Ref) (n$1_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_5@@0 n$1_5_1@@0)) (select g_1 n$1_5@@0)) (select g_1 n$1_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_5@@0 n$1_5_1@@0)))
 :qid |stdinbpl.4480:21|
 :skolemid |439|
)) (=> (and (and (forall ((n$1_5@@1 T@Ref) ) (!  (=> (and (select g_1 n$1_5@@1) (< NoPerm FullPerm)) (and (qpRange65 n$1_5@@1) (= (invRecv65 n$1_5@@1) n$1_5@@1)))
 :qid |stdinbpl.4486:28|
 :skolemid |440|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$1_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@7) n$1_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$1_5@@1 next))
)) (forall ((o_4@@29 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv65 o_4@@29)) (< NoPerm FullPerm)) (qpRange65 o_4@@29)) (= (invRecv65 o_4@@29) o_4@@29))
 :qid |stdinbpl.4490:28|
 :skolemid |441|
 :pattern ( (invRecv65 o_4@@29))
))) (and (forall ((n$1_5@@2 T@Ref) ) (!  (=> (select g_1 n$1_5@@2) (not (= n$1_5@@2 null)))
 :qid |stdinbpl.4496:28|
 :skolemid |442|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$1_5@@2 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@7) n$1_5@@2 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$1_5@@2 next))
)) (forall ((o_4@@30 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv65 o_4@@30)) (< NoPerm FullPerm)) (qpRange65 o_4@@30)) (and (=> (< NoPerm FullPerm) (= (invRecv65 o_4@@30) o_4@@30)) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@7) o_4@@30 next) (+ (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@5) o_4@@30 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv65 o_4@@30)) (< NoPerm FullPerm)) (qpRange65 o_4@@30))) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@7) o_4@@30 next) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@5) o_4@@30 next))))
 :qid |stdinbpl.4502:28|
 :skolemid |443|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@7) o_4@@30 next))
)))) (=> (and (and (and (and (and (forall ((o_4@@31 T@Ref) (f_5@@19 T@Field_44199_53) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@5) o_4@@31 f_5@@19) (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@7) o_4@@31 f_5@@19)))
 :qid |stdinbpl.4506:35|
 :skolemid |444|
 :pattern ( (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@5) o_4@@31 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@7) o_4@@31 f_5@@19))
)) (forall ((o_4@@32 T@Ref) (f_5@@20 T@Field_44212_44213) ) (!  (=> (not (= f_5@@20 next)) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@5) o_4@@32 f_5@@20) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@7) o_4@@32 f_5@@20)))
 :qid |stdinbpl.4506:35|
 :skolemid |444|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@5) o_4@@32 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@7) o_4@@32 f_5@@20))
))) (forall ((o_4@@33 T@Ref) (f_5@@21 T@Field_29078_143803) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@5) o_4@@33 f_5@@21) (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@7) o_4@@33 f_5@@21)))
 :qid |stdinbpl.4506:35|
 :skolemid |444|
 :pattern ( (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@5) o_4@@33 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@7) o_4@@33 f_5@@21))
))) (forall ((o_4@@34 T@Ref) (f_5@@22 T@Field_29078_143936) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@5) o_4@@34 f_5@@22) (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@7) o_4@@34 f_5@@22)))
 :qid |stdinbpl.4506:35|
 :skolemid |444|
 :pattern ( (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@5) o_4@@34 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@7) o_4@@34 f_5@@22))
))) (state ExhaleHeap@4 QPMask@7)) (and (and (and (and (forall ((n$2_7 T@Ref) ) (!  (=> (and (select g_1 n$2_7) (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_7 next) null))) (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_7 next)))
 :qid |stdinbpl.4512:26|
 :skolemid |445|
 :pattern ( (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_7 next)))
 :pattern ( (select g_1 n$2_7) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| ExhaleHeap@4) n$2_7 next))
)) (select g_1 last@0)) (and (select g_1 x@@7) (select g_1 y@@4))) (and (and (state ExhaleHeap@4 QPMask@7) (forall ((n_35_1 T@Ref) ) (!  (=> (select g_1 n_35_1) (or (exists_path ($$ ExhaleHeap@4 g_1) x@@7 n_35_1) (exists_path ($$ ExhaleHeap@4 g_1) y@@4 n_35_1)))
 :qid |stdinbpl.4520:26|
 :skolemid |446|
 :pattern ( (select g_1 n_35_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) x@@7 n_35_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) y@@4 n_35_1))
))) (and (state ExhaleHeap@4 QPMask@7) (forall ((n_36_1 T@Ref) ) (!  (=> (select g_1 n_36_1) (or (not (exists_path ($$ ExhaleHeap@4 g_1) x@@7 n_36_1)) (not (exists_path ($$ ExhaleHeap@4 g_1) y@@4 n_36_1))))
 :qid |stdinbpl.4525:26|
 :skolemid |447|
 :pattern ( (select g_1 n_36_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) x@@7 n_36_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) y@@4 n_36_1))
))))) (and (and (and (state ExhaleHeap@4 QPMask@7) (acyclic_graph ($$ ExhaleHeap@4 g_1))) (and (state ExhaleHeap@4 QPMask@7) (unshared_graph ($$ ExhaleHeap@4 g_1)))) (and (and (state ExhaleHeap@4 QPMask@7) (|Set#Equal_29085| ($$ ExhaleHeap@4 g_1) old_g@0)) (and (state ExhaleHeap@4 QPMask@7) (exists_path ($$ ExhaleHeap@4 g_1) x@@7 last@0)))))) (and (=> (= (ControlFlow 0 151) 150) anon260_Then_correct) (=> (= (ControlFlow 0 151) 147) anon260_Else_correct))))))))))
(let ((anon49_correct  (=> (and (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@4 QPMask@5) (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| ExhaleHeap@4) last@0 $allocated)) (and (and (=> (= (ControlFlow 0 292) 291) anon218_Then_correct) (=> (= (ControlFlow 0 292) 214) anon243_Then_correct)) (=> (= (ControlFlow 0 292) 151) anon243_Else_correct)))))
(let ((anon217_Else_correct  (=> (and (not (and (edge ($$ Heap@@19 g_1) x@@7 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) x@@7 next)) (exists_path ($$ Heap@@19 g_1) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) x@@7 next) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) x@@7 next)))) (= (ControlFlow 0 296) 292)) anon49_correct)))
(let ((anon217_Then_correct  (=> (and (edge ($$ Heap@@19 g_1) x@@7 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) x@@7 next)) (exists_path ($$ Heap@@19 g_1) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) x@@7 next) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) x@@7 next))) (and (=> (= (ControlFlow 0 294) (- 0 295)) (exists_path ($$ Heap@@19 g_1) x@@7 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) x@@7 next))) (=> (exists_path ($$ Heap@@19 g_1) x@@7 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) x@@7 next)) (=> (= (ControlFlow 0 294) 292) anon49_correct))))))
(let ((anon216_Then_correct  (=> (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) x@@7 next) null)) (and (=> (= (ControlFlow 0 297) 294) anon217_Then_correct) (=> (= (ControlFlow 0 297) 296) anon217_Else_correct)))))
(let ((anon216_Else_correct  (=> (and (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) x@@7 next) null) (= (ControlFlow 0 293) 292)) anon49_correct)))
(let ((anon214_Else_correct  (=> (forall ((n_13_1_1 T@Ref) ) (!  (=> (select g_1 n_13_1_1) (or (not (exists_path ($$ Heap@@19 g_1) x@@7 n_13_1_1)) (not (exists_path ($$ Heap@@19 g_1) y@@4 n_13_1_1))))
 :qid |stdinbpl.3489:28|
 :skolemid |351|
 :pattern ( (select g_1 n_13_1_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| Heap@@19 g_1)) g_1) x@@7 n_13_1_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| Heap@@19 g_1)) g_1) y@@4 n_13_1_1))
)) (and (=> (= (ControlFlow 0 298) (- 0 302)) (acyclic_graph ($$ Heap@@19 g_1))) (=> (acyclic_graph ($$ Heap@@19 g_1)) (and (=> (= (ControlFlow 0 298) (- 0 301)) (unshared_graph ($$ Heap@@19 g_1))) (=> (unshared_graph ($$ Heap@@19 g_1)) (and (=> (= (ControlFlow 0 298) (- 0 300)) (|Set#Equal_29085| ($$ Heap@@19 g_1) old_g@0)) (=> (|Set#Equal_29085| ($$ Heap@@19 g_1) old_g@0) (and (=> (= (ControlFlow 0 298) (- 0 299)) (exists_path ($$ Heap@@19 g_1) x@@7 x@@7)) (=> (exists_path ($$ Heap@@19 g_1) x@@7 x@@7) (and (=> (= (ControlFlow 0 298) 297) anon216_Then_correct) (=> (= (ControlFlow 0 298) 293) anon216_Else_correct)))))))))))))
(let ((anon45_correct true))
(let ((anon215_Else_correct  (=> (and (not (select g_1 n_12_1)) (= (ControlFlow 0 54) 51)) anon45_correct)))
(let ((anon215_Then_correct  (=> (select g_1 n_12_1) (and (=> (= (ControlFlow 0 52) (- 0 53)) (or (not (exists_path ($$ Heap@@19 g_1) x@@7 n_12_1)) (not (exists_path ($$ Heap@@19 g_1) y@@4 n_12_1)))) (=> (or (not (exists_path ($$ Heap@@19 g_1) x@@7 n_12_1)) (not (exists_path ($$ Heap@@19 g_1) y@@4 n_12_1))) (=> (= (ControlFlow 0 52) 51) anon45_correct))))))
(let ((anon212_Else_correct  (=> (forall ((n_11_1_1 T@Ref) ) (!  (=> (select g_1 n_11_1_1) (or (exists_path ($$ Heap@@19 g_1) x@@7 n_11_1_1) (exists_path ($$ Heap@@19 g_1) y@@4 n_11_1_1)))
 :qid |stdinbpl.3478:28|
 :skolemid |350|
 :pattern ( (select g_1 n_11_1_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| Heap@@19 g_1)) g_1) x@@7 n_11_1_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| Heap@@19 g_1)) g_1) y@@4 n_11_1_1))
)) (and (and (=> (= (ControlFlow 0 303) 298) anon214_Else_correct) (=> (= (ControlFlow 0 303) 52) anon215_Then_correct)) (=> (= (ControlFlow 0 303) 54) anon215_Else_correct)))))
(let ((anon41_correct true))
(let ((anon213_Else_correct  (=> (and (not (select g_1 n_10_1)) (= (ControlFlow 0 50) 47)) anon41_correct)))
(let ((anon213_Then_correct  (=> (select g_1 n_10_1) (and (=> (= (ControlFlow 0 48) (- 0 49)) (or (exists_path ($$ Heap@@19 g_1) x@@7 n_10_1) (exists_path ($$ Heap@@19 g_1) y@@4 n_10_1))) (=> (or (exists_path ($$ Heap@@19 g_1) x@@7 n_10_1) (exists_path ($$ Heap@@19 g_1) y@@4 n_10_1)) (=> (= (ControlFlow 0 48) 47) anon41_correct))))))
(let ((anon210_Else_correct  (=> (forall ((n$2_1_1_1 T@Ref) ) (!  (=> (and (select g_1 n$2_1_1_1) (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$2_1_1_1 next) null))) (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$2_1_1_1 next)))
 :qid |stdinbpl.3461:28|
 :skolemid |349|
 :pattern ( (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$2_1_1_1 next)))
 :pattern ( (select g_1 n$2_1_1_1) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$2_1_1_1 next))
)) (and (=> (= (ControlFlow 0 304) (- 0 307)) (select g_1 x@@7)) (=> (select g_1 x@@7) (and (=> (= (ControlFlow 0 304) (- 0 306)) (select g_1 x@@7)) (=> (select g_1 x@@7) (and (=> (= (ControlFlow 0 304) (- 0 305)) (select g_1 y@@4)) (=> (select g_1 y@@4) (and (and (=> (= (ControlFlow 0 304) 303) anon212_Else_correct) (=> (= (ControlFlow 0 304) 48) anon213_Then_correct)) (=> (= (ControlFlow 0 304) 50) anon213_Else_correct)))))))))))
(let ((anon37_correct true))
(let ((anon211_Else_correct  (=> (and (not (and (select g_1 n$2) (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$2 next) null)))) (= (ControlFlow 0 46) 43)) anon37_correct)))
(let ((anon211_Then_correct  (=> (and (select g_1 n$2) (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$2 next) null))) (and (=> (= (ControlFlow 0 44) (- 0 45)) (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$2 next))) (=> (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$2 next)) (=> (= (ControlFlow 0 44) 43) anon37_correct))))))
(let ((anon209_Else_correct  (=> (not (= x@@7 null)) (and (=> (= (ControlFlow 0 308) (- 0 311)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 308) (- 0 310)) (forall ((n$1_12 T@Ref) (n$1_24 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_12 n$1_24)) (select g_1 n$1_12)) (select g_1 n$1_24)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_12 n$1_24)))
 :qid |stdinbpl.3420:25|
 :skolemid |343|
 :pattern ( (neverTriggered46 n$1_12) (neverTriggered46 n$1_24))
))) (=> (forall ((n$1_12@@0 T@Ref) (n$1_24@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_12@@0 n$1_24@@0)) (select g_1 n$1_12@@0)) (select g_1 n$1_24@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_12@@0 n$1_24@@0)))
 :qid |stdinbpl.3420:25|
 :skolemid |343|
 :pattern ( (neverTriggered46 n$1_12@@0) (neverTriggered46 n$1_24@@0))
)) (and (=> (= (ControlFlow 0 308) (- 0 309)) (forall ((n$1_12@@1 T@Ref) ) (!  (=> (select g_1 n$1_12@@1) (>= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) n$1_12@@1 next) FullPerm))
 :qid |stdinbpl.3427:25|
 :skolemid |344|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$1_12@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@5) n$1_12@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$1_12@@1 next))
))) (=> (forall ((n$1_12@@2 T@Ref) ) (!  (=> (select g_1 n$1_12@@2) (>= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) n$1_12@@2 next) FullPerm))
 :qid |stdinbpl.3427:25|
 :skolemid |344|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$1_12@@2 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@5) n$1_12@@2 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$1_12@@2 next))
)) (=> (forall ((n$1_12@@3 T@Ref) ) (!  (=> (and (select g_1 n$1_12@@3) (< NoPerm FullPerm)) (and (qpRange46 n$1_12@@3) (= (invRecv46 n$1_12@@3) n$1_12@@3)))
 :qid |stdinbpl.3433:30|
 :skolemid |345|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$1_12@@3 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@5) n$1_12@@3 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$1_12@@3 next))
)) (=> (and (forall ((o_4@@35 T@Ref) ) (!  (=> (and (select g_1 (invRecv46 o_4@@35)) (and (< NoPerm FullPerm) (qpRange46 o_4@@35))) (= (invRecv46 o_4@@35) o_4@@35))
 :qid |stdinbpl.3437:30|
 :skolemid |346|
 :pattern ( (invRecv46 o_4@@35))
)) (forall ((o_4@@36 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv46 o_4@@36)) (and (< NoPerm FullPerm) (qpRange46 o_4@@36))) (and (= (invRecv46 o_4@@36) o_4@@36) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@5) o_4@@36 next) (- (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) o_4@@36 next) FullPerm)))) (=> (not (and (select g_1 (invRecv46 o_4@@36)) (and (< NoPerm FullPerm) (qpRange46 o_4@@36)))) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@5) o_4@@36 next) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) o_4@@36 next))))
 :qid |stdinbpl.3443:30|
 :skolemid |347|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@5) o_4@@36 next))
))) (=> (and (and (and (forall ((o_4@@37 T@Ref) (f_5@@23 T@Field_44199_53) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@0) o_4@@37 f_5@@23) (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@5) o_4@@37 f_5@@23)))
 :qid |stdinbpl.3449:37|
 :skolemid |348|
 :pattern ( (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@5) o_4@@37 f_5@@23))
)) (forall ((o_4@@38 T@Ref) (f_5@@24 T@Field_44212_44213) ) (!  (=> (not (= f_5@@24 next)) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) o_4@@38 f_5@@24) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@5) o_4@@38 f_5@@24)))
 :qid |stdinbpl.3449:37|
 :skolemid |348|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@5) o_4@@38 f_5@@24))
))) (forall ((o_4@@39 T@Ref) (f_5@@25 T@Field_29078_143803) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@0) o_4@@39 f_5@@25) (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@5) o_4@@39 f_5@@25)))
 :qid |stdinbpl.3449:37|
 :skolemid |348|
 :pattern ( (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@5) o_4@@39 f_5@@25))
))) (forall ((o_4@@40 T@Ref) (f_5@@26 T@Field_29078_143936) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@0) o_4@@40 f_5@@26) (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@5) o_4@@40 f_5@@26)))
 :qid |stdinbpl.3449:37|
 :skolemid |348|
 :pattern ( (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@5) o_4@@40 f_5@@26))
))) (and (and (=> (= (ControlFlow 0 308) 304) anon210_Else_correct) (=> (= (ControlFlow 0 308) 44) anon211_Then_correct)) (=> (= (ControlFlow 0 308) 46) anon211_Else_correct))))))))))))))
(let ((anon208_Else_correct  (=> (= old_g@0 ($$ Heap@@19 g_1)) (=> (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0)) (and (=> (= (ControlFlow 0 312) 126) anon209_Then_correct) (=> (= (ControlFlow 0 312) 308) anon209_Else_correct))))))
(let ((anon208_Then_correct  (and (=> (= (ControlFlow 0 41) (- 0 42)) (forall ((n_9 T@Ref) (n_9_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9 n_9_1)) (select g_1 n_9)) (select g_1 n_9_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_9 n_9_1)))
 :qid |stdinbpl.3361:21|
 :skolemid |339|
 :pattern ( (neverTriggered45 n_9) (neverTriggered45 n_9_1))
))) (=> (forall ((n_9@@0 T@Ref) (n_9_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@0 n_9_1@@0)) (select g_1 n_9@@0)) (select g_1 n_9_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_9@@0 n_9_1@@0)))
 :qid |stdinbpl.3361:21|
 :skolemid |339|
 :pattern ( (neverTriggered45 n_9@@0) (neverTriggered45 n_9_1@@0))
)) (=> (= (ControlFlow 0 41) (- 0 40)) (forall ((n_9@@1 T@Ref) ) (!  (=> (select g_1 n_9@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) n_9@@1 next) NoPerm)))
 :qid |stdinbpl.3368:21|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n_9@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@4) n_9@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n_9@@1 next))
)))))))
(let ((anon207_Else_correct  (=> (and (unshared_graph ($$ Heap@@19 g_1)) (state Heap@@19 QPMask@0)) (and (=> (= (ControlFlow 0 313) 41) anon208_Then_correct) (=> (= (ControlFlow 0 313) 312) anon208_Else_correct)))))
(let ((anon207_Then_correct  (and (=> (= (ControlFlow 0 38) (- 0 39)) (forall ((n_8 T@Ref) (n_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8 n_8_1)) (select g_1 n_8)) (select g_1 n_8_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_8 n_8_1)))
 :qid |stdinbpl.3310:21|
 :skolemid |335|
 :pattern ( (neverTriggered44 n_8) (neverTriggered44 n_8_1))
))) (=> (forall ((n_8@@0 T@Ref) (n_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@0 n_8_1@@0)) (select g_1 n_8@@0)) (select g_1 n_8_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_8@@0 n_8_1@@0)))
 :qid |stdinbpl.3310:21|
 :skolemid |335|
 :pattern ( (neverTriggered44 n_8@@0) (neverTriggered44 n_8_1@@0))
)) (=> (= (ControlFlow 0 38) (- 0 37)) (forall ((n_8@@1 T@Ref) ) (!  (=> (select g_1 n_8@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) n_8@@1 next) NoPerm)))
 :qid |stdinbpl.3317:21|
 :skolemid |336|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n_8@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@3) n_8@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n_8@@1 next))
)))))))
(let ((anon206_Else_correct  (=> (func_graph ($$ Heap@@19 g_1)) (=> (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0)) (and (=> (= (ControlFlow 0 314) 38) anon207_Then_correct) (=> (= (ControlFlow 0 314) 313) anon207_Else_correct))))))
(let ((anon206_Then_correct  (and (=> (= (ControlFlow 0 35) (- 0 36)) (forall ((n_7 T@Ref) (n_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7 n_7_1)) (select g_1 n_7)) (select g_1 n_7_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_7 n_7_1)))
 :qid |stdinbpl.3266:21|
 :skolemid |331|
 :pattern ( (neverTriggered43 n_7) (neverTriggered43 n_7_1))
))) (=> (forall ((n_7@@0 T@Ref) (n_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@0 n_7_1@@0)) (select g_1 n_7@@0)) (select g_1 n_7_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_7@@0 n_7_1@@0)))
 :qid |stdinbpl.3266:21|
 :skolemid |331|
 :pattern ( (neverTriggered43 n_7@@0) (neverTriggered43 n_7_1@@0))
)) (=> (= (ControlFlow 0 35) (- 0 34)) (forall ((n_7@@1 T@Ref) ) (!  (=> (select g_1 n_7@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) n_7@@1 next) NoPerm)))
 :qid |stdinbpl.3273:21|
 :skolemid |332|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@2) n_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n_7@@1 next))
)))))))
(let ((anon205_Else_correct  (=> (acyclic_graph ($$ Heap@@19 g_1)) (=> (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0)) (and (=> (= (ControlFlow 0 315) 35) anon206_Then_correct) (=> (= (ControlFlow 0 315) 314) anon206_Else_correct))))))
(let ((anon205_Then_correct  (and (=> (= (ControlFlow 0 32) (- 0 33)) (forall ((n_6 T@Ref) (n_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6 n_6_1)) (select g_1 n_6)) (select g_1 n_6_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_6 n_6_1)))
 :qid |stdinbpl.3222:21|
 :skolemid |327|
 :pattern ( (neverTriggered42 n_6) (neverTriggered42 n_6_1))
))) (=> (forall ((n_6@@0 T@Ref) (n_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@0 n_6_1@@0)) (select g_1 n_6@@0)) (select g_1 n_6_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_6@@0 n_6_1@@0)))
 :qid |stdinbpl.3222:21|
 :skolemid |327|
 :pattern ( (neverTriggered42 n_6@@0) (neverTriggered42 n_6_1@@0))
)) (=> (= (ControlFlow 0 32) (- 0 31)) (forall ((n_6@@1 T@Ref) ) (!  (=> (select g_1 n_6@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) n_6@@1 next) NoPerm)))
 :qid |stdinbpl.3229:21|
 :skolemid |328|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@1) n_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n_6@@1 next))
)))))))
(let ((anon200_Else_correct  (=> (forall ((n_5 T@Ref) ) (!  (=> (select g_1 n_5) (or (not (exists_path ($$ Heap@@19 g_1) x@@7 n_5)) (not (exists_path ($$ Heap@@19 g_1) y@@4 n_5))))
 :qid |stdinbpl.3203:20|
 :skolemid |326|
 :pattern ( (select g_1 n_5))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| Heap@@19 g_1)) g_1) x@@7 n_5))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| Heap@@19 g_1)) g_1) y@@4 n_5))
)) (=> (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0)) (and (=> (= (ControlFlow 0 316) 32) anon205_Then_correct) (=> (= (ControlFlow 0 316) 315) anon205_Else_correct))))))
(let ((anon204_Then_correct  (and (=> (= (ControlFlow 0 27) (- 0 28)) (forall ((n$0_5 T@Ref) (n$0_5_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_5 n$0_5_2)) (select g_1 n$0_5)) (select g_1 n$0_5_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_5 n$0_5_2)))
 :qid |stdinbpl.3171:27|
 :skolemid |322|
 :pattern ( (neverTriggered41 n$0_5) (neverTriggered41 n$0_5_2))
))) (=> (forall ((n$0_5@@0 T@Ref) (n$0_5_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_5@@0 n$0_5_2@@0)) (select g_1 n$0_5@@0)) (select g_1 n$0_5_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_5@@0 n$0_5_2@@0)))
 :qid |stdinbpl.3171:27|
 :skolemid |322|
 :pattern ( (neverTriggered41 n$0_5@@0) (neverTriggered41 n$0_5_2@@0))
)) (=> (= (ControlFlow 0 27) (- 0 26)) (forall ((n$0_5@@1 T@Ref) ) (!  (=> (select g_1 n$0_5@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) n$0_5@@1 next) NoPerm)))
 :qid |stdinbpl.3178:27|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$0_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@38) n$0_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$0_5@@1 next))
)))))))
(let ((anon202_Then_correct  (and (=> (= (ControlFlow 0 23) (- 0 24)) (forall ((n$0_4 T@Ref) (n$0_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_4 n$0_4_1)) (select g_1 n$0_4)) (select g_1 n$0_4_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_4 n$0_4_1)))
 :qid |stdinbpl.3131:25|
 :skolemid |318|
 :pattern ( (neverTriggered40 n$0_4) (neverTriggered40 n$0_4_1))
))) (=> (forall ((n$0_4@@0 T@Ref) (n$0_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_4@@0 n$0_4_1@@0)) (select g_1 n$0_4@@0)) (select g_1 n$0_4_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_4@@0 n$0_4_1@@0)))
 :qid |stdinbpl.3131:25|
 :skolemid |318|
 :pattern ( (neverTriggered40 n$0_4@@0) (neverTriggered40 n$0_4_1@@0))
)) (=> (= (ControlFlow 0 23) (- 0 22)) (forall ((n$0_4@@1 T@Ref) ) (!  (=> (select g_1 n$0_4@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) n$0_4@@1 next) NoPerm)))
 :qid |stdinbpl.3138:25|
 :skolemid |319|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$0_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@37) n$0_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$0_4@@1 next))
)))))))
(let ((anon23_correct true))
(let ((anon203_Then_correct  (=> (exists_path ($$ Heap@@19 g_1) x@@7 n_74) (and (=> (= (ControlFlow 0 29) 27) anon204_Then_correct) (=> (= (ControlFlow 0 29) 20) anon23_correct)))))
(let ((anon203_Else_correct  (=> (and (not (exists_path ($$ Heap@@19 g_1) x@@7 n_74)) (= (ControlFlow 0 25) 20)) anon23_correct)))
(let ((anon201_Then_correct  (=> (select g_1 n_74) (and (and (=> (= (ControlFlow 0 30) 23) anon202_Then_correct) (=> (= (ControlFlow 0 30) 29) anon203_Then_correct)) (=> (= (ControlFlow 0 30) 25) anon203_Else_correct)))))
(let ((anon201_Else_correct  (=> (and (not (select g_1 n_74)) (= (ControlFlow 0 21) 20)) anon23_correct)))
(let ((anon195_Else_correct  (=> (forall ((n_3 T@Ref) ) (!  (=> (select g_1 n_3) (or (exists_path ($$ Heap@@19 g_1) x@@7 n_3) (exists_path ($$ Heap@@19 g_1) y@@4 n_3)))
 :qid |stdinbpl.3110:20|
 :skolemid |317|
 :pattern ( (select g_1 n_3))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| Heap@@19 g_1)) g_1) x@@7 n_3))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6496 (|$$#condqp1| Heap@@19 g_1)) g_1) y@@4 n_3))
)) (=> (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0)) (and (and (=> (= (ControlFlow 0 317) 316) anon200_Else_correct) (=> (= (ControlFlow 0 317) 30) anon201_Then_correct)) (=> (= (ControlFlow 0 317) 21) anon201_Else_correct))))))
(let ((anon199_Then_correct  (and (=> (= (ControlFlow 0 16) (- 0 17)) (forall ((n$0_3_2 T@Ref) (n$0_3_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3_2 n$0_3_3)) (select g_1 n$0_3_2)) (select g_1 n$0_3_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_3_2 n$0_3_3)))
 :qid |stdinbpl.3078:27|
 :skolemid |313|
 :pattern ( (neverTriggered39 n$0_3_2) (neverTriggered39 n$0_3_3))
))) (=> (forall ((n$0_3_2@@0 T@Ref) (n$0_3_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3_2@@0 n$0_3_3@@0)) (select g_1 n$0_3_2@@0)) (select g_1 n$0_3_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_3_2@@0 n$0_3_3@@0)))
 :qid |stdinbpl.3078:27|
 :skolemid |313|
 :pattern ( (neverTriggered39 n$0_3_2@@0) (neverTriggered39 n$0_3_3@@0))
)) (=> (= (ControlFlow 0 16) (- 0 15)) (forall ((n$0_3_2@@1 T@Ref) ) (!  (=> (select g_1 n$0_3_2@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) n$0_3_2@@1 next) NoPerm)))
 :qid |stdinbpl.3085:27|
 :skolemid |314|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$0_3_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@40) n$0_3_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$0_3_2@@1 next))
)))))))
(let ((anon197_Then_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (forall ((n$0_2_1 T@Ref) (n$0_2_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2_1 n$0_2_2)) (select g_1 n$0_2_1)) (select g_1 n$0_2_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_2_1 n$0_2_2)))
 :qid |stdinbpl.3038:25|
 :skolemid |309|
 :pattern ( (neverTriggered38 n$0_2_1) (neverTriggered38 n$0_2_2))
))) (=> (forall ((n$0_2_1@@0 T@Ref) (n$0_2_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2_1@@0 n$0_2_2@@0)) (select g_1 n$0_2_1@@0)) (select g_1 n$0_2_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_2_1@@0 n$0_2_2@@0)))
 :qid |stdinbpl.3038:25|
 :skolemid |309|
 :pattern ( (neverTriggered38 n$0_2_1@@0) (neverTriggered38 n$0_2_2@@0))
)) (=> (= (ControlFlow 0 12) (- 0 11)) (forall ((n$0_2_1@@1 T@Ref) ) (!  (=> (select g_1 n$0_2_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) n$0_2_1@@1 next) NoPerm)))
 :qid |stdinbpl.3045:25|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$0_2_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@39) n$0_2_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$0_2_1@@1 next))
)))))))
(let ((anon15_correct true))
(let ((anon198_Then_correct  (=> (not (exists_path ($$ Heap@@19 g_1) x@@7 n_73)) (and (=> (= (ControlFlow 0 18) 16) anon199_Then_correct) (=> (= (ControlFlow 0 18) 9) anon15_correct)))))
(let ((anon198_Else_correct  (=> (and (exists_path ($$ Heap@@19 g_1) x@@7 n_73) (= (ControlFlow 0 14) 9)) anon15_correct)))
(let ((anon196_Then_correct  (=> (select g_1 n_73) (and (and (=> (= (ControlFlow 0 19) 12) anon197_Then_correct) (=> (= (ControlFlow 0 19) 18) anon198_Then_correct)) (=> (= (ControlFlow 0 19) 14) anon198_Else_correct)))))
(let ((anon196_Else_correct  (=> (and (not (select g_1 n_73)) (= (ControlFlow 0 10) 9)) anon15_correct)))
(let ((anon192_Else_correct  (=> (forall ((n$0_1 T@Ref) ) (!  (=> (and (select g_1 n$0_1) (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$0_1 next) null))) (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$0_1 next)))
 :qid |stdinbpl.3013:20|
 :skolemid |308|
 :pattern ( (select g_1 (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$0_1 next)))
 :pattern ( (select g_1 n$0_1) (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$0_1 next))
)) (=> (and (state Heap@@19 QPMask@0) (select g_1 x@@7)) (=> (and (and (select g_1 y@@4) (not (= x@@7 y@@4))) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (and (=> (= (ControlFlow 0 318) 317) anon195_Else_correct) (=> (= (ControlFlow 0 318) 19) anon196_Then_correct)) (=> (= (ControlFlow 0 318) 10) anon196_Else_correct)))))))
(let ((anon7_correct true))
(let ((anon194_Else_correct  (=> (and (not (and (select g_1 n$0_41) (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$0_41 next) null)))) (= (ControlFlow 0 5) 2)) anon7_correct)))
(let ((anon194_Then_correct  (=> (and (select g_1 n$0_41) (not (= (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n$0_41 next) null))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_29078_29079 QPMask@0 n$0_41 next)) (=> (HasDirectPerm_29078_29079 QPMask@0 n$0_41 next) (=> (= (ControlFlow 0 3) 2) anon7_correct))))))
(let ((anon193_Else_correct  (=> (not (select g_1 n$0_41)) (and (=> (= (ControlFlow 0 8) 3) anon194_Then_correct) (=> (= (ControlFlow 0 8) 5) anon194_Else_correct)))))
(let ((anon193_Then_correct  (=> (select g_1 n$0_41) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_29078_29079 QPMask@0 n$0_41 next)) (=> (HasDirectPerm_29078_29079 QPMask@0 n$0_41 next) (and (=> (= (ControlFlow 0 6) 3) anon194_Then_correct) (=> (= (ControlFlow 0 6) 5) anon194_Else_correct)))))))
(let ((anon191_Else_correct  (and (=> (= (ControlFlow 0 319) (- 0 320)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select g_1 n_1)) (select g_1 n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.2968:15|
 :skolemid |302|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select g_1 n_1@@0)) (select g_1 n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.2968:15|
 :skolemid |302|
)) (=> (and (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select g_1 n_1@@1) (< NoPerm FullPerm)) (and (qpRange37 n_1@@1) (= (invRecv37 n_1@@1) n_1@@1)))
 :qid |stdinbpl.2974:22|
 :skolemid |303|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n_1@@1 next))
)) (forall ((o_4@@41 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv37 o_4@@41)) (< NoPerm FullPerm)) (qpRange37 o_4@@41)) (= (invRecv37 o_4@@41) o_4@@41))
 :qid |stdinbpl.2978:22|
 :skolemid |304|
 :pattern ( (invRecv37 o_4@@41))
))) (and (forall ((n_1@@2 T@Ref) ) (!  (=> (select g_1 n_1@@2) (not (= n_1@@2 null)))
 :qid |stdinbpl.2984:22|
 :skolemid |305|
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_44139_28232_28233#PolymorphicMapType_44139| Heap@@19) n_1@@2 next))
)) (forall ((o_4@@42 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv37 o_4@@42)) (< NoPerm FullPerm)) (qpRange37 o_4@@42)) (and (=> (< NoPerm FullPerm) (= (invRecv37 o_4@@42) o_4@@42)) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) o_4@@42 next) (+ (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| ZeroMask) o_4@@42 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv37 o_4@@42)) (< NoPerm FullPerm)) (qpRange37 o_4@@42))) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) o_4@@42 next) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| ZeroMask) o_4@@42 next))))
 :qid |stdinbpl.2990:22|
 :skolemid |306|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) o_4@@42 next))
)))) (=> (and (and (and (and (forall ((o_4@@43 T@Ref) (f_5@@27 T@Field_44199_53) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| ZeroMask) o_4@@43 f_5@@27) (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@0) o_4@@43 f_5@@27)))
 :qid |stdinbpl.2994:29|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| ZeroMask) o_4@@43 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_44160_29078_53#PolymorphicMapType_44160| QPMask@0) o_4@@43 f_5@@27))
)) (forall ((o_4@@44 T@Ref) (f_5@@28 T@Field_44212_44213) ) (!  (=> (not (= f_5@@28 next)) (= (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| ZeroMask) o_4@@44 f_5@@28) (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) o_4@@44 f_5@@28)))
 :qid |stdinbpl.2994:29|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| ZeroMask) o_4@@44 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_44160_29078_29079#PolymorphicMapType_44160| QPMask@0) o_4@@44 f_5@@28))
))) (forall ((o_4@@45 T@Ref) (f_5@@29 T@Field_29078_143803) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| ZeroMask) o_4@@45 f_5@@29) (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@0) o_4@@45 f_5@@29)))
 :qid |stdinbpl.2994:29|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| ZeroMask) o_4@@45 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_44160_29078_143803#PolymorphicMapType_44160| QPMask@0) o_4@@45 f_5@@29))
))) (forall ((o_4@@46 T@Ref) (f_5@@30 T@Field_29078_143936) ) (!  (=> true (= (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| ZeroMask) o_4@@46 f_5@@30) (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@0) o_4@@46 f_5@@30)))
 :qid |stdinbpl.2994:29|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| ZeroMask) o_4@@46 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_44160_29078_147482#PolymorphicMapType_44160| QPMask@0) o_4@@46 f_5@@30))
))) (state Heap@@19 QPMask@0)) (and (and (=> (= (ControlFlow 0 319) 318) anon192_Else_correct) (=> (= (ControlFlow 0 319) 6) anon193_Then_correct)) (=> (= (ControlFlow 0 319) 8) anon193_Else_correct))))))))
(let ((anon191_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@19 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@19) x@@7 $allocated)) (and (select (|PolymorphicMapType_44139_28229_53#PolymorphicMapType_44139| Heap@@19) y@@4 $allocated) (not (select g_1 null)))) (and (=> (= (ControlFlow 0 321) 1) anon191_Then_correct) (=> (= (ControlFlow 0 321) 319) anon191_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 322) 321) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
