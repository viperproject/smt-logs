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
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (start T@Ref) (end T@Ref) ) (! (= (exists_path_ EG_1 start end)  (or (= start end) (exists ((w_2 T@Ref) ) (!  (and (edge EG_1 start w_2) (exists_path_ EG_1 w_2 end))
 :qid |stdinbpl.754:70|
 :skolemid |90|
 :pattern ( (edge EG_1 start w_2))
 :pattern ( (exists_path_ EG_1 w_2 end))
))))
 :qid |stdinbpl.752:15|
 :skolemid |91|
 :pattern ( (exists_path EG_1 start end))
 :pattern ( (edge EG_1 start end))
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
(assert (forall ((Heap@@5 T@PolymorphicMapType_58529) (Mask@@0 T@PolymorphicMapType_58550) (g0@@0 (Array T@Ref Bool)) (g1@@0 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@5 Mask@@0) (or (< AssumeFunctionsAbove 3) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6487 (|apply_TCFraming#condqp1| Heap@@5 g0@@0 g1@@0)) (FrameFragment_6487 (|apply_TCFraming#condqp2| Heap@@5 g0@@0 g1@@0))) g0@@0 g1@@0))) (=> (|Set#Equal_37295| (|Set#Intersection_37295| g1@@0 g0@@0) |Set#Empty_37301|) (forall ((u_2_1 T@Ref) (v_2_1 T@Ref) ) (!  (=> (and (select g0@@0 u_2_1) (and (select g0@@0 v_2_1) (not (exists_path ($$ Heap@@5 g0@@0) u_2_1 v_2_1)))) (not (exists_path ($$ Heap@@5 (|Set#Union_37395| g0@@0 g1@@0)) u_2_1 v_2_1)))
 :qid |stdinbpl.896:285|
 :skolemid |114|
 :pattern ( (select g0@@0 u_2_1) (select g0@@0 v_2_1))
 :pattern ( (select g0@@0 u_2_1) (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@5 g0@@0)) g0@@0) u_2_1 v_2_1))
 :pattern ( (select g0@@0 u_2_1) (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@5 (|Set#Union_37395| g0@@0 g1@@0))) (|Set#Union_37395| g0@@0 g1@@0)) u_2_1 v_2_1))
 :pattern ( (select g0@@0 v_2_1) (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@5 g0@@0)) g0@@0) u_2_1 v_2_1))
 :pattern ( (select g0@@0 v_2_1) (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@5 (|Set#Union_37395| g0@@0 g1@@0))) (|Set#Union_37395| g0@@0 g1@@0)) u_2_1 v_2_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@5 g0@@0)) g0@@0) u_2_1 v_2_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@5 (|Set#Union_37395| g0@@0 g1@@0))) (|Set#Union_37395| g0@@0 g1@@0)) u_2_1 v_2_1))
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
(assert (forall ((EG_1@@0 (Array T@EdgeDomainType Bool)) (U_1 (Array T@Ref Bool)) (M (Array T@Ref Bool)) ) (!  (=> (apply_noExit EG_1@@0 U_1 M) (=> (forall ((u_3 T@Ref) (v_2 T@Ref) ) (!  (=> (and (select M u_3) (and (select U_1 v_2) (not (select M v_2)))) (not (edge EG_1@@0 u_3 v_2)))
 :qid |stdinbpl.730:50|
 :skolemid |85|
 :pattern ( (edge EG_1@@0 u_3 v_2))
 :pattern ( (select M u_3) (select M v_2))
)) (forall ((u_1 T@Ref) (v_1_1 T@Ref) ) (!  (=> (and (select M u_1) (and (select U_1 v_1_1) (not (select M v_1_1)))) (not (exists_path EG_1@@0 u_1 v_1_1)))
 :qid |stdinbpl.733:17|
 :skolemid |86|
 :pattern ( (exists_path EG_1@@0 u_1 v_1_1))
 :pattern ( (select M u_1) (select M v_1_1))
))))
 :qid |stdinbpl.728:15|
 :skolemid |87|
 :pattern ( (apply_noExit EG_1@@0 U_1 M))
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
(assert (forall ((Heap@@8 T@PolymorphicMapType_58529) (ExhaleHeap T@PolymorphicMapType_58529) (Mask@@2 T@PolymorphicMapType_58550) (pm_f_35 T@Field_37315_186613) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_37315_186677 Mask@@2 null pm_f_35) (IsPredicateField_37315_186704 pm_f_35)) (= (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@8) null (PredicateMaskField_37315 pm_f_35)) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap) null (PredicateMaskField_37315 pm_f_35)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@2) (IsPredicateField_37315_186704 pm_f_35) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap) null (PredicateMaskField_37315 pm_f_35)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_58529) (ExhaleHeap@@0 T@PolymorphicMapType_58529) (Mask@@3 T@PolymorphicMapType_58550) (pm_f_35@@0 T@Field_37315_186613) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_37315_186677 Mask@@3 null pm_f_35@@0) (IsWandField_37315_188253 pm_f_35@@0)) (= (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@9) null (WandMaskField_37315 pm_f_35@@0)) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@0) null (WandMaskField_37315 pm_f_35@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@3) (IsWandField_37315_188253 pm_f_35@@0) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@0) null (WandMaskField_37315 pm_f_35@@0)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_58529) (Mask@@4 T@PolymorphicMapType_58550) (g0@@2 (Array T@Ref Bool)) (g1@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@10 Mask@@4) (or (< AssumeFunctionsAbove 3) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6487 (|apply_TCFraming#condqp1| Heap@@10 g0@@2 g1@@2)) (FrameFragment_6487 (|apply_TCFraming#condqp2| Heap@@10 g0@@2 g1@@2))) g0@@2 g1@@2))) (=> (|Set#Equal_37295| (|Set#Intersection_37295| g1@@2 g0@@2) |Set#Empty_37301|) (|Set#Equal_37295| (|Set#Union_37395| g0@@2 g1@@2) (|Set#Union_37395| g1@@2 g0@@2))))
 :qid |stdinbpl.876:15|
 :skolemid |109|
 :pattern ( (state Heap@@10 Mask@@4) (|apply_TCFraming'| Heap@@10 g0@@2 g1@@2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_58529) (Mask@@5 T@PolymorphicMapType_58550) (g_1@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@11 Mask@@5) (< AssumeFunctionsAbove 0)) (=> (and (not (select g_1@@2 null)) (forall ((n$0_13 T@Ref) ) (!  (=> (and (select g_1@@2 n$0_13) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@11) n$0_13 next) null))) (select g_1@@2 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@11) n$0_13 next)))
 :qid |stdinbpl.1954:75|
 :skolemid |225|
 :pattern ( (select g_1@@2 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@11) n$0_13 next)))
 :pattern ( (select g_1@@2 n$0_13) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@11) n$0_13 next))
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
(assert (forall ((Heap@@12 T@PolymorphicMapType_58529) (Mask@@6 T@PolymorphicMapType_58550) (refs@@1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@12 Mask@@6) (or (< AssumeFunctionsAbove 4) (|$$#trigger| (FrameFragment_6487 (|$$#condqp3| Heap@@12 refs@@1)) refs@@1))) (forall ((p_1 T@Ref) (s_2 T@Ref) ) (! (=  (and (select refs@@1 p_1) (and (select refs@@1 s_2) (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@12) p_1 next) s_2))) (select (|$$'| Heap@@12 refs@@1) (create_edge p_1 s_2)))
 :qid |stdinbpl.1443:122|
 :skolemid |170|
 :pattern ( (create_edge p_1 s_2))
)))
 :qid |stdinbpl.1441:15|
 :skolemid |171|
 :pattern ( (state Heap@@12 Mask@@6) (|$$'| Heap@@12 refs@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_58529) (ExhaleHeap@@1 T@PolymorphicMapType_58529) (Mask@@7 T@PolymorphicMapType_58550) (pm_f_35@@1 T@Field_37315_186613) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@1 Mask@@7) (=> (and (HasDirectPerm_37315_186677 Mask@@7 null pm_f_35@@1) (IsPredicateField_37315_186704 pm_f_35@@1)) (and (and (and (forall ((o2_35 T@Ref) (f_67 T@Field_58589_53) ) (!  (=> (select (|PolymorphicMapType_59078_58589_53#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@13) null (PredicateMaskField_37315 pm_f_35@@1))) o2_35 f_67) (= (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@13) o2_35 f_67) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@1) o2_35 f_67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@1) o2_35 f_67))
)) (forall ((o2_35@@0 T@Ref) (f_67@@0 T@Field_58602_58603) ) (!  (=> (select (|PolymorphicMapType_59078_58589_58603#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@13) null (PredicateMaskField_37315 pm_f_35@@1))) o2_35@@0 f_67@@0) (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@13) o2_35@@0 f_67@@0) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| ExhaleHeap@@1) o2_35@@0 f_67@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| ExhaleHeap@@1) o2_35@@0 f_67@@0))
))) (forall ((o2_35@@1 T@Ref) (f_67@@1 T@Field_37315_186613) ) (!  (=> (select (|PolymorphicMapType_59078_58589_186613#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@13) null (PredicateMaskField_37315 pm_f_35@@1))) o2_35@@1 f_67@@1) (= (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@13) o2_35@@1 f_67@@1) (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| ExhaleHeap@@1) o2_35@@1 f_67@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| ExhaleHeap@@1) o2_35@@1 f_67@@1))
))) (forall ((o2_35@@2 T@Ref) (f_67@@2 T@Field_37315_186746) ) (!  (=> (select (|PolymorphicMapType_59078_58589_187726#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@13) null (PredicateMaskField_37315 pm_f_35@@1))) o2_35@@2 f_67@@2) (= (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@13) o2_35@@2 f_67@@2) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@1) o2_35@@2 f_67@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@1) o2_35@@2 f_67@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@1 Mask@@7) (IsPredicateField_37315_186704 pm_f_35@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_58529) (ExhaleHeap@@2 T@PolymorphicMapType_58529) (Mask@@8 T@PolymorphicMapType_58550) (pm_f_35@@2 T@Field_37315_186613) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@2 Mask@@8) (=> (and (HasDirectPerm_37315_186677 Mask@@8 null pm_f_35@@2) (IsWandField_37315_188253 pm_f_35@@2)) (and (and (and (forall ((o2_35@@3 T@Ref) (f_67@@3 T@Field_58589_53) ) (!  (=> (select (|PolymorphicMapType_59078_58589_53#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@14) null (WandMaskField_37315 pm_f_35@@2))) o2_35@@3 f_67@@3) (= (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@14) o2_35@@3 f_67@@3) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@2) o2_35@@3 f_67@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@2) o2_35@@3 f_67@@3))
)) (forall ((o2_35@@4 T@Ref) (f_67@@4 T@Field_58602_58603) ) (!  (=> (select (|PolymorphicMapType_59078_58589_58603#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@14) null (WandMaskField_37315 pm_f_35@@2))) o2_35@@4 f_67@@4) (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@14) o2_35@@4 f_67@@4) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| ExhaleHeap@@2) o2_35@@4 f_67@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| ExhaleHeap@@2) o2_35@@4 f_67@@4))
))) (forall ((o2_35@@5 T@Ref) (f_67@@5 T@Field_37315_186613) ) (!  (=> (select (|PolymorphicMapType_59078_58589_186613#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@14) null (WandMaskField_37315 pm_f_35@@2))) o2_35@@5 f_67@@5) (= (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@14) o2_35@@5 f_67@@5) (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| ExhaleHeap@@2) o2_35@@5 f_67@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| ExhaleHeap@@2) o2_35@@5 f_67@@5))
))) (forall ((o2_35@@6 T@Ref) (f_67@@6 T@Field_37315_186746) ) (!  (=> (select (|PolymorphicMapType_59078_58589_187726#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@14) null (WandMaskField_37315 pm_f_35@@2))) o2_35@@6 f_67@@6) (= (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@14) o2_35@@6 f_67@@6) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@2) o2_35@@6 f_67@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@2) o2_35@@6 f_67@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@2 Mask@@8) (IsWandField_37315_188253 pm_f_35@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1@@3 (Array T@EdgeDomainType Bool)) (u_3@@0 T@Ref) (v_2@@2 T@Ref) (w_2@@0 T@Ref) ) (!  (=> (and (exists_path_ EG_1@@3 u_3@@0 w_2@@0) (exists_path_ EG_1@@3 w_2@@0 v_2@@2)) (exists_path_ EG_1@@3 u_3@@0 v_2@@2))
 :qid |stdinbpl.761:15|
 :skolemid |92|
 :pattern ( (exists_path EG_1@@3 u_3@@0 w_2@@0) (exists_path EG_1@@3 w_2@@0 v_2@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_58529) (ExhaleHeap@@3 T@PolymorphicMapType_58529) (Mask@@9 T@PolymorphicMapType_58550) (o_65 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@9) (=> (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@15) o_65 $allocated) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@3) o_65 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@9) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@3) o_65 $allocated))
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
(assert (forall ((Heap@@19 T@PolymorphicMapType_58529) (ExhaleHeap@@5 T@PolymorphicMapType_58529) (Mask@@21 T@PolymorphicMapType_58550) (o_65@@0 T@Ref) (f_67@@7 T@Field_37315_186746) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@5 Mask@@21) (=> (HasDirectPerm_37315_191558 Mask@@21 o_65@@0 f_67@@7) (= (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@19) o_65@@0 f_67@@7) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@5) o_65@@0 f_67@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@5 Mask@@21) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@5) o_65@@0 f_67@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_58529) (ExhaleHeap@@6 T@PolymorphicMapType_58529) (Mask@@22 T@PolymorphicMapType_58550) (o_65@@1 T@Ref) (f_67@@8 T@Field_37315_186613) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@6 Mask@@22) (=> (HasDirectPerm_37315_186677 Mask@@22 o_65@@1 f_67@@8) (= (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@20) o_65@@1 f_67@@8) (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| ExhaleHeap@@6) o_65@@1 f_67@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@6 Mask@@22) (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| ExhaleHeap@@6) o_65@@1 f_67@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_58529) (ExhaleHeap@@7 T@PolymorphicMapType_58529) (Mask@@23 T@PolymorphicMapType_58550) (o_65@@2 T@Ref) (f_67@@9 T@Field_58589_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@7 Mask@@23) (=> (HasDirectPerm_37315_53 Mask@@23 o_65@@2 f_67@@9) (= (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@21) o_65@@2 f_67@@9) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@7) o_65@@2 f_67@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@7 Mask@@23) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@7) o_65@@2 f_67@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_58529) (ExhaleHeap@@8 T@PolymorphicMapType_58529) (Mask@@24 T@PolymorphicMapType_58550) (o_65@@3 T@Ref) (f_67@@10 T@Field_58602_58603) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@8 Mask@@24) (=> (HasDirectPerm_37315_37316 Mask@@24 o_65@@3 f_67@@10) (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@22) o_65@@3 f_67@@10) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| ExhaleHeap@@8) o_65@@3 f_67@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@8 Mask@@24) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| ExhaleHeap@@8) o_65@@3 f_67@@10))
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
(assert (forall ((Heap@@23 T@PolymorphicMapType_58529) (Mask@@25 T@PolymorphicMapType_58550) (g0@@4 (Array T@Ref Bool)) (g1@@4 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@23 Mask@@25) (or (< AssumeFunctionsAbove 3) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6487 (|apply_TCFraming#condqp1| Heap@@23 g0@@4 g1@@4)) (FrameFragment_6487 (|apply_TCFraming#condqp2| Heap@@23 g0@@4 g1@@4))) g0@@4 g1@@4))) (=> (|Set#Equal_37295| (|Set#Intersection_37295| g1@@4 g0@@4) |Set#Empty_37301|) (forall ((u_3@@1 T@Ref) (v_2@@3 T@Ref) ) (!  (=> (and (select g0@@4 u_3@@1) (and (select g0@@4 v_2@@3) (exists_path ($$ Heap@@23 g0@@4) u_3@@1 v_2@@3))) (exists_path ($$ Heap@@23 (|Set#Union_37395| g0@@4 g1@@4)) u_3@@1 v_2@@3))
 :qid |stdinbpl.882:285|
 :skolemid |110|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@23 g0@@4)) g0@@4) u_3@@1 v_2@@3))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@23 (|Set#Union_37395| g0@@4 g1@@4))) (|Set#Union_37395| g0@@4 g1@@4)) u_3@@1 v_2@@3))
))))
 :qid |stdinbpl.880:15|
 :skolemid |111|
 :pattern ( (state Heap@@23 Mask@@25) (|apply_TCFraming'| Heap@@23 g0@@4 g1@@4))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_58529) (Mask@@26 T@PolymorphicMapType_58550) (g0@@5 (Array T@Ref Bool)) (g1@@5 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@24 Mask@@26) (or (< AssumeFunctionsAbove 3) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6487 (|apply_TCFraming#condqp1| Heap@@24 g0@@5 g1@@5)) (FrameFragment_6487 (|apply_TCFraming#condqp2| Heap@@24 g0@@5 g1@@5))) g0@@5 g1@@5))) (=> (|Set#Equal_37295| (|Set#Intersection_37295| g1@@5 g0@@5) |Set#Empty_37301|) (forall ((u_1@@0 T@Ref) (v_1_1@@0 T@Ref) ) (!  (=> (and (select g1@@5 u_1@@0) (and (select g1@@5 v_1_1@@0) (exists_path ($$ Heap@@24 g1@@5) u_1@@0 v_1_1@@0))) (exists_path ($$ Heap@@24 (|Set#Union_37395| g1@@5 g0@@5)) u_1@@0 v_1_1@@0))
 :qid |stdinbpl.889:285|
 :skolemid |112|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@24 g1@@5)) g1@@5) u_1@@0 v_1_1@@0))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@24 (|Set#Union_37395| g1@@5 g0@@5))) (|Set#Union_37395| g1@@5 g0@@5)) u_1@@0 v_1_1@@0))
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
(assert (forall ((EG_1@@4 (Array T@EdgeDomainType Bool)) (from (Array T@Ref Bool)) (to T@Ref) ) (! (= (exists_spath EG_1@@4 from to) (exists ((f_69 T@Ref) ) (!  (and (select from f_69) (exists_path EG_1@@4 f_69 to))
 :qid |stdinbpl.796:51|
 :skolemid |99|
 :pattern ( (select from f_69))
 :pattern ( (exists_path EG_1@@4 f_69 to))
)))
 :qid |stdinbpl.794:15|
 :skolemid |100|
 :pattern ( (exists_spath EG_1@@4 from to))
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
(assert (forall ((Heap@@26 T@PolymorphicMapType_58529) (Mask@@27 T@PolymorphicMapType_58550) (refs@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@26 Mask@@27) (or (< AssumeFunctionsAbove 4) (|$$#trigger| (FrameFragment_6487 (|$$#condqp3| Heap@@26 refs@@2)) refs@@2))) (forall ((p_1_1 T@Ref) (s_1 T@Ref) ) (!  (=> (and (select refs@@2 p_1_1) (exists_path (|$$'| Heap@@26 refs@@2) p_1_1 s_1)) (select refs@@2 s_1))
 :qid |stdinbpl.1450:122|
 :skolemid |172|
 :pattern ( (select refs@@2 p_1_1) (select refs@@2 s_1) (exists_path (|$$'| Heap@@26 refs@@2) p_1_1 s_1))
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
(assert (forall ((EG_1@@6 (Array T@EdgeDomainType Bool)) (p_1@@0 T@Ref) (s_2@@0 T@Ref) ) (! (= (edge_ EG_1@@6 p_1@@0 s_2@@0) (select EG_1@@6 (create_edge p_1@@0 s_2@@0)))
 :qid |stdinbpl.722:15|
 :skolemid |84|
 :pattern ( (select EG_1@@6 (create_edge p_1@@0 s_2@@0)))
 :pattern ( (edge EG_1@@6 p_1@@0 s_2@@0))
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
(assert (forall ((Heap@@29 T@PolymorphicMapType_58529) (Mask@@30 T@PolymorphicMapType_58550) (g_1@@10 (Array T@Ref Bool)) (root@@2 T@Ref) ) (!  (=> (and (state Heap@@29 Mask@@30) (< AssumeFunctionsAbove 2)) (=> (and (and (not (select g_1@@10 null)) (forall ((n$1_12 T@Ref) ) (!  (=> (and (select g_1@@10 n$1_12) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@29) n$1_12 next) null))) (select g_1@@10 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@29) n$1_12 next)))
 :qid |stdinbpl.1583:76|
 :skolemid |187|
 :pattern ( (select g_1@@10 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@29) n$1_12 next)))
 :pattern ( (select g_1@@10 n$1_12) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@29) n$1_12 next))
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
(assert (forall ((p_1@@1 T@Ref) (s_2@@1 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@1 s_2@@1)) p_1@@1) (= (edge_succ (create_edge p_1@@1 s_2@@1)) s_2@@1))
 :qid |stdinbpl.673:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@1 s_2@@1))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_58529) (o_64 T@Ref) (f_68 T@Field_37315_186613) (v T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@30) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@30) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@30) (store (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@30) o_64 f_68 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@30) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@30) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@30) (store (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@30) o_64 f_68 v)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_58529) (o_64@@0 T@Ref) (f_68@@0 T@Field_37315_186746) (v@@0 T@PolymorphicMapType_59078) ) (! (succHeap Heap@@31 (PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@31) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@31) (store (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@31) o_64@@0 f_68@@0 v@@0) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@31) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@31) (store (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@31) o_64@@0 f_68@@0 v@@0) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_58529) (o_64@@1 T@Ref) (f_68@@1 T@Field_58602_58603) (v@@1 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@32) (store (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@32) o_64@@1 f_68@@1 v@@1) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@32) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@32) (store (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@32) o_64@@1 f_68@@1 v@@1) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@32) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_58529) (o_64@@2 T@Ref) (f_68@@2 T@Field_58589_53) (v@@2 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_58529 (store (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@33) o_64@@2 f_68@@2 v@@2) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@33) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@33) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_58529 (store (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@33) o_64@@2 f_68@@2 v@@2) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@33) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@33) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@33)))
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
(assert (forall ((o_64@@3 T@Ref) (f_66 T@Field_58602_58603) (Heap@@36 T@PolymorphicMapType_58529) ) (!  (=> (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@36) o_64@@3 $allocated) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@36) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@36) o_64@@3 f_66) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@36) o_64@@3 f_66))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_58529) (Mask@@33 T@PolymorphicMapType_58550) (g_1@@12 (Array T@Ref Bool)) (roots@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@37 Mask@@33) (< AssumeFunctionsAbove 1)) (=> (and (and (not (select g_1@@12 null)) (forall ((n$1_12@@0 T@Ref) ) (!  (=> (and (select g_1@@12 n$1_12@@0) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@37) n$1_12@@0 next) null))) (select g_1@@12 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@37) n$1_12@@0 next)))
 :qid |stdinbpl.1769:76|
 :skolemid |206|
 :pattern ( (select g_1@@12 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@37) n$1_12@@0 next)))
 :pattern ( (select g_1@@12 n$1_12@@0) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@37) n$1_12@@0 next))
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
(assert (forall ((EG_1@@8 (Array T@EdgeDomainType Bool)) (p_1@@2 T@Ref) (s_2@@2 T@Ref) ) (! (= (edge EG_1@@8 p_1@@2 s_2@@2) (edge_ EG_1@@8 p_1@@2 s_2@@2))
 :qid |stdinbpl.716:15|
 :skolemid |83|
 :pattern ( (edge EG_1@@8 p_1@@2 s_2@@2))
)))
(assert (forall ((EG_1@@9 (Array T@EdgeDomainType Bool)) (start@@0 T@Ref) (end@@0 T@Ref) ) (! (= (exists_path EG_1@@9 start@@0 end@@0) (exists_path_ EG_1@@9 start@@0 end@@0))
 :qid |stdinbpl.746:15|
 :skolemid |89|
 :pattern ( (exists_path EG_1@@9 start@@0 end@@0))
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
(declare-fun neverTriggered19 (T@Ref) Bool)
(declare-fun g_1@@15 () (Array T@Ref Bool))
(declare-fun Heap@@41 () T@PolymorphicMapType_58529)
(declare-fun QPMask@3 () T@PolymorphicMapType_58550)
(declare-fun QPMask@0 () T@PolymorphicMapType_58550)
(declare-fun neverTriggered18 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_58550)
(declare-fun neverTriggered17 (T@Ref) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_58550)
(declare-fun n$0_2 () T@Ref)
(declare-fun qpRange16 (T@Ref) Bool)
(declare-fun invRecv16 (T@Ref) T@Ref)
(set-info :boogie-vc-id |acyclic_list_segment#definedness|)
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
 (=> (= (ControlFlow 0 0) 27) (let ((anon25_Then_correct  (and (=> (= (ControlFlow 0 19) (- 0 20)) (forall ((n_7 T@Ref) (n_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7 n_7_1)) (select g_1@@15 n_7)) (select g_1@@15 n_7_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_7 n_7_1)))
 :qid |stdinbpl.2153:25|
 :skolemid |244|
 :pattern ( (neverTriggered19 n_7) (neverTriggered19 n_7_1))
))) (=> (forall ((n_7@@0 T@Ref) (n_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@0 n_7_1@@0)) (select g_1@@15 n_7@@0)) (select g_1@@15 n_7_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_7@@0 n_7_1@@0)))
 :qid |stdinbpl.2153:25|
 :skolemid |244|
 :pattern ( (neverTriggered19 n_7@@0) (neverTriggered19 n_7_1@@0))
)) (=> (= (ControlFlow 0 19) (- 0 18)) (forall ((n_7@@1 T@Ref) ) (!  (=> (select g_1@@15 n_7@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) n_7@@1 next) NoPerm)))
 :qid |stdinbpl.2160:25|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@3) n_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_7@@1 next))
)))))))
(let ((anon23_Then_correct  (and (=> (= (ControlFlow 0 15) (- 0 16)) (forall ((n_6 T@Ref) (n_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6 n_6_1)) (select g_1@@15 n_6)) (select g_1@@15 n_6_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_6 n_6_1)))
 :qid |stdinbpl.2113:23|
 :skolemid |240|
 :pattern ( (neverTriggered18 n_6) (neverTriggered18 n_6_1))
))) (=> (forall ((n_6@@0 T@Ref) (n_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@0 n_6_1@@0)) (select g_1@@15 n_6@@0)) (select g_1@@15 n_6_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_6@@0 n_6_1@@0)))
 :qid |stdinbpl.2113:23|
 :skolemid |240|
 :pattern ( (neverTriggered18 n_6@@0) (neverTriggered18 n_6_1@@0))
)) (=> (= (ControlFlow 0 15) (- 0 14)) (forall ((n_6@@1 T@Ref) ) (!  (=> (select g_1@@15 n_6@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) n_6@@1 next) NoPerm)))
 :qid |stdinbpl.2120:23|
 :skolemid |241|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@2) n_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_6@@1 next))
)))))))
(let ((anon16_correct true))
(let ((anon24_Then_correct  (=> (func_graph ($$ Heap@@41 g_1@@15)) (and (=> (= (ControlFlow 0 21) 19) anon25_Then_correct) (=> (= (ControlFlow 0 21) 12) anon16_correct)))))
(let ((anon24_Else_correct  (=> (and (not (func_graph ($$ Heap@@41 g_1@@15))) (= (ControlFlow 0 17) 12)) anon16_correct)))
(let ((anon22_Then_correct  (=> (acyclic_graph ($$ Heap@@41 g_1@@15)) (and (and (=> (= (ControlFlow 0 22) 15) anon23_Then_correct) (=> (= (ControlFlow 0 22) 21) anon24_Then_correct)) (=> (= (ControlFlow 0 22) 17) anon24_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (not (acyclic_graph ($$ Heap@@41 g_1@@15))) (= (ControlFlow 0 13) 12)) anon16_correct)))
(let ((anon21_Then_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (forall ((n_5 T@Ref) (n_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5 n_5_1)) (select g_1@@15 n_5)) (select g_1@@15 n_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_5 n_5_1)))
 :qid |stdinbpl.2073:21|
 :skolemid |236|
 :pattern ( (neverTriggered17 n_5) (neverTriggered17 n_5_1))
))) (=> (forall ((n_5@@0 T@Ref) (n_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@0 n_5_1@@0)) (select g_1@@15 n_5@@0)) (select g_1@@15 n_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_5@@0 n_5_1@@0)))
 :qid |stdinbpl.2073:21|
 :skolemid |236|
 :pattern ( (neverTriggered17 n_5@@0) (neverTriggered17 n_5_1@@0))
)) (=> (= (ControlFlow 0 10) (- 0 9)) (forall ((n_5@@1 T@Ref) ) (!  (=> (select g_1@@15 n_5@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) n_5@@1 next) NoPerm)))
 :qid |stdinbpl.2080:21|
 :skolemid |237|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@1) n_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_5@@1 next))
)))))))
(let ((anon18_Else_correct  (=> (and (forall ((n$0_3_2 T@Ref) ) (!  (=> (and (select g_1@@15 n$0_3_2) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$0_3_2 next) null))) (select g_1@@15 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$0_3_2 next)))
 :qid |stdinbpl.2053:20|
 :skolemid |235|
 :pattern ( (select g_1@@15 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$0_3_2 next)))
 :pattern ( (select g_1@@15 n$0_3_2) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$0_3_2 next))
)) (state Heap@@41 QPMask@0)) (and (and (=> (= (ControlFlow 0 23) 10) anon21_Then_correct) (=> (= (ControlFlow 0 23) 22) anon22_Then_correct)) (=> (= (ControlFlow 0 23) 13) anon22_Else_correct)))))
(let ((anon7_correct true))
(let ((anon20_Else_correct  (=> (and (not (and (select g_1@@15 n$0_2) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$0_2 next) null)))) (= (ControlFlow 0 5) 2)) anon7_correct)))
(let ((anon20_Then_correct  (=> (and (select g_1@@15 n$0_2) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n$0_2 next) null))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_37315_37316 QPMask@0 n$0_2 next)) (=> (HasDirectPerm_37315_37316 QPMask@0 n$0_2 next) (=> (= (ControlFlow 0 3) 2) anon7_correct))))))
(let ((anon19_Else_correct  (=> (not (select g_1@@15 n$0_2)) (and (=> (= (ControlFlow 0 8) 3) anon20_Then_correct) (=> (= (ControlFlow 0 8) 5) anon20_Else_correct)))))
(let ((anon19_Then_correct  (=> (select g_1@@15 n$0_2) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_37315_37316 QPMask@0 n$0_2 next)) (=> (HasDirectPerm_37315_37316 QPMask@0 n$0_2 next) (and (=> (= (ControlFlow 0 6) 3) anon20_Then_correct) (=> (= (ControlFlow 0 6) 5) anon20_Else_correct)))))))
(let ((anon17_Else_correct  (and (=> (= (ControlFlow 0 24) (- 0 25)) (forall ((n_4_1 T@Ref) (n_4_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4_1 n_4_2)) (select g_1@@15 n_4_1)) (select g_1@@15 n_4_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_4_1 n_4_2)))
 :qid |stdinbpl.2008:15|
 :skolemid |229|
))) (=> (forall ((n_4_1@@0 T@Ref) (n_4_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4_1@@0 n_4_2@@0)) (select g_1@@15 n_4_1@@0)) (select g_1@@15 n_4_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_4_1@@0 n_4_2@@0)))
 :qid |stdinbpl.2008:15|
 :skolemid |229|
)) (=> (and (and (forall ((n_4_1@@1 T@Ref) ) (!  (=> (and (select g_1@@15 n_4_1@@1) (< NoPerm FullPerm)) (and (qpRange16 n_4_1@@1) (= (invRecv16 n_4_1@@1) n_4_1@@1)))
 :qid |stdinbpl.2014:22|
 :skolemid |230|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_4_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) n_4_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_4_1@@1 next))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select g_1@@15 (invRecv16 o_4)) (< NoPerm FullPerm)) (qpRange16 o_4)) (= (invRecv16 o_4) o_4))
 :qid |stdinbpl.2018:22|
 :skolemid |231|
 :pattern ( (invRecv16 o_4))
))) (and (forall ((n_4_1@@2 T@Ref) ) (!  (=> (select g_1@@15 n_4_1@@2) (not (= n_4_1@@2 null)))
 :qid |stdinbpl.2024:22|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_4_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) n_4_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@41) n_4_1@@2 next))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select g_1@@15 (invRecv16 o_4@@0)) (< NoPerm FullPerm)) (qpRange16 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv16 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) o_4@@0 next) (+ (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| ZeroMask) o_4@@0 next) FullPerm)))) (=> (not (and (and (select g_1@@15 (invRecv16 o_4@@0)) (< NoPerm FullPerm)) (qpRange16 o_4@@0))) (= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) o_4@@0 next) (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| ZeroMask) o_4@@0 next))))
 :qid |stdinbpl.2030:22|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) o_4@@0 next))
)))) (=> (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_58589_53) ) (!  (=> true (= (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.2034:29|
 :skolemid |234|
 :pattern ( (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_58550_37315_53#PolymorphicMapType_58550| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_58602_58603) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.2034:29|
 :skolemid |234|
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_58550_37315_37316#PolymorphicMapType_58550| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_37315_186613) ) (!  (=> true (= (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.2034:29|
 :skolemid |234|
 :pattern ( (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_58550_37315_186613#PolymorphicMapType_58550| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_37315_186746) ) (!  (=> true (= (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.2034:29|
 :skolemid |234|
 :pattern ( (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_58550_37315_190292#PolymorphicMapType_58550| QPMask@0) o_4@@4 f_5@@2))
))) (state Heap@@41 QPMask@0)) (and (and (=> (= (ControlFlow 0 24) 23) anon18_Else_correct) (=> (= (ControlFlow 0 24) 6) anon19_Then_correct)) (=> (= (ControlFlow 0 24) 8) anon19_Else_correct))))))))
(let ((anon17_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@41 ZeroMask) (not AssumePermUpperBound)) (and (= AssumeFunctionsAbove 0) (not (select g_1@@15 null)))) (and (=> (= (ControlFlow 0 26) 1) anon17_Then_correct) (=> (= (ControlFlow 0 26) 24) anon17_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 27) 26) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
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
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (start T@Ref) (end T@Ref) ) (! (= (exists_path_ EG_1 start end)  (or (= start end) (exists ((w_2 T@Ref) ) (!  (and (edge EG_1 start w_2) (exists_path_ EG_1 w_2 end))
 :qid |stdinbpl.754:70|
 :skolemid |90|
 :pattern ( (edge EG_1 start w_2))
 :pattern ( (exists_path_ EG_1 w_2 end))
))))
 :qid |stdinbpl.752:15|
 :skolemid |91|
 :pattern ( (exists_path EG_1 start end))
 :pattern ( (edge EG_1 start end))
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
(assert (forall ((Heap@@5 T@PolymorphicMapType_58529) (Mask@@0 T@PolymorphicMapType_58550) (g0@@0 (Array T@Ref Bool)) (g1@@0 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@5 Mask@@0) (or (< AssumeFunctionsAbove 3) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6487 (|apply_TCFraming#condqp1| Heap@@5 g0@@0 g1@@0)) (FrameFragment_6487 (|apply_TCFraming#condqp2| Heap@@5 g0@@0 g1@@0))) g0@@0 g1@@0))) (=> (|Set#Equal_37295| (|Set#Intersection_37295| g1@@0 g0@@0) |Set#Empty_37301|) (forall ((u_2_1 T@Ref) (v_2_1 T@Ref) ) (!  (=> (and (select g0@@0 u_2_1) (and (select g0@@0 v_2_1) (not (exists_path ($$ Heap@@5 g0@@0) u_2_1 v_2_1)))) (not (exists_path ($$ Heap@@5 (|Set#Union_37395| g0@@0 g1@@0)) u_2_1 v_2_1)))
 :qid |stdinbpl.896:285|
 :skolemid |114|
 :pattern ( (select g0@@0 u_2_1) (select g0@@0 v_2_1))
 :pattern ( (select g0@@0 u_2_1) (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@5 g0@@0)) g0@@0) u_2_1 v_2_1))
 :pattern ( (select g0@@0 u_2_1) (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@5 (|Set#Union_37395| g0@@0 g1@@0))) (|Set#Union_37395| g0@@0 g1@@0)) u_2_1 v_2_1))
 :pattern ( (select g0@@0 v_2_1) (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@5 g0@@0)) g0@@0) u_2_1 v_2_1))
 :pattern ( (select g0@@0 v_2_1) (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@5 (|Set#Union_37395| g0@@0 g1@@0))) (|Set#Union_37395| g0@@0 g1@@0)) u_2_1 v_2_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@5 g0@@0)) g0@@0) u_2_1 v_2_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@5 (|Set#Union_37395| g0@@0 g1@@0))) (|Set#Union_37395| g0@@0 g1@@0)) u_2_1 v_2_1))
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
(assert (forall ((EG_1@@0 (Array T@EdgeDomainType Bool)) (U_1 (Array T@Ref Bool)) (M (Array T@Ref Bool)) ) (!  (=> (apply_noExit EG_1@@0 U_1 M) (=> (forall ((u_3 T@Ref) (v_2 T@Ref) ) (!  (=> (and (select M u_3) (and (select U_1 v_2) (not (select M v_2)))) (not (edge EG_1@@0 u_3 v_2)))
 :qid |stdinbpl.730:50|
 :skolemid |85|
 :pattern ( (edge EG_1@@0 u_3 v_2))
 :pattern ( (select M u_3) (select M v_2))
)) (forall ((u_1 T@Ref) (v_1_1 T@Ref) ) (!  (=> (and (select M u_1) (and (select U_1 v_1_1) (not (select M v_1_1)))) (not (exists_path EG_1@@0 u_1 v_1_1)))
 :qid |stdinbpl.733:17|
 :skolemid |86|
 :pattern ( (exists_path EG_1@@0 u_1 v_1_1))
 :pattern ( (select M u_1) (select M v_1_1))
))))
 :qid |stdinbpl.728:15|
 :skolemid |87|
 :pattern ( (apply_noExit EG_1@@0 U_1 M))
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
(assert (forall ((Heap@@8 T@PolymorphicMapType_58529) (ExhaleHeap T@PolymorphicMapType_58529) (Mask@@2 T@PolymorphicMapType_58550) (pm_f_35 T@Field_37315_186613) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_37315_186677 Mask@@2 null pm_f_35) (IsPredicateField_37315_186704 pm_f_35)) (= (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@8) null (PredicateMaskField_37315 pm_f_35)) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap) null (PredicateMaskField_37315 pm_f_35)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@2) (IsPredicateField_37315_186704 pm_f_35) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap) null (PredicateMaskField_37315 pm_f_35)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_58529) (ExhaleHeap@@0 T@PolymorphicMapType_58529) (Mask@@3 T@PolymorphicMapType_58550) (pm_f_35@@0 T@Field_37315_186613) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_37315_186677 Mask@@3 null pm_f_35@@0) (IsWandField_37315_188253 pm_f_35@@0)) (= (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@9) null (WandMaskField_37315 pm_f_35@@0)) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@0) null (WandMaskField_37315 pm_f_35@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@3) (IsWandField_37315_188253 pm_f_35@@0) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@0) null (WandMaskField_37315 pm_f_35@@0)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_58529) (Mask@@4 T@PolymorphicMapType_58550) (g0@@2 (Array T@Ref Bool)) (g1@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@10 Mask@@4) (or (< AssumeFunctionsAbove 3) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6487 (|apply_TCFraming#condqp1| Heap@@10 g0@@2 g1@@2)) (FrameFragment_6487 (|apply_TCFraming#condqp2| Heap@@10 g0@@2 g1@@2))) g0@@2 g1@@2))) (=> (|Set#Equal_37295| (|Set#Intersection_37295| g1@@2 g0@@2) |Set#Empty_37301|) (|Set#Equal_37295| (|Set#Union_37395| g0@@2 g1@@2) (|Set#Union_37395| g1@@2 g0@@2))))
 :qid |stdinbpl.876:15|
 :skolemid |109|
 :pattern ( (state Heap@@10 Mask@@4) (|apply_TCFraming'| Heap@@10 g0@@2 g1@@2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_58529) (Mask@@5 T@PolymorphicMapType_58550) (g_1@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@11 Mask@@5) (< AssumeFunctionsAbove 0)) (=> (and (not (select g_1@@2 null)) (forall ((n$0_13 T@Ref) ) (!  (=> (and (select g_1@@2 n$0_13) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@11) n$0_13 next) null))) (select g_1@@2 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@11) n$0_13 next)))
 :qid |stdinbpl.1954:75|
 :skolemid |225|
 :pattern ( (select g_1@@2 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@11) n$0_13 next)))
 :pattern ( (select g_1@@2 n$0_13) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@11) n$0_13 next))
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
(assert (forall ((Heap@@12 T@PolymorphicMapType_58529) (Mask@@6 T@PolymorphicMapType_58550) (refs@@1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@12 Mask@@6) (or (< AssumeFunctionsAbove 4) (|$$#trigger| (FrameFragment_6487 (|$$#condqp3| Heap@@12 refs@@1)) refs@@1))) (forall ((p_1 T@Ref) (s_2 T@Ref) ) (! (=  (and (select refs@@1 p_1) (and (select refs@@1 s_2) (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@12) p_1 next) s_2))) (select (|$$'| Heap@@12 refs@@1) (create_edge p_1 s_2)))
 :qid |stdinbpl.1443:122|
 :skolemid |170|
 :pattern ( (create_edge p_1 s_2))
)))
 :qid |stdinbpl.1441:15|
 :skolemid |171|
 :pattern ( (state Heap@@12 Mask@@6) (|$$'| Heap@@12 refs@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_58529) (ExhaleHeap@@1 T@PolymorphicMapType_58529) (Mask@@7 T@PolymorphicMapType_58550) (pm_f_35@@1 T@Field_37315_186613) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@1 Mask@@7) (=> (and (HasDirectPerm_37315_186677 Mask@@7 null pm_f_35@@1) (IsPredicateField_37315_186704 pm_f_35@@1)) (and (and (and (forall ((o2_35 T@Ref) (f_67 T@Field_58589_53) ) (!  (=> (select (|PolymorphicMapType_59078_58589_53#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@13) null (PredicateMaskField_37315 pm_f_35@@1))) o2_35 f_67) (= (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@13) o2_35 f_67) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@1) o2_35 f_67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@1) o2_35 f_67))
)) (forall ((o2_35@@0 T@Ref) (f_67@@0 T@Field_58602_58603) ) (!  (=> (select (|PolymorphicMapType_59078_58589_58603#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@13) null (PredicateMaskField_37315 pm_f_35@@1))) o2_35@@0 f_67@@0) (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@13) o2_35@@0 f_67@@0) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| ExhaleHeap@@1) o2_35@@0 f_67@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| ExhaleHeap@@1) o2_35@@0 f_67@@0))
))) (forall ((o2_35@@1 T@Ref) (f_67@@1 T@Field_37315_186613) ) (!  (=> (select (|PolymorphicMapType_59078_58589_186613#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@13) null (PredicateMaskField_37315 pm_f_35@@1))) o2_35@@1 f_67@@1) (= (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@13) o2_35@@1 f_67@@1) (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| ExhaleHeap@@1) o2_35@@1 f_67@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| ExhaleHeap@@1) o2_35@@1 f_67@@1))
))) (forall ((o2_35@@2 T@Ref) (f_67@@2 T@Field_37315_186746) ) (!  (=> (select (|PolymorphicMapType_59078_58589_187726#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@13) null (PredicateMaskField_37315 pm_f_35@@1))) o2_35@@2 f_67@@2) (= (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@13) o2_35@@2 f_67@@2) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@1) o2_35@@2 f_67@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@1) o2_35@@2 f_67@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@1 Mask@@7) (IsPredicateField_37315_186704 pm_f_35@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_58529) (ExhaleHeap@@2 T@PolymorphicMapType_58529) (Mask@@8 T@PolymorphicMapType_58550) (pm_f_35@@2 T@Field_37315_186613) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@2 Mask@@8) (=> (and (HasDirectPerm_37315_186677 Mask@@8 null pm_f_35@@2) (IsWandField_37315_188253 pm_f_35@@2)) (and (and (and (forall ((o2_35@@3 T@Ref) (f_67@@3 T@Field_58589_53) ) (!  (=> (select (|PolymorphicMapType_59078_58589_53#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@14) null (WandMaskField_37315 pm_f_35@@2))) o2_35@@3 f_67@@3) (= (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@14) o2_35@@3 f_67@@3) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@2) o2_35@@3 f_67@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@2) o2_35@@3 f_67@@3))
)) (forall ((o2_35@@4 T@Ref) (f_67@@4 T@Field_58602_58603) ) (!  (=> (select (|PolymorphicMapType_59078_58589_58603#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@14) null (WandMaskField_37315 pm_f_35@@2))) o2_35@@4 f_67@@4) (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@14) o2_35@@4 f_67@@4) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| ExhaleHeap@@2) o2_35@@4 f_67@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| ExhaleHeap@@2) o2_35@@4 f_67@@4))
))) (forall ((o2_35@@5 T@Ref) (f_67@@5 T@Field_37315_186613) ) (!  (=> (select (|PolymorphicMapType_59078_58589_186613#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@14) null (WandMaskField_37315 pm_f_35@@2))) o2_35@@5 f_67@@5) (= (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@14) o2_35@@5 f_67@@5) (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| ExhaleHeap@@2) o2_35@@5 f_67@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| ExhaleHeap@@2) o2_35@@5 f_67@@5))
))) (forall ((o2_35@@6 T@Ref) (f_67@@6 T@Field_37315_186746) ) (!  (=> (select (|PolymorphicMapType_59078_58589_187726#PolymorphicMapType_59078| (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@14) null (WandMaskField_37315 pm_f_35@@2))) o2_35@@6 f_67@@6) (= (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@14) o2_35@@6 f_67@@6) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@2) o2_35@@6 f_67@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@2) o2_35@@6 f_67@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@2 Mask@@8) (IsWandField_37315_188253 pm_f_35@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1@@3 (Array T@EdgeDomainType Bool)) (u_3@@0 T@Ref) (v_2@@2 T@Ref) (w_2@@0 T@Ref) ) (!  (=> (and (exists_path_ EG_1@@3 u_3@@0 w_2@@0) (exists_path_ EG_1@@3 w_2@@0 v_2@@2)) (exists_path_ EG_1@@3 u_3@@0 v_2@@2))
 :qid |stdinbpl.761:15|
 :skolemid |92|
 :pattern ( (exists_path EG_1@@3 u_3@@0 w_2@@0) (exists_path EG_1@@3 w_2@@0 v_2@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_58529) (ExhaleHeap@@3 T@PolymorphicMapType_58529) (Mask@@9 T@PolymorphicMapType_58550) (o_65 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@9) (=> (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@15) o_65 $allocated) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@3) o_65 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@3 Mask@@9) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@3) o_65 $allocated))
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
(assert (forall ((Heap@@19 T@PolymorphicMapType_58529) (ExhaleHeap@@5 T@PolymorphicMapType_58529) (Mask@@21 T@PolymorphicMapType_58550) (o_65@@0 T@Ref) (f_67@@7 T@Field_37315_186746) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@5 Mask@@21) (=> (HasDirectPerm_37315_191558 Mask@@21 o_65@@0 f_67@@7) (= (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@19) o_65@@0 f_67@@7) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@5) o_65@@0 f_67@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@5 Mask@@21) (select (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| ExhaleHeap@@5) o_65@@0 f_67@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_58529) (ExhaleHeap@@6 T@PolymorphicMapType_58529) (Mask@@22 T@PolymorphicMapType_58550) (o_65@@1 T@Ref) (f_67@@8 T@Field_37315_186613) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@6 Mask@@22) (=> (HasDirectPerm_37315_186677 Mask@@22 o_65@@1 f_67@@8) (= (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@20) o_65@@1 f_67@@8) (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| ExhaleHeap@@6) o_65@@1 f_67@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@6 Mask@@22) (select (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| ExhaleHeap@@6) o_65@@1 f_67@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_58529) (ExhaleHeap@@7 T@PolymorphicMapType_58529) (Mask@@23 T@PolymorphicMapType_58550) (o_65@@2 T@Ref) (f_67@@9 T@Field_58589_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@7 Mask@@23) (=> (HasDirectPerm_37315_53 Mask@@23 o_65@@2 f_67@@9) (= (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@21) o_65@@2 f_67@@9) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@7) o_65@@2 f_67@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@7 Mask@@23) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| ExhaleHeap@@7) o_65@@2 f_67@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_58529) (ExhaleHeap@@8 T@PolymorphicMapType_58529) (Mask@@24 T@PolymorphicMapType_58550) (o_65@@3 T@Ref) (f_67@@10 T@Field_58602_58603) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@8 Mask@@24) (=> (HasDirectPerm_37315_37316 Mask@@24 o_65@@3 f_67@@10) (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@22) o_65@@3 f_67@@10) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| ExhaleHeap@@8) o_65@@3 f_67@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@8 Mask@@24) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| ExhaleHeap@@8) o_65@@3 f_67@@10))
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
(assert (forall ((Heap@@23 T@PolymorphicMapType_58529) (Mask@@25 T@PolymorphicMapType_58550) (g0@@4 (Array T@Ref Bool)) (g1@@4 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@23 Mask@@25) (or (< AssumeFunctionsAbove 3) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6487 (|apply_TCFraming#condqp1| Heap@@23 g0@@4 g1@@4)) (FrameFragment_6487 (|apply_TCFraming#condqp2| Heap@@23 g0@@4 g1@@4))) g0@@4 g1@@4))) (=> (|Set#Equal_37295| (|Set#Intersection_37295| g1@@4 g0@@4) |Set#Empty_37301|) (forall ((u_3@@1 T@Ref) (v_2@@3 T@Ref) ) (!  (=> (and (select g0@@4 u_3@@1) (and (select g0@@4 v_2@@3) (exists_path ($$ Heap@@23 g0@@4) u_3@@1 v_2@@3))) (exists_path ($$ Heap@@23 (|Set#Union_37395| g0@@4 g1@@4)) u_3@@1 v_2@@3))
 :qid |stdinbpl.882:285|
 :skolemid |110|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@23 g0@@4)) g0@@4) u_3@@1 v_2@@3))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@23 (|Set#Union_37395| g0@@4 g1@@4))) (|Set#Union_37395| g0@@4 g1@@4)) u_3@@1 v_2@@3))
))))
 :qid |stdinbpl.880:15|
 :skolemid |111|
 :pattern ( (state Heap@@23 Mask@@25) (|apply_TCFraming'| Heap@@23 g0@@4 g1@@4))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_58529) (Mask@@26 T@PolymorphicMapType_58550) (g0@@5 (Array T@Ref Bool)) (g1@@5 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@24 Mask@@26) (or (< AssumeFunctionsAbove 3) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6487 (|apply_TCFraming#condqp1| Heap@@24 g0@@5 g1@@5)) (FrameFragment_6487 (|apply_TCFraming#condqp2| Heap@@24 g0@@5 g1@@5))) g0@@5 g1@@5))) (=> (|Set#Equal_37295| (|Set#Intersection_37295| g1@@5 g0@@5) |Set#Empty_37301|) (forall ((u_1@@0 T@Ref) (v_1_1@@0 T@Ref) ) (!  (=> (and (select g1@@5 u_1@@0) (and (select g1@@5 v_1_1@@0) (exists_path ($$ Heap@@24 g1@@5) u_1@@0 v_1_1@@0))) (exists_path ($$ Heap@@24 (|Set#Union_37395| g1@@5 g0@@5)) u_1@@0 v_1_1@@0))
 :qid |stdinbpl.889:285|
 :skolemid |112|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@24 g1@@5)) g1@@5) u_1@@0 v_1_1@@0))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6487 (|$$#condqp3| Heap@@24 (|Set#Union_37395| g1@@5 g0@@5))) (|Set#Union_37395| g1@@5 g0@@5)) u_1@@0 v_1_1@@0))
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
(assert (forall ((EG_1@@4 (Array T@EdgeDomainType Bool)) (from (Array T@Ref Bool)) (to T@Ref) ) (! (= (exists_spath EG_1@@4 from to) (exists ((f_69 T@Ref) ) (!  (and (select from f_69) (exists_path EG_1@@4 f_69 to))
 :qid |stdinbpl.796:51|
 :skolemid |99|
 :pattern ( (select from f_69))
 :pattern ( (exists_path EG_1@@4 f_69 to))
)))
 :qid |stdinbpl.794:15|
 :skolemid |100|
 :pattern ( (exists_spath EG_1@@4 from to))
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
(assert (forall ((Heap@@26 T@PolymorphicMapType_58529) (Mask@@27 T@PolymorphicMapType_58550) (refs@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@26 Mask@@27) (or (< AssumeFunctionsAbove 4) (|$$#trigger| (FrameFragment_6487 (|$$#condqp3| Heap@@26 refs@@2)) refs@@2))) (forall ((p_1_1 T@Ref) (s_1 T@Ref) ) (!  (=> (and (select refs@@2 p_1_1) (exists_path (|$$'| Heap@@26 refs@@2) p_1_1 s_1)) (select refs@@2 s_1))
 :qid |stdinbpl.1450:122|
 :skolemid |172|
 :pattern ( (select refs@@2 p_1_1) (select refs@@2 s_1) (exists_path (|$$'| Heap@@26 refs@@2) p_1_1 s_1))
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
(assert (forall ((EG_1@@6 (Array T@EdgeDomainType Bool)) (p_1@@0 T@Ref) (s_2@@0 T@Ref) ) (! (= (edge_ EG_1@@6 p_1@@0 s_2@@0) (select EG_1@@6 (create_edge p_1@@0 s_2@@0)))
 :qid |stdinbpl.722:15|
 :skolemid |84|
 :pattern ( (select EG_1@@6 (create_edge p_1@@0 s_2@@0)))
 :pattern ( (edge EG_1@@6 p_1@@0 s_2@@0))
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
(assert (forall ((Heap@@29 T@PolymorphicMapType_58529) (Mask@@30 T@PolymorphicMapType_58550) (g_1@@10 (Array T@Ref Bool)) (root@@2 T@Ref) ) (!  (=> (and (state Heap@@29 Mask@@30) (< AssumeFunctionsAbove 2)) (=> (and (and (not (select g_1@@10 null)) (forall ((n$1_12 T@Ref) ) (!  (=> (and (select g_1@@10 n$1_12) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@29) n$1_12 next) null))) (select g_1@@10 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@29) n$1_12 next)))
 :qid |stdinbpl.1583:76|
 :skolemid |187|
 :pattern ( (select g_1@@10 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@29) n$1_12 next)))
 :pattern ( (select g_1@@10 n$1_12) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@29) n$1_12 next))
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
(assert (forall ((p_1@@1 T@Ref) (s_2@@1 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@1 s_2@@1)) p_1@@1) (= (edge_succ (create_edge p_1@@1 s_2@@1)) s_2@@1))
 :qid |stdinbpl.673:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@1 s_2@@1))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_58529) (o_64 T@Ref) (f_68 T@Field_37315_186613) (v T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@30) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@30) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@30) (store (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@30) o_64 f_68 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@30) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@30) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@30) (store (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@30) o_64 f_68 v)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_58529) (o_64@@0 T@Ref) (f_68@@0 T@Field_37315_186746) (v@@0 T@PolymorphicMapType_59078) ) (! (succHeap Heap@@31 (PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@31) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@31) (store (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@31) o_64@@0 f_68@@0 v@@0) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@31) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@31) (store (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@31) o_64@@0 f_68@@0 v@@0) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_58529) (o_64@@1 T@Ref) (f_68@@1 T@Field_58602_58603) (v@@1 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@32) (store (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@32) o_64@@1 f_68@@1 v@@1) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@32) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_58529 (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@32) (store (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@32) o_64@@1 f_68@@1 v@@1) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@32) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_58529) (o_64@@2 T@Ref) (f_68@@2 T@Field_58589_53) (v@@2 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_58529 (store (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@33) o_64@@2 f_68@@2 v@@2) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@33) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@33) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_58529 (store (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@33) o_64@@2 f_68@@2 v@@2) (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@33) (|PolymorphicMapType_58529_37315_186790#PolymorphicMapType_58529| Heap@@33) (|PolymorphicMapType_58529_58589_186613#PolymorphicMapType_58529| Heap@@33)))
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
(assert (forall ((o_64@@3 T@Ref) (f_66 T@Field_58602_58603) (Heap@@36 T@PolymorphicMapType_58529) ) (!  (=> (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@36) o_64@@3 $allocated) (select (|PolymorphicMapType_58529_36503_53#PolymorphicMapType_58529| Heap@@36) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@36) o_64@@3 f_66) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@36) o_64@@3 f_66))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_58529) (Mask@@33 T@PolymorphicMapType_58550) (g_1@@12 (Array T@Ref Bool)) (roots@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@37 Mask@@33) (< AssumeFunctionsAbove 1)) (=> (and (and (not (select g_1@@12 null)) (forall ((n$1_12@@0 T@Ref) ) (!  (=> (and (select g_1@@12 n$1_12@@0) (not (= (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@37) n$1_12@@0 next) null))) (select g_1@@12 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@37) n$1_12@@0 next)))
 :qid |stdinbpl.1769:76|
 :skolemid |206|
 :pattern ( (select g_1@@12 (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@37) n$1_12@@0 next)))
 :pattern ( (select g_1@@12 n$1_12@@0) (select (|PolymorphicMapType_58529_36506_36507#PolymorphicMapType_58529| Heap@@37) n$1_12@@0 next))
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
(assert (forall ((EG_1@@8 (Array T@EdgeDomainType Bool)) (p_1@@2 T@Ref) (s_2@@2 T@Ref) ) (! (= (edge EG_1@@8 p_1@@2 s_2@@2) (edge_ EG_1@@8 p_1@@2 s_2@@2))
 :qid |stdinbpl.716:15|
 :skolemid |83|
 :pattern ( (edge EG_1@@8 p_1@@2 s_2@@2))
)))
(assert (forall ((EG_1@@9 (Array T@EdgeDomainType Bool)) (start@@0 T@Ref) (end@@0 T@Ref) ) (! (= (exists_path EG_1@@9 start@@0 end@@0) (exists_path_ EG_1@@9 start@@0 end@@0))
 :qid |stdinbpl.746:15|
 :skolemid |89|
 :pattern ( (exists_path EG_1@@9 start@@0 end@@0))
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

