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
(declare-sort T@Field_61502_53 0)
(declare-sort T@Field_61515_61516 0)
(declare-sort T@Field_40180_204001 0)
(declare-sort T@Field_40180_203868 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_61463 0)) (((PolymorphicMapType_61463 (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| (Array T@Ref T@Field_61515_61516 Real)) (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| (Array T@Ref T@Field_61502_53 Real)) (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| (Array T@Ref T@Field_40180_203868 Real)) (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| (Array T@Ref T@Field_40180_204001 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_61991 0)) (((PolymorphicMapType_61991 (|PolymorphicMapType_61991_61502_53#PolymorphicMapType_61991| (Array T@Ref T@Field_61502_53 Bool)) (|PolymorphicMapType_61991_61502_61516#PolymorphicMapType_61991| (Array T@Ref T@Field_61515_61516 Bool)) (|PolymorphicMapType_61991_61502_203868#PolymorphicMapType_61991| (Array T@Ref T@Field_40180_203868 Bool)) (|PolymorphicMapType_61991_61502_204981#PolymorphicMapType_61991| (Array T@Ref T@Field_40180_204001 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_61442 0)) (((PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| (Array T@Ref T@Field_61502_53 Bool)) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| (Array T@Ref T@Field_61515_61516 T@Ref)) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| (Array T@Ref T@Field_40180_204001 T@PolymorphicMapType_61991)) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| (Array T@Ref T@Field_40180_203868 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_61502_53)
(declare-fun next () T@Field_61515_61516)
(declare-fun succHeap (T@PolymorphicMapType_61442 T@PolymorphicMapType_61442) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_61442 T@PolymorphicMapType_61442) Bool)
(declare-fun state (T@PolymorphicMapType_61442 T@PolymorphicMapType_61463) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_61463) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_61991)
(declare-fun |apply_TCFraming'| (T@PolymorphicMapType_61442 (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun dummyFunction_8494 (Bool) Bool)
(declare-fun |apply_TCFraming#triggerStateless| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-sort T@EdgeDomainType 0)
(declare-fun exists_path ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun edge ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun exists_path_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun |$$'| (T@PolymorphicMapType_61442 (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun dummyFunction_69536 ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun |$$#triggerStateless| ((Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |Set#Union_40369| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_40372| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |apply_TCFraming#trigger| (T@FrameType (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_6369 (Int) T@FrameType)
(declare-fun |apply_TCFraming#condqp2| (T@PolymorphicMapType_61442 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |apply_TCFraming#condqp3| (T@PolymorphicMapType_61442 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |Set#Equal_40372| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Set#Empty_40375| () (Array T@Ref Bool))
(declare-fun |$$#frame| (T@FrameType (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |$$#condqp1| (T@PolymorphicMapType_61442 (Array T@Ref Bool)) Int)
(declare-fun $$ (T@PolymorphicMapType_61442 (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |Set#Singleton_40375| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_40375| ((Array T@Ref Bool)) Int)
(declare-fun apply_noExit ((Array T@EdgeDomainType Bool) (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_61442 T@PolymorphicMapType_61442 T@PolymorphicMapType_61463) Bool)
(declare-fun IsPredicateField_40180_203959 (T@Field_40180_203868) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_40180 (T@Field_40180_203868) T@Field_40180_204001)
(declare-fun HasDirectPerm_40180_203932 (T@PolymorphicMapType_61463 T@Ref T@Field_40180_203868) Bool)
(declare-fun IsWandField_40180_205508 (T@Field_40180_203868) Bool)
(declare-fun WandMaskField_40180 (T@Field_40180_203868) T@Field_40180_204001)
(declare-fun unshared_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun func_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun |$$#trigger| (T@FrameType (Array T@Ref Bool)) Bool)
(declare-fun create_edge (T@Ref T@Ref) T@EdgeDomainType)
(declare-fun dummyHeap () T@PolymorphicMapType_61442)
(declare-fun ZeroMask () T@PolymorphicMapType_61463)
(declare-fun InsidePredicate_61502_61502 (T@Field_40180_203868 T@FrameType T@Field_40180_203868 T@FrameType) Bool)
(declare-fun |sk_$$#condqp1| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun IsPredicateField_40180_40181 (T@Field_61515_61516) Bool)
(declare-fun IsWandField_40180_40181 (T@Field_61515_61516) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_40180_208442 (T@Field_40180_204001) Bool)
(declare-fun IsWandField_40180_208458 (T@Field_40180_204001) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_40180_53 (T@Field_61502_53) Bool)
(declare-fun IsWandField_40180_53 (T@Field_61502_53) Bool)
(declare-fun |Set#Equal_40187| ((Array T@EdgeDomainType Bool) (Array T@EdgeDomainType Bool)) Bool)
(declare-fun HasDirectPerm_40180_208813 (T@PolymorphicMapType_61463 T@Ref T@Field_40180_204001) Bool)
(declare-fun HasDirectPerm_40180_53 (T@PolymorphicMapType_61463 T@Ref T@Field_61502_53) Bool)
(declare-fun HasDirectPerm_40180_40181 (T@PolymorphicMapType_61463 T@Ref T@Field_61515_61516) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_61463 T@PolymorphicMapType_61463 T@PolymorphicMapType_61463) Bool)
(declare-fun |Set#Difference_40375| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |sk_apply_TCFraming#condqp2| (Int Int) T@Ref)
(declare-fun |sk_apply_TCFraming#condqp3| (Int Int) T@Ref)
(declare-fun |Set#UnionOne_40375| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun acyclic_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun edge_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun edge_pred (T@EdgeDomainType) T@Ref)
(declare-fun edge_succ (T@EdgeDomainType) T@Ref)
(declare-fun |apply_TCFraming#frame| (T@FrameType (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun inst_uReach ((Array T@EdgeDomainType Bool) T@Ref) (Array T@Ref Bool))
(declare-fun apply_TCFraming (T@PolymorphicMapType_61442 (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_61442) (Heap1 T@PolymorphicMapType_61442) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_61442) (Mask T@PolymorphicMapType_61463) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_61442) (Heap1@@0 T@PolymorphicMapType_61442) (Heap2 T@PolymorphicMapType_61442) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_40180_204001) ) (!  (not (select (|PolymorphicMapType_61991_61502_204981#PolymorphicMapType_61991| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_61991_61502_204981#PolymorphicMapType_61991| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_40180_203868) ) (!  (not (select (|PolymorphicMapType_61991_61502_203868#PolymorphicMapType_61991| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_61991_61502_203868#PolymorphicMapType_61991| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_61515_61516) ) (!  (not (select (|PolymorphicMapType_61991_61502_61516#PolymorphicMapType_61991| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_61991_61502_61516#PolymorphicMapType_61991| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_61502_53) ) (!  (not (select (|PolymorphicMapType_61991_61502_53#PolymorphicMapType_61991| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_61991_61502_53#PolymorphicMapType_61991| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_61442) (g0 (Array T@Ref Bool)) (g1 (Array T@Ref Bool)) ) (! (dummyFunction_8494 (|apply_TCFraming#triggerStateless| g0 g1))
 :qid |stdinbpl.988:15|
 :skolemid |120|
 :pattern ( (|apply_TCFraming'| Heap@@0 g0 g1))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.565:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (start_1 T@Ref) (end_1 T@Ref) ) (! (= (exists_path_ EG_1 start_1 end_1)  (or (= start_1 end_1) (exists ((w_2 T@Ref) ) (!  (and (edge EG_1 start_1 w_2) (exists_path_ EG_1 w_2 end_1))
 :qid |stdinbpl.760:78|
 :skolemid |90|
 :pattern ( (edge EG_1 start_1 w_2))
 :pattern ( (exists_path_ EG_1 w_2 end_1))
))))
 :qid |stdinbpl.758:15|
 :skolemid |91|
 :pattern ( (exists_path EG_1 start_1 end_1))
 :pattern ( (edge EG_1 start_1 end_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_61442) (refs (Array T@Ref Bool)) ) (! (dummyFunction_69536 (|$$#triggerStateless| refs))
 :qid |stdinbpl.825:15|
 :skolemid |100|
 :pattern ( (|$$'| Heap@@1 refs))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_40369| (|Set#Union_40369| a@@0 b@@0) b@@0) (|Set#Union_40369| a@@0 b@@0))
 :qid |stdinbpl.517:18|
 :skolemid |38|
 :pattern ( (|Set#Union_40369| (|Set#Union_40369| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_40372| (|Set#Intersection_40372| a@@1 b@@1) b@@1) (|Set#Intersection_40372| a@@1 b@@1))
 :qid |stdinbpl.521:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_40372| (|Set#Intersection_40372| a@@1 b@@1) b@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_61442) (Mask@@0 T@PolymorphicMapType_61463) (g0@@0 (Array T@Ref Bool)) (g1@@0 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@2 Mask@@0) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6369 (|apply_TCFraming#condqp2| Heap@@2 g0@@0 g1@@0)) (FrameFragment_6369 (|apply_TCFraming#condqp3| Heap@@2 g0@@0 g1@@0))) g0@@0 g1@@0))) (=> (|Set#Equal_40372| (|Set#Intersection_40372| g1@@0 g0@@0) |Set#Empty_40375|) (forall ((u_2_2 T@Ref) (v_2_2 T@Ref) ) (!  (=> (and (select g0@@0 u_2_2) (and (select g0@@0 v_2_2) (not (exists_path ($$ Heap@@2 g0@@0) u_2_2 v_2_2)))) (not (exists_path ($$ Heap@@2 (|Set#Union_40369| g0@@0 g1@@0)) u_2_2 v_2_2)))
 :qid |stdinbpl.1041:285|
 :skolemid |129|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@2 g0@@0)) g0@@0) u_2_2 v_2_2))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@2 (|Set#Union_40369| g0@@0 g1@@0))) (|Set#Union_40369| g0@@0 g1@@0)) u_2_2 v_2_2))
))))
 :qid |stdinbpl.1039:15|
 :skolemid |130|
 :pattern ( (state Heap@@2 Mask@@0) (|apply_TCFraming'| Heap@@2 g0@@0 g1@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_61442) (Mask@@1 T@PolymorphicMapType_61463) (g0@@1 (Array T@Ref Bool)) (g1@@1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@3 Mask@@1) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6369 (|apply_TCFraming#condqp2| Heap@@3 g0@@1 g1@@1)) (FrameFragment_6369 (|apply_TCFraming#condqp3| Heap@@3 g0@@1 g1@@1))) g0@@1 g1@@1))) (=> (|Set#Equal_40372| (|Set#Intersection_40372| g1@@1 g0@@1) |Set#Empty_40375|) (forall ((u_3_1 T@Ref) (v_3_1 T@Ref) ) (!  (=> (and (select g1@@1 u_3_1) (and (select g1@@1 v_3_1) (not (exists_path ($$ Heap@@3 g1@@1) u_3_1 v_3_1)))) (not (exists_path ($$ Heap@@3 (|Set#Union_40369| g1@@1 g0@@1)) u_3_1 v_3_1)))
 :qid |stdinbpl.1048:285|
 :skolemid |131|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@3 g1@@1)) g1@@1) u_3_1 v_3_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@3 (|Set#Union_40369| g0@@1 g1@@1))) (|Set#Union_40369| g0@@1 g1@@1)) u_3_1 v_3_1))
))))
 :qid |stdinbpl.1046:15|
 :skolemid |132|
 :pattern ( (state Heap@@3 Mask@@1) (|apply_TCFraming'| Heap@@3 g0@@1 g1@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_40375| r) o) (= r o))
 :qid |stdinbpl.486:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_40375| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_40375| (|Set#Union_40369| a@@2 b@@2)) (|Set#Card_40375| (|Set#Intersection_40372| a@@2 b@@2))) (+ (|Set#Card_40375| a@@2) (|Set#Card_40375| b@@2)))
 :qid |stdinbpl.525:18|
 :skolemid |42|
 :pattern ( (|Set#Card_40375| (|Set#Union_40369| a@@2 b@@2)))
 :pattern ( (|Set#Card_40375| (|Set#Intersection_40372| a@@2 b@@2)))
)))
(assert (forall ((EG_1@@0 (Array T@EdgeDomainType Bool)) (U_1 (Array T@Ref Bool)) (M_1 (Array T@Ref Bool)) ) (!  (=> (apply_noExit EG_1@@0 U_1 M_1) (=> (forall ((u_1 T@Ref) (v_2 T@Ref) ) (!  (=> (and (select M_1 u_1) (and (select U_1 v_2) (not (select M_1 v_2)))) (not (edge EG_1@@0 u_1 v_2)))
 :qid |stdinbpl.736:52|
 :skolemid |85|
 :pattern ( (edge EG_1@@0 u_1 v_2))
 :pattern ( (select M_1 u_1) (select M_1 v_2))
)) (forall ((u_1_1 T@Ref) (v_1_1 T@Ref) ) (!  (=> (and (select M_1 u_1_1) (and (select U_1 v_1_1) (not (select M_1 v_1_1)))) (not (exists_path EG_1@@0 u_1_1 v_1_1)))
 :qid |stdinbpl.739:17|
 :skolemid |86|
 :pattern ( (exists_path EG_1@@0 u_1_1 v_1_1))
 :pattern ( (select M_1 u_1_1) (select M_1 v_1_1))
))))
 :qid |stdinbpl.734:15|
 :skolemid |87|
 :pattern ( (apply_noExit EG_1@@0 U_1 M_1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_61442) (refs@@0 (Array T@Ref Bool)) ) (!  (and (= ($$ Heap@@4 refs@@0) (|$$'| Heap@@4 refs@@0)) (dummyFunction_69536 (|$$#triggerStateless| refs@@0)))
 :qid |stdinbpl.821:15|
 :skolemid |99|
 :pattern ( ($$ Heap@@4 refs@@0))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.568:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_61442) (ExhaleHeap T@PolymorphicMapType_61442) (Mask@@2 T@PolymorphicMapType_61463) (pm_f_14 T@Field_40180_203868) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_40180_203932 Mask@@2 null pm_f_14) (IsPredicateField_40180_203959 pm_f_14)) (= (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@5) null (PredicateMaskField_40180 pm_f_14)) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap) null (PredicateMaskField_40180 pm_f_14)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@2) (IsPredicateField_40180_203959 pm_f_14) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap) null (PredicateMaskField_40180 pm_f_14)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_61442) (ExhaleHeap@@0 T@PolymorphicMapType_61442) (Mask@@3 T@PolymorphicMapType_61463) (pm_f_14@@0 T@Field_40180_203868) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_40180_203932 Mask@@3 null pm_f_14@@0) (IsWandField_40180_205508 pm_f_14@@0)) (= (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@6) null (WandMaskField_40180 pm_f_14@@0)) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@0) null (WandMaskField_40180 pm_f_14@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@3) (IsWandField_40180_205508 pm_f_14@@0) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@0) null (WandMaskField_40180 pm_f_14@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_61442) (Mask@@4 T@PolymorphicMapType_61463) (g0@@2 (Array T@Ref Bool)) (g1@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@7 Mask@@4) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6369 (|apply_TCFraming#condqp2| Heap@@7 g0@@2 g1@@2)) (FrameFragment_6369 (|apply_TCFraming#condqp3| Heap@@7 g0@@2 g1@@2))) g0@@2 g1@@2))) (=> (|Set#Equal_40372| (|Set#Intersection_40372| g1@@2 g0@@2) |Set#Empty_40375|) (|Set#Equal_40372| (|Set#Union_40369| g0@@2 g1@@2) (|Set#Union_40369| g1@@2 g0@@2))))
 :qid |stdinbpl.1021:15|
 :skolemid |124|
 :pattern ( (state Heap@@7 Mask@@4) (|apply_TCFraming'| Heap@@7 g0@@2 g1@@2))
)))
(assert (forall ((EG_1@@1 (Array T@EdgeDomainType Bool)) ) (! (= (unshared_graph EG_1@@1) (forall ((v1 T@Ref) (v2 T@Ref) (v_2@@0 T@Ref) ) (!  (=> (and (edge EG_1@@1 v1 v_2@@0) (edge EG_1@@1 v2 v_2@@0)) (= v1 v2))
 :qid |stdinbpl.784:43|
 :skolemid |95|
 :pattern ( (edge EG_1@@1 v1 v_2@@0) (edge EG_1@@1 v2 v_2@@0))
)))
 :qid |stdinbpl.782:15|
 :skolemid |96|
 :pattern ( (unshared_graph EG_1@@1))
)))
(assert (forall ((EG_1@@2 (Array T@EdgeDomainType Bool)) ) (! (= (func_graph EG_1@@2) (forall ((v1@@0 T@Ref) (v2@@0 T@Ref) (v_2@@1 T@Ref) ) (!  (=> (and (edge EG_1@@2 v_2@@1 v1@@0) (edge EG_1@@2 v_2@@1 v2@@0)) (= v1@@0 v2@@0))
 :qid |stdinbpl.793:39|
 :skolemid |97|
 :pattern ( (edge EG_1@@2 v_2@@1 v1@@0) (edge EG_1@@2 v_2@@1 v2@@0))
)))
 :qid |stdinbpl.791:15|
 :skolemid |98|
 :pattern ( (func_graph EG_1@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_61442) (Mask@@5 T@PolymorphicMapType_61463) (refs@@1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@8 Mask@@5) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (FrameFragment_6369 (|$$#condqp1| Heap@@8 refs@@1)) refs@@1))) (forall ((p_1 T@Ref) (s_1 T@Ref) ) (! (=  (and (select refs@@1 p_1) (and (select refs@@1 s_1) (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@8) p_1 next) s_1))) (select (|$$'| Heap@@8 refs@@1) (create_edge p_1 s_1)))
 :qid |stdinbpl.850:122|
 :skolemid |103|
 :pattern ( (create_edge p_1 s_1))
)))
 :qid |stdinbpl.848:15|
 :skolemid |104|
 :pattern ( (state Heap@@8 Mask@@5) (|$$'| Heap@@8 refs@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_61442) (ExhaleHeap@@1 T@PolymorphicMapType_61442) (Mask@@6 T@PolymorphicMapType_61463) (pm_f_14@@1 T@Field_40180_203868) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (=> (and (HasDirectPerm_40180_203932 Mask@@6 null pm_f_14@@1) (IsPredicateField_40180_203959 pm_f_14@@1)) (and (and (and (forall ((o2_14 T@Ref) (f_43 T@Field_61502_53) ) (!  (=> (select (|PolymorphicMapType_61991_61502_53#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@9) null (PredicateMaskField_40180 pm_f_14@@1))) o2_14 f_43) (= (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@9) o2_14 f_43) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@1) o2_14 f_43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@1) o2_14 f_43))
)) (forall ((o2_14@@0 T@Ref) (f_43@@0 T@Field_61515_61516) ) (!  (=> (select (|PolymorphicMapType_61991_61502_61516#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@9) null (PredicateMaskField_40180 pm_f_14@@1))) o2_14@@0 f_43@@0) (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@9) o2_14@@0 f_43@@0) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@@1) o2_14@@0 f_43@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@@1) o2_14@@0 f_43@@0))
))) (forall ((o2_14@@1 T@Ref) (f_43@@1 T@Field_40180_203868) ) (!  (=> (select (|PolymorphicMapType_61991_61502_203868#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@9) null (PredicateMaskField_40180 pm_f_14@@1))) o2_14@@1 f_43@@1) (= (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@9) o2_14@@1 f_43@@1) (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| ExhaleHeap@@1) o2_14@@1 f_43@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| ExhaleHeap@@1) o2_14@@1 f_43@@1))
))) (forall ((o2_14@@2 T@Ref) (f_43@@2 T@Field_40180_204001) ) (!  (=> (select (|PolymorphicMapType_61991_61502_204981#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@9) null (PredicateMaskField_40180 pm_f_14@@1))) o2_14@@2 f_43@@2) (= (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@9) o2_14@@2 f_43@@2) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@1) o2_14@@2 f_43@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@1) o2_14@@2 f_43@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (IsPredicateField_40180_203959 pm_f_14@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_61442) (ExhaleHeap@@2 T@PolymorphicMapType_61442) (Mask@@7 T@PolymorphicMapType_61463) (pm_f_14@@2 T@Field_40180_203868) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@7) (=> (and (HasDirectPerm_40180_203932 Mask@@7 null pm_f_14@@2) (IsWandField_40180_205508 pm_f_14@@2)) (and (and (and (forall ((o2_14@@3 T@Ref) (f_43@@3 T@Field_61502_53) ) (!  (=> (select (|PolymorphicMapType_61991_61502_53#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@10) null (WandMaskField_40180 pm_f_14@@2))) o2_14@@3 f_43@@3) (= (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@10) o2_14@@3 f_43@@3) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@2) o2_14@@3 f_43@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@2) o2_14@@3 f_43@@3))
)) (forall ((o2_14@@4 T@Ref) (f_43@@4 T@Field_61515_61516) ) (!  (=> (select (|PolymorphicMapType_61991_61502_61516#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@10) null (WandMaskField_40180 pm_f_14@@2))) o2_14@@4 f_43@@4) (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@10) o2_14@@4 f_43@@4) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@@2) o2_14@@4 f_43@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@@2) o2_14@@4 f_43@@4))
))) (forall ((o2_14@@5 T@Ref) (f_43@@5 T@Field_40180_203868) ) (!  (=> (select (|PolymorphicMapType_61991_61502_203868#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@10) null (WandMaskField_40180 pm_f_14@@2))) o2_14@@5 f_43@@5) (= (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@10) o2_14@@5 f_43@@5) (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| ExhaleHeap@@2) o2_14@@5 f_43@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| ExhaleHeap@@2) o2_14@@5 f_43@@5))
))) (forall ((o2_14@@6 T@Ref) (f_43@@6 T@Field_40180_204001) ) (!  (=> (select (|PolymorphicMapType_61991_61502_204981#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@10) null (WandMaskField_40180 pm_f_14@@2))) o2_14@@6 f_43@@6) (= (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@10) o2_14@@6 f_43@@6) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@2) o2_14@@6 f_43@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@2) o2_14@@6 f_43@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@7) (IsWandField_40180_205508 pm_f_14@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1@@3 (Array T@EdgeDomainType Bool)) (u_1@@0 T@Ref) (v_2@@2 T@Ref) (w_2@@0 T@Ref) ) (!  (=> (and (exists_path_ EG_1@@3 u_1@@0 w_2@@0) (exists_path_ EG_1@@3 w_2@@0 v_2@@2)) (exists_path_ EG_1@@3 u_1@@0 v_2@@2))
 :qid |stdinbpl.767:15|
 :skolemid |92|
 :pattern ( (exists_path EG_1@@3 u_1@@0 w_2@@0) (exists_path EG_1@@3 w_2@@0 v_2@@2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_61442) (ExhaleHeap@@3 T@PolymorphicMapType_61442) (Mask@@8 T@PolymorphicMapType_61463) (o_31 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@8) (=> (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@11) o_31 $allocated) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@3) o_31 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@8) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@3) o_31 $allocated))
)))
(assert (forall ((p T@Field_40180_203868) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_61502_61502 p v_1 p w))
 :qid |stdinbpl.463:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_61502_61502 p v_1 p w))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_61442) (Heap1Heap T@PolymorphicMapType_61442) (refs@@2 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select refs@@2 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select refs@@2 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select refs@@2 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap2Heap) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2)) next) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap1Heap) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2)) next)))) (= (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2)))
 :qid |stdinbpl.842:15|
 :skolemid |102|
 :pattern ( (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert  (not (IsPredicateField_40180_40181 next)))
(assert  (not (IsWandField_40180_40181 next)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_61442) (ExhaleHeap@@4 T@PolymorphicMapType_61442) (Mask@@9 T@PolymorphicMapType_61463) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_61463) (o_2@@3 T@Ref) (f_4@@3 T@Field_40180_204001) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| Mask@@10) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_40180_208442 f_4@@3))) (not (IsWandField_40180_208458 f_4@@3))) (<= (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| Mask@@10) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| Mask@@10) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_61463) (o_2@@4 T@Ref) (f_4@@4 T@Field_40180_203868) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| Mask@@11) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_40180_203959 f_4@@4))) (not (IsWandField_40180_205508 f_4@@4))) (<= (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| Mask@@11) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| Mask@@11) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_61463) (o_2@@5 T@Ref) (f_4@@5 T@Field_61502_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| Mask@@12) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_40180_53 f_4@@5))) (not (IsWandField_40180_53 f_4@@5))) (<= (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| Mask@@12) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| Mask@@12) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_61463) (o_2@@6 T@Ref) (f_4@@6 T@Field_61515_61516) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| Mask@@13) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_40180_40181 f_4@@6))) (not (IsWandField_40180_40181 f_4@@6))) (<= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| Mask@@13) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| Mask@@13) o_2@@6 f_4@@6))
)))
(assert (forall ((a@@4 (Array T@EdgeDomainType Bool)) (b@@3 (Array T@EdgeDomainType Bool)) ) (! (= (|Set#Equal_40187| a@@4 b@@3) (forall ((o@@0 T@EdgeDomainType) ) (! (= (select a@@4 o@@0) (select b@@3 o@@0))
 :qid |stdinbpl.550:31|
 :skolemid |48|
 :pattern ( (select a@@4 o@@0))
 :pattern ( (select b@@3 o@@0))
)))
 :qid |stdinbpl.549:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_40187| a@@4 b@@3))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) ) (! (= (|Set#Equal_40372| a@@5 b@@4) (forall ((o@@1 T@Ref) ) (! (= (select a@@5 o@@1) (select b@@4 o@@1))
 :qid |stdinbpl.550:31|
 :skolemid |48|
 :pattern ( (select a@@5 o@@1))
 :pattern ( (select b@@4 o@@1))
)))
 :qid |stdinbpl.549:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_40372| a@@5 b@@4))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_61463) (o_2@@7 T@Ref) (f_4@@7 T@Field_40180_204001) ) (! (= (HasDirectPerm_40180_208813 Mask@@14 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| Mask@@14) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_40180_208813 Mask@@14 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_61463) (o_2@@8 T@Ref) (f_4@@8 T@Field_40180_203868) ) (! (= (HasDirectPerm_40180_203932 Mask@@15 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| Mask@@15) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_40180_203932 Mask@@15 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_61463) (o_2@@9 T@Ref) (f_4@@9 T@Field_61502_53) ) (! (= (HasDirectPerm_40180_53 Mask@@16 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| Mask@@16) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_40180_53 Mask@@16 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_61463) (o_2@@10 T@Ref) (f_4@@10 T@Field_61515_61516) ) (! (= (HasDirectPerm_40180_40181 Mask@@17 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| Mask@@17) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_40180_40181 Mask@@17 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.451:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_61442) (ExhaleHeap@@5 T@PolymorphicMapType_61442) (Mask@@18 T@PolymorphicMapType_61463) (o_31@@0 T@Ref) (f_43@@7 T@Field_40180_204001) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_40180_208813 Mask@@18 o_31@@0 f_43@@7) (= (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@13) o_31@@0 f_43@@7) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@5) o_31@@0 f_43@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@5) o_31@@0 f_43@@7))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_61442) (ExhaleHeap@@6 T@PolymorphicMapType_61442) (Mask@@19 T@PolymorphicMapType_61463) (o_31@@1 T@Ref) (f_43@@8 T@Field_40180_203868) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_40180_203932 Mask@@19 o_31@@1 f_43@@8) (= (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@14) o_31@@1 f_43@@8) (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| ExhaleHeap@@6) o_31@@1 f_43@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| ExhaleHeap@@6) o_31@@1 f_43@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_61442) (ExhaleHeap@@7 T@PolymorphicMapType_61442) (Mask@@20 T@PolymorphicMapType_61463) (o_31@@2 T@Ref) (f_43@@9 T@Field_61502_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_40180_53 Mask@@20 o_31@@2 f_43@@9) (= (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@15) o_31@@2 f_43@@9) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@7) o_31@@2 f_43@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@7) o_31@@2 f_43@@9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_61442) (ExhaleHeap@@8 T@PolymorphicMapType_61442) (Mask@@21 T@PolymorphicMapType_61463) (o_31@@3 T@Ref) (f_43@@10 T@Field_61515_61516) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_40180_40181 Mask@@21 o_31@@3 f_43@@10) (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@16) o_31@@3 f_43@@10) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@@8) o_31@@3 f_43@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@@8) o_31@@3 f_43@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_40180_204001) ) (! (= (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_40180_203868) ) (! (= (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_61502_53) ) (! (= (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_61515_61516) ) (! (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_61442) (Mask@@22 T@PolymorphicMapType_61463) (g0@@3 (Array T@Ref Bool)) (g1@@3 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@17 Mask@@22) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6369 (|apply_TCFraming#condqp2| Heap@@17 g0@@3 g1@@3)) (FrameFragment_6369 (|apply_TCFraming#condqp3| Heap@@17 g0@@3 g1@@3))) g0@@3 g1@@3))) (=> (|Set#Equal_40372| (|Set#Intersection_40372| g1@@3 g0@@3) |Set#Empty_40375|) (forall ((u_1@@1 T@Ref) (v_2@@3 T@Ref) ) (!  (=> (and (select g0@@3 u_1@@1) (and (select g0@@3 v_2@@3) (exists_path ($$ Heap@@17 g0@@3) u_1@@1 v_2@@3))) (exists_path ($$ Heap@@17 (|Set#Union_40369| g0@@3 g1@@3)) u_1@@1 v_2@@3))
 :qid |stdinbpl.1027:285|
 :skolemid |125|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@17 g0@@3)) g0@@3) u_1@@1 v_2@@3))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@17 (|Set#Union_40369| g0@@3 g1@@3))) (|Set#Union_40369| g0@@3 g1@@3)) u_1@@1 v_2@@3))
))))
 :qid |stdinbpl.1025:15|
 :skolemid |126|
 :pattern ( (state Heap@@17 Mask@@22) (|apply_TCFraming'| Heap@@17 g0@@3 g1@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_61442) (Mask@@23 T@PolymorphicMapType_61463) (g0@@4 (Array T@Ref Bool)) (g1@@4 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@18 Mask@@23) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6369 (|apply_TCFraming#condqp2| Heap@@18 g0@@4 g1@@4)) (FrameFragment_6369 (|apply_TCFraming#condqp3| Heap@@18 g0@@4 g1@@4))) g0@@4 g1@@4))) (=> (|Set#Equal_40372| (|Set#Intersection_40372| g1@@4 g0@@4) |Set#Empty_40375|) (forall ((u_1_1@@0 T@Ref) (v_1_1@@0 T@Ref) ) (!  (=> (and (select g1@@4 u_1_1@@0) (and (select g1@@4 v_1_1@@0) (exists_path ($$ Heap@@18 g1@@4) u_1_1@@0 v_1_1@@0))) (exists_path ($$ Heap@@18 (|Set#Union_40369| g1@@4 g0@@4)) u_1_1@@0 v_1_1@@0))
 :qid |stdinbpl.1034:285|
 :skolemid |127|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@18 g1@@4)) g1@@4) u_1_1@@0 v_1_1@@0))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@18 (|Set#Union_40369| g1@@4 g0@@4))) (|Set#Union_40369| g1@@4 g0@@4)) u_1_1@@0 v_1_1@@0))
))))
 :qid |stdinbpl.1032:15|
 :skolemid |128|
 :pattern ( (state Heap@@18 Mask@@23) (|apply_TCFraming'| Heap@@18 g0@@4 g1@@4))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_61463) (SummandMask1 T@PolymorphicMapType_61463) (SummandMask2 T@PolymorphicMapType_61463) (o_2@@15 T@Ref) (f_4@@15 T@Field_40180_204001) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_61463) (SummandMask1@@0 T@PolymorphicMapType_61463) (SummandMask2@@0 T@PolymorphicMapType_61463) (o_2@@16 T@Ref) (f_4@@16 T@Field_40180_203868) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_61463) (SummandMask1@@1 T@PolymorphicMapType_61463) (SummandMask2@@1 T@PolymorphicMapType_61463) (o_2@@17 T@Ref) (f_4@@17 T@Field_61502_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_61463) (SummandMask1@@2 T@PolymorphicMapType_61463) (SummandMask2@@2 T@PolymorphicMapType_61463) (o_2@@18 T@Ref) (f_4@@18 T@Field_61515_61516) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (o@@2 T@Ref) ) (! (= (select (|Set#Intersection_40372| a@@6 b@@5) o@@2)  (and (select a@@6 o@@2) (select b@@5 o@@2)))
 :qid |stdinbpl.514:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_40372| a@@6 b@@5) o@@2))
 :pattern ( (|Set#Intersection_40372| a@@6 b@@5) (select a@@6 o@@2))
 :pattern ( (|Set#Intersection_40372| a@@6 b@@5) (select b@@5 o@@2))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (o@@3 T@Ref) ) (! (= (select (|Set#Difference_40375| a@@7 b@@6) o@@3)  (and (select a@@7 o@@3) (not (select b@@6 o@@3))))
 :qid |stdinbpl.529:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_40375| a@@7 b@@6) o@@3))
 :pattern ( (|Set#Difference_40375| a@@7 b@@6) (select a@@7 o@@3))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_61442) (Heap1Heap@@0 T@PolymorphicMapType_61442) (g0@@5 (Array T@Ref Bool)) (g1@@5 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g0@@5 (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap@@0 g0@@5 g1@@5) (|apply_TCFraming#condqp2| Heap1Heap@@0 g0@@5 g1@@5))) (< NoPerm FullPerm))  (and (select g0@@5 (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap@@0 g0@@5 g1@@5) (|apply_TCFraming#condqp2| Heap1Heap@@0 g0@@5 g1@@5))) (< NoPerm FullPerm))) (=> (and (select g0@@5 (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap@@0 g0@@5 g1@@5) (|apply_TCFraming#condqp2| Heap1Heap@@0 g0@@5 g1@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap2Heap@@0) (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap@@0 g0@@5 g1@@5) (|apply_TCFraming#condqp2| Heap1Heap@@0 g0@@5 g1@@5)) next) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap1Heap@@0) (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap@@0 g0@@5 g1@@5) (|apply_TCFraming#condqp2| Heap1Heap@@0 g0@@5 g1@@5)) next)))) (= (|apply_TCFraming#condqp2| Heap2Heap@@0 g0@@5 g1@@5) (|apply_TCFraming#condqp2| Heap1Heap@@0 g0@@5 g1@@5)))
 :qid |stdinbpl.1005:15|
 :skolemid |122|
 :pattern ( (|apply_TCFraming#condqp2| Heap2Heap@@0 g0@@5 g1@@5) (|apply_TCFraming#condqp2| Heap1Heap@@0 g0@@5 g1@@5) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_61442) (Heap1Heap@@1 T@PolymorphicMapType_61442) (g0@@6 (Array T@Ref Bool)) (g1@@6 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g1@@6 (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@6 g1@@6) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@6 g1@@6))) (< NoPerm FullPerm))  (and (select g1@@6 (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@6 g1@@6) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@6 g1@@6))) (< NoPerm FullPerm))) (=> (and (select g1@@6 (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@6 g1@@6) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@6 g1@@6))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap2Heap@@1) (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@6 g1@@6) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@6 g1@@6)) next) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap1Heap@@1) (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@6 g1@@6) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@6 g1@@6)) next)))) (= (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@6 g1@@6) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@6 g1@@6)))
 :qid |stdinbpl.1015:15|
 :skolemid |123|
 :pattern ( (|apply_TCFraming#condqp3| Heap2Heap@@1 g0@@6 g1@@6) (|apply_TCFraming#condqp3| Heap1Heap@@1 g0@@6 g1@@6) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((a@@8 (Array T@EdgeDomainType Bool)) (b@@7 (Array T@EdgeDomainType Bool)) ) (!  (=> (|Set#Equal_40187| a@@8 b@@7) (= a@@8 b@@7))
 :qid |stdinbpl.551:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_40187| a@@8 b@@7))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_40372| a@@9 b@@8) (= a@@9 b@@8))
 :qid |stdinbpl.551:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_40372| a@@9 b@@8))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@10 y) (select (|Set#UnionOne_40375| a@@10 x) y))
 :qid |stdinbpl.494:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_40375| a@@10 x) (select a@@10 y))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@11 y@@0) (select (|Set#Union_40369| a@@11 b@@9) y@@0))
 :qid |stdinbpl.504:18|
 :skolemid |35|
 :pattern ( (|Set#Union_40369| a@@11 b@@9) (select a@@11 y@@0))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@10 y@@1) (select (|Set#Union_40369| a@@12 b@@10) y@@1))
 :qid |stdinbpl.506:18|
 :skolemid |36|
 :pattern ( (|Set#Union_40369| a@@12 b@@10) (select b@@10 y@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@4 T@Ref) ) (! (= (select (|Set#UnionOne_40375| a@@13 x@@0) o@@4)  (or (= o@@4 x@@0) (select a@@13 o@@4)))
 :qid |stdinbpl.490:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_40375| a@@13 x@@0) o@@4))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@11 y@@2) (not (select (|Set#Difference_40375| a@@14 b@@11) y@@2)))
 :qid |stdinbpl.531:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_40375| a@@14 b@@11) (select b@@11 y@@2))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_40375| (|Set#Difference_40375| a@@15 b@@12)) (|Set#Card_40375| (|Set#Difference_40375| b@@12 a@@15))) (|Set#Card_40375| (|Set#Intersection_40372| a@@15 b@@12))) (|Set#Card_40375| (|Set#Union_40369| a@@15 b@@12))) (= (|Set#Card_40375| (|Set#Difference_40375| a@@15 b@@12)) (- (|Set#Card_40375| a@@15) (|Set#Card_40375| (|Set#Intersection_40372| a@@15 b@@12)))))
 :qid |stdinbpl.533:18|
 :skolemid |45|
 :pattern ( (|Set#Card_40375| (|Set#Difference_40375| a@@15 b@@12)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_40375| s))
 :qid |stdinbpl.476:18|
 :skolemid |22|
 :pattern ( (|Set#Card_40375| s))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_61442) (Mask@@24 T@PolymorphicMapType_61463) (refs@@3 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@19 Mask@@24) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (FrameFragment_6369 (|$$#condqp1| Heap@@19 refs@@3)) refs@@3))) (forall ((p_1_1 T@Ref) (s_1_1 T@Ref) ) (!  (=> (and (select refs@@3 p_1_1) (exists_path (|$$'| Heap@@19 refs@@3) p_1_1 s_1_1)) (select refs@@3 s_1_1))
 :qid |stdinbpl.857:122|
 :skolemid |105|
 :pattern ( (select refs@@3 p_1_1) (select refs@@3 s_1_1) (exists_path (|$$'| Heap@@19 refs@@3) p_1_1 s_1_1))
)))
 :qid |stdinbpl.855:15|
 :skolemid |106|
 :pattern ( (state Heap@@19 Mask@@24) (|$$'| Heap@@19 refs@@3))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_61442) (Mask@@25 T@PolymorphicMapType_61463) (refs@@4 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@20 Mask@@25) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (FrameFragment_6369 (|$$#condqp1| Heap@@20 refs@@4)) refs@@4))) (forall ((p_2_1 T@Ref) (s_2_1 T@Ref) ) (!  (=> (and (select refs@@4 s_2_1) (exists_path (|$$'| Heap@@20 refs@@4) p_2_1 s_2_1)) (select refs@@4 p_2_1))
 :qid |stdinbpl.864:122|
 :skolemid |107|
 :pattern ( (select refs@@4 p_2_1) (select refs@@4 s_2_1) (exists_path (|$$'| Heap@@20 refs@@4) p_2_1 s_2_1))
)))
 :qid |stdinbpl.862:15|
 :skolemid |108|
 :pattern ( (state Heap@@20 Mask@@25) (|$$'| Heap@@20 refs@@4))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_40375| a@@16 x@@1) x@@1)
 :qid |stdinbpl.492:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_40375| a@@16 x@@1))
)))
(assert (forall ((EG_1@@4 (Array T@EdgeDomainType Bool)) ) (! (= (acyclic_graph EG_1@@4) (forall ((v1@@1 T@Ref) (v2@@1 T@Ref) ) (!  (or (not (edge EG_1@@4 v1@@1 v2@@1)) (not (exists_path EG_1@@4 v2@@1 v1@@1)))
 :qid |stdinbpl.775:42|
 :skolemid |93|
 :pattern ( (edge EG_1@@4 v1@@1 v2@@1))
 :pattern ( (exists_path EG_1@@4 v2@@1 v1@@1))
)))
 :qid |stdinbpl.773:15|
 :skolemid |94|
 :pattern ( (acyclic_graph EG_1@@4))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@17 x@@2) (= (|Set#Card_40375| (|Set#UnionOne_40375| a@@17 x@@2)) (|Set#Card_40375| a@@17)))
 :qid |stdinbpl.496:18|
 :skolemid |32|
 :pattern ( (|Set#Card_40375| (|Set#UnionOne_40375| a@@17 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_40375| (|Set#Singleton_40375| r@@0)) 1)
 :qid |stdinbpl.487:18|
 :skolemid |28|
 :pattern ( (|Set#Card_40375| (|Set#Singleton_40375| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_40375| r@@1) r@@1)
 :qid |stdinbpl.485:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_40375| r@@1))
)))
(assert (forall ((EG_1@@5 (Array T@EdgeDomainType Bool)) (p_1@@0 T@Ref) (s_1@@0 T@Ref) ) (! (= (edge_ EG_1@@5 p_1@@0 s_1@@0) (select EG_1@@5 (create_edge p_1@@0 s_1@@0)))
 :qid |stdinbpl.728:15|
 :skolemid |84|
 :pattern ( (select EG_1@@5 (create_edge p_1@@0 s_1@@0)))
 :pattern ( (edge EG_1@@5 p_1@@0 s_1@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) ) (! (= (|Set#Union_40369| a@@18 (|Set#Union_40369| a@@18 b@@13)) (|Set#Union_40369| a@@18 b@@13))
 :qid |stdinbpl.519:18|
 :skolemid |39|
 :pattern ( (|Set#Union_40369| a@@18 (|Set#Union_40369| a@@18 b@@13)))
)))
(assert (forall ((a@@19 (Array T@Ref Bool)) (b@@14 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_40372| a@@19 (|Set#Intersection_40372| a@@19 b@@14)) (|Set#Intersection_40372| a@@19 b@@14))
 :qid |stdinbpl.523:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_40372| a@@19 (|Set#Intersection_40372| a@@19 b@@14)))
)))
(assert (forall ((o@@5 T@Ref) ) (!  (not (select |Set#Empty_40375| o@@5))
 :qid |stdinbpl.479:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_40375| o@@5))
)))
(assert (forall ((p_1@@1 T@Ref) (s_1@@1 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@1 s_1@@1)) p_1@@1) (= (edge_succ (create_edge p_1@@1 s_1@@1)) s_1@@1))
 :qid |stdinbpl.679:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@1 s_1@@1))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_61442) (o_30 T@Ref) (f_36 T@Field_40180_203868) (v T@FrameType) ) (! (succHeap Heap@@21 (PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@21) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@21) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@21) (store (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@21) o_30 f_36 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@21) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@21) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@21) (store (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@21) o_30 f_36 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_61442) (o_30@@0 T@Ref) (f_36@@0 T@Field_40180_204001) (v@@0 T@PolymorphicMapType_61991) ) (! (succHeap Heap@@22 (PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@22) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@22) (store (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@22) o_30@@0 f_36@@0 v@@0) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@22) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@22) (store (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@22) o_30@@0 f_36@@0 v@@0) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_61442) (o_30@@1 T@Ref) (f_36@@1 T@Field_61515_61516) (v@@1 T@Ref) ) (! (succHeap Heap@@23 (PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@23) (store (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@23) o_30@@1 f_36@@1 v@@1) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@23) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@23) (store (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@23) o_30@@1 f_36@@1 v@@1) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@23) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_61442) (o_30@@2 T@Ref) (f_36@@2 T@Field_61502_53) (v@@2 Bool) ) (! (succHeap Heap@@24 (PolymorphicMapType_61442 (store (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@24) o_30@@2 f_36@@2 v@@2) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@24) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@24) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_61442 (store (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@24) o_30@@2 f_36@@2 v@@2) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@24) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@24) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@24)))
)))
(assert (forall ((a@@20 Int) (b@@15 Int) ) (! (= (<= a@@20 b@@15) (= (|Math#min| a@@20 b@@15) a@@20))
 :qid |stdinbpl.563:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@20 b@@15))
)))
(assert (forall ((a@@21 Int) (b@@16 Int) ) (! (= (<= b@@16 a@@21) (= (|Math#min| a@@21 b@@16) b@@16))
 :qid |stdinbpl.564:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@21 b@@16))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_40375| s@@0) 0) (= s@@0 |Set#Empty_40375|)) (=> (not (= (|Set#Card_40375| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.482:33|
 :skolemid |24|
))))
 :qid |stdinbpl.480:18|
 :skolemid |25|
 :pattern ( (|Set#Card_40375| s@@0))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_61442) (Mask@@26 T@PolymorphicMapType_61463) (refs@@5 (Array T@Ref Bool)) ) (!  (=> (state Heap@@25 Mask@@26) (= (|$$'| Heap@@25 refs@@5) (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@25 refs@@5)) refs@@5)))
 :qid |stdinbpl.832:15|
 :skolemid |101|
 :pattern ( (state Heap@@25 Mask@@26) (|$$'| Heap@@25 refs@@5))
)))
(assert (forall ((a@@22 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@22 x@@4)) (= (|Set#Card_40375| (|Set#UnionOne_40375| a@@22 x@@4)) (+ (|Set#Card_40375| a@@22) 1)))
 :qid |stdinbpl.498:18|
 :skolemid |33|
 :pattern ( (|Set#Card_40375| (|Set#UnionOne_40375| a@@22 x@@4)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_61442) (Mask@@27 T@PolymorphicMapType_61463) (g0@@7 (Array T@Ref Bool)) (g1@@7 (Array T@Ref Bool)) ) (!  (=> (state Heap@@26 Mask@@27) (= (|apply_TCFraming'| Heap@@26 g0@@7 g1@@7) (|apply_TCFraming#frame| (CombineFrames (FrameFragment_6369 (|apply_TCFraming#condqp2| Heap@@26 g0@@7 g1@@7)) (FrameFragment_6369 (|apply_TCFraming#condqp3| Heap@@26 g0@@7 g1@@7))) g0@@7 g1@@7)))
 :qid |stdinbpl.995:15|
 :skolemid |121|
 :pattern ( (state Heap@@26 Mask@@27) (|apply_TCFraming'| Heap@@26 g0@@7 g1@@7))
)))
(assert (forall ((o_30@@3 T@Ref) (f_42 T@Field_61515_61516) (Heap@@27 T@PolymorphicMapType_61442) ) (!  (=> (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@27) o_30@@3 $allocated) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@27) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@27) o_30@@3 f_42) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@27) o_30@@3 f_42))
)))
(assert (forall ((p@@1 T@Field_40180_203868) (v_1@@0 T@FrameType) (q T@Field_40180_203868) (w@@0 T@FrameType) (r@@2 T@Field_40180_203868) (u T@FrameType) ) (!  (=> (and (InsidePredicate_61502_61502 p@@1 v_1@@0 q w@@0) (InsidePredicate_61502_61502 q w@@0 r@@2 u)) (InsidePredicate_61502_61502 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.458:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_61502_61502 p@@1 v_1@@0 q w@@0) (InsidePredicate_61502_61502 q w@@0 r@@2 u))
)))
(assert (forall ((a@@23 Int) ) (!  (=> (< a@@23 0) (= (|Math#clip| a@@23) 0))
 :qid |stdinbpl.569:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@23))
)))
(assert (forall ((EG_1@@6 (Array T@EdgeDomainType Bool)) (x@@5 T@Ref) (v_2@@4 T@Ref) ) (! (= (select (inst_uReach EG_1@@6 x@@5) v_2@@4) (exists_path EG_1@@6 x@@5 v_2@@4))
 :qid |stdinbpl.746:15|
 :skolemid |88|
 :pattern ( (select (inst_uReach EG_1@@6 x@@5) v_2@@4))
 :pattern ( (exists_path EG_1@@6 x@@5 v_2@@4))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@24 (Array T@Ref Bool)) (b@@17 (Array T@Ref Bool)) (o@@6 T@Ref) ) (! (= (select (|Set#Union_40369| a@@24 b@@17) o@@6)  (or (select a@@24 o@@6) (select b@@17 o@@6)))
 :qid |stdinbpl.502:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_40369| a@@24 b@@17) o@@6))
)))
(assert (forall ((EG_1@@7 (Array T@EdgeDomainType Bool)) (p_1@@2 T@Ref) (s_1@@2 T@Ref) ) (! (= (edge EG_1@@7 p_1@@2 s_1@@2) (edge_ EG_1@@7 p_1@@2 s_1@@2))
 :qid |stdinbpl.722:15|
 :skolemid |83|
 :pattern ( (edge EG_1@@7 p_1@@2 s_1@@2))
)))
(assert (forall ((EG_1@@8 (Array T@EdgeDomainType Bool)) (start_1@@0 T@Ref) (end_1@@0 T@Ref) ) (! (= (exists_path EG_1@@8 start_1@@0 end_1@@0) (exists_path_ EG_1@@8 start_1@@0 end_1@@0))
 :qid |stdinbpl.752:15|
 :skolemid |89|
 :pattern ( (exists_path EG_1@@8 start_1@@0 end_1@@0))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_61442) (g0@@8 (Array T@Ref Bool)) (g1@@8 (Array T@Ref Bool)) ) (!  (and (= (apply_TCFraming Heap@@28 g0@@8 g1@@8) (|apply_TCFraming'| Heap@@28 g0@@8 g1@@8)) (dummyFunction_8494 (|apply_TCFraming#triggerStateless| g0@@8 g1@@8)))
 :qid |stdinbpl.984:15|
 :skolemid |119|
 :pattern ( (apply_TCFraming Heap@@28 g0@@8 g1@@8))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@29 () T@PolymorphicMapType_61442)
(declare-fun QPMask@4 () T@PolymorphicMapType_61463)
(declare-fun g_1 () (Array T@Ref Bool))
(declare-fun dummyFunction_40181 (T@Ref) Bool)
(declare-fun neverTriggered56 (T@Ref) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_61463)
(declare-fun PostHeap@0 () T@PolymorphicMapType_61442)
(declare-fun QPMask@3 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered55 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_61463)
(declare-fun v1_9 () T@Ref)
(declare-fun x@@6 () T@Ref)
(declare-fun v2_9 () T@Ref)
(declare-fun QPMask@20 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered58 (T@Ref) Bool)
(declare-fun QPMask@19 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered57 (T@Ref) Bool)
(declare-fun QPMask@10 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered72 (T@Ref) Bool)
(declare-fun QPMask@9 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered71 (T@Ref) Bool)
(declare-fun QPMask@8 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered70 (T@Ref) Bool)
(declare-fun QPMask@7 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered69 (T@Ref) Bool)
(declare-fun QPMask@6 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered68 (T@Ref) Bool)
(declare-fun v_25 () T@Ref)
(declare-fun u_25 () T@Ref)
(declare-fun v1_10 () T@Ref)
(declare-fun QPMask@12 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered67 (T@Ref) Bool)
(declare-fun QPMask@11 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered66 (T@Ref) Bool)
(declare-fun n_56 () T@Ref)
(declare-fun QPMask@16 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered63 (T@Ref) Bool)
(declare-fun QPMask@18 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered65 (T@Ref) Bool)
(declare-fun QPMask@17 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered64 (T@Ref) Bool)
(declare-fun QPMask@15 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered62 (T@Ref) Bool)
(declare-fun QPMask@14 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered61 (T@Ref) Bool)
(declare-fun n_55 () T@Ref)
(declare-fun v2_10 () T@Ref)
(declare-fun QPMask@13 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered60 (T@Ref) Bool)
(declare-fun QPMask@5 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered59 (T@Ref) Bool)
(declare-fun n_54 () T@Ref)
(declare-fun n$2_22 () T@Ref)
(declare-fun qpRange54 (T@Ref) Bool)
(declare-fun invRecv54 (T@Ref) T@Ref)
(declare-fun n$0_29 () T@Ref)
(declare-fun qpRange53 (T@Ref) Bool)
(declare-fun invRecv53 (T@Ref) T@Ref)
(set-info :boogie-vc-id unlink_dags)
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
 (=> (= (ControlFlow 0 0) 179) (let ((anon130_Then_correct  (and (=> (= (ControlFlow 0 163) (- 0 165)) (forall ((n_5 T@Ref) ) (!  (=> (and (select g_1 n_5) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_5 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4340:23|
 :skolemid |462|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_5 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@4) n_5 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_5 next))
))) (=> (forall ((n_5@@0 T@Ref) ) (!  (=> (and (select g_1 n_5@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_5@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4340:23|
 :skolemid |462|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_5@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@4) n_5@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_5@@0 next))
)) (and (=> (= (ControlFlow 0 163) (- 0 164)) (forall ((n_5@@1 T@Ref) (n_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@1 n_5_1)) (select g_1 n_5@@1)) (select g_1 n_5_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_5@@1 n_5_1)))
 :qid |stdinbpl.4347:23|
 :skolemid |463|
 :pattern ( (neverTriggered56 n_5@@1) (neverTriggered56 n_5_1))
))) (=> (forall ((n_5@@2 T@Ref) (n_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@2 n_5_1@@0)) (select g_1 n_5@@2)) (select g_1 n_5_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_5@@2 n_5_1@@0)))
 :qid |stdinbpl.4347:23|
 :skolemid |463|
 :pattern ( (neverTriggered56 n_5@@2) (neverTriggered56 n_5_1@@0))
)) (=> (= (ControlFlow 0 163) (- 0 162)) (forall ((n_5@@3 T@Ref) ) (!  (=> (select g_1 n_5@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_5@@3 next) NoPerm)))
 :qid |stdinbpl.4354:23|
 :skolemid |464|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@4) n_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_5@@3 next))
)))))))))
(let ((anon129_Then_correct  (and (=> (= (ControlFlow 0 159) (- 0 161)) (forall ((n_4 T@Ref) ) (!  (=> (and (select g_1 n_4) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_4 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4297:23|
 :skolemid |457|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_4 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@3) n_4 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_4 next))
))) (=> (forall ((n_4@@0 T@Ref) ) (!  (=> (and (select g_1 n_4@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_4@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4297:23|
 :skolemid |457|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_4@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@3) n_4@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_4@@0 next))
)) (and (=> (= (ControlFlow 0 159) (- 0 160)) (forall ((n_4@@1 T@Ref) (n_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4@@1 n_4_1)) (select g_1 n_4@@1)) (select g_1 n_4_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_4@@1 n_4_1)))
 :qid |stdinbpl.4304:23|
 :skolemid |458|
 :pattern ( (neverTriggered55 n_4@@1) (neverTriggered55 n_4_1))
))) (=> (forall ((n_4@@2 T@Ref) (n_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4@@2 n_4_1@@0)) (select g_1 n_4@@2)) (select g_1 n_4_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_4@@2 n_4_1@@0)))
 :qid |stdinbpl.4304:23|
 :skolemid |458|
 :pattern ( (neverTriggered55 n_4@@2) (neverTriggered55 n_4_1@@0))
)) (=> (= (ControlFlow 0 159) (- 0 158)) (forall ((n_4@@3 T@Ref) ) (!  (=> (select g_1 n_4@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@2) n_4@@3 next) NoPerm)))
 :qid |stdinbpl.4311:23|
 :skolemid |459|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@3) n_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_4@@3 next))
)))))))))
(let ((anon36_correct true))
(let ((anon136_Else_correct  (=> (and (not (= v1_9 x@@6)) (= (ControlFlow 0 152) 148)) anon36_correct)))
(let ((anon136_Then_correct  (=> (= v1_9 x@@6) (and (=> (= (ControlFlow 0 150) (- 0 151)) (HasDirectPerm_40180_40181 QPMask@0 x@@6 next)) (=> (HasDirectPerm_40180_40181 QPMask@0 x@@6 next) (=> (= (ControlFlow 0 150) 148) anon36_correct))))))
(let ((anon135_Then_correct  (=> (edge ($$ Heap@@29 g_1) v1_9 v2_9) (and (=> (= (ControlFlow 0 153) 150) anon136_Then_correct) (=> (= (ControlFlow 0 153) 152) anon136_Else_correct)))))
(let ((anon135_Else_correct  (=> (and (not (edge ($$ Heap@@29 g_1) v1_9 v2_9)) (= (ControlFlow 0 149) 148)) anon36_correct)))
(let ((anon134_Then_correct  (and (=> (= (ControlFlow 0 145) (- 0 147)) (forall ((n_7 T@Ref) ) (!  (=> (and (select g_1 n_7) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_7 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4435:25|
 :skolemid |472|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_7 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@20) n_7 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_7 next))
))) (=> (forall ((n_7@@0 T@Ref) ) (!  (=> (and (select g_1 n_7@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_7@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4435:25|
 :skolemid |472|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_7@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@20) n_7@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_7@@0 next))
)) (and (=> (= (ControlFlow 0 145) (- 0 146)) (forall ((n_7@@1 T@Ref) (n_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@1 n_7_1)) (select g_1 n_7@@1)) (select g_1 n_7_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_7@@1 n_7_1)))
 :qid |stdinbpl.4442:25|
 :skolemid |473|
 :pattern ( (neverTriggered58 n_7@@1) (neverTriggered58 n_7_1))
))) (=> (forall ((n_7@@2 T@Ref) (n_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@2 n_7_1@@0)) (select g_1 n_7@@2)) (select g_1 n_7_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_7@@2 n_7_1@@0)))
 :qid |stdinbpl.4442:25|
 :skolemid |473|
 :pattern ( (neverTriggered58 n_7@@2) (neverTriggered58 n_7_1@@0))
)) (=> (= (ControlFlow 0 145) (- 0 144)) (forall ((n_7@@3 T@Ref) ) (!  (=> (select g_1 n_7@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_7@@3 next) NoPerm)))
 :qid |stdinbpl.4449:25|
 :skolemid |474|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@20) n_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_7@@3 next))
)))))))))
(let ((anon133_Then_correct  (and (=> (= (ControlFlow 0 141) (- 0 143)) (forall ((n_6 T@Ref) ) (!  (=> (and (select g_1 n_6) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_6 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4392:25|
 :skolemid |467|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_6 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@19) n_6 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_6 next))
))) (=> (forall ((n_6@@0 T@Ref) ) (!  (=> (and (select g_1 n_6@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_6@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4392:25|
 :skolemid |467|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_6@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@19) n_6@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_6@@0 next))
)) (and (=> (= (ControlFlow 0 141) (- 0 142)) (forall ((n_6@@1 T@Ref) (n_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@1 n_6_1)) (select g_1 n_6@@1)) (select g_1 n_6_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_6@@1 n_6_1)))
 :qid |stdinbpl.4399:25|
 :skolemid |468|
 :pattern ( (neverTriggered57 n_6@@1) (neverTriggered57 n_6_1))
))) (=> (forall ((n_6@@2 T@Ref) (n_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@2 n_6_1@@0)) (select g_1 n_6@@2)) (select g_1 n_6_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_6@@2 n_6_1@@0)))
 :qid |stdinbpl.4399:25|
 :skolemid |468|
 :pattern ( (neverTriggered57 n_6@@2) (neverTriggered57 n_6_1@@0))
)) (=> (= (ControlFlow 0 141) (- 0 140)) (forall ((n_6@@3 T@Ref) ) (!  (=> (select g_1 n_6@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@2) n_6@@3 next) NoPerm)))
 :qid |stdinbpl.4406:25|
 :skolemid |469|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@19) n_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_6@@3 next))
)))))))))
(let ((anon173_Then_correct  (and (=> (= (ControlFlow 0 118) (- 0 120)) (forall ((n_17 T@Ref) ) (!  (=> (and (select g_1 n_17) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_17 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5073:45|
 :skolemid |545|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_17 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@10) n_17 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_17 next))
))) (=> (forall ((n_17@@0 T@Ref) ) (!  (=> (and (select g_1 n_17@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_17@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5073:45|
 :skolemid |545|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_17@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@10) n_17@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_17@@0 next))
)) (and (=> (= (ControlFlow 0 118) (- 0 119)) (forall ((n_17@@1 T@Ref) (n_17_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_17@@1 n_17_1)) (select g_1 n_17@@1)) (select g_1 n_17_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_17@@1 n_17_1)))
 :qid |stdinbpl.5080:45|
 :skolemid |546|
 :pattern ( (neverTriggered72 n_17@@1) (neverTriggered72 n_17_1))
))) (=> (forall ((n_17@@2 T@Ref) (n_17_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_17@@2 n_17_1@@0)) (select g_1 n_17@@2)) (select g_1 n_17_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_17@@2 n_17_1@@0)))
 :qid |stdinbpl.5080:45|
 :skolemid |546|
 :pattern ( (neverTriggered72 n_17@@2) (neverTriggered72 n_17_1@@0))
)) (=> (= (ControlFlow 0 118) (- 0 117)) (forall ((n_17@@3 T@Ref) ) (!  (=> (select g_1 n_17@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_17@@3 next) NoPerm)))
 :qid |stdinbpl.5087:45|
 :skolemid |547|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_17@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@10) n_17@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_17@@3 next))
)))))))))
(let ((anon171_Then_correct  (and (=> (= (ControlFlow 0 113) (- 0 115)) (forall ((n_16_1 T@Ref) ) (!  (=> (and (select g_1 n_16_1) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_16_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5030:43|
 :skolemid |540|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_16_1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@9) n_16_1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_16_1 next))
))) (=> (forall ((n_16_1@@0 T@Ref) ) (!  (=> (and (select g_1 n_16_1@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_16_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5030:43|
 :skolemid |540|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_16_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@9) n_16_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_16_1@@0 next))
)) (and (=> (= (ControlFlow 0 113) (- 0 114)) (forall ((n_16_1@@1 T@Ref) (n_16_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_16_1@@1 n_16_2)) (select g_1 n_16_1@@1)) (select g_1 n_16_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_16_1@@1 n_16_2)))
 :qid |stdinbpl.5037:43|
 :skolemid |541|
 :pattern ( (neverTriggered71 n_16_1@@1) (neverTriggered71 n_16_2))
))) (=> (forall ((n_16_1@@2 T@Ref) (n_16_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_16_1@@2 n_16_2@@0)) (select g_1 n_16_1@@2)) (select g_1 n_16_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_16_1@@2 n_16_2@@0)))
 :qid |stdinbpl.5037:43|
 :skolemid |541|
 :pattern ( (neverTriggered71 n_16_1@@2) (neverTriggered71 n_16_2@@0))
)) (=> (= (ControlFlow 0 113) (- 0 112)) (forall ((n_16_1@@3 T@Ref) ) (!  (=> (select g_1 n_16_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_16_1@@3 next) NoPerm)))
 :qid |stdinbpl.5044:43|
 :skolemid |542|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_16_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@9) n_16_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_16_1@@3 next))
)))))))))
(let ((anon169_Then_correct  (and (=> (= (ControlFlow 0 108) (- 0 110)) (forall ((n_15 T@Ref) ) (!  (=> (and (select g_1 n_15) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_15 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4989:41|
 :skolemid |535|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_15 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) n_15 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_15 next))
))) (=> (forall ((n_15@@0 T@Ref) ) (!  (=> (and (select g_1 n_15@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_15@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4989:41|
 :skolemid |535|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_15@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) n_15@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_15@@0 next))
)) (and (=> (= (ControlFlow 0 108) (- 0 109)) (forall ((n_15@@1 T@Ref) (n_15_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15@@1 n_15_1)) (select g_1 n_15@@1)) (select g_1 n_15_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_15@@1 n_15_1)))
 :qid |stdinbpl.4996:41|
 :skolemid |536|
 :pattern ( (neverTriggered70 n_15@@1) (neverTriggered70 n_15_1))
))) (=> (forall ((n_15@@2 T@Ref) (n_15_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15@@2 n_15_1@@0)) (select g_1 n_15@@2)) (select g_1 n_15_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_15@@2 n_15_1@@0)))
 :qid |stdinbpl.4996:41|
 :skolemid |536|
 :pattern ( (neverTriggered70 n_15@@2) (neverTriggered70 n_15_1@@0))
)) (=> (= (ControlFlow 0 108) (- 0 107)) (forall ((n_15@@3 T@Ref) ) (!  (=> (select g_1 n_15@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_15@@3 next) NoPerm)))
 :qid |stdinbpl.5003:41|
 :skolemid |537|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_15@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) n_15@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_15@@3 next))
)))))))))
(let ((anon167_Then_correct  (and (=> (= (ControlFlow 0 103) (- 0 105)) (forall ((n_14_1 T@Ref) ) (!  (=> (and (select g_1 n_14_1) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4948:39|
 :skolemid |530|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14_1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@7) n_14_1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14_1 next))
))) (=> (forall ((n_14_1@@0 T@Ref) ) (!  (=> (and (select g_1 n_14_1@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4948:39|
 :skolemid |530|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@7) n_14_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14_1@@0 next))
)) (and (=> (= (ControlFlow 0 103) (- 0 104)) (forall ((n_14_1@@1 T@Ref) (n_14_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14_1@@1 n_14_2)) (select g_1 n_14_1@@1)) (select g_1 n_14_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_14_1@@1 n_14_2)))
 :qid |stdinbpl.4955:39|
 :skolemid |531|
 :pattern ( (neverTriggered69 n_14_1@@1) (neverTriggered69 n_14_2))
))) (=> (forall ((n_14_1@@2 T@Ref) (n_14_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14_1@@2 n_14_2@@0)) (select g_1 n_14_1@@2)) (select g_1 n_14_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_14_1@@2 n_14_2@@0)))
 :qid |stdinbpl.4955:39|
 :skolemid |531|
 :pattern ( (neverTriggered69 n_14_1@@2) (neverTriggered69 n_14_2@@0))
)) (=> (= (ControlFlow 0 103) (- 0 102)) (forall ((n_14_1@@3 T@Ref) ) (!  (=> (select g_1 n_14_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_14_1@@3 next) NoPerm)))
 :qid |stdinbpl.4962:39|
 :skolemid |532|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@7) n_14_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14_1@@3 next))
)))))))))
(let ((anon165_Then_correct  (and (=> (= (ControlFlow 0 98) (- 0 100)) (forall ((n_13_2 T@Ref) ) (!  (=> (and (select g_1 n_13_2) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13_2 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4907:37|
 :skolemid |525|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13_2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@6) n_13_2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13_2 next))
))) (=> (forall ((n_13_2@@0 T@Ref) ) (!  (=> (and (select g_1 n_13_2@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13_2@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4907:37|
 :skolemid |525|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@6) n_13_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13_2@@0 next))
)) (and (=> (= (ControlFlow 0 98) (- 0 99)) (forall ((n_13_2@@1 T@Ref) (n_13_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13_2@@1 n_13_3)) (select g_1 n_13_2@@1)) (select g_1 n_13_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_13_2@@1 n_13_3)))
 :qid |stdinbpl.4914:37|
 :skolemid |526|
 :pattern ( (neverTriggered68 n_13_2@@1) (neverTriggered68 n_13_3))
))) (=> (forall ((n_13_2@@2 T@Ref) (n_13_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13_2@@2 n_13_3@@0)) (select g_1 n_13_2@@2)) (select g_1 n_13_3@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_13_2@@2 n_13_3@@0)))
 :qid |stdinbpl.4914:37|
 :skolemid |526|
 :pattern ( (neverTriggered68 n_13_2@@2) (neverTriggered68 n_13_3@@0))
)) (=> (= (ControlFlow 0 98) (- 0 97)) (forall ((n_13_2@@3 T@Ref) ) (!  (=> (select g_1 n_13_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_13_2@@3 next) NoPerm)))
 :qid |stdinbpl.4921:37|
 :skolemid |527|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@6) n_13_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13_2@@3 next))
)))))))))
(let ((anon94_correct true))
(let ((anon172_Then_correct  (=> (exists_path ($$ Heap@@29 g_1) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next) v_25) (and (=> (= (ControlFlow 0 121) 118) anon173_Then_correct) (=> (= (ControlFlow 0 121) 95) anon94_correct)))))
(let ((anon172_Else_correct  (=> (and (not (exists_path ($$ Heap@@29 g_1) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next) v_25)) (= (ControlFlow 0 116) 95)) anon94_correct)))
(let ((anon171_Else_correct  (and (=> (= (ControlFlow 0 122) (- 0 123)) (HasDirectPerm_40180_40181 QPMask@0 x@@6 next)) (=> (HasDirectPerm_40180_40181 QPMask@0 x@@6 next) (and (=> (= (ControlFlow 0 122) 121) anon172_Then_correct) (=> (= (ControlFlow 0 122) 116) anon172_Else_correct))))))
(let ((anon170_Then_correct  (=> (exists_path ($$ Heap@@29 g_1) u_25 x@@6) (and (=> (= (ControlFlow 0 124) 113) anon171_Then_correct) (=> (= (ControlFlow 0 124) 122) anon171_Else_correct)))))
(let ((anon170_Else_correct  (=> (and (not (exists_path ($$ Heap@@29 g_1) u_25 x@@6)) (= (ControlFlow 0 111) 95)) anon94_correct)))
(let ((anon168_Then_correct  (=> (exists_path ($$ Heap@@29 g_1) v1_10 u_25) (and (and (=> (= (ControlFlow 0 125) 108) anon169_Then_correct) (=> (= (ControlFlow 0 125) 124) anon170_Then_correct)) (=> (= (ControlFlow 0 125) 111) anon170_Else_correct)))))
(let ((anon168_Else_correct  (=> (and (not (exists_path ($$ Heap@@29 g_1) v1_10 u_25)) (= (ControlFlow 0 106) 95)) anon94_correct)))
(let ((anon166_Then_correct  (=> (edge ($$ Heap@@29 g_1) u_25 v_25) (and (and (=> (= (ControlFlow 0 126) 103) anon167_Then_correct) (=> (= (ControlFlow 0 126) 125) anon168_Then_correct)) (=> (= (ControlFlow 0 126) 106) anon168_Else_correct)))))
(let ((anon166_Else_correct  (=> (and (not (edge ($$ Heap@@29 g_1) u_25 v_25)) (= (ControlFlow 0 101) 95)) anon94_correct)))
(let ((anon164_Then_correct  (=> (or (not (= u_25 x@@6)) (not (= v_25 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next)))) (and (and (=> (= (ControlFlow 0 127) 98) anon165_Then_correct) (=> (= (ControlFlow 0 127) 126) anon166_Then_correct)) (=> (= (ControlFlow 0 127) 101) anon166_Else_correct)))))
(let ((anon164_Else_correct  (=> (and (not (or (not (= u_25 x@@6)) (not (= v_25 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next))))) (= (ControlFlow 0 96) 95)) anon94_correct)))
(let ((anon163_Else_correct  (=> (not (= u_25 x@@6)) (and (=> (= (ControlFlow 0 130) 127) anon164_Then_correct) (=> (= (ControlFlow 0 130) 96) anon164_Else_correct)))))
(let ((anon163_Then_correct  (=> (not (not (= u_25 x@@6))) (and (=> (= (ControlFlow 0 128) (- 0 129)) (HasDirectPerm_40180_40181 QPMask@0 x@@6 next)) (=> (HasDirectPerm_40180_40181 QPMask@0 x@@6 next) (and (=> (= (ControlFlow 0 128) 127) anon164_Then_correct) (=> (= (ControlFlow 0 128) 96) anon164_Else_correct)))))))
(let ((anon160_Then_correct  (and (=> (= (ControlFlow 0 86) (- 0 88)) (forall ((n$0_9 T@Ref) ) (!  (=> (and (select g_1 n$0_9) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_9 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4850:39|
 :skolemid |519|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_9 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@12) n$0_9 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_9 next))
))) (=> (forall ((n$0_9@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_9@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_9@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4850:39|
 :skolemid |519|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_9@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@12) n$0_9@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_9@@0 next))
)) (and (=> (= (ControlFlow 0 86) (- 0 87)) (forall ((n$0_9@@1 T@Ref) (n$0_9_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_9@@1 n$0_9_1)) (select g_1 n$0_9@@1)) (select g_1 n$0_9_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_9@@1 n$0_9_1)))
 :qid |stdinbpl.4857:39|
 :skolemid |520|
 :pattern ( (neverTriggered67 n$0_9@@1) (neverTriggered67 n$0_9_1))
))) (=> (forall ((n$0_9@@2 T@Ref) (n$0_9_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_9@@2 n$0_9_1@@0)) (select g_1 n$0_9@@2)) (select g_1 n$0_9_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_9@@2 n$0_9_1@@0)))
 :qid |stdinbpl.4857:39|
 :skolemid |520|
 :pattern ( (neverTriggered67 n$0_9@@2) (neverTriggered67 n$0_9_1@@0))
)) (=> (= (ControlFlow 0 86) (- 0 85)) (forall ((n$0_9@@3 T@Ref) ) (!  (=> (select g_1 n$0_9@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n$0_9@@3 next) NoPerm)))
 :qid |stdinbpl.4864:39|
 :skolemid |521|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_9@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@12) n$0_9@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_9@@3 next))
)))))))))
(let ((anon158_Then_correct  (and (=> (= (ControlFlow 0 81) (- 0 83)) (forall ((n$0_8 T@Ref) ) (!  (=> (and (select g_1 n$0_8) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_8 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4809:37|
 :skolemid |514|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_8 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@11) n$0_8 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_8 next))
))) (=> (forall ((n$0_8@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_8@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_8@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4809:37|
 :skolemid |514|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_8@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@11) n$0_8@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_8@@0 next))
)) (and (=> (= (ControlFlow 0 81) (- 0 82)) (forall ((n$0_8@@1 T@Ref) (n$0_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_8@@1 n$0_8_1)) (select g_1 n$0_8@@1)) (select g_1 n$0_8_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_8@@1 n$0_8_1)))
 :qid |stdinbpl.4816:37|
 :skolemid |515|
 :pattern ( (neverTriggered66 n$0_8@@1) (neverTriggered66 n$0_8_1))
))) (=> (forall ((n$0_8@@2 T@Ref) (n$0_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_8@@2 n$0_8_1@@0)) (select g_1 n$0_8@@2)) (select g_1 n$0_8_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_8@@2 n$0_8_1@@0)))
 :qid |stdinbpl.4816:37|
 :skolemid |515|
 :pattern ( (neverTriggered66 n$0_8@@2) (neverTriggered66 n$0_8_1@@0))
)) (=> (= (ControlFlow 0 81) (- 0 80)) (forall ((n$0_8@@3 T@Ref) ) (!  (=> (select g_1 n$0_8@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n$0_8@@3 next) NoPerm)))
 :qid |stdinbpl.4823:37|
 :skolemid |516|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@11) n$0_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_8@@3 next))
)))))))))
(let ((anon74_correct true))
(let ((anon160_Else_correct  (and (=> (= (ControlFlow 0 89) (- 0 90)) (HasDirectPerm_40180_40181 QPMask@0 x@@6 next)) (=> (HasDirectPerm_40180_40181 QPMask@0 x@@6 next) (=> (= (ControlFlow 0 89) 77) anon74_correct)))))
(let ((anon159_Then_correct  (=> (exists_path ($$ Heap@@29 g_1) x@@6 n_56) (and (=> (= (ControlFlow 0 91) 86) anon160_Then_correct) (=> (= (ControlFlow 0 91) 89) anon160_Else_correct)))))
(let ((anon159_Else_correct  (=> (and (not (exists_path ($$ Heap@@29 g_1) x@@6 n_56)) (= (ControlFlow 0 84) 77)) anon74_correct)))
(let ((anon157_Then_correct  (=> (not (= n_56 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next))) (and (and (=> (= (ControlFlow 0 92) 81) anon158_Then_correct) (=> (= (ControlFlow 0 92) 91) anon159_Then_correct)) (=> (= (ControlFlow 0 92) 84) anon159_Else_correct)))))
(let ((anon157_Else_correct  (=> (and (= n_56 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next)) (= (ControlFlow 0 79) 77)) anon74_correct)))
(let ((anon156_Then_correct  (=> (not (= n_56 x@@6)) (and (=> (= (ControlFlow 0 93) (- 0 94)) (HasDirectPerm_40180_40181 QPMask@0 x@@6 next)) (=> (HasDirectPerm_40180_40181 QPMask@0 x@@6 next) (and (=> (= (ControlFlow 0 93) 92) anon157_Then_correct) (=> (= (ControlFlow 0 93) 79) anon157_Else_correct)))))))
(let ((anon156_Else_correct  (=> (and (= n_56 x@@6) (= (ControlFlow 0 78) 77)) anon74_correct)))
(let ((anon149_Then_correct  (and (=> (= (ControlFlow 0 70) (- 0 72)) (forall ((n$0_5 T@Ref) ) (!  (=> (and (select g_1 n$0_5) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_5 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4667:37|
 :skolemid |498|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_5 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@16) n$0_5 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_5 next))
))) (=> (forall ((n$0_5@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_5@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_5@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4667:37|
 :skolemid |498|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_5@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@16) n$0_5@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_5@@0 next))
)) (and (=> (= (ControlFlow 0 70) (- 0 71)) (forall ((n$0_5@@1 T@Ref) (n$0_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_5@@1 n$0_5_1)) (select g_1 n$0_5@@1)) (select g_1 n$0_5_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_5@@1 n$0_5_1)))
 :qid |stdinbpl.4674:37|
 :skolemid |499|
 :pattern ( (neverTriggered63 n$0_5@@1) (neverTriggered63 n$0_5_1))
))) (=> (forall ((n$0_5@@2 T@Ref) (n$0_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_5@@2 n$0_5_1@@0)) (select g_1 n$0_5@@2)) (select g_1 n$0_5_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_5@@2 n$0_5_1@@0)))
 :qid |stdinbpl.4674:37|
 :skolemid |499|
 :pattern ( (neverTriggered63 n$0_5@@2) (neverTriggered63 n$0_5_1@@0))
)) (=> (= (ControlFlow 0 70) (- 0 69)) (forall ((n$0_5@@3 T@Ref) ) (!  (=> (select g_1 n$0_5@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n$0_5@@3 next) NoPerm)))
 :qid |stdinbpl.4681:37|
 :skolemid |500|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@16) n$0_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_5@@3 next))
)))))))))
(let ((anon153_Then_correct  (and (=> (= (ControlFlow 0 59) (- 0 61)) (forall ((n$0_7 T@Ref) ) (!  (=> (and (select g_1 n$0_7) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_7 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4752:39|
 :skolemid |508|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_7 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@18) n$0_7 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_7 next))
))) (=> (forall ((n$0_7@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_7@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_7@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4752:39|
 :skolemid |508|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_7@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@18) n$0_7@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_7@@0 next))
)) (and (=> (= (ControlFlow 0 59) (- 0 60)) (forall ((n$0_7@@1 T@Ref) (n$0_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_7@@1 n$0_7_1)) (select g_1 n$0_7@@1)) (select g_1 n$0_7_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_7@@1 n$0_7_1)))
 :qid |stdinbpl.4759:39|
 :skolemid |509|
 :pattern ( (neverTriggered65 n$0_7@@1) (neverTriggered65 n$0_7_1))
))) (=> (forall ((n$0_7@@2 T@Ref) (n$0_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_7@@2 n$0_7_1@@0)) (select g_1 n$0_7@@2)) (select g_1 n$0_7_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_7@@2 n$0_7_1@@0)))
 :qid |stdinbpl.4759:39|
 :skolemid |509|
 :pattern ( (neverTriggered65 n$0_7@@2) (neverTriggered65 n$0_7_1@@0))
)) (=> (= (ControlFlow 0 59) (- 0 58)) (forall ((n$0_7@@3 T@Ref) ) (!  (=> (select g_1 n$0_7@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n$0_7@@3 next) NoPerm)))
 :qid |stdinbpl.4766:39|
 :skolemid |510|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@18) n$0_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_7@@3 next))
)))))))))
(let ((anon151_Then_correct  (and (=> (= (ControlFlow 0 54) (- 0 56)) (forall ((n$0_6 T@Ref) ) (!  (=> (and (select g_1 n$0_6) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_6 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4709:37|
 :skolemid |503|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_6 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@17) n$0_6 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_6 next))
))) (=> (forall ((n$0_6@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_6@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_6@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4709:37|
 :skolemid |503|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_6@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@17) n$0_6@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_6@@0 next))
)) (and (=> (= (ControlFlow 0 54) (- 0 55)) (forall ((n$0_6@@1 T@Ref) (n$0_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_6@@1 n$0_6_1)) (select g_1 n$0_6@@1)) (select g_1 n$0_6_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_6@@1 n$0_6_1)))
 :qid |stdinbpl.4716:37|
 :skolemid |504|
 :pattern ( (neverTriggered64 n$0_6@@1) (neverTriggered64 n$0_6_1))
))) (=> (forall ((n$0_6@@2 T@Ref) (n$0_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_6@@2 n$0_6_1@@0)) (select g_1 n$0_6@@2)) (select g_1 n$0_6_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_6@@2 n$0_6_1@@0)))
 :qid |stdinbpl.4716:37|
 :skolemid |504|
 :pattern ( (neverTriggered64 n$0_6@@2) (neverTriggered64 n$0_6_1@@0))
)) (=> (= (ControlFlow 0 54) (- 0 53)) (forall ((n$0_6@@3 T@Ref) ) (!  (=> (select g_1 n$0_6@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n$0_6@@3 next) NoPerm)))
 :qid |stdinbpl.4723:37|
 :skolemid |505|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@17) n$0_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_6@@3 next))
)))))))))
(let ((anon147_Then_correct  (and (=> (= (ControlFlow 0 49) (- 0 51)) (forall ((n$0_4 T@Ref) ) (!  (=> (and (select g_1 n$0_4) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_4 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4626:35|
 :skolemid |493|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_4 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@15) n$0_4 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_4 next))
))) (=> (forall ((n$0_4@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_4@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_4@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4626:35|
 :skolemid |493|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_4@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@15) n$0_4@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_4@@0 next))
)) (and (=> (= (ControlFlow 0 49) (- 0 50)) (forall ((n$0_4@@1 T@Ref) (n$0_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_4@@1 n$0_4_1)) (select g_1 n$0_4@@1)) (select g_1 n$0_4_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_4@@1 n$0_4_1)))
 :qid |stdinbpl.4633:35|
 :skolemid |494|
 :pattern ( (neverTriggered62 n$0_4@@1) (neverTriggered62 n$0_4_1))
))) (=> (forall ((n$0_4@@2 T@Ref) (n$0_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_4@@2 n$0_4_1@@0)) (select g_1 n$0_4@@2)) (select g_1 n$0_4_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_4@@2 n$0_4_1@@0)))
 :qid |stdinbpl.4633:35|
 :skolemid |494|
 :pattern ( (neverTriggered62 n$0_4@@2) (neverTriggered62 n$0_4_1@@0))
)) (=> (= (ControlFlow 0 49) (- 0 48)) (forall ((n$0_4@@3 T@Ref) ) (!  (=> (select g_1 n$0_4@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n$0_4@@3 next) NoPerm)))
 :qid |stdinbpl.4640:35|
 :skolemid |495|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@15) n$0_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_4@@3 next))
)))))))))
(let ((anon145_Then_correct  (and (=> (= (ControlFlow 0 44) (- 0 46)) (forall ((n$0_3 T@Ref) ) (!  (=> (and (select g_1 n$0_3) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_3 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4585:33|
 :skolemid |488|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@14) n$0_3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_3 next))
))) (=> (forall ((n$0_3@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_3@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_3@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4585:33|
 :skolemid |488|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_3@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@14) n$0_3@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_3@@0 next))
)) (and (=> (= (ControlFlow 0 44) (- 0 45)) (forall ((n$0_3@@1 T@Ref) (n$0_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3@@1 n$0_3_1)) (select g_1 n$0_3@@1)) (select g_1 n$0_3_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_3@@1 n$0_3_1)))
 :qid |stdinbpl.4592:33|
 :skolemid |489|
 :pattern ( (neverTriggered61 n$0_3@@1) (neverTriggered61 n$0_3_1))
))) (=> (forall ((n$0_3@@2 T@Ref) (n$0_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3@@2 n$0_3_1@@0)) (select g_1 n$0_3@@2)) (select g_1 n$0_3_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_3@@2 n$0_3_1@@0)))
 :qid |stdinbpl.4592:33|
 :skolemid |489|
 :pattern ( (neverTriggered61 n$0_3@@2) (neverTriggered61 n$0_3_1@@0))
)) (=> (= (ControlFlow 0 44) (- 0 43)) (forall ((n$0_3@@3 T@Ref) ) (!  (=> (select g_1 n$0_3@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n$0_3@@3 next) NoPerm)))
 :qid |stdinbpl.4599:33|
 :skolemid |490|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@14) n$0_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_3@@3 next))
)))))))))
(let ((anon63_correct true))
(let ((anon153_Else_correct  (and (=> (= (ControlFlow 0 62) (- 0 63)) (HasDirectPerm_40180_40181 QPMask@0 x@@6 next)) (=> (HasDirectPerm_40180_40181 QPMask@0 x@@6 next) (=> (= (ControlFlow 0 62) 41) anon63_correct)))))
(let ((anon152_Then_correct  (=> (not (exists_path ($$ Heap@@29 g_1) n_55 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next))) (and (=> (= (ControlFlow 0 64) 59) anon153_Then_correct) (=> (= (ControlFlow 0 64) 62) anon153_Else_correct)))))
(let ((anon152_Else_correct  (=> (and (exists_path ($$ Heap@@29 g_1) n_55 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next)) (= (ControlFlow 0 57) 41)) anon63_correct)))
(let ((anon151_Else_correct  (and (=> (= (ControlFlow 0 65) (- 0 66)) (HasDirectPerm_40180_40181 QPMask@0 x@@6 next)) (=> (HasDirectPerm_40180_40181 QPMask@0 x@@6 next) (and (=> (= (ControlFlow 0 65) 64) anon152_Then_correct) (=> (= (ControlFlow 0 65) 57) anon152_Else_correct))))))
(let ((anon150_Then_correct  (=> (not (and (not (exists_path ($$ Heap@@29 g_1) n_55 x@@6)) (not (exists_path ($$ Heap@@29 g_1) x@@6 n_55)))) (and (=> (= (ControlFlow 0 67) 54) anon151_Then_correct) (=> (= (ControlFlow 0 67) 65) anon151_Else_correct)))))
(let ((anon150_Else_correct  (=> (and (and (not (exists_path ($$ Heap@@29 g_1) n_55 x@@6)) (not (exists_path ($$ Heap@@29 g_1) x@@6 n_55))) (= (ControlFlow 0 52) 41)) anon63_correct)))
(let ((anon148_Then_correct  (=> (not (exists_path ($$ Heap@@29 g_1) n_55 x@@6)) (and (and (=> (= (ControlFlow 0 73) 70) anon149_Then_correct) (=> (= (ControlFlow 0 73) 67) anon150_Then_correct)) (=> (= (ControlFlow 0 73) 52) anon150_Else_correct)))))
(let ((anon148_Else_correct  (=> (exists_path ($$ Heap@@29 g_1) n_55 x@@6) (and (=> (= (ControlFlow 0 68) 67) anon150_Then_correct) (=> (= (ControlFlow 0 68) 52) anon150_Else_correct)))))
(let ((anon146_Then_correct  (=> (exists_path ($$ Heap@@29 g_1) n_55 v2_10) (and (and (=> (= (ControlFlow 0 74) 49) anon147_Then_correct) (=> (= (ControlFlow 0 74) 73) anon148_Then_correct)) (=> (= (ControlFlow 0 74) 68) anon148_Else_correct)))))
(let ((anon146_Else_correct  (=> (and (not (exists_path ($$ Heap@@29 g_1) n_55 v2_10)) (= (ControlFlow 0 47) 41)) anon63_correct)))
(let ((anon144_Then_correct  (=> (exists_path ($$ Heap@@29 g_1) v1_10 n_55) (and (and (=> (= (ControlFlow 0 75) 44) anon145_Then_correct) (=> (= (ControlFlow 0 75) 74) anon146_Then_correct)) (=> (= (ControlFlow 0 75) 47) anon146_Else_correct)))))
(let ((anon144_Else_correct  (=> (and (not (exists_path ($$ Heap@@29 g_1) v1_10 n_55)) (= (ControlFlow 0 42) 41)) anon63_correct)))
(let ((anon143_Then_correct  (and (=> (= (ControlFlow 0 38) (- 0 40)) (forall ((n$0_2 T@Ref) ) (!  (=> (and (select g_1 n$0_2) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_2 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4544:31|
 :skolemid |483|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@13) n$0_2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_2 next))
))) (=> (forall ((n$0_2@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_2@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_2@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4544:31|
 :skolemid |483|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@13) n$0_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_2@@0 next))
)) (and (=> (= (ControlFlow 0 38) (- 0 39)) (forall ((n$0_2@@1 T@Ref) (n$0_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2@@1 n$0_2_1)) (select g_1 n$0_2@@1)) (select g_1 n$0_2_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_2@@1 n$0_2_1)))
 :qid |stdinbpl.4551:31|
 :skolemid |484|
 :pattern ( (neverTriggered60 n$0_2@@1) (neverTriggered60 n$0_2_1))
))) (=> (forall ((n$0_2@@2 T@Ref) (n$0_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2@@2 n$0_2_1@@0)) (select g_1 n$0_2@@2)) (select g_1 n$0_2_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_2@@2 n$0_2_1@@0)))
 :qid |stdinbpl.4551:31|
 :skolemid |484|
 :pattern ( (neverTriggered60 n$0_2@@2) (neverTriggered60 n$0_2_1@@0))
)) (=> (= (ControlFlow 0 38) (- 0 37)) (forall ((n$0_2@@3 T@Ref) ) (!  (=> (select g_1 n$0_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n$0_2@@3 next) NoPerm)))
 :qid |stdinbpl.4558:31|
 :skolemid |485|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@13) n$0_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_2@@3 next))
)))))))))
(let ((anon95_correct true))
(let ((anon161_Then_correct  (=> (not (exists ((n_12 T@Ref) ) (!  (and (not (= n_12 x@@6)) (and (not (= n_12 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next))) (and (exists_path ($$ Heap@@29 g_1) x@@6 n_12) (exists_path ($$ Heap@@29 g_1) n_12 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next)))))
 :qid |stdinbpl.4889:30|
 :skolemid |524|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) x@@6 n_12))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) n_12 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next)))
))) (and (and (=> (= (ControlFlow 0 131) 33) anon95_correct) (=> (= (ControlFlow 0 131) 128) anon163_Then_correct)) (=> (= (ControlFlow 0 131) 130) anon163_Else_correct)))))
(let ((anon161_Else_correct  (=> (and (exists ((n_12@@0 T@Ref) ) (!  (and (not (= n_12@@0 x@@6)) (and (not (= n_12@@0 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next))) (and (exists_path ($$ Heap@@29 g_1) x@@6 n_12@@0) (exists_path ($$ Heap@@29 g_1) n_12@@0 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next)))))
 :qid |stdinbpl.4889:30|
 :skolemid |524|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) x@@6 n_12@@0))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) n_12@@0 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next)))
)) (= (ControlFlow 0 76) 33)) anon95_correct)))
(let ((anon154_Then_correct  (=> (not (exists ((n_10_1 T@Ref) ) (!  (and (exists_path ($$ Heap@@29 g_1) v1_10 n_10_1) (and (exists_path ($$ Heap@@29 g_1) n_10_1 v2_10) (or (and (not (exists_path ($$ Heap@@29 g_1) n_10_1 x@@6)) (not (exists_path ($$ Heap@@29 g_1) x@@6 n_10_1))) (and (not (exists_path ($$ Heap@@29 g_1) n_10_1 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next))) (not (exists_path ($$ Heap@@29 g_1) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next) n_10_1))))))
 :qid |stdinbpl.4792:28|
 :skolemid |513|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) v1_10 n_10_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) n_10_1 v2_10))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) n_10_1 x@@6))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) x@@6 n_10_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) n_10_1 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next)))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next) n_10_1))
))) (and (and (and (=> (= (ControlFlow 0 132) 131) anon161_Then_correct) (=> (= (ControlFlow 0 132) 76) anon161_Else_correct)) (=> (= (ControlFlow 0 132) 93) anon156_Then_correct)) (=> (= (ControlFlow 0 132) 78) anon156_Else_correct)))))
(let ((anon154_Else_correct  (=> (and (exists ((n_10_1@@0 T@Ref) ) (!  (and (exists_path ($$ Heap@@29 g_1) v1_10 n_10_1@@0) (and (exists_path ($$ Heap@@29 g_1) n_10_1@@0 v2_10) (or (and (not (exists_path ($$ Heap@@29 g_1) n_10_1@@0 x@@6)) (not (exists_path ($$ Heap@@29 g_1) x@@6 n_10_1@@0))) (and (not (exists_path ($$ Heap@@29 g_1) n_10_1@@0 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next))) (not (exists_path ($$ Heap@@29 g_1) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next) n_10_1@@0))))))
 :qid |stdinbpl.4792:28|
 :skolemid |513|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) v1_10 n_10_1@@0))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) n_10_1@@0 v2_10))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) n_10_1@@0 x@@6))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) x@@6 n_10_1@@0))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) n_10_1@@0 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next)))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next) n_10_1@@0))
)) (= (ControlFlow 0 36) 33)) anon95_correct)))
(let ((anon141_Then_correct  (=> (not (= v1_10 v2_10)) (and (and (and (and (=> (= (ControlFlow 0 133) 132) anon154_Then_correct) (=> (= (ControlFlow 0 133) 36) anon154_Else_correct)) (=> (= (ControlFlow 0 133) 38) anon143_Then_correct)) (=> (= (ControlFlow 0 133) 75) anon144_Then_correct)) (=> (= (ControlFlow 0 133) 42) anon144_Else_correct)))))
(let ((anon141_Else_correct  (=> (and (= v1_10 v2_10) (= (ControlFlow 0 35) 33)) anon95_correct)))
(let ((anon140_Then_correct  (=> (not (= v1_10 v2_10)) (and (=> (= (ControlFlow 0 134) 133) anon141_Then_correct) (=> (= (ControlFlow 0 134) 35) anon141_Else_correct)))))
(let ((anon140_Else_correct  (=> (and (= v1_10 v2_10) (= (ControlFlow 0 34) 33)) anon95_correct)))
(let ((anon139_Then_correct  (and (=> (= (ControlFlow 0 30) (- 0 32)) (forall ((n_8 T@Ref) ) (!  (=> (and (select g_1 n_8) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_8 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4498:25|
 :skolemid |478|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_8 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) n_8 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_8 next))
))) (=> (forall ((n_8@@0 T@Ref) ) (!  (=> (and (select g_1 n_8@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_8@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4498:25|
 :skolemid |478|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_8@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) n_8@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_8@@0 next))
)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (forall ((n_8@@1 T@Ref) (n_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@1 n_8_1)) (select g_1 n_8@@1)) (select g_1 n_8_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_8@@1 n_8_1)))
 :qid |stdinbpl.4505:25|
 :skolemid |479|
 :pattern ( (neverTriggered59 n_8@@1) (neverTriggered59 n_8_1))
))) (=> (forall ((n_8@@2 T@Ref) (n_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@2 n_8_1@@0)) (select g_1 n_8@@2)) (select g_1 n_8_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_8@@2 n_8_1@@0)))
 :qid |stdinbpl.4505:25|
 :skolemid |479|
 :pattern ( (neverTriggered59 n_8@@2) (neverTriggered59 n_8_1@@0))
)) (=> (= (ControlFlow 0 30) (- 0 29)) (forall ((n_8@@3 T@Ref) ) (!  (=> (select g_1 n_8@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@2) n_8@@3 next) NoPerm)))
 :qid |stdinbpl.4512:25|
 :skolemid |480|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) n_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_8@@3 next))
)))))))))
(let ((anon97_correct true))
(let ((anon138_Else_correct  (=> (and (forall ((v1_3 T@Ref) (v2_3 T@Ref) ) (! (= (exists_path ($$ PostHeap@0 g_1) v1_3 v2_3)  (or (= v1_3 v2_3) (and (not (= v1_3 v2_3)) (or (exists ((n_18 T@Ref) ) (!  (and (exists_path ($$ Heap@@29 g_1) v1_3 n_18) (and (exists_path ($$ Heap@@29 g_1) n_18 v2_3) (or (and (not (exists_path ($$ Heap@@29 g_1) n_18 x@@6)) (not (exists_path ($$ Heap@@29 g_1) x@@6 n_18))) (and (not (exists_path ($$ Heap@@29 g_1) n_18 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next))) (not (exists_path ($$ Heap@@29 g_1) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next) n_18))))))
 :qid |stdinbpl.5120:106|
 :skolemid |550|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) v1_3 n_18))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) n_18 v2_3))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) n_18 x@@6))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) x@@6 n_18))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) n_18 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next)))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next) n_18))
)) (or (exists ((n_19 T@Ref) ) (!  (and (not (= n_19 x@@6)) (and (not (= n_19 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next))) (and (exists_path ($$ Heap@@29 g_1) x@@6 n_19) (exists_path ($$ Heap@@29 g_1) n_19 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next)))))
 :qid |stdinbpl.5123:23|
 :skolemid |551|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) x@@6 n_19))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) n_19 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next)))
)) (exists ((u_1_1@@1 T@Ref) (v_1_1@@1 T@Ref) ) (!  (and (or (not (= u_1_1@@1 x@@6)) (not (= v_1_1@@1 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next)))) (and (edge ($$ Heap@@29 g_1) u_1_1@@1 v_1_1@@1) (and (exists_path ($$ Heap@@29 g_1) v1_3 u_1_1@@1) (and (exists_path ($$ Heap@@29 g_1) u_1_1@@1 x@@6) (and (exists_path ($$ Heap@@29 g_1) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next) v_1_1@@1) (exists_path ($$ Heap@@29 g_1) v_1_1@@1 v2_3))))))
 :qid |stdinbpl.5126:22|
 :skolemid |552|
 :pattern ( (edge (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) u_1_1@@1 v_1_1@@1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) v1_3 u_1_1@@1) (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next) v_1_1@@1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) v1_3 u_1_1@@1) (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) v_1_1@@1 v2_3))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) u_1_1@@1 x@@6) (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next) v_1_1@@1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) u_1_1@@1 x@@6) (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g_1)) g_1) v_1_1@@1 v2_3))
)))))))
 :qid |stdinbpl.5118:22|
 :skolemid |553|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| PostHeap@0 g_1)) g_1) v1_3 v2_3))
)) (= (ControlFlow 0 28) 26)) anon97_correct)))
(let ((anon137_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next) null)) (state PostHeap@0 QPMask@2)) (and (and (and (=> (= (ControlFlow 0 135) 28) anon138_Else_correct) (=> (= (ControlFlow 0 135) 30) anon139_Then_correct)) (=> (= (ControlFlow 0 135) 134) anon140_Then_correct)) (=> (= (ControlFlow 0 135) 34) anon140_Else_correct)))))
(let ((anon137_Else_correct  (=> (and (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next) null) (= (ControlFlow 0 27) 26)) anon97_correct)))
(let ((anon38_correct  (=> (state PostHeap@0 QPMask@2) (and (=> (= (ControlFlow 0 136) (- 0 137)) (HasDirectPerm_40180_40181 QPMask@0 x@@6 next)) (=> (HasDirectPerm_40180_40181 QPMask@0 x@@6 next) (and (=> (= (ControlFlow 0 136) 135) anon137_Then_correct) (=> (= (ControlFlow 0 136) 27) anon137_Else_correct)))))))
(let ((anon132_Else_correct  (=> (and (forall ((v1_1 T@Ref) (v2_1 T@Ref) ) (! (= (edge ($$ PostHeap@0 g_1) v1_1 v2_1)  (and (edge ($$ Heap@@29 g_1) v1_1 v2_1) (not (and (= v1_1 x@@6) (= v2_1 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next))))))
 :qid |stdinbpl.4475:22|
 :skolemid |477|
 :pattern ( (edge (|$$#frame| (FrameFragment_6369 (|$$#condqp1| PostHeap@0 g_1)) g_1) v1_1 v2_1))
)) (= (ControlFlow 0 139) 136)) anon38_correct)))
(let ((anon131_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next) null)) (state PostHeap@0 QPMask@2)) (and (and (and (and (=> (= (ControlFlow 0 154) 139) anon132_Else_correct) (=> (= (ControlFlow 0 154) 141) anon133_Then_correct)) (=> (= (ControlFlow 0 154) 145) anon134_Then_correct)) (=> (= (ControlFlow 0 154) 153) anon135_Then_correct)) (=> (= (ControlFlow 0 154) 149) anon135_Else_correct)))))
(let ((anon131_Else_correct  (=> (and (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next) null) (= (ControlFlow 0 138) 136)) anon38_correct)))
(let ((anon27_correct  (=> (state PostHeap@0 QPMask@2) (and (=> (= (ControlFlow 0 155) (- 0 156)) (HasDirectPerm_40180_40181 QPMask@0 x@@6 next)) (=> (HasDirectPerm_40180_40181 QPMask@0 x@@6 next) (and (=> (= (ControlFlow 0 155) 154) anon131_Then_correct) (=> (= (ControlFlow 0 155) 138) anon131_Else_correct)))))))
(let ((anon130_Else_correct  (=> (and (|Set#Equal_40187| ($$ PostHeap@0 g_1) ($$ Heap@@29 g_1)) (= (ControlFlow 0 166) 155)) anon27_correct)))
(let ((anon128_Then_correct  (=> (and (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next) null) (state PostHeap@0 QPMask@2)) (and (and (=> (= (ControlFlow 0 167) 159) anon129_Then_correct) (=> (= (ControlFlow 0 167) 163) anon130_Then_correct)) (=> (= (ControlFlow 0 167) 166) anon130_Else_correct)))))
(let ((anon128_Else_correct  (=> (and (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x@@6 next) null)) (= (ControlFlow 0 157) 155)) anon27_correct)))
(let ((anon126_Else_correct  (=> (and (forall ((n_3 T@Ref) ) (!  (=> (and (select g_1 n_3) (not (= n_3 x@@6))) (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_3 next) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_3 next)))
 :qid |stdinbpl.4276:20|
 :skolemid |456|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_3 next))
)) (state PostHeap@0 QPMask@2)) (and (=> (= (ControlFlow 0 168) (- 0 169)) (HasDirectPerm_40180_40181 QPMask@0 x@@6 next)) (=> (HasDirectPerm_40180_40181 QPMask@0 x@@6 next) (and (=> (= (ControlFlow 0 168) 167) anon128_Then_correct) (=> (= (ControlFlow 0 168) 157) anon128_Else_correct)))))))
(let ((anon20_correct true))
(let ((anon127_Else_correct  (=> (and (not (and (select g_1 n_54) (not (= n_54 x@@6)))) (= (ControlFlow 0 25) 21)) anon20_correct)))
(let ((anon127_Then_correct  (=> (and (select g_1 n_54) (not (= n_54 x@@6))) (and (=> (= (ControlFlow 0 22) (- 0 24)) (HasDirectPerm_40180_40181 QPMask@2 n_54 next)) (=> (HasDirectPerm_40180_40181 QPMask@2 n_54 next) (and (=> (= (ControlFlow 0 22) (- 0 23)) (HasDirectPerm_40180_40181 QPMask@0 n_54 next)) (=> (HasDirectPerm_40180_40181 QPMask@0 n_54 next) (=> (= (ControlFlow 0 22) 21) anon20_correct))))))))
(let ((anon123_Else_correct  (=> (and (forall ((n$2_1 T@Ref) ) (!  (=> (and (select g_1 n$2_1) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$2_1 next) null))) (select g_1 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$2_1 next)))
 :qid |stdinbpl.4254:20|
 :skolemid |455|
 :pattern ( (select g_1 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$2_1 next)))
 :pattern ( (select g_1 n$2_1) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$2_1 next))
)) (state PostHeap@0 QPMask@2)) (and (=> (= (ControlFlow 0 170) (- 0 171)) (HasDirectPerm_40180_40181 QPMask@2 x@@6 next)) (=> (HasDirectPerm_40180_40181 QPMask@2 x@@6 next) (=> (and (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) x@@6 next) null) (state PostHeap@0 QPMask@2)) (and (and (=> (= (ControlFlow 0 170) 168) anon126_Else_correct) (=> (= (ControlFlow 0 170) 22) anon127_Then_correct)) (=> (= (ControlFlow 0 170) 25) anon127_Else_correct))))))))
(let ((anon16_correct true))
(let ((anon125_Else_correct  (=> (and (not (and (select g_1 n$2_22) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$2_22 next) null)))) (= (ControlFlow 0 17) 14)) anon16_correct)))
(let ((anon125_Then_correct  (=> (and (select g_1 n$2_22) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$2_22 next) null))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (HasDirectPerm_40180_40181 QPMask@2 n$2_22 next)) (=> (HasDirectPerm_40180_40181 QPMask@2 n$2_22 next) (=> (= (ControlFlow 0 15) 14) anon16_correct))))))
(let ((anon124_Else_correct  (=> (not (select g_1 n$2_22)) (and (=> (= (ControlFlow 0 20) 15) anon125_Then_correct) (=> (= (ControlFlow 0 20) 17) anon125_Else_correct)))))
(let ((anon124_Then_correct  (=> (select g_1 n$2_22) (and (=> (= (ControlFlow 0 18) (- 0 19)) (HasDirectPerm_40180_40181 QPMask@2 n$2_22 next)) (=> (HasDirectPerm_40180_40181 QPMask@2 n$2_22 next) (and (=> (= (ControlFlow 0 18) 15) anon125_Then_correct) (=> (= (ControlFlow 0 18) 17) anon125_Else_correct)))))))
(let ((anon122_Else_correct  (and (=> (= (ControlFlow 0 172) (- 0 173)) (forall ((n$1_1 T@Ref) (n$1_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1 n$1_1_1)) (select g_1 n$1_1)) (select g_1 n$1_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_1 n$1_1_1)))
 :qid |stdinbpl.4209:15|
 :skolemid |449|
))) (=> (forall ((n$1_1@@0 T@Ref) (n$1_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1@@0 n$1_1_1@@0)) (select g_1 n$1_1@@0)) (select g_1 n$1_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_1@@0 n$1_1_1@@0)))
 :qid |stdinbpl.4209:15|
 :skolemid |449|
)) (=> (and (and (forall ((n$1_1@@1 T@Ref) ) (!  (=> (and (select g_1 n$1_1@@1) (< NoPerm FullPerm)) (and (qpRange54 n$1_1@@1) (= (invRecv54 n$1_1@@1) n$1_1@@1)))
 :qid |stdinbpl.4215:22|
 :skolemid |450|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@2) n$1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$1_1@@1 next))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv54 o_9)) (< NoPerm FullPerm)) (qpRange54 o_9)) (= (invRecv54 o_9) o_9))
 :qid |stdinbpl.4219:22|
 :skolemid |451|
 :pattern ( (invRecv54 o_9))
))) (and (forall ((n$1_1@@2 T@Ref) ) (!  (=> (select g_1 n$1_1@@2) (not (= n$1_1@@2 null)))
 :qid |stdinbpl.4225:22|
 :skolemid |452|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@2) n$1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$1_1@@2 next))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv54 o_9@@0)) (< NoPerm FullPerm)) (qpRange54 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv54 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@2) o_9@@0 next) (+ (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_9@@0 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv54 o_9@@0)) (< NoPerm FullPerm)) (qpRange54 o_9@@0))) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@2) o_9@@0 next) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_9@@0 next))))
 :qid |stdinbpl.4231:22|
 :skolemid |453|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@2) o_9@@0 next))
)))) (=> (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_61502_53) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@2) o_9@@1 f_5)))
 :qid |stdinbpl.4235:29|
 :skolemid |454|
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@2) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_61515_61516) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@2) o_9@@2 f_5@@0)))
 :qid |stdinbpl.4235:29|
 :skolemid |454|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@2) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_40180_203868) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@2) o_9@@3 f_5@@1)))
 :qid |stdinbpl.4235:29|
 :skolemid |454|
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@2) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_40180_204001) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@2) o_9@@4 f_5@@2)))
 :qid |stdinbpl.4235:29|
 :skolemid |454|
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@2) o_9@@4 f_5@@2))
))) (state PostHeap@0 QPMask@2)) (and (and (=> (= (ControlFlow 0 172) 170) anon123_Else_correct) (=> (= (ControlFlow 0 172) 18) anon124_Then_correct)) (=> (= (ControlFlow 0 172) 20) anon124_Else_correct))))))))
(let ((anon122_Then_correct true))
(let ((anon121_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (not (select g_1 null))) (and (=> (= (ControlFlow 0 174) 13) anon122_Then_correct) (=> (= (ControlFlow 0 174) 172) anon122_Else_correct)))))
(let ((anon121_Else_correct true))
(let ((anon118_Else_correct  (=> (and (forall ((n$0_1 T@Ref) ) (!  (=> (and (select g_1 n$0_1) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_1 next) null))) (select g_1 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_1 next)))
 :qid |stdinbpl.4185:20|
 :skolemid |448|
 :pattern ( (select g_1 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_1 next)))
 :pattern ( (select g_1 n$0_1) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_1 next))
)) (state Heap@@29 QPMask@0)) (and (=> (= (ControlFlow 0 175) 174) anon121_Then_correct) (=> (= (ControlFlow 0 175) 10) anon121_Else_correct)))))
(let ((anon7_correct true))
(let ((anon120_Else_correct  (=> (and (not (and (select g_1 n$0_29) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_29 next) null)))) (= (ControlFlow 0 5) 2)) anon7_correct)))
(let ((anon120_Then_correct  (=> (and (select g_1 n$0_29) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_29 next) null))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_40180_40181 QPMask@0 n$0_29 next)) (=> (HasDirectPerm_40180_40181 QPMask@0 n$0_29 next) (=> (= (ControlFlow 0 3) 2) anon7_correct))))))
(let ((anon119_Else_correct  (=> (not (select g_1 n$0_29)) (and (=> (= (ControlFlow 0 8) 3) anon120_Then_correct) (=> (= (ControlFlow 0 8) 5) anon120_Else_correct)))))
(let ((anon119_Then_correct  (=> (select g_1 n$0_29) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_40180_40181 QPMask@0 n$0_29 next)) (=> (HasDirectPerm_40180_40181 QPMask@0 n$0_29 next) (and (=> (= (ControlFlow 0 6) 3) anon120_Then_correct) (=> (= (ControlFlow 0 6) 5) anon120_Else_correct)))))))
(let ((anon117_Else_correct  (and (=> (= (ControlFlow 0 176) (- 0 177)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select g_1 n_1)) (select g_1 n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.4140:15|
 :skolemid |442|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select g_1 n_1@@0)) (select g_1 n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.4140:15|
 :skolemid |442|
)) (=> (and (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select g_1 n_1@@1) (< NoPerm FullPerm)) (and (qpRange53 n_1@@1) (= (invRecv53 n_1@@1) n_1@@1)))
 :qid |stdinbpl.4146:22|
 :skolemid |443|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_1@@1 next))
)) (forall ((o_9@@5 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv53 o_9@@5)) (< NoPerm FullPerm)) (qpRange53 o_9@@5)) (= (invRecv53 o_9@@5) o_9@@5))
 :qid |stdinbpl.4150:22|
 :skolemid |444|
 :pattern ( (invRecv53 o_9@@5))
))) (and (forall ((n_1@@2 T@Ref) ) (!  (=> (select g_1 n_1@@2) (not (= n_1@@2 null)))
 :qid |stdinbpl.4156:22|
 :skolemid |445|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_1@@2 next))
)) (forall ((o_9@@6 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv53 o_9@@6)) (< NoPerm FullPerm)) (qpRange53 o_9@@6)) (and (=> (< NoPerm FullPerm) (= (invRecv53 o_9@@6) o_9@@6)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_9@@6 next) (+ (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_9@@6 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv53 o_9@@6)) (< NoPerm FullPerm)) (qpRange53 o_9@@6))) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_9@@6 next) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_9@@6 next))))
 :qid |stdinbpl.4162:22|
 :skolemid |446|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_9@@6 next))
)))) (=> (and (and (and (and (forall ((o_9@@7 T@Ref) (f_5@@3 T@Field_61502_53) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| ZeroMask) o_9@@7 f_5@@3) (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@0) o_9@@7 f_5@@3)))
 :qid |stdinbpl.4166:29|
 :skolemid |447|
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| ZeroMask) o_9@@7 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@0) o_9@@7 f_5@@3))
)) (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_61515_61516) ) (!  (=> (not (= f_5@@4 next)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_9@@8 f_5@@4) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_9@@8 f_5@@4)))
 :qid |stdinbpl.4166:29|
 :skolemid |447|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_9@@8 f_5@@4))
))) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_40180_203868) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| ZeroMask) o_9@@9 f_5@@5) (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@0) o_9@@9 f_5@@5)))
 :qid |stdinbpl.4166:29|
 :skolemid |447|
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| ZeroMask) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@0) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_40180_204001) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| ZeroMask) o_9@@10 f_5@@6) (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@0) o_9@@10 f_5@@6)))
 :qid |stdinbpl.4166:29|
 :skolemid |447|
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| ZeroMask) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@0) o_9@@10 f_5@@6))
))) (state Heap@@29 QPMask@0)) (and (and (=> (= (ControlFlow 0 176) 175) anon118_Else_correct) (=> (= (ControlFlow 0 176) 6) anon119_Then_correct)) (=> (= (ControlFlow 0 176) 8) anon119_Else_correct))))))))
(let ((anon117_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@29 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@29) x@@6 $allocated) (select g_1 x@@6)) (and (state Heap@@29 ZeroMask) (not (select g_1 null)))) (and (=> (= (ControlFlow 0 178) 1) anon117_Then_correct) (=> (= (ControlFlow 0 178) 176) anon117_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 179) 178) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
