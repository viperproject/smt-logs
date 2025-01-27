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
(declare-sort T@Field_58589_53 0)
(declare-sort T@Field_58602_58603 0)
(declare-sort T@Field_37315_186746 0)
(declare-sort T@Field_37315_186613 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_58550 0)) (((PolymorphicMapType_58550 (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| (Array T@Ref T@Field_58602_58603 Real)) (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| (Array T@Ref T@Field_58589_53 Real)) (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| (Array T@Ref T@Field_37315_186613 Real)) (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| (Array T@Ref T@Field_37315_186746 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_59078 0)) (((PolymorphicMapType_59078 (|PolymorphicMapType_59078_58589_53#PolymorphicMapType_59078| (Array T@Ref T@Field_58589_53 Bool)) (|PolymorphicMapType_59078_58589_58603#PolymorphicMapType_59078| (Array T@Ref T@Field_58602_58603 Bool)) (|PolymorphicMapType_59078_58589_186613#PolymorphicMapType_59078| (Array T@Ref T@Field_37315_186613 Bool)) (|PolymorphicMapType_59078_58589_187726#PolymorphicMapType_59078| (Array T@Ref T@Field_37315_186746 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_58529 0)) (((PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| (Array T@Ref T@Field_58589_53 Bool)) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| (Array T@Ref T@Field_58602_58603 T@Ref)) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| (Array T@Ref T@Field_37315_186746 T@PolymorphicMapType_59078)) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| (Array T@Ref T@Field_37315_186613 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_58589_53)
(declare-fun next () T@Field_58602_58603)
(declare-fun succHeap (T@PolymorphicMapType_58529 T@PolymorphicMapType_58529) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_58529 T@PolymorphicMapType_58529) Bool)
(declare-fun state (T@PolymorphicMapType_58529 T@PolymorphicMapType_58550) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_58550) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_59078)
(declare-fun |apply_TCFraming'| (T@PolymorphicMapType_58529 (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun dummyFunction_7675 (Bool) Bool)
(declare-fun |apply_TCFraming#triggerStateless| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |is_global_root'| (T@PolymorphicMapType_58529 (Array T@Ref Bool) T@Ref) Bool)
(declare-fun |is_global_root#triggerStateless| ((Array T@Ref Bool) T@Ref) Bool)
(declare-fun |is_global_sroot'| (T@PolymorphicMapType_58529 (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |is_global_sroot#triggerStateless| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-sort T@EdgeDomainType 0)
(declare-fun exists_path ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun edge ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun exists_path_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun |$$'| (T@PolymorphicMapType_58529 (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun dummyFunction_82688 ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun |$$#triggerStateless| ((Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |acyclic_list_segment'| (T@PolymorphicMapType_58529 (Array T@Ref Bool)) Bool)
(declare-fun |acyclic_list_segment#triggerStateless| ((Array T@Ref Bool)) Bool)
(declare-fun |Set#Union_37564| ((Array T@EdgeDomainType Bool) (Array T@EdgeDomainType Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |Set#Union_37395| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_37564| ((Array T@EdgeDomainType Bool) (Array T@EdgeDomainType Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |Set#Intersection_37295| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |apply_TCFraming#trigger| (T@FrameType (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_6487 (Int) T@FrameType)
(declare-fun |apply_TCFraming#condqp1| (T@PolymorphicMapType_58529 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |apply_TCFraming#condqp2| (T@PolymorphicMapType_58529 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |Set#Equal_37295| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Set#Empty_37301| () (Array T@Ref Bool))
(declare-fun |$$#frame| (T@FrameType (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |$$#condqp3| (T@PolymorphicMapType_58529 (Array T@Ref Bool)) Int)
(declare-fun $$ (T@PolymorphicMapType_58529 (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |Set#Singleton_37564| (T@EdgeDomainType) (Array T@EdgeDomainType Bool))
(declare-fun |Set#Singleton_38322| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_37564| ((Array T@EdgeDomainType Bool)) Int)
(declare-fun |Set#Card_37301| ((Array T@Ref Bool)) Int)
(declare-fun apply_noExit ((Array T@EdgeDomainType Bool) (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_58529 T@PolymorphicMapType_58529 T@PolymorphicMapType_58550) Bool)
(declare-fun IsPredicateField_37315_186704 (T@Field_37315_186613) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_37315 (T@Field_37315_186613) T@Field_37315_186746)
(declare-fun HasDirectPerm_37315_186677 (T@PolymorphicMapType_58550 T@Ref T@Field_37315_186613) Bool)
(declare-fun IsWandField_37315_188253 (T@Field_37315_186613) Bool)
(declare-fun WandMaskField_37315 (T@Field_37315_186613) T@Field_37315_186746)
(declare-fun acyclic_list_segment (T@PolymorphicMapType_58529 (Array T@Ref Bool)) Bool)
(declare-fun acyclic_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun func_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun unshared_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun |$$#trigger| (T@FrameType (Array T@Ref Bool)) Bool)
(declare-fun create_edge (T@Ref T@Ref) T@EdgeDomainType)
(declare-fun dummyHeap () T@PolymorphicMapType_58529)
(declare-fun ZeroMask () T@PolymorphicMapType_58550)
(declare-fun InsidePredicate_58589_58589 (T@Field_37315_186613 T@FrameType T@Field_37315_186613 T@FrameType) Bool)
(declare-fun IsPredicateField_37315_37316 (T@Field_58602_58603) Bool)
(declare-fun IsWandField_37315_37316 (T@Field_58602_58603) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_37315_191187 (T@Field_37315_186746) Bool)
(declare-fun IsWandField_37315_191203 (T@Field_37315_186746) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_37315_53 (T@Field_58589_53) Bool)
(declare-fun IsWandField_37315_53 (T@Field_58589_53) Bool)
(declare-fun |is_global_root#frame| (T@FrameType (Array T@Ref Bool) T@Ref) Bool)
(declare-fun |is_global_root#condqp4| (T@PolymorphicMapType_58529 (Array T@Ref Bool) T@Ref) Int)
(declare-fun |is_global_sroot#frame| (T@FrameType (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |is_global_sroot#condqp5| (T@PolymorphicMapType_58529 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |Set#Equal_37564| ((Array T@EdgeDomainType Bool) (Array T@EdgeDomainType Bool)) Bool)
(declare-fun HasDirectPerm_37315_191558 (T@PolymorphicMapType_58550 T@Ref T@Field_37315_186746) Bool)
(declare-fun HasDirectPerm_37315_53 (T@PolymorphicMapType_58550 T@Ref T@Field_58589_53) Bool)
(declare-fun HasDirectPerm_37315_37316 (T@PolymorphicMapType_58550 T@Ref T@Field_58602_58603) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_58550 T@PolymorphicMapType_58550 T@PolymorphicMapType_58550) Bool)
(declare-fun exists_spath ((Array T@EdgeDomainType Bool) (Array T@Ref Bool) T@Ref) Bool)
(declare-fun |Set#Difference_37564| ((Array T@EdgeDomainType Bool) (Array T@EdgeDomainType Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |Set#Difference_37301| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |sk_apply_TCFraming#condqp1| (Int Int) T@Ref)
(declare-fun |sk_apply_TCFraming#condqp2| (Int Int) T@Ref)
(declare-fun |sk_is_global_root#condqp4| (Int Int) T@Ref)
(declare-fun |sk_is_global_sroot#condqp5| (Int Int) T@Ref)
(declare-fun |Set#UnionOne_37564| ((Array T@EdgeDomainType Bool) T@EdgeDomainType) (Array T@EdgeDomainType Bool))
(declare-fun |Set#UnionOne_38322| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun edge_pred (T@EdgeDomainType) T@Ref)
(declare-fun edge_succ (T@EdgeDomainType) T@Ref)
(declare-fun edge_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun |acyclic_list_segment#frame| (T@FrameType (Array T@Ref Bool)) Bool)
(declare-fun |acyclic_list_segment#condqp6| (T@PolymorphicMapType_58529 (Array T@Ref Bool)) Int)
(declare-fun is_global_root (T@PolymorphicMapType_58529 (Array T@Ref Bool) T@Ref) Bool)
(declare-fun |Set#Empty_37564| () (Array T@EdgeDomainType Bool))
(declare-fun |Set#Subset_37790| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |sk_$$#condqp3| (Int Int) T@Ref)
(declare-fun |sk_acyclic_list_segment#condqp6| (Int Int) T@Ref)
(declare-fun |apply_TCFraming#frame| (T@FrameType (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun is_global_sroot (T@PolymorphicMapType_58529 (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun inst_uReach ((Array T@EdgeDomainType Bool) T@Ref) (Array T@Ref Bool))
(declare-fun apply_TCFraming (T@PolymorphicMapType_58529 (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_58529) (Heap1 T@PolymorphicMapType_58529) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_58529) (Mask T@PolymorphicMapType_58550) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_58529) (Heap1@@0 T@PolymorphicMapType_58529) (Heap2 T@PolymorphicMapType_58529) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_37315_186746) ) (!  (not (select (|PolymorphicMapType_59078_58589_187726#PolymorphicMapType_59078| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_59078_58589_187726#PolymorphicMapType_59078| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_37315_186613) ) (!  (not (select (|PolymorphicMapType_59078_58589_186613#PolymorphicMapType_59078| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_59078_58589_186613#PolymorphicMapType_59078| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_58602_58603) ) (!  (not (select (|PolymorphicMapType_59078_58589_58603#PolymorphicMapType_59078| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_59078_58589_58603#PolymorphicMapType_59078| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_58589_53) ) (!  (not (select (|PolymorphicMapType_59078_58589_53#PolymorphicMapType_59078| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_59078_58589_53#PolymorphicMapType_59078| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_58529) (g0 (Array T@Ref Bool)) (g1 (Array T@Ref Bool)) ) (! (dummyFunction_7675 (|apply_TCFraming#triggerStateless| g0 g1))
 :qid |stdinbpl.843:15|
 :skolemid |105|
 :pattern ( (|apply_TCFraming'| Heap@@0 g0 g1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_58529) (g_1 (Array T@Ref Bool)) (root T@Ref) ) (! (dummyFunction_7675 (|is_global_root#triggerStateless| g_1 root))
 :qid |stdinbpl.1575:15|
 :skolemid |186|
 :pattern ( (|is_global_root'| Heap@@1 g_1 root))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_58529) (g_1@@0 (Array T@Ref Bool)) (roots (Array T@Ref Bool)) ) (! (dummyFunction_7675 (|is_global_sroot#triggerStateless| g_1@@0 roots))
 :qid |stdinbpl.1761:15|
 :skolemid |205|
 :pattern ( (|is_global_sroot'| Heap@@2 g_1@@0 roots))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.559:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (start_1 T@Ref) (end_1 T@Ref) ) (! (= (exists_path_ EG_1 start_1 end_1)  (or (= start_1 end_1) (exists ((w_2 T@Ref) ) (!  (and (edge EG_1 start_1 w_2) (exists_path_ EG_1 w_2 end_1))
 :qid |stdinbpl.754:78|
 :skolemid |90|
 :pattern ( (edge EG_1 start_1 w_2))
 :pattern ( (exists_path_ EG_1 w_2 end_1))
))))
 :qid |stdinbpl.752:15|
 :skolemid |91|
 :pattern ( (exists_path EG_1 start_1 end_1))
 :pattern ( (edge EG_1 start_1 end_1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_58529) (refs (Array T@Ref Bool)) ) (! (dummyFunction_82688 (|$$#triggerStateless| refs))
 :qid |stdinbpl.1418:15|
 :skolemid |167|
 :pattern ( (|$$'| Heap@@3 refs))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_58529) (g_1@@1 (Array T@Ref Bool)) ) (! (dummyFunction_7675 (|acyclic_list_segment#triggerStateless| g_1@@1))
 :qid |stdinbpl.1946:15|
 :skolemid |224|
 :pattern ( (|acyclic_list_segment'| Heap@@4 g_1@@1))
)))
(assert (forall ((a@@0 (Array T@EdgeDomainType Bool)) (b@@0 (Array T@EdgeDomainType Bool)) ) (! (= (|Set#Union_37564| (|Set#Union_37564| a@@0 b@@0) b@@0) (|Set#Union_37564| a@@0 b@@0))
 :qid |stdinbpl.511:18|
 :skolemid |38|
 :pattern ( (|Set#Union_37564| (|Set#Union_37564| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Union_37395| (|Set#Union_37395| a@@1 b@@1) b@@1) (|Set#Union_37395| a@@1 b@@1))
 :qid |stdinbpl.511:18|
 :skolemid |38|
 :pattern ( (|Set#Union_37395| (|Set#Union_37395| a@@1 b@@1) b@@1))
)))
(assert (forall ((a@@2 (Array T@EdgeDomainType Bool)) (b@@2 (Array T@EdgeDomainType Bool)) ) (! (= (|Set#Intersection_37564| (|Set#Intersection_37564| a@@2 b@@2) b@@2) (|Set#Intersection_37564| a@@2 b@@2))
 :qid |stdinbpl.515:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_37564| (|Set#Intersection_37564| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_37295| (|Set#Intersection_37295| a@@3 b@@3) b@@3) (|Set#Intersection_37295| a@@3 b@@3))
 :qid |stdinbpl.515:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_37295| (|Set#Intersection_37295| a@@3 b@@3) b@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_58529) (Mask@@0 T@PolymorphicMapType_58550) (g0@@0 (Array T@Ref Bool)) (g1@@0 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@5 Mask@@0) (or (< AssumeFunctionsAbove 3) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6487 (|apply_TCFraming#condqp1| Heap@@5 g0@@0 g1@@0)) (FrameFragment_6487 (|apply_TCFraming#condqp2| Heap@@5 g0@@0 g1@@0))) g0@@0 g1@@0))) (=> (|Set#Equal_37295| (|Set#Intersection_37295| g1@@0 g0@@0) |Set#Empty_37301|) (forall ((u_2_2 T@Ref) (v_2_2 T@Ref) ) (!  (=> (and (select g0@@0 u_2_2) (and (select g0@@0 v_2_2) (not (exists_path ($$ Heap@@5 g0@@0) u_2_2 v_2_2)))) (not (exists_path ($$ Heap@@5 (|Set#Union_37395| g0@@0 g1@@0)) u_2_2 v_2_2)))
 :qid |stdinbpl.896:285|
 :skolemid |114|
 :pattern ( (select g0@@0 u_2_2) (select g0@@0 v_2_2))
 :pattern ( (select g0@@0 u_2_2) (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@5 g0@@0)) g0@@0) u_2_2 v_2_2))
 :pattern ( (select g0@@0 u_2_2) (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@5 (|Set#Union_37395| g0@@0 g1@@0))) (|Set#Union_37395| g0@@0 g1@@0)) u_2_2 v_2_2))
 :pattern ( (select g0@@0 v_2_2) (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@5 g0@@0)) g0@@0) u_2_2 v_2_2))
 :pattern ( (select g0@@0 v_2_2) (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@5 (|Set#Union_37395| g0@@0 g1@@0))) (|Set#Union_37395| g0@@0 g1@@0)) u_2_2 v_2_2))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@5 g0@@0)) g0@@0) u_2_2 v_2_2))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@5 (|Set#Union_37395| g0@@0 g1@@0))) (|Set#Union_37395| g0@@0 g1@@0)) u_2_2 v_2_2))
))))
 :qid |stdinbpl.894:15|
 :skolemid |115|
 :pattern ( (state Heap@@5 Mask@@0) (|apply_TCFraming'| Heap@@5 g0@@0 g1@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_58529) (Mask@@1 T@PolymorphicMapType_58550) (g0@@1 (Array T@Ref Bool)) (g1@@1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@6 Mask@@1) (or (< AssumeFunctionsAbove 3) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6487 (|apply_TCFraming#condqp1| Heap@@6 g0@@1 g1@@1)) (FrameFragment_6487 (|apply_TCFraming#condqp2| Heap@@6 g0@@1 g1@@1))) g0@@1 g1@@1))) (=> (|Set#Equal_37295| (|Set#Intersection_37295| g1@@1 g0@@1) |Set#Empty_37301|) (forall ((u_3_1 T@Ref) (v_3_1 T@Ref) ) (!  (=> (and (select g1@@1 u_3_1) (and (select g1@@1 v_3_1) (not (exists_path ($$ Heap@@6 g1@@1) u_3_1 v_3_1)))) (not (exists_path ($$ Heap@@6 (|Set#Union_37395| g1@@1 g0@@1)) u_3_1 v_3_1)))
 :qid |stdinbpl.903:285|
 :skolemid |116|
 :pattern ( (select g1@@1 u_3_1) (select g1@@1 v_3_1))
 :pattern ( (select g1@@1 u_3_1) (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@6 g1@@1)) g1@@1) u_3_1 v_3_1))
 :pattern ( (select g1@@1 u_3_1) (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@6 (|Set#Union_37395| g1@@1 g0@@1))) (|Set#Union_37395| g1@@1 g0@@1)) u_3_1 v_3_1))
 :pattern ( (select g1@@1 v_3_1) (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@6 g1@@1)) g1@@1) u_3_1 v_3_1))
 :pattern ( (select g1@@1 v_3_1) (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@6 (|Set#Union_37395| g1@@1 g0@@1))) (|Set#Union_37395| g1@@1 g0@@1)) u_3_1 v_3_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@6 g1@@1)) g1@@1) u_3_1 v_3_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@6 (|Set#Union_37395| g1@@1 g0@@1))) (|Set#Union_37395| g1@@1 g0@@1)) u_3_1 v_3_1))
))))
 :qid |stdinbpl.901:15|
 :skolemid |117|
 :pattern ( (state Heap@@6 Mask@@1) (|apply_TCFraming'| Heap@@6 g0@@1 g1@@1))
)))
(assert (forall ((r T@EdgeDomainType) (o T@EdgeDomainType) ) (! (= (select (|Set#Singleton_37564| r) o) (= r o))
 :qid |stdinbpl.480:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_37564| r) o))
)))
(assert (forall ((r@@0 T@Ref) (o@@0 T@Ref) ) (! (= (select (|Set#Singleton_38322| r@@0) o@@0) (= r@@0 o@@0))
 :qid |stdinbpl.480:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_38322| r@@0) o@@0))
)))
(assert (forall ((a@@4 (Array T@EdgeDomainType Bool)) (b@@4 (Array T@EdgeDomainType Bool)) ) (! (= (+ (|Set#Card_37564| (|Set#Union_37564| a@@4 b@@4)) (|Set#Card_37564| (|Set#Intersection_37564| a@@4 b@@4))) (+ (|Set#Card_37564| a@@4) (|Set#Card_37564| b@@4)))
 :qid |stdinbpl.519:18|
 :skolemid |42|
 :pattern ( (|Set#Card_37564| (|Set#Union_37564| a@@4 b@@4)))
 :pattern ( (|Set#Card_37564| (|Set#Intersection_37564| a@@4 b@@4)))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_37301| (|Set#Union_37395| a@@5 b@@5)) (|Set#Card_37301| (|Set#Intersection_37295| a@@5 b@@5))) (+ (|Set#Card_37301| a@@5) (|Set#Card_37301| b@@5)))
 :qid |stdinbpl.519:18|
 :skolemid |42|
 :pattern ( (|Set#Card_37301| (|Set#Union_37395| a@@5 b@@5)))
 :pattern ( (|Set#Card_37301| (|Set#Intersection_37295| a@@5 b@@5)))
)))
(assert (forall ((EG_1@@0 (Array T@EdgeDomainType Bool)) (U_1 (Array T@Ref Bool)) (M_1 (Array T@Ref Bool)) ) (!  (=> (apply_noExit EG_1@@0 U_1 M_1) (=> (forall ((u_1 T@Ref) (v_2 T@Ref) ) (!  (=> (and (select M_1 u_1) (and (select U_1 v_2) (not (select M_1 v_2)))) (not (edge EG_1@@0 u_1 v_2)))
 :qid |stdinbpl.730:52|
 :skolemid |85|
 :pattern ( (edge EG_1@@0 u_1 v_2))
 :pattern ( (select M_1 u_1) (select M_1 v_2))
)) (forall ((u_1_1 T@Ref) (v_1_1 T@Ref) ) (!  (=> (and (select M_1 u_1_1) (and (select U_1 v_1_1) (not (select M_1 v_1_1)))) (not (exists_path EG_1@@0 u_1_1 v_1_1)))
 :qid |stdinbpl.733:17|
 :skolemid |86|
 :pattern ( (exists_path EG_1@@0 u_1_1 v_1_1))
 :pattern ( (select M_1 u_1_1) (select M_1 v_1_1))
))))
 :qid |stdinbpl.728:15|
 :skolemid |87|
 :pattern ( (apply_noExit EG_1@@0 U_1 M_1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_58529) (refs@@0 (Array T@Ref Bool)) ) (!  (and (= ($$ Heap@@7 refs@@0) (|$$'| Heap@@7 refs@@0)) (dummyFunction_82688 (|$$#triggerStateless| refs@@0)))
 :qid |stdinbpl.1414:15|
 :skolemid |166|
 :pattern ( ($$ Heap@@7 refs@@0))
)))
(assert (forall ((a@@6 Int) ) (!  (=> (<= 0 a@@6) (= (|Math#clip| a@@6) a@@6))
 :qid |stdinbpl.562:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_58529) (ExhaleHeap T@PolymorphicMapType_58529) (Mask@@2 T@PolymorphicMapType_58550) (pm_f_13 T@Field_37315_186613) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_37315_186677 Mask@@2 null pm_f_13) (IsPredicateField_37315_186704 pm_f_13)) (= (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@8) null (PredicateMaskField_37315 pm_f_13)) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap) null (PredicateMaskField_37315 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@2) (IsPredicateField_37315_186704 pm_f_13) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap) null (PredicateMaskField_37315 pm_f_13)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_58529) (ExhaleHeap@@0 T@PolymorphicMapType_58529) (Mask@@3 T@PolymorphicMapType_58550) (pm_f_13@@0 T@Field_37315_186613) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_37315_186677 Mask@@3 null pm_f_13@@0) (IsWandField_37315_188253 pm_f_13@@0)) (= (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@9) null (WandMaskField_37315 pm_f_13@@0)) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@0) null (WandMaskField_37315 pm_f_13@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@3) (IsWandField_37315_188253 pm_f_13@@0) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@0) null (WandMaskField_37315 pm_f_13@@0)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_58529) (Mask@@4 T@PolymorphicMapType_58550) (g0@@2 (Array T@Ref Bool)) (g1@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@10 Mask@@4) (or (< AssumeFunctionsAbove 3) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6487 (|apply_TCFraming#condqp1| Heap@@10 g0@@2 g1@@2)) (FrameFragment_6487 (|apply_TCFraming#condqp2| Heap@@10 g0@@2 g1@@2))) g0@@2 g1@@2))) (=> (|Set#Equal_37295| (|Set#Intersection_37295| g1@@2 g0@@2) |Set#Empty_37301|) (|Set#Equal_37295| (|Set#Union_37395| g0@@2 g1@@2) (|Set#Union_37395| g1@@2 g0@@2))))
 :qid |stdinbpl.876:15|
 :skolemid |109|
 :pattern ( (state Heap@@10 Mask@@4) (|apply_TCFraming'| Heap@@10 g0@@2 g1@@2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_58529) (Mask@@5 T@PolymorphicMapType_58550) (g_1@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@11 Mask@@5) (< AssumeFunctionsAbove 0)) (=> (and (not (select g_1@@2 null)) (forall ((n$0_14 T@Ref) ) (!  (=> (and (select g_1@@2 n$0_14) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@11) n$0_14 next) null))) (select g_1@@2 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@11) n$0_14 next)))
 :qid |stdinbpl.1954:75|
 :skolemid |225|
 :pattern ( (select g_1@@2 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@11) n$0_14 next)))
 :pattern ( (select g_1@@2 n$0_14) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@11) n$0_14 next))
))) (= (acyclic_list_segment Heap@@11 g_1@@2)  (and (acyclic_graph ($$ Heap@@11 g_1@@2)) (and (func_graph ($$ Heap@@11 g_1@@2)) (unshared_graph ($$ Heap@@11 g_1@@2)))))))
 :qid |stdinbpl.1952:15|
 :skolemid |226|
 :pattern ( (state Heap@@11 Mask@@5) (acyclic_list_segment Heap@@11 g_1@@2))
)))
(assert (forall ((EG_1@@1 (Array T@EdgeDomainType Bool)) ) (! (= (unshared_graph EG_1@@1) (forall ((v1 T@Ref) (v2 T@Ref) (v_2@@0 T@Ref) ) (!  (=> (and (edge EG_1@@1 v1 v_2@@0) (edge EG_1@@1 v2 v_2@@0)) (= v1 v2))
 :qid |stdinbpl.778:43|
 :skolemid |95|
 :pattern ( (edge EG_1@@1 v1 v_2@@0) (edge EG_1@@1 v2 v_2@@0))
)))
 :qid |stdinbpl.776:15|
 :skolemid |96|
 :pattern ( (unshared_graph EG_1@@1))
)))
(assert (forall ((EG_1@@2 (Array T@EdgeDomainType Bool)) ) (! (= (func_graph EG_1@@2) (forall ((v1@@0 T@Ref) (v2@@0 T@Ref) (v_2@@1 T@Ref) ) (!  (=> (and (edge EG_1@@2 v_2@@1 v1@@0) (edge EG_1@@2 v_2@@1 v2@@0)) (= v1@@0 v2@@0))
 :qid |stdinbpl.787:39|
 :skolemid |97|
 :pattern ( (edge EG_1@@2 v_2@@1 v1@@0) (edge EG_1@@2 v_2@@1 v2@@0))
)))
 :qid |stdinbpl.785:15|
 :skolemid |98|
 :pattern ( (func_graph EG_1@@2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_58529) (Mask@@6 T@PolymorphicMapType_58550) (refs@@1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@12 Mask@@6) (or (< AssumeFunctionsAbove 4) (|$$#trigger| (FrameFragment_6487 (|$$#condqp3| Heap@@12 refs@@1)) refs@@1))) (forall ((p_1 T@Ref) (s_1 T@Ref) ) (! (=  (and (select refs@@1 p_1) (and (select refs@@1 s_1) (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@12) p_1 next) s_1))) (select (|$$'| Heap@@12 refs@@1) (create_edge p_1 s_1)))
 :qid |stdinbpl.1443:122|
 :skolemid |170|
 :pattern ( (create_edge p_1 s_1))
)))
 :qid |stdinbpl.1441:15|
 :skolemid |171|
 :pattern ( (state Heap@@12 Mask@@6) (|$$'| Heap@@12 refs@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_58529) (ExhaleHeap@@1 T@PolymorphicMapType_58529) (Mask@@7 T@PolymorphicMapType_58550) (pm_f_13@@1 T@Field_37315_186613) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@1 Mask@@7) (=> (and (HasDirectPerm_37315_186677 Mask@@7 null pm_f_13@@1) (IsPredicateField_37315_186704 pm_f_13@@1)) (and (and (and (forall ((o2_13 T@Ref) (f_40 T@Field_58589_53) ) (!  (=> (select (|PolymorphicMapType_59078_58589_53#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@13) null (PredicateMaskField_37315 pm_f_13@@1))) o2_13 f_40) (= (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@13) o2_13 f_40) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@1) o2_13 f_40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@1) o2_13 f_40))
)) (forall ((o2_13@@0 T@Ref) (f_40@@0 T@Field_58602_58603) ) (!  (=> (select (|PolymorphicMapType_59078_58589_58603#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@13) null (PredicateMaskField_37315 pm_f_13@@1))) o2_13@@0 f_40@@0) (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@13) o2_13@@0 f_40@@0) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| ExhaleHeap@@1) o2_13@@0 f_40@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| ExhaleHeap@@1) o2_13@@0 f_40@@0))
))) (forall ((o2_13@@1 T@Ref) (f_40@@1 T@Field_37315_186613) ) (!  (=> (select (|PolymorphicMapType_59078_58589_186613#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@13) null (PredicateMaskField_37315 pm_f_13@@1))) o2_13@@1 f_40@@1) (= (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@13) o2_13@@1 f_40@@1) (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| ExhaleHeap@@1) o2_13@@1 f_40@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| ExhaleHeap@@1) o2_13@@1 f_40@@1))
))) (forall ((o2_13@@2 T@Ref) (f_40@@2 T@Field_37315_186746) ) (!  (=> (select (|PolymorphicMapType_59078_58589_187726#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@13) null (PredicateMaskField_37315 pm_f_13@@1))) o2_13@@2 f_40@@2) (= (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@13) o2_13@@2 f_40@@2) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@1) o2_13@@2 f_40@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@1) o2_13@@2 f_40@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@1 Mask@@7) (IsPredicateField_37315_186704 pm_f_13@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_58529) (ExhaleHeap@@2 T@PolymorphicMapType_58529) (Mask@@8 T@PolymorphicMapType_58550) (pm_f_13@@2 T@Field_37315_186613) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@2 Mask@@8) (=> (and (HasDirectPerm_37315_186677 Mask@@8 null pm_f_13@@2) (IsWandField_37315_188253 pm_f_13@@2)) (and (and (and (forall ((o2_13@@3 T@Ref) (f_40@@3 T@Field_58589_53) ) (!  (=> (select (|PolymorphicMapType_59078_58589_53#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@14) null (WandMaskField_37315 pm_f_13@@2))) o2_13@@3 f_40@@3) (= (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@14) o2_13@@3 f_40@@3) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@2) o2_13@@3 f_40@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@2) o2_13@@3 f_40@@3))
)) (forall ((o2_13@@4 T@Ref) (f_40@@4 T@Field_58602_58603) ) (!  (=> (select (|PolymorphicMapType_59078_58589_58603#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@14) null (WandMaskField_37315 pm_f_13@@2))) o2_13@@4 f_40@@4) (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@14) o2_13@@4 f_40@@4) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| ExhaleHeap@@2) o2_13@@4 f_40@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| ExhaleHeap@@2) o2_13@@4 f_40@@4))
))) (forall ((o2_13@@5 T@Ref) (f_40@@5 T@Field_37315_186613) ) (!  (=> (select (|PolymorphicMapType_59078_58589_186613#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@14) null (WandMaskField_37315 pm_f_13@@2))) o2_13@@5 f_40@@5) (= (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@14) o2_13@@5 f_40@@5) (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| ExhaleHeap@@2) o2_13@@5 f_40@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| ExhaleHeap@@2) o2_13@@5 f_40@@5))
))) (forall ((o2_13@@6 T@Ref) (f_40@@6 T@Field_37315_186746) ) (!  (=> (select (|PolymorphicMapType_59078_58589_187726#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@14) null (WandMaskField_37315 pm_f_13@@2))) o2_13@@6 f_40@@6) (= (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@14) o2_13@@6 f_40@@6) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@2) o2_13@@6 f_40@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@2) o2_13@@6 f_40@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@2 Mask@@8) (IsWandField_37315_188253 pm_f_13@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1@@3 (Array T@EdgeDomainType Bool)) (u_1@@0 T@Ref) (v_2@@2 T@Ref) (w_2@@0 T@Ref) ) (!  (=> (and (exists_path_ EG_1@@3 u_1@@0 w_2@@0) (exists_path_ EG_1@@3 w_2@@0 v_2@@2)) (exists_path_ EG_1@@3 u_1@@0 v_2@@2))
 :qid |stdinbpl.761:15|
 :skolemid |92|
 :pattern ( (exists_path EG_1@@3 u_1@@0 w_2@@0) (exists_path EG_1@@3 w_2@@0 v_2@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_58529) (ExhaleHeap@@3 T@PolymorphicMapType_58529) (Mask@@9 T@PolymorphicMapType_58550) (o_29 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@9) (=> (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@15) o_29 $allocated) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@3) o_29 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@9) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@3) o_29 $allocated))
)))
(assert (forall ((p T@Field_37315_186613) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_58589_58589 p v_1 p w))
 :qid |stdinbpl.457:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_58589_58589 p v_1 p w))
)))
(assert  (not (IsPredicateField_37315_37316 next)))
(assert  (not (IsWandField_37315_37316 next)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_58529) (ExhaleHeap@@4 T@PolymorphicMapType_58529) (Mask@@10 T@PolymorphicMapType_58550) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@10) (succHeap Heap@@16 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@4 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_58550) (o_2@@3 T@Ref) (f_4@@3 T@Field_37315_186746) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| Mask@@11) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_37315_191187 f_4@@3))) (not (IsWandField_37315_191203 f_4@@3))) (<= (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| Mask@@11) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| Mask@@11) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_58550) (o_2@@4 T@Ref) (f_4@@4 T@Field_37315_186613) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| Mask@@12) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_37315_186704 f_4@@4))) (not (IsWandField_37315_188253 f_4@@4))) (<= (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| Mask@@12) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| Mask@@12) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_58550) (o_2@@5 T@Ref) (f_4@@5 T@Field_58589_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| Mask@@13) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_37315_53 f_4@@5))) (not (IsWandField_37315_53 f_4@@5))) (<= (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| Mask@@13) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| Mask@@13) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_58550) (o_2@@6 T@Ref) (f_4@@6 T@Field_58602_58603) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| Mask@@14) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_37315_37316 f_4@@6))) (not (IsWandField_37315_37316 f_4@@6))) (<= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| Mask@@14) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| Mask@@14) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_58529) (Mask@@15 T@PolymorphicMapType_58550) (g_1@@3 (Array T@Ref Bool)) (root@@0 T@Ref) ) (!  (=> (state Heap@@17 Mask@@15) (= (|is_global_root'| Heap@@17 g_1@@3 root@@0) (|is_global_root#frame| (FrameFragment_6487 (|is_global_root#condqp4| Heap@@17 g_1@@3 root@@0)) g_1@@3 root@@0)))
 :qid |stdinbpl.1594:15|
 :skolemid |190|
 :pattern ( (state Heap@@17 Mask@@15) (|is_global_root'| Heap@@17 g_1@@3 root@@0))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_58529) (Mask@@16 T@PolymorphicMapType_58550) (g_1@@4 (Array T@Ref Bool)) (roots@@0 (Array T@Ref Bool)) ) (!  (=> (state Heap@@18 Mask@@16) (= (|is_global_sroot'| Heap@@18 g_1@@4 roots@@0) (|is_global_sroot#frame| (FrameFragment_6487 (|is_global_sroot#condqp5| Heap@@18 g_1@@4 roots@@0)) g_1@@4 roots@@0)))
 :qid |stdinbpl.1780:15|
 :skolemid |209|
 :pattern ( (state Heap@@18 Mask@@16) (|is_global_sroot'| Heap@@18 g_1@@4 roots@@0))
)))
(assert (forall ((g0@@3 (Array T@Ref Bool)) (g1@@3 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_37295| (|Set#Intersection_37295| g0@@3 g1@@3) |Set#Empty_37301|) (forall ((r_1 T@Ref) ) (!  (=> (and (select g0@@3 r_1) (select g1@@3 r_1)) (select |Set#Empty_37301| r_1))
 :qid |stdinbpl.812:75|
 :skolemid |101|
 :pattern ( (select g0@@3 r_1) (select g1@@3 r_1))
)))
 :qid |stdinbpl.810:15|
 :skolemid |102|
 :pattern ( (|Set#Intersection_37295| g0@@3 g1@@3))
)))
(assert (forall ((a@@7 (Array T@EdgeDomainType Bool)) (b@@6 (Array T@EdgeDomainType Bool)) ) (! (= (|Set#Equal_37564| a@@7 b@@6) (forall ((o@@1 T@EdgeDomainType) ) (! (= (select a@@7 o@@1) (select b@@6 o@@1))
 :qid |stdinbpl.544:31|
 :skolemid |48|
 :pattern ( (select a@@7 o@@1))
 :pattern ( (select b@@6 o@@1))
)))
 :qid |stdinbpl.543:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_37564| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) ) (! (= (|Set#Equal_37295| a@@8 b@@7) (forall ((o@@2 T@Ref) ) (! (= (select a@@8 o@@2) (select b@@7 o@@2))
 :qid |stdinbpl.544:31|
 :skolemid |48|
 :pattern ( (select a@@8 o@@2))
 :pattern ( (select b@@7 o@@2))
)))
 :qid |stdinbpl.543:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_37295| a@@8 b@@7))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_58550) (o_2@@7 T@Ref) (f_4@@7 T@Field_37315_186746) ) (! (= (HasDirectPerm_37315_191558 Mask@@17 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| Mask@@17) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_37315_191558 Mask@@17 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_58550) (o_2@@8 T@Ref) (f_4@@8 T@Field_37315_186613) ) (! (= (HasDirectPerm_37315_186677 Mask@@18 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| Mask@@18) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_37315_186677 Mask@@18 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_58550) (o_2@@9 T@Ref) (f_4@@9 T@Field_58589_53) ) (! (= (HasDirectPerm_37315_53 Mask@@19 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| Mask@@19) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_37315_53 Mask@@19 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_58550) (o_2@@10 T@Ref) (f_4@@10 T@Field_58602_58603) ) (! (= (HasDirectPerm_37315_37316 Mask@@20 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| Mask@@20) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_37315_37316 Mask@@20 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.445:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_58529) (ExhaleHeap@@5 T@PolymorphicMapType_58529) (Mask@@21 T@PolymorphicMapType_58550) (o_29@@0 T@Ref) (f_40@@7 T@Field_37315_186746) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@5 Mask@@21) (=> (HasDirectPerm_37315_191558 Mask@@21 o_29@@0 f_40@@7) (= (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@19) o_29@@0 f_40@@7) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@5) o_29@@0 f_40@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@5 Mask@@21) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@5) o_29@@0 f_40@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_58529) (ExhaleHeap@@6 T@PolymorphicMapType_58529) (Mask@@22 T@PolymorphicMapType_58550) (o_29@@1 T@Ref) (f_40@@8 T@Field_37315_186613) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@6 Mask@@22) (=> (HasDirectPerm_37315_186677 Mask@@22 o_29@@1 f_40@@8) (= (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@20) o_29@@1 f_40@@8) (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| ExhaleHeap@@6) o_29@@1 f_40@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@6 Mask@@22) (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| ExhaleHeap@@6) o_29@@1 f_40@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_58529) (ExhaleHeap@@7 T@PolymorphicMapType_58529) (Mask@@23 T@PolymorphicMapType_58550) (o_29@@2 T@Ref) (f_40@@9 T@Field_58589_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@7 Mask@@23) (=> (HasDirectPerm_37315_53 Mask@@23 o_29@@2 f_40@@9) (= (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@21) o_29@@2 f_40@@9) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@7) o_29@@2 f_40@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@7 Mask@@23) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@7) o_29@@2 f_40@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_58529) (ExhaleHeap@@8 T@PolymorphicMapType_58529) (Mask@@24 T@PolymorphicMapType_58550) (o_29@@3 T@Ref) (f_40@@10 T@Field_58602_58603) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@8 Mask@@24) (=> (HasDirectPerm_37315_37316 Mask@@24 o_29@@3 f_40@@10) (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@22) o_29@@3 f_40@@10) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| ExhaleHeap@@8) o_29@@3 f_40@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@8 Mask@@24) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| ExhaleHeap@@8) o_29@@3 f_40@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_37315_186746) ) (! (= (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_37315_186613) ) (! (= (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_58589_53) ) (! (= (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_58602_58603) ) (! (= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_58529) (Mask@@25 T@PolymorphicMapType_58550) (g0@@4 (Array T@Ref Bool)) (g1@@4 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@23 Mask@@25) (or (< AssumeFunctionsAbove 3) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6487 (|apply_TCFraming#condqp1| Heap@@23 g0@@4 g1@@4)) (FrameFragment_6487 (|apply_TCFraming#condqp2| Heap@@23 g0@@4 g1@@4))) g0@@4 g1@@4))) (=> (|Set#Equal_37295| (|Set#Intersection_37295| g1@@4 g0@@4) |Set#Empty_37301|) (forall ((u_1@@1 T@Ref) (v_2@@3 T@Ref) ) (!  (=> (and (select g0@@4 u_1@@1) (and (select g0@@4 v_2@@3) (exists_path ($$ Heap@@23 g0@@4) u_1@@1 v_2@@3))) (exists_path ($$ Heap@@23 (|Set#Union_37395| g0@@4 g1@@4)) u_1@@1 v_2@@3))
 :qid |stdinbpl.882:285|
 :skolemid |110|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@23 g0@@4)) g0@@4) u_1@@1 v_2@@3))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@23 (|Set#Union_37395| g0@@4 g1@@4))) (|Set#Union_37395| g0@@4 g1@@4)) u_1@@1 v_2@@3))
))))
 :qid |stdinbpl.880:15|
 :skolemid |111|
 :pattern ( (state Heap@@23 Mask@@25) (|apply_TCFraming'| Heap@@23 g0@@4 g1@@4))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_58529) (Mask@@26 T@PolymorphicMapType_58550) (g0@@5 (Array T@Ref Bool)) (g1@@5 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@24 Mask@@26) (or (< AssumeFunctionsAbove 3) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6487 (|apply_TCFraming#condqp1| Heap@@24 g0@@5 g1@@5)) (FrameFragment_6487 (|apply_TCFraming#condqp2| Heap@@24 g0@@5 g1@@5))) g0@@5 g1@@5))) (=> (|Set#Equal_37295| (|Set#Intersection_37295| g1@@5 g0@@5) |Set#Empty_37301|) (forall ((u_1_1@@0 T@Ref) (v_1_1@@0 T@Ref) ) (!  (=> (and (select g1@@5 u_1_1@@0) (and (select g1@@5 v_1_1@@0) (exists_path ($$ Heap@@24 g1@@5) u_1_1@@0 v_1_1@@0))) (exists_path ($$ Heap@@24 (|Set#Union_37395| g1@@5 g0@@5)) u_1_1@@0 v_1_1@@0))
 :qid |stdinbpl.889:285|
 :skolemid |112|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@24 g1@@5)) g1@@5) u_1_1@@0 v_1_1@@0))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@24 (|Set#Union_37395| g1@@5 g0@@5))) (|Set#Union_37395| g1@@5 g0@@5)) u_1_1@@0 v_1_1@@0))
))))
 :qid |stdinbpl.887:15|
 :skolemid |113|
 :pattern ( (state Heap@@24 Mask@@26) (|apply_TCFraming'| Heap@@24 g0@@5 g1@@5))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_58550) (SummandMask1 T@PolymorphicMapType_58550) (SummandMask2 T@PolymorphicMapType_58550) (o_2@@15 T@Ref) (f_4@@15 T@Field_37315_186746) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_58550) (SummandMask1@@0 T@PolymorphicMapType_58550) (SummandMask2@@0 T@PolymorphicMapType_58550) (o_2@@16 T@Ref) (f_4@@16 T@Field_37315_186613) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_58550) (SummandMask1@@1 T@PolymorphicMapType_58550) (SummandMask2@@1 T@PolymorphicMapType_58550) (o_2@@17 T@Ref) (f_4@@17 T@Field_58589_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_58550) (SummandMask1@@2 T@PolymorphicMapType_58550) (SummandMask2@@2 T@PolymorphicMapType_58550) (o_2@@18 T@Ref) (f_4@@18 T@Field_58602_58603) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@9 (Array T@EdgeDomainType Bool)) (b@@8 (Array T@EdgeDomainType Bool)) (o@@3 T@EdgeDomainType) ) (! (= (select (|Set#Intersection_37564| a@@9 b@@8) o@@3)  (and (select a@@9 o@@3) (select b@@8 o@@3)))
 :qid |stdinbpl.508:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_37564| a@@9 b@@8) o@@3))
 :pattern ( (|Set#Intersection_37564| a@@9 b@@8) (select a@@9 o@@3))
 :pattern ( (|Set#Intersection_37564| a@@9 b@@8) (select b@@8 o@@3))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Intersection_37295| a@@10 b@@9) o@@4)  (and (select a@@10 o@@4) (select b@@9 o@@4)))
 :qid |stdinbpl.508:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_37295| a@@10 b@@9) o@@4))
 :pattern ( (|Set#Intersection_37295| a@@10 b@@9) (select a@@10 o@@4))
 :pattern ( (|Set#Intersection_37295| a@@10 b@@9) (select b@@9 o@@4))
)))
(assert (forall ((EG_1@@4 (Array T@EdgeDomainType Bool)) (from_1 (Array T@Ref Bool)) (to_1 T@Ref) ) (! (= (exists_spath EG_1@@4 from_1 to_1) (exists ((f_38 T@Ref) ) (!  (and (select from_1 f_38) (exists_path EG_1@@4 f_38 to_1))
 :qid |stdinbpl.796:55|
 :skolemid |99|
 :pattern ( (select from_1 f_38))
 :pattern ( (exists_path EG_1@@4 f_38 to_1))
)))
 :qid |stdinbpl.794:15|
 :skolemid |100|
 :pattern ( (exists_spath EG_1@@4 from_1 to_1))
)))
(assert (forall ((a@@11 (Array T@EdgeDomainType Bool)) (b@@10 (Array T@EdgeDomainType Bool)) (o@@5 T@EdgeDomainType) ) (! (= (select (|Set#Difference_37564| a@@11 b@@10) o@@5)  (and (select a@@11 o@@5) (not (select b@@10 o@@5))))
 :qid |stdinbpl.523:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_37564| a@@11 b@@10) o@@5))
 :pattern ( (|Set#Difference_37564| a@@11 b@@10) (select a@@11 o@@5))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) (o@@6 T@Ref) ) (! (= (select (|Set#Difference_37301| a@@12 b@@11) o@@6)  (and (select a@@12 o@@6) (not (select b@@11 o@@6))))
 :qid |stdinbpl.523:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_37301| a@@12 b@@11) o@@6))
 :pattern ( (|Set#Difference_37301| a@@12 b@@11) (select a@@12 o@@6))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_58529) (Heap1Heap T@PolymorphicMapType_58529) (g0@@6 (Array T@Ref Bool)) (g1@@6 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g0@@6 (|sk_apply_TCFraming#condqp1| (|apply_TCFraming#condqp1| Heap2Heap g0@@6 g1@@6) (|apply_TCFraming#condqp1| Heap1Heap g0@@6 g1@@6))) (< NoPerm FullPerm))  (and (select g0@@6 (|sk_apply_TCFraming#condqp1| (|apply_TCFraming#condqp1| Heap2Heap g0@@6 g1@@6) (|apply_TCFraming#condqp1| Heap1Heap g0@@6 g1@@6))) (< NoPerm FullPerm))) (=> (and (select g0@@6 (|sk_apply_TCFraming#condqp1| (|apply_TCFraming#condqp1| Heap2Heap g0@@6 g1@@6) (|apply_TCFraming#condqp1| Heap1Heap g0@@6 g1@@6))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap2Heap) (|sk_apply_TCFraming#condqp1| (|apply_TCFraming#condqp1| Heap2Heap g0@@6 g1@@6) (|apply_TCFraming#condqp1| Heap1Heap g0@@6 g1@@6)) next) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap1Heap) (|sk_apply_TCFraming#condqp1| (|apply_TCFraming#condqp1| Heap2Heap g0@@6 g1@@6) (|apply_TCFraming#condqp1| Heap1Heap g0@@6 g1@@6)) next)))) (= (|apply_TCFraming#condqp1| Heap2Heap g0@@6 g1@@6) (|apply_TCFraming#condqp1| Heap1Heap g0@@6 g1@@6)))
 :qid |stdinbpl.860:15|
 :skolemid |107|
 :pattern ( (|apply_TCFraming#condqp1| Heap2Heap g0@@6 g1@@6) (|apply_TCFraming#condqp1| Heap1Heap g0@@6 g1@@6) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_58529) (Heap1Heap@@0 T@PolymorphicMapType_58529) (g0@@7 (Array T@Ref Bool)) (g1@@7 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g1@@7 (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap@@0 g0@@7 g1@@7) (|apply_TCFraming#condqp2| Heap1Heap@@0 g0@@7 g1@@7))) (< NoPerm FullPerm))  (and (select g1@@7 (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap@@0 g0@@7 g1@@7) (|apply_TCFraming#condqp2| Heap1Heap@@0 g0@@7 g1@@7))) (< NoPerm FullPerm))) (=> (and (select g1@@7 (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap@@0 g0@@7 g1@@7) (|apply_TCFraming#condqp2| Heap1Heap@@0 g0@@7 g1@@7))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap2Heap@@0) (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap@@0 g0@@7 g1@@7) (|apply_TCFraming#condqp2| Heap1Heap@@0 g0@@7 g1@@7)) next) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap1Heap@@0) (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap@@0 g0@@7 g1@@7) (|apply_TCFraming#condqp2| Heap1Heap@@0 g0@@7 g1@@7)) next)))) (= (|apply_TCFraming#condqp2| Heap2Heap@@0 g0@@7 g1@@7) (|apply_TCFraming#condqp2| Heap1Heap@@0 g0@@7 g1@@7)))
 :qid |stdinbpl.870:15|
 :skolemid |108|
 :pattern ( (|apply_TCFraming#condqp2| Heap2Heap@@0 g0@@7 g1@@7) (|apply_TCFraming#condqp2| Heap1Heap@@0 g0@@7 g1@@7) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_58529) (Heap1Heap@@1 T@PolymorphicMapType_58529) (g_1@@5 (Array T@Ref Bool)) (root@@1 T@Ref) ) (!  (=> (and (=  (and (select g_1@@5 (|sk_is_global_root#condqp4| (|is_global_root#condqp4| Heap2Heap@@1 g_1@@5 root@@1) (|is_global_root#condqp4| Heap1Heap@@1 g_1@@5 root@@1))) (< NoPerm FullPerm))  (and (select g_1@@5 (|sk_is_global_root#condqp4| (|is_global_root#condqp4| Heap2Heap@@1 g_1@@5 root@@1) (|is_global_root#condqp4| Heap1Heap@@1 g_1@@5 root@@1))) (< NoPerm FullPerm))) (=> (and (select g_1@@5 (|sk_is_global_root#condqp4| (|is_global_root#condqp4| Heap2Heap@@1 g_1@@5 root@@1) (|is_global_root#condqp4| Heap1Heap@@1 g_1@@5 root@@1))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap2Heap@@1) (|sk_is_global_root#condqp4| (|is_global_root#condqp4| Heap2Heap@@1 g_1@@5 root@@1) (|is_global_root#condqp4| Heap1Heap@@1 g_1@@5 root@@1)) next) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap1Heap@@1) (|sk_is_global_root#condqp4| (|is_global_root#condqp4| Heap2Heap@@1 g_1@@5 root@@1) (|is_global_root#condqp4| Heap1Heap@@1 g_1@@5 root@@1)) next)))) (= (|is_global_root#condqp4| Heap2Heap@@1 g_1@@5 root@@1) (|is_global_root#condqp4| Heap1Heap@@1 g_1@@5 root@@1)))
 :qid |stdinbpl.1604:15|
 :skolemid |191|
 :pattern ( (|is_global_root#condqp4| Heap2Heap@@1 g_1@@5 root@@1) (|is_global_root#condqp4| Heap1Heap@@1 g_1@@5 root@@1) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_58529) (Heap1Heap@@2 T@PolymorphicMapType_58529) (g_1@@6 (Array T@Ref Bool)) (roots@@1 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g_1@@6 (|sk_is_global_sroot#condqp5| (|is_global_sroot#condqp5| Heap2Heap@@2 g_1@@6 roots@@1) (|is_global_sroot#condqp5| Heap1Heap@@2 g_1@@6 roots@@1))) (< NoPerm FullPerm))  (and (select g_1@@6 (|sk_is_global_sroot#condqp5| (|is_global_sroot#condqp5| Heap2Heap@@2 g_1@@6 roots@@1) (|is_global_sroot#condqp5| Heap1Heap@@2 g_1@@6 roots@@1))) (< NoPerm FullPerm))) (=> (and (select g_1@@6 (|sk_is_global_sroot#condqp5| (|is_global_sroot#condqp5| Heap2Heap@@2 g_1@@6 roots@@1) (|is_global_sroot#condqp5| Heap1Heap@@2 g_1@@6 roots@@1))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap2Heap@@2) (|sk_is_global_sroot#condqp5| (|is_global_sroot#condqp5| Heap2Heap@@2 g_1@@6 roots@@1) (|is_global_sroot#condqp5| Heap1Heap@@2 g_1@@6 roots@@1)) next) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap1Heap@@2) (|sk_is_global_sroot#condqp5| (|is_global_sroot#condqp5| Heap2Heap@@2 g_1@@6 roots@@1) (|is_global_sroot#condqp5| Heap1Heap@@2 g_1@@6 roots@@1)) next)))) (= (|is_global_sroot#condqp5| Heap2Heap@@2 g_1@@6 roots@@1) (|is_global_sroot#condqp5| Heap1Heap@@2 g_1@@6 roots@@1)))
 :qid |stdinbpl.1790:15|
 :skolemid |210|
 :pattern ( (|is_global_sroot#condqp5| Heap2Heap@@2 g_1@@6 roots@@1) (|is_global_sroot#condqp5| Heap1Heap@@2 g_1@@6 roots@@1) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((a@@13 (Array T@EdgeDomainType Bool)) (b@@12 (Array T@EdgeDomainType Bool)) ) (!  (=> (|Set#Equal_37564| a@@13 b@@12) (= a@@13 b@@12))
 :qid |stdinbpl.545:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_37564| a@@13 b@@12))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_37295| a@@14 b@@13) (= a@@14 b@@13))
 :qid |stdinbpl.545:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_37295| a@@14 b@@13))
)))
(assert (forall ((a@@15 (Array T@EdgeDomainType Bool)) (x T@EdgeDomainType) (y T@EdgeDomainType) ) (!  (=> (select a@@15 y) (select (|Set#UnionOne_37564| a@@15 x) y))
 :qid |stdinbpl.488:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_37564| a@@15 x) (select a@@15 y))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (x@@0 T@Ref) (y@@0 T@Ref) ) (!  (=> (select a@@16 y@@0) (select (|Set#UnionOne_38322| a@@16 x@@0) y@@0))
 :qid |stdinbpl.488:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_38322| a@@16 x@@0) (select a@@16 y@@0))
)))
(assert (forall ((a@@17 (Array T@EdgeDomainType Bool)) (b@@14 (Array T@EdgeDomainType Bool)) (y@@1 T@EdgeDomainType) ) (!  (=> (select a@@17 y@@1) (select (|Set#Union_37564| a@@17 b@@14) y@@1))
 :qid |stdinbpl.498:18|
 :skolemid |35|
 :pattern ( (|Set#Union_37564| a@@17 b@@14) (select a@@17 y@@1))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select a@@18 y@@2) (select (|Set#Union_37395| a@@18 b@@15) y@@2))
 :qid |stdinbpl.498:18|
 :skolemid |35|
 :pattern ( (|Set#Union_37395| a@@18 b@@15) (select a@@18 y@@2))
)))
(assert (forall ((a@@19 (Array T@EdgeDomainType Bool)) (b@@16 (Array T@EdgeDomainType Bool)) (y@@3 T@EdgeDomainType) ) (!  (=> (select b@@16 y@@3) (select (|Set#Union_37564| a@@19 b@@16) y@@3))
 :qid |stdinbpl.500:18|
 :skolemid |36|
 :pattern ( (|Set#Union_37564| a@@19 b@@16) (select b@@16 y@@3))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@17 (Array T@Ref Bool)) (y@@4 T@Ref) ) (!  (=> (select b@@17 y@@4) (select (|Set#Union_37395| a@@20 b@@17) y@@4))
 :qid |stdinbpl.500:18|
 :skolemid |36|
 :pattern ( (|Set#Union_37395| a@@20 b@@17) (select b@@17 y@@4))
)))
(assert (forall ((a@@21 (Array T@EdgeDomainType Bool)) (x@@1 T@EdgeDomainType) (o@@7 T@EdgeDomainType) ) (! (= (select (|Set#UnionOne_37564| a@@21 x@@1) o@@7)  (or (= o@@7 x@@1) (select a@@21 o@@7)))
 :qid |stdinbpl.484:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_37564| a@@21 x@@1) o@@7))
)))
(assert (forall ((a@@22 (Array T@Ref Bool)) (x@@2 T@Ref) (o@@8 T@Ref) ) (! (= (select (|Set#UnionOne_38322| a@@22 x@@2) o@@8)  (or (= o@@8 x@@2) (select a@@22 o@@8)))
 :qid |stdinbpl.484:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_38322| a@@22 x@@2) o@@8))
)))
(assert (forall ((a@@23 (Array T@EdgeDomainType Bool)) (b@@18 (Array T@EdgeDomainType Bool)) (y@@5 T@EdgeDomainType) ) (!  (=> (select b@@18 y@@5) (not (select (|Set#Difference_37564| a@@23 b@@18) y@@5)))
 :qid |stdinbpl.525:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_37564| a@@23 b@@18) (select b@@18 y@@5))
)))
(assert (forall ((a@@24 (Array T@Ref Bool)) (b@@19 (Array T@Ref Bool)) (y@@6 T@Ref) ) (!  (=> (select b@@19 y@@6) (not (select (|Set#Difference_37301| a@@24 b@@19) y@@6)))
 :qid |stdinbpl.525:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_37301| a@@24 b@@19) (select b@@19 y@@6))
)))
(assert (forall ((a@@25 (Array T@EdgeDomainType Bool)) (b@@20 (Array T@EdgeDomainType Bool)) ) (!  (and (= (+ (+ (|Set#Card_37564| (|Set#Difference_37564| a@@25 b@@20)) (|Set#Card_37564| (|Set#Difference_37564| b@@20 a@@25))) (|Set#Card_37564| (|Set#Intersection_37564| a@@25 b@@20))) (|Set#Card_37564| (|Set#Union_37564| a@@25 b@@20))) (= (|Set#Card_37564| (|Set#Difference_37564| a@@25 b@@20)) (- (|Set#Card_37564| a@@25) (|Set#Card_37564| (|Set#Intersection_37564| a@@25 b@@20)))))
 :qid |stdinbpl.527:18|
 :skolemid |45|
 :pattern ( (|Set#Card_37564| (|Set#Difference_37564| a@@25 b@@20)))
)))
(assert (forall ((a@@26 (Array T@Ref Bool)) (b@@21 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_37301| (|Set#Difference_37301| a@@26 b@@21)) (|Set#Card_37301| (|Set#Difference_37301| b@@21 a@@26))) (|Set#Card_37301| (|Set#Intersection_37295| a@@26 b@@21))) (|Set#Card_37301| (|Set#Union_37395| a@@26 b@@21))) (= (|Set#Card_37301| (|Set#Difference_37301| a@@26 b@@21)) (- (|Set#Card_37301| a@@26) (|Set#Card_37301| (|Set#Intersection_37295| a@@26 b@@21)))))
 :qid |stdinbpl.527:18|
 :skolemid |45|
 :pattern ( (|Set#Card_37301| (|Set#Difference_37301| a@@26 b@@21)))
)))
(assert (forall ((g_1@@7 (Array T@EdgeDomainType Bool)) (e_1 T@EdgeDomainType) ) (!  (=> (select g_1@@7 e_1) (= (create_edge (edge_pred e_1) (edge_succ e_1)) e_1))
 :qid |stdinbpl.819:15|
 :skolemid |103|
 :pattern ( (select g_1@@7 e_1))
)))
(assert (forall ((s (Array T@EdgeDomainType Bool)) ) (! (<= 0 (|Set#Card_37564| s))
 :qid |stdinbpl.470:18|
 :skolemid |22|
 :pattern ( (|Set#Card_37564| s))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_37301| s@@0))
 :qid |stdinbpl.470:18|
 :skolemid |22|
 :pattern ( (|Set#Card_37301| s@@0))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_58529) (g_1@@8 (Array T@Ref Bool)) ) (!  (and (= (acyclic_list_segment Heap@@25 g_1@@8) (|acyclic_list_segment'| Heap@@25 g_1@@8)) (dummyFunction_7675 (|acyclic_list_segment#triggerStateless| g_1@@8)))
 :qid |stdinbpl.1942:15|
 :skolemid |223|
 :pattern ( (acyclic_list_segment Heap@@25 g_1@@8))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_58529) (Mask@@27 T@PolymorphicMapType_58550) (refs@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@26 Mask@@27) (or (< AssumeFunctionsAbove 4) (|$$#trigger| (FrameFragment_6487 (|$$#condqp3| Heap@@26 refs@@2)) refs@@2))) (forall ((p_1_1 T@Ref) (s_1_1 T@Ref) ) (!  (=> (and (select refs@@2 p_1_1) (exists_path (|$$'| Heap@@26 refs@@2) p_1_1 s_1_1)) (select refs@@2 s_1_1))
 :qid |stdinbpl.1450:122|
 :skolemid |172|
 :pattern ( (select refs@@2 p_1_1) (select refs@@2 s_1_1) (exists_path (|$$'| Heap@@26 refs@@2) p_1_1 s_1_1))
)))
 :qid |stdinbpl.1448:15|
 :skolemid |173|
 :pattern ( (state Heap@@26 Mask@@27) (|$$'| Heap@@26 refs@@2))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_58529) (Mask@@28 T@PolymorphicMapType_58550) (refs@@3 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@27 Mask@@28) (or (< AssumeFunctionsAbove 4) (|$$#trigger| (FrameFragment_6487 (|$$#condqp3| Heap@@27 refs@@3)) refs@@3))) (forall ((p_2_1 T@Ref) (s_2_1 T@Ref) ) (!  (=> (and (select refs@@3 s_2_1) (exists_path (|$$'| Heap@@27 refs@@3) p_2_1 s_2_1)) (select refs@@3 p_2_1))
 :qid |stdinbpl.1457:122|
 :skolemid |174|
 :pattern ( (select refs@@3 p_2_1) (select refs@@3 s_2_1) (exists_path (|$$'| Heap@@27 refs@@3) p_2_1 s_2_1))
)))
 :qid |stdinbpl.1455:15|
 :skolemid |175|
 :pattern ( (state Heap@@27 Mask@@28) (|$$'| Heap@@27 refs@@3))
)))
(assert (forall ((a@@27 (Array T@EdgeDomainType Bool)) (x@@3 T@EdgeDomainType) ) (! (select (|Set#UnionOne_37564| a@@27 x@@3) x@@3)
 :qid |stdinbpl.486:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_37564| a@@27 x@@3))
)))
(assert (forall ((a@@28 (Array T@Ref Bool)) (x@@4 T@Ref) ) (! (select (|Set#UnionOne_38322| a@@28 x@@4) x@@4)
 :qid |stdinbpl.486:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_38322| a@@28 x@@4))
)))
(assert (forall ((EG_1@@5 (Array T@EdgeDomainType Bool)) ) (! (= (acyclic_graph EG_1@@5) (forall ((v1@@1 T@Ref) (v2@@1 T@Ref) ) (!  (or (not (edge EG_1@@5 v1@@1 v2@@1)) (not (exists_path EG_1@@5 v2@@1 v1@@1)))
 :qid |stdinbpl.769:42|
 :skolemid |93|
 :pattern ( (edge EG_1@@5 v1@@1 v2@@1))
 :pattern ( (exists_path EG_1@@5 v2@@1 v1@@1))
)))
 :qid |stdinbpl.767:15|
 :skolemid |94|
 :pattern ( (acyclic_graph EG_1@@5))
)))
(assert (forall ((a@@29 (Array T@EdgeDomainType Bool)) (x@@5 T@EdgeDomainType) ) (!  (=> (select a@@29 x@@5) (= (|Set#Card_37564| (|Set#UnionOne_37564| a@@29 x@@5)) (|Set#Card_37564| a@@29)))
 :qid |stdinbpl.490:18|
 :skolemid |32|
 :pattern ( (|Set#Card_37564| (|Set#UnionOne_37564| a@@29 x@@5)))
)))
(assert (forall ((a@@30 (Array T@Ref Bool)) (x@@6 T@Ref) ) (!  (=> (select a@@30 x@@6) (= (|Set#Card_37301| (|Set#UnionOne_38322| a@@30 x@@6)) (|Set#Card_37301| a@@30)))
 :qid |stdinbpl.490:18|
 :skolemid |32|
 :pattern ( (|Set#Card_37301| (|Set#UnionOne_38322| a@@30 x@@6)))
)))
(assert (forall ((r@@1 T@EdgeDomainType) ) (! (= (|Set#Card_37564| (|Set#Singleton_37564| r@@1)) 1)
 :qid |stdinbpl.481:18|
 :skolemid |28|
 :pattern ( (|Set#Card_37564| (|Set#Singleton_37564| r@@1)))
)))
(assert (forall ((r@@2 T@Ref) ) (! (= (|Set#Card_37301| (|Set#Singleton_38322| r@@2)) 1)
 :qid |stdinbpl.481:18|
 :skolemid |28|
 :pattern ( (|Set#Card_37301| (|Set#Singleton_38322| r@@2)))
)))
(assert (forall ((r@@3 T@EdgeDomainType) ) (! (select (|Set#Singleton_37564| r@@3) r@@3)
 :qid |stdinbpl.479:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_37564| r@@3))
)))
(assert (forall ((r@@4 T@Ref) ) (! (select (|Set#Singleton_38322| r@@4) r@@4)
 :qid |stdinbpl.479:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_38322| r@@4))
)))
(assert (forall ((EG_1@@6 (Array T@EdgeDomainType Bool)) (p_1@@0 T@Ref) (s_1@@0 T@Ref) ) (! (= (edge_ EG_1@@6 p_1@@0 s_1@@0) (select EG_1@@6 (create_edge p_1@@0 s_1@@0)))
 :qid |stdinbpl.722:15|
 :skolemid |84|
 :pattern ( (select EG_1@@6 (create_edge p_1@@0 s_1@@0)))
 :pattern ( (edge EG_1@@6 p_1@@0 s_1@@0))
)))
(assert (forall ((a@@31 (Array T@EdgeDomainType Bool)) (b@@22 (Array T@EdgeDomainType Bool)) ) (! (= (|Set#Union_37564| a@@31 (|Set#Union_37564| a@@31 b@@22)) (|Set#Union_37564| a@@31 b@@22))
 :qid |stdinbpl.513:18|
 :skolemid |39|
 :pattern ( (|Set#Union_37564| a@@31 (|Set#Union_37564| a@@31 b@@22)))
)))
(assert (forall ((a@@32 (Array T@Ref Bool)) (b@@23 (Array T@Ref Bool)) ) (! (= (|Set#Union_37395| a@@32 (|Set#Union_37395| a@@32 b@@23)) (|Set#Union_37395| a@@32 b@@23))
 :qid |stdinbpl.513:18|
 :skolemid |39|
 :pattern ( (|Set#Union_37395| a@@32 (|Set#Union_37395| a@@32 b@@23)))
)))
(assert (forall ((a@@33 (Array T@EdgeDomainType Bool)) (b@@24 (Array T@EdgeDomainType Bool)) ) (! (= (|Set#Intersection_37564| a@@33 (|Set#Intersection_37564| a@@33 b@@24)) (|Set#Intersection_37564| a@@33 b@@24))
 :qid |stdinbpl.517:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_37564| a@@33 (|Set#Intersection_37564| a@@33 b@@24)))
)))
(assert (forall ((a@@34 (Array T@Ref Bool)) (b@@25 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_37295| a@@34 (|Set#Intersection_37295| a@@34 b@@25)) (|Set#Intersection_37295| a@@34 b@@25))
 :qid |stdinbpl.517:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_37295| a@@34 (|Set#Intersection_37295| a@@34 b@@25)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_58529) (Mask@@29 T@PolymorphicMapType_58550) (g_1@@9 (Array T@Ref Bool)) ) (!  (=> (state Heap@@28 Mask@@29) (= (|acyclic_list_segment'| Heap@@28 g_1@@9) (|acyclic_list_segment#frame| (FrameFragment_6487 (|acyclic_list_segment#condqp6| Heap@@28 g_1@@9)) g_1@@9)))
 :qid |stdinbpl.1962:15|
 :skolemid |227|
 :pattern ( (state Heap@@28 Mask@@29) (|acyclic_list_segment'| Heap@@28 g_1@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_58529) (Mask@@30 T@PolymorphicMapType_58550) (g_1@@10 (Array T@Ref Bool)) (root@@2 T@Ref) ) (!  (=> (and (state Heap@@29 Mask@@30) (< AssumeFunctionsAbove 2)) (=> (and (and (not (select g_1@@10 null)) (forall ((n$1 T@Ref) ) (!  (=> (and (select g_1@@10 n$1) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@29) n$1 next) null))) (select g_1@@10 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@29) n$1 next)))
 :qid |stdinbpl.1583:76|
 :skolemid |187|
 :pattern ( (select g_1@@10 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@29) n$1 next)))
 :pattern ( (select g_1@@10 n$1) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@29) n$1 next))
))) (select g_1@@10 root@@2)) (= (is_global_root Heap@@29 g_1@@10 root@@2) (forall ((n T@Ref) ) (!  (=> (select g_1@@10 n) (exists_path ($$ Heap@@29 g_1@@10) root@@2 n))
 :qid |stdinbpl.1586:66|
 :skolemid |188|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@29 g_1@@10)) g_1@@10) root@@2 n))
)))))
 :qid |stdinbpl.1581:15|
 :skolemid |189|
 :pattern ( (state Heap@@29 Mask@@30) (is_global_root Heap@@29 g_1@@10 root@@2))
)))
(assert (forall ((o@@9 T@EdgeDomainType) ) (!  (not (select |Set#Empty_37564| o@@9))
 :qid |stdinbpl.473:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_37564| o@@9))
)))
(assert (forall ((o@@10 T@Ref) ) (!  (not (select |Set#Empty_37301| o@@10))
 :qid |stdinbpl.473:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_37301| o@@10))
)))
(assert (forall ((p_1@@1 T@Ref) (s_1@@1 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@1 s_1@@1)) p_1@@1) (= (edge_succ (create_edge p_1@@1 s_1@@1)) s_1@@1))
 :qid |stdinbpl.673:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@1 s_1@@1))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_58529) (o_28 T@Ref) (f_41 T@Field_37315_186613) (v T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@30) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@30) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@30) (store (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@30) o_28 f_41 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@30) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@30) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@30) (store (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@30) o_28 f_41 v)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_58529) (o_28@@0 T@Ref) (f_41@@0 T@Field_37315_186746) (v@@0 T@PolymorphicMapType_59078) ) (! (succHeap Heap@@31 (PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@31) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@31) (store (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@31) o_28@@0 f_41@@0 v@@0) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@31) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@31) (store (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@31) o_28@@0 f_41@@0 v@@0) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_58529) (o_28@@1 T@Ref) (f_41@@1 T@Field_58602_58603) (v@@1 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@32) (store (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@32) o_28@@1 f_41@@1 v@@1) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@32) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@32) (store (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@32) o_28@@1 f_41@@1 v@@1) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@32) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_58529) (o_28@@2 T@Ref) (f_41@@2 T@Field_58589_53) (v@@2 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_58529 (store (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@33) o_28@@2 f_41@@2 v@@2) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@33) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@33) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_58529 (store (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@33) o_28@@2 f_41@@2 v@@2) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@33) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@33) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@33)))
)))
(assert (forall ((a@@35 Int) (b@@26 Int) ) (! (= (<= a@@35 b@@26) (= (|Math#min| a@@35 b@@26) a@@35))
 :qid |stdinbpl.557:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@35 b@@26))
)))
(assert (forall ((a@@36 Int) (b@@27 Int) ) (! (= (<= b@@27 a@@36) (= (|Math#min| a@@36 b@@27) b@@27))
 :qid |stdinbpl.558:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@36 b@@27))
)))
(assert (forall ((s@@1 (Array T@EdgeDomainType Bool)) ) (!  (and (= (= (|Set#Card_37564| s@@1) 0) (= s@@1 |Set#Empty_37564|)) (=> (not (= (|Set#Card_37564| s@@1) 0)) (exists ((x@@7 T@EdgeDomainType) ) (! (select s@@1 x@@7)
 :qid |stdinbpl.476:33|
 :skolemid |24|
))))
 :qid |stdinbpl.474:18|
 :skolemid |25|
 :pattern ( (|Set#Card_37564| s@@1))
)))
(assert (forall ((s@@2 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_37301| s@@2) 0) (= s@@2 |Set#Empty_37301|)) (=> (not (= (|Set#Card_37301| s@@2) 0)) (exists ((x@@8 T@Ref) ) (! (select s@@2 x@@8)
 :qid |stdinbpl.476:33|
 :skolemid |24|
))))
 :qid |stdinbpl.474:18|
 :skolemid |25|
 :pattern ( (|Set#Card_37301| s@@2))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_58529) (Mask@@31 T@PolymorphicMapType_58550) (refs@@4 (Array T@Ref Bool)) ) (!  (=> (state Heap@@34 Mask@@31) (= (|$$'| Heap@@34 refs@@4) (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@34 refs@@4)) refs@@4)))
 :qid |stdinbpl.1425:15|
 :skolemid |168|
 :pattern ( (state Heap@@34 Mask@@31) (|$$'| Heap@@34 refs@@4))
)))
(assert (forall ((a@@37 (Array T@Ref Bool)) (b@@28 (Array T@Ref Bool)) ) (! (= (|Set#Subset_37790| a@@37 b@@28) (forall ((o@@11 T@Ref) ) (!  (=> (select a@@37 o@@11) (select b@@28 o@@11))
 :qid |stdinbpl.536:32|
 :skolemid |46|
 :pattern ( (select a@@37 o@@11))
 :pattern ( (select b@@28 o@@11))
)))
 :qid |stdinbpl.535:17|
 :skolemid |47|
 :pattern ( (|Set#Subset_37790| a@@37 b@@28))
)))
(assert (forall ((Heap2Heap@@3 T@PolymorphicMapType_58529) (Heap1Heap@@3 T@PolymorphicMapType_58529) (refs@@5 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select refs@@5 (|sk_$$#condqp3| (|$$#condqp3| Heap2Heap@@3 refs@@5) (|$$#condqp3| Heap1Heap@@3 refs@@5))) (< NoPerm FullPerm))  (and (select refs@@5 (|sk_$$#condqp3| (|$$#condqp3| Heap2Heap@@3 refs@@5) (|$$#condqp3| Heap1Heap@@3 refs@@5))) (< NoPerm FullPerm))) (=> (and (select refs@@5 (|sk_$$#condqp3| (|$$#condqp3| Heap2Heap@@3 refs@@5) (|$$#condqp3| Heap1Heap@@3 refs@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap2Heap@@3) (|sk_$$#condqp3| (|$$#condqp3| Heap2Heap@@3 refs@@5) (|$$#condqp3| Heap1Heap@@3 refs@@5)) next) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap1Heap@@3) (|sk_$$#condqp3| (|$$#condqp3| Heap2Heap@@3 refs@@5) (|$$#condqp3| Heap1Heap@@3 refs@@5)) next)))) (= (|$$#condqp3| Heap2Heap@@3 refs@@5) (|$$#condqp3| Heap1Heap@@3 refs@@5)))
 :qid |stdinbpl.1435:15|
 :skolemid |169|
 :pattern ( (|$$#condqp3| Heap2Heap@@3 refs@@5) (|$$#condqp3| Heap1Heap@@3 refs@@5) (succHeapTrans Heap2Heap@@3 Heap1Heap@@3))
)))
(assert (forall ((Heap2Heap@@4 T@PolymorphicMapType_58529) (Heap1Heap@@4 T@PolymorphicMapType_58529) (g_1@@11 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g_1@@11 (|sk_acyclic_list_segment#condqp6| (|acyclic_list_segment#condqp6| Heap2Heap@@4 g_1@@11) (|acyclic_list_segment#condqp6| Heap1Heap@@4 g_1@@11))) (< NoPerm FullPerm))  (and (select g_1@@11 (|sk_acyclic_list_segment#condqp6| (|acyclic_list_segment#condqp6| Heap2Heap@@4 g_1@@11) (|acyclic_list_segment#condqp6| Heap1Heap@@4 g_1@@11))) (< NoPerm FullPerm))) (=> (and (select g_1@@11 (|sk_acyclic_list_segment#condqp6| (|acyclic_list_segment#condqp6| Heap2Heap@@4 g_1@@11) (|acyclic_list_segment#condqp6| Heap1Heap@@4 g_1@@11))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap2Heap@@4) (|sk_acyclic_list_segment#condqp6| (|acyclic_list_segment#condqp6| Heap2Heap@@4 g_1@@11) (|acyclic_list_segment#condqp6| Heap1Heap@@4 g_1@@11)) next) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap1Heap@@4) (|sk_acyclic_list_segment#condqp6| (|acyclic_list_segment#condqp6| Heap2Heap@@4 g_1@@11) (|acyclic_list_segment#condqp6| Heap1Heap@@4 g_1@@11)) next)))) (= (|acyclic_list_segment#condqp6| Heap2Heap@@4 g_1@@11) (|acyclic_list_segment#condqp6| Heap1Heap@@4 g_1@@11)))
 :qid |stdinbpl.1972:15|
 :skolemid |228|
 :pattern ( (|acyclic_list_segment#condqp6| Heap2Heap@@4 g_1@@11) (|acyclic_list_segment#condqp6| Heap1Heap@@4 g_1@@11) (succHeapTrans Heap2Heap@@4 Heap1Heap@@4))
)))
(assert (forall ((a@@38 (Array T@EdgeDomainType Bool)) (x@@9 T@EdgeDomainType) ) (!  (=> (not (select a@@38 x@@9)) (= (|Set#Card_37564| (|Set#UnionOne_37564| a@@38 x@@9)) (+ (|Set#Card_37564| a@@38) 1)))
 :qid |stdinbpl.492:18|
 :skolemid |33|
 :pattern ( (|Set#Card_37564| (|Set#UnionOne_37564| a@@38 x@@9)))
)))
(assert (forall ((a@@39 (Array T@Ref Bool)) (x@@10 T@Ref) ) (!  (=> (not (select a@@39 x@@10)) (= (|Set#Card_37301| (|Set#UnionOne_38322| a@@39 x@@10)) (+ (|Set#Card_37301| a@@39) 1)))
 :qid |stdinbpl.492:18|
 :skolemid |33|
 :pattern ( (|Set#Card_37301| (|Set#UnionOne_38322| a@@39 x@@10)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_58529) (Mask@@32 T@PolymorphicMapType_58550) (g0@@8 (Array T@Ref Bool)) (g1@@8 (Array T@Ref Bool)) ) (!  (=> (state Heap@@35 Mask@@32) (= (|apply_TCFraming'| Heap@@35 g0@@8 g1@@8) (|apply_TCFraming#frame| (CombineFrames (FrameFragment_6487 (|apply_TCFraming#condqp1| Heap@@35 g0@@8 g1@@8)) (FrameFragment_6487 (|apply_TCFraming#condqp2| Heap@@35 g0@@8 g1@@8))) g0@@8 g1@@8)))
 :qid |stdinbpl.850:15|
 :skolemid |106|
 :pattern ( (state Heap@@35 Mask@@32) (|apply_TCFraming'| Heap@@35 g0@@8 g1@@8))
)))
(assert (forall ((o_28@@3 T@Ref) (f_39 T@Field_58602_58603) (Heap@@36 T@PolymorphicMapType_58529) ) (!  (=> (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@36) o_28@@3 $allocated) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@36) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@36) o_28@@3 f_39) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@36) o_28@@3 f_39))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_58529) (Mask@@33 T@PolymorphicMapType_58550) (g_1@@12 (Array T@Ref Bool)) (roots@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@37 Mask@@33) (< AssumeFunctionsAbove 1)) (=> (and (and (not (select g_1@@12 null)) (forall ((n$1@@0 T@Ref) ) (!  (=> (and (select g_1@@12 n$1@@0) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@37) n$1@@0 next) null))) (select g_1@@12 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@37) n$1@@0 next)))
 :qid |stdinbpl.1769:76|
 :skolemid |206|
 :pattern ( (select g_1@@12 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@37) n$1@@0 next)))
 :pattern ( (select g_1@@12 n$1@@0) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@37) n$1@@0 next))
))) (|Set#Subset_37790| roots@@2 g_1@@12)) (= (is_global_sroot Heap@@37 g_1@@12 roots@@2) (forall ((n@@0 T@Ref) ) (!  (=> (select g_1@@12 n@@0) (exists_spath ($$ Heap@@37 g_1@@12) roots@@2 n@@0))
 :qid |stdinbpl.1772:81|
 :skolemid |207|
 :pattern ( (exists_spath (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@37 g_1@@12)) g_1@@12) roots@@2 n@@0))
)))))
 :qid |stdinbpl.1767:15|
 :skolemid |208|
 :pattern ( (state Heap@@37 Mask@@33) (is_global_sroot Heap@@37 g_1@@12 roots@@2))
)))
(assert (forall ((p@@1 T@Field_37315_186613) (v_1@@0 T@FrameType) (q T@Field_37315_186613) (w@@0 T@FrameType) (r@@5 T@Field_37315_186613) (u T@FrameType) ) (!  (=> (and (InsidePredicate_58589_58589 p@@1 v_1@@0 q w@@0) (InsidePredicate_58589_58589 q w@@0 r@@5 u)) (InsidePredicate_58589_58589 p@@1 v_1@@0 r@@5 u))
 :qid |stdinbpl.452:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_58589_58589 p@@1 v_1@@0 q w@@0) (InsidePredicate_58589_58589 q w@@0 r@@5 u))
)))
(assert (forall ((a@@40 Int) ) (!  (=> (< a@@40 0) (= (|Math#clip| a@@40) 0))
 :qid |stdinbpl.563:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@40))
)))
(assert (forall ((EG_1@@7 (Array T@EdgeDomainType Bool)) (x@@11 T@Ref) (v_2@@4 T@Ref) ) (! (= (select (inst_uReach EG_1@@7 x@@11) v_2@@4) (exists_path EG_1@@7 x@@11 v_2@@4))
 :qid |stdinbpl.740:15|
 :skolemid |88|
 :pattern ( (select (inst_uReach EG_1@@7 x@@11) v_2@@4))
 :pattern ( (exists_path EG_1@@7 x@@11 v_2@@4))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@41 (Array T@EdgeDomainType Bool)) (b@@29 (Array T@EdgeDomainType Bool)) (o@@12 T@EdgeDomainType) ) (! (= (select (|Set#Union_37564| a@@41 b@@29) o@@12)  (or (select a@@41 o@@12) (select b@@29 o@@12)))
 :qid |stdinbpl.496:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_37564| a@@41 b@@29) o@@12))
)))
(assert (forall ((a@@42 (Array T@Ref Bool)) (b@@30 (Array T@Ref Bool)) (o@@13 T@Ref) ) (! (= (select (|Set#Union_37395| a@@42 b@@30) o@@13)  (or (select a@@42 o@@13) (select b@@30 o@@13)))
 :qid |stdinbpl.496:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_37395| a@@42 b@@30) o@@13))
)))
(assert (forall ((EG_1@@8 (Array T@EdgeDomainType Bool)) (p_1@@2 T@Ref) (s_1@@2 T@Ref) ) (! (= (edge EG_1@@8 p_1@@2 s_1@@2) (edge_ EG_1@@8 p_1@@2 s_1@@2))
 :qid |stdinbpl.716:15|
 :skolemid |83|
 :pattern ( (edge EG_1@@8 p_1@@2 s_1@@2))
)))
(assert (forall ((EG_1@@9 (Array T@EdgeDomainType Bool)) (start_1@@0 T@Ref) (end_1@@0 T@Ref) ) (! (= (exists_path EG_1@@9 start_1@@0 end_1@@0) (exists_path_ EG_1@@9 start_1@@0 end_1@@0))
 :qid |stdinbpl.746:15|
 :skolemid |89|
 :pattern ( (exists_path EG_1@@9 start_1@@0 end_1@@0))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_58529) (g0@@9 (Array T@Ref Bool)) (g1@@9 (Array T@Ref Bool)) ) (!  (and (= (apply_TCFraming Heap@@38 g0@@9 g1@@9) (|apply_TCFraming'| Heap@@38 g0@@9 g1@@9)) (dummyFunction_7675 (|apply_TCFraming#triggerStateless| g0@@9 g1@@9)))
 :qid |stdinbpl.839:15|
 :skolemid |104|
 :pattern ( (apply_TCFraming Heap@@38 g0@@9 g1@@9))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_58529) (g_1@@13 (Array T@Ref Bool)) (root@@3 T@Ref) ) (!  (and (= (is_global_root Heap@@39 g_1@@13 root@@3) (|is_global_root'| Heap@@39 g_1@@13 root@@3)) (dummyFunction_7675 (|is_global_root#triggerStateless| g_1@@13 root@@3)))
 :qid |stdinbpl.1571:15|
 :skolemid |185|
 :pattern ( (is_global_root Heap@@39 g_1@@13 root@@3))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_58529) (g_1@@14 (Array T@Ref Bool)) (roots@@3 (Array T@Ref Bool)) ) (!  (and (= (is_global_sroot Heap@@40 g_1@@14 roots@@3) (|is_global_sroot'| Heap@@40 g_1@@14 roots@@3)) (dummyFunction_7675 (|is_global_sroot#triggerStateless| g_1@@14 roots@@3)))
 :qid |stdinbpl.1757:15|
 :skolemid |204|
 :pattern ( (is_global_sroot Heap@@40 g_1@@14 roots@@3))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered48 (T@Ref) Bool)
(declare-fun g0@@10 () (Array T@Ref Bool))
(declare-fun g1@@10 () (Array T@Ref Bool))
(declare-fun PostHeap@0 () T@PolymorphicMapType_58529)
(declare-fun QPMask@9 () T@PolymorphicMapType_58550)
(declare-fun QPMask@7 () T@PolymorphicMapType_58550)
(declare-fun x1 () T@Ref)
(declare-fun y1 () T@Ref)
(declare-fun neverTriggered47 (T@Ref) Bool)
(declare-fun QPMask@8 () T@PolymorphicMapType_58550)
(declare-fun n$4_6 () T@Ref)
(declare-fun qpRange46 (T@Ref) Bool)
(declare-fun invRecv46 (T@Ref) T@Ref)
(declare-fun n$4_2 () T@Ref)
(declare-fun Heap@@41 () T@PolymorphicMapType_58529)
(declare-fun x0 () T@Ref)
(declare-fun y0 () T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_58550)
(declare-fun neverTriggered49 (T@Ref) Bool)
(declare-fun QPMask@6 () T@PolymorphicMapType_58550)
(declare-fun qpRange49 (T@Ref) Bool)
(declare-fun invRecv49 (T@Ref) T@Ref)
(declare-fun neverTriggered50 (T@Ref) Bool)
(declare-fun QPMask@4 () T@PolymorphicMapType_58550)
(declare-fun qpRange50 (T@Ref) Bool)
(declare-fun invRecv50 (T@Ref) T@Ref)
(declare-fun neverTriggered51 (T@Ref) Bool)
(declare-fun QPMask@5 () T@PolymorphicMapType_58550)
(declare-fun qpRange51 (T@Ref) Bool)
(declare-fun invRecv51 (T@Ref) T@Ref)
(declare-fun neverTriggered45 (T@Ref) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_58550)
(declare-fun neverTriggered44 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_58550)
(declare-fun n$2_17 () T@Ref)
(declare-fun qpRange43 (T@Ref) Bool)
(declare-fun invRecv43 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_58550)
(declare-fun n$0_24 () T@Ref)
(declare-fun qpRange42 (T@Ref) Bool)
(declare-fun invRecv42 (T@Ref) T@Ref)
(set-info :boogie-vc-id test_framing_sets)
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
 (=> (= (ControlFlow 0 0) 74) (let ((anon63_Else_correct true))
(let ((anon63_Then_correct  (and (=> (= (ControlFlow 0 55) (- 0 56)) (forall ((n_5 T@Ref) (n_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5 n_5_1)) (select (|Set#Union_37395| g0@@10 g1@@10) n_5)) (select (|Set#Union_37395| g0@@10 g1@@10) n_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_5 n_5_1)))
 :qid |stdinbpl.3895:21|
 :skolemid |406|
 :pattern ( (neverTriggered48 n_5) (neverTriggered48 n_5_1))
))) (=> (forall ((n_5@@0 T@Ref) (n_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@0 n_5_1@@0)) (select (|Set#Union_37395| g0@@10 g1@@10) n_5@@0)) (select (|Set#Union_37395| g0@@10 g1@@10) n_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_5@@0 n_5_1@@0)))
 :qid |stdinbpl.3895:21|
 :skolemid |406|
 :pattern ( (neverTriggered48 n_5@@0) (neverTriggered48 n_5_1@@0))
)) (=> (= (ControlFlow 0 55) (- 0 54)) (forall ((n_5@@1 T@Ref) ) (!  (=> (select (|Set#Union_37395| g0@@10 g1@@10) n_5@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@7) n_5@@1 next) NoPerm)))
 :qid |stdinbpl.3902:21|
 :skolemid |407|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| PostHeap@0) n_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@9) n_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| PostHeap@0) n_5@@1 next))
)))))))
(let ((anon62_Else_correct  (=> (exists_path ($$ PostHeap@0 (|Set#Union_37395| g0@@10 g1@@10)) x1 y1) (=> (and (state PostHeap@0 QPMask@7) (state PostHeap@0 QPMask@7)) (and (=> (= (ControlFlow 0 58) 55) anon63_Then_correct) (=> (= (ControlFlow 0 58) 57) anon63_Else_correct))))))
(let ((anon62_Then_correct  (and (=> (= (ControlFlow 0 52) (- 0 53)) (forall ((n_4 T@Ref) (n_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4 n_4_1)) (select (|Set#Union_37395| g0@@10 g1@@10) n_4)) (select (|Set#Union_37395| g0@@10 g1@@10) n_4_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_4 n_4_1)))
 :qid |stdinbpl.3851:21|
 :skolemid |402|
 :pattern ( (neverTriggered47 n_4) (neverTriggered47 n_4_1))
))) (=> (forall ((n_4@@0 T@Ref) (n_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4@@0 n_4_1@@0)) (select (|Set#Union_37395| g0@@10 g1@@10) n_4@@0)) (select (|Set#Union_37395| g0@@10 g1@@10) n_4_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_4@@0 n_4_1@@0)))
 :qid |stdinbpl.3851:21|
 :skolemid |402|
 :pattern ( (neverTriggered47 n_4@@0) (neverTriggered47 n_4_1@@0))
)) (=> (= (ControlFlow 0 52) (- 0 51)) (forall ((n_4@@1 T@Ref) ) (!  (=> (select (|Set#Union_37395| g0@@10 g1@@10) n_4@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@7) n_4@@1 next) NoPerm)))
 :qid |stdinbpl.3858:21|
 :skolemid |403|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| PostHeap@0) n_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@8) n_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| PostHeap@0) n_4@@1 next))
)))))))
(let ((anon59_Else_correct  (=> (forall ((n$4_1 T@Ref) ) (!  (=> (and (select (|Set#Union_37395| g1@@10 g0@@10) n$4_1) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| PostHeap@0) n$4_1 next) null))) (select (|Set#Union_37395| g1@@10 g0@@10) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| PostHeap@0) n$4_1 next)))
 :qid |stdinbpl.3832:20|
 :skolemid |401|
 :pattern ( (select (|Set#Union_37395| g1@@10 g0@@10) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| PostHeap@0) n$4_1 next)))
 :pattern ( (select (|Set#Union_37395| g1@@10 g0@@10) n$4_1) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| PostHeap@0) n$4_1 next))
)) (=> (and (state PostHeap@0 QPMask@7) (state PostHeap@0 QPMask@7)) (and (=> (= (ControlFlow 0 59) 52) anon62_Then_correct) (=> (= (ControlFlow 0 59) 58) anon62_Else_correct))))))
(let ((anon32_correct true))
(let ((anon61_Else_correct  (=> (and (not (and (select (|Set#Union_37395| g1@@10 g0@@10) n$4_6) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| PostHeap@0) n$4_6 next) null)))) (= (ControlFlow 0 47) 44)) anon32_correct)))
(let ((anon61_Then_correct  (=> (and (select (|Set#Union_37395| g1@@10 g0@@10) n$4_6) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| PostHeap@0) n$4_6 next) null))) (and (=> (= (ControlFlow 0 45) (- 0 46)) (HasDirectPerm_37315_37316 QPMask@7 n$4_6 next)) (=> (HasDirectPerm_37315_37316 QPMask@7 n$4_6 next) (=> (= (ControlFlow 0 45) 44) anon32_correct))))))
(let ((anon60_Else_correct  (=> (not (select (|Set#Union_37395| g1@@10 g0@@10) n$4_6)) (and (=> (= (ControlFlow 0 50) 45) anon61_Then_correct) (=> (= (ControlFlow 0 50) 47) anon61_Else_correct)))))
(let ((anon60_Then_correct  (=> (select (|Set#Union_37395| g1@@10 g0@@10) n$4_6) (and (=> (= (ControlFlow 0 48) (- 0 49)) (HasDirectPerm_37315_37316 QPMask@7 n$4_6 next)) (=> (HasDirectPerm_37315_37316 QPMask@7 n$4_6 next) (and (=> (= (ControlFlow 0 48) 45) anon61_Then_correct) (=> (= (ControlFlow 0 48) 47) anon61_Else_correct)))))))
(let ((anon58_Else_correct  (and (=> (= (ControlFlow 0 60) (- 0 61)) (forall ((n$3_1 T@Ref) (n$3_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_1 n$3_1_1)) (select (|Set#Union_37395| g1@@10 g0@@10) n$3_1)) (select (|Set#Union_37395| g1@@10 g0@@10) n$3_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_1 n$3_1_1)))
 :qid |stdinbpl.3787:15|
 :skolemid |395|
))) (=> (forall ((n$3_1@@0 T@Ref) (n$3_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_1@@0 n$3_1_1@@0)) (select (|Set#Union_37395| g1@@10 g0@@10) n$3_1@@0)) (select (|Set#Union_37395| g1@@10 g0@@10) n$3_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_1@@0 n$3_1_1@@0)))
 :qid |stdinbpl.3787:15|
 :skolemid |395|
)) (=> (and (and (forall ((n$3_1@@1 T@Ref) ) (!  (=> (and (select (|Set#Union_37395| g1@@10 g0@@10) n$3_1@@1) (< NoPerm FullPerm)) (and (qpRange46 n$3_1@@1) (= (invRecv46 n$3_1@@1) n$3_1@@1)))
 :qid |stdinbpl.3793:22|
 :skolemid |396|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| PostHeap@0) n$3_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@7) n$3_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| PostHeap@0) n$3_1@@1 next))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (select (|Set#Union_37395| g1@@10 g0@@10) (invRecv46 o_9)) (< NoPerm FullPerm)) (qpRange46 o_9)) (= (invRecv46 o_9) o_9))
 :qid |stdinbpl.3797:22|
 :skolemid |397|
 :pattern ( (invRecv46 o_9))
))) (and (forall ((n$3_1@@2 T@Ref) ) (!  (=> (select (|Set#Union_37395| g1@@10 g0@@10) n$3_1@@2) (not (= n$3_1@@2 null)))
 :qid |stdinbpl.3803:22|
 :skolemid |398|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| PostHeap@0) n$3_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@7) n$3_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| PostHeap@0) n$3_1@@2 next))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (select (|Set#Union_37395| g1@@10 g0@@10) (invRecv46 o_9@@0)) (< NoPerm FullPerm)) (qpRange46 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv46 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@7) o_9@@0 next) (+ (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| ZeroMask) o_9@@0 next) FullPerm)))) (=> (not (and (and (select (|Set#Union_37395| g1@@10 g0@@10) (invRecv46 o_9@@0)) (< NoPerm FullPerm)) (qpRange46 o_9@@0))) (= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@7) o_9@@0 next) (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| ZeroMask) o_9@@0 next))))
 :qid |stdinbpl.3809:22|
 :skolemid |399|
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@7) o_9@@0 next))
)))) (=> (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_58589_53) ) (!  (=> true (= (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| QPMask@7) o_9@@1 f_5)))
 :qid |stdinbpl.3813:29|
 :skolemid |400|
 :pattern ( (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| QPMask@7) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_58602_58603) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@7) o_9@@2 f_5@@0)))
 :qid |stdinbpl.3813:29|
 :skolemid |400|
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@7) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_37315_186613) ) (!  (=> true (= (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| QPMask@7) o_9@@3 f_5@@1)))
 :qid |stdinbpl.3813:29|
 :skolemid |400|
 :pattern ( (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| QPMask@7) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_37315_186746) ) (!  (=> true (= (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| QPMask@7) o_9@@4 f_5@@2)))
 :qid |stdinbpl.3813:29|
 :skolemid |400|
 :pattern ( (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| QPMask@7) o_9@@4 f_5@@2))
))) (state PostHeap@0 QPMask@7)) (and (and (=> (= (ControlFlow 0 60) 59) anon59_Else_correct) (=> (= (ControlFlow 0 60) 48) anon60_Then_correct)) (=> (= (ControlFlow 0 60) 50) anon60_Else_correct))))))))
(let ((anon58_Then_correct true))
(let ((anon57_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (not (select (|Set#Union_37395| g1@@10 g0@@10) null))) (and (=> (= (ControlFlow 0 62) 43) anon58_Then_correct) (=> (= (ControlFlow 0 62) 60) anon58_Else_correct)))))
(let ((anon43_correct true))
(let ((anon66_Else_correct  (=> (and (not (and (select (|Set#Union_37395| g1@@10 g0@@10) n$4_2) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$4_2 next) null)))) (= (ControlFlow 0 37) 34)) anon43_correct)))
(let ((anon66_Then_correct  (=> (and (select (|Set#Union_37395| g1@@10 g0@@10) n$4_2) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$4_2 next) null))) (and (=> (= (ControlFlow 0 35) (- 0 36)) (select (|Set#Union_37395| g1@@10 g0@@10) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$4_2 next))) (=> (select (|Set#Union_37395| g1@@10 g0@@10) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$4_2 next)) (=> (= (ControlFlow 0 35) 34) anon43_correct))))))
(let ((anon65_Else_correct  (=> (forall ((n$4_3_1 T@Ref) ) (!  (=> (and (select (|Set#Union_37395| g1@@10 g0@@10) n$4_3_1) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$4_3_1 next) null))) (select (|Set#Union_37395| g1@@10 g0@@10) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$4_3_1 next)))
 :qid |stdinbpl.4059:20|
 :skolemid |424|
 :pattern ( (select (|Set#Union_37395| g1@@10 g0@@10) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$4_3_1 next)))
 :pattern ( (select (|Set#Union_37395| g1@@10 g0@@10) n$4_3_1) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$4_3_1 next))
)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (exists_path ($$ Heap@@41 (|Set#Union_37395| g0@@10 g1@@10)) x1 y1)) (=> (exists_path ($$ Heap@@41 (|Set#Union_37395| g0@@10 g1@@10)) x1 y1) (=> (= (ControlFlow 0 32) (- 0 31)) (exists_path ($$ Heap@@41 (|Set#Union_37395| g0@@10 g1@@10)) x0 y0)))))))
(let ((anon64_Else_correct  (=> (apply_TCFraming Heap@@41 g0@@10 g1@@10) (=> (and (state Heap@@41 QPMask@1) (state Heap@@41 QPMask@1)) (and (=> (= (ControlFlow 0 38) (- 0 41)) (not (select (|Set#Union_37395| g1@@10 g0@@10) null))) (=> (not (select (|Set#Union_37395| g1@@10 g0@@10) null)) (and (=> (= (ControlFlow 0 38) (- 0 40)) (forall ((n$3_2 T@Ref) (n$3_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_2 n$3_2_1)) (select (|Set#Union_37395| g1@@10 g0@@10) n$3_2)) (select (|Set#Union_37395| g1@@10 g0@@10) n$3_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_2 n$3_2_1)))
 :qid |stdinbpl.4018:17|
 :skolemid |418|
 :pattern ( (neverTriggered49 n$3_2) (neverTriggered49 n$3_2_1))
))) (=> (forall ((n$3_2@@0 T@Ref) (n$3_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_2@@0 n$3_2_1@@0)) (select (|Set#Union_37395| g1@@10 g0@@10) n$3_2@@0)) (select (|Set#Union_37395| g1@@10 g0@@10) n$3_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_2@@0 n$3_2_1@@0)))
 :qid |stdinbpl.4018:17|
 :skolemid |418|
 :pattern ( (neverTriggered49 n$3_2@@0) (neverTriggered49 n$3_2_1@@0))
)) (and (=> (= (ControlFlow 0 38) (- 0 39)) (forall ((n$3_2@@1 T@Ref) ) (!  (=> (select (|Set#Union_37395| g1@@10 g0@@10) n$3_2@@1) (>= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) n$3_2@@1 next) FullPerm))
 :qid |stdinbpl.4025:17|
 :skolemid |419|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$3_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@6) n$3_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$3_2@@1 next))
))) (=> (forall ((n$3_2@@2 T@Ref) ) (!  (=> (select (|Set#Union_37395| g1@@10 g0@@10) n$3_2@@2) (>= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) n$3_2@@2 next) FullPerm))
 :qid |stdinbpl.4025:17|
 :skolemid |419|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$3_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@6) n$3_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$3_2@@2 next))
)) (=> (forall ((n$3_2@@3 T@Ref) ) (!  (=> (and (select (|Set#Union_37395| g1@@10 g0@@10) n$3_2@@3) (< NoPerm FullPerm)) (and (qpRange49 n$3_2@@3) (= (invRecv49 n$3_2@@3) n$3_2@@3)))
 :qid |stdinbpl.4031:22|
 :skolemid |420|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$3_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@6) n$3_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$3_2@@3 next))
)) (=> (and (forall ((o_9@@5 T@Ref) ) (!  (=> (and (select (|Set#Union_37395| g1@@10 g0@@10) (invRecv49 o_9@@5)) (and (< NoPerm FullPerm) (qpRange49 o_9@@5))) (= (invRecv49 o_9@@5) o_9@@5))
 :qid |stdinbpl.4035:22|
 :skolemid |421|
 :pattern ( (invRecv49 o_9@@5))
)) (forall ((o_9@@6 T@Ref) ) (!  (and (=> (and (select (|Set#Union_37395| g1@@10 g0@@10) (invRecv49 o_9@@6)) (and (< NoPerm FullPerm) (qpRange49 o_9@@6))) (and (= (invRecv49 o_9@@6) o_9@@6) (= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@6) o_9@@6 next) (- (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) o_9@@6 next) FullPerm)))) (=> (not (and (select (|Set#Union_37395| g1@@10 g0@@10) (invRecv49 o_9@@6)) (and (< NoPerm FullPerm) (qpRange49 o_9@@6)))) (= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@6) o_9@@6 next) (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) o_9@@6 next))))
 :qid |stdinbpl.4041:22|
 :skolemid |422|
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@6) o_9@@6 next))
))) (=> (and (and (and (forall ((o_9@@7 T@Ref) (f_5@@3 T@Field_58589_53) ) (!  (=> true (= (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| QPMask@1) o_9@@7 f_5@@3) (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| QPMask@6) o_9@@7 f_5@@3)))
 :qid |stdinbpl.4047:29|
 :skolemid |423|
 :pattern ( (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| QPMask@6) o_9@@7 f_5@@3))
)) (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_58602_58603) ) (!  (=> (not (= f_5@@4 next)) (= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) o_9@@8 f_5@@4) (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@6) o_9@@8 f_5@@4)))
 :qid |stdinbpl.4047:29|
 :skolemid |423|
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@6) o_9@@8 f_5@@4))
))) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_37315_186613) ) (!  (=> true (= (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| QPMask@1) o_9@@9 f_5@@5) (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| QPMask@6) o_9@@9 f_5@@5)))
 :qid |stdinbpl.4047:29|
 :skolemid |423|
 :pattern ( (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| QPMask@6) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_37315_186746) ) (!  (=> true (= (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| QPMask@1) o_9@@10 f_5@@6) (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| QPMask@6) o_9@@10 f_5@@6)))
 :qid |stdinbpl.4047:29|
 :skolemid |423|
 :pattern ( (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| QPMask@6) o_9@@10 f_5@@6))
))) (and (and (=> (= (ControlFlow 0 38) 32) anon65_Else_correct) (=> (= (ControlFlow 0 38) 35) anon66_Then_correct)) (=> (= (ControlFlow 0 38) 37) anon66_Else_correct)))))))))))))))
(let ((anon64_Then_correct  (and (=> (= (ControlFlow 0 26) (- 0 30)) (forall ((n_6 T@Ref) (n_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6 n_6_1)) (select g0@@10 n_6)) (select g0@@10 n_6_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_6 n_6_1)))
 :qid |stdinbpl.3944:21|
 :skolemid |410|
 :pattern ( (neverTriggered50 n_6) (neverTriggered50 n_6_1))
))) (=> (forall ((n_6@@0 T@Ref) (n_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@0 n_6_1@@0)) (select g0@@10 n_6@@0)) (select g0@@10 n_6_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_6@@0 n_6_1@@0)))
 :qid |stdinbpl.3944:21|
 :skolemid |410|
 :pattern ( (neverTriggered50 n_6@@0) (neverTriggered50 n_6_1@@0))
)) (and (=> (= (ControlFlow 0 26) (- 0 29)) (forall ((n_6@@1 T@Ref) ) (!  (=> (select g0@@10 n_6@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) n_6@@1 next) NoPerm)))
 :qid |stdinbpl.3951:21|
 :skolemid |411|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@4) n_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_6@@1 next))
))) (=> (forall ((n_6@@2 T@Ref) ) (!  (=> (select g0@@10 n_6@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) n_6@@2 next) NoPerm)))
 :qid |stdinbpl.3951:21|
 :skolemid |411|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_6@@2 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@4) n_6@@2 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_6@@2 next))
)) (=> (and (forall ((n_6@@3 T@Ref) ) (!  (=> (and (select g0@@10 n_6@@3) (< NoPerm FullPerm)) (and (qpRange50 n_6@@3) (= (invRecv50 n_6@@3) n_6@@3)))
 :qid |stdinbpl.3957:26|
 :skolemid |412|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@4) n_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_6@@3 next))
)) (forall ((o_9@@11 T@Ref) ) (!  (=> (and (select g0@@10 (invRecv50 o_9@@11)) (and (< NoPerm FullPerm) (qpRange50 o_9@@11))) (= (invRecv50 o_9@@11) o_9@@11))
 :qid |stdinbpl.3961:26|
 :skolemid |413|
 :pattern ( (invRecv50 o_9@@11))
))) (and (=> (= (ControlFlow 0 26) (- 0 28)) (forall ((n_7 T@Ref) (n_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7 n_7_1)) (select g1@@10 n_7)) (select g1@@10 n_7_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_7 n_7_1)))
 :qid |stdinbpl.3972:21|
 :skolemid |414|
 :pattern ( (neverTriggered51 n_7) (neverTriggered51 n_7_1))
))) (=> (forall ((n_7@@0 T@Ref) (n_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@0 n_7_1@@0)) (select g1@@10 n_7@@0)) (select g1@@10 n_7_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_7@@0 n_7_1@@0)))
 :qid |stdinbpl.3972:21|
 :skolemid |414|
 :pattern ( (neverTriggered51 n_7@@0) (neverTriggered51 n_7_1@@0))
)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (forall ((n_7@@1 T@Ref) ) (!  (=> (select g1@@10 n_7@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) n_7@@1 next) NoPerm)))
 :qid |stdinbpl.3979:21|
 :skolemid |415|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@5) n_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_7@@1 next))
))) (=> (forall ((n_7@@2 T@Ref) ) (!  (=> (select g1@@10 n_7@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) n_7@@2 next) NoPerm)))
 :qid |stdinbpl.3979:21|
 :skolemid |415|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_7@@2 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@5) n_7@@2 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_7@@2 next))
)) (=> (forall ((n_7@@3 T@Ref) ) (!  (=> (and (select g1@@10 n_7@@3) (< NoPerm FullPerm)) (and (qpRange51 n_7@@3) (= (invRecv51 n_7@@3) n_7@@3)))
 :qid |stdinbpl.3985:26|
 :skolemid |416|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@5) n_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_7@@3 next))
)) (=> (and (forall ((o_9@@12 T@Ref) ) (!  (=> (and (select g1@@10 (invRecv51 o_9@@12)) (and (< NoPerm FullPerm) (qpRange51 o_9@@12))) (= (invRecv51 o_9@@12) o_9@@12))
 :qid |stdinbpl.3989:26|
 :skolemid |417|
 :pattern ( (invRecv51 o_9@@12))
)) (= (ControlFlow 0 26) (- 0 25))) (|Set#Equal_37295| (|Set#Intersection_37295| g1@@10 g0@@10) |Set#Empty_37301|))))))))))))))
(let ((anon57_Else_correct  (=> (state Heap@@41 QPMask@1) (and (=> (= (ControlFlow 0 42) 26) anon64_Then_correct) (=> (= (ControlFlow 0 42) 38) anon64_Else_correct)))))
(let ((anon56_Else_correct  (=> (and (exists_path ($$ Heap@@41 g1@@10) x1 y1) (state Heap@@41 QPMask@1)) (and (=> (= (ControlFlow 0 63) 62) anon57_Then_correct) (=> (= (ControlFlow 0 63) 42) anon57_Else_correct)))))
(let ((anon56_Then_correct  (and (=> (= (ControlFlow 0 23) (- 0 24)) (forall ((n_3 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3 n_3_1)) (select g1@@10 n_3)) (select g1@@10 n_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3 n_3_1)))
 :qid |stdinbpl.3738:21|
 :skolemid |391|
 :pattern ( (neverTriggered45 n_3) (neverTriggered45 n_3_1))
))) (=> (forall ((n_3@@0 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@0 n_3_1@@0)) (select g1@@10 n_3@@0)) (select g1@@10 n_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3@@0 n_3_1@@0)))
 :qid |stdinbpl.3738:21|
 :skolemid |391|
 :pattern ( (neverTriggered45 n_3@@0) (neverTriggered45 n_3_1@@0))
)) (=> (= (ControlFlow 0 23) (- 0 22)) (forall ((n_3@@1 T@Ref) ) (!  (=> (select g1@@10 n_3@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) n_3@@1 next) NoPerm)))
 :qid |stdinbpl.3745:21|
 :skolemid |392|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@3) n_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_3@@1 next))
)))))))
(let ((anon55_Else_correct  (=> (exists_path ($$ Heap@@41 g0@@10) x0 y0) (=> (and (state Heap@@41 QPMask@1) (state Heap@@41 QPMask@1)) (and (=> (= (ControlFlow 0 64) 23) anon56_Then_correct) (=> (= (ControlFlow 0 64) 63) anon56_Else_correct))))))
(let ((anon55_Then_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) (forall ((n_2 T@Ref) (n_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2 n_2_1)) (select g0@@10 n_2)) (select g0@@10 n_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_2 n_2_1)))
 :qid |stdinbpl.3694:21|
 :skolemid |387|
 :pattern ( (neverTriggered44 n_2) (neverTriggered44 n_2_1))
))) (=> (forall ((n_2@@0 T@Ref) (n_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@0 n_2_1@@0)) (select g0@@10 n_2@@0)) (select g0@@10 n_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_2@@0 n_2_1@@0)))
 :qid |stdinbpl.3694:21|
 :skolemid |387|
 :pattern ( (neverTriggered44 n_2@@0) (neverTriggered44 n_2_1@@0))
)) (=> (= (ControlFlow 0 20) (- 0 19)) (forall ((n_2@@1 T@Ref) ) (!  (=> (select g0@@10 n_2@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) n_2@@1 next) NoPerm)))
 :qid |stdinbpl.3701:21|
 :skolemid |388|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@2) n_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_2@@1 next))
)))))))
(let ((anon54_Else_correct  (=> (forall ((r$0_1 T@Ref) ) (!  (=> (select g1@@10 r$0_1) (not (select g0@@10 r$0_1)))
 :qid |stdinbpl.3675:20|
 :skolemid |386|
 :pattern ( (select g0@@10 r$0_1) (select g1@@10 r$0_1))
)) (=> (and (state Heap@@41 QPMask@1) (state Heap@@41 QPMask@1)) (and (=> (= (ControlFlow 0 65) 20) anon55_Then_correct) (=> (= (ControlFlow 0 65) 64) anon55_Else_correct))))))
(let ((anon54_Then_correct true))
(let ((anon53_Else_correct  (=> (forall ((r_1_1 T@Ref) ) (!  (=> (select g0@@10 r_1_1) (not (select g1@@10 r_1_1)))
 :qid |stdinbpl.3666:20|
 :skolemid |385|
 :pattern ( (select g0@@10 r_1_1) (select g1@@10 r_1_1))
)) (and (=> (= (ControlFlow 0 66) 18) anon54_Then_correct) (=> (= (ControlFlow 0 66) 65) anon54_Else_correct)))))
(let ((anon53_Then_correct true))
(let ((anon50_Else_correct  (=> (and (and (and (forall ((n$2_1 T@Ref) ) (!  (=> (and (select g1@@10 n$2_1) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$2_1 next) null))) (select g1@@10 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$2_1 next)))
 :qid |stdinbpl.3650:20|
 :skolemid |384|
 :pattern ( (select g1@@10 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$2_1 next)))
 :pattern ( (select g1@@10 n$2_1) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$2_1 next))
)) (state Heap@@41 QPMask@1)) (and (select g0@@10 x0) (select g0@@10 y0))) (and (and (state Heap@@41 QPMask@1) (select g1@@10 x1)) (and (select g1@@10 y1) (state Heap@@41 QPMask@1)))) (and (=> (= (ControlFlow 0 67) 17) anon53_Then_correct) (=> (= (ControlFlow 0 67) 66) anon53_Else_correct)))))
(let ((anon15_correct true))
(let ((anon52_Else_correct  (=> (and (not (and (select g1@@10 n$2_17) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$2_17 next) null)))) (= (ControlFlow 0 13) 10)) anon15_correct)))
(let ((anon52_Then_correct  (=> (and (select g1@@10 n$2_17) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$2_17 next) null))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_37315_37316 QPMask@1 n$2_17 next)) (=> (HasDirectPerm_37315_37316 QPMask@1 n$2_17 next) (=> (= (ControlFlow 0 11) 10) anon15_correct))))))
(let ((anon51_Else_correct  (=> (not (select g1@@10 n$2_17)) (and (=> (= (ControlFlow 0 16) 11) anon52_Then_correct) (=> (= (ControlFlow 0 16) 13) anon52_Else_correct)))))
(let ((anon51_Then_correct  (=> (select g1@@10 n$2_17) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_37315_37316 QPMask@1 n$2_17 next)) (=> (HasDirectPerm_37315_37316 QPMask@1 n$2_17 next) (and (=> (= (ControlFlow 0 14) 11) anon52_Then_correct) (=> (= (ControlFlow 0 14) 13) anon52_Else_correct)))))))
(let ((anon49_Else_correct  (and (=> (= (ControlFlow 0 68) (- 0 69)) (forall ((n$1_1 T@Ref) (n$1_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1 n$1_1_1)) (select g1@@10 n$1_1)) (select g1@@10 n$1_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_1 n$1_1_1)))
 :qid |stdinbpl.3605:15|
 :skolemid |378|
))) (=> (forall ((n$1_1@@0 T@Ref) (n$1_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1@@0 n$1_1_1@@0)) (select g1@@10 n$1_1@@0)) (select g1@@10 n$1_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_1@@0 n$1_1_1@@0)))
 :qid |stdinbpl.3605:15|
 :skolemid |378|
)) (=> (and (and (forall ((n$1_1@@1 T@Ref) ) (!  (=> (and (select g1@@10 n$1_1@@1) (< NoPerm FullPerm)) (and (qpRange43 n$1_1@@1) (= (invRecv43 n$1_1@@1) n$1_1@@1)))
 :qid |stdinbpl.3611:22|
 :skolemid |379|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) n$1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$1_1@@1 next))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (select g1@@10 (invRecv43 o_9@@13)) (< NoPerm FullPerm)) (qpRange43 o_9@@13)) (= (invRecv43 o_9@@13) o_9@@13))
 :qid |stdinbpl.3615:22|
 :skolemid |380|
 :pattern ( (invRecv43 o_9@@13))
))) (and (forall ((n$1_1@@2 T@Ref) ) (!  (=> (select g1@@10 n$1_1@@2) (not (= n$1_1@@2 null)))
 :qid |stdinbpl.3621:22|
 :skolemid |381|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) n$1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$1_1@@2 next))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (select g1@@10 (invRecv43 o_9@@14)) (< NoPerm FullPerm)) (qpRange43 o_9@@14)) (and (=> (< NoPerm FullPerm) (= (invRecv43 o_9@@14) o_9@@14)) (= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) o_9@@14 next) (+ (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) o_9@@14 next) FullPerm)))) (=> (not (and (and (select g1@@10 (invRecv43 o_9@@14)) (< NoPerm FullPerm)) (qpRange43 o_9@@14))) (= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) o_9@@14 next) (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) o_9@@14 next))))
 :qid |stdinbpl.3627:22|
 :skolemid |382|
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) o_9@@14 next))
)))) (=> (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@7 T@Field_58589_53) ) (!  (=> true (= (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| QPMask@0) o_9@@15 f_5@@7) (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| QPMask@1) o_9@@15 f_5@@7)))
 :qid |stdinbpl.3631:29|
 :skolemid |383|
 :pattern ( (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| QPMask@0) o_9@@15 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| QPMask@1) o_9@@15 f_5@@7))
)) (forall ((o_9@@16 T@Ref) (f_5@@8 T@Field_58602_58603) ) (!  (=> (not (= f_5@@8 next)) (= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) o_9@@16 f_5@@8) (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) o_9@@16 f_5@@8)))
 :qid |stdinbpl.3631:29|
 :skolemid |383|
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) o_9@@16 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) o_9@@16 f_5@@8))
))) (forall ((o_9@@17 T@Ref) (f_5@@9 T@Field_37315_186613) ) (!  (=> true (= (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| QPMask@0) o_9@@17 f_5@@9) (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| QPMask@1) o_9@@17 f_5@@9)))
 :qid |stdinbpl.3631:29|
 :skolemid |383|
 :pattern ( (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| QPMask@0) o_9@@17 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| QPMask@1) o_9@@17 f_5@@9))
))) (forall ((o_9@@18 T@Ref) (f_5@@10 T@Field_37315_186746) ) (!  (=> true (= (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| QPMask@0) o_9@@18 f_5@@10) (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| QPMask@1) o_9@@18 f_5@@10)))
 :qid |stdinbpl.3631:29|
 :skolemid |383|
 :pattern ( (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| QPMask@0) o_9@@18 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| QPMask@1) o_9@@18 f_5@@10))
))) (state Heap@@41 QPMask@1)) (and (and (=> (= (ControlFlow 0 68) 67) anon50_Else_correct) (=> (= (ControlFlow 0 68) 14) anon51_Then_correct)) (=> (= (ControlFlow 0 68) 16) anon51_Else_correct))))))))
(let ((anon49_Then_correct true))
(let ((anon46_Else_correct  (=> (forall ((n$0_1 T@Ref) ) (!  (=> (and (select g0@@10 n$0_1) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$0_1 next) null))) (select g0@@10 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$0_1 next)))
 :qid |stdinbpl.3592:20|
 :skolemid |377|
 :pattern ( (select g0@@10 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$0_1 next)))
 :pattern ( (select g0@@10 n$0_1) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$0_1 next))
)) (=> (and (state Heap@@41 QPMask@0) (not (select g1@@10 null))) (and (=> (= (ControlFlow 0 70) 9) anon49_Then_correct) (=> (= (ControlFlow 0 70) 68) anon49_Else_correct))))))
(let ((anon7_correct true))
(let ((anon48_Else_correct  (=> (and (not (and (select g0@@10 n$0_24) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$0_24 next) null)))) (= (ControlFlow 0 5) 2)) anon7_correct)))
(let ((anon48_Then_correct  (=> (and (select g0@@10 n$0_24) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$0_24 next) null))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_37315_37316 QPMask@0 n$0_24 next)) (=> (HasDirectPerm_37315_37316 QPMask@0 n$0_24 next) (=> (= (ControlFlow 0 3) 2) anon7_correct))))))
(let ((anon47_Else_correct  (=> (not (select g0@@10 n$0_24)) (and (=> (= (ControlFlow 0 8) 3) anon48_Then_correct) (=> (= (ControlFlow 0 8) 5) anon48_Else_correct)))))
(let ((anon47_Then_correct  (=> (select g0@@10 n$0_24) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_37315_37316 QPMask@0 n$0_24 next)) (=> (HasDirectPerm_37315_37316 QPMask@0 n$0_24 next) (and (=> (= (ControlFlow 0 6) 3) anon48_Then_correct) (=> (= (ControlFlow 0 6) 5) anon48_Else_correct)))))))
(let ((anon45_Else_correct  (and (=> (= (ControlFlow 0 71) (- 0 72)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select g0@@10 n_1)) (select g0@@10 n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.3547:15|
 :skolemid |371|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select g0@@10 n_1@@0)) (select g0@@10 n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.3547:15|
 :skolemid |371|
)) (=> (and (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select g0@@10 n_1@@1) (< NoPerm FullPerm)) (and (qpRange42 n_1@@1) (= (invRecv42 n_1@@1) n_1@@1)))
 :qid |stdinbpl.3553:22|
 :skolemid |372|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_1@@1 next))
)) (forall ((o_9@@19 T@Ref) ) (!  (=> (and (and (select g0@@10 (invRecv42 o_9@@19)) (< NoPerm FullPerm)) (qpRange42 o_9@@19)) (= (invRecv42 o_9@@19) o_9@@19))
 :qid |stdinbpl.3557:22|
 :skolemid |373|
 :pattern ( (invRecv42 o_9@@19))
))) (and (forall ((n_1@@2 T@Ref) ) (!  (=> (select g0@@10 n_1@@2) (not (= n_1@@2 null)))
 :qid |stdinbpl.3563:22|
 :skolemid |374|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_1@@2 next))
)) (forall ((o_9@@20 T@Ref) ) (!  (and (=> (and (and (select g0@@10 (invRecv42 o_9@@20)) (< NoPerm FullPerm)) (qpRange42 o_9@@20)) (and (=> (< NoPerm FullPerm) (= (invRecv42 o_9@@20) o_9@@20)) (= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) o_9@@20 next) (+ (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| ZeroMask) o_9@@20 next) FullPerm)))) (=> (not (and (and (select g0@@10 (invRecv42 o_9@@20)) (< NoPerm FullPerm)) (qpRange42 o_9@@20))) (= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) o_9@@20 next) (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| ZeroMask) o_9@@20 next))))
 :qid |stdinbpl.3569:22|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) o_9@@20 next))
)))) (=> (and (and (and (and (forall ((o_9@@21 T@Ref) (f_5@@11 T@Field_58589_53) ) (!  (=> true (= (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| ZeroMask) o_9@@21 f_5@@11) (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| QPMask@0) o_9@@21 f_5@@11)))
 :qid |stdinbpl.3573:29|
 :skolemid |376|
 :pattern ( (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| ZeroMask) o_9@@21 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| QPMask@0) o_9@@21 f_5@@11))
)) (forall ((o_9@@22 T@Ref) (f_5@@12 T@Field_58602_58603) ) (!  (=> (not (= f_5@@12 next)) (= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| ZeroMask) o_9@@22 f_5@@12) (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) o_9@@22 f_5@@12)))
 :qid |stdinbpl.3573:29|
 :skolemid |376|
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| ZeroMask) o_9@@22 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) o_9@@22 f_5@@12))
))) (forall ((o_9@@23 T@Ref) (f_5@@13 T@Field_37315_186613) ) (!  (=> true (= (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| ZeroMask) o_9@@23 f_5@@13) (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| QPMask@0) o_9@@23 f_5@@13)))
 :qid |stdinbpl.3573:29|
 :skolemid |376|
 :pattern ( (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| ZeroMask) o_9@@23 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| QPMask@0) o_9@@23 f_5@@13))
))) (forall ((o_9@@24 T@Ref) (f_5@@14 T@Field_37315_186746) ) (!  (=> true (= (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| ZeroMask) o_9@@24 f_5@@14) (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| QPMask@0) o_9@@24 f_5@@14)))
 :qid |stdinbpl.3573:29|
 :skolemid |376|
 :pattern ( (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| ZeroMask) o_9@@24 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| QPMask@0) o_9@@24 f_5@@14))
))) (state Heap@@41 QPMask@0)) (and (and (=> (= (ControlFlow 0 71) 70) anon46_Else_correct) (=> (= (ControlFlow 0 71) 6) anon47_Then_correct)) (=> (= (ControlFlow 0 71) 8) anon47_Else_correct))))))))
(let ((anon45_Then_correct true))
(let ((anon0_correct  (=> (and (and (and (state Heap@@41 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@41) x0 $allocated))) (and (and (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@41) y0 $allocated) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@41) x1 $allocated)) (and (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@41) y1 $allocated) (not (select g0@@10 null))))) (and (=> (= (ControlFlow 0 73) 1) anon45_Then_correct) (=> (= (ControlFlow 0 73) 71) anon45_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 74) 73) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
