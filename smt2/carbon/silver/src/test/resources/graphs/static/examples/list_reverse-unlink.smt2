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
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (start T@Ref) (end T@Ref) ) (! (= (exists_path_ EG_1 start end)  (or (= start end) (exists ((w_2 T@Ref) ) (!  (and (edge EG_1 start w_2) (exists_path_ EG_1 w_2 end))
 :qid |stdinbpl.618:70|
 :skolemid |87|
 :pattern ( (edge EG_1 start w_2))
 :pattern ( (exists_path_ EG_1 w_2 end))
))))
 :qid |stdinbpl.616:15|
 :skolemid |88|
 :pattern ( (exists_path EG_1 start end))
 :pattern ( (edge EG_1 start end))
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
(assert (forall ((Heap@@2 T@PolymorphicMapType_38105) (ExhaleHeap T@PolymorphicMapType_38105) (Mask@@0 T@PolymorphicMapType_38126) (pm_f_25 T@Field_25325_123987) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_25325_124051 Mask@@0 null pm_f_25) (IsPredicateField_25325_124078 pm_f_25)) (= (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@2) null (PredicateMaskField_25325 pm_f_25)) (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap) null (PredicateMaskField_25325 pm_f_25)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_25325_124078 pm_f_25) (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap) null (PredicateMaskField_25325 pm_f_25)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_38105) (ExhaleHeap@@0 T@PolymorphicMapType_38105) (Mask@@1 T@PolymorphicMapType_38126) (pm_f_25@@0 T@Field_25325_123987) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_25325_124051 Mask@@1 null pm_f_25@@0) (IsWandField_25325_125627 pm_f_25@@0)) (= (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@3) null (WandMaskField_25325 pm_f_25@@0)) (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap@@0) null (WandMaskField_25325 pm_f_25@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_25325_125627 pm_f_25@@0) (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap@@0) null (WandMaskField_25325 pm_f_25@@0)))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_38105) (Mask@@2 T@PolymorphicMapType_38126) (refs@@1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@4 Mask@@2) (or (< AssumeFunctionsAbove 0) (|$$#trigger| (FrameFragment_5230 (|$$#condqp1| Heap@@4 refs@@1)) refs@@1))) (forall ((p_1 T@Ref) (s_2 T@Ref) ) (! (=  (and (select refs@@1 p_1) (and (select refs@@1 s_2) (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@4) p_1 next) s_2))) (select (|$$'| Heap@@4 refs@@1) (create_edge p_1 s_2)))
 :qid |stdinbpl.701:122|
 :skolemid |100|
 :pattern ( (create_edge p_1 s_2))
)))
 :qid |stdinbpl.699:15|
 :skolemid |101|
 :pattern ( (state Heap@@4 Mask@@2) (|$$'| Heap@@4 refs@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_38105) (ExhaleHeap@@1 T@PolymorphicMapType_38105) (Mask@@3 T@PolymorphicMapType_38126) (pm_f_25@@1 T@Field_25325_123987) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_25325_124051 Mask@@3 null pm_f_25@@1) (IsPredicateField_25325_124078 pm_f_25@@1)) (and (and (and (forall ((o2_25 T@Ref) (f_51 T@Field_38165_53) ) (!  (=> (select (|PolymorphicMapType_38654_38165_53#PolymorphicMapType_38654| (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@5) null (PredicateMaskField_25325 pm_f_25@@1))) o2_25 f_51) (= (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@5) o2_25 f_51) (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@@1) o2_25 f_51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@@1) o2_25 f_51))
)) (forall ((o2_25@@0 T@Ref) (f_51@@0 T@Field_38178_38179) ) (!  (=> (select (|PolymorphicMapType_38654_38165_38179#PolymorphicMapType_38654| (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@5) null (PredicateMaskField_25325 pm_f_25@@1))) o2_25@@0 f_51@@0) (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@5) o2_25@@0 f_51@@0) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@@1) o2_25@@0 f_51@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@@1) o2_25@@0 f_51@@0))
))) (forall ((o2_25@@1 T@Ref) (f_51@@1 T@Field_25325_123987) ) (!  (=> (select (|PolymorphicMapType_38654_38165_123987#PolymorphicMapType_38654| (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@5) null (PredicateMaskField_25325 pm_f_25@@1))) o2_25@@1 f_51@@1) (= (select (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@5) o2_25@@1 f_51@@1) (select (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| ExhaleHeap@@1) o2_25@@1 f_51@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| ExhaleHeap@@1) o2_25@@1 f_51@@1))
))) (forall ((o2_25@@2 T@Ref) (f_51@@2 T@Field_25325_124120) ) (!  (=> (select (|PolymorphicMapType_38654_38165_125100#PolymorphicMapType_38654| (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@5) null (PredicateMaskField_25325 pm_f_25@@1))) o2_25@@2 f_51@@2) (= (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@5) o2_25@@2 f_51@@2) (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap@@1) o2_25@@2 f_51@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap@@1) o2_25@@2 f_51@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (IsPredicateField_25325_124078 pm_f_25@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_38105) (ExhaleHeap@@2 T@PolymorphicMapType_38105) (Mask@@4 T@PolymorphicMapType_38126) (pm_f_25@@2 T@Field_25325_123987) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_25325_124051 Mask@@4 null pm_f_25@@2) (IsWandField_25325_125627 pm_f_25@@2)) (and (and (and (forall ((o2_25@@3 T@Ref) (f_51@@3 T@Field_38165_53) ) (!  (=> (select (|PolymorphicMapType_38654_38165_53#PolymorphicMapType_38654| (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@6) null (WandMaskField_25325 pm_f_25@@2))) o2_25@@3 f_51@@3) (= (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@6) o2_25@@3 f_51@@3) (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@@2) o2_25@@3 f_51@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@@2) o2_25@@3 f_51@@3))
)) (forall ((o2_25@@4 T@Ref) (f_51@@4 T@Field_38178_38179) ) (!  (=> (select (|PolymorphicMapType_38654_38165_38179#PolymorphicMapType_38654| (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@6) null (WandMaskField_25325 pm_f_25@@2))) o2_25@@4 f_51@@4) (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@6) o2_25@@4 f_51@@4) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@@2) o2_25@@4 f_51@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@@2) o2_25@@4 f_51@@4))
))) (forall ((o2_25@@5 T@Ref) (f_51@@5 T@Field_25325_123987) ) (!  (=> (select (|PolymorphicMapType_38654_38165_123987#PolymorphicMapType_38654| (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@6) null (WandMaskField_25325 pm_f_25@@2))) o2_25@@5 f_51@@5) (= (select (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@6) o2_25@@5 f_51@@5) (select (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| ExhaleHeap@@2) o2_25@@5 f_51@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| ExhaleHeap@@2) o2_25@@5 f_51@@5))
))) (forall ((o2_25@@6 T@Ref) (f_51@@6 T@Field_25325_124120) ) (!  (=> (select (|PolymorphicMapType_38654_38165_125100#PolymorphicMapType_38654| (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@6) null (WandMaskField_25325 pm_f_25@@2))) o2_25@@6 f_51@@6) (= (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@6) o2_25@@6 f_51@@6) (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap@@2) o2_25@@6 f_51@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap@@2) o2_25@@6 f_51@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (IsWandField_25325_125627 pm_f_25@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1@@2 (Array T@EdgeDomainType Bool)) (u_3 T@Ref) (v_2@@1 T@Ref) (w_2@@0 T@Ref) ) (!  (=> (and (exists_path_ EG_1@@2 u_3 w_2@@0) (exists_path_ EG_1@@2 w_2@@0 v_2@@1)) (exists_path_ EG_1@@2 u_3 v_2@@1))
 :qid |stdinbpl.625:15|
 :skolemid |89|
 :pattern ( (exists_path EG_1@@2 u_3 w_2@@0) (exists_path EG_1@@2 w_2@@0 v_2@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_38105) (ExhaleHeap@@3 T@PolymorphicMapType_38105) (Mask@@5 T@PolymorphicMapType_38126) (o_50 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (=> (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@7) o_50 $allocated) (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@@3) o_50 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@@3) o_50 $allocated))
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
(assert (forall ((Heap@@9 T@PolymorphicMapType_38105) (ExhaleHeap@@5 T@PolymorphicMapType_38105) (Mask@@15 T@PolymorphicMapType_38126) (o_50@@0 T@Ref) (f_51@@7 T@Field_25325_124120) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@15) (=> (HasDirectPerm_25325_128932 Mask@@15 o_50@@0 f_51@@7) (= (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@9) o_50@@0 f_51@@7) (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap@@5) o_50@@0 f_51@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@15) (select (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| ExhaleHeap@@5) o_50@@0 f_51@@7))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_38105) (ExhaleHeap@@6 T@PolymorphicMapType_38105) (Mask@@16 T@PolymorphicMapType_38126) (o_50@@1 T@Ref) (f_51@@8 T@Field_25325_123987) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@16) (=> (HasDirectPerm_25325_124051 Mask@@16 o_50@@1 f_51@@8) (= (select (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@10) o_50@@1 f_51@@8) (select (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| ExhaleHeap@@6) o_50@@1 f_51@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@16) (select (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| ExhaleHeap@@6) o_50@@1 f_51@@8))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_38105) (ExhaleHeap@@7 T@PolymorphicMapType_38105) (Mask@@17 T@PolymorphicMapType_38126) (o_50@@2 T@Ref) (f_51@@9 T@Field_38165_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@17) (=> (HasDirectPerm_25325_53 Mask@@17 o_50@@2 f_51@@9) (= (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@11) o_50@@2 f_51@@9) (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@@7) o_50@@2 f_51@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@17) (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| ExhaleHeap@@7) o_50@@2 f_51@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_38105) (ExhaleHeap@@8 T@PolymorphicMapType_38105) (Mask@@18 T@PolymorphicMapType_38126) (o_50@@3 T@Ref) (f_51@@10 T@Field_38178_38179) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@18) (=> (HasDirectPerm_25325_25326 Mask@@18 o_50@@3 f_51@@10) (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@12) o_50@@3 f_51@@10) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@@8) o_50@@3 f_51@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@18) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| ExhaleHeap@@8) o_50@@3 f_51@@10))
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
(assert (forall ((EG_1@@4 (Array T@EdgeDomainType Bool)) (p_1@@0 T@Ref) (s_2@@0 T@Ref) ) (! (= (edge_ EG_1@@4 p_1@@0 s_2@@0) (select EG_1@@4 (create_edge p_1@@0 s_2@@0)))
 :qid |stdinbpl.598:15|
 :skolemid |84|
 :pattern ( (select EG_1@@4 (create_edge p_1@@0 s_2@@0)))
 :pattern ( (edge EG_1@@4 p_1@@0 s_2@@0))
)))
(assert (forall ((p_1@@1 T@Ref) (s_2@@1 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@1 s_2@@1)) p_1@@1) (= (edge_succ (create_edge p_1@@1 s_2@@1)) s_2@@1))
 :qid |stdinbpl.555:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@1 s_2@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_38105) (o_39 T@Ref) (f_18 T@Field_25325_123987) (v T@FrameType) ) (! (succHeap Heap@@13 (PolymorphicMapType_38105 (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@13) (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@13) (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@13) (store (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@13) o_39 f_18 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38105 (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@13) (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@13) (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@13) (store (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@13) o_39 f_18 v)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_38105) (o_39@@0 T@Ref) (f_18@@0 T@Field_25325_124120) (v@@0 T@PolymorphicMapType_38654) ) (! (succHeap Heap@@14 (PolymorphicMapType_38105 (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@14) (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@14) (store (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@14) o_39@@0 f_18@@0 v@@0) (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38105 (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@14) (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@14) (store (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@14) o_39@@0 f_18@@0 v@@0) (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_38105) (o_39@@1 T@Ref) (f_18@@1 T@Field_38178_38179) (v@@1 T@Ref) ) (! (succHeap Heap@@15 (PolymorphicMapType_38105 (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@15) (store (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@15) o_39@@1 f_18@@1 v@@1) (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@15) (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38105 (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@15) (store (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@15) o_39@@1 f_18@@1 v@@1) (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@15) (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_38105) (o_39@@2 T@Ref) (f_18@@2 T@Field_38165_53) (v@@2 Bool) ) (! (succHeap Heap@@16 (PolymorphicMapType_38105 (store (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@16) o_39@@2 f_18@@2 v@@2) (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@16) (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@16) (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_38105 (store (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@16) o_39@@2 f_18@@2 v@@2) (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@16) (|PolymorphicMapType_38105_25325_124164#PolymorphicMapType_38105| Heap@@16) (|PolymorphicMapType_38105_38165_123987#PolymorphicMapType_38105| Heap@@16)))
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
(assert (forall ((o_39@@3 T@Ref) (f_45 T@Field_38178_38179) (Heap@@18 T@PolymorphicMapType_38105) ) (!  (=> (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@18) o_39@@3 $allocated) (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@18) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@18) o_39@@3 f_45) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@18) o_39@@3 f_45))
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
(assert (forall ((EG_1@@6 (Array T@EdgeDomainType Bool)) (p_1@@2 T@Ref) (s_2@@2 T@Ref) ) (! (= (edge EG_1@@6 p_1@@2 s_2@@2) (edge_ EG_1@@6 p_1@@2 s_2@@2))
 :qid |stdinbpl.592:15|
 :skolemid |83|
 :pattern ( (edge EG_1@@6 p_1@@2 s_2@@2))
)))
(assert (forall ((EG_1@@7 (Array T@EdgeDomainType Bool)) (start@@0 T@Ref) (end@@0 T@Ref) ) (! (= (exists_path EG_1@@7 start@@0 end@@0) (exists_path_ EG_1@@7 start@@0 end@@0))
 :qid |stdinbpl.610:15|
 :skolemid |86|
 :pattern ( (exists_path EG_1@@7 start@@0 end@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@19 () T@PolymorphicMapType_38105)
(declare-fun QPMask@3 () T@PolymorphicMapType_38126)
(declare-fun g_1 () (Array T@Ref Bool))
(declare-fun dummyFunction_25326 (T@Ref) Bool)
(declare-fun neverTriggered16 (T@Ref) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_38126)
(declare-fun PostHeap@0 () T@PolymorphicMapType_38105)
(declare-fun QPMask@2 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered15 (T@Ref) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_38126)
(declare-fun v1_28 () T@Ref)
(declare-fun x@@0 () T@Ref)
(declare-fun v2_28 () T@Ref)
(declare-fun QPMask@9 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered18 (T@Ref) Bool)
(declare-fun QPMask@8 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered17 (T@Ref) Bool)
(declare-fun QPMask@7 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered22 (T@Ref) Bool)
(declare-fun QPMask@6 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered21 (T@Ref) Bool)
(declare-fun QPMask@5 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered20 (T@Ref) Bool)
(declare-fun QPMask@4 () T@PolymorphicMapType_38126)
(declare-fun neverTriggered19 (T@Ref) Bool)
(declare-fun v1_29 () T@Ref)
(declare-fun v2_29 () T@Ref)
(declare-fun n$2_36 () T@Ref)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) T@Ref)
(declare-fun PostMask@0 () T@PolymorphicMapType_38126)
(declare-fun n$0_34 () T@Ref)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_38126)
(set-info :boogie-vc-id unlink)
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
 (=> (= (ControlFlow 0 0) 93) (let ((anon81_Then_correct  (and (=> (= (ControlFlow 0 76) (- 0 78)) (forall ((n_3 T@Ref) ) (!  (=> (and (select g_1 n_3) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_3 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1734:23|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@3) n_3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_3 next))
))) (=> (forall ((n_3@@0 T@Ref) ) (!  (=> (and (select g_1 n_3@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_3@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1734:23|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_3@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@3) n_3@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_3@@0 next))
)) (and (=> (= (ControlFlow 0 76) (- 0 77)) (forall ((n_3@@1 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@1 n_3_1)) (select g_1 n_3@@1)) (select g_1 n_3_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_3@@1 n_3_1)))
 :qid |stdinbpl.1741:23|
 :skolemid |200|
 :pattern ( (neverTriggered16 n_3@@1) (neverTriggered16 n_3_1))
))) (=> (forall ((n_3@@2 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@2 n_3_1@@0)) (select g_1 n_3@@2)) (select g_1 n_3_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_3@@2 n_3_1@@0)))
 :qid |stdinbpl.1741:23|
 :skolemid |200|
 :pattern ( (neverTriggered16 n_3@@2) (neverTriggered16 n_3_1@@0))
)) (=> (= (ControlFlow 0 76) (- 0 75)) (forall ((n_3@@3 T@Ref) ) (!  (=> (select g_1 n_3@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) n_3@@3 next) NoPerm)))
 :qid |stdinbpl.1748:23|
 :skolemid |201|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@3) n_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_3@@3 next))
)))))))))
(let ((anon80_Then_correct  (and (=> (= (ControlFlow 0 72) (- 0 74)) (forall ((n_2 T@Ref) ) (!  (=> (and (select g_1 n_2) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_2 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1691:23|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_2 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@2) n_2 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_2 next))
))) (=> (forall ((n_2@@0 T@Ref) ) (!  (=> (and (select g_1 n_2@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_2@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1691:23|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@2) n_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_2@@0 next))
)) (and (=> (= (ControlFlow 0 72) (- 0 73)) (forall ((n_2@@1 T@Ref) (n_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@1 n_2_1)) (select g_1 n_2@@1)) (select g_1 n_2_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_2@@1 n_2_1)))
 :qid |stdinbpl.1698:23|
 :skolemid |195|
 :pattern ( (neverTriggered15 n_2@@1) (neverTriggered15 n_2_1))
))) (=> (forall ((n_2@@2 T@Ref) (n_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@2 n_2_1@@0)) (select g_1 n_2@@2)) (select g_1 n_2_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_2@@2 n_2_1@@0)))
 :qid |stdinbpl.1698:23|
 :skolemid |195|
 :pattern ( (neverTriggered15 n_2@@2) (neverTriggered15 n_2_1@@0))
)) (=> (= (ControlFlow 0 72) (- 0 71)) (forall ((n_2@@3 T@Ref) ) (!  (=> (select g_1 n_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@1) n_2@@3 next) NoPerm)))
 :qid |stdinbpl.1705:23|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@2) n_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_2@@3 next))
)))))))))
(let ((anon32_correct true))
(let ((anon87_Else_correct  (=> (and (not (= v1_28 x@@0)) (= (ControlFlow 0 65) 61)) anon32_correct)))
(let ((anon87_Then_correct  (=> (= v1_28 x@@0) (and (=> (= (ControlFlow 0 63) (- 0 64)) (HasDirectPerm_25325_25326 QPMask@0 x@@0 next)) (=> (HasDirectPerm_25325_25326 QPMask@0 x@@0 next) (=> (= (ControlFlow 0 63) 61) anon32_correct))))))
(let ((anon86_Then_correct  (=> (edge ($$ Heap@@19 g_1) v1_28 v2_28) (and (=> (= (ControlFlow 0 66) 63) anon87_Then_correct) (=> (= (ControlFlow 0 66) 65) anon87_Else_correct)))))
(let ((anon86_Else_correct  (=> (and (not (edge ($$ Heap@@19 g_1) v1_28 v2_28)) (= (ControlFlow 0 62) 61)) anon32_correct)))
(let ((anon85_Then_correct  (and (=> (= (ControlFlow 0 58) (- 0 60)) (forall ((n_5 T@Ref) ) (!  (=> (and (select g_1 n_5) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_5 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1829:25|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_5 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@9) n_5 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_5 next))
))) (=> (forall ((n_5@@0 T@Ref) ) (!  (=> (and (select g_1 n_5@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_5@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1829:25|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_5@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@9) n_5@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_5@@0 next))
)) (and (=> (= (ControlFlow 0 58) (- 0 59)) (forall ((n_5@@1 T@Ref) (n_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@1 n_5_1)) (select g_1 n_5@@1)) (select g_1 n_5_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_5@@1 n_5_1)))
 :qid |stdinbpl.1836:25|
 :skolemid |210|
 :pattern ( (neverTriggered18 n_5@@1) (neverTriggered18 n_5_1))
))) (=> (forall ((n_5@@2 T@Ref) (n_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@2 n_5_1@@0)) (select g_1 n_5@@2)) (select g_1 n_5_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_5@@2 n_5_1@@0)))
 :qid |stdinbpl.1836:25|
 :skolemid |210|
 :pattern ( (neverTriggered18 n_5@@2) (neverTriggered18 n_5_1@@0))
)) (=> (= (ControlFlow 0 58) (- 0 57)) (forall ((n_5@@3 T@Ref) ) (!  (=> (select g_1 n_5@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) n_5@@3 next) NoPerm)))
 :qid |stdinbpl.1843:25|
 :skolemid |211|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@9) n_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_5@@3 next))
)))))))))
(let ((anon84_Then_correct  (and (=> (= (ControlFlow 0 54) (- 0 56)) (forall ((n_4_1 T@Ref) ) (!  (=> (and (select g_1 n_4_1) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_4_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1786:25|
 :skolemid |204|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_4_1 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@8) n_4_1 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_4_1 next))
))) (=> (forall ((n_4_1@@0 T@Ref) ) (!  (=> (and (select g_1 n_4_1@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_4_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1786:25|
 :skolemid |204|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_4_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@8) n_4_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_4_1@@0 next))
)) (and (=> (= (ControlFlow 0 54) (- 0 55)) (forall ((n_4_1@@1 T@Ref) (n_4_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4_1@@1 n_4_2)) (select g_1 n_4_1@@1)) (select g_1 n_4_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_4_1@@1 n_4_2)))
 :qid |stdinbpl.1793:25|
 :skolemid |205|
 :pattern ( (neverTriggered17 n_4_1@@1) (neverTriggered17 n_4_2))
))) (=> (forall ((n_4_1@@2 T@Ref) (n_4_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4_1@@2 n_4_2@@0)) (select g_1 n_4_1@@2)) (select g_1 n_4_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_4_1@@2 n_4_2@@0)))
 :qid |stdinbpl.1793:25|
 :skolemid |205|
 :pattern ( (neverTriggered17 n_4_1@@2) (neverTriggered17 n_4_2@@0))
)) (=> (= (ControlFlow 0 54) (- 0 53)) (forall ((n_4_1@@3 T@Ref) ) (!  (=> (select g_1 n_4_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@1) n_4_1@@3 next) NoPerm)))
 :qid |stdinbpl.1800:25|
 :skolemid |206|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_4_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@8) n_4_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_4_1@@3 next))
)))))))))
(let ((anon96_Then_correct  (and (=> (= (ControlFlow 0 40) (- 0 42)) (forall ((n_9 T@Ref) ) (!  (=> (and (select g_1 n_9) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_9 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2018:31|
 :skolemid |230|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_9 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@7) n_9 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_9 next))
))) (=> (forall ((n_9@@0 T@Ref) ) (!  (=> (and (select g_1 n_9@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_9@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2018:31|
 :skolemid |230|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_9@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@7) n_9@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_9@@0 next))
)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (forall ((n_9@@1 T@Ref) (n_9_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@1 n_9_1)) (select g_1 n_9@@1)) (select g_1 n_9_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_9@@1 n_9_1)))
 :qid |stdinbpl.2025:31|
 :skolemid |231|
 :pattern ( (neverTriggered22 n_9@@1) (neverTriggered22 n_9_1))
))) (=> (forall ((n_9@@2 T@Ref) (n_9_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@2 n_9_1@@0)) (select g_1 n_9@@2)) (select g_1 n_9_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_9@@2 n_9_1@@0)))
 :qid |stdinbpl.2025:31|
 :skolemid |231|
 :pattern ( (neverTriggered22 n_9@@2) (neverTriggered22 n_9_1@@0))
)) (=> (= (ControlFlow 0 40) (- 0 39)) (forall ((n_9@@3 T@Ref) ) (!  (=> (select g_1 n_9@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) n_9@@3 next) NoPerm)))
 :qid |stdinbpl.2032:31|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_9@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@7) n_9@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_9@@3 next))
)))))))))
(let ((anon94_Then_correct  (and (=> (= (ControlFlow 0 35) (- 0 37)) (forall ((n_8 T@Ref) ) (!  (=> (and (select g_1 n_8) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_8 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1977:29|
 :skolemid |225|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_8 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@6) n_8 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_8 next))
))) (=> (forall ((n_8@@0 T@Ref) ) (!  (=> (and (select g_1 n_8@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_8@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1977:29|
 :skolemid |225|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_8@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@6) n_8@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_8@@0 next))
)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (forall ((n_8@@1 T@Ref) (n_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@1 n_8_1)) (select g_1 n_8@@1)) (select g_1 n_8_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_8@@1 n_8_1)))
 :qid |stdinbpl.1984:29|
 :skolemid |226|
 :pattern ( (neverTriggered21 n_8@@1) (neverTriggered21 n_8_1))
))) (=> (forall ((n_8@@2 T@Ref) (n_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@2 n_8_1@@0)) (select g_1 n_8@@2)) (select g_1 n_8_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_8@@2 n_8_1@@0)))
 :qid |stdinbpl.1984:29|
 :skolemid |226|
 :pattern ( (neverTriggered21 n_8@@2) (neverTriggered21 n_8_1@@0))
)) (=> (= (ControlFlow 0 35) (- 0 34)) (forall ((n_8@@3 T@Ref) ) (!  (=> (select g_1 n_8@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) n_8@@3 next) NoPerm)))
 :qid |stdinbpl.1991:29|
 :skolemid |227|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@6) n_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_8@@3 next))
)))))))))
(let ((anon92_Then_correct  (and (=> (= (ControlFlow 0 30) (- 0 32)) (forall ((n_7 T@Ref) ) (!  (=> (and (select g_1 n_7) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_7 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1936:27|
 :skolemid |220|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_7 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) n_7 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_7 next))
))) (=> (forall ((n_7@@0 T@Ref) ) (!  (=> (and (select g_1 n_7@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_7@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1936:27|
 :skolemid |220|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_7@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) n_7@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_7@@0 next))
)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (forall ((n_7@@1 T@Ref) (n_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@1 n_7_1)) (select g_1 n_7@@1)) (select g_1 n_7_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_7@@1 n_7_1)))
 :qid |stdinbpl.1943:27|
 :skolemid |221|
 :pattern ( (neverTriggered20 n_7@@1) (neverTriggered20 n_7_1))
))) (=> (forall ((n_7@@2 T@Ref) (n_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@2 n_7_1@@0)) (select g_1 n_7@@2)) (select g_1 n_7_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_7@@2 n_7_1@@0)))
 :qid |stdinbpl.1943:27|
 :skolemid |221|
 :pattern ( (neverTriggered20 n_7@@2) (neverTriggered20 n_7_1@@0))
)) (=> (= (ControlFlow 0 30) (- 0 29)) (forall ((n_7@@3 T@Ref) ) (!  (=> (select g_1 n_7@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) n_7@@3 next) NoPerm)))
 :qid |stdinbpl.1950:27|
 :skolemid |222|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@5) n_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_7@@3 next))
)))))))))
(let ((anon91_Then_correct  (and (=> (= (ControlFlow 0 26) (- 0 28)) (forall ((n_6 T@Ref) ) (!  (=> (and (select g_1 n_6) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_6 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1893:27|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_6 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@4) n_6 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_6 next))
))) (=> (forall ((n_6@@0 T@Ref) ) (!  (=> (and (select g_1 n_6@@0) (dummyFunction_25326 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_6@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1893:27|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_6@@0 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@4) n_6@@0 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_6@@0 next))
)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (forall ((n_6@@1 T@Ref) (n_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@1 n_6_1)) (select g_1 n_6@@1)) (select g_1 n_6_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_6@@1 n_6_1)))
 :qid |stdinbpl.1900:27|
 :skolemid |216|
 :pattern ( (neverTriggered19 n_6@@1) (neverTriggered19 n_6_1))
))) (=> (forall ((n_6@@2 T@Ref) (n_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@2 n_6_1@@0)) (select g_1 n_6@@2)) (select g_1 n_6_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_6@@2 n_6_1@@0)))
 :qid |stdinbpl.1900:27|
 :skolemid |216|
 :pattern ( (neverTriggered19 n_6@@2) (neverTriggered19 n_6_1@@0))
)) (=> (= (ControlFlow 0 26) (- 0 25)) (forall ((n_6@@3 T@Ref) ) (!  (=> (select g_1 n_6@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@1) n_6@@3 next) NoPerm)))
 :qid |stdinbpl.1907:27|
 :skolemid |217|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@4) n_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n_6@@3 next))
)))))))))
(let ((anon48_correct true))
(let ((anon96_Else_correct  (and (=> (= (ControlFlow 0 43) (- 0 44)) (HasDirectPerm_25325_25326 QPMask@0 x@@0 next)) (=> (HasDirectPerm_25325_25326 QPMask@0 x@@0 next) (=> (= (ControlFlow 0 43) 23) anon48_correct)))))
(let ((anon95_Then_correct  (=> (exists_path ($$ Heap@@19 g_1) v1_29 x@@0) (and (=> (= (ControlFlow 0 45) 40) anon96_Then_correct) (=> (= (ControlFlow 0 45) 43) anon96_Else_correct)))))
(let ((anon95_Else_correct  (=> (and (not (exists_path ($$ Heap@@19 g_1) v1_29 x@@0)) (= (ControlFlow 0 38) 23)) anon48_correct)))
(let ((anon93_Then_correct  (=> (exists_path ($$ Heap@@19 g_1) v1_29 v2_29) (and (and (=> (= (ControlFlow 0 46) 35) anon94_Then_correct) (=> (= (ControlFlow 0 46) 45) anon95_Then_correct)) (=> (= (ControlFlow 0 46) 38) anon95_Else_correct)))))
(let ((anon93_Else_correct  (=> (and (not (exists_path ($$ Heap@@19 g_1) v1_29 v2_29)) (= (ControlFlow 0 33) 23)) anon48_correct)))
(let ((anon90_Then_correct  (=> (not (= v1_29 v2_29)) (and (and (and (=> (= (ControlFlow 0 47) 26) anon91_Then_correct) (=> (= (ControlFlow 0 47) 30) anon92_Then_correct)) (=> (= (ControlFlow 0 47) 46) anon93_Then_correct)) (=> (= (ControlFlow 0 47) 33) anon93_Else_correct)))))
(let ((anon90_Else_correct  (=> (and (= v1_29 v2_29) (= (ControlFlow 0 24) 23)) anon48_correct)))
(let ((anon50_correct true))
(let ((anon89_Else_correct  (=> (and (forall ((v1_3 T@Ref) (v2_3 T@Ref) ) (!  (=> (not (= v1_3 v2_3)) (= (exists_path ($$ PostHeap@0 g_1) v1_3 v2_3)  (and (exists_path ($$ Heap@@19 g_1) v1_3 v2_3) (not (and (exists_path ($$ Heap@@19 g_1) v1_3 x@@0) (exists_path ($$ Heap@@19 g_1) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) x@@0 next) v2_3))))))
 :qid |stdinbpl.2057:22|
 :skolemid |235|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5230 (|$$#condqp1| PostHeap@0 g_1)) g_1) v1_3 v2_3))
)) (= (ControlFlow 0 22) 20)) anon50_correct)))
(let ((anon88_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) x@@0 next) null)) (state PostHeap@0 QPMask@1)) (and (and (=> (= (ControlFlow 0 48) 22) anon89_Else_correct) (=> (= (ControlFlow 0 48) 47) anon90_Then_correct)) (=> (= (ControlFlow 0 48) 24) anon90_Else_correct)))))
(let ((anon88_Else_correct  (=> (and (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) x@@0 next) null) (= (ControlFlow 0 21) 20)) anon50_correct)))
(let ((anon34_correct  (=> (state PostHeap@0 QPMask@1) (and (=> (= (ControlFlow 0 49) (- 0 50)) (HasDirectPerm_25325_25326 QPMask@0 x@@0 next)) (=> (HasDirectPerm_25325_25326 QPMask@0 x@@0 next) (and (=> (= (ControlFlow 0 49) 48) anon88_Then_correct) (=> (= (ControlFlow 0 49) 21) anon88_Else_correct)))))))
(let ((anon83_Else_correct  (=> (and (forall ((v1_1 T@Ref) (v2_1 T@Ref) ) (! (= (edge ($$ PostHeap@0 g_1) v1_1 v2_1)  (and (edge ($$ Heap@@19 g_1) v1_1 v2_1) (not (and (= v1_1 x@@0) (= v2_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) x@@0 next))))))
 :qid |stdinbpl.1869:22|
 :skolemid |214|
 :pattern ( (edge (|$$#frame| (FrameFragment_5230 (|$$#condqp1| PostHeap@0 g_1)) g_1) v1_1 v2_1))
)) (= (ControlFlow 0 52) 49)) anon34_correct)))
(let ((anon82_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) x@@0 next) null)) (state PostHeap@0 QPMask@1)) (and (and (and (and (=> (= (ControlFlow 0 67) 52) anon83_Else_correct) (=> (= (ControlFlow 0 67) 54) anon84_Then_correct)) (=> (= (ControlFlow 0 67) 58) anon85_Then_correct)) (=> (= (ControlFlow 0 67) 66) anon86_Then_correct)) (=> (= (ControlFlow 0 67) 62) anon86_Else_correct)))))
(let ((anon82_Else_correct  (=> (and (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) x@@0 next) null) (= (ControlFlow 0 51) 49)) anon34_correct)))
(let ((anon23_correct  (=> (state PostHeap@0 QPMask@1) (and (=> (= (ControlFlow 0 68) (- 0 69)) (HasDirectPerm_25325_25326 QPMask@0 x@@0 next)) (=> (HasDirectPerm_25325_25326 QPMask@0 x@@0 next) (and (=> (= (ControlFlow 0 68) 67) anon82_Then_correct) (=> (= (ControlFlow 0 68) 51) anon82_Else_correct)))))))
(let ((anon81_Else_correct  (=> (and (|Set#Equal_25332| ($$ PostHeap@0 g_1) ($$ Heap@@19 g_1)) (= (ControlFlow 0 79) 68)) anon23_correct)))
(let ((anon79_Then_correct  (=> (and (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) x@@0 next) null) (state PostHeap@0 QPMask@1)) (and (and (=> (= (ControlFlow 0 80) 72) anon80_Then_correct) (=> (= (ControlFlow 0 80) 76) anon81_Then_correct)) (=> (= (ControlFlow 0 80) 79) anon81_Else_correct)))))
(let ((anon79_Else_correct  (=> (and (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) x@@0 next) null)) (= (ControlFlow 0 70) 68)) anon23_correct)))
(let ((anon76_Else_correct  (=> (and (forall ((n$2_1_1 T@Ref) ) (!  (=> (and (select g_1 n$2_1_1) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n$2_1_1 next) null))) (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n$2_1_1 next)))
 :qid |stdinbpl.1664:20|
 :skolemid |193|
 :pattern ( (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n$2_1_1 next)))
 :pattern ( (select g_1 n$2_1_1) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n$2_1_1 next))
)) (state PostHeap@0 QPMask@1)) (and (=> (= (ControlFlow 0 81) (- 0 83)) (HasDirectPerm_25325_25326 QPMask@1 x@@0 next)) (=> (HasDirectPerm_25325_25326 QPMask@1 x@@0 next) (=> (and (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) x@@0 next) null) (state PostHeap@0 QPMask@1)) (and (=> (= (ControlFlow 0 81) (- 0 82)) (HasDirectPerm_25325_25326 QPMask@0 x@@0 next)) (=> (HasDirectPerm_25325_25326 QPMask@0 x@@0 next) (and (=> (= (ControlFlow 0 81) 80) anon79_Then_correct) (=> (= (ControlFlow 0 81) 70) anon79_Else_correct))))))))))
(let ((anon16_correct true))
(let ((anon78_Else_correct  (=> (and (not (and (select g_1 n$2_36) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n$2_36 next) null)))) (= (ControlFlow 0 16) 13)) anon16_correct)))
(let ((anon78_Then_correct  (=> (and (select g_1 n$2_36) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n$2_36 next) null))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_25325_25326 QPMask@1 n$2_36 next)) (=> (HasDirectPerm_25325_25326 QPMask@1 n$2_36 next) (=> (= (ControlFlow 0 14) 13) anon16_correct))))))
(let ((anon77_Else_correct  (=> (not (select g_1 n$2_36)) (and (=> (= (ControlFlow 0 19) 14) anon78_Then_correct) (=> (= (ControlFlow 0 19) 16) anon78_Else_correct)))))
(let ((anon77_Then_correct  (=> (select g_1 n$2_36) (and (=> (= (ControlFlow 0 17) (- 0 18)) (HasDirectPerm_25325_25326 QPMask@1 n$2_36 next)) (=> (HasDirectPerm_25325_25326 QPMask@1 n$2_36 next) (and (=> (= (ControlFlow 0 17) 14) anon78_Then_correct) (=> (= (ControlFlow 0 17) 16) anon78_Else_correct)))))))
(let ((anon75_Else_correct  (and (=> (= (ControlFlow 0 84) (- 0 86)) (forall ((n$1_1 T@Ref) (n$1_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1 n$1_1_1)) (and (select g_1 n$1_1) (not (= n$1_1 x@@0)))) (and (select g_1 n$1_1_1) (not (= n$1_1_1 x@@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_1 n$1_1_1)))
 :qid |stdinbpl.1613:15|
 :skolemid |186|
))) (=> (forall ((n$1_1@@0 T@Ref) (n$1_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1@@0 n$1_1_1@@0)) (and (select g_1 n$1_1@@0) (not (= n$1_1@@0 x@@0)))) (and (select g_1 n$1_1_1@@0) (not (= n$1_1_1@@0 x@@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_1@@0 n$1_1_1@@0)))
 :qid |stdinbpl.1613:15|
 :skolemid |186|
)) (=> (and (forall ((n$1_1@@1 T@Ref) ) (!  (=> (and (and (select g_1 n$1_1@@1) (not (= n$1_1@@1 x@@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange14 n$1_1@@1) (= (invRecv14 n$1_1@@1) n$1_1@@1)))
 :qid |stdinbpl.1619:22|
 :skolemid |187|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n$1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@1) n$1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n$1_1@@1 next))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv14 o_4)) (not (= (invRecv14 o_4) x@@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange14 o_4)) (= (invRecv14 o_4) o_4))
 :qid |stdinbpl.1623:22|
 :skolemid |188|
 :pattern ( (invRecv14 o_4))
))) (and (=> (= (ControlFlow 0 84) (- 0 85)) (forall ((n$1_1@@2 T@Ref) ) (!  (=> (and (select g_1 n$1_1@@2) (not (= n$1_1@@2 x@@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1629:15|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n$1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@1) n$1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n$1_1@@2 next))
))) (=> (forall ((n$1_1@@3 T@Ref) ) (!  (=> (and (select g_1 n$1_1@@3) (not (= n$1_1@@3 x@@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1629:15|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n$1_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@1) n$1_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n$1_1@@3 next))
)) (=> (and (forall ((n$1_1@@4 T@Ref) ) (!  (=> (and (and (select g_1 n$1_1@@4) (not (= n$1_1@@4 x@@0))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$1_1@@4 null)))
 :qid |stdinbpl.1635:22|
 :skolemid |190|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n$1_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@1) n$1_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| PostHeap@0) n$1_1@@4 next))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv14 o_4@@0)) (not (= (invRecv14 o_4@@0) x@@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange14 o_4@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv14 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@1) o_4@@0 next) (+ (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| PostMask@0) o_4@@0 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv14 o_4@@0)) (not (= (invRecv14 o_4@@0) x@@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange14 o_4@@0))) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@1) o_4@@0 next) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| PostMask@0) o_4@@0 next))))
 :qid |stdinbpl.1641:22|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@1) o_4@@0 next))
))) (=> (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_38165_53) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| PostMask@0) o_4@@1 f_5) (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@1) o_4@@1 f_5)))
 :qid |stdinbpl.1645:29|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| PostMask@0) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@1) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_38178_38179) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| PostMask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@1) o_4@@2 f_5@@0)))
 :qid |stdinbpl.1645:29|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| PostMask@0) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@1) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_25325_123987) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| PostMask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@1) o_4@@3 f_5@@1)))
 :qid |stdinbpl.1645:29|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| PostMask@0) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@1) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_25325_124120) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| PostMask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@1) o_4@@4 f_5@@2)))
 :qid |stdinbpl.1645:29|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| PostMask@0) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@1) o_4@@4 f_5@@2))
))) (state PostHeap@0 QPMask@1)) (and (and (=> (= (ControlFlow 0 84) 81) anon76_Else_correct) (=> (= (ControlFlow 0 84) 17) anon77_Then_correct)) (=> (= (ControlFlow 0 84) 19) anon77_Else_correct)))))))))))
(let ((anon75_Then_correct true))
(let ((anon74_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (not (select g_1 null))) (=> (and (and (select g_1 x@@0) (not (= x@@0 null))) (and (= PostMask@0 (PolymorphicMapType_38126 (store (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| ZeroMask) x@@0 next (+ (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| ZeroMask) x@@0 next) FullPerm)) (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| ZeroMask) (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| ZeroMask) (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| ZeroMask))) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 87) 12) anon75_Then_correct) (=> (= (ControlFlow 0 87) 84) anon75_Else_correct))))))
(let ((anon74_Else_correct true))
(let ((anon71_Else_correct  (=> (and (forall ((n$0_1 T@Ref) ) (!  (=> (and (select g_1 n$0_1) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$0_1 next) null))) (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$0_1 next)))
 :qid |stdinbpl.1584:20|
 :skolemid |185|
 :pattern ( (select g_1 (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$0_1 next)))
 :pattern ( (select g_1 n$0_1) (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$0_1 next))
)) (state Heap@@19 QPMask@0)) (and (=> (= (ControlFlow 0 88) 87) anon74_Then_correct) (=> (= (ControlFlow 0 88) 10) anon74_Else_correct)))))
(let ((anon7_correct true))
(let ((anon73_Else_correct  (=> (and (not (and (select g_1 n$0_34) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$0_34 next) null)))) (= (ControlFlow 0 5) 2)) anon7_correct)))
(let ((anon73_Then_correct  (=> (and (select g_1 n$0_34) (not (= (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n$0_34 next) null))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_25325_25326 QPMask@0 n$0_34 next)) (=> (HasDirectPerm_25325_25326 QPMask@0 n$0_34 next) (=> (= (ControlFlow 0 3) 2) anon7_correct))))))
(let ((anon72_Else_correct  (=> (not (select g_1 n$0_34)) (and (=> (= (ControlFlow 0 8) 3) anon73_Then_correct) (=> (= (ControlFlow 0 8) 5) anon73_Else_correct)))))
(let ((anon72_Then_correct  (=> (select g_1 n$0_34) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_25325_25326 QPMask@0 n$0_34 next)) (=> (HasDirectPerm_25325_25326 QPMask@0 n$0_34 next) (and (=> (= (ControlFlow 0 6) 3) anon73_Then_correct) (=> (= (ControlFlow 0 6) 5) anon73_Else_correct)))))))
(let ((anon70_Else_correct  (and (=> (= (ControlFlow 0 89) (- 0 91)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (and (select g_1 n_1) (not (= n_1 x@@0)))) (and (select g_1 n_1_1) (not (= n_1_1 x@@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_1 n_1_1)))
 :qid |stdinbpl.1533:15|
 :skolemid |178|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (and (select g_1 n_1@@0) (not (= n_1@@0 x@@0)))) (and (select g_1 n_1_1@@0) (not (= n_1_1@@0 x@@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.1533:15|
 :skolemid |178|
)) (=> (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (and (select g_1 n_1@@1) (not (= n_1@@1 x@@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange13 n_1@@1) (= (invRecv13 n_1@@1) n_1@@1)))
 :qid |stdinbpl.1539:22|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_1@@1 next))
)) (forall ((o_4@@5 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv13 o_4@@5)) (not (= (invRecv13 o_4@@5) x@@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange13 o_4@@5)) (= (invRecv13 o_4@@5) o_4@@5))
 :qid |stdinbpl.1543:22|
 :skolemid |180|
 :pattern ( (invRecv13 o_4@@5))
))) (and (=> (= (ControlFlow 0 89) (- 0 90)) (forall ((n_1@@2 T@Ref) ) (!  (=> (and (select g_1 n_1@@2) (not (= n_1@@2 x@@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1549:15|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_1@@2 next))
))) (=> (forall ((n_1@@3 T@Ref) ) (!  (=> (and (select g_1 n_1@@3) (not (= n_1@@3 x@@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1549:15|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) n_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_1@@3 next))
)) (=> (and (forall ((n_1@@4 T@Ref) ) (!  (=> (and (and (select g_1 n_1@@4) (not (= n_1@@4 x@@0))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n_1@@4 null)))
 :qid |stdinbpl.1555:22|
 :skolemid |182|
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) n_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_38105_24725_24726#PolymorphicMapType_38105| Heap@@19) n_1@@4 next))
)) (forall ((o_4@@6 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv13 o_4@@6)) (not (= (invRecv13 o_4@@6) x@@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange13 o_4@@6)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv13 o_4@@6) o_4@@6)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) o_4@@6 next) (+ (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@0) o_4@@6 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv13 o_4@@6)) (not (= (invRecv13 o_4@@6) x@@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange13 o_4@@6))) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) o_4@@6 next) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@0) o_4@@6 next))))
 :qid |stdinbpl.1561:22|
 :skolemid |183|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) o_4@@6 next))
))) (=> (and (and (and (and (forall ((o_4@@7 T@Ref) (f_5@@3 T@Field_38165_53) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| Mask@0) o_4@@7 f_5@@3) (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@0) o_4@@7 f_5@@3)))
 :qid |stdinbpl.1565:29|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| Mask@0) o_4@@7 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| QPMask@0) o_4@@7 f_5@@3))
)) (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_38178_38179) ) (!  (=> (not (= f_5@@4 next)) (= (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@0) o_4@@8 f_5@@4) (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) o_4@@8 f_5@@4)))
 :qid |stdinbpl.1565:29|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| Mask@0) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| QPMask@0) o_4@@8 f_5@@4))
))) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_25325_123987) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| Mask@0) o_4@@9 f_5@@5) (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@0) o_4@@9 f_5@@5)))
 :qid |stdinbpl.1565:29|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| Mask@0) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| QPMask@0) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_25325_124120) ) (!  (=> true (= (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| Mask@0) o_4@@10 f_5@@6) (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@0) o_4@@10 f_5@@6)))
 :qid |stdinbpl.1565:29|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| Mask@0) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| QPMask@0) o_4@@10 f_5@@6))
))) (state Heap@@19 QPMask@0)) (and (and (=> (= (ControlFlow 0 89) 88) anon71_Else_correct) (=> (= (ControlFlow 0 89) 6) anon72_Then_correct)) (=> (= (ControlFlow 0 89) 8) anon72_Else_correct)))))))))))
(let ((anon70_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (and (select (|PolymorphicMapType_38105_24722_53#PolymorphicMapType_38105| Heap@@19) x@@0 $allocated) (select g_1 x@@0)) (and (state Heap@@19 ZeroMask) (not (select g_1 null)))) (and (and (select g_1 x@@0) (not (= x@@0 null))) (and (= Mask@0 (PolymorphicMapType_38126 (store (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| ZeroMask) x@@0 next (+ (select (|PolymorphicMapType_38126_25325_25326#PolymorphicMapType_38126| ZeroMask) x@@0 next) FullPerm)) (|PolymorphicMapType_38126_25325_53#PolymorphicMapType_38126| ZeroMask) (|PolymorphicMapType_38126_25325_123987#PolymorphicMapType_38126| ZeroMask) (|PolymorphicMapType_38126_25325_127666#PolymorphicMapType_38126| ZeroMask))) (state Heap@@19 Mask@0)))) (and (=> (= (ControlFlow 0 92) 1) anon70_Then_correct) (=> (= (ControlFlow 0 92) 89) anon70_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 93) 92) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid