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
(declare-sort T@Field_46438_53 0)
(declare-sort T@Field_46451_46452 0)
(declare-sort T@Field_29364_147596 0)
(declare-sort T@Field_29364_147463 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_46399 0)) (((PolymorphicMapType_46399 (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| (Array T@Ref T@Field_46451_46452 Real)) (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| (Array T@Ref T@Field_46438_53 Real)) (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| (Array T@Ref T@Field_29364_147463 Real)) (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| (Array T@Ref T@Field_29364_147596 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_46927 0)) (((PolymorphicMapType_46927 (|PolymorphicMapType_46927_46438_53#PolymorphicMapType_46927| (Array T@Ref T@Field_46438_53 Bool)) (|PolymorphicMapType_46927_46438_46452#PolymorphicMapType_46927| (Array T@Ref T@Field_46451_46452 Bool)) (|PolymorphicMapType_46927_46438_147463#PolymorphicMapType_46927| (Array T@Ref T@Field_29364_147463 Bool)) (|PolymorphicMapType_46927_46438_148576#PolymorphicMapType_46927| (Array T@Ref T@Field_29364_147596 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_46378 0)) (((PolymorphicMapType_46378 (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| (Array T@Ref T@Field_46438_53 Bool)) (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| (Array T@Ref T@Field_46451_46452 T@Ref)) (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| (Array T@Ref T@Field_29364_147596 T@PolymorphicMapType_46927)) (|PolymorphicMapType_46378_46438_147463#PolymorphicMapType_46378| (Array T@Ref T@Field_29364_147463 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_46438_53)
(declare-fun next () T@Field_46451_46452)
(declare-fun succHeap (T@PolymorphicMapType_46378 T@PolymorphicMapType_46378) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_46378 T@PolymorphicMapType_46378) Bool)
(declare-fun state (T@PolymorphicMapType_46378 T@PolymorphicMapType_46399) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_46399) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_46927)
(declare-fun |is_global_sroot'| (T@PolymorphicMapType_46378 (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun dummyFunction_6898 (Bool) Bool)
(declare-fun |is_global_sroot#triggerStateless| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |apply_TCFraming'| (T@PolymorphicMapType_46378 (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |apply_TCFraming#triggerStateless| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-sort T@EdgeDomainType 0)
(declare-fun exists_path ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun edge ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun exists_path_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun |$$'| (T@PolymorphicMapType_46378 (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun dummyFunction_54704 ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun |$$#triggerStateless| ((Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |acyclic_list_segment'| (T@PolymorphicMapType_46378 (Array T@Ref Bool)) Bool)
(declare-fun |acyclic_list_segment#triggerStateless| ((Array T@Ref Bool)) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |apply_TCFraming#trigger| (T@FrameType (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_5743 (Int) T@FrameType)
(declare-fun |apply_TCFraming#condqp4| (T@PolymorphicMapType_46378 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |apply_TCFraming#condqp5| (T@PolymorphicMapType_46378 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun null () T@Ref)
(declare-fun |Set#Equal_29344| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Set#Intersection_29344| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Empty_29350| () (Array T@Ref Bool))
(declare-fun |$$#frame| (T@FrameType (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |$$#condqp1| (T@PolymorphicMapType_46378 (Array T@Ref Bool)) Int)
(declare-fun |Set#Union_29737| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun $$ (T@PolymorphicMapType_46378 (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |Set#Union_29371| ((Array T@EdgeDomainType Bool) (Array T@EdgeDomainType Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |Set#Intersection_29371| ((Array T@EdgeDomainType Bool) (Array T@EdgeDomainType Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |Set#Singleton_29371| (T@EdgeDomainType) (Array T@EdgeDomainType Bool))
(declare-fun |Set#Singleton_30254| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_29371| ((Array T@EdgeDomainType Bool)) Int)
(declare-fun |Set#Card_29350| ((Array T@Ref Bool)) Int)
(declare-fun apply_noExit ((Array T@EdgeDomainType Bool) (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_46378 T@PolymorphicMapType_46378 T@PolymorphicMapType_46399) Bool)
(declare-fun IsPredicateField_29364_147554 (T@Field_29364_147463) Bool)
(declare-fun PredicateMaskField_29364 (T@Field_29364_147463) T@Field_29364_147596)
(declare-fun HasDirectPerm_29364_147527 (T@PolymorphicMapType_46399 T@Ref T@Field_29364_147463) Bool)
(declare-fun IsWandField_29364_149103 (T@Field_29364_147463) Bool)
(declare-fun WandMaskField_29364 (T@Field_29364_147463) T@Field_29364_147596)
(declare-fun acyclic_list_segment (T@PolymorphicMapType_46378 (Array T@Ref Bool)) Bool)
(declare-fun acyclic_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun func_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun unshared_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun |$$#trigger| (T@FrameType (Array T@Ref Bool)) Bool)
(declare-fun create_edge (T@Ref T@Ref) T@EdgeDomainType)
(declare-fun dummyHeap () T@PolymorphicMapType_46378)
(declare-fun ZeroMask () T@PolymorphicMapType_46399)
(declare-fun InsidePredicate_46438_46438 (T@Field_29364_147463 T@FrameType T@Field_29364_147463 T@FrameType) Bool)
(declare-fun |sk_$$#condqp1| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun IsPredicateField_29364_29365 (T@Field_46451_46452) Bool)
(declare-fun IsWandField_29364_29365 (T@Field_46451_46452) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_29364_152037 (T@Field_29364_147596) Bool)
(declare-fun IsWandField_29364_152053 (T@Field_29364_147596) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_29364_53 (T@Field_46438_53) Bool)
(declare-fun IsWandField_29364_53 (T@Field_46438_53) Bool)
(declare-fun |is_global_sroot#frame| (T@FrameType (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |is_global_sroot#condqp2| (T@PolymorphicMapType_46378 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |Set#Equal_29371| ((Array T@EdgeDomainType Bool) (Array T@EdgeDomainType Bool)) Bool)
(declare-fun HasDirectPerm_29364_152408 (T@PolymorphicMapType_46399 T@Ref T@Field_29364_147596) Bool)
(declare-fun HasDirectPerm_29364_53 (T@PolymorphicMapType_46399 T@Ref T@Field_46438_53) Bool)
(declare-fun HasDirectPerm_29364_29365 (T@PolymorphicMapType_46399 T@Ref T@Field_46451_46452) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_46399 T@PolymorphicMapType_46399 T@PolymorphicMapType_46399) Bool)
(declare-fun exists_spath ((Array T@EdgeDomainType Bool) (Array T@Ref Bool) T@Ref) Bool)
(declare-fun |Set#Difference_29371| ((Array T@EdgeDomainType Bool) (Array T@EdgeDomainType Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |Set#Difference_29350| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |sk_is_global_sroot#condqp2| (Int Int) T@Ref)
(declare-fun |sk_apply_TCFraming#condqp4| (Int Int) T@Ref)
(declare-fun |sk_apply_TCFraming#condqp5| (Int Int) T@Ref)
(declare-fun |Set#UnionOne_29371| ((Array T@EdgeDomainType Bool) T@EdgeDomainType) (Array T@EdgeDomainType Bool))
(declare-fun |Set#UnionOne_30254| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun edge_pred (T@EdgeDomainType) T@Ref)
(declare-fun edge_succ (T@EdgeDomainType) T@Ref)
(declare-fun edge_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun |acyclic_list_segment#frame| (T@FrameType (Array T@Ref Bool)) Bool)
(declare-fun |acyclic_list_segment#condqp3| (T@PolymorphicMapType_46378 (Array T@Ref Bool)) Int)
(declare-fun |Set#Empty_29371| () (Array T@EdgeDomainType Bool))
(declare-fun |Set#Subset_29491| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |sk_acyclic_list_segment#condqp3| (Int Int) T@Ref)
(declare-fun |apply_TCFraming#frame| (T@FrameType (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun is_global_sroot (T@PolymorphicMapType_46378 (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun inst_uReach ((Array T@EdgeDomainType Bool) T@Ref) (Array T@Ref Bool))
(declare-fun apply_TCFraming (T@PolymorphicMapType_46378 (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_46378) (Heap1 T@PolymorphicMapType_46378) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_46378) (Mask T@PolymorphicMapType_46399) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_46378) (Heap1@@0 T@PolymorphicMapType_46378) (Heap2 T@PolymorphicMapType_46378) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_29364_147596) ) (!  (not (select (|PolymorphicMapType_46927_46438_148576#PolymorphicMapType_46927| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_46927_46438_148576#PolymorphicMapType_46927| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_29364_147463) ) (!  (not (select (|PolymorphicMapType_46927_46438_147463#PolymorphicMapType_46927| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_46927_46438_147463#PolymorphicMapType_46927| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_46451_46452) ) (!  (not (select (|PolymorphicMapType_46927_46438_46452#PolymorphicMapType_46927| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_46927_46438_46452#PolymorphicMapType_46927| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_46438_53) ) (!  (not (select (|PolymorphicMapType_46927_46438_53#PolymorphicMapType_46927| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_46927_46438_53#PolymorphicMapType_46927| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_46378) (g_1 (Array T@Ref Bool)) (roots (Array T@Ref Bool)) ) (! (dummyFunction_6898 (|is_global_sroot#triggerStateless| g_1 roots))
 :qid |stdinbpl.884:15|
 :skolemid |119|
 :pattern ( (|is_global_sroot'| Heap@@0 g_1 roots))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_46378) (g0 (Array T@Ref Bool)) (g1 (Array T@Ref Bool)) ) (! (dummyFunction_6898 (|apply_TCFraming#triggerStateless| g0 g1))
 :qid |stdinbpl.1338:15|
 :skolemid |167|
 :pattern ( (|apply_TCFraming'| Heap@@1 g0 g1))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.471:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (start_1 T@Ref) (end_1 T@Ref) ) (! (= (exists_path_ EG_1 start_1 end_1)  (or (= start_1 end_1) (exists ((w_2 T@Ref) ) (!  (and (edge EG_1 start_1 w_2) (exists_path_ EG_1 w_2 end_1))
 :qid |stdinbpl.666:78|
 :skolemid |90|
 :pattern ( (edge EG_1 start_1 w_2))
 :pattern ( (exists_path_ EG_1 w_2 end_1))
))))
 :qid |stdinbpl.664:15|
 :skolemid |91|
 :pattern ( (exists_path EG_1 start_1 end_1))
 :pattern ( (edge EG_1 start_1 end_1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_46378) (refs (Array T@Ref Bool)) ) (! (dummyFunction_54704 (|$$#triggerStateless| refs))
 :qid |stdinbpl.755:15|
 :skolemid |105|
 :pattern ( (|$$'| Heap@@2 refs))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_46378) (g_1@@0 (Array T@Ref Bool)) ) (! (dummyFunction_6898 (|acyclic_list_segment#triggerStateless| g_1@@0))
 :qid |stdinbpl.1073:15|
 :skolemid |139|
 :pattern ( (|acyclic_list_segment'| Heap@@3 g_1@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_46378) (Mask@@0 T@PolymorphicMapType_46399) (g0@@0 (Array T@Ref Bool)) (g1@@0 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@4 Mask@@0) (or (< AssumeFunctionsAbove 2) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_5743 (|apply_TCFraming#condqp4| Heap@@4 g0@@0 g1@@0)) (FrameFragment_5743 (|apply_TCFraming#condqp5| Heap@@4 g0@@0 g1@@0))) g0@@0 g1@@0))) (=> (and (and (and (not (select g0@@0 null)) (forall ((n$0_14 T@Ref) ) (!  (=> (and (select g0@@0 n$0_14) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@4) n$0_14 next) null))) (select g0@@0 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@4) n$0_14 next)))
 :qid |stdinbpl.1383:236|
 :skolemid |174|
 :pattern ( (select g0@@0 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@4) n$0_14 next)))
 :pattern ( (select g0@@0 n$0_14) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@4) n$0_14 next))
))) (and (not (select g1@@0 null)) (forall ((n$2_6 T@Ref) ) (!  (=> (and (select g1@@0 n$2_6) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@4) n$2_6 next) null))) (select g1@@0 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@4) n$2_6 next)))
 :qid |stdinbpl.1386:31|
 :skolemid |175|
 :pattern ( (select g1@@0 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@4) n$2_6 next)))
 :pattern ( (select g1@@0 n$2_6) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@4) n$2_6 next))
)))) (|Set#Equal_29344| (|Set#Intersection_29344| g1@@0 g0@@0) |Set#Empty_29350|)) (forall ((u_1 T@Ref) (v_2 T@Ref) ) (!  (=> (and (select g0@@0 u_1) (select g0@@0 v_2)) (= (exists_path ($$ Heap@@4 g0@@0) u_1 v_2) (exists_path ($$ Heap@@4 (|Set#Union_29737| g0@@0 g1@@0)) u_1 v_2)))
 :qid |stdinbpl.1389:82|
 :skolemid |176|
 :pattern ( (select g0@@0 u_1) (select g0@@0 v_2))
 :pattern ( (select g0@@0 u_1) (exists_path (|$$#frame| (FrameFragment_5743 (|$$#condqp1| Heap@@4 g0@@0)) g0@@0) u_1 v_2))
 :pattern ( (select g0@@0 u_1) (exists_path (|$$#frame| (FrameFragment_5743 (|$$#condqp1| Heap@@4 (|Set#Union_29737| g0@@0 g1@@0))) (|Set#Union_29737| g0@@0 g1@@0)) u_1 v_2))
 :pattern ( (select g0@@0 v_2) (exists_path (|$$#frame| (FrameFragment_5743 (|$$#condqp1| Heap@@4 g0@@0)) g0@@0) u_1 v_2))
 :pattern ( (select g0@@0 v_2) (exists_path (|$$#frame| (FrameFragment_5743 (|$$#condqp1| Heap@@4 (|Set#Union_29737| g0@@0 g1@@0))) (|Set#Union_29737| g0@@0 g1@@0)) u_1 v_2))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5743 (|$$#condqp1| Heap@@4 g0@@0)) g0@@0) u_1 v_2))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5743 (|$$#condqp1| Heap@@4 (|Set#Union_29737| g0@@0 g1@@0))) (|Set#Union_29737| g0@@0 g1@@0)) u_1 v_2))
))))
 :qid |stdinbpl.1381:15|
 :skolemid |177|
 :pattern ( (state Heap@@4 Mask@@0) (|apply_TCFraming'| Heap@@4 g0@@0 g1@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_46378) (Mask@@1 T@PolymorphicMapType_46399) (g0@@1 (Array T@Ref Bool)) (g1@@1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@5 Mask@@1) (or (< AssumeFunctionsAbove 2) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_5743 (|apply_TCFraming#condqp4| Heap@@5 g0@@1 g1@@1)) (FrameFragment_5743 (|apply_TCFraming#condqp5| Heap@@5 g0@@1 g1@@1))) g0@@1 g1@@1))) (=> (and (and (and (not (select g0@@1 null)) (forall ((n$0_14@@0 T@Ref) ) (!  (=> (and (select g0@@1 n$0_14@@0) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@5) n$0_14@@0 next) null))) (select g0@@1 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@5) n$0_14@@0 next)))
 :qid |stdinbpl.1396:236|
 :skolemid |178|
 :pattern ( (select g0@@1 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@5) n$0_14@@0 next)))
 :pattern ( (select g0@@1 n$0_14@@0) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@5) n$0_14@@0 next))
))) (and (not (select g1@@1 null)) (forall ((n$2_6@@0 T@Ref) ) (!  (=> (and (select g1@@1 n$2_6@@0) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@5) n$2_6@@0 next) null))) (select g1@@1 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@5) n$2_6@@0 next)))
 :qid |stdinbpl.1399:31|
 :skolemid |179|
 :pattern ( (select g1@@1 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@5) n$2_6@@0 next)))
 :pattern ( (select g1@@1 n$2_6@@0) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@5) n$2_6@@0 next))
)))) (|Set#Equal_29344| (|Set#Intersection_29344| g1@@1 g0@@1) |Set#Empty_29350|)) (forall ((u_1_1 T@Ref) (v_1_1 T@Ref) ) (!  (=> (and (select g1@@1 u_1_1) (select g1@@1 v_1_1)) (= (exists_path ($$ Heap@@5 g1@@1) u_1_1 v_1_1) (exists_path ($$ Heap@@5 (|Set#Union_29737| g1@@1 g0@@1)) u_1_1 v_1_1)))
 :qid |stdinbpl.1402:82|
 :skolemid |180|
 :pattern ( (select g1@@1 u_1_1) (select g1@@1 v_1_1))
 :pattern ( (select g1@@1 u_1_1) (exists_path (|$$#frame| (FrameFragment_5743 (|$$#condqp1| Heap@@5 g1@@1)) g1@@1) u_1_1 v_1_1))
 :pattern ( (select g1@@1 u_1_1) (exists_path (|$$#frame| (FrameFragment_5743 (|$$#condqp1| Heap@@5 (|Set#Union_29737| g1@@1 g0@@1))) (|Set#Union_29737| g1@@1 g0@@1)) u_1_1 v_1_1))
 :pattern ( (select g1@@1 v_1_1) (exists_path (|$$#frame| (FrameFragment_5743 (|$$#condqp1| Heap@@5 g1@@1)) g1@@1) u_1_1 v_1_1))
 :pattern ( (select g1@@1 v_1_1) (exists_path (|$$#frame| (FrameFragment_5743 (|$$#condqp1| Heap@@5 (|Set#Union_29737| g1@@1 g0@@1))) (|Set#Union_29737| g1@@1 g0@@1)) u_1_1 v_1_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5743 (|$$#condqp1| Heap@@5 g1@@1)) g1@@1) u_1_1 v_1_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5743 (|$$#condqp1| Heap@@5 (|Set#Union_29737| g1@@1 g0@@1))) (|Set#Union_29737| g1@@1 g0@@1)) u_1_1 v_1_1))
))))
 :qid |stdinbpl.1394:15|
 :skolemid |181|
 :pattern ( (state Heap@@5 Mask@@1) (|apply_TCFraming'| Heap@@5 g0@@1 g1@@1))
)))
(assert (forall ((a@@0 (Array T@EdgeDomainType Bool)) (b@@0 (Array T@EdgeDomainType Bool)) ) (! (= (|Set#Union_29371| (|Set#Union_29371| a@@0 b@@0) b@@0) (|Set#Union_29371| a@@0 b@@0))
 :qid |stdinbpl.423:18|
 :skolemid |38|
 :pattern ( (|Set#Union_29371| (|Set#Union_29371| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Union_29737| (|Set#Union_29737| a@@1 b@@1) b@@1) (|Set#Union_29737| a@@1 b@@1))
 :qid |stdinbpl.423:18|
 :skolemid |38|
 :pattern ( (|Set#Union_29737| (|Set#Union_29737| a@@1 b@@1) b@@1))
)))
(assert (forall ((a@@2 (Array T@EdgeDomainType Bool)) (b@@2 (Array T@EdgeDomainType Bool)) ) (! (= (|Set#Intersection_29371| (|Set#Intersection_29371| a@@2 b@@2) b@@2) (|Set#Intersection_29371| a@@2 b@@2))
 :qid |stdinbpl.427:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_29371| (|Set#Intersection_29371| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_29344| (|Set#Intersection_29344| a@@3 b@@3) b@@3) (|Set#Intersection_29344| a@@3 b@@3))
 :qid |stdinbpl.427:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_29344| (|Set#Intersection_29344| a@@3 b@@3) b@@3))
)))
(assert (forall ((r T@EdgeDomainType) (o T@EdgeDomainType) ) (! (= (select (|Set#Singleton_29371| r) o) (= r o))
 :qid |stdinbpl.392:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_29371| r) o))
)))
(assert (forall ((r@@0 T@Ref) (o@@0 T@Ref) ) (! (= (select (|Set#Singleton_30254| r@@0) o@@0) (= r@@0 o@@0))
 :qid |stdinbpl.392:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_30254| r@@0) o@@0))
)))
(assert (forall ((a@@4 (Array T@EdgeDomainType Bool)) (b@@4 (Array T@EdgeDomainType Bool)) ) (! (= (+ (|Set#Card_29371| (|Set#Union_29371| a@@4 b@@4)) (|Set#Card_29371| (|Set#Intersection_29371| a@@4 b@@4))) (+ (|Set#Card_29371| a@@4) (|Set#Card_29371| b@@4)))
 :qid |stdinbpl.431:18|
 :skolemid |42|
 :pattern ( (|Set#Card_29371| (|Set#Union_29371| a@@4 b@@4)))
 :pattern ( (|Set#Card_29371| (|Set#Intersection_29371| a@@4 b@@4)))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_29350| (|Set#Union_29737| a@@5 b@@5)) (|Set#Card_29350| (|Set#Intersection_29344| a@@5 b@@5))) (+ (|Set#Card_29350| a@@5) (|Set#Card_29350| b@@5)))
 :qid |stdinbpl.431:18|
 :skolemid |42|
 :pattern ( (|Set#Card_29350| (|Set#Union_29737| a@@5 b@@5)))
 :pattern ( (|Set#Card_29350| (|Set#Intersection_29344| a@@5 b@@5)))
)))
(assert (forall ((EG_1@@0 (Array T@EdgeDomainType Bool)) (U_1 (Array T@Ref Bool)) (M_1 (Array T@Ref Bool)) ) (!  (=> (apply_noExit EG_1@@0 U_1 M_1) (=> (forall ((u_1@@0 T@Ref) (v_2@@0 T@Ref) ) (!  (=> (and (select M_1 u_1@@0) (and (select U_1 v_2@@0) (not (select M_1 v_2@@0)))) (not (edge EG_1@@0 u_1@@0 v_2@@0)))
 :qid |stdinbpl.642:52|
 :skolemid |85|
 :pattern ( (edge EG_1@@0 u_1@@0 v_2@@0))
 :pattern ( (select M_1 u_1@@0) (select M_1 v_2@@0))
)) (forall ((u_1_1@@0 T@Ref) (v_1_1@@0 T@Ref) ) (!  (=> (and (select M_1 u_1_1@@0) (and (select U_1 v_1_1@@0) (not (select M_1 v_1_1@@0)))) (not (exists_path EG_1@@0 u_1_1@@0 v_1_1@@0)))
 :qid |stdinbpl.645:17|
 :skolemid |86|
 :pattern ( (exists_path EG_1@@0 u_1_1@@0 v_1_1@@0))
 :pattern ( (select M_1 u_1_1@@0) (select M_1 v_1_1@@0))
))))
 :qid |stdinbpl.640:15|
 :skolemid |87|
 :pattern ( (apply_noExit EG_1@@0 U_1 M_1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_46378) (refs@@0 (Array T@Ref Bool)) ) (!  (and (= ($$ Heap@@6 refs@@0) (|$$'| Heap@@6 refs@@0)) (dummyFunction_54704 (|$$#triggerStateless| refs@@0)))
 :qid |stdinbpl.751:15|
 :skolemid |104|
 :pattern ( ($$ Heap@@6 refs@@0))
)))
(assert (forall ((a@@6 Int) ) (!  (=> (<= 0 a@@6) (= (|Math#clip| a@@6) a@@6))
 :qid |stdinbpl.474:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@6))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_46378) (ExhaleHeap T@PolymorphicMapType_46378) (Mask@@2 T@PolymorphicMapType_46399) (pm_f_12 T@Field_29364_147463) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_29364_147527 Mask@@2 null pm_f_12) (IsPredicateField_29364_147554 pm_f_12)) (= (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@7) null (PredicateMaskField_29364 pm_f_12)) (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| ExhaleHeap) null (PredicateMaskField_29364 pm_f_12)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@2) (IsPredicateField_29364_147554 pm_f_12) (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| ExhaleHeap) null (PredicateMaskField_29364 pm_f_12)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_46378) (ExhaleHeap@@0 T@PolymorphicMapType_46378) (Mask@@3 T@PolymorphicMapType_46399) (pm_f_12@@0 T@Field_29364_147463) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_29364_147527 Mask@@3 null pm_f_12@@0) (IsWandField_29364_149103 pm_f_12@@0)) (= (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@8) null (WandMaskField_29364 pm_f_12@@0)) (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| ExhaleHeap@@0) null (WandMaskField_29364 pm_f_12@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@3) (IsWandField_29364_149103 pm_f_12@@0) (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| ExhaleHeap@@0) null (WandMaskField_29364 pm_f_12@@0)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_46378) (Mask@@4 T@PolymorphicMapType_46399) (g_1@@1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@9 Mask@@4) (< AssumeFunctionsAbove 0)) (=> (and (not (select g_1@@1 null)) (forall ((n$0_14@@1 T@Ref) ) (!  (=> (and (select g_1@@1 n$0_14@@1) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@9) n$0_14@@1 next) null))) (select g_1@@1 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@9) n$0_14@@1 next)))
 :qid |stdinbpl.1081:75|
 :skolemid |140|
 :pattern ( (select g_1@@1 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@9) n$0_14@@1 next)))
 :pattern ( (select g_1@@1 n$0_14@@1) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@9) n$0_14@@1 next))
))) (= (acyclic_list_segment Heap@@9 g_1@@1)  (and (acyclic_graph ($$ Heap@@9 g_1@@1)) (and (func_graph ($$ Heap@@9 g_1@@1)) (unshared_graph ($$ Heap@@9 g_1@@1)))))))
 :qid |stdinbpl.1079:15|
 :skolemid |141|
 :pattern ( (state Heap@@9 Mask@@4) (acyclic_list_segment Heap@@9 g_1@@1))
)))
(assert (forall ((EG_1@@1 (Array T@EdgeDomainType Bool)) ) (! (= (unshared_graph EG_1@@1) (forall ((v1 T@Ref) (v2 T@Ref) (v_2@@1 T@Ref) ) (!  (=> (and (edge EG_1@@1 v1 v_2@@1) (edge EG_1@@1 v2 v_2@@1)) (= v1 v2))
 :qid |stdinbpl.690:43|
 :skolemid |95|
 :pattern ( (edge EG_1@@1 v1 v_2@@1) (edge EG_1@@1 v2 v_2@@1))
)))
 :qid |stdinbpl.688:15|
 :skolemid |96|
 :pattern ( (unshared_graph EG_1@@1))
)))
(assert (forall ((EG_1@@2 (Array T@EdgeDomainType Bool)) ) (! (= (func_graph EG_1@@2) (forall ((v1@@0 T@Ref) (v2@@0 T@Ref) (v_2@@2 T@Ref) ) (!  (=> (and (edge EG_1@@2 v_2@@2 v1@@0) (edge EG_1@@2 v_2@@2 v2@@0)) (= v1@@0 v2@@0))
 :qid |stdinbpl.699:39|
 :skolemid |97|
 :pattern ( (edge EG_1@@2 v_2@@2 v1@@0) (edge EG_1@@2 v_2@@2 v2@@0))
)))
 :qid |stdinbpl.697:15|
 :skolemid |98|
 :pattern ( (func_graph EG_1@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_46378) (Mask@@5 T@PolymorphicMapType_46399) (refs@@1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@10 Mask@@5) (or (< AssumeFunctionsAbove 3) (|$$#trigger| (FrameFragment_5743 (|$$#condqp1| Heap@@10 refs@@1)) refs@@1))) (forall ((p_1 T@Ref) (s_1 T@Ref) ) (! (=  (and (select refs@@1 p_1) (and (select refs@@1 s_1) (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@10) p_1 next) s_1))) (select (|$$'| Heap@@10 refs@@1) (create_edge p_1 s_1)))
 :qid |stdinbpl.780:122|
 :skolemid |108|
 :pattern ( (create_edge p_1 s_1))
)))
 :qid |stdinbpl.778:15|
 :skolemid |109|
 :pattern ( (state Heap@@10 Mask@@5) (|$$'| Heap@@10 refs@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_46378) (ExhaleHeap@@1 T@PolymorphicMapType_46378) (Mask@@6 T@PolymorphicMapType_46399) (pm_f_12@@1 T@Field_29364_147463) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@6) (=> (and (HasDirectPerm_29364_147527 Mask@@6 null pm_f_12@@1) (IsPredicateField_29364_147554 pm_f_12@@1)) (and (and (and (forall ((o2_12 T@Ref) (f_36 T@Field_46438_53) ) (!  (=> (select (|PolymorphicMapType_46927_46438_53#PolymorphicMapType_46927| (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@11) null (PredicateMaskField_29364 pm_f_12@@1))) o2_12 f_36) (= (select (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| Heap@@11) o2_12 f_36) (select (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| ExhaleHeap@@1) o2_12 f_36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| ExhaleHeap@@1) o2_12 f_36))
)) (forall ((o2_12@@0 T@Ref) (f_36@@0 T@Field_46451_46452) ) (!  (=> (select (|PolymorphicMapType_46927_46438_46452#PolymorphicMapType_46927| (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@11) null (PredicateMaskField_29364 pm_f_12@@1))) o2_12@@0 f_36@@0) (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@11) o2_12@@0 f_36@@0) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| ExhaleHeap@@1) o2_12@@0 f_36@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| ExhaleHeap@@1) o2_12@@0 f_36@@0))
))) (forall ((o2_12@@1 T@Ref) (f_36@@1 T@Field_29364_147463) ) (!  (=> (select (|PolymorphicMapType_46927_46438_147463#PolymorphicMapType_46927| (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@11) null (PredicateMaskField_29364 pm_f_12@@1))) o2_12@@1 f_36@@1) (= (select (|PolymorphicMapType_46378_46438_147463#PolymorphicMapType_46378| Heap@@11) o2_12@@1 f_36@@1) (select (|PolymorphicMapType_46378_46438_147463#PolymorphicMapType_46378| ExhaleHeap@@1) o2_12@@1 f_36@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_46378_46438_147463#PolymorphicMapType_46378| ExhaleHeap@@1) o2_12@@1 f_36@@1))
))) (forall ((o2_12@@2 T@Ref) (f_36@@2 T@Field_29364_147596) ) (!  (=> (select (|PolymorphicMapType_46927_46438_148576#PolymorphicMapType_46927| (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@11) null (PredicateMaskField_29364 pm_f_12@@1))) o2_12@@2 f_36@@2) (= (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@11) o2_12@@2 f_36@@2) (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| ExhaleHeap@@1) o2_12@@2 f_36@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| ExhaleHeap@@1) o2_12@@2 f_36@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@6) (IsPredicateField_29364_147554 pm_f_12@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_46378) (ExhaleHeap@@2 T@PolymorphicMapType_46378) (Mask@@7 T@PolymorphicMapType_46399) (pm_f_12@@2 T@Field_29364_147463) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@7) (=> (and (HasDirectPerm_29364_147527 Mask@@7 null pm_f_12@@2) (IsWandField_29364_149103 pm_f_12@@2)) (and (and (and (forall ((o2_12@@3 T@Ref) (f_36@@3 T@Field_46438_53) ) (!  (=> (select (|PolymorphicMapType_46927_46438_53#PolymorphicMapType_46927| (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@12) null (WandMaskField_29364 pm_f_12@@2))) o2_12@@3 f_36@@3) (= (select (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| Heap@@12) o2_12@@3 f_36@@3) (select (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| ExhaleHeap@@2) o2_12@@3 f_36@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| ExhaleHeap@@2) o2_12@@3 f_36@@3))
)) (forall ((o2_12@@4 T@Ref) (f_36@@4 T@Field_46451_46452) ) (!  (=> (select (|PolymorphicMapType_46927_46438_46452#PolymorphicMapType_46927| (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@12) null (WandMaskField_29364 pm_f_12@@2))) o2_12@@4 f_36@@4) (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@12) o2_12@@4 f_36@@4) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| ExhaleHeap@@2) o2_12@@4 f_36@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| ExhaleHeap@@2) o2_12@@4 f_36@@4))
))) (forall ((o2_12@@5 T@Ref) (f_36@@5 T@Field_29364_147463) ) (!  (=> (select (|PolymorphicMapType_46927_46438_147463#PolymorphicMapType_46927| (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@12) null (WandMaskField_29364 pm_f_12@@2))) o2_12@@5 f_36@@5) (= (select (|PolymorphicMapType_46378_46438_147463#PolymorphicMapType_46378| Heap@@12) o2_12@@5 f_36@@5) (select (|PolymorphicMapType_46378_46438_147463#PolymorphicMapType_46378| ExhaleHeap@@2) o2_12@@5 f_36@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_46378_46438_147463#PolymorphicMapType_46378| ExhaleHeap@@2) o2_12@@5 f_36@@5))
))) (forall ((o2_12@@6 T@Ref) (f_36@@6 T@Field_29364_147596) ) (!  (=> (select (|PolymorphicMapType_46927_46438_148576#PolymorphicMapType_46927| (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@12) null (WandMaskField_29364 pm_f_12@@2))) o2_12@@6 f_36@@6) (= (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@12) o2_12@@6 f_36@@6) (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| ExhaleHeap@@2) o2_12@@6 f_36@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| ExhaleHeap@@2) o2_12@@6 f_36@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@7) (IsWandField_29364_149103 pm_f_12@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1@@3 (Array T@EdgeDomainType Bool)) (u_1@@1 T@Ref) (v_2@@3 T@Ref) (w_2@@0 T@Ref) ) (!  (=> (and (exists_path_ EG_1@@3 u_1@@1 w_2@@0) (exists_path_ EG_1@@3 w_2@@0 v_2@@3)) (exists_path_ EG_1@@3 u_1@@1 v_2@@3))
 :qid |stdinbpl.673:15|
 :skolemid |92|
 :pattern ( (exists_path EG_1@@3 u_1@@1 w_2@@0) (exists_path EG_1@@3 w_2@@0 v_2@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_46378) (ExhaleHeap@@3 T@PolymorphicMapType_46378) (Mask@@8 T@PolymorphicMapType_46399) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@8) (=> (select (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| Heap@@13) o_27 $allocated) (select (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| ExhaleHeap@@3) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@8) (select (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| ExhaleHeap@@3) o_27 $allocated))
)))
(assert (forall ((p T@Field_29364_147463) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_46438_46438 p v_1 p w))
 :qid |stdinbpl.369:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_46438_46438 p v_1 p w))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_46378) (Heap1Heap T@PolymorphicMapType_46378) (refs@@2 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select refs@@2 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select refs@@2 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select refs@@2 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap2Heap) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2)) next) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap1Heap) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2)) next)))) (= (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2)))
 :qid |stdinbpl.772:15|
 :skolemid |107|
 :pattern ( (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert  (not (IsPredicateField_29364_29365 next)))
(assert  (not (IsWandField_29364_29365 next)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_46378) (ExhaleHeap@@4 T@PolymorphicMapType_46378) (Mask@@9 T@PolymorphicMapType_46399) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@9) (succHeap Heap@@14 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_46399) (o_2@@3 T@Ref) (f_4@@3 T@Field_29364_147596) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| Mask@@10) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_29364_152037 f_4@@3))) (not (IsWandField_29364_152053 f_4@@3))) (<= (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| Mask@@10) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| Mask@@10) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_46399) (o_2@@4 T@Ref) (f_4@@4 T@Field_29364_147463) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| Mask@@11) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_29364_147554 f_4@@4))) (not (IsWandField_29364_149103 f_4@@4))) (<= (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| Mask@@11) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| Mask@@11) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_46399) (o_2@@5 T@Ref) (f_4@@5 T@Field_46438_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| Mask@@12) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_29364_53 f_4@@5))) (not (IsWandField_29364_53 f_4@@5))) (<= (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| Mask@@12) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| Mask@@12) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_46399) (o_2@@6 T@Ref) (f_4@@6 T@Field_46451_46452) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| Mask@@13) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_29364_29365 f_4@@6))) (not (IsWandField_29364_29365 f_4@@6))) (<= (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| Mask@@13) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| Mask@@13) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_46378) (Mask@@14 T@PolymorphicMapType_46399) (g_1@@2 (Array T@Ref Bool)) (roots@@0 (Array T@Ref Bool)) ) (!  (=> (state Heap@@15 Mask@@14) (= (|is_global_sroot'| Heap@@15 g_1@@2 roots@@0) (|is_global_sroot#frame| (FrameFragment_5743 (|is_global_sroot#condqp2| Heap@@15 g_1@@2 roots@@0)) g_1@@2 roots@@0)))
 :qid |stdinbpl.903:15|
 :skolemid |123|
 :pattern ( (state Heap@@15 Mask@@14) (|is_global_sroot'| Heap@@15 g_1@@2 roots@@0))
)))
(assert (forall ((g0@@2 (Array T@Ref Bool)) (g1@@2 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_29344| (|Set#Intersection_29344| g0@@2 g1@@2) |Set#Empty_29350|) (forall ((r_1 T@Ref) ) (!  (=> (and (select g0@@2 r_1) (select g1@@2 r_1)) (select |Set#Empty_29350| r_1))
 :qid |stdinbpl.724:75|
 :skolemid |101|
 :pattern ( (select g0@@2 r_1) (select g1@@2 r_1))
)))
 :qid |stdinbpl.722:15|
 :skolemid |102|
 :pattern ( (|Set#Intersection_29344| g0@@2 g1@@2))
)))
(assert (forall ((a@@7 (Array T@EdgeDomainType Bool)) (b@@6 (Array T@EdgeDomainType Bool)) ) (! (= (|Set#Equal_29371| a@@7 b@@6) (forall ((o@@1 T@EdgeDomainType) ) (! (= (select a@@7 o@@1) (select b@@6 o@@1))
 :qid |stdinbpl.456:31|
 :skolemid |48|
 :pattern ( (select a@@7 o@@1))
 :pattern ( (select b@@6 o@@1))
)))
 :qid |stdinbpl.455:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_29371| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) ) (! (= (|Set#Equal_29344| a@@8 b@@7) (forall ((o@@2 T@Ref) ) (! (= (select a@@8 o@@2) (select b@@7 o@@2))
 :qid |stdinbpl.456:31|
 :skolemid |48|
 :pattern ( (select a@@8 o@@2))
 :pattern ( (select b@@7 o@@2))
)))
 :qid |stdinbpl.455:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_29344| a@@8 b@@7))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_46399) (o_2@@7 T@Ref) (f_4@@7 T@Field_29364_147596) ) (! (= (HasDirectPerm_29364_152408 Mask@@15 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| Mask@@15) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29364_152408 Mask@@15 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_46399) (o_2@@8 T@Ref) (f_4@@8 T@Field_29364_147463) ) (! (= (HasDirectPerm_29364_147527 Mask@@16 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| Mask@@16) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29364_147527 Mask@@16 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_46399) (o_2@@9 T@Ref) (f_4@@9 T@Field_46438_53) ) (! (= (HasDirectPerm_29364_53 Mask@@17 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| Mask@@17) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29364_53 Mask@@17 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_46399) (o_2@@10 T@Ref) (f_4@@10 T@Field_46451_46452) ) (! (= (HasDirectPerm_29364_29365 Mask@@18 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| Mask@@18) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_29364_29365 Mask@@18 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.357:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_46378) (ExhaleHeap@@5 T@PolymorphicMapType_46378) (Mask@@19 T@PolymorphicMapType_46399) (o_27@@0 T@Ref) (f_36@@7 T@Field_29364_147596) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@19) (=> (HasDirectPerm_29364_152408 Mask@@19 o_27@@0 f_36@@7) (= (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@16) o_27@@0 f_36@@7) (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| ExhaleHeap@@5) o_27@@0 f_36@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@19) (select (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| ExhaleHeap@@5) o_27@@0 f_36@@7))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_46378) (ExhaleHeap@@6 T@PolymorphicMapType_46378) (Mask@@20 T@PolymorphicMapType_46399) (o_27@@1 T@Ref) (f_36@@8 T@Field_29364_147463) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@20) (=> (HasDirectPerm_29364_147527 Mask@@20 o_27@@1 f_36@@8) (= (select (|PolymorphicMapType_46378_46438_147463#PolymorphicMapType_46378| Heap@@17) o_27@@1 f_36@@8) (select (|PolymorphicMapType_46378_46438_147463#PolymorphicMapType_46378| ExhaleHeap@@6) o_27@@1 f_36@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@20) (select (|PolymorphicMapType_46378_46438_147463#PolymorphicMapType_46378| ExhaleHeap@@6) o_27@@1 f_36@@8))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_46378) (ExhaleHeap@@7 T@PolymorphicMapType_46378) (Mask@@21 T@PolymorphicMapType_46399) (o_27@@2 T@Ref) (f_36@@9 T@Field_46438_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@21) (=> (HasDirectPerm_29364_53 Mask@@21 o_27@@2 f_36@@9) (= (select (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| Heap@@18) o_27@@2 f_36@@9) (select (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| ExhaleHeap@@7) o_27@@2 f_36@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@21) (select (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| ExhaleHeap@@7) o_27@@2 f_36@@9))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_46378) (ExhaleHeap@@8 T@PolymorphicMapType_46378) (Mask@@22 T@PolymorphicMapType_46399) (o_27@@3 T@Ref) (f_36@@10 T@Field_46451_46452) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@22) (=> (HasDirectPerm_29364_29365 Mask@@22 o_27@@3 f_36@@10) (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@19) o_27@@3 f_36@@10) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| ExhaleHeap@@8) o_27@@3 f_36@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@22) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| ExhaleHeap@@8) o_27@@3 f_36@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_29364_147596) ) (! (= (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_29364_147463) ) (! (= (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_46438_53) ) (! (= (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_46451_46452) ) (! (= (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_46399) (SummandMask1 T@PolymorphicMapType_46399) (SummandMask2 T@PolymorphicMapType_46399) (o_2@@15 T@Ref) (f_4@@15 T@Field_29364_147596) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_46399) (SummandMask1@@0 T@PolymorphicMapType_46399) (SummandMask2@@0 T@PolymorphicMapType_46399) (o_2@@16 T@Ref) (f_4@@16 T@Field_29364_147463) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_46399) (SummandMask1@@1 T@PolymorphicMapType_46399) (SummandMask2@@1 T@PolymorphicMapType_46399) (o_2@@17 T@Ref) (f_4@@17 T@Field_46438_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_46399) (SummandMask1@@2 T@PolymorphicMapType_46399) (SummandMask2@@2 T@PolymorphicMapType_46399) (o_2@@18 T@Ref) (f_4@@18 T@Field_46451_46452) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@9 (Array T@EdgeDomainType Bool)) (b@@8 (Array T@EdgeDomainType Bool)) (o@@3 T@EdgeDomainType) ) (! (= (select (|Set#Intersection_29371| a@@9 b@@8) o@@3)  (and (select a@@9 o@@3) (select b@@8 o@@3)))
 :qid |stdinbpl.420:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_29371| a@@9 b@@8) o@@3))
 :pattern ( (|Set#Intersection_29371| a@@9 b@@8) (select a@@9 o@@3))
 :pattern ( (|Set#Intersection_29371| a@@9 b@@8) (select b@@8 o@@3))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Intersection_29344| a@@10 b@@9) o@@4)  (and (select a@@10 o@@4) (select b@@9 o@@4)))
 :qid |stdinbpl.420:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_29344| a@@10 b@@9) o@@4))
 :pattern ( (|Set#Intersection_29344| a@@10 b@@9) (select a@@10 o@@4))
 :pattern ( (|Set#Intersection_29344| a@@10 b@@9) (select b@@9 o@@4))
)))
(assert (forall ((EG_1@@4 (Array T@EdgeDomainType Bool)) (from_1 (Array T@Ref Bool)) (to_1 T@Ref) ) (! (= (exists_spath EG_1@@4 from_1 to_1) (exists ((f_38 T@Ref) ) (!  (and (select from_1 f_38) (exists_path EG_1@@4 f_38 to_1))
 :qid |stdinbpl.708:55|
 :skolemid |99|
 :pattern ( (select from_1 f_38))
 :pattern ( (exists_path EG_1@@4 f_38 to_1))
)))
 :qid |stdinbpl.706:15|
 :skolemid |100|
 :pattern ( (exists_spath EG_1@@4 from_1 to_1))
)))
(assert (forall ((a@@11 (Array T@EdgeDomainType Bool)) (b@@10 (Array T@EdgeDomainType Bool)) (o@@5 T@EdgeDomainType) ) (! (= (select (|Set#Difference_29371| a@@11 b@@10) o@@5)  (and (select a@@11 o@@5) (not (select b@@10 o@@5))))
 :qid |stdinbpl.435:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_29371| a@@11 b@@10) o@@5))
 :pattern ( (|Set#Difference_29371| a@@11 b@@10) (select a@@11 o@@5))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) (o@@6 T@Ref) ) (! (= (select (|Set#Difference_29350| a@@12 b@@11) o@@6)  (and (select a@@12 o@@6) (not (select b@@11 o@@6))))
 :qid |stdinbpl.435:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_29350| a@@12 b@@11) o@@6))
 :pattern ( (|Set#Difference_29350| a@@12 b@@11) (select a@@12 o@@6))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_46378) (Heap1Heap@@0 T@PolymorphicMapType_46378) (g_1@@3 (Array T@Ref Bool)) (roots@@1 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g_1@@3 (|sk_is_global_sroot#condqp2| (|is_global_sroot#condqp2| Heap2Heap@@0 g_1@@3 roots@@1) (|is_global_sroot#condqp2| Heap1Heap@@0 g_1@@3 roots@@1))) (< NoPerm FullPerm))  (and (select g_1@@3 (|sk_is_global_sroot#condqp2| (|is_global_sroot#condqp2| Heap2Heap@@0 g_1@@3 roots@@1) (|is_global_sroot#condqp2| Heap1Heap@@0 g_1@@3 roots@@1))) (< NoPerm FullPerm))) (=> (and (select g_1@@3 (|sk_is_global_sroot#condqp2| (|is_global_sroot#condqp2| Heap2Heap@@0 g_1@@3 roots@@1) (|is_global_sroot#condqp2| Heap1Heap@@0 g_1@@3 roots@@1))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap2Heap@@0) (|sk_is_global_sroot#condqp2| (|is_global_sroot#condqp2| Heap2Heap@@0 g_1@@3 roots@@1) (|is_global_sroot#condqp2| Heap1Heap@@0 g_1@@3 roots@@1)) next) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap1Heap@@0) (|sk_is_global_sroot#condqp2| (|is_global_sroot#condqp2| Heap2Heap@@0 g_1@@3 roots@@1) (|is_global_sroot#condqp2| Heap1Heap@@0 g_1@@3 roots@@1)) next)))) (= (|is_global_sroot#condqp2| Heap2Heap@@0 g_1@@3 roots@@1) (|is_global_sroot#condqp2| Heap1Heap@@0 g_1@@3 roots@@1)))
 :qid |stdinbpl.913:15|
 :skolemid |124|
 :pattern ( (|is_global_sroot#condqp2| Heap2Heap@@0 g_1@@3 roots@@1) (|is_global_sroot#condqp2| Heap1Heap@@0 g_1@@3 roots@@1) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_46378) (Heap1Heap@@1 T@PolymorphicMapType_46378) (g0@@3 (Array T@Ref Bool)) (g1@@3 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g0@@3 (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@1 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@1 g0@@3 g1@@3))) (< NoPerm FullPerm))  (and (select g0@@3 (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@1 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@1 g0@@3 g1@@3))) (< NoPerm FullPerm))) (=> (and (select g0@@3 (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@1 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@1 g0@@3 g1@@3))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap2Heap@@1) (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@1 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@1 g0@@3 g1@@3)) next) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap1Heap@@1) (|sk_apply_TCFraming#condqp4| (|apply_TCFraming#condqp4| Heap2Heap@@1 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@1 g0@@3 g1@@3)) next)))) (= (|apply_TCFraming#condqp4| Heap2Heap@@1 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@1 g0@@3 g1@@3)))
 :qid |stdinbpl.1355:15|
 :skolemid |169|
 :pattern ( (|apply_TCFraming#condqp4| Heap2Heap@@1 g0@@3 g1@@3) (|apply_TCFraming#condqp4| Heap1Heap@@1 g0@@3 g1@@3) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_46378) (Heap1Heap@@2 T@PolymorphicMapType_46378) (g0@@4 (Array T@Ref Bool)) (g1@@4 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g1@@4 (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@2 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@2 g0@@4 g1@@4))) (< NoPerm FullPerm))  (and (select g1@@4 (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@2 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@2 g0@@4 g1@@4))) (< NoPerm FullPerm))) (=> (and (select g1@@4 (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@2 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@2 g0@@4 g1@@4))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap2Heap@@2) (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@2 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@2 g0@@4 g1@@4)) next) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap1Heap@@2) (|sk_apply_TCFraming#condqp5| (|apply_TCFraming#condqp5| Heap2Heap@@2 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@2 g0@@4 g1@@4)) next)))) (= (|apply_TCFraming#condqp5| Heap2Heap@@2 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@2 g0@@4 g1@@4)))
 :qid |stdinbpl.1365:15|
 :skolemid |170|
 :pattern ( (|apply_TCFraming#condqp5| Heap2Heap@@2 g0@@4 g1@@4) (|apply_TCFraming#condqp5| Heap1Heap@@2 g0@@4 g1@@4) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((a@@13 (Array T@EdgeDomainType Bool)) (b@@12 (Array T@EdgeDomainType Bool)) ) (!  (=> (|Set#Equal_29371| a@@13 b@@12) (= a@@13 b@@12))
 :qid |stdinbpl.457:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_29371| a@@13 b@@12))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_29344| a@@14 b@@13) (= a@@14 b@@13))
 :qid |stdinbpl.457:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_29344| a@@14 b@@13))
)))
(assert (forall ((a@@15 (Array T@EdgeDomainType Bool)) (x T@EdgeDomainType) (y T@EdgeDomainType) ) (!  (=> (select a@@15 y) (select (|Set#UnionOne_29371| a@@15 x) y))
 :qid |stdinbpl.400:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_29371| a@@15 x) (select a@@15 y))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (x@@0 T@Ref) (y@@0 T@Ref) ) (!  (=> (select a@@16 y@@0) (select (|Set#UnionOne_30254| a@@16 x@@0) y@@0))
 :qid |stdinbpl.400:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_30254| a@@16 x@@0) (select a@@16 y@@0))
)))
(assert (forall ((a@@17 (Array T@EdgeDomainType Bool)) (b@@14 (Array T@EdgeDomainType Bool)) (y@@1 T@EdgeDomainType) ) (!  (=> (select a@@17 y@@1) (select (|Set#Union_29371| a@@17 b@@14) y@@1))
 :qid |stdinbpl.410:18|
 :skolemid |35|
 :pattern ( (|Set#Union_29371| a@@17 b@@14) (select a@@17 y@@1))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select a@@18 y@@2) (select (|Set#Union_29737| a@@18 b@@15) y@@2))
 :qid |stdinbpl.410:18|
 :skolemid |35|
 :pattern ( (|Set#Union_29737| a@@18 b@@15) (select a@@18 y@@2))
)))
(assert (forall ((a@@19 (Array T@EdgeDomainType Bool)) (b@@16 (Array T@EdgeDomainType Bool)) (y@@3 T@EdgeDomainType) ) (!  (=> (select b@@16 y@@3) (select (|Set#Union_29371| a@@19 b@@16) y@@3))
 :qid |stdinbpl.412:18|
 :skolemid |36|
 :pattern ( (|Set#Union_29371| a@@19 b@@16) (select b@@16 y@@3))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@17 (Array T@Ref Bool)) (y@@4 T@Ref) ) (!  (=> (select b@@17 y@@4) (select (|Set#Union_29737| a@@20 b@@17) y@@4))
 :qid |stdinbpl.412:18|
 :skolemid |36|
 :pattern ( (|Set#Union_29737| a@@20 b@@17) (select b@@17 y@@4))
)))
(assert (forall ((a@@21 (Array T@EdgeDomainType Bool)) (x@@1 T@EdgeDomainType) (o@@7 T@EdgeDomainType) ) (! (= (select (|Set#UnionOne_29371| a@@21 x@@1) o@@7)  (or (= o@@7 x@@1) (select a@@21 o@@7)))
 :qid |stdinbpl.396:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_29371| a@@21 x@@1) o@@7))
)))
(assert (forall ((a@@22 (Array T@Ref Bool)) (x@@2 T@Ref) (o@@8 T@Ref) ) (! (= (select (|Set#UnionOne_30254| a@@22 x@@2) o@@8)  (or (= o@@8 x@@2) (select a@@22 o@@8)))
 :qid |stdinbpl.396:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_30254| a@@22 x@@2) o@@8))
)))
(assert (forall ((a@@23 (Array T@EdgeDomainType Bool)) (b@@18 (Array T@EdgeDomainType Bool)) (y@@5 T@EdgeDomainType) ) (!  (=> (select b@@18 y@@5) (not (select (|Set#Difference_29371| a@@23 b@@18) y@@5)))
 :qid |stdinbpl.437:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_29371| a@@23 b@@18) (select b@@18 y@@5))
)))
(assert (forall ((a@@24 (Array T@Ref Bool)) (b@@19 (Array T@Ref Bool)) (y@@6 T@Ref) ) (!  (=> (select b@@19 y@@6) (not (select (|Set#Difference_29350| a@@24 b@@19) y@@6)))
 :qid |stdinbpl.437:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_29350| a@@24 b@@19) (select b@@19 y@@6))
)))
(assert (forall ((a@@25 (Array T@EdgeDomainType Bool)) (b@@20 (Array T@EdgeDomainType Bool)) ) (!  (and (= (+ (+ (|Set#Card_29371| (|Set#Difference_29371| a@@25 b@@20)) (|Set#Card_29371| (|Set#Difference_29371| b@@20 a@@25))) (|Set#Card_29371| (|Set#Intersection_29371| a@@25 b@@20))) (|Set#Card_29371| (|Set#Union_29371| a@@25 b@@20))) (= (|Set#Card_29371| (|Set#Difference_29371| a@@25 b@@20)) (- (|Set#Card_29371| a@@25) (|Set#Card_29371| (|Set#Intersection_29371| a@@25 b@@20)))))
 :qid |stdinbpl.439:18|
 :skolemid |45|
 :pattern ( (|Set#Card_29371| (|Set#Difference_29371| a@@25 b@@20)))
)))
(assert (forall ((a@@26 (Array T@Ref Bool)) (b@@21 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_29350| (|Set#Difference_29350| a@@26 b@@21)) (|Set#Card_29350| (|Set#Difference_29350| b@@21 a@@26))) (|Set#Card_29350| (|Set#Intersection_29344| a@@26 b@@21))) (|Set#Card_29350| (|Set#Union_29737| a@@26 b@@21))) (= (|Set#Card_29350| (|Set#Difference_29350| a@@26 b@@21)) (- (|Set#Card_29350| a@@26) (|Set#Card_29350| (|Set#Intersection_29344| a@@26 b@@21)))))
 :qid |stdinbpl.439:18|
 :skolemid |45|
 :pattern ( (|Set#Card_29350| (|Set#Difference_29350| a@@26 b@@21)))
)))
(assert (forall ((g_1@@4 (Array T@EdgeDomainType Bool)) (e_1 T@EdgeDomainType) ) (!  (=> (select g_1@@4 e_1) (= (create_edge (edge_pred e_1) (edge_succ e_1)) e_1))
 :qid |stdinbpl.731:15|
 :skolemid |103|
 :pattern ( (select g_1@@4 e_1))
)))
(assert (forall ((s (Array T@EdgeDomainType Bool)) ) (! (<= 0 (|Set#Card_29371| s))
 :qid |stdinbpl.382:18|
 :skolemid |22|
 :pattern ( (|Set#Card_29371| s))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_29350| s@@0))
 :qid |stdinbpl.382:18|
 :skolemid |22|
 :pattern ( (|Set#Card_29350| s@@0))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_46378) (g_1@@5 (Array T@Ref Bool)) ) (!  (and (= (acyclic_list_segment Heap@@20 g_1@@5) (|acyclic_list_segment'| Heap@@20 g_1@@5)) (dummyFunction_6898 (|acyclic_list_segment#triggerStateless| g_1@@5)))
 :qid |stdinbpl.1069:15|
 :skolemid |138|
 :pattern ( (acyclic_list_segment Heap@@20 g_1@@5))
)))
(assert (forall ((a@@27 (Array T@EdgeDomainType Bool)) (x@@3 T@EdgeDomainType) ) (! (select (|Set#UnionOne_29371| a@@27 x@@3) x@@3)
 :qid |stdinbpl.398:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_29371| a@@27 x@@3))
)))
(assert (forall ((a@@28 (Array T@Ref Bool)) (x@@4 T@Ref) ) (! (select (|Set#UnionOne_30254| a@@28 x@@4) x@@4)
 :qid |stdinbpl.398:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_30254| a@@28 x@@4))
)))
(assert (forall ((EG_1@@5 (Array T@EdgeDomainType Bool)) ) (! (= (acyclic_graph EG_1@@5) (forall ((v1@@1 T@Ref) (v2@@1 T@Ref) ) (!  (or (not (edge EG_1@@5 v1@@1 v2@@1)) (not (exists_path EG_1@@5 v2@@1 v1@@1)))
 :qid |stdinbpl.681:42|
 :skolemid |93|
 :pattern ( (edge EG_1@@5 v1@@1 v2@@1))
 :pattern ( (exists_path EG_1@@5 v2@@1 v1@@1))
)))
 :qid |stdinbpl.679:15|
 :skolemid |94|
 :pattern ( (acyclic_graph EG_1@@5))
)))
(assert (forall ((a@@29 (Array T@EdgeDomainType Bool)) (x@@5 T@EdgeDomainType) ) (!  (=> (select a@@29 x@@5) (= (|Set#Card_29371| (|Set#UnionOne_29371| a@@29 x@@5)) (|Set#Card_29371| a@@29)))
 :qid |stdinbpl.402:18|
 :skolemid |32|
 :pattern ( (|Set#Card_29371| (|Set#UnionOne_29371| a@@29 x@@5)))
)))
(assert (forall ((a@@30 (Array T@Ref Bool)) (x@@6 T@Ref) ) (!  (=> (select a@@30 x@@6) (= (|Set#Card_29350| (|Set#UnionOne_30254| a@@30 x@@6)) (|Set#Card_29350| a@@30)))
 :qid |stdinbpl.402:18|
 :skolemid |32|
 :pattern ( (|Set#Card_29350| (|Set#UnionOne_30254| a@@30 x@@6)))
)))
(assert (forall ((r@@1 T@EdgeDomainType) ) (! (= (|Set#Card_29371| (|Set#Singleton_29371| r@@1)) 1)
 :qid |stdinbpl.393:18|
 :skolemid |28|
 :pattern ( (|Set#Card_29371| (|Set#Singleton_29371| r@@1)))
)))
(assert (forall ((r@@2 T@Ref) ) (! (= (|Set#Card_29350| (|Set#Singleton_30254| r@@2)) 1)
 :qid |stdinbpl.393:18|
 :skolemid |28|
 :pattern ( (|Set#Card_29350| (|Set#Singleton_30254| r@@2)))
)))
(assert (forall ((r@@3 T@EdgeDomainType) ) (! (select (|Set#Singleton_29371| r@@3) r@@3)
 :qid |stdinbpl.391:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_29371| r@@3))
)))
(assert (forall ((r@@4 T@Ref) ) (! (select (|Set#Singleton_30254| r@@4) r@@4)
 :qid |stdinbpl.391:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_30254| r@@4))
)))
(assert (forall ((EG_1@@6 (Array T@EdgeDomainType Bool)) (p_1@@0 T@Ref) (s_1@@0 T@Ref) ) (! (= (edge_ EG_1@@6 p_1@@0 s_1@@0) (select EG_1@@6 (create_edge p_1@@0 s_1@@0)))
 :qid |stdinbpl.634:15|
 :skolemid |84|
 :pattern ( (select EG_1@@6 (create_edge p_1@@0 s_1@@0)))
 :pattern ( (edge EG_1@@6 p_1@@0 s_1@@0))
)))
(assert (forall ((a@@31 (Array T@EdgeDomainType Bool)) (b@@22 (Array T@EdgeDomainType Bool)) ) (! (= (|Set#Union_29371| a@@31 (|Set#Union_29371| a@@31 b@@22)) (|Set#Union_29371| a@@31 b@@22))
 :qid |stdinbpl.425:18|
 :skolemid |39|
 :pattern ( (|Set#Union_29371| a@@31 (|Set#Union_29371| a@@31 b@@22)))
)))
(assert (forall ((a@@32 (Array T@Ref Bool)) (b@@23 (Array T@Ref Bool)) ) (! (= (|Set#Union_29737| a@@32 (|Set#Union_29737| a@@32 b@@23)) (|Set#Union_29737| a@@32 b@@23))
 :qid |stdinbpl.425:18|
 :skolemid |39|
 :pattern ( (|Set#Union_29737| a@@32 (|Set#Union_29737| a@@32 b@@23)))
)))
(assert (forall ((a@@33 (Array T@EdgeDomainType Bool)) (b@@24 (Array T@EdgeDomainType Bool)) ) (! (= (|Set#Intersection_29371| a@@33 (|Set#Intersection_29371| a@@33 b@@24)) (|Set#Intersection_29371| a@@33 b@@24))
 :qid |stdinbpl.429:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_29371| a@@33 (|Set#Intersection_29371| a@@33 b@@24)))
)))
(assert (forall ((a@@34 (Array T@Ref Bool)) (b@@25 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_29344| a@@34 (|Set#Intersection_29344| a@@34 b@@25)) (|Set#Intersection_29344| a@@34 b@@25))
 :qid |stdinbpl.429:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_29344| a@@34 (|Set#Intersection_29344| a@@34 b@@25)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_46378) (Mask@@23 T@PolymorphicMapType_46399) (g_1@@6 (Array T@Ref Bool)) ) (!  (=> (state Heap@@21 Mask@@23) (= (|acyclic_list_segment'| Heap@@21 g_1@@6) (|acyclic_list_segment#frame| (FrameFragment_5743 (|acyclic_list_segment#condqp3| Heap@@21 g_1@@6)) g_1@@6)))
 :qid |stdinbpl.1089:15|
 :skolemid |142|
 :pattern ( (state Heap@@21 Mask@@23) (|acyclic_list_segment'| Heap@@21 g_1@@6))
)))
(assert (forall ((o@@9 T@EdgeDomainType) ) (!  (not (select |Set#Empty_29371| o@@9))
 :qid |stdinbpl.385:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_29371| o@@9))
)))
(assert (forall ((o@@10 T@Ref) ) (!  (not (select |Set#Empty_29350| o@@10))
 :qid |stdinbpl.385:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_29350| o@@10))
)))
(assert (forall ((p_1@@1 T@Ref) (s_1@@1 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@1 s_1@@1)) p_1@@1) (= (edge_succ (create_edge p_1@@1 s_1@@1)) s_1@@1))
 :qid |stdinbpl.585:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@1 s_1@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_46378) (o_26 T@Ref) (f_37 T@Field_29364_147463) (v T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_46378 (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| Heap@@22) (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@22) (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@22) (store (|PolymorphicMapType_46378_46438_147463#PolymorphicMapType_46378| Heap@@22) o_26 f_37 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_46378 (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| Heap@@22) (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@22) (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@22) (store (|PolymorphicMapType_46378_46438_147463#PolymorphicMapType_46378| Heap@@22) o_26 f_37 v)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_46378) (o_26@@0 T@Ref) (f_37@@0 T@Field_29364_147596) (v@@0 T@PolymorphicMapType_46927) ) (! (succHeap Heap@@23 (PolymorphicMapType_46378 (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| Heap@@23) (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@23) (store (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@23) o_26@@0 f_37@@0 v@@0) (|PolymorphicMapType_46378_46438_147463#PolymorphicMapType_46378| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_46378 (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| Heap@@23) (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@23) (store (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@23) o_26@@0 f_37@@0 v@@0) (|PolymorphicMapType_46378_46438_147463#PolymorphicMapType_46378| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_46378) (o_26@@1 T@Ref) (f_37@@1 T@Field_46451_46452) (v@@1 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_46378 (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| Heap@@24) (store (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@24) o_26@@1 f_37@@1 v@@1) (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@24) (|PolymorphicMapType_46378_46438_147463#PolymorphicMapType_46378| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_46378 (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| Heap@@24) (store (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@24) o_26@@1 f_37@@1 v@@1) (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@24) (|PolymorphicMapType_46378_46438_147463#PolymorphicMapType_46378| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_46378) (o_26@@2 T@Ref) (f_37@@2 T@Field_46438_53) (v@@2 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_46378 (store (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| Heap@@25) o_26@@2 f_37@@2 v@@2) (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@25) (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@25) (|PolymorphicMapType_46378_46438_147463#PolymorphicMapType_46378| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_46378 (store (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| Heap@@25) o_26@@2 f_37@@2 v@@2) (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@25) (|PolymorphicMapType_46378_29364_147640#PolymorphicMapType_46378| Heap@@25) (|PolymorphicMapType_46378_46438_147463#PolymorphicMapType_46378| Heap@@25)))
)))
(assert (forall ((a@@35 Int) (b@@26 Int) ) (! (= (<= a@@35 b@@26) (= (|Math#min| a@@35 b@@26) a@@35))
 :qid |stdinbpl.469:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@35 b@@26))
)))
(assert (forall ((a@@36 Int) (b@@27 Int) ) (! (= (<= b@@27 a@@36) (= (|Math#min| a@@36 b@@27) b@@27))
 :qid |stdinbpl.470:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@36 b@@27))
)))
(assert (forall ((s@@1 (Array T@EdgeDomainType Bool)) ) (!  (and (= (= (|Set#Card_29371| s@@1) 0) (= s@@1 |Set#Empty_29371|)) (=> (not (= (|Set#Card_29371| s@@1) 0)) (exists ((x@@7 T@EdgeDomainType) ) (! (select s@@1 x@@7)
 :qid |stdinbpl.388:33|
 :skolemid |24|
))))
 :qid |stdinbpl.386:18|
 :skolemid |25|
 :pattern ( (|Set#Card_29371| s@@1))
)))
(assert (forall ((s@@2 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_29350| s@@2) 0) (= s@@2 |Set#Empty_29350|)) (=> (not (= (|Set#Card_29350| s@@2) 0)) (exists ((x@@8 T@Ref) ) (! (select s@@2 x@@8)
 :qid |stdinbpl.388:33|
 :skolemid |24|
))))
 :qid |stdinbpl.386:18|
 :skolemid |25|
 :pattern ( (|Set#Card_29350| s@@2))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_46378) (Mask@@24 T@PolymorphicMapType_46399) (refs@@3 (Array T@Ref Bool)) ) (!  (=> (state Heap@@26 Mask@@24) (= (|$$'| Heap@@26 refs@@3) (|$$#frame| (FrameFragment_5743 (|$$#condqp1| Heap@@26 refs@@3)) refs@@3)))
 :qid |stdinbpl.762:15|
 :skolemid |106|
 :pattern ( (state Heap@@26 Mask@@24) (|$$'| Heap@@26 refs@@3))
)))
(assert (forall ((a@@37 (Array T@Ref Bool)) (b@@28 (Array T@Ref Bool)) ) (! (= (|Set#Subset_29491| a@@37 b@@28) (forall ((o@@11 T@Ref) ) (!  (=> (select a@@37 o@@11) (select b@@28 o@@11))
 :qid |stdinbpl.448:32|
 :skolemid |46|
 :pattern ( (select a@@37 o@@11))
 :pattern ( (select b@@28 o@@11))
)))
 :qid |stdinbpl.447:17|
 :skolemid |47|
 :pattern ( (|Set#Subset_29491| a@@37 b@@28))
)))
(assert (forall ((Heap2Heap@@3 T@PolymorphicMapType_46378) (Heap1Heap@@3 T@PolymorphicMapType_46378) (g_1@@7 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g_1@@7 (|sk_acyclic_list_segment#condqp3| (|acyclic_list_segment#condqp3| Heap2Heap@@3 g_1@@7) (|acyclic_list_segment#condqp3| Heap1Heap@@3 g_1@@7))) (< NoPerm FullPerm))  (and (select g_1@@7 (|sk_acyclic_list_segment#condqp3| (|acyclic_list_segment#condqp3| Heap2Heap@@3 g_1@@7) (|acyclic_list_segment#condqp3| Heap1Heap@@3 g_1@@7))) (< NoPerm FullPerm))) (=> (and (select g_1@@7 (|sk_acyclic_list_segment#condqp3| (|acyclic_list_segment#condqp3| Heap2Heap@@3 g_1@@7) (|acyclic_list_segment#condqp3| Heap1Heap@@3 g_1@@7))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap2Heap@@3) (|sk_acyclic_list_segment#condqp3| (|acyclic_list_segment#condqp3| Heap2Heap@@3 g_1@@7) (|acyclic_list_segment#condqp3| Heap1Heap@@3 g_1@@7)) next) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap1Heap@@3) (|sk_acyclic_list_segment#condqp3| (|acyclic_list_segment#condqp3| Heap2Heap@@3 g_1@@7) (|acyclic_list_segment#condqp3| Heap1Heap@@3 g_1@@7)) next)))) (= (|acyclic_list_segment#condqp3| Heap2Heap@@3 g_1@@7) (|acyclic_list_segment#condqp3| Heap1Heap@@3 g_1@@7)))
 :qid |stdinbpl.1099:15|
 :skolemid |143|
 :pattern ( (|acyclic_list_segment#condqp3| Heap2Heap@@3 g_1@@7) (|acyclic_list_segment#condqp3| Heap1Heap@@3 g_1@@7) (succHeapTrans Heap2Heap@@3 Heap1Heap@@3))
)))
(assert (forall ((a@@38 (Array T@EdgeDomainType Bool)) (x@@9 T@EdgeDomainType) ) (!  (=> (not (select a@@38 x@@9)) (= (|Set#Card_29371| (|Set#UnionOne_29371| a@@38 x@@9)) (+ (|Set#Card_29371| a@@38) 1)))
 :qid |stdinbpl.404:18|
 :skolemid |33|
 :pattern ( (|Set#Card_29371| (|Set#UnionOne_29371| a@@38 x@@9)))
)))
(assert (forall ((a@@39 (Array T@Ref Bool)) (x@@10 T@Ref) ) (!  (=> (not (select a@@39 x@@10)) (= (|Set#Card_29350| (|Set#UnionOne_30254| a@@39 x@@10)) (+ (|Set#Card_29350| a@@39) 1)))
 :qid |stdinbpl.404:18|
 :skolemid |33|
 :pattern ( (|Set#Card_29350| (|Set#UnionOne_30254| a@@39 x@@10)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_46378) (Mask@@25 T@PolymorphicMapType_46399) (g0@@5 (Array T@Ref Bool)) (g1@@5 (Array T@Ref Bool)) ) (!  (=> (state Heap@@27 Mask@@25) (= (|apply_TCFraming'| Heap@@27 g0@@5 g1@@5) (|apply_TCFraming#frame| (CombineFrames (FrameFragment_5743 (|apply_TCFraming#condqp4| Heap@@27 g0@@5 g1@@5)) (FrameFragment_5743 (|apply_TCFraming#condqp5| Heap@@27 g0@@5 g1@@5))) g0@@5 g1@@5)))
 :qid |stdinbpl.1345:15|
 :skolemid |168|
 :pattern ( (state Heap@@27 Mask@@25) (|apply_TCFraming'| Heap@@27 g0@@5 g1@@5))
)))
(assert (forall ((o_26@@3 T@Ref) (f_35 T@Field_46451_46452) (Heap@@28 T@PolymorphicMapType_46378) ) (!  (=> (select (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| Heap@@28) o_26@@3 $allocated) (select (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| Heap@@28) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@28) o_26@@3 f_35) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@28) o_26@@3 f_35))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_46378) (Mask@@26 T@PolymorphicMapType_46399) (g_1@@8 (Array T@Ref Bool)) (roots@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@29 Mask@@26) (< AssumeFunctionsAbove 1)) (=> (and (and (not (select g_1@@8 null)) (forall ((n$1 T@Ref) ) (!  (=> (and (select g_1@@8 n$1) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@29) n$1 next) null))) (select g_1@@8 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@29) n$1 next)))
 :qid |stdinbpl.892:76|
 :skolemid |120|
 :pattern ( (select g_1@@8 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@29) n$1 next)))
 :pattern ( (select g_1@@8 n$1) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@29) n$1 next))
))) (|Set#Subset_29491| roots@@2 g_1@@8)) (= (is_global_sroot Heap@@29 g_1@@8 roots@@2) (forall ((n T@Ref) ) (!  (=> (select g_1@@8 n) (exists_spath ($$ Heap@@29 g_1@@8) roots@@2 n))
 :qid |stdinbpl.895:81|
 :skolemid |121|
 :pattern ( (select g_1@@8 n))
 :pattern ( (exists_spath (|$$#frame| (FrameFragment_5743 (|$$#condqp1| Heap@@29 g_1@@8)) g_1@@8) roots@@2 n))
)))))
 :qid |stdinbpl.890:15|
 :skolemid |122|
 :pattern ( (state Heap@@29 Mask@@26) (is_global_sroot Heap@@29 g_1@@8 roots@@2))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_46378) (Mask@@27 T@PolymorphicMapType_46399) (g0@@6 (Array T@Ref Bool)) (g1@@6 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@30 Mask@@27) (or (< AssumeFunctionsAbove 2) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_5743 (|apply_TCFraming#condqp4| Heap@@30 g0@@6 g1@@6)) (FrameFragment_5743 (|apply_TCFraming#condqp5| Heap@@30 g0@@6 g1@@6))) g0@@6 g1@@6))) (=> (and (and (and (not (select g0@@6 null)) (forall ((n$0_14@@2 T@Ref) ) (!  (=> (and (select g0@@6 n$0_14@@2) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@30) n$0_14@@2 next) null))) (select g0@@6 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@30) n$0_14@@2 next)))
 :qid |stdinbpl.1373:236|
 :skolemid |171|
 :pattern ( (select g0@@6 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@30) n$0_14@@2 next)))
 :pattern ( (select g0@@6 n$0_14@@2) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@30) n$0_14@@2 next))
))) (and (not (select g1@@6 null)) (forall ((n$2_6@@1 T@Ref) ) (!  (=> (and (select g1@@6 n$2_6@@1) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@30) n$2_6@@1 next) null))) (select g1@@6 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@30) n$2_6@@1 next)))
 :qid |stdinbpl.1376:31|
 :skolemid |172|
 :pattern ( (select g1@@6 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@30) n$2_6@@1 next)))
 :pattern ( (select g1@@6 n$2_6@@1) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@30) n$2_6@@1 next))
)))) (|Set#Equal_29344| (|Set#Intersection_29344| g1@@6 g0@@6) |Set#Empty_29350|)) (|Set#Equal_29344| (|Set#Union_29737| g0@@6 g1@@6) (|Set#Union_29737| g1@@6 g0@@6))))
 :qid |stdinbpl.1371:15|
 :skolemid |173|
 :pattern ( (state Heap@@30 Mask@@27) (|apply_TCFraming'| Heap@@30 g0@@6 g1@@6))
)))
(assert (forall ((p@@1 T@Field_29364_147463) (v_1@@0 T@FrameType) (q T@Field_29364_147463) (w@@0 T@FrameType) (r@@5 T@Field_29364_147463) (u T@FrameType) ) (!  (=> (and (InsidePredicate_46438_46438 p@@1 v_1@@0 q w@@0) (InsidePredicate_46438_46438 q w@@0 r@@5 u)) (InsidePredicate_46438_46438 p@@1 v_1@@0 r@@5 u))
 :qid |stdinbpl.364:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_46438_46438 p@@1 v_1@@0 q w@@0) (InsidePredicate_46438_46438 q w@@0 r@@5 u))
)))
(assert (forall ((a@@40 Int) ) (!  (=> (< a@@40 0) (= (|Math#clip| a@@40) 0))
 :qid |stdinbpl.475:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@40))
)))
(assert (forall ((EG_1@@7 (Array T@EdgeDomainType Bool)) (x@@11 T@Ref) (v_2@@4 T@Ref) ) (! (= (select (inst_uReach EG_1@@7 x@@11) v_2@@4) (exists_path EG_1@@7 x@@11 v_2@@4))
 :qid |stdinbpl.652:15|
 :skolemid |88|
 :pattern ( (select (inst_uReach EG_1@@7 x@@11) v_2@@4))
 :pattern ( (exists_path EG_1@@7 x@@11 v_2@@4))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@41 (Array T@EdgeDomainType Bool)) (b@@29 (Array T@EdgeDomainType Bool)) (o@@12 T@EdgeDomainType) ) (! (= (select (|Set#Union_29371| a@@41 b@@29) o@@12)  (or (select a@@41 o@@12) (select b@@29 o@@12)))
 :qid |stdinbpl.408:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_29371| a@@41 b@@29) o@@12))
)))
(assert (forall ((a@@42 (Array T@Ref Bool)) (b@@30 (Array T@Ref Bool)) (o@@13 T@Ref) ) (! (= (select (|Set#Union_29737| a@@42 b@@30) o@@13)  (or (select a@@42 o@@13) (select b@@30 o@@13)))
 :qid |stdinbpl.408:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_29737| a@@42 b@@30) o@@13))
)))
(assert (forall ((EG_1@@8 (Array T@EdgeDomainType Bool)) (p_1@@2 T@Ref) (s_1@@2 T@Ref) ) (! (= (edge EG_1@@8 p_1@@2 s_1@@2) (edge_ EG_1@@8 p_1@@2 s_1@@2))
 :qid |stdinbpl.628:15|
 :skolemid |83|
 :pattern ( (edge EG_1@@8 p_1@@2 s_1@@2))
)))
(assert (forall ((EG_1@@9 (Array T@EdgeDomainType Bool)) (start_1@@0 T@Ref) (end_1@@0 T@Ref) ) (! (= (exists_path EG_1@@9 start_1@@0 end_1@@0) (exists_path_ EG_1@@9 start_1@@0 end_1@@0))
 :qid |stdinbpl.658:15|
 :skolemid |89|
 :pattern ( (exists_path EG_1@@9 start_1@@0 end_1@@0))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_46378) (g_1@@9 (Array T@Ref Bool)) (roots@@3 (Array T@Ref Bool)) ) (!  (and (= (is_global_sroot Heap@@31 g_1@@9 roots@@3) (|is_global_sroot'| Heap@@31 g_1@@9 roots@@3)) (dummyFunction_6898 (|is_global_sroot#triggerStateless| g_1@@9 roots@@3)))
 :qid |stdinbpl.880:15|
 :skolemid |118|
 :pattern ( (is_global_sroot Heap@@31 g_1@@9 roots@@3))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_46378) (g0@@7 (Array T@Ref Bool)) (g1@@7 (Array T@Ref Bool)) ) (!  (and (= (apply_TCFraming Heap@@32 g0@@7 g1@@7) (|apply_TCFraming'| Heap@@32 g0@@7 g1@@7)) (dummyFunction_6898 (|apply_TCFraming#triggerStateless| g0@@7 g1@@7)))
 :qid |stdinbpl.1334:15|
 :skolemid |166|
 :pattern ( (apply_TCFraming Heap@@32 g0@@7 g1@@7))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun g0@@8 () (Array T@Ref Bool))
(declare-fun n$0_2 () T@Ref)
(declare-fun Heap@@33 () T@PolymorphicMapType_46378)
(declare-fun neverTriggered50 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_46399)
(declare-fun QPMask@1 () T@PolymorphicMapType_46399)
(declare-fun qpRange50 (T@Ref) Bool)
(declare-fun invRecv50 (T@Ref) T@Ref)
(declare-fun g1@@8 () (Array T@Ref Bool))
(declare-fun n$0_4 () T@Ref)
(declare-fun neverTriggered51 (T@Ref) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_46399)
(declare-fun qpRange51 (T@Ref) Bool)
(declare-fun invRecv51 (T@Ref) T@Ref)
(declare-fun n$1_2 () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_46378)
(declare-fun x1 () T@Ref)
(declare-fun x0 () T@Ref)
(declare-fun neverTriggered53 (T@Ref) Bool)
(declare-fun QPMask@11 () T@PolymorphicMapType_46399)
(declare-fun QPMask@10 () T@PolymorphicMapType_46399)
(declare-fun qpRange53 (T@Ref) Bool)
(declare-fun invRecv53 (T@Ref) T@Ref)
(declare-fun n$0_7 () T@Ref)
(declare-fun neverTriggered54 (T@Ref) Bool)
(declare-fun QPMask@12 () T@PolymorphicMapType_46399)
(declare-fun qpRange54 (T@Ref) Bool)
(declare-fun invRecv54 (T@Ref) T@Ref)
(declare-fun n$6 () T@Ref)
(declare-fun qpRange52 (T@Ref) Bool)
(declare-fun invRecv52 (T@Ref) T@Ref)
(declare-fun n$2_2 () T@Ref)
(declare-fun neverTriggered57 (T@Ref) Bool)
(declare-fun QPMask@9 () T@PolymorphicMapType_46399)
(declare-fun qpRange57 (T@Ref) Bool)
(declare-fun invRecv57 (T@Ref) T@Ref)
(declare-fun n$0_9 () T@Ref)
(declare-fun neverTriggered56 (T@Ref) Bool)
(declare-fun QPMask@4 () T@PolymorphicMapType_46399)
(declare-fun qpRange56 (T@Ref) Bool)
(declare-fun invRecv56 (T@Ref) T@Ref)
(declare-fun r$2_2 () T@Ref)
(declare-fun r$1_2 () T@Ref)
(declare-fun n$6_2 () T@Ref)
(declare-fun neverTriggered55 (T@Ref) Bool)
(declare-fun QPMask@8 () T@PolymorphicMapType_46399)
(declare-fun qpRange55 (T@Ref) Bool)
(declare-fun invRecv55 (T@Ref) T@Ref)
(declare-fun QPMask@7 () T@PolymorphicMapType_46399)
(declare-fun dummyFunction_29365 (T@Ref) Bool)
(declare-fun neverTriggered60 (T@Ref) Bool)
(declare-fun QPMask@6 () T@PolymorphicMapType_46399)
(declare-fun neverTriggered59 (T@Ref) Bool)
(declare-fun QPMask@5 () T@PolymorphicMapType_46399)
(declare-fun neverTriggered58 (T@Ref) Bool)
(declare-fun QPMask@13 () T@PolymorphicMapType_46399)
(declare-fun neverTriggered49 (T@Ref) Bool)
(declare-fun n$4_4 () T@Ref)
(declare-fun QPMask@14 () T@PolymorphicMapType_46399)
(declare-fun neverTriggered48 (T@Ref) Bool)
(declare-fun n$3 () T@Ref)
(declare-fun n$2_14 () T@Ref)
(declare-fun qpRange47 (T@Ref) Bool)
(declare-fun invRecv47 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_46399)
(declare-fun n$0_21 () T@Ref)
(declare-fun qpRange46 (T@Ref) Bool)
(declare-fun invRecv46 (T@Ref) T@Ref)
(set-info :boogie-vc-id test_union)
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
 (=> (= (ControlFlow 0 0) 159) (let ((anon34_correct true))
(let ((anon115_Else_correct  (=> (and (not (and (select g0@@8 n$0_2) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_2 next) null)))) (= (ControlFlow 0 143) 140)) anon34_correct)))
(let ((anon115_Then_correct  (=> (and (select g0@@8 n$0_2) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_2 next) null))) (and (=> (= (ControlFlow 0 141) (- 0 142)) (select g0@@8 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_2 next))) (=> (select g0@@8 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_2 next)) (=> (= (ControlFlow 0 141) 140) anon34_correct))))))
(let ((anon114_Else_correct true))
(let ((anon113_Then_correct  (and (=> (= (ControlFlow 0 144) (- 0 147)) (not (select g0@@8 null))) (=> (not (select g0@@8 null)) (and (=> (= (ControlFlow 0 144) (- 0 146)) (forall ((n_4 T@Ref) (n_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4 n_4_1)) (select g0@@8 n_4)) (select g0@@8 n_4_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_4 n_4_1)))
 :qid |stdinbpl.4054:21|
 :skolemid |441|
 :pattern ( (neverTriggered50 n_4) (neverTriggered50 n_4_1))
))) (=> (forall ((n_4@@0 T@Ref) (n_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4@@0 n_4_1@@0)) (select g0@@8 n_4@@0)) (select g0@@8 n_4_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_4@@0 n_4_1@@0)))
 :qid |stdinbpl.4054:21|
 :skolemid |441|
 :pattern ( (neverTriggered50 n_4@@0) (neverTriggered50 n_4_1@@0))
)) (and (=> (= (ControlFlow 0 144) (- 0 145)) (forall ((n_4@@1 T@Ref) ) (!  (=> (select g0@@8 n_4@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) n_4@@1 next) NoPerm)))
 :qid |stdinbpl.4061:21|
 :skolemid |442|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@2) n_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_4@@1 next))
))) (=> (forall ((n_4@@2 T@Ref) ) (!  (=> (select g0@@8 n_4@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) n_4@@2 next) NoPerm)))
 :qid |stdinbpl.4061:21|
 :skolemid |442|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_4@@2 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@2) n_4@@2 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_4@@2 next))
)) (=> (and (forall ((n_4@@3 T@Ref) ) (!  (=> (and (select g0@@8 n_4@@3) (< NoPerm FullPerm)) (and (qpRange50 n_4@@3) (= (invRecv50 n_4@@3) n_4@@3)))
 :qid |stdinbpl.4067:26|
 :skolemid |443|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@2) n_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_4@@3 next))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (select g0@@8 (invRecv50 o_9)) (and (< NoPerm FullPerm) (qpRange50 o_9))) (= (invRecv50 o_9) o_9))
 :qid |stdinbpl.4071:26|
 :skolemid |444|
 :pattern ( (invRecv50 o_9))
))) (and (and (=> (= (ControlFlow 0 144) 139) anon114_Else_correct) (=> (= (ControlFlow 0 144) 141) anon115_Then_correct)) (=> (= (ControlFlow 0 144) 143) anon115_Else_correct)))))))))))
(let ((anon40_correct true))
(let ((anon118_Else_correct  (=> (and (not (and (select g1@@8 n$0_4) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_4 next) null)))) (= (ControlFlow 0 133) 130)) anon40_correct)))
(let ((anon118_Then_correct  (=> (and (select g1@@8 n$0_4) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_4 next) null))) (and (=> (= (ControlFlow 0 131) (- 0 132)) (select g1@@8 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_4 next))) (=> (select g1@@8 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_4 next)) (=> (= (ControlFlow 0 131) 130) anon40_correct))))))
(let ((anon117_Else_correct true))
(let ((anon116_Then_correct  (and (=> (= (ControlFlow 0 134) (- 0 137)) (not (select g1@@8 null))) (=> (not (select g1@@8 null)) (and (=> (= (ControlFlow 0 134) (- 0 136)) (forall ((n_5 T@Ref) (n_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5 n_5_1)) (select g1@@8 n_5)) (select g1@@8 n_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_5 n_5_1)))
 :qid |stdinbpl.4111:21|
 :skolemid |446|
 :pattern ( (neverTriggered51 n_5) (neverTriggered51 n_5_1))
))) (=> (forall ((n_5@@0 T@Ref) (n_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@0 n_5_1@@0)) (select g1@@8 n_5@@0)) (select g1@@8 n_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_5@@0 n_5_1@@0)))
 :qid |stdinbpl.4111:21|
 :skolemid |446|
 :pattern ( (neverTriggered51 n_5@@0) (neverTriggered51 n_5_1@@0))
)) (and (=> (= (ControlFlow 0 134) (- 0 135)) (forall ((n_5@@1 T@Ref) ) (!  (=> (select g1@@8 n_5@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) n_5@@1 next) NoPerm)))
 :qid |stdinbpl.4118:21|
 :skolemid |447|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@3) n_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_5@@1 next))
))) (=> (forall ((n_5@@2 T@Ref) ) (!  (=> (select g1@@8 n_5@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) n_5@@2 next) NoPerm)))
 :qid |stdinbpl.4118:21|
 :skolemid |447|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_5@@2 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@3) n_5@@2 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_5@@2 next))
)) (=> (and (forall ((n_5@@3 T@Ref) ) (!  (=> (and (select g1@@8 n_5@@3) (< NoPerm FullPerm)) (and (qpRange51 n_5@@3) (= (invRecv51 n_5@@3) n_5@@3)))
 :qid |stdinbpl.4124:26|
 :skolemid |448|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@3) n_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_5@@3 next))
)) (forall ((o_9@@0 T@Ref) ) (!  (=> (and (select g1@@8 (invRecv51 o_9@@0)) (and (< NoPerm FullPerm) (qpRange51 o_9@@0))) (= (invRecv51 o_9@@0) o_9@@0))
 :qid |stdinbpl.4128:26|
 :skolemid |449|
 :pattern ( (invRecv51 o_9@@0))
))) (and (and (=> (= (ControlFlow 0 134) 129) anon117_Else_correct) (=> (= (ControlFlow 0 134) 131) anon118_Then_correct)) (=> (= (ControlFlow 0 134) 133) anon118_Else_correct)))))))))))
(let ((anon55_correct true))
(let ((anon126_Else_correct  (=> (and (not (and (select (|Set#Union_29737| g0@@8 g1@@8) n$1_2) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$1_2 next) null)))) (= (ControlFlow 0 119) 116)) anon55_correct)))
(let ((anon126_Then_correct  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) n$1_2) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$1_2 next) null))) (and (=> (= (ControlFlow 0 117) (- 0 118)) (select (|Set#Union_29737| g0@@8 g1@@8) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$1_2 next))) (=> (select (|Set#Union_29737| g0@@8 g1@@8) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$1_2 next)) (=> (= (ControlFlow 0 117) 116) anon55_correct))))))
(let ((anon125_Else_correct  (=> (and (forall ((n$1_3_1_1 T@Ref) ) (!  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) n$1_3_1_1) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$1_3_1_1 next) null))) (select (|Set#Union_29737| g0@@8 g1@@8) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$1_3_1_1 next)))
 :qid |stdinbpl.4265:24|
 :skolemid |462|
 :pattern ( (select (|Set#Union_29737| g0@@8 g1@@8) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$1_3_1_1 next)))
 :pattern ( (select (|Set#Union_29737| g0@@8 g1@@8) n$1_3_1_1) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$1_3_1_1 next))
)) (= (ControlFlow 0 115) (- 0 114))) (|Set#Subset_29491| (|Set#UnionOne_30254| (|Set#Singleton_30254| x1) x0) (|Set#Union_29737| g0@@8 g1@@8)))))
(let ((anon124_Then_correct  (and (=> (= (ControlFlow 0 120) (- 0 123)) (not (select (|Set#Union_29737| g0@@8 g1@@8) null))) (=> (not (select (|Set#Union_29737| g0@@8 g1@@8) null)) (and (=> (= (ControlFlow 0 120) (- 0 122)) (forall ((n$0_6 T@Ref) (n$0_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_6 n$0_6_1)) (select (|Set#Union_29737| g0@@8 g1@@8) n$0_6)) (select (|Set#Union_29737| g0@@8 g1@@8) n$0_6_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_6 n$0_6_1)))
 :qid |stdinbpl.4237:21|
 :skolemid |458|
 :pattern ( (neverTriggered53 n$0_6) (neverTriggered53 n$0_6_1))
))) (=> (forall ((n$0_6@@0 T@Ref) (n$0_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_6@@0 n$0_6_1@@0)) (select (|Set#Union_29737| g0@@8 g1@@8) n$0_6@@0)) (select (|Set#Union_29737| g0@@8 g1@@8) n$0_6_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_6@@0 n$0_6_1@@0)))
 :qid |stdinbpl.4237:21|
 :skolemid |458|
 :pattern ( (neverTriggered53 n$0_6@@0) (neverTriggered53 n$0_6_1@@0))
)) (and (=> (= (ControlFlow 0 120) (- 0 121)) (forall ((n$0_6@@1 T@Ref) ) (!  (=> (select (|Set#Union_29737| g0@@8 g1@@8) n$0_6@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@10) n$0_6@@1 next) NoPerm)))
 :qid |stdinbpl.4244:21|
 :skolemid |459|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$0_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@11) n$0_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$0_6@@1 next))
))) (=> (forall ((n$0_6@@2 T@Ref) ) (!  (=> (select (|Set#Union_29737| g0@@8 g1@@8) n$0_6@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@10) n$0_6@@2 next) NoPerm)))
 :qid |stdinbpl.4244:21|
 :skolemid |459|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$0_6@@2 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@11) n$0_6@@2 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$0_6@@2 next))
)) (=> (and (forall ((n$0_6@@3 T@Ref) ) (!  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) n$0_6@@3) (< NoPerm FullPerm)) (and (qpRange53 n$0_6@@3) (= (invRecv53 n$0_6@@3) n$0_6@@3)))
 :qid |stdinbpl.4250:26|
 :skolemid |460|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$0_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@11) n$0_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$0_6@@3 next))
)) (forall ((o_9@@1 T@Ref) ) (!  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) (invRecv53 o_9@@1)) (and (< NoPerm FullPerm) (qpRange53 o_9@@1))) (= (invRecv53 o_9@@1) o_9@@1))
 :qid |stdinbpl.4254:26|
 :skolemid |461|
 :pattern ( (invRecv53 o_9@@1))
))) (and (and (=> (= (ControlFlow 0 120) 115) anon125_Else_correct) (=> (= (ControlFlow 0 120) 117) anon126_Then_correct)) (=> (= (ControlFlow 0 120) 119) anon126_Else_correct)))))))))))
(let ((anon61_correct true))
(let ((anon129_Else_correct  (=> (and (not (and (select (|Set#Union_29737| g0@@8 g1@@8) n$0_7) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$0_7 next) null)))) (= (ControlFlow 0 108) 105)) anon61_correct)))
(let ((anon129_Then_correct  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) n$0_7) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$0_7 next) null))) (and (=> (= (ControlFlow 0 106) (- 0 107)) (select (|Set#Union_29737| g0@@8 g1@@8) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$0_7 next))) (=> (select (|Set#Union_29737| g0@@8 g1@@8) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$0_7 next)) (=> (= (ControlFlow 0 106) 105) anon61_correct))))))
(let ((anon128_Else_correct true))
(let ((anon127_Then_correct  (and (=> (= (ControlFlow 0 109) (- 0 112)) (not (select (|Set#Union_29737| g0@@8 g1@@8) null))) (=> (not (select (|Set#Union_29737| g0@@8 g1@@8) null)) (and (=> (= (ControlFlow 0 109) (- 0 111)) (forall ((n_6 T@Ref) (n_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6 n_6_1)) (select (|Set#Union_29737| g0@@8 g1@@8) n_6)) (select (|Set#Union_29737| g0@@8 g1@@8) n_6_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_6 n_6_1)))
 :qid |stdinbpl.4296:21|
 :skolemid |463|
 :pattern ( (neverTriggered54 n_6) (neverTriggered54 n_6_1))
))) (=> (forall ((n_6@@0 T@Ref) (n_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@0 n_6_1@@0)) (select (|Set#Union_29737| g0@@8 g1@@8) n_6@@0)) (select (|Set#Union_29737| g0@@8 g1@@8) n_6_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_6@@0 n_6_1@@0)))
 :qid |stdinbpl.4296:21|
 :skolemid |463|
 :pattern ( (neverTriggered54 n_6@@0) (neverTriggered54 n_6_1@@0))
)) (and (=> (= (ControlFlow 0 109) (- 0 110)) (forall ((n_6@@1 T@Ref) ) (!  (=> (select (|Set#Union_29737| g0@@8 g1@@8) n_6@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@10) n_6@@1 next) NoPerm)))
 :qid |stdinbpl.4303:21|
 :skolemid |464|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@12) n_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n_6@@1 next))
))) (=> (forall ((n_6@@2 T@Ref) ) (!  (=> (select (|Set#Union_29737| g0@@8 g1@@8) n_6@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@10) n_6@@2 next) NoPerm)))
 :qid |stdinbpl.4303:21|
 :skolemid |464|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n_6@@2 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@12) n_6@@2 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n_6@@2 next))
)) (=> (and (forall ((n_6@@3 T@Ref) ) (!  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) n_6@@3) (< NoPerm FullPerm)) (and (qpRange54 n_6@@3) (= (invRecv54 n_6@@3) n_6@@3)))
 :qid |stdinbpl.4309:26|
 :skolemid |465|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@12) n_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n_6@@3 next))
)) (forall ((o_9@@2 T@Ref) ) (!  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) (invRecv54 o_9@@2)) (and (< NoPerm FullPerm) (qpRange54 o_9@@2))) (= (invRecv54 o_9@@2) o_9@@2))
 :qid |stdinbpl.4313:26|
 :skolemid |466|
 :pattern ( (invRecv54 o_9@@2))
))) (and (and (=> (= (ControlFlow 0 109) 104) anon128_Else_correct) (=> (= (ControlFlow 0 109) 106) anon129_Then_correct)) (=> (= (ControlFlow 0 109) 108) anon129_Else_correct)))))))))))
(let ((anon131_Else_correct true))
(let ((anon131_Then_correct true))
(let ((anon130_Else_correct  (=> (forall ((r$1_1 T@Ref) ) (!  (=> (select g0@@8 r$1_1) (not (select g1@@8 r$1_1)))
 :qid |stdinbpl.4342:20|
 :skolemid |468|
 :pattern ( (select g0@@8 r$1_1) (select g1@@8 r$1_1))
)) (and (=> (= (ControlFlow 0 102) 100) anon131_Then_correct) (=> (= (ControlFlow 0 102) 101) anon131_Else_correct)))))
(let ((anon130_Then_correct true))
(let ((anon127_Else_correct  (=> (and (acyclic_list_segment PostHeap@0 (|Set#Union_29737| g0@@8 g1@@8)) (state PostHeap@0 QPMask@10)) (and (=> (= (ControlFlow 0 103) 99) anon130_Then_correct) (=> (= (ControlFlow 0 103) 102) anon130_Else_correct)))))
(let ((anon124_Else_correct  (=> (is_global_sroot PostHeap@0 (|Set#Union_29737| g0@@8 g1@@8) (|Set#UnionOne_30254| (|Set#Singleton_30254| x1) x0)) (=> (and (state PostHeap@0 QPMask@10) (state PostHeap@0 QPMask@10)) (and (=> (= (ControlFlow 0 113) 109) anon127_Then_correct) (=> (= (ControlFlow 0 113) 103) anon127_Else_correct))))))
(let ((anon121_Else_correct  (=> (forall ((n$6_1 T@Ref) ) (!  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) n$6_1) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$6_1 next) null))) (select (|Set#Union_29737| g0@@8 g1@@8) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$6_1 next)))
 :qid |stdinbpl.4216:20|
 :skolemid |457|
 :pattern ( (select (|Set#Union_29737| g0@@8 g1@@8) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$6_1 next)))
 :pattern ( (select (|Set#Union_29737| g0@@8 g1@@8) n$6_1) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$6_1 next))
)) (=> (and (state PostHeap@0 QPMask@10) (state PostHeap@0 QPMask@10)) (and (=> (= (ControlFlow 0 124) 120) anon124_Then_correct) (=> (= (ControlFlow 0 124) 113) anon124_Else_correct))))))
(let ((anon50_correct true))
(let ((anon123_Else_correct  (=> (and (not (and (select (|Set#Union_29737| g0@@8 g1@@8) n$6) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$6 next) null)))) (= (ControlFlow 0 95) 92)) anon50_correct)))
(let ((anon123_Then_correct  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) n$6) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$6 next) null))) (and (=> (= (ControlFlow 0 93) (- 0 94)) (HasDirectPerm_29364_29365 QPMask@10 n$6 next)) (=> (HasDirectPerm_29364_29365 QPMask@10 n$6 next) (=> (= (ControlFlow 0 93) 92) anon50_correct))))))
(let ((anon122_Else_correct  (=> (not (select (|Set#Union_29737| g0@@8 g1@@8) n$6)) (and (=> (= (ControlFlow 0 98) 93) anon123_Then_correct) (=> (= (ControlFlow 0 98) 95) anon123_Else_correct)))))
(let ((anon122_Then_correct  (=> (select (|Set#Union_29737| g0@@8 g1@@8) n$6) (and (=> (= (ControlFlow 0 96) (- 0 97)) (HasDirectPerm_29364_29365 QPMask@10 n$6 next)) (=> (HasDirectPerm_29364_29365 QPMask@10 n$6 next) (and (=> (= (ControlFlow 0 96) 93) anon123_Then_correct) (=> (= (ControlFlow 0 96) 95) anon123_Else_correct)))))))
(let ((anon120_Else_correct  (and (=> (= (ControlFlow 0 125) (- 0 126)) (forall ((n$5_1 T@Ref) (n$5_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_1 n$5_1_1)) (select (|Set#Union_29737| g0@@8 g1@@8) n$5_1)) (select (|Set#Union_29737| g0@@8 g1@@8) n$5_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_1 n$5_1_1)))
 :qid |stdinbpl.4171:15|
 :skolemid |451|
))) (=> (forall ((n$5_1@@0 T@Ref) (n$5_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_1@@0 n$5_1_1@@0)) (select (|Set#Union_29737| g0@@8 g1@@8) n$5_1@@0)) (select (|Set#Union_29737| g0@@8 g1@@8) n$5_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_1@@0 n$5_1_1@@0)))
 :qid |stdinbpl.4171:15|
 :skolemid |451|
)) (=> (and (and (forall ((n$5_1@@1 T@Ref) ) (!  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) n$5_1@@1) (< NoPerm FullPerm)) (and (qpRange52 n$5_1@@1) (= (invRecv52 n$5_1@@1) n$5_1@@1)))
 :qid |stdinbpl.4177:22|
 :skolemid |452|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$5_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@10) n$5_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$5_1@@1 next))
)) (forall ((o_9@@3 T@Ref) ) (!  (=> (and (and (select (|Set#Union_29737| g0@@8 g1@@8) (invRecv52 o_9@@3)) (< NoPerm FullPerm)) (qpRange52 o_9@@3)) (= (invRecv52 o_9@@3) o_9@@3))
 :qid |stdinbpl.4181:22|
 :skolemid |453|
 :pattern ( (invRecv52 o_9@@3))
))) (and (forall ((n$5_1@@2 T@Ref) ) (!  (=> (select (|Set#Union_29737| g0@@8 g1@@8) n$5_1@@2) (not (= n$5_1@@2 null)))
 :qid |stdinbpl.4187:22|
 :skolemid |454|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$5_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@10) n$5_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| PostHeap@0) n$5_1@@2 next))
)) (forall ((o_9@@4 T@Ref) ) (!  (and (=> (and (and (select (|Set#Union_29737| g0@@8 g1@@8) (invRecv52 o_9@@4)) (< NoPerm FullPerm)) (qpRange52 o_9@@4)) (and (=> (< NoPerm FullPerm) (= (invRecv52 o_9@@4) o_9@@4)) (= (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@10) o_9@@4 next) (+ (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| ZeroMask) o_9@@4 next) FullPerm)))) (=> (not (and (and (select (|Set#Union_29737| g0@@8 g1@@8) (invRecv52 o_9@@4)) (< NoPerm FullPerm)) (qpRange52 o_9@@4))) (= (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@10) o_9@@4 next) (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| ZeroMask) o_9@@4 next))))
 :qid |stdinbpl.4193:22|
 :skolemid |455|
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@10) o_9@@4 next))
)))) (=> (and (and (and (and (forall ((o_9@@5 T@Ref) (f_5 T@Field_46438_53) ) (!  (=> true (= (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| ZeroMask) o_9@@5 f_5) (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| QPMask@10) o_9@@5 f_5)))
 :qid |stdinbpl.4197:29|
 :skolemid |456|
 :pattern ( (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| ZeroMask) o_9@@5 f_5))
 :pattern ( (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| QPMask@10) o_9@@5 f_5))
)) (forall ((o_9@@6 T@Ref) (f_5@@0 T@Field_46451_46452) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| ZeroMask) o_9@@6 f_5@@0) (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@10) o_9@@6 f_5@@0)))
 :qid |stdinbpl.4197:29|
 :skolemid |456|
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| ZeroMask) o_9@@6 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@10) o_9@@6 f_5@@0))
))) (forall ((o_9@@7 T@Ref) (f_5@@1 T@Field_29364_147463) ) (!  (=> true (= (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| ZeroMask) o_9@@7 f_5@@1) (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| QPMask@10) o_9@@7 f_5@@1)))
 :qid |stdinbpl.4197:29|
 :skolemid |456|
 :pattern ( (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| ZeroMask) o_9@@7 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| QPMask@10) o_9@@7 f_5@@1))
))) (forall ((o_9@@8 T@Ref) (f_5@@2 T@Field_29364_147596) ) (!  (=> true (= (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| ZeroMask) o_9@@8 f_5@@2) (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| QPMask@10) o_9@@8 f_5@@2)))
 :qid |stdinbpl.4197:29|
 :skolemid |456|
 :pattern ( (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| ZeroMask) o_9@@8 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| QPMask@10) o_9@@8 f_5@@2))
))) (state PostHeap@0 QPMask@10)) (and (and (=> (= (ControlFlow 0 125) 124) anon121_Else_correct) (=> (= (ControlFlow 0 125) 96) anon122_Then_correct)) (=> (= (ControlFlow 0 125) 98) anon122_Else_correct))))))))
(let ((anon120_Then_correct true))
(let ((anon119_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (not (select (|Set#Union_29737| g0@@8 g1@@8) null))) (and (=> (= (ControlFlow 0 127) 91) anon120_Then_correct) (=> (= (ControlFlow 0 127) 125) anon120_Else_correct)))))
(let ((anon76_correct true))
(let ((anon136_Else_correct  (=> (and (not (and (select g1@@8 n$2_2) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$2_2 next) null)))) (= (ControlFlow 0 81) 78)) anon76_correct)))
(let ((anon136_Then_correct  (=> (and (select g1@@8 n$2_2) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$2_2 next) null))) (and (=> (= (ControlFlow 0 79) (- 0 80)) (select g1@@8 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$2_2 next))) (=> (select g1@@8 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$2_2 next)) (=> (= (ControlFlow 0 79) 78) anon76_correct))))))
(let ((anon135_Else_correct  (=> (and (forall ((n$2_3_1 T@Ref) ) (!  (=> (and (select g1@@8 n$2_3_1) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$2_3_1 next) null))) (select g1@@8 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$2_3_1 next)))
 :qid |stdinbpl.4446:24|
 :skolemid |479|
 :pattern ( (select g1@@8 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$2_3_1 next)))
 :pattern ( (select g1@@8 n$2_3_1) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$2_3_1 next))
)) (= (ControlFlow 0 77) (- 0 76))) (|Set#Equal_29344| (|Set#Intersection_29344| g1@@8 g0@@8) |Set#Empty_29350|))))
(let ((anon133_Else_correct  (=> (forall ((n$0_10_1_1 T@Ref) ) (!  (=> (and (select g0@@8 n$0_10_1_1) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_10_1_1 next) null))) (select g0@@8 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_10_1_1 next)))
 :qid |stdinbpl.4405:24|
 :skolemid |474|
 :pattern ( (select g0@@8 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_10_1_1 next)))
 :pattern ( (select g0@@8 n$0_10_1_1) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_10_1_1 next))
)) (and (=> (= (ControlFlow 0 82) (- 0 85)) (not (select g1@@8 null))) (=> (not (select g1@@8 null)) (and (=> (= (ControlFlow 0 82) (- 0 84)) (forall ((n$1_4 T@Ref) (n$1_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_4 n$1_4_1)) (select g1@@8 n$1_4)) (select g1@@8 n$1_4_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_4 n$1_4_1)))
 :qid |stdinbpl.4418:21|
 :skolemid |475|
 :pattern ( (neverTriggered57 n$1_4) (neverTriggered57 n$1_4_1))
))) (=> (forall ((n$1_4@@0 T@Ref) (n$1_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_4@@0 n$1_4_1@@0)) (select g1@@8 n$1_4@@0)) (select g1@@8 n$1_4_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_4@@0 n$1_4_1@@0)))
 :qid |stdinbpl.4418:21|
 :skolemid |475|
 :pattern ( (neverTriggered57 n$1_4@@0) (neverTriggered57 n$1_4_1@@0))
)) (and (=> (= (ControlFlow 0 82) (- 0 83)) (forall ((n$1_4@@1 T@Ref) ) (!  (=> (select g1@@8 n$1_4@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) n$1_4@@1 next) NoPerm)))
 :qid |stdinbpl.4425:21|
 :skolemid |476|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$1_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@9) n$1_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$1_4@@1 next))
))) (=> (forall ((n$1_4@@2 T@Ref) ) (!  (=> (select g1@@8 n$1_4@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) n$1_4@@2 next) NoPerm)))
 :qid |stdinbpl.4425:21|
 :skolemid |476|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$1_4@@2 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@9) n$1_4@@2 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$1_4@@2 next))
)) (=> (and (forall ((n$1_4@@3 T@Ref) ) (!  (=> (and (select g1@@8 n$1_4@@3) (< NoPerm FullPerm)) (and (qpRange57 n$1_4@@3) (= (invRecv57 n$1_4@@3) n$1_4@@3)))
 :qid |stdinbpl.4431:26|
 :skolemid |477|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$1_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@9) n$1_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$1_4@@3 next))
)) (forall ((o_9@@9 T@Ref) ) (!  (=> (and (select g1@@8 (invRecv57 o_9@@9)) (and (< NoPerm FullPerm) (qpRange57 o_9@@9))) (= (invRecv57 o_9@@9) o_9@@9))
 :qid |stdinbpl.4435:26|
 :skolemid |478|
 :pattern ( (invRecv57 o_9@@9))
))) (and (and (=> (= (ControlFlow 0 82) 77) anon135_Else_correct) (=> (= (ControlFlow 0 82) 79) anon136_Then_correct)) (=> (= (ControlFlow 0 82) 81) anon136_Else_correct))))))))))))
(let ((anon72_correct true))
(let ((anon134_Else_correct  (=> (and (not (and (select g0@@8 n$0_9) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_9 next) null)))) (= (ControlFlow 0 75) 72)) anon72_correct)))
(let ((anon134_Then_correct  (=> (and (select g0@@8 n$0_9) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_9 next) null))) (and (=> (= (ControlFlow 0 73) (- 0 74)) (select g0@@8 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_9 next))) (=> (select g0@@8 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_9 next)) (=> (= (ControlFlow 0 73) 72) anon72_correct))))))
(let ((anon132_Then_correct  (and (=> (= (ControlFlow 0 86) (- 0 89)) (not (select g0@@8 null))) (=> (not (select g0@@8 null)) (and (=> (= (ControlFlow 0 86) (- 0 88)) (forall ((n_7 T@Ref) (n_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7 n_7_1)) (select g0@@8 n_7)) (select g0@@8 n_7_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_7 n_7_1)))
 :qid |stdinbpl.4377:21|
 :skolemid |470|
 :pattern ( (neverTriggered56 n_7) (neverTriggered56 n_7_1))
))) (=> (forall ((n_7@@0 T@Ref) (n_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@0 n_7_1@@0)) (select g0@@8 n_7@@0)) (select g0@@8 n_7_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_7@@0 n_7_1@@0)))
 :qid |stdinbpl.4377:21|
 :skolemid |470|
 :pattern ( (neverTriggered56 n_7@@0) (neverTriggered56 n_7_1@@0))
)) (and (=> (= (ControlFlow 0 86) (- 0 87)) (forall ((n_7@@1 T@Ref) ) (!  (=> (select g0@@8 n_7@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) n_7@@1 next) NoPerm)))
 :qid |stdinbpl.4384:21|
 :skolemid |471|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@4) n_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_7@@1 next))
))) (=> (forall ((n_7@@2 T@Ref) ) (!  (=> (select g0@@8 n_7@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) n_7@@2 next) NoPerm)))
 :qid |stdinbpl.4384:21|
 :skolemid |471|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_7@@2 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@4) n_7@@2 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_7@@2 next))
)) (=> (and (forall ((n_7@@3 T@Ref) ) (!  (=> (and (select g0@@8 n_7@@3) (< NoPerm FullPerm)) (and (qpRange56 n_7@@3) (= (invRecv56 n_7@@3) n_7@@3)))
 :qid |stdinbpl.4390:26|
 :skolemid |472|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@4) n_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_7@@3 next))
)) (forall ((o_9@@10 T@Ref) ) (!  (=> (and (select g0@@8 (invRecv56 o_9@@10)) (and (< NoPerm FullPerm) (qpRange56 o_9@@10))) (= (invRecv56 o_9@@10) o_9@@10))
 :qid |stdinbpl.4394:26|
 :skolemid |473|
 :pattern ( (invRecv56 o_9@@10))
))) (and (and (=> (= (ControlFlow 0 86) 82) anon133_Else_correct) (=> (= (ControlFlow 0 86) 73) anon134_Then_correct)) (=> (= (ControlFlow 0 86) 75) anon134_Else_correct)))))))))))
(let ((anon95_correct true))
(let ((anon145_Else_correct  (=> (and (not (select g1@@8 r$2_2)) (= (ControlFlow 0 57) 54)) anon95_correct)))
(let ((anon145_Then_correct  (=> (select g1@@8 r$2_2) (and (=> (= (ControlFlow 0 55) (- 0 56)) (not (select g0@@8 r$2_2))) (=> (not (select g0@@8 r$2_2)) (=> (= (ControlFlow 0 55) 54) anon95_correct))))))
(let ((anon144_Else_correct true))
(let ((anon142_Else_correct  (=> (forall ((r$1_3_1 T@Ref) ) (!  (=> (select g0@@8 r$1_3_1) (not (select g1@@8 r$1_3_1)))
 :qid |stdinbpl.4687:20|
 :skolemid |502|
 :pattern ( (select g0@@8 r$1_3_1) (select g1@@8 r$1_3_1))
)) (and (and (=> (= (ControlFlow 0 58) 53) anon144_Else_correct) (=> (= (ControlFlow 0 58) 55) anon145_Then_correct)) (=> (= (ControlFlow 0 58) 57) anon145_Else_correct)))))
(let ((anon91_correct true))
(let ((anon143_Else_correct  (=> (and (not (select g0@@8 r$1_2)) (= (ControlFlow 0 52) 49)) anon91_correct)))
(let ((anon143_Then_correct  (=> (select g0@@8 r$1_2) (and (=> (= (ControlFlow 0 50) (- 0 51)) (not (select g1@@8 r$1_2))) (=> (not (select g1@@8 r$1_2)) (=> (= (ControlFlow 0 50) 49) anon91_correct))))))
(let ((anon140_Else_correct  (=> (forall ((n$6_3_1 T@Ref) ) (!  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) n$6_3_1) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$6_3_1 next) null))) (select (|Set#Union_29737| g0@@8 g1@@8) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$6_3_1 next)))
 :qid |stdinbpl.4672:20|
 :skolemid |501|
 :pattern ( (select (|Set#Union_29737| g0@@8 g1@@8) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$6_3_1 next)))
 :pattern ( (select (|Set#Union_29737| g0@@8 g1@@8) n$6_3_1) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$6_3_1 next))
)) (and (=> (= (ControlFlow 0 59) (- 0 61)) (is_global_sroot Heap@@33 (|Set#Union_29737| g0@@8 g1@@8) (|Set#UnionOne_30254| (|Set#Singleton_30254| x1) x0))) (=> (is_global_sroot Heap@@33 (|Set#Union_29737| g0@@8 g1@@8) (|Set#UnionOne_30254| (|Set#Singleton_30254| x1) x0)) (and (=> (= (ControlFlow 0 59) (- 0 60)) (acyclic_list_segment Heap@@33 (|Set#Union_29737| g0@@8 g1@@8))) (=> (acyclic_list_segment Heap@@33 (|Set#Union_29737| g0@@8 g1@@8)) (and (and (=> (= (ControlFlow 0 59) 58) anon142_Else_correct) (=> (= (ControlFlow 0 59) 50) anon143_Then_correct)) (=> (= (ControlFlow 0 59) 52) anon143_Else_correct)))))))))
(let ((anon87_correct true))
(let ((anon141_Else_correct  (=> (and (not (and (select (|Set#Union_29737| g0@@8 g1@@8) n$6_2) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$6_2 next) null)))) (= (ControlFlow 0 48) 45)) anon87_correct)))
(let ((anon141_Then_correct  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) n$6_2) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$6_2 next) null))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (select (|Set#Union_29737| g0@@8 g1@@8) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$6_2 next))) (=> (select (|Set#Union_29737| g0@@8 g1@@8) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$6_2 next)) (=> (= (ControlFlow 0 46) 45) anon87_correct))))))
(let ((anon139_Else_correct  (and (=> (= (ControlFlow 0 62) (- 0 66)) (unshared_graph ($$ Heap@@33 (|Set#Union_29737| g0@@8 g1@@8)))) (=> (unshared_graph ($$ Heap@@33 (|Set#Union_29737| g0@@8 g1@@8))) (=> (state Heap@@33 QPMask@1) (and (=> (= (ControlFlow 0 62) (- 0 65)) (not (select (|Set#Union_29737| g0@@8 g1@@8) null))) (=> (not (select (|Set#Union_29737| g0@@8 g1@@8) null)) (and (=> (= (ControlFlow 0 62) (- 0 64)) (forall ((n$5_2 T@Ref) (n$5_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_2 n$5_2_1)) (select (|Set#Union_29737| g0@@8 g1@@8) n$5_2)) (select (|Set#Union_29737| g0@@8 g1@@8) n$5_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_2 n$5_2_1)))
 :qid |stdinbpl.4631:17|
 :skolemid |495|
 :pattern ( (neverTriggered55 n$5_2) (neverTriggered55 n$5_2_1))
))) (=> (forall ((n$5_2@@0 T@Ref) (n$5_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_2@@0 n$5_2_1@@0)) (select (|Set#Union_29737| g0@@8 g1@@8) n$5_2@@0)) (select (|Set#Union_29737| g0@@8 g1@@8) n$5_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_2@@0 n$5_2_1@@0)))
 :qid |stdinbpl.4631:17|
 :skolemid |495|
 :pattern ( (neverTriggered55 n$5_2@@0) (neverTriggered55 n$5_2_1@@0))
)) (and (=> (= (ControlFlow 0 62) (- 0 63)) (forall ((n$5_2@@1 T@Ref) ) (!  (=> (select (|Set#Union_29737| g0@@8 g1@@8) n$5_2@@1) (>= (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) n$5_2@@1 next) FullPerm))
 :qid |stdinbpl.4638:17|
 :skolemid |496|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$5_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@8) n$5_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$5_2@@1 next))
))) (=> (forall ((n$5_2@@2 T@Ref) ) (!  (=> (select (|Set#Union_29737| g0@@8 g1@@8) n$5_2@@2) (>= (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) n$5_2@@2 next) FullPerm))
 :qid |stdinbpl.4638:17|
 :skolemid |496|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$5_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@8) n$5_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$5_2@@2 next))
)) (=> (forall ((n$5_2@@3 T@Ref) ) (!  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) n$5_2@@3) (< NoPerm FullPerm)) (and (qpRange55 n$5_2@@3) (= (invRecv55 n$5_2@@3) n$5_2@@3)))
 :qid |stdinbpl.4644:22|
 :skolemid |497|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$5_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@8) n$5_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$5_2@@3 next))
)) (=> (and (forall ((o_9@@11 T@Ref) ) (!  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) (invRecv55 o_9@@11)) (and (< NoPerm FullPerm) (qpRange55 o_9@@11))) (= (invRecv55 o_9@@11) o_9@@11))
 :qid |stdinbpl.4648:22|
 :skolemid |498|
 :pattern ( (invRecv55 o_9@@11))
)) (forall ((o_9@@12 T@Ref) ) (!  (and (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) (invRecv55 o_9@@12)) (and (< NoPerm FullPerm) (qpRange55 o_9@@12))) (and (= (invRecv55 o_9@@12) o_9@@12) (= (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@8) o_9@@12 next) (- (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) o_9@@12 next) FullPerm)))) (=> (not (and (select (|Set#Union_29737| g0@@8 g1@@8) (invRecv55 o_9@@12)) (and (< NoPerm FullPerm) (qpRange55 o_9@@12)))) (= (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@8) o_9@@12 next) (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) o_9@@12 next))))
 :qid |stdinbpl.4654:22|
 :skolemid |499|
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@8) o_9@@12 next))
))) (=> (and (and (and (forall ((o_9@@13 T@Ref) (f_5@@3 T@Field_46438_53) ) (!  (=> true (= (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| QPMask@1) o_9@@13 f_5@@3) (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| QPMask@8) o_9@@13 f_5@@3)))
 :qid |stdinbpl.4660:29|
 :skolemid |500|
 :pattern ( (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| QPMask@8) o_9@@13 f_5@@3))
)) (forall ((o_9@@14 T@Ref) (f_5@@4 T@Field_46451_46452) ) (!  (=> (not (= f_5@@4 next)) (= (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) o_9@@14 f_5@@4) (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@8) o_9@@14 f_5@@4)))
 :qid |stdinbpl.4660:29|
 :skolemid |500|
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@8) o_9@@14 f_5@@4))
))) (forall ((o_9@@15 T@Ref) (f_5@@5 T@Field_29364_147463) ) (!  (=> true (= (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| QPMask@1) o_9@@15 f_5@@5) (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| QPMask@8) o_9@@15 f_5@@5)))
 :qid |stdinbpl.4660:29|
 :skolemid |500|
 :pattern ( (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| QPMask@8) o_9@@15 f_5@@5))
))) (forall ((o_9@@16 T@Ref) (f_5@@6 T@Field_29364_147596) ) (!  (=> true (= (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| QPMask@1) o_9@@16 f_5@@6) (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| QPMask@8) o_9@@16 f_5@@6)))
 :qid |stdinbpl.4660:29|
 :skolemid |500|
 :pattern ( (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| QPMask@8) o_9@@16 f_5@@6))
))) (and (and (=> (= (ControlFlow 0 62) 59) anon140_Else_correct) (=> (= (ControlFlow 0 62) 46) anon141_Then_correct)) (=> (= (ControlFlow 0 62) 48) anon141_Else_correct))))))))))))))))
(let ((anon139_Then_correct  (and (=> (= (ControlFlow 0 42) (- 0 44)) (forall ((n_10_1 T@Ref) ) (!  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) n_10_1) (dummyFunction_29365 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_10_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4580:21|
 :skolemid |490|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_10_1 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@7) n_10_1 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_10_1 next))
))) (=> (forall ((n_10_1@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) n_10_1@@0) (dummyFunction_29365 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_10_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4580:21|
 :skolemid |490|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_10_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@7) n_10_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_10_1@@0 next))
)) (and (=> (= (ControlFlow 0 42) (- 0 43)) (forall ((n_10_1@@1 T@Ref) (n_10_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1@@1 n_10_2)) (select (|Set#Union_29737| g0@@8 g1@@8) n_10_1@@1)) (select (|Set#Union_29737| g0@@8 g1@@8) n_10_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_10_1@@1 n_10_2)))
 :qid |stdinbpl.4587:21|
 :skolemid |491|
 :pattern ( (neverTriggered60 n_10_1@@1) (neverTriggered60 n_10_2))
))) (=> (forall ((n_10_1@@2 T@Ref) (n_10_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1@@2 n_10_2@@0)) (select (|Set#Union_29737| g0@@8 g1@@8) n_10_1@@2)) (select (|Set#Union_29737| g0@@8 g1@@8) n_10_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_10_1@@2 n_10_2@@0)))
 :qid |stdinbpl.4587:21|
 :skolemid |491|
 :pattern ( (neverTriggered60 n_10_1@@2) (neverTriggered60 n_10_2@@0))
)) (=> (= (ControlFlow 0 42) (- 0 41)) (forall ((n_10_1@@3 T@Ref) ) (!  (=> (select (|Set#Union_29737| g0@@8 g1@@8) n_10_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) n_10_1@@3 next) NoPerm)))
 :qid |stdinbpl.4594:21|
 :skolemid |492|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_10_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@7) n_10_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_10_1@@3 next))
)))))))))
(let ((anon138_Else_correct  (and (=> (= (ControlFlow 0 67) (- 0 68)) (func_graph ($$ Heap@@33 (|Set#Union_29737| g0@@8 g1@@8)))) (=> (func_graph ($$ Heap@@33 (|Set#Union_29737| g0@@8 g1@@8))) (=> (state Heap@@33 QPMask@1) (and (=> (= (ControlFlow 0 67) 42) anon139_Then_correct) (=> (= (ControlFlow 0 67) 62) anon139_Else_correct)))))))
(let ((anon138_Then_correct  (and (=> (= (ControlFlow 0 38) (- 0 40)) (forall ((n_9 T@Ref) ) (!  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) n_9) (dummyFunction_29365 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_9 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4528:21|
 :skolemid |485|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_9 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@6) n_9 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_9 next))
))) (=> (forall ((n_9@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) n_9@@0) (dummyFunction_29365 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_9@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4528:21|
 :skolemid |485|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_9@@0 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@6) n_9@@0 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_9@@0 next))
)) (and (=> (= (ControlFlow 0 38) (- 0 39)) (forall ((n_9@@1 T@Ref) (n_9_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@1 n_9_1)) (select (|Set#Union_29737| g0@@8 g1@@8) n_9@@1)) (select (|Set#Union_29737| g0@@8 g1@@8) n_9_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_9@@1 n_9_1)))
 :qid |stdinbpl.4535:21|
 :skolemid |486|
 :pattern ( (neverTriggered59 n_9@@1) (neverTriggered59 n_9_1))
))) (=> (forall ((n_9@@2 T@Ref) (n_9_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@2 n_9_1@@0)) (select (|Set#Union_29737| g0@@8 g1@@8) n_9@@2)) (select (|Set#Union_29737| g0@@8 g1@@8) n_9_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_9@@2 n_9_1@@0)))
 :qid |stdinbpl.4535:21|
 :skolemid |486|
 :pattern ( (neverTriggered59 n_9@@2) (neverTriggered59 n_9_1@@0))
)) (=> (= (ControlFlow 0 38) (- 0 37)) (forall ((n_9@@3 T@Ref) ) (!  (=> (select (|Set#Union_29737| g0@@8 g1@@8) n_9@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) n_9@@3 next) NoPerm)))
 :qid |stdinbpl.4542:21|
 :skolemid |487|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_9@@3 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@6) n_9@@3 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_9@@3 next))
)))))))))
(let ((anon137_Else_correct  (and (=> (= (ControlFlow 0 69) (- 0 70)) (acyclic_graph ($$ Heap@@33 (|Set#Union_29737| g0@@8 g1@@8)))) (=> (acyclic_graph ($$ Heap@@33 (|Set#Union_29737| g0@@8 g1@@8))) (=> (state Heap@@33 QPMask@1) (and (=> (= (ControlFlow 0 69) 38) anon138_Then_correct) (=> (= (ControlFlow 0 69) 67) anon138_Else_correct)))))))
(let ((anon137_Then_correct  (and (=> (= (ControlFlow 0 34) (- 0 36)) (forall ((n_8 T@Ref) ) (!  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) n_8) (dummyFunction_29365 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_8 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4476:21|
 :skolemid |480|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_8 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@5) n_8 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_8 next))
))) (=> (forall ((n_8@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_29737| g0@@8 g1@@8) n_8@@0) (dummyFunction_29365 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_8@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4476:21|
 :skolemid |480|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_8@@0 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@5) n_8@@0 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_8@@0 next))
)) (and (=> (= (ControlFlow 0 34) (- 0 35)) (forall ((n_8@@1 T@Ref) (n_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@1 n_8_1)) (select (|Set#Union_29737| g0@@8 g1@@8) n_8@@1)) (select (|Set#Union_29737| g0@@8 g1@@8) n_8_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_8@@1 n_8_1)))
 :qid |stdinbpl.4483:21|
 :skolemid |481|
 :pattern ( (neverTriggered58 n_8@@1) (neverTriggered58 n_8_1))
))) (=> (forall ((n_8@@2 T@Ref) (n_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@2 n_8_1@@0)) (select (|Set#Union_29737| g0@@8 g1@@8) n_8@@2)) (select (|Set#Union_29737| g0@@8 g1@@8) n_8_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_8@@2 n_8_1@@0)))
 :qid |stdinbpl.4483:21|
 :skolemid |481|
 :pattern ( (neverTriggered58 n_8@@2) (neverTriggered58 n_8_1@@0))
)) (=> (= (ControlFlow 0 34) (- 0 33)) (forall ((n_8@@3 T@Ref) ) (!  (=> (select (|Set#Union_29737| g0@@8 g1@@8) n_8@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) n_8@@3 next) NoPerm)))
 :qid |stdinbpl.4490:21|
 :skolemid |482|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@5) n_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_8@@3 next))
)))))))))
(let ((anon132_Else_correct  (=> (apply_TCFraming Heap@@33 g0@@8 g1@@8) (=> (and (state Heap@@33 QPMask@1) (state Heap@@33 QPMask@1)) (and (=> (= (ControlFlow 0 71) 34) anon137_Then_correct) (=> (= (ControlFlow 0 71) 69) anon137_Else_correct))))))
(let ((anon119_Else_correct  (=> (state Heap@@33 QPMask@1) (and (=> (= (ControlFlow 0 90) 86) anon132_Then_correct) (=> (= (ControlFlow 0 90) 71) anon132_Else_correct)))))
(let ((anon116_Else_correct  (=> (and (acyclic_list_segment Heap@@33 g1@@8) (state Heap@@33 QPMask@1)) (and (=> (= (ControlFlow 0 128) 127) anon119_Then_correct) (=> (= (ControlFlow 0 128) 90) anon119_Else_correct)))))
(let ((anon113_Else_correct  (=> (acyclic_list_segment Heap@@33 g0@@8) (=> (and (state Heap@@33 QPMask@1) (state Heap@@33 QPMask@1)) (and (=> (= (ControlFlow 0 138) 134) anon116_Then_correct) (=> (= (ControlFlow 0 138) 128) anon116_Else_correct))))))
(let ((anon110_Else_correct  (=> (forall ((n$4_1 T@Ref) ) (!  (=> (select g1@@8 n$4_1) (exists_path ($$ Heap@@33 g1@@8) x1 n$4_1))
 :qid |stdinbpl.4033:20|
 :skolemid |440|
 :pattern ( (select g1@@8 n$4_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5743 (|$$#condqp1| Heap@@33 g1@@8)) g1@@8) x1 n$4_1))
)) (=> (and (state Heap@@33 QPMask@1) (state Heap@@33 QPMask@1)) (and (=> (= (ControlFlow 0 148) 144) anon113_Then_correct) (=> (= (ControlFlow 0 148) 138) anon113_Else_correct))))))
(let ((anon112_Then_correct  (and (=> (= (ControlFlow 0 29) (- 0 31)) (forall ((n_3 T@Ref) ) (!  (=> (and (select g1@@8 n_3) (dummyFunction_29365 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_3 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3995:25|
 :skolemid |435|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_3 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@13) n_3 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_3 next))
))) (=> (forall ((n_3@@0 T@Ref) ) (!  (=> (and (select g1@@8 n_3@@0) (dummyFunction_29365 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_3@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3995:25|
 :skolemid |435|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_3@@0 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@13) n_3@@0 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_3@@0 next))
)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (forall ((n_3@@1 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@1 n_3_1)) (select g1@@8 n_3@@1)) (select g1@@8 n_3_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_3@@1 n_3_1)))
 :qid |stdinbpl.4002:25|
 :skolemid |436|
 :pattern ( (neverTriggered49 n_3@@1) (neverTriggered49 n_3_1))
))) (=> (forall ((n_3@@2 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@2 n_3_1@@0)) (select g1@@8 n_3@@2)) (select g1@@8 n_3_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_3@@2 n_3_1@@0)))
 :qid |stdinbpl.4002:25|
 :skolemid |436|
 :pattern ( (neverTriggered49 n_3@@2) (neverTriggered49 n_3_1@@0))
)) (=> (= (ControlFlow 0 29) (- 0 28)) (forall ((n_3@@3 T@Ref) ) (!  (=> (select g1@@8 n_3@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) n_3@@3 next) NoPerm)))
 :qid |stdinbpl.4009:25|
 :skolemid |437|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@13) n_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_3@@3 next))
)))))))))
(let ((anon29_correct true))
(let ((anon111_Then_correct  (=> (select g1@@8 n$4_4) (and (=> (= (ControlFlow 0 32) 29) anon112_Then_correct) (=> (= (ControlFlow 0 32) 26) anon29_correct)))))
(let ((anon111_Else_correct  (=> (and (not (select g1@@8 n$4_4)) (= (ControlFlow 0 27) 26)) anon29_correct)))
(let ((anon107_Else_correct  (=> (forall ((n$3_1 T@Ref) ) (!  (=> (select g0@@8 n$3_1) (exists_path ($$ Heap@@33 g0@@8) x0 n$3_1))
 :qid |stdinbpl.3977:20|
 :skolemid |434|
 :pattern ( (select g0@@8 n$3_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_5743 (|$$#condqp1| Heap@@33 g0@@8)) g0@@8) x0 n$3_1))
)) (=> (and (state Heap@@33 QPMask@1) (state Heap@@33 QPMask@1)) (and (and (=> (= (ControlFlow 0 149) 148) anon110_Else_correct) (=> (= (ControlFlow 0 149) 32) anon111_Then_correct)) (=> (= (ControlFlow 0 149) 27) anon111_Else_correct))))))
(let ((anon109_Then_correct  (and (=> (= (ControlFlow 0 22) (- 0 24)) (forall ((n_2 T@Ref) ) (!  (=> (and (select g0@@8 n_2) (dummyFunction_29365 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_2 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3939:25|
 :skolemid |429|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_2 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@14) n_2 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_2 next))
))) (=> (forall ((n_2@@0 T@Ref) ) (!  (=> (and (select g0@@8 n_2@@0) (dummyFunction_29365 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_2@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3939:25|
 :skolemid |429|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@14) n_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_2@@0 next))
)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (forall ((n_2@@1 T@Ref) (n_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@1 n_2_1)) (select g0@@8 n_2@@1)) (select g0@@8 n_2_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_2@@1 n_2_1)))
 :qid |stdinbpl.3946:25|
 :skolemid |430|
 :pattern ( (neverTriggered48 n_2@@1) (neverTriggered48 n_2_1))
))) (=> (forall ((n_2@@2 T@Ref) (n_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@2 n_2_1@@0)) (select g0@@8 n_2@@2)) (select g0@@8 n_2_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_2@@2 n_2_1@@0)))
 :qid |stdinbpl.3946:25|
 :skolemid |430|
 :pattern ( (neverTriggered48 n_2@@2) (neverTriggered48 n_2_1@@0))
)) (=> (= (ControlFlow 0 22) (- 0 21)) (forall ((n_2@@3 T@Ref) ) (!  (=> (select g0@@8 n_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) n_2@@3 next) NoPerm)))
 :qid |stdinbpl.3953:25|
 :skolemid |431|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@14) n_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_2@@3 next))
)))))))))
(let ((anon24_correct true))
(let ((anon108_Then_correct  (=> (select g0@@8 n$3) (and (=> (= (ControlFlow 0 25) 22) anon109_Then_correct) (=> (= (ControlFlow 0 25) 19) anon24_correct)))))
(let ((anon108_Else_correct  (=> (and (not (select g0@@8 n$3)) (= (ControlFlow 0 20) 19)) anon24_correct)))
(let ((anon106_Else_correct  (=> (forall ((r$0_1 T@Ref) ) (!  (=> (select g1@@8 r$0_1) (not (select g0@@8 r$0_1)))
 :qid |stdinbpl.3921:20|
 :skolemid |428|
 :pattern ( (select g0@@8 r$0_1) (select g1@@8 r$0_1))
)) (=> (and (state Heap@@33 QPMask@1) (state Heap@@33 QPMask@1)) (and (and (=> (= (ControlFlow 0 150) 149) anon107_Else_correct) (=> (= (ControlFlow 0 150) 25) anon108_Then_correct)) (=> (= (ControlFlow 0 150) 20) anon108_Else_correct))))))
(let ((anon106_Then_correct true))
(let ((anon105_Else_correct  (=> (forall ((r_1_1 T@Ref) ) (!  (=> (select g0@@8 r_1_1) (not (select g1@@8 r_1_1)))
 :qid |stdinbpl.3912:20|
 :skolemid |427|
 :pattern ( (select g0@@8 r_1_1) (select g1@@8 r_1_1))
)) (and (=> (= (ControlFlow 0 151) 18) anon106_Then_correct) (=> (= (ControlFlow 0 151) 150) anon106_Else_correct)))))
(let ((anon105_Then_correct true))
(let ((anon102_Else_correct  (=> (and (forall ((n$2_1 T@Ref) ) (!  (=> (and (select g1@@8 n$2_1) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$2_1 next) null))) (select g1@@8 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$2_1 next)))
 :qid |stdinbpl.3898:20|
 :skolemid |426|
 :pattern ( (select g1@@8 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$2_1 next)))
 :pattern ( (select g1@@8 n$2_1) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$2_1 next))
)) (state Heap@@33 QPMask@1)) (=> (and (and (select g0@@8 x0) (state Heap@@33 QPMask@1)) (and (select g1@@8 x1) (state Heap@@33 QPMask@1))) (and (=> (= (ControlFlow 0 152) 17) anon105_Then_correct) (=> (= (ControlFlow 0 152) 151) anon105_Else_correct))))))
(let ((anon15_correct true))
(let ((anon104_Else_correct  (=> (and (not (and (select g1@@8 n$2_14) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$2_14 next) null)))) (= (ControlFlow 0 13) 10)) anon15_correct)))
(let ((anon104_Then_correct  (=> (and (select g1@@8 n$2_14) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$2_14 next) null))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_29364_29365 QPMask@1 n$2_14 next)) (=> (HasDirectPerm_29364_29365 QPMask@1 n$2_14 next) (=> (= (ControlFlow 0 11) 10) anon15_correct))))))
(let ((anon103_Else_correct  (=> (not (select g1@@8 n$2_14)) (and (=> (= (ControlFlow 0 16) 11) anon104_Then_correct) (=> (= (ControlFlow 0 16) 13) anon104_Else_correct)))))
(let ((anon103_Then_correct  (=> (select g1@@8 n$2_14) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_29364_29365 QPMask@1 n$2_14 next)) (=> (HasDirectPerm_29364_29365 QPMask@1 n$2_14 next) (and (=> (= (ControlFlow 0 14) 11) anon104_Then_correct) (=> (= (ControlFlow 0 14) 13) anon104_Else_correct)))))))
(let ((anon101_Else_correct  (and (=> (= (ControlFlow 0 153) (- 0 154)) (forall ((n$1_1 T@Ref) (n$1_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1 n$1_1_1)) (select g1@@8 n$1_1)) (select g1@@8 n$1_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_1 n$1_1_1)))
 :qid |stdinbpl.3853:15|
 :skolemid |420|
))) (=> (forall ((n$1_1@@0 T@Ref) (n$1_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1@@0 n$1_1_1@@0)) (select g1@@8 n$1_1@@0)) (select g1@@8 n$1_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_1@@0 n$1_1_1@@0)))
 :qid |stdinbpl.3853:15|
 :skolemid |420|
)) (=> (and (and (forall ((n$1_1@@1 T@Ref) ) (!  (=> (and (select g1@@8 n$1_1@@1) (< NoPerm FullPerm)) (and (qpRange47 n$1_1@@1) (= (invRecv47 n$1_1@@1) n$1_1@@1)))
 :qid |stdinbpl.3859:22|
 :skolemid |421|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) n$1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$1_1@@1 next))
)) (forall ((o_9@@17 T@Ref) ) (!  (=> (and (and (select g1@@8 (invRecv47 o_9@@17)) (< NoPerm FullPerm)) (qpRange47 o_9@@17)) (= (invRecv47 o_9@@17) o_9@@17))
 :qid |stdinbpl.3863:22|
 :skolemid |422|
 :pattern ( (invRecv47 o_9@@17))
))) (and (forall ((n$1_1@@2 T@Ref) ) (!  (=> (select g1@@8 n$1_1@@2) (not (= n$1_1@@2 null)))
 :qid |stdinbpl.3869:22|
 :skolemid |423|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) n$1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$1_1@@2 next))
)) (forall ((o_9@@18 T@Ref) ) (!  (and (=> (and (and (select g1@@8 (invRecv47 o_9@@18)) (< NoPerm FullPerm)) (qpRange47 o_9@@18)) (and (=> (< NoPerm FullPerm) (= (invRecv47 o_9@@18) o_9@@18)) (= (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) o_9@@18 next) (+ (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@0) o_9@@18 next) FullPerm)))) (=> (not (and (and (select g1@@8 (invRecv47 o_9@@18)) (< NoPerm FullPerm)) (qpRange47 o_9@@18))) (= (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) o_9@@18 next) (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@0) o_9@@18 next))))
 :qid |stdinbpl.3875:22|
 :skolemid |424|
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) o_9@@18 next))
)))) (=> (and (and (and (and (forall ((o_9@@19 T@Ref) (f_5@@7 T@Field_46438_53) ) (!  (=> true (= (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| QPMask@0) o_9@@19 f_5@@7) (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| QPMask@1) o_9@@19 f_5@@7)))
 :qid |stdinbpl.3879:29|
 :skolemid |425|
 :pattern ( (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| QPMask@0) o_9@@19 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| QPMask@1) o_9@@19 f_5@@7))
)) (forall ((o_9@@20 T@Ref) (f_5@@8 T@Field_46451_46452) ) (!  (=> (not (= f_5@@8 next)) (= (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@0) o_9@@20 f_5@@8) (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) o_9@@20 f_5@@8)))
 :qid |stdinbpl.3879:29|
 :skolemid |425|
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@0) o_9@@20 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@1) o_9@@20 f_5@@8))
))) (forall ((o_9@@21 T@Ref) (f_5@@9 T@Field_29364_147463) ) (!  (=> true (= (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| QPMask@0) o_9@@21 f_5@@9) (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| QPMask@1) o_9@@21 f_5@@9)))
 :qid |stdinbpl.3879:29|
 :skolemid |425|
 :pattern ( (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| QPMask@0) o_9@@21 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| QPMask@1) o_9@@21 f_5@@9))
))) (forall ((o_9@@22 T@Ref) (f_5@@10 T@Field_29364_147596) ) (!  (=> true (= (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| QPMask@0) o_9@@22 f_5@@10) (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| QPMask@1) o_9@@22 f_5@@10)))
 :qid |stdinbpl.3879:29|
 :skolemid |425|
 :pattern ( (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| QPMask@0) o_9@@22 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| QPMask@1) o_9@@22 f_5@@10))
))) (state Heap@@33 QPMask@1)) (and (and (=> (= (ControlFlow 0 153) 152) anon102_Else_correct) (=> (= (ControlFlow 0 153) 14) anon103_Then_correct)) (=> (= (ControlFlow 0 153) 16) anon103_Else_correct))))))))
(let ((anon101_Then_correct true))
(let ((anon98_Else_correct  (=> (and (forall ((n$0_1 T@Ref) ) (!  (=> (and (select g0@@8 n$0_1) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_1 next) null))) (select g0@@8 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_1 next)))
 :qid |stdinbpl.3841:20|
 :skolemid |419|
 :pattern ( (select g0@@8 (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_1 next)))
 :pattern ( (select g0@@8 n$0_1) (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_1 next))
)) (not (select g1@@8 null))) (and (=> (= (ControlFlow 0 155) 9) anon101_Then_correct) (=> (= (ControlFlow 0 155) 153) anon101_Else_correct)))))
(let ((anon7_correct true))
(let ((anon100_Else_correct  (=> (and (not (and (select g0@@8 n$0_21) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_21 next) null)))) (= (ControlFlow 0 5) 2)) anon7_correct)))
(let ((anon100_Then_correct  (=> (and (select g0@@8 n$0_21) (not (= (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n$0_21 next) null))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_29364_29365 QPMask@0 n$0_21 next)) (=> (HasDirectPerm_29364_29365 QPMask@0 n$0_21 next) (=> (= (ControlFlow 0 3) 2) anon7_correct))))))
(let ((anon99_Else_correct  (=> (not (select g0@@8 n$0_21)) (and (=> (= (ControlFlow 0 8) 3) anon100_Then_correct) (=> (= (ControlFlow 0 8) 5) anon100_Else_correct)))))
(let ((anon99_Then_correct  (=> (select g0@@8 n$0_21) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_29364_29365 QPMask@0 n$0_21 next)) (=> (HasDirectPerm_29364_29365 QPMask@0 n$0_21 next) (and (=> (= (ControlFlow 0 6) 3) anon100_Then_correct) (=> (= (ControlFlow 0 6) 5) anon100_Else_correct)))))))
(let ((anon97_Else_correct  (and (=> (= (ControlFlow 0 156) (- 0 157)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select g0@@8 n_1)) (select g0@@8 n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.3796:15|
 :skolemid |413|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select g0@@8 n_1@@0)) (select g0@@8 n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.3796:15|
 :skolemid |413|
)) (=> (and (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select g0@@8 n_1@@1) (< NoPerm FullPerm)) (and (qpRange46 n_1@@1) (= (invRecv46 n_1@@1) n_1@@1)))
 :qid |stdinbpl.3802:22|
 :skolemid |414|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@0) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_1@@1 next))
)) (forall ((o_9@@23 T@Ref) ) (!  (=> (and (and (select g0@@8 (invRecv46 o_9@@23)) (< NoPerm FullPerm)) (qpRange46 o_9@@23)) (= (invRecv46 o_9@@23) o_9@@23))
 :qid |stdinbpl.3806:22|
 :skolemid |415|
 :pattern ( (invRecv46 o_9@@23))
))) (and (forall ((n_1@@2 T@Ref) ) (!  (=> (select g0@@8 n_1@@2) (not (= n_1@@2 null)))
 :qid |stdinbpl.3812:22|
 :skolemid |416|
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@0) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_46378_28671_28672#PolymorphicMapType_46378| Heap@@33) n_1@@2 next))
)) (forall ((o_9@@24 T@Ref) ) (!  (and (=> (and (and (select g0@@8 (invRecv46 o_9@@24)) (< NoPerm FullPerm)) (qpRange46 o_9@@24)) (and (=> (< NoPerm FullPerm) (= (invRecv46 o_9@@24) o_9@@24)) (= (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@0) o_9@@24 next) (+ (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| ZeroMask) o_9@@24 next) FullPerm)))) (=> (not (and (and (select g0@@8 (invRecv46 o_9@@24)) (< NoPerm FullPerm)) (qpRange46 o_9@@24))) (= (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@0) o_9@@24 next) (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| ZeroMask) o_9@@24 next))))
 :qid |stdinbpl.3818:22|
 :skolemid |417|
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@0) o_9@@24 next))
)))) (=> (and (and (and (and (forall ((o_9@@25 T@Ref) (f_5@@11 T@Field_46438_53) ) (!  (=> true (= (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| ZeroMask) o_9@@25 f_5@@11) (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| QPMask@0) o_9@@25 f_5@@11)))
 :qid |stdinbpl.3822:29|
 :skolemid |418|
 :pattern ( (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| ZeroMask) o_9@@25 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_46399_29364_53#PolymorphicMapType_46399| QPMask@0) o_9@@25 f_5@@11))
)) (forall ((o_9@@26 T@Ref) (f_5@@12 T@Field_46451_46452) ) (!  (=> (not (= f_5@@12 next)) (= (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| ZeroMask) o_9@@26 f_5@@12) (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@0) o_9@@26 f_5@@12)))
 :qid |stdinbpl.3822:29|
 :skolemid |418|
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| ZeroMask) o_9@@26 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_46399_29364_29365#PolymorphicMapType_46399| QPMask@0) o_9@@26 f_5@@12))
))) (forall ((o_9@@27 T@Ref) (f_5@@13 T@Field_29364_147463) ) (!  (=> true (= (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| ZeroMask) o_9@@27 f_5@@13) (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| QPMask@0) o_9@@27 f_5@@13)))
 :qid |stdinbpl.3822:29|
 :skolemid |418|
 :pattern ( (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| ZeroMask) o_9@@27 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_46399_29364_147463#PolymorphicMapType_46399| QPMask@0) o_9@@27 f_5@@13))
))) (forall ((o_9@@28 T@Ref) (f_5@@14 T@Field_29364_147596) ) (!  (=> true (= (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| ZeroMask) o_9@@28 f_5@@14) (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| QPMask@0) o_9@@28 f_5@@14)))
 :qid |stdinbpl.3822:29|
 :skolemid |418|
 :pattern ( (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| ZeroMask) o_9@@28 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_46399_29364_151142#PolymorphicMapType_46399| QPMask@0) o_9@@28 f_5@@14))
))) (state Heap@@33 QPMask@0)) (and (and (=> (= (ControlFlow 0 156) 155) anon98_Else_correct) (=> (= (ControlFlow 0 156) 6) anon99_Then_correct)) (=> (= (ControlFlow 0 156) 8) anon99_Else_correct))))))))
(let ((anon97_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@33 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| Heap@@33) x0 $allocated)) (and (select (|PolymorphicMapType_46378_28668_53#PolymorphicMapType_46378| Heap@@33) x1 $allocated) (not (select g0@@8 null)))) (and (=> (= (ControlFlow 0 158) 1) anon97_Then_correct) (=> (= (ControlFlow 0 158) 156) anon97_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 159) 158) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
