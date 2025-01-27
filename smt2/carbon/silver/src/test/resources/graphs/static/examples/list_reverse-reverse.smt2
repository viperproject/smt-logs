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
(declare-sort T@Field_38165_53 0)
(declare-sort T@Field_38178_38179 0)
(declare-sort T@Field_25325_124120 0)
(declare-sort T@Field_25325_123987 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_38126 0)) (((PolymorphicMapType_38126 (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| (Array T@Ref T@Field_38178_38179 Real)) (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| (Array T@Ref T@Field_38165_53 Real)) (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| (Array T@Ref T@Field_25325_123987 Real)) (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| (Array T@Ref T@Field_25325_124120 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_38654 0)) (((PolymorphicMapType_38654 (|PolymorphicMapType_38654_38165_53#PolymorphicMapType_38654| (Array T@Ref T@Field_38165_53 Bool)) (|PolymorphicMapType_38654_38165_38179#PolymorphicMapType_38654| (Array T@Ref T@Field_38178_38179 Bool)) (|PolymorphicMapType_38654_38165_123987#PolymorphicMapType_38654| (Array T@Ref T@Field_25325_123987 Bool)) (|PolymorphicMapType_38654_38165_125100#PolymorphicMapType_38654| (Array T@Ref T@Field_25325_124120 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_38105 0)) (((PolymorphicMapType_38105 (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| (Array T@Ref T@Field_38165_53 Bool)) (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| (Array T@Ref T@Field_38178_38179 T@Ref)) (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| (Array T@Ref T@Field_25325_124120 T@PolymorphicMapType_38654)) (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| (Array T@Ref T@Field_25325_123987 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_38165_53)
(declare-fun next () T@Field_38178_38179)
(declare-fun succHeap (T@PolymorphicMapType_38105 T@PolymorphicMapType_38105) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_38105 T@PolymorphicMapType_38105) Bool)
(declare-fun state (T@PolymorphicMapType_38105 T@PolymorphicMapType_38126) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_38126) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_38654)
(declare-fun |Math#min| (Int Int) Int)
(declare-sort T@EdgeDomainType 0)
(declare-fun exists_path ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun edge ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun exists_path_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun |$$'| (T@PolymorphicMapType_38105 (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun dummyFunction_45753 ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun |$$#triggerStateless| ((Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun $$ (T@PolymorphicMapType_38105 (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_38105 T@PolymorphicMapType_38105 T@PolymorphicMapType_38126) Bool)
(declare-fun IsPredicateField_25325_124078 (T@Field_25325_123987) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_25325 (T@Field_25325_123987) T@Field_25325_124120)
(declare-fun HasDirectPerm_25325_124051 (T@PolymorphicMapType_38126 T@Ref T@Field_25325_123987) Bool)
(declare-fun IsWandField_25325_125627 (T@Field_25325_123987) Bool)
(declare-fun WandMaskField_25325 (T@Field_25325_123987) T@Field_25325_124120)
(declare-fun unshared_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun func_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |$$#trigger| (T@FrameType (Array T@Ref Bool)) Bool)
(declare-fun FrameFragment_5230 (Int) T@FrameType)
(declare-fun |$$#condqp1| (T@PolymorphicMapType_38105 (Array T@Ref Bool)) Int)
(declare-fun create_edge (T@Ref T@Ref) T@EdgeDomainType)
(declare-fun dummyHeap () T@PolymorphicMapType_38105)
(declare-fun ZeroMask () T@PolymorphicMapType_38126)
(declare-fun InsidePredicate_38165_38165 (T@Field_25325_123987 T@FrameType T@Field_25325_123987 T@FrameType) Bool)
(declare-fun |sk_$$#condqp1| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun IsPredicateField_25325_25326 (T@Field_38178_38179) Bool)
(declare-fun IsWandField_25325_25326 (T@Field_38178_38179) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_25325_128561 (T@Field_25325_124120) Bool)
(declare-fun IsWandField_25325_128577 (T@Field_25325_124120) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_25325_53 (T@Field_38165_53) Bool)
(declare-fun IsWandField_25325_53 (T@Field_38165_53) Bool)
(declare-fun |Set#Equal_25332| ((Array T@EdgeDomainType Bool) (Array T@EdgeDomainType Bool)) Bool)
(declare-fun HasDirectPerm_25325_128932 (T@PolymorphicMapType_38126 T@Ref T@Field_25325_124120) Bool)
(declare-fun HasDirectPerm_25325_53 (T@PolymorphicMapType_38126 T@Ref T@Field_38165_53) Bool)
(declare-fun HasDirectPerm_25325_25326 (T@PolymorphicMapType_38126 T@Ref T@Field_38178_38179) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_38126 T@PolymorphicMapType_38126 T@PolymorphicMapType_38126) Bool)
(declare-fun acyclic_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun edge_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun edge_pred (T@EdgeDomainType) T@Ref)
(declare-fun edge_succ (T@EdgeDomainType) T@Ref)
(declare-fun |$$#frame| (T@FrameType (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun inst_uReach ((Array T@EdgeDomainType Bool) T@Ref) (Array T@Ref Bool))
(assert (forall ((Heap0 T@PolymorphicMapType_38105) (Heap1 T@PolymorphicMapType_38105) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_38105) (Mask T@PolymorphicMapType_38126) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_38105) (Heap1@@0 T@PolymorphicMapType_38105) (Heap2 T@PolymorphicMapType_38105) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_25325_124120) ) (!  (not (select (|PolymorphicMapType_38654_38165_125100#PolymorphicMapType_38654| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38654_38165_125100#PolymorphicMapType_38654| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_25325_123987) ) (!  (not (select (|PolymorphicMapType_38654_38165_123987#PolymorphicMapType_38654| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38654_38165_123987#PolymorphicMapType_38654| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_38178_38179) ) (!  (not (select (|PolymorphicMapType_38654_38165_38179#PolymorphicMapType_38654| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38654_38165_38179#PolymorphicMapType_38654| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_38165_53) ) (!  (not (select (|PolymorphicMapType_38654_38165_53#PolymorphicMapType_38654| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38654_38165_53#PolymorphicMapType_38654| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.441:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (start_1 T@Ref) (end_1 T@Ref) ) (! (= (exists_path_ EG_1 start_1 end_1)  (or (= start_1 end_1) (exists ((w_2 T@Ref) ) (!  (and (edge EG_1 start_1 w_2) (exists_path_ EG_1 w_2 end_1))
 :qid |stdinbpl.618:78|
 :skolemid |87|
 :pattern ( (edge EG_1 start_1 w_2))
 :pattern ( (exists_path_ EG_1 w_2 end_1))
))))
 :qid |stdinbpl.616:15|
 :skolemid |88|
 :pattern ( (exists_path EG_1 start_1 end_1))
 :pattern ( (edge EG_1 start_1 end_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_38105) (refs (Array T@Ref Bool)) ) (! (dummyFunction_45753 (|$$#triggerStateless| refs))
 :qid |stdinbpl.676:15|
 :skolemid |97|
 :pattern ( (|$$'| Heap@@0 refs))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_38105) (refs@@0 (Array T@Ref Bool)) ) (!  (and (= ($$ Heap@@1 refs@@0) (|$$'| Heap@@1 refs@@0)) (dummyFunction_45753 (|$$#triggerStateless| refs@@0)))
 :qid |stdinbpl.672:15|
 :skolemid |96|
 :pattern ( ($$ Heap@@1 refs@@0))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.444:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_38105) (ExhaleHeap T@PolymorphicMapType_38105) (Mask@@0 T@PolymorphicMapType_38126) (pm_f_17 T@Field_25325_123987) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_25325_124051 Mask@@0 null pm_f_17) (IsPredicateField_25325_124078 pm_f_17)) (= (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@2) null (PredicateMaskField_25325 pm_f_17)) (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap) null (PredicateMaskField_25325 pm_f_17)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_25325_124078 pm_f_17) (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap) null (PredicateMaskField_25325 pm_f_17)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_38105) (ExhaleHeap@@0 T@PolymorphicMapType_38105) (Mask@@1 T@PolymorphicMapType_38126) (pm_f_17@@0 T@Field_25325_123987) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_25325_124051 Mask@@1 null pm_f_17@@0) (IsWandField_25325_125627 pm_f_17@@0)) (= (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@3) null (WandMaskField_25325 pm_f_17@@0)) (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap@@0) null (WandMaskField_25325 pm_f_17@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_25325_125627 pm_f_17@@0) (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap@@0) null (WandMaskField_25325 pm_f_17@@0)))
)))
(assert (forall ((EG_1@@0 (Array T@EdgeDomainType Bool)) ) (! (= (unshared_graph EG_1@@0) (forall ((v1 T@Ref) (v2 T@Ref) (v_2 T@Ref) ) (!  (=> (and (edge EG_1@@0 v1 v_2) (edge EG_1@@0 v2 v_2)) (= v1 v2))
 :qid |stdinbpl.642:43|
 :skolemid |92|
 :pattern ( (edge EG_1@@0 v1 v_2) (edge EG_1@@0 v2 v_2))
)))
 :qid |stdinbpl.640:15|
 :skolemid |93|
 :pattern ( (unshared_graph EG_1@@0))
)))
(assert (forall ((EG_1@@1 (Array T@EdgeDomainType Bool)) ) (! (= (func_graph EG_1@@1) (forall ((v1@@0 T@Ref) (v2@@0 T@Ref) (v_2@@0 T@Ref) ) (!  (=> (and (edge EG_1@@1 v_2@@0 v1@@0) (edge EG_1@@1 v_2@@0 v2@@0)) (= v1@@0 v2@@0))
 :qid |stdinbpl.651:39|
 :skolemid |94|
 :pattern ( (edge EG_1@@1 v_2@@0 v1@@0) (edge EG_1@@1 v_2@@0 v2@@0))
)))
 :qid |stdinbpl.649:15|
 :skolemid |95|
 :pattern ( (func_graph EG_1@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_38105) (Mask@@2 T@PolymorphicMapType_38126) (refs@@1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@4 Mask@@2) (or (< AssumeFunctionsAbove 0) (|$$#trigger| (FrameFragment_5230 (|$$#condqp1| Heap@@4 refs@@1)) refs@@1))) (forall ((p_1 T@Ref) (s_1 T@Ref) ) (! (=  (and (select refs@@1 p_1) (and (select refs@@1 s_1) (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@4) p_1 next) s_1))) (select (|$$'| Heap@@4 refs@@1) (create_edge p_1 s_1)))
 :qid |stdinbpl.701:122|
 :skolemid |100|
 :pattern ( (create_edge p_1 s_1))
)))
 :qid |stdinbpl.699:15|
 :skolemid |101|
 :pattern ( (state Heap@@4 Mask@@2) (|$$'| Heap@@4 refs@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_38105) (ExhaleHeap@@1 T@PolymorphicMapType_38105) (Mask@@3 T@PolymorphicMapType_38126) (pm_f_17@@1 T@Field_25325_123987) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_25325_124051 Mask@@3 null pm_f_17@@1) (IsPredicateField_25325_124078 pm_f_17@@1)) (and (and (and (forall ((o2_17 T@Ref) (f_18 T@Field_38165_53) ) (!  (=> (select (|PolymorphicMapType_38654_38165_53#PolymorphicMapType_38654| (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@5) null (PredicateMaskField_25325 pm_f_17@@1))) o2_17 f_18) (= (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@5) o2_17 f_18) (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@@1) o2_17 f_18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@@1) o2_17 f_18))
)) (forall ((o2_17@@0 T@Ref) (f_18@@0 T@Field_38178_38179) ) (!  (=> (select (|PolymorphicMapType_38654_38165_38179#PolymorphicMapType_38654| (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@5) null (PredicateMaskField_25325 pm_f_17@@1))) o2_17@@0 f_18@@0) (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@5) o2_17@@0 f_18@@0) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@@1) o2_17@@0 f_18@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@@1) o2_17@@0 f_18@@0))
))) (forall ((o2_17@@1 T@Ref) (f_18@@1 T@Field_25325_123987) ) (!  (=> (select (|PolymorphicMapType_38654_38165_123987#PolymorphicMapType_38654| (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@5) null (PredicateMaskField_25325 pm_f_17@@1))) o2_17@@1 f_18@@1) (= (select (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@5) o2_17@@1 f_18@@1) (select (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| ExhaleHeap@@1) o2_17@@1 f_18@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| ExhaleHeap@@1) o2_17@@1 f_18@@1))
))) (forall ((o2_17@@2 T@Ref) (f_18@@2 T@Field_25325_124120) ) (!  (=> (select (|PolymorphicMapType_38654_38165_125100#PolymorphicMapType_38654| (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@5) null (PredicateMaskField_25325 pm_f_17@@1))) o2_17@@2 f_18@@2) (= (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@5) o2_17@@2 f_18@@2) (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap@@1) o2_17@@2 f_18@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap@@1) o2_17@@2 f_18@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (IsPredicateField_25325_124078 pm_f_17@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_38105) (ExhaleHeap@@2 T@PolymorphicMapType_38105) (Mask@@4 T@PolymorphicMapType_38126) (pm_f_17@@2 T@Field_25325_123987) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_25325_124051 Mask@@4 null pm_f_17@@2) (IsWandField_25325_125627 pm_f_17@@2)) (and (and (and (forall ((o2_17@@3 T@Ref) (f_18@@3 T@Field_38165_53) ) (!  (=> (select (|PolymorphicMapType_38654_38165_53#PolymorphicMapType_38654| (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@6) null (WandMaskField_25325 pm_f_17@@2))) o2_17@@3 f_18@@3) (= (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@6) o2_17@@3 f_18@@3) (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@@2) o2_17@@3 f_18@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@@2) o2_17@@3 f_18@@3))
)) (forall ((o2_17@@4 T@Ref) (f_18@@4 T@Field_38178_38179) ) (!  (=> (select (|PolymorphicMapType_38654_38165_38179#PolymorphicMapType_38654| (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@6) null (WandMaskField_25325 pm_f_17@@2))) o2_17@@4 f_18@@4) (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@6) o2_17@@4 f_18@@4) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@@2) o2_17@@4 f_18@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@@2) o2_17@@4 f_18@@4))
))) (forall ((o2_17@@5 T@Ref) (f_18@@5 T@Field_25325_123987) ) (!  (=> (select (|PolymorphicMapType_38654_38165_123987#PolymorphicMapType_38654| (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@6) null (WandMaskField_25325 pm_f_17@@2))) o2_17@@5 f_18@@5) (= (select (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@6) o2_17@@5 f_18@@5) (select (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| ExhaleHeap@@2) o2_17@@5 f_18@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| ExhaleHeap@@2) o2_17@@5 f_18@@5))
))) (forall ((o2_17@@6 T@Ref) (f_18@@6 T@Field_25325_124120) ) (!  (=> (select (|PolymorphicMapType_38654_38165_125100#PolymorphicMapType_38654| (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@6) null (WandMaskField_25325 pm_f_17@@2))) o2_17@@6 f_18@@6) (= (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@6) o2_17@@6 f_18@@6) (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap@@2) o2_17@@6 f_18@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap@@2) o2_17@@6 f_18@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (IsWandField_25325_125627 pm_f_17@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1@@2 (Array T@EdgeDomainType Bool)) (u_1 T@Ref) (v_2@@1 T@Ref) (w_2@@0 T@Ref) ) (!  (=> (and (exists_path_ EG_1@@2 u_1 w_2@@0) (exists_path_ EG_1@@2 w_2@@0 v_2@@1)) (exists_path_ EG_1@@2 u_1 v_2@@1))
 :qid |stdinbpl.625:15|
 :skolemid |89|
 :pattern ( (exists_path EG_1@@2 u_1 w_2@@0) (exists_path EG_1@@2 w_2@@0 v_2@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_38105) (ExhaleHeap@@3 T@PolymorphicMapType_38105) (Mask@@5 T@PolymorphicMapType_38126) (o_37 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (=> (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@7) o_37 $allocated) (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@@3) o_37 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@@3) o_37 $allocated))
)))
(assert (forall ((p T@Field_25325_123987) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_38165_38165 p v_1 p w))
 :qid |stdinbpl.339:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_38165_38165 p v_1 p w))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_38105) (Heap1Heap T@PolymorphicMapType_38105) (refs@@2 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select refs@@2 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select refs@@2 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select refs@@2 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap2Heap) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2)) next) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap1Heap) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2)) next)))) (= (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2)))
 :qid |stdinbpl.693:15|
 :skolemid |99|
 :pattern ( (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert  (not (IsPredicateField_25325_25326 next)))
(assert  (not (IsWandField_25325_25326 next)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_38105) (ExhaleHeap@@4 T@PolymorphicMapType_38105) (Mask@@6 T@PolymorphicMapType_38126) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (succHeap Heap@@8 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_38126) (o_2@@3 T@Ref) (f_4@@3 T@Field_25325_124120) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| Mask@@7) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_25325_128561 f_4@@3))) (not (IsWandField_25325_128577 f_4@@3))) (<= (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| Mask@@7) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| Mask@@7) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_38126) (o_2@@4 T@Ref) (f_4@@4 T@Field_25325_123987) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_25325_124078 f_4@@4))) (not (IsWandField_25325_125627 f_4@@4))) (<= (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_38126) (o_2@@5 T@Ref) (f_4@@5 T@Field_38165_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_25325_53 f_4@@5))) (not (IsWandField_25325_53 f_4@@5))) (<= (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_38126) (o_2@@6 T@Ref) (f_4@@6 T@Field_38178_38179) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_25325_25326 f_4@@6))) (not (IsWandField_25325_25326 f_4@@6))) (<= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((a@@1 (Array T@EdgeDomainType Bool)) (b@@0 (Array T@EdgeDomainType Bool)) ) (! (= (|Set#Equal_25332| a@@1 b@@0) (forall ((o T@EdgeDomainType) ) (! (= (select a@@1 o) (select b@@0 o))
 :qid |stdinbpl.426:31|
 :skolemid |48|
 :pattern ( (select a@@1 o))
 :pattern ( (select b@@0 o))
)))
 :qid |stdinbpl.425:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_25332| a@@1 b@@0))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_38126) (o_2@@7 T@Ref) (f_4@@7 T@Field_25325_124120) ) (! (= (HasDirectPerm_25325_128932 Mask@@11 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| Mask@@11) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25325_128932 Mask@@11 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_38126) (o_2@@8 T@Ref) (f_4@@8 T@Field_25325_123987) ) (! (= (HasDirectPerm_25325_124051 Mask@@12 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| Mask@@12) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25325_124051 Mask@@12 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_38126) (o_2@@9 T@Ref) (f_4@@9 T@Field_38165_53) ) (! (= (HasDirectPerm_25325_53 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25325_53 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_38126) (o_2@@10 T@Ref) (f_4@@10 T@Field_38178_38179) ) (! (= (HasDirectPerm_25325_25326 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25325_25326 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.327:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_38105) (ExhaleHeap@@5 T@PolymorphicMapType_38105) (Mask@@15 T@PolymorphicMapType_38126) (o_37@@0 T@Ref) (f_18@@7 T@Field_25325_124120) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@15) (=> (HasDirectPerm_25325_128932 Mask@@15 o_37@@0 f_18@@7) (= (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@9) o_37@@0 f_18@@7) (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap@@5) o_37@@0 f_18@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@15) (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap@@5) o_37@@0 f_18@@7))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_38105) (ExhaleHeap@@6 T@PolymorphicMapType_38105) (Mask@@16 T@PolymorphicMapType_38126) (o_37@@1 T@Ref) (f_18@@8 T@Field_25325_123987) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@16) (=> (HasDirectPerm_25325_124051 Mask@@16 o_37@@1 f_18@@8) (= (select (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@10) o_37@@1 f_18@@8) (select (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| ExhaleHeap@@6) o_37@@1 f_18@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@16) (select (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| ExhaleHeap@@6) o_37@@1 f_18@@8))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_38105) (ExhaleHeap@@7 T@PolymorphicMapType_38105) (Mask@@17 T@PolymorphicMapType_38126) (o_37@@2 T@Ref) (f_18@@9 T@Field_38165_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@17) (=> (HasDirectPerm_25325_53 Mask@@17 o_37@@2 f_18@@9) (= (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@11) o_37@@2 f_18@@9) (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@@7) o_37@@2 f_18@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@17) (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@@7) o_37@@2 f_18@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_38105) (ExhaleHeap@@8 T@PolymorphicMapType_38105) (Mask@@18 T@PolymorphicMapType_38126) (o_37@@3 T@Ref) (f_18@@10 T@Field_38178_38179) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@18) (=> (HasDirectPerm_25325_25326 Mask@@18 o_37@@3 f_18@@10) (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@12) o_37@@3 f_18@@10) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@@8) o_37@@3 f_18@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@18) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@@8) o_37@@3 f_18@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_25325_124120) ) (! (= (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_25325_123987) ) (! (= (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_38165_53) ) (! (= (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_38178_38179) ) (! (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_38126) (SummandMask1 T@PolymorphicMapType_38126) (SummandMask2 T@PolymorphicMapType_38126) (o_2@@15 T@Ref) (f_4@@15 T@Field_25325_124120) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_38126) (SummandMask1@@0 T@PolymorphicMapType_38126) (SummandMask2@@0 T@PolymorphicMapType_38126) (o_2@@16 T@Ref) (f_4@@16 T@Field_25325_123987) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_38126) (SummandMask1@@1 T@PolymorphicMapType_38126) (SummandMask2@@1 T@PolymorphicMapType_38126) (o_2@@17 T@Ref) (f_4@@17 T@Field_38165_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_38126) (SummandMask1@@2 T@PolymorphicMapType_38126) (SummandMask2@@2 T@PolymorphicMapType_38126) (o_2@@18 T@Ref) (f_4@@18 T@Field_38178_38179) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@2 (Array T@EdgeDomainType Bool)) (b@@1 (Array T@EdgeDomainType Bool)) ) (!  (=> (|Set#Equal_25332| a@@2 b@@1) (= a@@2 b@@1))
 :qid |stdinbpl.427:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_25332| a@@2 b@@1))
)))
(assert (forall ((EG_1@@3 (Array T@EdgeDomainType Bool)) ) (! (= (acyclic_graph EG_1@@3) (forall ((v1@@1 T@Ref) (v2@@1 T@Ref) ) (!  (or (not (edge EG_1@@3 v1@@1 v2@@1)) (not (exists_path EG_1@@3 v2@@1 v1@@1)))
 :qid |stdinbpl.633:42|
 :skolemid |90|
 :pattern ( (edge EG_1@@3 v1@@1 v2@@1))
 :pattern ( (exists_path EG_1@@3 v2@@1 v1@@1))
)))
 :qid |stdinbpl.631:15|
 :skolemid |91|
 :pattern ( (acyclic_graph EG_1@@3))
)))
(assert (forall ((EG_1@@4 (Array T@EdgeDomainType Bool)) (p_1@@0 T@Ref) (s_1@@0 T@Ref) ) (! (= (edge_ EG_1@@4 p_1@@0 s_1@@0) (select EG_1@@4 (create_edge p_1@@0 s_1@@0)))
 :qid |stdinbpl.598:15|
 :skolemid |84|
 :pattern ( (select EG_1@@4 (create_edge p_1@@0 s_1@@0)))
 :pattern ( (edge EG_1@@4 p_1@@0 s_1@@0))
)))
(assert (forall ((p_1@@1 T@Ref) (s_1@@1 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@1 s_1@@1)) p_1@@1) (= (edge_succ (create_edge p_1@@1 s_1@@1)) s_1@@1))
 :qid |stdinbpl.555:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@1 s_1@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_38105) (o_36 T@Ref) (f_29 T@Field_25325_123987) (v T@FrameType) ) (! (succHeap Heap@@13 (PolymorphicMapType_38105 (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@13) (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@13) (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@13) (store (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@13) o_36 f_29 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38105 (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@13) (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@13) (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@13) (store (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@13) o_36 f_29 v)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_38105) (o_36@@0 T@Ref) (f_29@@0 T@Field_25325_124120) (v@@0 T@PolymorphicMapType_38654) ) (! (succHeap Heap@@14 (PolymorphicMapType_38105 (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@14) (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@14) (store (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@14) o_36@@0 f_29@@0 v@@0) (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38105 (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@14) (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@14) (store (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@14) o_36@@0 f_29@@0 v@@0) (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_38105) (o_36@@1 T@Ref) (f_29@@1 T@Field_38178_38179) (v@@1 T@Ref) ) (! (succHeap Heap@@15 (PolymorphicMapType_38105 (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@15) (store (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@15) o_36@@1 f_29@@1 v@@1) (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@15) (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38105 (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@15) (store (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@15) o_36@@1 f_29@@1 v@@1) (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@15) (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_38105) (o_36@@2 T@Ref) (f_29@@2 T@Field_38165_53) (v@@2 Bool) ) (! (succHeap Heap@@16 (PolymorphicMapType_38105 (store (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@16) o_36@@2 f_29@@2 v@@2) (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@16) (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@16) (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38105 (store (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@16) o_36@@2 f_29@@2 v@@2) (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@16) (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@16) (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@16)))
)))
(assert (forall ((a@@3 Int) (b@@2 Int) ) (! (= (<= a@@3 b@@2) (= (|Math#min| a@@3 b@@2) a@@3))
 :qid |stdinbpl.439:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@3 b@@2))
)))
(assert (forall ((a@@4 Int) (b@@3 Int) ) (! (= (<= b@@3 a@@4) (= (|Math#min| a@@4 b@@3) b@@3))
 :qid |stdinbpl.440:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@4 b@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_38105) (Mask@@19 T@PolymorphicMapType_38126) (refs@@3 (Array T@Ref Bool)) ) (!  (=> (state Heap@@17 Mask@@19) (= (|$$'| Heap@@17 refs@@3) (|$$#frame| (FrameFragment_5230 (|$$#condqp1| Heap@@17 refs@@3)) refs@@3)))
 :qid |stdinbpl.683:15|
 :skolemid |98|
 :pattern ( (state Heap@@17 Mask@@19) (|$$'| Heap@@17 refs@@3))
)))
(assert (forall ((o_36@@3 T@Ref) (f_50 T@Field_38178_38179) (Heap@@18 T@PolymorphicMapType_38105) ) (!  (=> (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@18) o_36@@3 $allocated) (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@18) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@18) o_36@@3 f_50) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@18) o_36@@3 f_50))
)))
(assert (forall ((p@@1 T@Field_25325_123987) (v_1@@0 T@FrameType) (q T@Field_25325_123987) (w@@0 T@FrameType) (r T@Field_25325_123987) (u T@FrameType) ) (!  (=> (and (InsidePredicate_38165_38165 p@@1 v_1@@0 q w@@0) (InsidePredicate_38165_38165 q w@@0 r u)) (InsidePredicate_38165_38165 p@@1 v_1@@0 r u))
 :qid |stdinbpl.334:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_38165_38165 p@@1 v_1@@0 q w@@0) (InsidePredicate_38165_38165 q w@@0 r u))
)))
(assert (forall ((a@@5 Int) ) (!  (=> (< a@@5 0) (= (|Math#clip| a@@5) 0))
 :qid |stdinbpl.445:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@5))
)))
(assert (forall ((EG_1@@5 (Array T@EdgeDomainType Bool)) (x T@Ref) (v_2@@2 T@Ref) ) (! (= (select (inst_uReach EG_1@@5 x) v_2@@2) (exists_path EG_1@@5 x v_2@@2))
 :qid |stdinbpl.604:15|
 :skolemid |85|
 :pattern ( (select (inst_uReach EG_1@@5 x) v_2@@2))
 :pattern ( (exists_path EG_1@@5 x v_2@@2))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((EG_1@@6 (Array T@EdgeDomainType Bool)) (p_1@@2 T@Ref) (s_1@@2 T@Ref) ) (! (= (edge EG_1@@6 p_1@@2 s_1@@2) (edge_ EG_1@@6 p_1@@2 s_1@@2))
 :qid |stdinbpl.592:15|
 :skolemid |83|
 :pattern ( (edge EG_1@@6 p_1@@2 s_1@@2))
)))
(assert (forall ((EG_1@@7 (Array T@EdgeDomainType Bool)) (start_1@@0 T@Ref) (end_1@@0 T@Ref) ) (! (= (exists_path EG_1@@7 start_1@@0 end_1@@0) (exists_path_ EG_1@@7 start_1@@0 end_1@@0))
 :qid |stdinbpl.610:15|
 :skolemid |86|
 :pattern ( (exists_path EG_1@@7 start_1@@0 end_1@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun ExhaleHeap@4 () T@PolymorphicMapType_38105)
(declare-fun QPMask@19 () T@PolymorphicMapType_38126)
(declare-fun g_1 () (Array T@Ref Bool))
(declare-fun dummyFunction_25326 (T@Ref) Bool)
(declare-fun neverTriggered37 (T@Ref) Bool)
(declare-fun QPMask@15 () T@PolymorphicMapType_38126)
(declare-fun QPMask@20 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered38 (T@Ref) Bool)
(declare-fun y@0 () T@Ref)
(declare-fun x@0 () T@Ref)
(declare-fun old_g@0 () (Array T@EdgeDomainType Bool))
(declare-fun QPMask@22 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered42 (T@Ref) Bool)
(declare-fun v2_8 () T@Ref)
(declare-fun v1_8 () T@Ref)
(declare-fun QPMask@21 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered41 (T@Ref) Bool)
(declare-fun QPMask@24 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered40 (T@Ref) Bool)
(declare-fun v1_7 () T@Ref)
(declare-fun QPMask@23 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered39 (T@Ref) Bool)
(declare-fun xe () T@Ref)
(declare-fun QPMask@18 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered36 (T@Ref) Bool)
(declare-fun QPMask@17 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered35 (T@Ref) Bool)
(declare-fun QPMask@16 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered34 (T@Ref) Bool)
(declare-fun QPMask@26 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered33 (T@Ref) Bool)
(declare-fun QPMask@25 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered32 (T@Ref) Bool)
(declare-fun n_82 () T@Ref)
(declare-fun n$2_24 () T@Ref)
(declare-fun qpRange31 (T@Ref) Bool)
(declare-fun invRecv31 (T@Ref) T@Ref)
(declare-fun QPMask@5 () T@PolymorphicMapType_38126)
(declare-fun v1_15_1 () T@Ref)
(declare-fun v2_15_1 () T@Ref)
(declare-fun ExhaleHeap@7 () T@PolymorphicMapType_38105)
(declare-fun save_g@0 () (Array T@EdgeDomainType Bool))
(declare-fun QPMask@14 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered49 (T@Ref) Bool)
(declare-fun QPMask@12 () T@PolymorphicMapType_38126)
(declare-fun v1_24 () T@Ref)
(declare-fun v2_24 () T@Ref)
(declare-fun t_2@1 () T@Ref)
(declare-fun v2_19 () T@Ref)
(declare-fun v1_19 () T@Ref)
(declare-fun v1_17 () T@Ref)
(declare-fun v2_17 () T@Ref)
(declare-fun n_25 () T@Ref)
(declare-fun n$2_7_1 () T@Ref)
(declare-fun neverTriggered50 (T@Ref) Bool)
(declare-fun QPMask@13 () T@PolymorphicMapType_38126)
(declare-fun qpRange50 (T@Ref) Bool)
(declare-fun invRecv50 (T@Ref) T@Ref)
(declare-fun ExhaleHeap@6 () T@PolymorphicMapType_38105)
(declare-fun QPMask@11 () T@PolymorphicMapType_38126)
(declare-fun Mask@3 () T@PolymorphicMapType_38126)
(declare-fun qpRange48 (T@Ref) Bool)
(declare-fun invRecv48 (T@Ref) T@Ref)
(declare-fun n$0_6 () T@Ref)
(declare-fun Mask@2 () T@PolymorphicMapType_38126)
(declare-fun QPMask@10 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered47 (T@Ref) Bool)
(declare-fun qpRange47 (T@Ref) Bool)
(declare-fun invRecv47 (T@Ref) T@Ref)
(declare-fun QPMask@9 () T@PolymorphicMapType_38126)
(declare-fun Mask@1 () T@PolymorphicMapType_38126)
(declare-fun qpRange46 (T@Ref) Bool)
(declare-fun invRecv46 (T@Ref) T@Ref)
(declare-fun n$0_4 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_38126)
(declare-fun QPMask@6 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered45 (T@Ref) Bool)
(declare-fun qpRange45 (T@Ref) Bool)
(declare-fun invRecv45 (T@Ref) T@Ref)
(declare-fun QPMask@8 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered44 (T@Ref) Bool)
(declare-fun save_y () T@Ref)
(declare-fun save_x () T@Ref)
(declare-fun qpRange43 (T@Ref) Bool)
(declare-fun invRecv43 (T@Ref) T@Ref)
(declare-fun QPMask@7 () T@PolymorphicMapType_38126)
(declare-fun qpRange51 (T@Ref) Bool)
(declare-fun invRecv51 (T@Ref) T@Ref)
(declare-fun Heap@@19 () T@PolymorphicMapType_38105)
(declare-fun t_2@0 () T@Ref)
(declare-fun v2_2_1 () T@Ref)
(declare-fun v1_2_1 () T@Ref)
(declare-fun v1@@2 () T@Ref)
(declare-fun v2@@2 () T@Ref)
(declare-fun n_7 () T@Ref)
(declare-fun n$2_6 () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered30 (T@Ref) Bool)
(declare-fun qpRange30 (T@Ref) Bool)
(declare-fun invRecv30 (T@Ref) T@Ref)
(declare-fun QPMask@4 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered29 (T@Ref) Bool)
(declare-fun t_2 () T@Ref)
(declare-fun x@@0 () T@Ref)
(declare-fun QPMask@27 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered28 (T@Ref) Bool)
(declare-fun v_31 () T@Ref)
(declare-fun QPMask@3 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered27 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered26 (T@Ref) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered25 (T@Ref) Bool)
(declare-fun n$0_36 () T@Ref)
(declare-fun qpRange24 (T@Ref) Bool)
(declare-fun invRecv24 (T@Ref) T@Ref)
(set-info :boogie-vc-id reverse)
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
 (=> (= (ControlFlow 0 0) 319) (let ((anon227_Then_correct  (and (=> (= (ControlFlow 0 265) (- 0 267)) (forall ((n_14_1 T@Ref) ) (!  (=> (and (select g_1 n_14_1) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_14_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3027:27|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_14_1 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@19) n_14_1 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_14_1 next))
))) (=> (forall ((n_14_1@@0 T@Ref) ) (!  (=> (and (select g_1 n_14_1@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_14_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3027:27|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_14_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@19) n_14_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_14_1@@0 next))
)) (and (=> (= (ControlFlow 0 265) (- 0 266)) (forall ((n_14_1@@1 T@Ref) (n_14_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14_1@@1 n_14_2)) (select g_1 n_14_1@@1)) (select g_1 n_14_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_14_1@@1 n_14_2)))
 :qid |stdinbpl.3034:27|
 :skolemid |323|
 :pattern ( (neverTriggered37 n_14_1@@1) (neverTriggered37 n_14_2))
))) (=> (forall ((n_14_1@@2 T@Ref) (n_14_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14_1@@2 n_14_2@@0)) (select g_1 n_14_1@@2)) (select g_1 n_14_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_14_1@@2 n_14_2@@0)))
 :qid |stdinbpl.3034:27|
 :skolemid |323|
 :pattern ( (neverTriggered37 n_14_1@@2) (neverTriggered37 n_14_2@@0))
)) (=> (= (ControlFlow 0 265) (- 0 264)) (forall ((n_14_1@@3 T@Ref) ) (!  (=> (select g_1 n_14_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@15) n_14_1@@3 next) NoPerm)))
 :qid |stdinbpl.3041:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_14_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@19) n_14_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_14_1@@3 next))
)))))))))
(let ((anon229_Then_correct  (and (=> (= (ControlFlow 0 257) (- 0 259)) (forall ((n_15 T@Ref) ) (!  (=> (and (select g_1 n_15) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_15 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3077:27|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_15 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@20) n_15 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_15 next))
))) (=> (forall ((n_15@@0 T@Ref) ) (!  (=> (and (select g_1 n_15@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_15@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3077:27|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_15@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@20) n_15@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_15@@0 next))
)) (and (=> (= (ControlFlow 0 257) (- 0 258)) (forall ((n_15@@1 T@Ref) (n_15_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15@@1 n_15_1)) (select g_1 n_15@@1)) (select g_1 n_15_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_15@@1 n_15_1)))
 :qid |stdinbpl.3084:27|
 :skolemid |328|
 :pattern ( (neverTriggered38 n_15@@1) (neverTriggered38 n_15_1))
))) (=> (forall ((n_15@@2 T@Ref) (n_15_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15@@2 n_15_1@@0)) (select g_1 n_15@@2)) (select g_1 n_15_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_15@@2 n_15_1@@0)))
 :qid |stdinbpl.3084:27|
 :skolemid |328|
 :pattern ( (neverTriggered38 n_15@@2) (neverTriggered38 n_15_1@@0))
)) (=> (= (ControlFlow 0 257) (- 0 256)) (forall ((n_15@@3 T@Ref) ) (!  (=> (select g_1 n_15@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@15) n_15@@3 next) NoPerm)))
 :qid |stdinbpl.3091:27|
 :skolemid |329|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_15@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@20) n_15@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_15@@3 next))
)))))))))
(let ((anon98_correct true))
(let ((anon238_Else_correct  (=> (and (not (and (not (= y@0 null)) (not (= x@0 null)))) (= (ControlFlow 0 251) 249)) anon98_correct)))
(let ((anon238_Then_correct  (=> (and (and (not (= y@0 null)) (not (= x@0 null))) (and (edge old_g@0 y@0 x@0) (= (ControlFlow 0 250) 249))) anon98_correct)))
(let ((anon234_Else_correct  (=> (and (forall ((v1_7_2 T@Ref) (v2_7_2 T@Ref) ) (!  (=> (and (exists_path ($$ ExhaleHeap@4 g_1) y@0 v2_7_2) (not (= v1_7_2 y@0))) (= (edge old_g@0 v1_7_2 v2_7_2) (edge ($$ ExhaleHeap@4 g_1) v2_7_2 v1_7_2)))
 :qid |stdinbpl.3308:24|
 :skolemid |353|
 :pattern ( (edge old_g@0 v1_7_2 v2_7_2))
 :pattern ( (edge (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) v1_7_2 v2_7_2))
)) (state ExhaleHeap@4 QPMask@15)) (and (=> (= (ControlFlow 0 252) 250) anon238_Then_correct) (=> (= (ControlFlow 0 252) 251) anon238_Else_correct)))))
(let ((anon237_Then_correct  (and (=> (= (ControlFlow 0 245) (- 0 247)) (forall ((n_19 T@Ref) ) (!  (=> (and (select g_1 n_19) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_19 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3270:29|
 :skolemid |348|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_19 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@22) n_19 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_19 next))
))) (=> (forall ((n_19@@0 T@Ref) ) (!  (=> (and (select g_1 n_19@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_19@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3270:29|
 :skolemid |348|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_19@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@22) n_19@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_19@@0 next))
)) (and (=> (= (ControlFlow 0 245) (- 0 246)) (forall ((n_19@@1 T@Ref) (n_19_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_19@@1 n_19_1)) (select g_1 n_19@@1)) (select g_1 n_19_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_19@@1 n_19_1)))
 :qid |stdinbpl.3277:29|
 :skolemid |349|
 :pattern ( (neverTriggered42 n_19@@1) (neverTriggered42 n_19_1))
))) (=> (forall ((n_19@@2 T@Ref) (n_19_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_19@@2 n_19_1@@0)) (select g_1 n_19@@2)) (select g_1 n_19_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_19@@2 n_19_1@@0)))
 :qid |stdinbpl.3277:29|
 :skolemid |349|
 :pattern ( (neverTriggered42 n_19@@2) (neverTriggered42 n_19_1@@0))
)) (=> (= (ControlFlow 0 245) (- 0 244)) (forall ((n_19@@3 T@Ref) ) (!  (=> (select g_1 n_19@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@15) n_19@@3 next) NoPerm)))
 :qid |stdinbpl.3284:29|
 :skolemid |350|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_19@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@22) n_19@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_19@@3 next))
)))))))))
(let ((anon95_correct true))
(let ((anon236_Then_correct  (=> (and (exists_path ($$ ExhaleHeap@4 g_1) y@0 v2_8) (not (= v1_8 y@0))) (and (=> (= (ControlFlow 0 248) 245) anon237_Then_correct) (=> (= (ControlFlow 0 248) 242) anon95_correct)))))
(let ((anon236_Else_correct  (=> (and (not (and (exists_path ($$ ExhaleHeap@4 g_1) y@0 v2_8) (not (= v1_8 y@0)))) (= (ControlFlow 0 243) 242)) anon95_correct)))
(let ((anon235_Then_correct  (and (=> (= (ControlFlow 0 239) (- 0 241)) (forall ((n_18 T@Ref) ) (!  (=> (and (select g_1 n_18) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_18 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3226:27|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_18 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@21) n_18 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_18 next))
))) (=> (forall ((n_18@@0 T@Ref) ) (!  (=> (and (select g_1 n_18@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_18@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3226:27|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_18@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@21) n_18@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_18@@0 next))
)) (and (=> (= (ControlFlow 0 239) (- 0 240)) (forall ((n_18@@1 T@Ref) (n_18_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_18@@1 n_18_1)) (select g_1 n_18@@1)) (select g_1 n_18_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_18@@1 n_18_1)))
 :qid |stdinbpl.3233:27|
 :skolemid |344|
 :pattern ( (neverTriggered41 n_18@@1) (neverTriggered41 n_18_1))
))) (=> (forall ((n_18@@2 T@Ref) (n_18_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_18@@2 n_18_1@@0)) (select g_1 n_18@@2)) (select g_1 n_18_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_18@@2 n_18_1@@0)))
 :qid |stdinbpl.3233:27|
 :skolemid |344|
 :pattern ( (neverTriggered41 n_18@@2) (neverTriggered41 n_18_1@@0))
)) (=> (= (ControlFlow 0 239) (- 0 238)) (forall ((n_18@@3 T@Ref) ) (!  (=> (select g_1 n_18@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@15) n_18@@3 next) NoPerm)))
 :qid |stdinbpl.3240:27|
 :skolemid |345|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_18@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@21) n_18@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_18@@3 next))
)))))))))
(let ((anon230_Else_correct  (=> (forall ((v1_5_2 T@Ref) (v2_5_2 T@Ref) ) (!  (=> (exists_path ($$ ExhaleHeap@4 g_1) x@0 v1_5_2) (= (edge old_g@0 v1_5_2 v2_5_2) (edge ($$ ExhaleHeap@4 g_1) v1_5_2 v2_5_2)))
 :qid |stdinbpl.3209:24|
 :skolemid |342|
 :pattern ( (edge old_g@0 v1_5_2 v2_5_2))
 :pattern ( (edge (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) v1_5_2 v2_5_2))
)) (=> (and (state ExhaleHeap@4 QPMask@15) (state ExhaleHeap@4 QPMask@15)) (and (and (and (=> (= (ControlFlow 0 253) 252) anon234_Else_correct) (=> (= (ControlFlow 0 253) 239) anon235_Then_correct)) (=> (= (ControlFlow 0 253) 248) anon236_Then_correct)) (=> (= (ControlFlow 0 253) 243) anon236_Else_correct))))))
(let ((anon233_Then_correct  (and (=> (= (ControlFlow 0 234) (- 0 236)) (forall ((n_17 T@Ref) ) (!  (=> (and (select g_1 n_17) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_17 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3171:29|
 :skolemid |337|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_17 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@24) n_17 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_17 next))
))) (=> (forall ((n_17@@0 T@Ref) ) (!  (=> (and (select g_1 n_17@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_17@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3171:29|
 :skolemid |337|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_17@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@24) n_17@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_17@@0 next))
)) (and (=> (= (ControlFlow 0 234) (- 0 235)) (forall ((n_17@@1 T@Ref) (n_17_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_17@@1 n_17_1)) (select g_1 n_17@@1)) (select g_1 n_17_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_17@@1 n_17_1)))
 :qid |stdinbpl.3178:29|
 :skolemid |338|
 :pattern ( (neverTriggered40 n_17@@1) (neverTriggered40 n_17_1))
))) (=> (forall ((n_17@@2 T@Ref) (n_17_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_17@@2 n_17_1@@0)) (select g_1 n_17@@2)) (select g_1 n_17_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_17@@2 n_17_1@@0)))
 :qid |stdinbpl.3178:29|
 :skolemid |338|
 :pattern ( (neverTriggered40 n_17@@2) (neverTriggered40 n_17_1@@0))
)) (=> (= (ControlFlow 0 234) (- 0 233)) (forall ((n_17@@3 T@Ref) ) (!  (=> (select g_1 n_17@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@15) n_17@@3 next) NoPerm)))
 :qid |stdinbpl.3185:29|
 :skolemid |339|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_17@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@24) n_17@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_17@@3 next))
)))))))))
(let ((anon88_correct true))
(let ((anon232_Then_correct  (=> (exists_path ($$ ExhaleHeap@4 g_1) x@0 v1_7) (and (=> (= (ControlFlow 0 237) 234) anon233_Then_correct) (=> (= (ControlFlow 0 237) 231) anon88_correct)))))
(let ((anon232_Else_correct  (=> (and (not (exists_path ($$ ExhaleHeap@4 g_1) x@0 v1_7)) (= (ControlFlow 0 232) 231)) anon88_correct)))
(let ((anon231_Then_correct  (and (=> (= (ControlFlow 0 228) (- 0 230)) (forall ((n_16_1 T@Ref) ) (!  (=> (and (select g_1 n_16_1) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_16_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3127:27|
 :skolemid |332|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_16_1 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@23) n_16_1 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_16_1 next))
))) (=> (forall ((n_16_1@@0 T@Ref) ) (!  (=> (and (select g_1 n_16_1@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_16_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3127:27|
 :skolemid |332|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_16_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@23) n_16_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_16_1@@0 next))
)) (and (=> (= (ControlFlow 0 228) (- 0 229)) (forall ((n_16_1@@1 T@Ref) (n_16_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_16_1@@1 n_16_2)) (select g_1 n_16_1@@1)) (select g_1 n_16_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_16_1@@1 n_16_2)))
 :qid |stdinbpl.3134:27|
 :skolemid |333|
 :pattern ( (neverTriggered39 n_16_1@@1) (neverTriggered39 n_16_2))
))) (=> (forall ((n_16_1@@2 T@Ref) (n_16_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_16_1@@2 n_16_2@@0)) (select g_1 n_16_1@@2)) (select g_1 n_16_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_16_1@@2 n_16_2@@0)))
 :qid |stdinbpl.3134:27|
 :skolemid |333|
 :pattern ( (neverTriggered39 n_16_1@@2) (neverTriggered39 n_16_2@@0))
)) (=> (= (ControlFlow 0 228) (- 0 227)) (forall ((n_16_1@@3 T@Ref) ) (!  (=> (select g_1 n_16_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@15) n_16_1@@3 next) NoPerm)))
 :qid |stdinbpl.3141:27|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_16_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@23) n_16_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_16_1@@3 next))
)))))))))
(let ((anon82_correct  (=> (and (state ExhaleHeap@4 QPMask@15) (state ExhaleHeap@4 QPMask@15)) (and (and (and (=> (= (ControlFlow 0 254) 253) anon230_Else_correct) (=> (= (ControlFlow 0 254) 228) anon231_Then_correct)) (=> (= (ControlFlow 0 254) 237) anon232_Then_correct)) (=> (= (ControlFlow 0 254) 232) anon232_Else_correct)))))
(let ((anon229_Else_correct  (=> (and (not (edge ($$ ExhaleHeap@4 g_1) x@0 y@0)) (= (ControlFlow 0 260) 254)) anon82_correct)))
(let ((anon228_Then_correct  (=> (and (not (= x@0 null)) (state ExhaleHeap@4 QPMask@15)) (and (=> (= (ControlFlow 0 261) 257) anon229_Then_correct) (=> (= (ControlFlow 0 261) 260) anon229_Else_correct)))))
(let ((anon228_Else_correct  (=> (and (= x@0 null) (= (ControlFlow 0 255) 254)) anon82_correct)))
(let ((anon78_correct  (=> (state ExhaleHeap@4 QPMask@15) (and (=> (= (ControlFlow 0 262) 261) anon228_Then_correct) (=> (= (ControlFlow 0 262) 255) anon228_Else_correct)))))
(let ((anon227_Else_correct  (=> (and (not (exists_path ($$ ExhaleHeap@4 g_1) x@0 xe)) (= (ControlFlow 0 268) 262)) anon78_correct)))
(let ((anon226_Then_correct  (=> (and (and (not (= x@0 xe)) (not (= x@0 null))) (state ExhaleHeap@4 QPMask@15)) (and (=> (= (ControlFlow 0 269) 265) anon227_Then_correct) (=> (= (ControlFlow 0 269) 268) anon227_Else_correct)))))
(let ((anon226_Else_correct  (=> (and (not (and (not (= x@0 xe)) (not (= x@0 null)))) (= (ControlFlow 0 263) 262)) anon78_correct)))
(let ((anon225_Else_correct  (=> (and (func_graph ($$ ExhaleHeap@4 g_1)) (state ExhaleHeap@4 QPMask@15)) (and (=> (= (ControlFlow 0 270) 269) anon226_Then_correct) (=> (= (ControlFlow 0 270) 263) anon226_Else_correct)))))
(let ((anon225_Then_correct  (and (=> (= (ControlFlow 0 224) (- 0 226)) (forall ((n_13_2 T@Ref) ) (!  (=> (and (select g_1 n_13_2) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_13_2 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2978:25|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_13_2 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@18) n_13_2 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_13_2 next))
))) (=> (forall ((n_13_2@@0 T@Ref) ) (!  (=> (and (select g_1 n_13_2@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_13_2@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2978:25|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_13_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@18) n_13_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_13_2@@0 next))
)) (and (=> (= (ControlFlow 0 224) (- 0 225)) (forall ((n_13_2@@1 T@Ref) (n_13_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13_2@@1 n_13_3)) (select g_1 n_13_2@@1)) (select g_1 n_13_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_13_2@@1 n_13_3)))
 :qid |stdinbpl.2985:25|
 :skolemid |318|
 :pattern ( (neverTriggered36 n_13_2@@1) (neverTriggered36 n_13_3))
))) (=> (forall ((n_13_2@@2 T@Ref) (n_13_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13_2@@2 n_13_3@@0)) (select g_1 n_13_2@@2)) (select g_1 n_13_3@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_13_2@@2 n_13_3@@0)))
 :qid |stdinbpl.2985:25|
 :skolemid |318|
 :pattern ( (neverTriggered36 n_13_2@@2) (neverTriggered36 n_13_3@@0))
)) (=> (= (ControlFlow 0 224) (- 0 223)) (forall ((n_13_2@@3 T@Ref) ) (!  (=> (select g_1 n_13_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@15) n_13_2@@3 next) NoPerm)))
 :qid |stdinbpl.2992:25|
 :skolemid |319|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_13_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@18) n_13_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_13_2@@3 next))
)))))))))
(let ((anon224_Else_correct  (=> (unshared_graph ($$ ExhaleHeap@4 g_1)) (=> (and (state ExhaleHeap@4 QPMask@15) (state ExhaleHeap@4 QPMask@15)) (and (=> (= (ControlFlow 0 271) 224) anon225_Then_correct) (=> (= (ControlFlow 0 271) 270) anon225_Else_correct))))))
(let ((anon224_Then_correct  (and (=> (= (ControlFlow 0 220) (- 0 222)) (forall ((n_12 T@Ref) ) (!  (=> (and (select g_1 n_12) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_12 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2930:25|
 :skolemid |312|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_12 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@17) n_12 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_12 next))
))) (=> (forall ((n_12@@0 T@Ref) ) (!  (=> (and (select g_1 n_12@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_12@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2930:25|
 :skolemid |312|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_12@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@17) n_12@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_12@@0 next))
)) (and (=> (= (ControlFlow 0 220) (- 0 221)) (forall ((n_12@@1 T@Ref) (n_12_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12@@1 n_12_1)) (select g_1 n_12@@1)) (select g_1 n_12_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_12@@1 n_12_1)))
 :qid |stdinbpl.2937:25|
 :skolemid |313|
 :pattern ( (neverTriggered35 n_12@@1) (neverTriggered35 n_12_1))
))) (=> (forall ((n_12@@2 T@Ref) (n_12_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12@@2 n_12_1@@0)) (select g_1 n_12@@2)) (select g_1 n_12_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_12@@2 n_12_1@@0)))
 :qid |stdinbpl.2937:25|
 :skolemid |313|
 :pattern ( (neverTriggered35 n_12@@2) (neverTriggered35 n_12_1@@0))
)) (=> (= (ControlFlow 0 220) (- 0 219)) (forall ((n_12@@3 T@Ref) ) (!  (=> (select g_1 n_12@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@15) n_12@@3 next) NoPerm)))
 :qid |stdinbpl.2944:25|
 :skolemid |314|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_12@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@17) n_12@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_12@@3 next))
)))))))))
(let ((anon223_Else_correct  (=> (acyclic_graph ($$ ExhaleHeap@4 g_1)) (=> (and (state ExhaleHeap@4 QPMask@15) (state ExhaleHeap@4 QPMask@15)) (and (=> (= (ControlFlow 0 272) 220) anon224_Then_correct) (=> (= (ControlFlow 0 272) 271) anon224_Else_correct))))))
(let ((anon223_Then_correct  (and (=> (= (ControlFlow 0 216) (- 0 218)) (forall ((n_11_2 T@Ref) ) (!  (=> (and (select g_1 n_11_2) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_11_2 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2882:25|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_11_2 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@16) n_11_2 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_11_2 next))
))) (=> (forall ((n_11_2@@0 T@Ref) ) (!  (=> (and (select g_1 n_11_2@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_11_2@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2882:25|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_11_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@16) n_11_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_11_2@@0 next))
)) (and (=> (= (ControlFlow 0 216) (- 0 217)) (forall ((n_11_2@@1 T@Ref) (n_11_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_2@@1 n_11_3)) (select g_1 n_11_2@@1)) (select g_1 n_11_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_11_2@@1 n_11_3)))
 :qid |stdinbpl.2889:25|
 :skolemid |308|
 :pattern ( (neverTriggered34 n_11_2@@1) (neverTriggered34 n_11_3))
))) (=> (forall ((n_11_2@@2 T@Ref) (n_11_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_2@@2 n_11_3@@0)) (select g_1 n_11_2@@2)) (select g_1 n_11_3@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_11_2@@2 n_11_3@@0)))
 :qid |stdinbpl.2889:25|
 :skolemid |308|
 :pattern ( (neverTriggered34 n_11_2@@2) (neverTriggered34 n_11_3@@0))
)) (=> (= (ControlFlow 0 216) (- 0 215)) (forall ((n_11_2@@3 T@Ref) ) (!  (=> (select g_1 n_11_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@15) n_11_2@@3 next) NoPerm)))
 :qid |stdinbpl.2896:25|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_11_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@16) n_11_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_11_2@@3 next))
)))))))))
(let ((anon218_Else_correct  (=> (forall ((n_10_1 T@Ref) ) (!  (=> (select g_1 n_10_1) (or (exists_path ($$ ExhaleHeap@4 g_1) x@0 n_10_1) (exists_path ($$ ExhaleHeap@4 g_1) y@0 n_10_1)))
 :qid |stdinbpl.2866:24|
 :skolemid |306|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) x@0 n_10_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) y@0 n_10_1))
)) (=> (and (state ExhaleHeap@4 QPMask@15) (state ExhaleHeap@4 QPMask@15)) (and (=> (= (ControlFlow 0 273) 216) anon223_Then_correct) (=> (= (ControlFlow 0 273) 272) anon223_Else_correct))))))
(let ((anon222_Then_correct  (and (=> (= (ControlFlow 0 210) (- 0 212)) (forall ((n$0_3 T@Ref) ) (!  (=> (and (select g_1 n$0_3) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_3 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2827:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@26) n$0_3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_3 next))
))) (=> (forall ((n$0_3@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_3@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_3@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2827:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_3@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@26) n$0_3@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_3@@0 next))
)) (and (=> (= (ControlFlow 0 210) (- 0 211)) (forall ((n$0_3@@1 T@Ref) (n$0_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3@@1 n$0_3_1)) (select g_1 n$0_3@@1)) (select g_1 n$0_3_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_3@@1 n$0_3_1)))
 :qid |stdinbpl.2834:31|
 :skolemid |302|
 :pattern ( (neverTriggered33 n$0_3@@1) (neverTriggered33 n$0_3_1))
))) (=> (forall ((n$0_3@@2 T@Ref) (n$0_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3@@2 n$0_3_1@@0)) (select g_1 n$0_3@@2)) (select g_1 n$0_3_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_3@@2 n$0_3_1@@0)))
 :qid |stdinbpl.2834:31|
 :skolemid |302|
 :pattern ( (neverTriggered33 n$0_3@@2) (neverTriggered33 n$0_3_1@@0))
)) (=> (= (ControlFlow 0 210) (- 0 209)) (forall ((n$0_3@@3 T@Ref) ) (!  (=> (select g_1 n$0_3@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@15) n$0_3@@3 next) NoPerm)))
 :qid |stdinbpl.2841:31|
 :skolemid |303|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@26) n$0_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_3@@3 next))
)))))))))
(let ((anon220_Then_correct  (and (=> (= (ControlFlow 0 205) (- 0 207)) (forall ((n$0_2 T@Ref) ) (!  (=> (and (select g_1 n$0_2) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_2 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2783:29|
 :skolemid |296|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_2 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@25) n$0_2 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_2 next))
))) (=> (forall ((n$0_2@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_2@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_2@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2783:29|
 :skolemid |296|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@25) n$0_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_2@@0 next))
)) (and (=> (= (ControlFlow 0 205) (- 0 206)) (forall ((n$0_2@@1 T@Ref) (n$0_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2@@1 n$0_2_1)) (select g_1 n$0_2@@1)) (select g_1 n$0_2_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_2@@1 n$0_2_1)))
 :qid |stdinbpl.2790:29|
 :skolemid |297|
 :pattern ( (neverTriggered32 n$0_2@@1) (neverTriggered32 n$0_2_1))
))) (=> (forall ((n$0_2@@2 T@Ref) (n$0_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2@@2 n$0_2_1@@0)) (select g_1 n$0_2@@2)) (select g_1 n$0_2_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_2@@2 n$0_2_1@@0)))
 :qid |stdinbpl.2790:29|
 :skolemid |297|
 :pattern ( (neverTriggered32 n$0_2@@2) (neverTriggered32 n$0_2_1@@0))
)) (=> (= (ControlFlow 0 205) (- 0 204)) (forall ((n$0_2@@3 T@Ref) ) (!  (=> (select g_1 n$0_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@15) n$0_2@@3 next) NoPerm)))
 :qid |stdinbpl.2797:29|
 :skolemid |298|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@25) n$0_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_2@@3 next))
)))))))))
(let ((anon67_correct true))
(let ((anon221_Then_correct  (=> (not (exists_path ($$ ExhaleHeap@4 g_1) x@0 n_82)) (and (=> (= (ControlFlow 0 213) 210) anon222_Then_correct) (=> (= (ControlFlow 0 213) 202) anon67_correct)))))
(let ((anon221_Else_correct  (=> (and (exists_path ($$ ExhaleHeap@4 g_1) x@0 n_82) (= (ControlFlow 0 208) 202)) anon67_correct)))
(let ((anon219_Then_correct  (=> (select g_1 n_82) (and (and (=> (= (ControlFlow 0 214) 205) anon220_Then_correct) (=> (= (ControlFlow 0 214) 213) anon221_Then_correct)) (=> (= (ControlFlow 0 214) 208) anon221_Else_correct)))))
(let ((anon219_Else_correct  (=> (and (not (select g_1 n_82)) (= (ControlFlow 0 203) 202)) anon67_correct)))
(let ((anon60_correct  (=> (and (state ExhaleHeap@4 QPMask@15) (state ExhaleHeap@4 QPMask@15)) (and (and (=> (= (ControlFlow 0 274) 273) anon218_Else_correct) (=> (= (ControlFlow 0 274) 214) anon219_Then_correct)) (=> (= (ControlFlow 0 274) 203) anon219_Else_correct)))))
(let ((anon217_Else_correct  (=> (and (= y@0 null) (= (ControlFlow 0 276) 274)) anon60_correct)))
(let ((anon217_Then_correct  (=> (not (= y@0 null)) (=> (and (select g_1 y@0) (= (ControlFlow 0 275) 274)) anon60_correct))))
(let ((anon58_correct  (=> (state ExhaleHeap@4 QPMask@15) (and (=> (= (ControlFlow 0 277) 275) anon217_Then_correct) (=> (= (ControlFlow 0 277) 276) anon217_Else_correct)))))
(let ((anon216_Else_correct  (=> (and (= x@0 null) (= (ControlFlow 0 279) 277)) anon58_correct)))
(let ((anon216_Then_correct  (=> (not (= x@0 null)) (=> (and (select g_1 x@0) (= (ControlFlow 0 278) 277)) anon58_correct))))
(let ((anon213_Else_correct  (=> (and (forall ((n$2_3_2 T@Ref) ) (!  (=> (and (select g_1 n$2_3_2) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$2_3_2 next) null))) (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$2_3_2 next)))
 :qid |stdinbpl.2757:24|
 :skolemid |295|
 :pattern ( (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$2_3_2 next)))
 :pattern ( (select g_1 n$2_3_2) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$2_3_2 next))
)) (state ExhaleHeap@4 QPMask@15)) (and (=> (= (ControlFlow 0 280) 278) anon216_Then_correct) (=> (= (ControlFlow 0 280) 279) anon216_Else_correct)))))
(let ((anon55_correct true))
(let ((anon215_Else_correct  (=> (and (not (and (select g_1 n$2_24) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$2_24 next) null)))) (= (ControlFlow 0 198) 195)) anon55_correct)))
(let ((anon215_Then_correct  (=> (and (select g_1 n$2_24) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$2_24 next) null))) (and (=> (= (ControlFlow 0 196) (- 0 197)) (HasDirectPerm_25325_25326 QPMask@15 n$2_24 next)) (=> (HasDirectPerm_25325_25326 QPMask@15 n$2_24 next) (=> (= (ControlFlow 0 196) 195) anon55_correct))))))
(let ((anon214_Else_correct  (=> (not (select g_1 n$2_24)) (and (=> (= (ControlFlow 0 201) 196) anon215_Then_correct) (=> (= (ControlFlow 0 201) 198) anon215_Else_correct)))))
(let ((anon214_Then_correct  (=> (select g_1 n$2_24) (and (=> (= (ControlFlow 0 199) (- 0 200)) (HasDirectPerm_25325_25326 QPMask@15 n$2_24 next)) (=> (HasDirectPerm_25325_25326 QPMask@15 n$2_24 next) (and (=> (= (ControlFlow 0 199) 196) anon215_Then_correct) (=> (= (ControlFlow 0 199) 198) anon215_Else_correct)))))))
(let ((anon212_Else_correct  (and (=> (= (ControlFlow 0 281) (- 0 282)) (forall ((n$1_2 T@Ref) (n$1_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_2 n$1_2_1)) (select g_1 n$1_2)) (select g_1 n$1_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_2 n$1_2_1)))
 :qid |stdinbpl.2712:19|
 :skolemid |289|
))) (=> (forall ((n$1_2@@0 T@Ref) (n$1_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_2@@0 n$1_2_1@@0)) (select g_1 n$1_2@@0)) (select g_1 n$1_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_2@@0 n$1_2_1@@0)))
 :qid |stdinbpl.2712:19|
 :skolemid |289|
)) (=> (and (and (forall ((n$1_2@@1 T@Ref) ) (!  (=> (and (select g_1 n$1_2@@1) (< NoPerm FullPerm)) (and (qpRange31 n$1_2@@1) (= (invRecv31 n$1_2@@1) n$1_2@@1)))
 :qid |stdinbpl.2718:26|
 :skolemid |290|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$1_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@15) n$1_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$1_2@@1 next))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv31 o_9)) (< NoPerm FullPerm)) (qpRange31 o_9)) (= (invRecv31 o_9) o_9))
 :qid |stdinbpl.2722:26|
 :skolemid |291|
 :pattern ( (invRecv31 o_9))
))) (and (forall ((n$1_2@@2 T@Ref) ) (!  (=> (select g_1 n$1_2@@2) (not (= n$1_2@@2 null)))
 :qid |stdinbpl.2728:26|
 :skolemid |292|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$1_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@15) n$1_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$1_2@@2 next))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv31 o_9@@0)) (< NoPerm FullPerm)) (qpRange31 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv31 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@15) o_9@@0 next) (+ (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) o_9@@0 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv31 o_9@@0)) (< NoPerm FullPerm)) (qpRange31 o_9@@0))) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@15) o_9@@0 next) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) o_9@@0 next))))
 :qid |stdinbpl.2734:26|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@15) o_9@@0 next))
)))) (=> (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_38165_53) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@5) o_9@@1 f_5) (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@15) o_9@@1 f_5)))
 :qid |stdinbpl.2738:33|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@5) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@15) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_38178_38179) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) o_9@@2 f_5@@0) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@15) o_9@@2 f_5@@0)))
 :qid |stdinbpl.2738:33|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@15) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_25325_123987) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@5) o_9@@3 f_5@@1) (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@15) o_9@@3 f_5@@1)))
 :qid |stdinbpl.2738:33|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@5) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@15) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_25325_124120) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@5) o_9@@4 f_5@@2) (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@15) o_9@@4 f_5@@2)))
 :qid |stdinbpl.2738:33|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@5) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@15) o_9@@4 f_5@@2))
))) (state ExhaleHeap@4 QPMask@15)) (and (and (=> (= (ControlFlow 0 281) 280) anon213_Else_correct) (=> (= (ControlFlow 0 281) 199) anon214_Then_correct)) (=> (= (ControlFlow 0 281) 201) anon214_Else_correct))))))))
(let ((anon212_Then_correct true))
(let ((anon211_Then_correct  (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 283) 194) anon212_Then_correct) (=> (= (ControlFlow 0 283) 281) anon212_Else_correct)))))
(let ((anon147_correct true))
(let ((anon264_Else_correct  (=> (and (not (and (select g_1 v1_15_1) (select g_1 v2_15_1))) (= (ControlFlow 0 130) 127)) anon147_correct)))
(let ((anon264_Then_correct  (=> (and (select g_1 v1_15_1) (select g_1 v2_15_1)) (and (=> (= (ControlFlow 0 128) (- 0 129)) (= (edge ($$ ExhaleHeap@7 g_1) v1_15_1 v2_15_1)  (or (and (edge save_g@0 v1_15_1 v2_15_1) (not (= v1_15_1 x@0))) (and (= v1_15_1 x@0) (= v2_15_1 y@0))))) (=> (= (edge ($$ ExhaleHeap@7 g_1) v1_15_1 v2_15_1)  (or (and (edge save_g@0 v1_15_1 v2_15_1) (not (= v1_15_1 x@0))) (and (= v1_15_1 x@0) (= v2_15_1 y@0)))) (=> (= (ControlFlow 0 128) 127) anon147_correct))))))
(let ((anon262_Then_correct  (and (=> (= (ControlFlow 0 123) (- 0 125)) (forall ((n_24 T@Ref) ) (!  (=> (and (select g_1 n_24) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n_24 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3822:35|
 :skolemid |405|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n_24 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@14) n_24 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n_24 next))
))) (=> (forall ((n_24@@0 T@Ref) ) (!  (=> (and (select g_1 n_24@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n_24@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3822:35|
 :skolemid |405|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n_24@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@14) n_24@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n_24@@0 next))
)) (and (=> (= (ControlFlow 0 123) (- 0 124)) (forall ((n_24@@1 T@Ref) (n_24_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_24@@1 n_24_1)) (select g_1 n_24@@1)) (select g_1 n_24_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_24@@1 n_24_1)))
 :qid |stdinbpl.3829:35|
 :skolemid |406|
 :pattern ( (neverTriggered49 n_24@@1) (neverTriggered49 n_24_1))
))) (=> (forall ((n_24@@2 T@Ref) (n_24_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_24@@2 n_24_1@@0)) (select g_1 n_24@@2)) (select g_1 n_24_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_24@@2 n_24_1@@0)))
 :qid |stdinbpl.3829:35|
 :skolemid |406|
 :pattern ( (neverTriggered49 n_24@@2) (neverTriggered49 n_24_1@@0))
)) (=> (= (ControlFlow 0 123) (- 0 122)) (forall ((n_24@@3 T@Ref) ) (!  (=> (select g_1 n_24@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@12) n_24@@3 next) NoPerm)))
 :qid |stdinbpl.3836:35|
 :skolemid |407|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n_24@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@14) n_24@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n_24@@3 next))
)))))))))
(let ((anon143_correct true))
(let ((anon261_Then_correct  (=> (and (select g_1 v1_24) (select g_1 v2_24)) (and (=> (= (ControlFlow 0 126) 123) anon262_Then_correct) (=> (= (ControlFlow 0 126) 120) anon143_correct)))))
(let ((anon261_Else_correct  (=> (and (not (and (select g_1 v1_24) (select g_1 v2_24))) (= (ControlFlow 0 121) 120)) anon143_correct)))
(let ((anon175_correct true))
(let ((anon277_Else_correct  (=> (and (not (and (not (= x@0 null)) (not (= t_2@1 null)))) (= (ControlFlow 0 94) 91)) anon175_correct)))
(let ((anon277_Then_correct  (=> (and (not (= x@0 null)) (not (= t_2@1 null))) (and (=> (= (ControlFlow 0 92) (- 0 93)) (edge old_g@0 x@0 t_2@1)) (=> (edge old_g@0 x@0 t_2@1) (=> (= (ControlFlow 0 92) 91) anon175_correct))))))
(let ((anon275_Else_correct  (=> (forall ((v1_20_1 T@Ref) (v2_20_1 T@Ref) ) (!  (=> (and (exists_path ($$ ExhaleHeap@7 g_1) x@0 v2_20_1) (not (= v1_20_1 x@0))) (= (edge old_g@0 v1_20_1 v2_20_1) (edge ($$ ExhaleHeap@7 g_1) v2_20_1 v1_20_1)))
 :qid |stdinbpl.3981:24|
 :skolemid |420|
 :pattern ( (edge old_g@0 v1_20_1 v2_20_1))
 :pattern ( (edge (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@7 g_1)) g_1) v1_20_1 v2_20_1))
)) (and (=> (= (ControlFlow 0 95) 92) anon277_Then_correct) (=> (= (ControlFlow 0 95) 94) anon277_Else_correct)))))
(let ((anon172_correct true))
(let ((anon276_Else_correct  (=> (and (not (and (exists_path ($$ ExhaleHeap@7 g_1) x@0 v2_19) (not (= v1_19 x@0)))) (= (ControlFlow 0 90) 87)) anon172_correct)))
(let ((anon276_Then_correct  (=> (and (exists_path ($$ ExhaleHeap@7 g_1) x@0 v2_19) (not (= v1_19 x@0))) (and (=> (= (ControlFlow 0 88) (- 0 89)) (= (edge old_g@0 v1_19 v2_19) (edge ($$ ExhaleHeap@7 g_1) v2_19 v1_19))) (=> (= (edge old_g@0 v1_19 v2_19) (edge ($$ ExhaleHeap@7 g_1) v2_19 v1_19)) (=> (= (ControlFlow 0 88) 87) anon172_correct))))))
(let ((anon273_Else_correct  (=> (forall ((v1_18_1 T@Ref) (v2_18_1 T@Ref) ) (!  (=> (exists_path ($$ ExhaleHeap@7 g_1) t_2@1 v1_18_1) (= (edge old_g@0 v1_18_1 v2_18_1) (edge ($$ ExhaleHeap@7 g_1) v1_18_1 v2_18_1)))
 :qid |stdinbpl.3970:24|
 :skolemid |419|
 :pattern ( (edge old_g@0 v1_18_1 v2_18_1))
 :pattern ( (edge (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@7 g_1)) g_1) v1_18_1 v2_18_1))
)) (and (and (=> (= (ControlFlow 0 96) 95) anon275_Else_correct) (=> (= (ControlFlow 0 96) 88) anon276_Then_correct)) (=> (= (ControlFlow 0 96) 90) anon276_Else_correct)))))
(let ((anon168_correct true))
(let ((anon274_Else_correct  (=> (and (not (exists_path ($$ ExhaleHeap@7 g_1) t_2@1 v1_17)) (= (ControlFlow 0 86) 83)) anon168_correct)))
(let ((anon274_Then_correct  (=> (exists_path ($$ ExhaleHeap@7 g_1) t_2@1 v1_17) (and (=> (= (ControlFlow 0 84) (- 0 85)) (= (edge old_g@0 v1_17 v2_17) (edge ($$ ExhaleHeap@7 g_1) v1_17 v2_17))) (=> (= (edge old_g@0 v1_17 v2_17) (edge ($$ ExhaleHeap@7 g_1) v1_17 v2_17)) (=> (= (ControlFlow 0 84) 83) anon168_correct))))))
(let ((anon272_Else_correct  (=> (= t_2@1 null) (and (and (=> (= (ControlFlow 0 99) 96) anon273_Else_correct) (=> (= (ControlFlow 0 99) 84) anon274_Then_correct)) (=> (= (ControlFlow 0 99) 86) anon274_Else_correct)))))
(let ((anon272_Then_correct  (=> (not (= t_2@1 null)) (and (=> (= (ControlFlow 0 97) (- 0 98)) (not (edge ($$ ExhaleHeap@7 g_1) t_2@1 x@0))) (=> (not (edge ($$ ExhaleHeap@7 g_1) t_2@1 x@0)) (and (and (=> (= (ControlFlow 0 97) 96) anon273_Else_correct) (=> (= (ControlFlow 0 97) 84) anon274_Then_correct)) (=> (= (ControlFlow 0 97) 86) anon274_Else_correct)))))))
(let ((anon271_Else_correct  (=> (not (and (not (= t_2@1 xe)) (not (= t_2@1 null)))) (and (=> (= (ControlFlow 0 102) 97) anon272_Then_correct) (=> (= (ControlFlow 0 102) 99) anon272_Else_correct)))))
(let ((anon271_Then_correct  (=> (and (not (= t_2@1 xe)) (not (= t_2@1 null))) (and (=> (= (ControlFlow 0 100) (- 0 101)) (not (exists_path ($$ ExhaleHeap@7 g_1) t_2@1 xe))) (=> (not (exists_path ($$ ExhaleHeap@7 g_1) t_2@1 xe)) (and (=> (= (ControlFlow 0 100) 97) anon272_Then_correct) (=> (= (ControlFlow 0 100) 99) anon272_Else_correct)))))))
(let ((anon269_Else_correct  (=> (forall ((n_26_1_1 T@Ref) ) (!  (=> (select g_1 n_26_1_1) (or (exists_path ($$ ExhaleHeap@7 g_1) t_2@1 n_26_1_1) (exists_path ($$ ExhaleHeap@7 g_1) x@0 n_26_1_1)))
 :qid |stdinbpl.3945:24|
 :skolemid |418|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@7 g_1)) g_1) t_2@1 n_26_1_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@7 g_1)) g_1) x@0 n_26_1_1))
)) (and (=> (= (ControlFlow 0 103) (- 0 106)) (acyclic_graph ($$ ExhaleHeap@7 g_1))) (=> (acyclic_graph ($$ ExhaleHeap@7 g_1)) (and (=> (= (ControlFlow 0 103) (- 0 105)) (unshared_graph ($$ ExhaleHeap@7 g_1))) (=> (unshared_graph ($$ ExhaleHeap@7 g_1)) (and (=> (= (ControlFlow 0 103) (- 0 104)) (func_graph ($$ ExhaleHeap@7 g_1))) (=> (func_graph ($$ ExhaleHeap@7 g_1)) (and (=> (= (ControlFlow 0 103) 100) anon271_Then_correct) (=> (= (ControlFlow 0 103) 102) anon271_Else_correct)))))))))))
(let ((anon160_correct true))
(let ((anon270_Else_correct  (=> (and (not (select g_1 n_25)) (= (ControlFlow 0 82) 79)) anon160_correct)))
(let ((anon270_Then_correct  (=> (select g_1 n_25) (and (=> (= (ControlFlow 0 80) (- 0 81)) (or (exists_path ($$ ExhaleHeap@7 g_1) t_2@1 n_25) (exists_path ($$ ExhaleHeap@7 g_1) x@0 n_25))) (=> (or (exists_path ($$ ExhaleHeap@7 g_1) t_2@1 n_25) (exists_path ($$ ExhaleHeap@7 g_1) x@0 n_25)) (=> (= (ControlFlow 0 80) 79) anon160_correct))))))
(let ((anon268_Else_correct  (=> (= x@0 null) (and (and (=> (= (ControlFlow 0 109) 103) anon269_Else_correct) (=> (= (ControlFlow 0 109) 80) anon270_Then_correct)) (=> (= (ControlFlow 0 109) 82) anon270_Else_correct)))))
(let ((anon268_Then_correct  (=> (not (= x@0 null)) (and (=> (= (ControlFlow 0 107) (- 0 108)) (select g_1 x@0)) (=> (select g_1 x@0) (and (and (=> (= (ControlFlow 0 107) 103) anon269_Else_correct) (=> (= (ControlFlow 0 107) 80) anon270_Then_correct)) (=> (= (ControlFlow 0 107) 82) anon270_Else_correct)))))))
(let ((anon267_Else_correct  (=> (= t_2@1 null) (and (=> (= (ControlFlow 0 112) 107) anon268_Then_correct) (=> (= (ControlFlow 0 112) 109) anon268_Else_correct)))))
(let ((anon267_Then_correct  (=> (not (= t_2@1 null)) (and (=> (= (ControlFlow 0 110) (- 0 111)) (select g_1 t_2@1)) (=> (select g_1 t_2@1) (and (=> (= (ControlFlow 0 110) 107) anon268_Then_correct) (=> (= (ControlFlow 0 110) 109) anon268_Else_correct)))))))
(let ((anon265_Else_correct  (=> (forall ((n$2_8_1 T@Ref) ) (!  (=> (and (select g_1 n$2_8_1) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$2_8_1 next) null))) (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$2_8_1 next)))
 :qid |stdinbpl.3926:24|
 :skolemid |417|
 :pattern ( (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$2_8_1 next)))
 :pattern ( (select g_1 n$2_8_1) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$2_8_1 next))
)) (and (=> (= (ControlFlow 0 113) 110) anon267_Then_correct) (=> (= (ControlFlow 0 113) 112) anon267_Else_correct)))))
(let ((anon152_correct true))
(let ((anon266_Else_correct  (=> (and (not (and (select g_1 n$2_7_1) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$2_7_1 next) null)))) (= (ControlFlow 0 78) 75)) anon152_correct)))
(let ((anon266_Then_correct  (=> (and (select g_1 n$2_7_1) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$2_7_1 next) null))) (and (=> (= (ControlFlow 0 76) (- 0 77)) (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$2_7_1 next))) (=> (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$2_7_1 next)) (=> (= (ControlFlow 0 76) 75) anon152_correct))))))
(let ((anon149_correct  (=> (state ExhaleHeap@7 QPMask@12) (and (=> (= (ControlFlow 0 114) (- 0 117)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 114) (- 0 116)) (forall ((n$1_6 T@Ref) (n$1_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_6 n$1_6_1)) (select g_1 n$1_6)) (select g_1 n$1_6_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_6 n$1_6_1)))
 :qid |stdinbpl.3885:21|
 :skolemid |411|
 :pattern ( (neverTriggered50 n$1_6) (neverTriggered50 n$1_6_1))
))) (=> (forall ((n$1_6@@0 T@Ref) (n$1_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_6@@0 n$1_6_1@@0)) (select g_1 n$1_6@@0)) (select g_1 n$1_6_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_6@@0 n$1_6_1@@0)))
 :qid |stdinbpl.3885:21|
 :skolemid |411|
 :pattern ( (neverTriggered50 n$1_6@@0) (neverTriggered50 n$1_6_1@@0))
)) (and (=> (= (ControlFlow 0 114) (- 0 115)) (forall ((n$1_6@@1 T@Ref) ) (!  (=> (select g_1 n$1_6@@1) (>= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@12) n$1_6@@1 next) FullPerm))
 :qid |stdinbpl.3892:21|
 :skolemid |412|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$1_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@13) n$1_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$1_6@@1 next))
))) (=> (forall ((n$1_6@@2 T@Ref) ) (!  (=> (select g_1 n$1_6@@2) (>= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@12) n$1_6@@2 next) FullPerm))
 :qid |stdinbpl.3892:21|
 :skolemid |412|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$1_6@@2 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@13) n$1_6@@2 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$1_6@@2 next))
)) (=> (forall ((n$1_6@@3 T@Ref) ) (!  (=> (and (select g_1 n$1_6@@3) (< NoPerm FullPerm)) (and (qpRange50 n$1_6@@3) (= (invRecv50 n$1_6@@3) n$1_6@@3)))
 :qid |stdinbpl.3898:26|
 :skolemid |413|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$1_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@13) n$1_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$1_6@@3 next))
)) (=> (and (forall ((o_9@@5 T@Ref) ) (!  (=> (and (select g_1 (invRecv50 o_9@@5)) (and (< NoPerm FullPerm) (qpRange50 o_9@@5))) (= (invRecv50 o_9@@5) o_9@@5))
 :qid |stdinbpl.3902:26|
 :skolemid |414|
 :pattern ( (invRecv50 o_9@@5))
)) (forall ((o_9@@6 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv50 o_9@@6)) (and (< NoPerm FullPerm) (qpRange50 o_9@@6))) (and (= (invRecv50 o_9@@6) o_9@@6) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@13) o_9@@6 next) (- (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@12) o_9@@6 next) FullPerm)))) (=> (not (and (select g_1 (invRecv50 o_9@@6)) (and (< NoPerm FullPerm) (qpRange50 o_9@@6)))) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@13) o_9@@6 next) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@12) o_9@@6 next))))
 :qid |stdinbpl.3908:26|
 :skolemid |415|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@13) o_9@@6 next))
))) (=> (and (and (and (forall ((o_9@@7 T@Ref) (f_5@@3 T@Field_38165_53) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@12) o_9@@7 f_5@@3) (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@13) o_9@@7 f_5@@3)))
 :qid |stdinbpl.3914:33|
 :skolemid |416|
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@13) o_9@@7 f_5@@3))
)) (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_38178_38179) ) (!  (=> (not (= f_5@@4 next)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@12) o_9@@8 f_5@@4) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@13) o_9@@8 f_5@@4)))
 :qid |stdinbpl.3914:33|
 :skolemid |416|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@13) o_9@@8 f_5@@4))
))) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_25325_123987) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@12) o_9@@9 f_5@@5) (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@13) o_9@@9 f_5@@5)))
 :qid |stdinbpl.3914:33|
 :skolemid |416|
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@13) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_25325_124120) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@12) o_9@@10 f_5@@6) (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@13) o_9@@10 f_5@@6)))
 :qid |stdinbpl.3914:33|
 :skolemid |416|
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@13) o_9@@10 f_5@@6))
))) (and (and (=> (= (ControlFlow 0 114) 113) anon265_Else_correct) (=> (= (ControlFlow 0 114) 76) anon266_Then_correct)) (=> (= (ControlFlow 0 114) 78) anon266_Else_correct))))))))))))))
(let ((anon263_Else_correct  (=> (and (forall ((v1_16_1 T@Ref) (v2_16_1 T@Ref) ) (!  (=> (and (select g_1 v1_16_1) (select g_1 v2_16_1)) (= (edge ($$ ExhaleHeap@7 g_1) v1_16_1 v2_16_1)  (or (and (edge save_g@0 v1_16_1 v2_16_1) (not (= v1_16_1 x@0))) (and (= v1_16_1 x@0) (= v2_16_1 y@0)))))
 :qid |stdinbpl.3867:30|
 :skolemid |410|
 :pattern ( (select g_1 v1_16_1) (select g_1 v2_16_1))
)) (= (ControlFlow 0 119) 114)) anon149_correct)))
(let ((anon259_Then_correct  (=> (not (= y@0 null)) (and (and (and (and (=> (= (ControlFlow 0 131) 119) anon263_Else_correct) (=> (= (ControlFlow 0 131) 128) anon264_Then_correct)) (=> (= (ControlFlow 0 131) 130) anon264_Else_correct)) (=> (= (ControlFlow 0 131) 126) anon261_Then_correct)) (=> (= (ControlFlow 0 131) 121) anon261_Else_correct)))))
(let ((anon259_Else_correct  (=> (and (= y@0 null) (= (ControlFlow 0 118) 114)) anon149_correct)))
(let ((anon138_correct  (=> (and (and (state ExhaleHeap@7 QPMask@12) (state ExhaleHeap@7 QPMask@12)) (and (state ExhaleHeap@7 QPMask@12) (state ExhaleHeap@7 QPMask@12))) (and (=> (= (ControlFlow 0 132) 131) anon259_Then_correct) (=> (= (ControlFlow 0 132) 118) anon259_Else_correct)))))
(let ((anon258_Else_correct  (=> (and (= y@0 null) (= (ControlFlow 0 134) 132)) anon138_correct)))
(let ((anon258_Then_correct  (=> (and (and (not (= y@0 null)) (state ExhaleHeap@7 QPMask@12)) (and (forall ((v1_13_1 T@Ref) (v2_13_1 T@Ref) ) (!  (=> (not (= v1_13_1 v2_13_1)) (= (exists_path ($$ ExhaleHeap@7 g_1) v1_13_1 v2_13_1)  (or (exists_path ($$ ExhaleHeap@6 g_1) v1_13_1 v2_13_1) (and (exists_path ($$ ExhaleHeap@6 g_1) v1_13_1 x@0) (exists_path ($$ ExhaleHeap@6 g_1) y@0 v2_13_1)))))
 :qid |stdinbpl.3785:32|
 :skolemid |404|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@7 g_1)) g_1) v1_13_1 v2_13_1))
)) (= (ControlFlow 0 133) 132))) anon138_correct)))
(let ((anon257_Else_correct  (=> (= y@0 null) (and (=> (= (ControlFlow 0 136) 133) anon258_Then_correct) (=> (= (ControlFlow 0 136) 134) anon258_Else_correct)))))
(let ((anon257_Then_correct  (=> (not (= y@0 null)) (=> (and (state ExhaleHeap@7 QPMask@12) (forall ((v1_12_1 T@Ref) (v2_12_1 T@Ref) ) (! (= (edge ($$ ExhaleHeap@7 g_1) v1_12_1 v2_12_1)  (or (edge ($$ ExhaleHeap@6 g_1) v1_12_1 v2_12_1) (and (= v1_12_1 x@0) (= v2_12_1 y@0))))
 :qid |stdinbpl.3778:32|
 :skolemid |403|
 :pattern ( (edge (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@6 g_1)) g_1) v1_12_1 v2_12_1))
))) (and (=> (= (ControlFlow 0 135) 133) anon258_Then_correct) (=> (= (ControlFlow 0 135) 134) anon258_Else_correct))))))
(let ((anon256_Else_correct  (=> (not (= y@0 null)) (and (=> (= (ControlFlow 0 138) 135) anon257_Then_correct) (=> (= (ControlFlow 0 138) 136) anon257_Else_correct)))))
(let ((anon256_Then_correct  (=> (= y@0 null) (=> (and (state ExhaleHeap@7 QPMask@12) (|Set#Equal_25332| ($$ ExhaleHeap@7 g_1) ($$ ExhaleHeap@6 g_1))) (and (=> (= (ControlFlow 0 137) 135) anon257_Then_correct) (=> (= (ControlFlow 0 137) 136) anon257_Else_correct))))))
(let ((anon254_Else_correct  (=> (forall ((n$0_7_1_1 T@Ref) ) (!  (=> (and (select g_1 n$0_7_1_1) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$0_7_1_1 next) null))) (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$0_7_1_1 next)))
 :qid |stdinbpl.3709:30|
 :skolemid |394|
 :pattern ( (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$0_7_1_1 next)))
 :pattern ( (select g_1 n$0_7_1_1) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$0_7_1_1 next))
)) (and (=> (= (ControlFlow 0 139) (- 0 142)) (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) x@0 next) null)) (=> (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) x@0 next) null) (=> (and (IdenticalOnKnownLocations ExhaleHeap@6 ExhaleHeap@7 QPMask@11) (not (select g_1 null))) (=> (and (and (select g_1 x@0) (not (= x@0 null))) (and (= Mask@3 (PolymorphicMapType_38126 (store (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@11) x@0 next (+ (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@11) x@0 next) FullPerm)) (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@11) (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@11) (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@11))) (state ExhaleHeap@7 Mask@3))) (and (=> (= (ControlFlow 0 139) (- 0 141)) (forall ((n$1_5 T@Ref) (n$1_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_5 n$1_5_1)) (and (select g_1 n$1_5) (not (= n$1_5 x@0)))) (and (select g_1 n$1_5_1) (not (= n$1_5_1 x@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_5 n$1_5_1)))
 :qid |stdinbpl.3729:25|
 :skolemid |395|
))) (=> (forall ((n$1_5@@0 T@Ref) (n$1_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_5@@0 n$1_5_1@@0)) (and (select g_1 n$1_5@@0) (not (= n$1_5@@0 x@0)))) (and (select g_1 n$1_5_1@@0) (not (= n$1_5_1@@0 x@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_5@@0 n$1_5_1@@0)))
 :qid |stdinbpl.3729:25|
 :skolemid |395|
)) (=> (and (forall ((n$1_5@@1 T@Ref) ) (!  (=> (and (and (select g_1 n$1_5@@1) (not (= n$1_5@@1 x@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange48 n$1_5@@1) (= (invRecv48 n$1_5@@1) n$1_5@@1)))
 :qid |stdinbpl.3735:32|
 :skolemid |396|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$1_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@12) n$1_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$1_5@@1 next))
)) (forall ((o_9@@11 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv48 o_9@@11)) (not (= (invRecv48 o_9@@11) x@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange48 o_9@@11)) (= (invRecv48 o_9@@11) o_9@@11))
 :qid |stdinbpl.3739:32|
 :skolemid |397|
 :pattern ( (invRecv48 o_9@@11))
))) (and (=> (= (ControlFlow 0 139) (- 0 140)) (forall ((n$1_5@@2 T@Ref) ) (!  (=> (and (select g_1 n$1_5@@2) (not (= n$1_5@@2 x@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3745:25|
 :skolemid |398|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$1_5@@2 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@12) n$1_5@@2 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$1_5@@2 next))
))) (=> (forall ((n$1_5@@3 T@Ref) ) (!  (=> (and (select g_1 n$1_5@@3) (not (= n$1_5@@3 x@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3745:25|
 :skolemid |398|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$1_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@12) n$1_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$1_5@@3 next))
)) (=> (and (forall ((n$1_5@@4 T@Ref) ) (!  (=> (and (and (select g_1 n$1_5@@4) (not (= n$1_5@@4 x@0))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$1_5@@4 null)))
 :qid |stdinbpl.3751:32|
 :skolemid |399|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$1_5@@4 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@12) n$1_5@@4 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$1_5@@4 next))
)) (forall ((o_9@@12 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv48 o_9@@12)) (not (= (invRecv48 o_9@@12) x@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange48 o_9@@12)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv48 o_9@@12) o_9@@12)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@12) o_9@@12 next) (+ (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@3) o_9@@12 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv48 o_9@@12)) (not (= (invRecv48 o_9@@12) x@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange48 o_9@@12))) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@12) o_9@@12 next) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@3) o_9@@12 next))))
 :qid |stdinbpl.3757:32|
 :skolemid |400|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@12) o_9@@12 next))
))) (=> (and (and (and (and (and (forall ((o_9@@13 T@Ref) (f_5@@7 T@Field_38165_53) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| Mask@3) o_9@@13 f_5@@7) (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@12) o_9@@13 f_5@@7)))
 :qid |stdinbpl.3761:39|
 :skolemid |401|
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| Mask@3) o_9@@13 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@12) o_9@@13 f_5@@7))
)) (forall ((o_9@@14 T@Ref) (f_5@@8 T@Field_38178_38179) ) (!  (=> (not (= f_5@@8 next)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@3) o_9@@14 f_5@@8) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@12) o_9@@14 f_5@@8)))
 :qid |stdinbpl.3761:39|
 :skolemid |401|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@3) o_9@@14 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@12) o_9@@14 f_5@@8))
))) (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_25325_123987) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| Mask@3) o_9@@15 f_5@@9) (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@12) o_9@@15 f_5@@9)))
 :qid |stdinbpl.3761:39|
 :skolemid |401|
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| Mask@3) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@12) o_9@@15 f_5@@9))
))) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_25325_124120) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| Mask@3) o_9@@16 f_5@@10) (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@12) o_9@@16 f_5@@10)))
 :qid |stdinbpl.3761:39|
 :skolemid |401|
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| Mask@3) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@12) o_9@@16 f_5@@10))
))) (state ExhaleHeap@7 QPMask@12)) (and (forall ((n$2_6_2 T@Ref) ) (!  (=> (and (select g_1 n$2_6_2) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$2_6_2 next) null))) (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$2_6_2 next)))
 :qid |stdinbpl.3767:30|
 :skolemid |402|
 :pattern ( (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$2_6_2 next)))
 :pattern ( (select g_1 n$2_6_2) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) n$2_6_2 next))
)) (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@7) x@0 next) y@0))) (and (=> (= (ControlFlow 0 139) 137) anon256_Then_correct) (=> (= (ControlFlow 0 139) 138) anon256_Else_correct))))))))))))))))
(let ((anon131_correct true))
(let ((anon255_Else_correct  (=> (and (not (and (select g_1 n$0_6) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$0_6 next) null)))) (= (ControlFlow 0 74) 71)) anon131_correct)))
(let ((anon255_Then_correct  (=> (and (select g_1 n$0_6) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$0_6 next) null))) (and (=> (= (ControlFlow 0 72) (- 0 73)) (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$0_6 next))) (=> (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$0_6 next)) (=> (= (ControlFlow 0 72) 71) anon131_correct))))))
(let ((anon128_correct  (=> (= Mask@2 (PolymorphicMapType_38126 (store (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@10) x@0 next (- (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@10) x@0 next) FullPerm)) (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@10) (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@10) (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@10))) (and (=> (= (ControlFlow 0 143) (- 0 146)) (forall ((n_23 T@Ref) ) (!  (=> (and (and (select g_1 n_23) (not (= n_23 x@0))) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n_23 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3661:27|
 :skolemid |387|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n_23 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@11) n_23 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n_23 next))
))) (=> (forall ((n_23@@0 T@Ref) ) (!  (=> (and (and (select g_1 n_23@@0) (not (= n_23@@0 x@0))) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n_23@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3661:27|
 :skolemid |387|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n_23@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@11) n_23@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n_23@@0 next))
)) (and (=> (= (ControlFlow 0 143) (- 0 145)) (forall ((n_23@@1 T@Ref) (n_23_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_23@@1 n_23_1)) (and (select g_1 n_23@@1) (not (= n_23@@1 x@0)))) (and (select g_1 n_23_1) (not (= n_23_1 x@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_23@@1 n_23_1)))
 :qid |stdinbpl.3668:27|
 :skolemid |388|
 :pattern ( (neverTriggered47 n_23@@1) (neverTriggered47 n_23_1))
))) (=> (forall ((n_23@@2 T@Ref) (n_23_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_23@@2 n_23_1@@0)) (and (select g_1 n_23@@2) (not (= n_23@@2 x@0)))) (and (select g_1 n_23_1@@0) (not (= n_23_1@@0 x@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_23@@2 n_23_1@@0)))
 :qid |stdinbpl.3668:27|
 :skolemid |388|
 :pattern ( (neverTriggered47 n_23@@2) (neverTriggered47 n_23_1@@0))
)) (and (=> (= (ControlFlow 0 143) (- 0 144)) (forall ((n_23@@3 T@Ref) ) (!  (=> (and (select g_1 n_23@@3) (not (= n_23@@3 x@0))) (>= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@2) n_23@@3 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.3675:27|
 :skolemid |389|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n_23@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@11) n_23@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n_23@@3 next))
))) (=> (forall ((n_23@@4 T@Ref) ) (!  (=> (and (select g_1 n_23@@4) (not (= n_23@@4 x@0))) (>= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@2) n_23@@4 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.3675:27|
 :skolemid |389|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n_23@@4 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@11) n_23@@4 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n_23@@4 next))
)) (=> (forall ((n_23@@5 T@Ref) ) (!  (=> (and (and (select g_1 n_23@@5) (not (= n_23@@5 x@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange47 n_23@@5) (= (invRecv47 n_23@@5) n_23@@5)))
 :qid |stdinbpl.3681:32|
 :skolemid |390|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n_23@@5 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@11) n_23@@5 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n_23@@5 next))
)) (=> (and (forall ((o_9@@17 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv47 o_9@@17)) (not (= (invRecv47 o_9@@17) x@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange47 o_9@@17))) (= (invRecv47 o_9@@17) o_9@@17))
 :qid |stdinbpl.3685:32|
 :skolemid |391|
 :pattern ( (invRecv47 o_9@@17))
)) (forall ((o_9@@18 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv47 o_9@@18)) (not (= (invRecv47 o_9@@18) x@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange47 o_9@@18))) (and (= (invRecv47 o_9@@18) o_9@@18) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@11) o_9@@18 next) (- (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@2) o_9@@18 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select g_1 (invRecv47 o_9@@18)) (not (= (invRecv47 o_9@@18) x@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange47 o_9@@18)))) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@11) o_9@@18 next) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@2) o_9@@18 next))))
 :qid |stdinbpl.3691:32|
 :skolemid |392|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@11) o_9@@18 next))
))) (=> (and (and (and (forall ((o_9@@19 T@Ref) (f_5@@11 T@Field_38165_53) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| Mask@2) o_9@@19 f_5@@11) (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@11) o_9@@19 f_5@@11)))
 :qid |stdinbpl.3697:39|
 :skolemid |393|
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@11) o_9@@19 f_5@@11))
)) (forall ((o_9@@20 T@Ref) (f_5@@12 T@Field_38178_38179) ) (!  (=> (not (= f_5@@12 next)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@2) o_9@@20 f_5@@12) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@11) o_9@@20 f_5@@12)))
 :qid |stdinbpl.3697:39|
 :skolemid |393|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@11) o_9@@20 f_5@@12))
))) (forall ((o_9@@21 T@Ref) (f_5@@13 T@Field_25325_123987) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| Mask@2) o_9@@21 f_5@@13) (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@11) o_9@@21 f_5@@13)))
 :qid |stdinbpl.3697:39|
 :skolemid |393|
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@11) o_9@@21 f_5@@13))
))) (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_25325_124120) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| Mask@2) o_9@@22 f_5@@14) (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@11) o_9@@22 f_5@@14)))
 :qid |stdinbpl.3697:39|
 :skolemid |393|
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@11) o_9@@22 f_5@@14))
))) (and (and (=> (= (ControlFlow 0 143) 139) anon254_Else_correct) (=> (= (ControlFlow 0 143) 72) anon255_Then_correct)) (=> (= (ControlFlow 0 143) 74) anon255_Else_correct))))))))))))))
(let ((anon253_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 149) 143)) anon128_correct)))
(let ((anon253_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 147) (- 0 148)) (<= FullPerm (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@10) x@0 next))) (=> (<= FullPerm (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@10) x@0 next)) (=> (= (ControlFlow 0 147) 143) anon128_correct))))))
(let ((anon126_correct  (and (=> (= (ControlFlow 0 150) (- 0 152)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 150) (- 0 151)) (select g_1 x@0)) (=> (select g_1 x@0) (and (=> (= (ControlFlow 0 150) 147) anon253_Then_correct) (=> (= (ControlFlow 0 150) 149) anon253_Else_correct))))))))
(let ((anon252_Else_correct  (=> (and (= y@0 null) (= (ControlFlow 0 155) 150)) anon126_correct)))
(let ((anon252_Then_correct  (=> (not (= y@0 null)) (and (=> (= (ControlFlow 0 153) (- 0 154)) (select g_1 y@0)) (=> (select g_1 y@0) (=> (= (ControlFlow 0 153) 150) anon126_correct))))))
(let ((anon124_correct  (=> (and (state ExhaleHeap@6 QPMask@10) (state ExhaleHeap@6 QPMask@10)) (and (=> (= (ControlFlow 0 156) (- 0 157)) (select g_1 x@0)) (=> (select g_1 x@0) (and (=> (= (ControlFlow 0 156) 153) anon252_Then_correct) (=> (= (ControlFlow 0 156) 155) anon252_Else_correct)))))))
(let ((anon251_Else_correct  (=> (and (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) x@0 next) null) (= (ControlFlow 0 159) 156)) anon124_correct)))
(let ((anon251_Then_correct  (=> (and (and (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) x@0 next) null)) (state ExhaleHeap@6 QPMask@10)) (and (forall ((v1_11_1 T@Ref) (v2_11_1 T@Ref) ) (!  (=> (not (= v1_11_1 v2_11_1)) (= (exists_path ($$ ExhaleHeap@6 g_1) v1_11_1 v2_11_1)  (and (exists_path ($$ ExhaleHeap@4 g_1) v1_11_1 v2_11_1) (not (and (exists_path ($$ ExhaleHeap@4 g_1) v1_11_1 x@0) (exists_path ($$ ExhaleHeap@4 g_1) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) x@0 next) v2_11_1))))))
 :qid |stdinbpl.3626:32|
 :skolemid |386|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@6 g_1)) g_1) v1_11_1 v2_11_1))
)) (= (ControlFlow 0 158) 156))) anon124_correct)))
(let ((anon250_Else_correct  (=> (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) x@0 next) null) (and (=> (= (ControlFlow 0 161) 158) anon251_Then_correct) (=> (= (ControlFlow 0 161) 159) anon251_Else_correct)))))
(let ((anon250_Then_correct  (=> (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) x@0 next) null)) (=> (and (state ExhaleHeap@6 QPMask@10) (forall ((v1_10_1 T@Ref) (v2_10_1 T@Ref) ) (! (= (edge ($$ ExhaleHeap@6 g_1) v1_10_1 v2_10_1)  (and (edge ($$ ExhaleHeap@4 g_1) v1_10_1 v2_10_1) (not (and (= v1_10_1 x@0) (= v2_10_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) x@0 next))))))
 :qid |stdinbpl.3619:32|
 :skolemid |385|
 :pattern ( (edge (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@6 g_1)) g_1) v1_10_1 v2_10_1))
))) (and (=> (= (ControlFlow 0 160) 158) anon251_Then_correct) (=> (= (ControlFlow 0 160) 159) anon251_Else_correct))))))
(let ((anon249_Else_correct  (=> (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) x@0 next) null)) (and (=> (= (ControlFlow 0 163) 160) anon250_Then_correct) (=> (= (ControlFlow 0 163) 161) anon250_Else_correct)))))
(let ((anon249_Then_correct  (=> (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) x@0 next) null) (=> (and (state ExhaleHeap@6 QPMask@10) (|Set#Equal_25332| ($$ ExhaleHeap@6 g_1) ($$ ExhaleHeap@4 g_1))) (and (=> (= (ControlFlow 0 162) 160) anon250_Then_correct) (=> (= (ControlFlow 0 162) 161) anon250_Else_correct))))))
(let ((anon247_Else_correct  (=> (forall ((n$0_5_1_1 T@Ref) ) (!  (=> (and (select g_1 n$0_5_1_1) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_5_1_1 next) null))) (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_5_1_1 next)))
 :qid |stdinbpl.3552:30|
 :skolemid |376|
 :pattern ( (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_5_1_1 next)))
 :pattern ( (select g_1 n$0_5_1_1) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_5_1_1 next))
)) (=> (and (IdenticalOnKnownLocations ExhaleHeap@4 ExhaleHeap@6 QPMask@9) (not (select g_1 null))) (=> (and (and (select g_1 x@0) (not (= x@0 null))) (and (= Mask@1 (PolymorphicMapType_38126 (store (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@9) x@0 next (+ (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@9) x@0 next) FullPerm)) (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@9) (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@9) (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@9))) (state ExhaleHeap@6 Mask@1))) (and (=> (= (ControlFlow 0 164) (- 0 166)) (forall ((n$1_4 T@Ref) (n$1_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_4 n$1_4_1)) (and (select g_1 n$1_4) (not (= n$1_4 x@0)))) (and (select g_1 n$1_4_1) (not (= n$1_4_1 x@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_4 n$1_4_1)))
 :qid |stdinbpl.3570:25|
 :skolemid |377|
))) (=> (forall ((n$1_4@@0 T@Ref) (n$1_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_4@@0 n$1_4_1@@0)) (and (select g_1 n$1_4@@0) (not (= n$1_4@@0 x@0)))) (and (select g_1 n$1_4_1@@0) (not (= n$1_4_1@@0 x@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_4@@0 n$1_4_1@@0)))
 :qid |stdinbpl.3570:25|
 :skolemid |377|
)) (=> (and (forall ((n$1_4@@1 T@Ref) ) (!  (=> (and (and (select g_1 n$1_4@@1) (not (= n$1_4@@1 x@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange46 n$1_4@@1) (= (invRecv46 n$1_4@@1) n$1_4@@1)))
 :qid |stdinbpl.3576:32|
 :skolemid |378|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$1_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@10) n$1_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$1_4@@1 next))
)) (forall ((o_9@@23 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv46 o_9@@23)) (not (= (invRecv46 o_9@@23) x@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange46 o_9@@23)) (= (invRecv46 o_9@@23) o_9@@23))
 :qid |stdinbpl.3580:32|
 :skolemid |379|
 :pattern ( (invRecv46 o_9@@23))
))) (and (=> (= (ControlFlow 0 164) (- 0 165)) (forall ((n$1_4@@2 T@Ref) ) (!  (=> (and (select g_1 n$1_4@@2) (not (= n$1_4@@2 x@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3586:25|
 :skolemid |380|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$1_4@@2 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@10) n$1_4@@2 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$1_4@@2 next))
))) (=> (forall ((n$1_4@@3 T@Ref) ) (!  (=> (and (select g_1 n$1_4@@3) (not (= n$1_4@@3 x@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3586:25|
 :skolemid |380|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$1_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@10) n$1_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$1_4@@3 next))
)) (=> (and (forall ((n$1_4@@4 T@Ref) ) (!  (=> (and (and (select g_1 n$1_4@@4) (not (= n$1_4@@4 x@0))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$1_4@@4 null)))
 :qid |stdinbpl.3592:32|
 :skolemid |381|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$1_4@@4 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@10) n$1_4@@4 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$1_4@@4 next))
)) (forall ((o_9@@24 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv46 o_9@@24)) (not (= (invRecv46 o_9@@24) x@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange46 o_9@@24)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv46 o_9@@24) o_9@@24)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@10) o_9@@24 next) (+ (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@1) o_9@@24 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv46 o_9@@24)) (not (= (invRecv46 o_9@@24) x@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange46 o_9@@24))) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@10) o_9@@24 next) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@1) o_9@@24 next))))
 :qid |stdinbpl.3598:32|
 :skolemid |382|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@10) o_9@@24 next))
))) (=> (and (and (and (and (and (forall ((o_9@@25 T@Ref) (f_5@@15 T@Field_38165_53) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| Mask@1) o_9@@25 f_5@@15) (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@10) o_9@@25 f_5@@15)))
 :qid |stdinbpl.3602:39|
 :skolemid |383|
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| Mask@1) o_9@@25 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@10) o_9@@25 f_5@@15))
)) (forall ((o_9@@26 T@Ref) (f_5@@16 T@Field_38178_38179) ) (!  (=> (not (= f_5@@16 next)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@1) o_9@@26 f_5@@16) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@10) o_9@@26 f_5@@16)))
 :qid |stdinbpl.3602:39|
 :skolemid |383|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@1) o_9@@26 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@10) o_9@@26 f_5@@16))
))) (forall ((o_9@@27 T@Ref) (f_5@@17 T@Field_25325_123987) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| Mask@1) o_9@@27 f_5@@17) (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@10) o_9@@27 f_5@@17)))
 :qid |stdinbpl.3602:39|
 :skolemid |383|
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| Mask@1) o_9@@27 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@10) o_9@@27 f_5@@17))
))) (forall ((o_9@@28 T@Ref) (f_5@@18 T@Field_25325_124120) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| Mask@1) o_9@@28 f_5@@18) (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@10) o_9@@28 f_5@@18)))
 :qid |stdinbpl.3602:39|
 :skolemid |383|
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| Mask@1) o_9@@28 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@10) o_9@@28 f_5@@18))
))) (state ExhaleHeap@6 QPMask@10)) (and (forall ((n$2_5_1 T@Ref) ) (!  (=> (and (select g_1 n$2_5_1) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$2_5_1 next) null))) (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$2_5_1 next)))
 :qid |stdinbpl.3608:30|
 :skolemid |384|
 :pattern ( (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$2_5_1 next)))
 :pattern ( (select g_1 n$2_5_1) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) n$2_5_1 next))
)) (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@6) x@0 next) null))) (and (=> (= (ControlFlow 0 164) 162) anon249_Then_correct) (=> (= (ControlFlow 0 164) 163) anon249_Else_correct))))))))))))))
(let ((anon117_correct true))
(let ((anon248_Else_correct  (=> (and (not (and (select g_1 n$0_4) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_4 next) null)))) (= (ControlFlow 0 70) 67)) anon117_correct)))
(let ((anon248_Then_correct  (=> (and (select g_1 n$0_4) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_4 next) null))) (and (=> (= (ControlFlow 0 68) (- 0 69)) (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_4 next))) (=> (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$0_4 next)) (=> (= (ControlFlow 0 68) 67) anon117_correct))))))
(let ((anon114_correct  (=> (= Mask@0 (PolymorphicMapType_38126 (store (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@6) x@0 next (- (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@6) x@0 next) FullPerm)) (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@6) (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@6) (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@6))) (and (=> (= (ControlFlow 0 167) (- 0 170)) (forall ((n_22 T@Ref) ) (!  (=> (and (and (select g_1 n_22) (not (= n_22 x@0))) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_22 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3504:27|
 :skolemid |369|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_22 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@9) n_22 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_22 next))
))) (=> (forall ((n_22@@0 T@Ref) ) (!  (=> (and (and (select g_1 n_22@@0) (not (= n_22@@0 x@0))) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_22@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3504:27|
 :skolemid |369|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_22@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@9) n_22@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_22@@0 next))
)) (and (=> (= (ControlFlow 0 167) (- 0 169)) (forall ((n_22@@1 T@Ref) (n_22_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_22@@1 n_22_1)) (and (select g_1 n_22@@1) (not (= n_22@@1 x@0)))) (and (select g_1 n_22_1) (not (= n_22_1 x@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_22@@1 n_22_1)))
 :qid |stdinbpl.3511:27|
 :skolemid |370|
 :pattern ( (neverTriggered45 n_22@@1) (neverTriggered45 n_22_1))
))) (=> (forall ((n_22@@2 T@Ref) (n_22_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_22@@2 n_22_1@@0)) (and (select g_1 n_22@@2) (not (= n_22@@2 x@0)))) (and (select g_1 n_22_1@@0) (not (= n_22_1@@0 x@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_22@@2 n_22_1@@0)))
 :qid |stdinbpl.3511:27|
 :skolemid |370|
 :pattern ( (neverTriggered45 n_22@@2) (neverTriggered45 n_22_1@@0))
)) (and (=> (= (ControlFlow 0 167) (- 0 168)) (forall ((n_22@@3 T@Ref) ) (!  (=> (and (select g_1 n_22@@3) (not (= n_22@@3 x@0))) (>= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@0) n_22@@3 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.3518:27|
 :skolemid |371|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_22@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@9) n_22@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_22@@3 next))
))) (=> (forall ((n_22@@4 T@Ref) ) (!  (=> (and (select g_1 n_22@@4) (not (= n_22@@4 x@0))) (>= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@0) n_22@@4 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.3518:27|
 :skolemid |371|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_22@@4 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@9) n_22@@4 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_22@@4 next))
)) (=> (forall ((n_22@@5 T@Ref) ) (!  (=> (and (and (select g_1 n_22@@5) (not (= n_22@@5 x@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange45 n_22@@5) (= (invRecv45 n_22@@5) n_22@@5)))
 :qid |stdinbpl.3524:32|
 :skolemid |372|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_22@@5 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@9) n_22@@5 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_22@@5 next))
)) (=> (and (forall ((o_9@@29 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv45 o_9@@29)) (not (= (invRecv45 o_9@@29) x@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange45 o_9@@29))) (= (invRecv45 o_9@@29) o_9@@29))
 :qid |stdinbpl.3528:32|
 :skolemid |373|
 :pattern ( (invRecv45 o_9@@29))
)) (forall ((o_9@@30 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv45 o_9@@30)) (not (= (invRecv45 o_9@@30) x@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange45 o_9@@30))) (and (= (invRecv45 o_9@@30) o_9@@30) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@9) o_9@@30 next) (- (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@0) o_9@@30 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select g_1 (invRecv45 o_9@@30)) (not (= (invRecv45 o_9@@30) x@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange45 o_9@@30)))) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@9) o_9@@30 next) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@0) o_9@@30 next))))
 :qid |stdinbpl.3534:32|
 :skolemid |374|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@9) o_9@@30 next))
))) (=> (and (and (and (forall ((o_9@@31 T@Ref) (f_5@@19 T@Field_38165_53) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| Mask@0) o_9@@31 f_5@@19) (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@9) o_9@@31 f_5@@19)))
 :qid |stdinbpl.3540:39|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@9) o_9@@31 f_5@@19))
)) (forall ((o_9@@32 T@Ref) (f_5@@20 T@Field_38178_38179) ) (!  (=> (not (= f_5@@20 next)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@0) o_9@@32 f_5@@20) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@9) o_9@@32 f_5@@20)))
 :qid |stdinbpl.3540:39|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@9) o_9@@32 f_5@@20))
))) (forall ((o_9@@33 T@Ref) (f_5@@21 T@Field_25325_123987) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| Mask@0) o_9@@33 f_5@@21) (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@9) o_9@@33 f_5@@21)))
 :qid |stdinbpl.3540:39|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@9) o_9@@33 f_5@@21))
))) (forall ((o_9@@34 T@Ref) (f_5@@22 T@Field_25325_124120) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| Mask@0) o_9@@34 f_5@@22) (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@9) o_9@@34 f_5@@22)))
 :qid |stdinbpl.3540:39|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@9) o_9@@34 f_5@@22))
))) (and (and (=> (= (ControlFlow 0 167) 164) anon247_Else_correct) (=> (= (ControlFlow 0 167) 68) anon248_Then_correct)) (=> (= (ControlFlow 0 167) 70) anon248_Else_correct))))))))))))))
(let ((anon246_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 173) 167)) anon114_correct)))
(let ((anon246_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 171) (- 0 172)) (<= FullPerm (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@6) x@0 next))) (=> (<= FullPerm (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@6) x@0 next)) (=> (= (ControlFlow 0 171) 167) anon114_correct))))))
(let ((anon245_Else_correct  (=> (and (and (= save_g@0 ($$ ExhaleHeap@4 g_1)) (state ExhaleHeap@4 QPMask@6)) (and (state ExhaleHeap@4 QPMask@6) (state ExhaleHeap@4 QPMask@6))) (and (=> (= (ControlFlow 0 174) (- 0 178)) (HasDirectPerm_25325_25326 QPMask@6 x@0 next)) (=> (HasDirectPerm_25325_25326 QPMask@6 x@0 next) (=> (and (= t_2@1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) x@0 next)) (state ExhaleHeap@4 QPMask@6)) (and (=> (= (ControlFlow 0 174) (- 0 177)) (select g_1 x@0)) (=> (select g_1 x@0) (and (=> (= (ControlFlow 0 174) (- 0 176)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 174) (- 0 175)) (select g_1 x@0)) (=> (select g_1 x@0) (and (=> (= (ControlFlow 0 174) 171) anon246_Then_correct) (=> (= (ControlFlow 0 174) 173) anon246_Else_correct))))))))))))))
(let ((anon245_Then_correct  (and (=> (= (ControlFlow 0 64) (- 0 66)) (forall ((n_21 T@Ref) ) (!  (=> (and (select g_1 n_21) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_21 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3427:29|
 :skolemid |364|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_21 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@8) n_21 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_21 next))
))) (=> (forall ((n_21@@0 T@Ref) ) (!  (=> (and (select g_1 n_21@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_21@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3427:29|
 :skolemid |364|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_21@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@8) n_21@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_21@@0 next))
)) (and (=> (= (ControlFlow 0 64) (- 0 65)) (forall ((n_21@@1 T@Ref) (n_21_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_21@@1 n_21_1)) (select g_1 n_21@@1)) (select g_1 n_21_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_21@@1 n_21_1)))
 :qid |stdinbpl.3434:29|
 :skolemid |365|
 :pattern ( (neverTriggered44 n_21@@1) (neverTriggered44 n_21_1))
))) (=> (forall ((n_21@@2 T@Ref) (n_21_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_21@@2 n_21_1@@0)) (select g_1 n_21@@2)) (select g_1 n_21_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_21@@2 n_21_1@@0)))
 :qid |stdinbpl.3434:29|
 :skolemid |365|
 :pattern ( (neverTriggered44 n_21@@2) (neverTriggered44 n_21_1@@0))
)) (=> (= (ControlFlow 0 64) (- 0 63)) (forall ((n_21@@3 T@Ref) ) (!  (=> (select g_1 n_21@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@6) n_21@@3 next) NoPerm)))
 :qid |stdinbpl.3441:29|
 :skolemid |366|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_21@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@8) n_21@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n_21@@3 next))
)))))))))
(let ((anon110_correct  (=> (state ExhaleHeap@4 QPMask@6) (=> (and (and (not (= x@0 null)) (state ExhaleHeap@4 QPMask@6)) (and (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@4) save_y $allocated) (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@4) save_x $allocated))) (and (=> (= (ControlFlow 0 179) 64) anon245_Then_correct) (=> (= (ControlFlow 0 179) 174) anon245_Else_correct))))))
(let ((anon244_Else_correct  (=> (and (not (and (not (= y@0 null)) (not (= x@0 null)))) (= (ControlFlow 0 181) 179)) anon110_correct)))
(let ((anon244_Then_correct  (=> (and (and (not (= y@0 null)) (not (= x@0 null))) (and (edge old_g@0 y@0 x@0) (= (ControlFlow 0 180) 179))) anon110_correct)))
(let ((anon108_correct  (=> (and (and (state ExhaleHeap@4 QPMask@6) (forall ((v1_8_1 T@Ref) (v2_8_1 T@Ref) ) (!  (=> (exists_path ($$ ExhaleHeap@4 g_1) x@0 v1_8_1) (= (edge old_g@0 v1_8_1 v2_8_1) (edge ($$ ExhaleHeap@4 g_1) v1_8_1 v2_8_1)))
 :qid |stdinbpl.3393:24|
 :skolemid |362|
 :pattern ( (edge old_g@0 v1_8_1 v2_8_1))
 :pattern ( (edge (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) v1_8_1 v2_8_1))
))) (and (state ExhaleHeap@4 QPMask@6) (forall ((v1_9_1 T@Ref) (v2_9_1 T@Ref) ) (!  (=> (and (exists_path ($$ ExhaleHeap@4 g_1) y@0 v2_9_1) (not (= v1_9_1 y@0))) (= (edge old_g@0 v1_9_1 v2_9_1) (edge ($$ ExhaleHeap@4 g_1) v2_9_1 v1_9_1)))
 :qid |stdinbpl.3398:24|
 :skolemid |363|
 :pattern ( (edge old_g@0 v1_9_1 v2_9_1))
 :pattern ( (edge (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) v1_9_1 v2_9_1))
)))) (and (=> (= (ControlFlow 0 182) 180) anon244_Then_correct) (=> (= (ControlFlow 0 182) 181) anon244_Else_correct)))))
(let ((anon243_Else_correct  (=> (and (= x@0 null) (= (ControlFlow 0 184) 182)) anon108_correct)))
(let ((anon243_Then_correct  (=> (and (and (not (= x@0 null)) (state ExhaleHeap@4 QPMask@6)) (and (not (edge ($$ ExhaleHeap@4 g_1) x@0 y@0)) (= (ControlFlow 0 183) 182))) anon108_correct)))
(let ((anon242_Else_correct  (=> (not (and (not (= x@0 xe)) (not (= x@0 null)))) (and (=> (= (ControlFlow 0 186) 183) anon243_Then_correct) (=> (= (ControlFlow 0 186) 184) anon243_Else_correct)))))
(let ((anon242_Then_correct  (=> (and (and (not (= x@0 xe)) (not (= x@0 null))) (and (state ExhaleHeap@4 QPMask@6) (not (exists_path ($$ ExhaleHeap@4 g_1) x@0 xe)))) (and (=> (= (ControlFlow 0 185) 183) anon243_Then_correct) (=> (= (ControlFlow 0 185) 184) anon243_Else_correct)))))
(let ((anon104_correct  (=> (and (and (and (state ExhaleHeap@4 QPMask@6) (forall ((n_20 T@Ref) ) (!  (=> (select g_1 n_20) (or (exists_path ($$ ExhaleHeap@4 g_1) x@0 n_20) (exists_path ($$ ExhaleHeap@4 g_1) y@0 n_20)))
 :qid |stdinbpl.3374:24|
 :skolemid |361|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) x@0 n_20))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) y@0 n_20))
))) (and (state ExhaleHeap@4 QPMask@6) (acyclic_graph ($$ ExhaleHeap@4 g_1)))) (and (and (state ExhaleHeap@4 QPMask@6) (unshared_graph ($$ ExhaleHeap@4 g_1))) (and (state ExhaleHeap@4 QPMask@6) (func_graph ($$ ExhaleHeap@4 g_1))))) (and (=> (= (ControlFlow 0 187) 185) anon242_Then_correct) (=> (= (ControlFlow 0 187) 186) anon242_Else_correct)))))
(let ((anon241_Else_correct  (=> (and (= y@0 null) (= (ControlFlow 0 189) 187)) anon104_correct)))
(let ((anon241_Then_correct  (=> (not (= y@0 null)) (=> (and (select g_1 y@0) (= (ControlFlow 0 188) 187)) anon104_correct))))
(let ((anon240_Else_correct  (=> (= x@0 null) (and (=> (= (ControlFlow 0 191) 188) anon241_Then_correct) (=> (= (ControlFlow 0 191) 189) anon241_Else_correct)))))
(let ((anon240_Then_correct  (=> (and (not (= x@0 null)) (select g_1 x@0)) (and (=> (= (ControlFlow 0 190) 188) anon241_Then_correct) (=> (= (ControlFlow 0 190) 189) anon241_Else_correct)))))
(let ((anon239_Then_correct  (=> (and (state ExhaleHeap@4 ZeroMask) (not (select g_1 null))) (and (=> (= (ControlFlow 0 192) (- 0 193)) (forall ((n$1_3 T@Ref) (n$1_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_3 n$1_3_1)) (select g_1 n$1_3)) (select g_1 n$1_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_3 n$1_3_1)))
 :qid |stdinbpl.3331:19|
 :skolemid |354|
))) (=> (forall ((n$1_3@@0 T@Ref) (n$1_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_3@@0 n$1_3_1@@0)) (select g_1 n$1_3@@0)) (select g_1 n$1_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_3@@0 n$1_3_1@@0)))
 :qid |stdinbpl.3331:19|
 :skolemid |354|
)) (=> (and (and (forall ((n$1_3@@1 T@Ref) ) (!  (=> (and (select g_1 n$1_3@@1) (< NoPerm FullPerm)) (and (qpRange43 n$1_3@@1) (= (invRecv43 n$1_3@@1) n$1_3@@1)))
 :qid |stdinbpl.3337:26|
 :skolemid |355|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$1_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@6) n$1_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$1_3@@1 next))
)) (forall ((o_9@@35 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv43 o_9@@35)) (< NoPerm FullPerm)) (qpRange43 o_9@@35)) (= (invRecv43 o_9@@35) o_9@@35))
 :qid |stdinbpl.3341:26|
 :skolemid |356|
 :pattern ( (invRecv43 o_9@@35))
))) (and (forall ((n$1_3@@2 T@Ref) ) (!  (=> (select g_1 n$1_3@@2) (not (= n$1_3@@2 null)))
 :qid |stdinbpl.3347:26|
 :skolemid |357|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$1_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@6) n$1_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$1_3@@2 next))
)) (forall ((o_9@@36 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv43 o_9@@36)) (< NoPerm FullPerm)) (qpRange43 o_9@@36)) (and (=> (< NoPerm FullPerm) (= (invRecv43 o_9@@36) o_9@@36)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@6) o_9@@36 next) (+ (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| ZeroMask) o_9@@36 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv43 o_9@@36)) (< NoPerm FullPerm)) (qpRange43 o_9@@36))) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@6) o_9@@36 next) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| ZeroMask) o_9@@36 next))))
 :qid |stdinbpl.3353:26|
 :skolemid |358|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@6) o_9@@36 next))
)))) (=> (and (and (and (and (forall ((o_9@@37 T@Ref) (f_5@@23 T@Field_38165_53) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| ZeroMask) o_9@@37 f_5@@23) (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@6) o_9@@37 f_5@@23)))
 :qid |stdinbpl.3357:33|
 :skolemid |359|
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| ZeroMask) o_9@@37 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@6) o_9@@37 f_5@@23))
)) (forall ((o_9@@38 T@Ref) (f_5@@24 T@Field_38178_38179) ) (!  (=> (not (= f_5@@24 next)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| ZeroMask) o_9@@38 f_5@@24) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@6) o_9@@38 f_5@@24)))
 :qid |stdinbpl.3357:33|
 :skolemid |359|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| ZeroMask) o_9@@38 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@6) o_9@@38 f_5@@24))
))) (forall ((o_9@@39 T@Ref) (f_5@@25 T@Field_25325_123987) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| ZeroMask) o_9@@39 f_5@@25) (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@6) o_9@@39 f_5@@25)))
 :qid |stdinbpl.3357:33|
 :skolemid |359|
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| ZeroMask) o_9@@39 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@6) o_9@@39 f_5@@25))
))) (forall ((o_9@@40 T@Ref) (f_5@@26 T@Field_25325_124120) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| ZeroMask) o_9@@40 f_5@@26) (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@6) o_9@@40 f_5@@26)))
 :qid |stdinbpl.3357:33|
 :skolemid |359|
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| ZeroMask) o_9@@40 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@6) o_9@@40 f_5@@26))
))) (and (state ExhaleHeap@4 QPMask@6) (forall ((n$2_4_1 T@Ref) ) (!  (=> (and (select g_1 n$2_4_1) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$2_4_1 next) null))) (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$2_4_1 next)))
 :qid |stdinbpl.3363:24|
 :skolemid |360|
 :pattern ( (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$2_4_1 next)))
 :pattern ( (select g_1 n$2_4_1) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$2_4_1 next))
)))) (and (=> (= (ControlFlow 0 192) 190) anon240_Then_correct) (=> (= (ControlFlow 0 192) 191) anon240_Else_correct)))))))))
(let ((anon186_correct true))
(let ((anon282_Else_correct  (=> (and (not (and (not (= y@0 null)) (not (= x@0 null)))) (= (ControlFlow 0 50) 48)) anon186_correct)))
(let ((anon282_Then_correct  (=> (and (and (not (= y@0 null)) (not (= x@0 null))) (and (edge old_g@0 y@0 x@0) (= (ControlFlow 0 49) 48))) anon186_correct)))
(let ((anon184_correct  (=> (and (and (state ExhaleHeap@4 QPMask@7) (forall ((v1_21_1 T@Ref) (v2_21_1 T@Ref) ) (!  (=> (exists_path ($$ ExhaleHeap@4 g_1) x@0 v1_21_1) (= (edge old_g@0 v1_21_1 v2_21_1) (edge ($$ ExhaleHeap@4 g_1) v1_21_1 v2_21_1)))
 :qid |stdinbpl.4065:22|
 :skolemid |429|
 :pattern ( (edge old_g@0 v1_21_1 v2_21_1))
 :pattern ( (edge (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) v1_21_1 v2_21_1))
))) (and (state ExhaleHeap@4 QPMask@7) (forall ((v1_22_1 T@Ref) (v2_22_1 T@Ref) ) (!  (=> (and (exists_path ($$ ExhaleHeap@4 g_1) y@0 v2_22_1) (not (= v1_22_1 y@0))) (= (edge old_g@0 v1_22_1 v2_22_1) (edge ($$ ExhaleHeap@4 g_1) v2_22_1 v1_22_1)))
 :qid |stdinbpl.4070:22|
 :skolemid |430|
 :pattern ( (edge old_g@0 v1_22_1 v2_22_1))
 :pattern ( (edge (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) v1_22_1 v2_22_1))
)))) (and (=> (= (ControlFlow 0 51) 49) anon282_Then_correct) (=> (= (ControlFlow 0 51) 50) anon282_Else_correct)))))
(let ((anon281_Else_correct  (=> (and (= x@0 null) (= (ControlFlow 0 53) 51)) anon184_correct)))
(let ((anon281_Then_correct  (=> (and (and (not (= x@0 null)) (state ExhaleHeap@4 QPMask@7)) (and (not (edge ($$ ExhaleHeap@4 g_1) x@0 y@0)) (= (ControlFlow 0 52) 51))) anon184_correct)))
(let ((anon280_Else_correct  (=> (not (and (not (= x@0 xe)) (not (= x@0 null)))) (and (=> (= (ControlFlow 0 55) 52) anon281_Then_correct) (=> (= (ControlFlow 0 55) 53) anon281_Else_correct)))))
(let ((anon280_Then_correct  (=> (and (and (not (= x@0 xe)) (not (= x@0 null))) (and (state ExhaleHeap@4 QPMask@7) (not (exists_path ($$ ExhaleHeap@4 g_1) x@0 xe)))) (and (=> (= (ControlFlow 0 54) 52) anon281_Then_correct) (=> (= (ControlFlow 0 54) 53) anon281_Else_correct)))))
(let ((anon180_correct  (=> (and (and (and (state ExhaleHeap@4 QPMask@7) (forall ((n_27 T@Ref) ) (!  (=> (select g_1 n_27) (or (exists_path ($$ ExhaleHeap@4 g_1) x@0 n_27) (exists_path ($$ ExhaleHeap@4 g_1) y@0 n_27)))
 :qid |stdinbpl.4046:22|
 :skolemid |428|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) x@0 n_27))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5230 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) y@0 n_27))
))) (and (state ExhaleHeap@4 QPMask@7) (acyclic_graph ($$ ExhaleHeap@4 g_1)))) (and (and (state ExhaleHeap@4 QPMask@7) (unshared_graph ($$ ExhaleHeap@4 g_1))) (and (state ExhaleHeap@4 QPMask@7) (func_graph ($$ ExhaleHeap@4 g_1))))) (and (=> (= (ControlFlow 0 56) 54) anon280_Then_correct) (=> (= (ControlFlow 0 56) 55) anon280_Else_correct)))))
(let ((anon279_Else_correct  (=> (and (= y@0 null) (= (ControlFlow 0 58) 56)) anon180_correct)))
(let ((anon279_Then_correct  (=> (not (= y@0 null)) (=> (and (select g_1 y@0) (= (ControlFlow 0 57) 56)) anon180_correct))))
(let ((anon278_Else_correct  (=> (= x@0 null) (and (=> (= (ControlFlow 0 60) 57) anon279_Then_correct) (=> (= (ControlFlow 0 60) 58) anon279_Else_correct)))))
(let ((anon278_Then_correct  (=> (and (not (= x@0 null)) (select g_1 x@0)) (and (=> (= (ControlFlow 0 59) 57) anon279_Then_correct) (=> (= (ControlFlow 0 59) 58) anon279_Else_correct)))))
(let ((anon239_Else_correct  (=> (not (not (= x@0 null))) (=> (and (state ExhaleHeap@4 QPMask@5) (not (select g_1 null))) (and (=> (= (ControlFlow 0 61) (- 0 62)) (forall ((n$1_7_2 T@Ref) (n$1_7_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_7_2 n$1_7_3)) (select g_1 n$1_7_2)) (select g_1 n$1_7_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_7_2 n$1_7_3)))
 :qid |stdinbpl.4003:17|
 :skolemid |421|
))) (=> (forall ((n$1_7_2@@0 T@Ref) (n$1_7_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_7_2@@0 n$1_7_3@@0)) (select g_1 n$1_7_2@@0)) (select g_1 n$1_7_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_7_2@@0 n$1_7_3@@0)))
 :qid |stdinbpl.4003:17|
 :skolemid |421|
)) (=> (and (and (forall ((n$1_7_2@@1 T@Ref) ) (!  (=> (and (select g_1 n$1_7_2@@1) (< NoPerm FullPerm)) (and (qpRange51 n$1_7_2@@1) (= (invRecv51 n$1_7_2@@1) n$1_7_2@@1)))
 :qid |stdinbpl.4009:24|
 :skolemid |422|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$1_7_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@7) n$1_7_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$1_7_2@@1 next))
)) (forall ((o_9@@41 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv51 o_9@@41)) (< NoPerm FullPerm)) (qpRange51 o_9@@41)) (= (invRecv51 o_9@@41) o_9@@41))
 :qid |stdinbpl.4013:24|
 :skolemid |423|
 :pattern ( (invRecv51 o_9@@41))
))) (and (forall ((n$1_7_2@@2 T@Ref) ) (!  (=> (select g_1 n$1_7_2@@2) (not (= n$1_7_2@@2 null)))
 :qid |stdinbpl.4019:24|
 :skolemid |424|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$1_7_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@7) n$1_7_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$1_7_2@@2 next))
)) (forall ((o_9@@42 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv51 o_9@@42)) (< NoPerm FullPerm)) (qpRange51 o_9@@42)) (and (=> (< NoPerm FullPerm) (= (invRecv51 o_9@@42) o_9@@42)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@7) o_9@@42 next) (+ (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) o_9@@42 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv51 o_9@@42)) (< NoPerm FullPerm)) (qpRange51 o_9@@42))) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@7) o_9@@42 next) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) o_9@@42 next))))
 :qid |stdinbpl.4025:24|
 :skolemid |425|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@7) o_9@@42 next))
)))) (=> (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@27 T@Field_38165_53) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@5) o_9@@43 f_5@@27) (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@7) o_9@@43 f_5@@27)))
 :qid |stdinbpl.4029:31|
 :skolemid |426|
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@5) o_9@@43 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@7) o_9@@43 f_5@@27))
)) (forall ((o_9@@44 T@Ref) (f_5@@28 T@Field_38178_38179) ) (!  (=> (not (= f_5@@28 next)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) o_9@@44 f_5@@28) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@7) o_9@@44 f_5@@28)))
 :qid |stdinbpl.4029:31|
 :skolemid |426|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) o_9@@44 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@7) o_9@@44 f_5@@28))
))) (forall ((o_9@@45 T@Ref) (f_5@@29 T@Field_25325_123987) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@5) o_9@@45 f_5@@29) (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@7) o_9@@45 f_5@@29)))
 :qid |stdinbpl.4029:31|
 :skolemid |426|
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@5) o_9@@45 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@7) o_9@@45 f_5@@29))
))) (forall ((o_9@@46 T@Ref) (f_5@@30 T@Field_25325_124120) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@5) o_9@@46 f_5@@30) (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@7) o_9@@46 f_5@@30)))
 :qid |stdinbpl.4029:31|
 :skolemid |426|
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@5) o_9@@46 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@7) o_9@@46 f_5@@30))
))) (and (state ExhaleHeap@4 QPMask@7) (forall ((n$2_9_1 T@Ref) ) (!  (=> (and (select g_1 n$2_9_1) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$2_9_1 next) null))) (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$2_9_1 next)))
 :qid |stdinbpl.4035:22|
 :skolemid |427|
 :pattern ( (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$2_9_1 next)))
 :pattern ( (select g_1 n$2_9_1) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@4) n$2_9_1 next))
)))) (and (=> (= (ControlFlow 0 61) 59) anon278_Then_correct) (=> (= (ControlFlow 0 61) 60) anon278_Else_correct))))))))))
(let ((anon47_correct  (=> (and (and (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@4 QPMask@5) (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@4) x@0 $allocated)) (and (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@4) y@0 $allocated) (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@4) t_2@0 $allocated))) (and (and (=> (= (ControlFlow 0 284) 283) anon211_Then_correct) (=> (= (ControlFlow 0 284) 192) anon239_Then_correct)) (=> (= (ControlFlow 0 284) 61) anon239_Else_correct)))))
(let ((anon210_Else_correct  (=> (and (not (and (not (= null null)) (not (= xe null)))) (= (ControlFlow 0 287) 284)) anon47_correct)))
(let ((anon210_Then_correct  (=> (and (not (= null null)) (not (= xe null))) (and (=> (= (ControlFlow 0 285) (- 0 286)) (edge old_g@0 null xe)) (=> (edge old_g@0 null xe) (=> (= (ControlFlow 0 285) 284) anon47_correct))))))
(let ((anon208_Else_correct  (=> (forall ((v1_3_1 T@Ref) (v2_3_1 T@Ref) ) (!  (=> (and (exists_path ($$ Heap@@19 g_1) null v2_3_1) (not (= v1_3_1 null))) (= (edge old_g@0 v1_3_1 v2_3_1) (edge ($$ Heap@@19 g_1) v2_3_1 v1_3_1)))
 :qid |stdinbpl.2683:24|
 :skolemid |288|
 :pattern ( (edge old_g@0 v1_3_1 v2_3_1))
 :pattern ( (edge (|$$#frame| (FrameFragment_5230 (|$$#condqp1| Heap@@19 g_1)) g_1) v1_3_1 v2_3_1))
)) (and (=> (= (ControlFlow 0 288) 285) anon210_Then_correct) (=> (= (ControlFlow 0 288) 287) anon210_Else_correct)))))
(let ((anon44_correct true))
(let ((anon209_Else_correct  (=> (and (not (and (exists_path ($$ Heap@@19 g_1) null v2_2_1) (not (= v1_2_1 null)))) (= (ControlFlow 0 47) 44)) anon44_correct)))
(let ((anon209_Then_correct  (=> (and (exists_path ($$ Heap@@19 g_1) null v2_2_1) (not (= v1_2_1 null))) (and (=> (= (ControlFlow 0 45) (- 0 46)) (= (edge old_g@0 v1_2_1 v2_2_1) (edge ($$ Heap@@19 g_1) v2_2_1 v1_2_1))) (=> (= (edge old_g@0 v1_2_1 v2_2_1) (edge ($$ Heap@@19 g_1) v2_2_1 v1_2_1)) (=> (= (ControlFlow 0 45) 44) anon44_correct))))))
(let ((anon206_Else_correct  (=> (forall ((v1_1_1 T@Ref) (v2_1_1 T@Ref) ) (!  (=> (exists_path ($$ Heap@@19 g_1) xe v1_1_1) (= (edge old_g@0 v1_1_1 v2_1_1) (edge ($$ Heap@@19 g_1) v1_1_1 v2_1_1)))
 :qid |stdinbpl.2672:24|
 :skolemid |287|
 :pattern ( (edge old_g@0 v1_1_1 v2_1_1))
 :pattern ( (edge (|$$#frame| (FrameFragment_5230 (|$$#condqp1| Heap@@19 g_1)) g_1) v1_1_1 v2_1_1))
)) (and (and (=> (= (ControlFlow 0 289) 288) anon208_Else_correct) (=> (= (ControlFlow 0 289) 45) anon209_Then_correct)) (=> (= (ControlFlow 0 289) 47) anon209_Else_correct)))))
(let ((anon40_correct true))
(let ((anon207_Else_correct  (=> (and (not (exists_path ($$ Heap@@19 g_1) xe v1@@2)) (= (ControlFlow 0 43) 40)) anon40_correct)))
(let ((anon207_Then_correct  (=> (exists_path ($$ Heap@@19 g_1) xe v1@@2) (and (=> (= (ControlFlow 0 41) (- 0 42)) (= (edge old_g@0 v1@@2 v2@@2) (edge ($$ Heap@@19 g_1) v1@@2 v2@@2))) (=> (= (edge old_g@0 v1@@2 v2@@2) (edge ($$ Heap@@19 g_1) v1@@2 v2@@2)) (=> (= (ControlFlow 0 41) 40) anon40_correct))))))
(let ((anon205_Else_correct  (=> (= xe null) (and (and (=> (= (ControlFlow 0 292) 289) anon206_Else_correct) (=> (= (ControlFlow 0 292) 41) anon207_Then_correct)) (=> (= (ControlFlow 0 292) 43) anon207_Else_correct)))))
(let ((anon205_Then_correct  (=> (not (= xe null)) (and (=> (= (ControlFlow 0 290) (- 0 291)) (not (edge ($$ Heap@@19 g_1) xe null))) (=> (not (edge ($$ Heap@@19 g_1) xe null)) (and (and (=> (= (ControlFlow 0 290) 289) anon206_Else_correct) (=> (= (ControlFlow 0 290) 41) anon207_Then_correct)) (=> (= (ControlFlow 0 290) 43) anon207_Else_correct)))))))
(let ((anon204_Else_correct  (=> (not (and (not (= xe xe)) (not (= xe null)))) (and (=> (= (ControlFlow 0 295) 290) anon205_Then_correct) (=> (= (ControlFlow 0 295) 292) anon205_Else_correct)))))
(let ((anon204_Then_correct  (=> (and (not (= xe xe)) (not (= xe null))) (and (=> (= (ControlFlow 0 293) (- 0 294)) (not (exists_path ($$ Heap@@19 g_1) xe xe))) (=> (not (exists_path ($$ Heap@@19 g_1) xe xe)) (and (=> (= (ControlFlow 0 293) 290) anon205_Then_correct) (=> (= (ControlFlow 0 293) 292) anon205_Else_correct)))))))
(let ((anon202_Else_correct  (=> (forall ((n_8_1_1 T@Ref) ) (!  (=> (select g_1 n_8_1_1) (or (exists_path ($$ Heap@@19 g_1) xe n_8_1_1) (exists_path ($$ Heap@@19 g_1) null n_8_1_1)))
 :qid |stdinbpl.2647:24|
 :skolemid |286|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5230 (|$$#condqp1| Heap@@19 g_1)) g_1) xe n_8_1_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5230 (|$$#condqp1| Heap@@19 g_1)) g_1) null n_8_1_1))
)) (and (=> (= (ControlFlow 0 296) (- 0 299)) (acyclic_graph ($$ Heap@@19 g_1))) (=> (acyclic_graph ($$ Heap@@19 g_1)) (and (=> (= (ControlFlow 0 296) (- 0 298)) (unshared_graph ($$ Heap@@19 g_1))) (=> (unshared_graph ($$ Heap@@19 g_1)) (and (=> (= (ControlFlow 0 296) (- 0 297)) (func_graph ($$ Heap@@19 g_1))) (=> (func_graph ($$ Heap@@19 g_1)) (and (=> (= (ControlFlow 0 296) 293) anon204_Then_correct) (=> (= (ControlFlow 0 296) 295) anon204_Else_correct)))))))))))
(let ((anon32_correct true))
(let ((anon203_Else_correct  (=> (and (not (select g_1 n_7)) (= (ControlFlow 0 39) 36)) anon32_correct)))
(let ((anon203_Then_correct  (=> (select g_1 n_7) (and (=> (= (ControlFlow 0 37) (- 0 38)) (or (exists_path ($$ Heap@@19 g_1) xe n_7) (exists_path ($$ Heap@@19 g_1) null n_7))) (=> (or (exists_path ($$ Heap@@19 g_1) xe n_7) (exists_path ($$ Heap@@19 g_1) null n_7)) (=> (= (ControlFlow 0 37) 36) anon32_correct))))))
(let ((anon201_Else_correct  (=> (= null null) (and (and (=> (= (ControlFlow 0 302) 296) anon202_Else_correct) (=> (= (ControlFlow 0 302) 37) anon203_Then_correct)) (=> (= (ControlFlow 0 302) 39) anon203_Else_correct)))))
(let ((anon201_Then_correct  (=> (not (= null null)) (and (=> (= (ControlFlow 0 300) (- 0 301)) (select g_1 null)) (=> (select g_1 null) (and (and (=> (= (ControlFlow 0 300) 296) anon202_Else_correct) (=> (= (ControlFlow 0 300) 37) anon203_Then_correct)) (=> (= (ControlFlow 0 300) 39) anon203_Else_correct)))))))
(let ((anon200_Else_correct  (=> (= xe null) (and (=> (= (ControlFlow 0 305) 300) anon201_Then_correct) (=> (= (ControlFlow 0 305) 302) anon201_Else_correct)))))
(let ((anon200_Then_correct  (=> (not (= xe null)) (and (=> (= (ControlFlow 0 303) (- 0 304)) (select g_1 xe)) (=> (select g_1 xe) (and (=> (= (ControlFlow 0 303) 300) anon201_Then_correct) (=> (= (ControlFlow 0 303) 302) anon201_Else_correct)))))))
(let ((anon198_Else_correct  (=> (forall ((n$2_1_1 T@Ref) ) (!  (=> (and (select g_1 n$2_1_1) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$2_1_1 next) null))) (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$2_1_1 next)))
 :qid |stdinbpl.2628:24|
 :skolemid |285|
 :pattern ( (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$2_1_1 next)))
 :pattern ( (select g_1 n$2_1_1) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$2_1_1 next))
)) (and (=> (= (ControlFlow 0 306) 303) anon200_Then_correct) (=> (= (ControlFlow 0 306) 305) anon200_Else_correct)))))
(let ((anon24_correct true))
(let ((anon199_Else_correct  (=> (and (not (and (select g_1 n$2_6) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$2_6 next) null)))) (= (ControlFlow 0 35) 32)) anon24_correct)))
(let ((anon199_Then_correct  (=> (and (select g_1 n$2_6) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$2_6 next) null))) (and (=> (= (ControlFlow 0 33) (- 0 34)) (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$2_6 next))) (=> (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$2_6 next)) (=> (= (ControlFlow 0 33) 32) anon24_correct))))))
(let ((anon197_Else_correct  (=> (= old_g@0 ($$ Heap@@19 g_1)) (=> (and (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0)) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (=> (= (ControlFlow 0 307) (- 0 310)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 307) (- 0 309)) (forall ((n$1 T@Ref) (n$1_7 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1 n$1_7)) (select g_1 n$1)) (select g_1 n$1_7)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1 n$1_7)))
 :qid |stdinbpl.2587:21|
 :skolemid |279|
 :pattern ( (neverTriggered30 n$1) (neverTriggered30 n$1_7))
))) (=> (forall ((n$1@@0 T@Ref) (n$1_7@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1@@0 n$1_7@@0)) (select g_1 n$1@@0)) (select g_1 n$1_7@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1@@0 n$1_7@@0)))
 :qid |stdinbpl.2587:21|
 :skolemid |279|
 :pattern ( (neverTriggered30 n$1@@0) (neverTriggered30 n$1_7@@0))
)) (and (=> (= (ControlFlow 0 307) (- 0 308)) (forall ((n$1@@1 T@Ref) ) (!  (=> (select g_1 n$1@@1) (>= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) n$1@@1 next) FullPerm))
 :qid |stdinbpl.2594:21|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$1@@1 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) n$1@@1 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$1@@1 next))
))) (=> (forall ((n$1@@2 T@Ref) ) (!  (=> (select g_1 n$1@@2) (>= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) n$1@@2 next) FullPerm))
 :qid |stdinbpl.2594:21|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$1@@2 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) n$1@@2 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$1@@2 next))
)) (=> (forall ((n$1@@3 T@Ref) ) (!  (=> (and (select g_1 n$1@@3) (< NoPerm FullPerm)) (and (qpRange30 n$1@@3) (= (invRecv30 n$1@@3) n$1@@3)))
 :qid |stdinbpl.2600:26|
 :skolemid |281|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$1@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) n$1@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$1@@3 next))
)) (=> (and (forall ((o_9@@47 T@Ref) ) (!  (=> (and (select g_1 (invRecv30 o_9@@47)) (and (< NoPerm FullPerm) (qpRange30 o_9@@47))) (= (invRecv30 o_9@@47) o_9@@47))
 :qid |stdinbpl.2604:26|
 :skolemid |282|
 :pattern ( (invRecv30 o_9@@47))
)) (forall ((o_9@@48 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv30 o_9@@48)) (and (< NoPerm FullPerm) (qpRange30 o_9@@48))) (and (= (invRecv30 o_9@@48) o_9@@48) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) o_9@@48 next) (- (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) o_9@@48 next) FullPerm)))) (=> (not (and (select g_1 (invRecv30 o_9@@48)) (and (< NoPerm FullPerm) (qpRange30 o_9@@48)))) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) o_9@@48 next) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) o_9@@48 next))))
 :qid |stdinbpl.2610:26|
 :skolemid |283|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) o_9@@48 next))
))) (=> (and (and (and (forall ((o_9@@49 T@Ref) (f_5@@31 T@Field_38165_53) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@0) o_9@@49 f_5@@31) (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@5) o_9@@49 f_5@@31)))
 :qid |stdinbpl.2616:33|
 :skolemid |284|
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@5) o_9@@49 f_5@@31))
)) (forall ((o_9@@50 T@Ref) (f_5@@32 T@Field_38178_38179) ) (!  (=> (not (= f_5@@32 next)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) o_9@@50 f_5@@32) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) o_9@@50 f_5@@32)))
 :qid |stdinbpl.2616:33|
 :skolemid |284|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) o_9@@50 f_5@@32))
))) (forall ((o_9@@51 T@Ref) (f_5@@33 T@Field_25325_123987) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@0) o_9@@51 f_5@@33) (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@5) o_9@@51 f_5@@33)))
 :qid |stdinbpl.2616:33|
 :skolemid |284|
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@5) o_9@@51 f_5@@33))
))) (forall ((o_9@@52 T@Ref) (f_5@@34 T@Field_25325_124120) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@0) o_9@@52 f_5@@34) (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@5) o_9@@52 f_5@@34)))
 :qid |stdinbpl.2616:33|
 :skolemid |284|
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@5) o_9@@52 f_5@@34))
))) (and (and (=> (= (ControlFlow 0 307) 306) anon198_Else_correct) (=> (= (ControlFlow 0 307) 33) anon199_Then_correct)) (=> (= (ControlFlow 0 307) 35) anon199_Else_correct)))))))))))))))
(let ((anon197_Then_correct  (and (=> (= (ControlFlow 0 29) (- 0 31)) (forall ((n_6 T@Ref) ) (!  (=> (and (select g_1 n_6) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_6 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2521:21|
 :skolemid |274|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_6 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@4) n_6 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_6 next))
))) (=> (forall ((n_6@@0 T@Ref) ) (!  (=> (and (select g_1 n_6@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_6@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2521:21|
 :skolemid |274|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_6@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@4) n_6@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_6@@0 next))
)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (forall ((n_6@@1 T@Ref) (n_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@1 n_6_1)) (select g_1 n_6@@1)) (select g_1 n_6_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_6@@1 n_6_1)))
 :qid |stdinbpl.2528:21|
 :skolemid |275|
 :pattern ( (neverTriggered29 n_6@@1) (neverTriggered29 n_6_1))
))) (=> (forall ((n_6@@2 T@Ref) (n_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@2 n_6_1@@0)) (select g_1 n_6@@2)) (select g_1 n_6_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_6@@2 n_6_1@@0)))
 :qid |stdinbpl.2528:21|
 :skolemid |275|
 :pattern ( (neverTriggered29 n_6@@2) (neverTriggered29 n_6_1@@0))
)) (=> (= (ControlFlow 0 29) (- 0 28)) (forall ((n_6@@3 T@Ref) ) (!  (=> (select g_1 n_6@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) n_6@@3 next) NoPerm)))
 :qid |stdinbpl.2535:21|
 :skolemid |276|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@4) n_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_6@@3 next))
)))))))))
(let ((anon194_Else_correct  (=> (and (and (forall ((v_1_1 T@Ref) ) (!  (=> (select g_1 v_1_1) (exists_path ($$ Heap@@19 g_1) xe v_1_1))
 :qid |stdinbpl.2494:20|
 :skolemid |273|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5230 (|$$#condqp1| Heap@@19 g_1)) g_1) xe v_1_1))
)) (state Heap@@19 QPMask@0)) (and (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@19) t_2 $allocated) (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@19) x@@0 $allocated))) (and (=> (= (ControlFlow 0 311) 29) anon197_Then_correct) (=> (= (ControlFlow 0 311) 307) anon197_Else_correct)))))
(let ((anon196_Then_correct  (and (=> (= (ControlFlow 0 24) (- 0 26)) (forall ((n_5 T@Ref) ) (!  (=> (and (select g_1 n_5) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_5 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2456:25|
 :skolemid |268|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_5 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@27) n_5 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_5 next))
))) (=> (forall ((n_5@@0 T@Ref) ) (!  (=> (and (select g_1 n_5@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_5@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2456:25|
 :skolemid |268|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_5@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@27) n_5@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_5@@0 next))
)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (forall ((n_5@@1 T@Ref) (n_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@1 n_5_1)) (select g_1 n_5@@1)) (select g_1 n_5_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_5@@1 n_5_1)))
 :qid |stdinbpl.2463:25|
 :skolemid |269|
 :pattern ( (neverTriggered28 n_5@@1) (neverTriggered28 n_5_1))
))) (=> (forall ((n_5@@2 T@Ref) (n_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@2 n_5_1@@0)) (select g_1 n_5@@2)) (select g_1 n_5_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_5@@2 n_5_1@@0)))
 :qid |stdinbpl.2463:25|
 :skolemid |269|
 :pattern ( (neverTriggered28 n_5@@2) (neverTriggered28 n_5_1@@0))
)) (=> (= (ControlFlow 0 24) (- 0 23)) (forall ((n_5@@3 T@Ref) ) (!  (=> (select g_1 n_5@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) n_5@@3 next) NoPerm)))
 :qid |stdinbpl.2470:25|
 :skolemid |270|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@27) n_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_5@@3 next))
)))))))))
(let ((anon18_correct true))
(let ((anon195_Then_correct  (=> (select g_1 v_31) (and (=> (= (ControlFlow 0 27) 24) anon196_Then_correct) (=> (= (ControlFlow 0 27) 21) anon18_correct)))))
(let ((anon195_Else_correct  (=> (and (not (select g_1 v_31)) (= (ControlFlow 0 22) 21)) anon18_correct)))
(let ((anon193_Else_correct  (=> (func_graph ($$ Heap@@19 g_1)) (=> (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0)) (and (and (=> (= (ControlFlow 0 312) 311) anon194_Else_correct) (=> (= (ControlFlow 0 312) 27) anon195_Then_correct)) (=> (= (ControlFlow 0 312) 22) anon195_Else_correct))))))
(let ((anon193_Then_correct  (and (=> (= (ControlFlow 0 18) (- 0 20)) (forall ((n_4 T@Ref) ) (!  (=> (and (select g_1 n_4) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_4 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2406:21|
 :skolemid |263|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_4 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@3) n_4 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_4 next))
))) (=> (forall ((n_4@@0 T@Ref) ) (!  (=> (and (select g_1 n_4@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_4@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2406:21|
 :skolemid |263|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_4@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@3) n_4@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_4@@0 next))
)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (forall ((n_4@@1 T@Ref) (n_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4@@1 n_4_1)) (select g_1 n_4@@1)) (select g_1 n_4_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_4@@1 n_4_1)))
 :qid |stdinbpl.2413:21|
 :skolemid |264|
 :pattern ( (neverTriggered27 n_4@@1) (neverTriggered27 n_4_1))
))) (=> (forall ((n_4@@2 T@Ref) (n_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4@@2 n_4_1@@0)) (select g_1 n_4@@2)) (select g_1 n_4_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_4@@2 n_4_1@@0)))
 :qid |stdinbpl.2413:21|
 :skolemid |264|
 :pattern ( (neverTriggered27 n_4@@2) (neverTriggered27 n_4_1@@0))
)) (=> (= (ControlFlow 0 18) (- 0 17)) (forall ((n_4@@3 T@Ref) ) (!  (=> (select g_1 n_4@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) n_4@@3 next) NoPerm)))
 :qid |stdinbpl.2420:21|
 :skolemid |265|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@3) n_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_4@@3 next))
)))))))))
(let ((anon192_Else_correct  (=> (unshared_graph ($$ Heap@@19 g_1)) (=> (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0)) (and (=> (= (ControlFlow 0 313) 18) anon193_Then_correct) (=> (= (ControlFlow 0 313) 312) anon193_Else_correct))))))
(let ((anon192_Then_correct  (and (=> (= (ControlFlow 0 14) (- 0 16)) (forall ((n_3 T@Ref) ) (!  (=> (and (select g_1 n_3) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_3 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2358:21|
 :skolemid |258|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@2) n_3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_3 next))
))) (=> (forall ((n_3@@0 T@Ref) ) (!  (=> (and (select g_1 n_3@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_3@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2358:21|
 :skolemid |258|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_3@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@2) n_3@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_3@@0 next))
)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (forall ((n_3@@1 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@1 n_3_1)) (select g_1 n_3@@1)) (select g_1 n_3_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_3@@1 n_3_1)))
 :qid |stdinbpl.2365:21|
 :skolemid |259|
 :pattern ( (neverTriggered26 n_3@@1) (neverTriggered26 n_3_1))
))) (=> (forall ((n_3@@2 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@2 n_3_1@@0)) (select g_1 n_3@@2)) (select g_1 n_3_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_3@@2 n_3_1@@0)))
 :qid |stdinbpl.2365:21|
 :skolemid |259|
 :pattern ( (neverTriggered26 n_3@@2) (neverTriggered26 n_3_1@@0))
)) (=> (= (ControlFlow 0 14) (- 0 13)) (forall ((n_3@@3 T@Ref) ) (!  (=> (select g_1 n_3@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) n_3@@3 next) NoPerm)))
 :qid |stdinbpl.2372:21|
 :skolemid |260|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@2) n_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_3@@3 next))
)))))))))
(let ((anon191_Else_correct  (=> (acyclic_graph ($$ Heap@@19 g_1)) (=> (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0)) (and (=> (= (ControlFlow 0 314) 14) anon192_Then_correct) (=> (= (ControlFlow 0 314) 313) anon192_Else_correct))))))
(let ((anon191_Then_correct  (and (=> (= (ControlFlow 0 10) (- 0 12)) (forall ((n_2 T@Ref) ) (!  (=> (and (select g_1 n_2) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_2 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2310:21|
 :skolemid |253|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_2 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@1) n_2 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_2 next))
))) (=> (forall ((n_2@@0 T@Ref) ) (!  (=> (and (select g_1 n_2@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_2@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2310:21|
 :skolemid |253|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@1) n_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_2@@0 next))
)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (forall ((n_2@@1 T@Ref) (n_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@1 n_2_1)) (select g_1 n_2@@1)) (select g_1 n_2_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_2@@1 n_2_1)))
 :qid |stdinbpl.2317:21|
 :skolemid |254|
 :pattern ( (neverTriggered25 n_2@@1) (neverTriggered25 n_2_1))
))) (=> (forall ((n_2@@2 T@Ref) (n_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@2 n_2_1@@0)) (select g_1 n_2@@2)) (select g_1 n_2_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_2@@2 n_2_1@@0)))
 :qid |stdinbpl.2317:21|
 :skolemid |254|
 :pattern ( (neverTriggered25 n_2@@2) (neverTriggered25 n_2_1@@0))
)) (=> (= (ControlFlow 0 10) (- 0 9)) (forall ((n_2@@3 T@Ref) ) (!  (=> (select g_1 n_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) n_2@@3 next) NoPerm)))
 :qid |stdinbpl.2324:21|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@1) n_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_2@@3 next))
)))))))))
(let ((anon188_Else_correct  (=> (forall ((n$0_1 T@Ref) ) (!  (=> (and (select g_1 n$0_1) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$0_1 next) null))) (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$0_1 next)))
 :qid |stdinbpl.2292:20|
 :skolemid |252|
 :pattern ( (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$0_1 next)))
 :pattern ( (select g_1 n$0_1) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$0_1 next))
)) (=> (and (and (state Heap@@19 QPMask@0) (select g_1 xe)) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (=> (= (ControlFlow 0 315) 10) anon191_Then_correct) (=> (= (ControlFlow 0 315) 314) anon191_Else_correct))))))
(let ((anon7_correct true))
(let ((anon190_Else_correct  (=> (and (not (and (select g_1 n$0_36) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$0_36 next) null)))) (= (ControlFlow 0 5) 2)) anon7_correct)))
(let ((anon190_Then_correct  (=> (and (select g_1 n$0_36) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$0_36 next) null))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_25325_25326 QPMask@0 n$0_36 next)) (=> (HasDirectPerm_25325_25326 QPMask@0 n$0_36 next) (=> (= (ControlFlow 0 3) 2) anon7_correct))))))
(let ((anon189_Else_correct  (=> (not (select g_1 n$0_36)) (and (=> (= (ControlFlow 0 8) 3) anon190_Then_correct) (=> (= (ControlFlow 0 8) 5) anon190_Else_correct)))))
(let ((anon189_Then_correct  (=> (select g_1 n$0_36) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_25325_25326 QPMask@0 n$0_36 next)) (=> (HasDirectPerm_25325_25326 QPMask@0 n$0_36 next) (and (=> (= (ControlFlow 0 6) 3) anon190_Then_correct) (=> (= (ControlFlow 0 6) 5) anon190_Else_correct)))))))
(let ((anon187_Else_correct  (and (=> (= (ControlFlow 0 316) (- 0 317)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select g_1 n_1)) (select g_1 n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.2247:15|
 :skolemid |246|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select g_1 n_1@@0)) (select g_1 n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.2247:15|
 :skolemid |246|
)) (=> (and (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select g_1 n_1@@1) (< NoPerm FullPerm)) (and (qpRange24 n_1@@1) (= (invRecv24 n_1@@1) n_1@@1)))
 :qid |stdinbpl.2253:22|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_1@@1 next))
)) (forall ((o_9@@53 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv24 o_9@@53)) (< NoPerm FullPerm)) (qpRange24 o_9@@53)) (= (invRecv24 o_9@@53) o_9@@53))
 :qid |stdinbpl.2257:22|
 :skolemid |248|
 :pattern ( (invRecv24 o_9@@53))
))) (and (forall ((n_1@@2 T@Ref) ) (!  (=> (select g_1 n_1@@2) (not (= n_1@@2 null)))
 :qid |stdinbpl.2263:22|
 :skolemid |249|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_1@@2 next))
)) (forall ((o_9@@54 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv24 o_9@@54)) (< NoPerm FullPerm)) (qpRange24 o_9@@54)) (and (=> (< NoPerm FullPerm) (= (invRecv24 o_9@@54) o_9@@54)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) o_9@@54 next) (+ (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| ZeroMask) o_9@@54 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv24 o_9@@54)) (< NoPerm FullPerm)) (qpRange24 o_9@@54))) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) o_9@@54 next) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| ZeroMask) o_9@@54 next))))
 :qid |stdinbpl.2269:22|
 :skolemid |250|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) o_9@@54 next))
)))) (=> (and (and (and (and (forall ((o_9@@55 T@Ref) (f_5@@35 T@Field_38165_53) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| ZeroMask) o_9@@55 f_5@@35) (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@0) o_9@@55 f_5@@35)))
 :qid |stdinbpl.2273:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| ZeroMask) o_9@@55 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@0) o_9@@55 f_5@@35))
)) (forall ((o_9@@56 T@Ref) (f_5@@36 T@Field_38178_38179) ) (!  (=> (not (= f_5@@36 next)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| ZeroMask) o_9@@56 f_5@@36) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) o_9@@56 f_5@@36)))
 :qid |stdinbpl.2273:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| ZeroMask) o_9@@56 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) o_9@@56 f_5@@36))
))) (forall ((o_9@@57 T@Ref) (f_5@@37 T@Field_25325_123987) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| ZeroMask) o_9@@57 f_5@@37) (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@0) o_9@@57 f_5@@37)))
 :qid |stdinbpl.2273:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| ZeroMask) o_9@@57 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@0) o_9@@57 f_5@@37))
))) (forall ((o_9@@58 T@Ref) (f_5@@38 T@Field_25325_124120) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| ZeroMask) o_9@@58 f_5@@38) (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@0) o_9@@58 f_5@@38)))
 :qid |stdinbpl.2273:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| ZeroMask) o_9@@58 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@0) o_9@@58 f_5@@38))
))) (state Heap@@19 QPMask@0)) (and (and (=> (= (ControlFlow 0 316) 315) anon188_Else_correct) (=> (= (ControlFlow 0 316) 6) anon189_Then_correct)) (=> (= (ControlFlow 0 316) 8) anon189_Else_correct))))))))
(let ((anon187_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@19) xe $allocated) (not (select g_1 null)))) (and (=> (= (ControlFlow 0 318) 1) anon187_Then_correct) (=> (= (ControlFlow 0 318) 316) anon187_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 319) 318) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
