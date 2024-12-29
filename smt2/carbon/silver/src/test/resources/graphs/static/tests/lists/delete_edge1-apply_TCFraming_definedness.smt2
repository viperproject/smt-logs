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
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (start T@Ref) (end T@Ref) ) (! (= (exists_path_ EG_1 start end)  (or (= start end) (exists ((w_2 T@Ref) ) (!  (and (edge EG_1 start w_2) (exists_path_ EG_1 w_2 end))
 :qid |stdinbpl.760:70|
 :skolemid |90|
 :pattern ( (edge EG_1 start w_2))
 :pattern ( (exists_path_ EG_1 w_2 end))
))))
 :qid |stdinbpl.758:15|
 :skolemid |91|
 :pattern ( (exists_path EG_1 start end))
 :pattern ( (edge EG_1 start end))
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
(assert (forall ((Heap@@2 T@PolymorphicMapType_61442) (Mask@@0 T@PolymorphicMapType_61463) (g0@@0 (Array T@Ref Bool)) (g1@@0 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@2 Mask@@0) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6369 (|apply_TCFraming#condqp2| Heap@@2 g0@@0 g1@@0)) (FrameFragment_6369 (|apply_TCFraming#condqp3| Heap@@2 g0@@0 g1@@0))) g0@@0 g1@@0))) (=> (|Set#Equal_40372| (|Set#Intersection_40372| g1@@0 g0@@0) |Set#Empty_40375|) (forall ((u_2_1 T@Ref) (v_2_1 T@Ref) ) (!  (=> (and (select g0@@0 u_2_1) (and (select g0@@0 v_2_1) (not (exists_path ($$ Heap@@2 g0@@0) u_2_1 v_2_1)))) (not (exists_path ($$ Heap@@2 (|Set#Union_40369| g0@@0 g1@@0)) u_2_1 v_2_1)))
 :qid |stdinbpl.1041:285|
 :skolemid |129|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@2 g0@@0)) g0@@0) u_2_1 v_2_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@2 (|Set#Union_40369| g0@@0 g1@@0))) (|Set#Union_40369| g0@@0 g1@@0)) u_2_1 v_2_1))
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
(assert (forall ((EG_1@@0 (Array T@EdgeDomainType Bool)) (U_1 (Array T@Ref Bool)) (M (Array T@Ref Bool)) ) (!  (=> (apply_noExit EG_1@@0 U_1 M) (=> (forall ((u_3 T@Ref) (v_2 T@Ref) ) (!  (=> (and (select M u_3) (and (select U_1 v_2) (not (select M v_2)))) (not (edge EG_1@@0 u_3 v_2)))
 :qid |stdinbpl.736:50|
 :skolemid |85|
 :pattern ( (edge EG_1@@0 u_3 v_2))
 :pattern ( (select M u_3) (select M v_2))
)) (forall ((u_1 T@Ref) (v_1_1 T@Ref) ) (!  (=> (and (select M u_1) (and (select U_1 v_1_1) (not (select M v_1_1)))) (not (exists_path EG_1@@0 u_1 v_1_1)))
 :qid |stdinbpl.739:17|
 :skolemid |86|
 :pattern ( (exists_path EG_1@@0 u_1 v_1_1))
 :pattern ( (select M u_1) (select M v_1_1))
))))
 :qid |stdinbpl.734:15|
 :skolemid |87|
 :pattern ( (apply_noExit EG_1@@0 U_1 M))
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
(assert (forall ((Heap@@5 T@PolymorphicMapType_61442) (ExhaleHeap T@PolymorphicMapType_61442) (Mask@@2 T@PolymorphicMapType_61463) (pm_f_37 T@Field_40180_203868) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_40180_203932 Mask@@2 null pm_f_37) (IsPredicateField_40180_203959 pm_f_37)) (= (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@5) null (PredicateMaskField_40180 pm_f_37)) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap) null (PredicateMaskField_40180 pm_f_37)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@2) (IsPredicateField_40180_203959 pm_f_37) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap) null (PredicateMaskField_40180 pm_f_37)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_61442) (ExhaleHeap@@0 T@PolymorphicMapType_61442) (Mask@@3 T@PolymorphicMapType_61463) (pm_f_37@@0 T@Field_40180_203868) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_40180_203932 Mask@@3 null pm_f_37@@0) (IsWandField_40180_205508 pm_f_37@@0)) (= (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@6) null (WandMaskField_40180 pm_f_37@@0)) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@0) null (WandMaskField_40180 pm_f_37@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@3) (IsWandField_40180_205508 pm_f_37@@0) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@0) null (WandMaskField_40180 pm_f_37@@0)))
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
(assert (forall ((Heap@@8 T@PolymorphicMapType_61442) (Mask@@5 T@PolymorphicMapType_61463) (refs@@1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@8 Mask@@5) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (FrameFragment_6369 (|$$#condqp1| Heap@@8 refs@@1)) refs@@1))) (forall ((p_1 T@Ref) (s_2 T@Ref) ) (! (=  (and (select refs@@1 p_1) (and (select refs@@1 s_2) (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@8) p_1 next) s_2))) (select (|$$'| Heap@@8 refs@@1) (create_edge p_1 s_2)))
 :qid |stdinbpl.850:122|
 :skolemid |103|
 :pattern ( (create_edge p_1 s_2))
)))
 :qid |stdinbpl.848:15|
 :skolemid |104|
 :pattern ( (state Heap@@8 Mask@@5) (|$$'| Heap@@8 refs@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_61442) (ExhaleHeap@@1 T@PolymorphicMapType_61442) (Mask@@6 T@PolymorphicMapType_61463) (pm_f_37@@1 T@Field_40180_203868) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (=> (and (HasDirectPerm_40180_203932 Mask@@6 null pm_f_37@@1) (IsPredicateField_40180_203959 pm_f_37@@1)) (and (and (and (forall ((o2_37 T@Ref) (f_74 T@Field_61502_53) ) (!  (=> (select (|PolymorphicMapType_61991_61502_53#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@9) null (PredicateMaskField_40180 pm_f_37@@1))) o2_37 f_74) (= (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@9) o2_37 f_74) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@1) o2_37 f_74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@1) o2_37 f_74))
)) (forall ((o2_37@@0 T@Ref) (f_74@@0 T@Field_61515_61516) ) (!  (=> (select (|PolymorphicMapType_61991_61502_61516#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@9) null (PredicateMaskField_40180 pm_f_37@@1))) o2_37@@0 f_74@@0) (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@9) o2_37@@0 f_74@@0) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@@1) o2_37@@0 f_74@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@@1) o2_37@@0 f_74@@0))
))) (forall ((o2_37@@1 T@Ref) (f_74@@1 T@Field_40180_203868) ) (!  (=> (select (|PolymorphicMapType_61991_61502_203868#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@9) null (PredicateMaskField_40180 pm_f_37@@1))) o2_37@@1 f_74@@1) (= (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@9) o2_37@@1 f_74@@1) (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| ExhaleHeap@@1) o2_37@@1 f_74@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| ExhaleHeap@@1) o2_37@@1 f_74@@1))
))) (forall ((o2_37@@2 T@Ref) (f_74@@2 T@Field_40180_204001) ) (!  (=> (select (|PolymorphicMapType_61991_61502_204981#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@9) null (PredicateMaskField_40180 pm_f_37@@1))) o2_37@@2 f_74@@2) (= (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@9) o2_37@@2 f_74@@2) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@1) o2_37@@2 f_74@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@1) o2_37@@2 f_74@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (IsPredicateField_40180_203959 pm_f_37@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_61442) (ExhaleHeap@@2 T@PolymorphicMapType_61442) (Mask@@7 T@PolymorphicMapType_61463) (pm_f_37@@2 T@Field_40180_203868) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@7) (=> (and (HasDirectPerm_40180_203932 Mask@@7 null pm_f_37@@2) (IsWandField_40180_205508 pm_f_37@@2)) (and (and (and (forall ((o2_37@@3 T@Ref) (f_74@@3 T@Field_61502_53) ) (!  (=> (select (|PolymorphicMapType_61991_61502_53#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@10) null (WandMaskField_40180 pm_f_37@@2))) o2_37@@3 f_74@@3) (= (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@10) o2_37@@3 f_74@@3) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@2) o2_37@@3 f_74@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@2) o2_37@@3 f_74@@3))
)) (forall ((o2_37@@4 T@Ref) (f_74@@4 T@Field_61515_61516) ) (!  (=> (select (|PolymorphicMapType_61991_61502_61516#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@10) null (WandMaskField_40180 pm_f_37@@2))) o2_37@@4 f_74@@4) (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@10) o2_37@@4 f_74@@4) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@@2) o2_37@@4 f_74@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@@2) o2_37@@4 f_74@@4))
))) (forall ((o2_37@@5 T@Ref) (f_74@@5 T@Field_40180_203868) ) (!  (=> (select (|PolymorphicMapType_61991_61502_203868#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@10) null (WandMaskField_40180 pm_f_37@@2))) o2_37@@5 f_74@@5) (= (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@10) o2_37@@5 f_74@@5) (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| ExhaleHeap@@2) o2_37@@5 f_74@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| ExhaleHeap@@2) o2_37@@5 f_74@@5))
))) (forall ((o2_37@@6 T@Ref) (f_74@@6 T@Field_40180_204001) ) (!  (=> (select (|PolymorphicMapType_61991_61502_204981#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@10) null (WandMaskField_40180 pm_f_37@@2))) o2_37@@6 f_74@@6) (= (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@10) o2_37@@6 f_74@@6) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@2) o2_37@@6 f_74@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@2) o2_37@@6 f_74@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@7) (IsWandField_40180_205508 pm_f_37@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1@@3 (Array T@EdgeDomainType Bool)) (u_3@@0 T@Ref) (v_2@@2 T@Ref) (w_2@@0 T@Ref) ) (!  (=> (and (exists_path_ EG_1@@3 u_3@@0 w_2@@0) (exists_path_ EG_1@@3 w_2@@0 v_2@@2)) (exists_path_ EG_1@@3 u_3@@0 v_2@@2))
 :qid |stdinbpl.767:15|
 :skolemid |92|
 :pattern ( (exists_path EG_1@@3 u_3@@0 w_2@@0) (exists_path EG_1@@3 w_2@@0 v_2@@2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_61442) (ExhaleHeap@@3 T@PolymorphicMapType_61442) (Mask@@8 T@PolymorphicMapType_61463) (o_69 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@8) (=> (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@11) o_69 $allocated) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@3) o_69 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@8) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@3) o_69 $allocated))
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
(assert (forall ((Heap@@13 T@PolymorphicMapType_61442) (ExhaleHeap@@5 T@PolymorphicMapType_61442) (Mask@@18 T@PolymorphicMapType_61463) (o_69@@0 T@Ref) (f_74@@7 T@Field_40180_204001) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_40180_208813 Mask@@18 o_69@@0 f_74@@7) (= (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@13) o_69@@0 f_74@@7) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@5) o_69@@0 f_74@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@5) o_69@@0 f_74@@7))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_61442) (ExhaleHeap@@6 T@PolymorphicMapType_61442) (Mask@@19 T@PolymorphicMapType_61463) (o_69@@1 T@Ref) (f_74@@8 T@Field_40180_203868) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_40180_203932 Mask@@19 o_69@@1 f_74@@8) (= (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@14) o_69@@1 f_74@@8) (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| ExhaleHeap@@6) o_69@@1 f_74@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| ExhaleHeap@@6) o_69@@1 f_74@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_61442) (ExhaleHeap@@7 T@PolymorphicMapType_61442) (Mask@@20 T@PolymorphicMapType_61463) (o_69@@2 T@Ref) (f_74@@9 T@Field_61502_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_40180_53 Mask@@20 o_69@@2 f_74@@9) (= (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@15) o_69@@2 f_74@@9) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@7) o_69@@2 f_74@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@7) o_69@@2 f_74@@9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_61442) (ExhaleHeap@@8 T@PolymorphicMapType_61442) (Mask@@21 T@PolymorphicMapType_61463) (o_69@@3 T@Ref) (f_74@@10 T@Field_61515_61516) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_40180_40181 Mask@@21 o_69@@3 f_74@@10) (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@16) o_69@@3 f_74@@10) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@@8) o_69@@3 f_74@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@@8) o_69@@3 f_74@@10))
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
(assert (forall ((Heap@@17 T@PolymorphicMapType_61442) (Mask@@22 T@PolymorphicMapType_61463) (g0@@3 (Array T@Ref Bool)) (g1@@3 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@17 Mask@@22) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6369 (|apply_TCFraming#condqp2| Heap@@17 g0@@3 g1@@3)) (FrameFragment_6369 (|apply_TCFraming#condqp3| Heap@@17 g0@@3 g1@@3))) g0@@3 g1@@3))) (=> (|Set#Equal_40372| (|Set#Intersection_40372| g1@@3 g0@@3) |Set#Empty_40375|) (forall ((u_3@@1 T@Ref) (v_2@@3 T@Ref) ) (!  (=> (and (select g0@@3 u_3@@1) (and (select g0@@3 v_2@@3) (exists_path ($$ Heap@@17 g0@@3) u_3@@1 v_2@@3))) (exists_path ($$ Heap@@17 (|Set#Union_40369| g0@@3 g1@@3)) u_3@@1 v_2@@3))
 :qid |stdinbpl.1027:285|
 :skolemid |125|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@17 g0@@3)) g0@@3) u_3@@1 v_2@@3))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@17 (|Set#Union_40369| g0@@3 g1@@3))) (|Set#Union_40369| g0@@3 g1@@3)) u_3@@1 v_2@@3))
))))
 :qid |stdinbpl.1025:15|
 :skolemid |126|
 :pattern ( (state Heap@@17 Mask@@22) (|apply_TCFraming'| Heap@@17 g0@@3 g1@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_61442) (Mask@@23 T@PolymorphicMapType_61463) (g0@@4 (Array T@Ref Bool)) (g1@@4 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@18 Mask@@23) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6369 (|apply_TCFraming#condqp2| Heap@@18 g0@@4 g1@@4)) (FrameFragment_6369 (|apply_TCFraming#condqp3| Heap@@18 g0@@4 g1@@4))) g0@@4 g1@@4))) (=> (|Set#Equal_40372| (|Set#Intersection_40372| g1@@4 g0@@4) |Set#Empty_40375|) (forall ((u_1@@0 T@Ref) (v_1_1@@0 T@Ref) ) (!  (=> (and (select g1@@4 u_1@@0) (and (select g1@@4 v_1_1@@0) (exists_path ($$ Heap@@18 g1@@4) u_1@@0 v_1_1@@0))) (exists_path ($$ Heap@@18 (|Set#Union_40369| g1@@4 g0@@4)) u_1@@0 v_1_1@@0))
 :qid |stdinbpl.1034:285|
 :skolemid |127|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@18 g1@@4)) g1@@4) u_1@@0 v_1_1@@0))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@18 (|Set#Union_40369| g1@@4 g0@@4))) (|Set#Union_40369| g1@@4 g0@@4)) u_1@@0 v_1_1@@0))
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
(assert (forall ((Heap@@19 T@PolymorphicMapType_61442) (Mask@@24 T@PolymorphicMapType_61463) (refs@@3 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@19 Mask@@24) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (FrameFragment_6369 (|$$#condqp1| Heap@@19 refs@@3)) refs@@3))) (forall ((p_1_1 T@Ref) (s_1 T@Ref) ) (!  (=> (and (select refs@@3 p_1_1) (exists_path (|$$'| Heap@@19 refs@@3) p_1_1 s_1)) (select refs@@3 s_1))
 :qid |stdinbpl.857:122|
 :skolemid |105|
 :pattern ( (select refs@@3 p_1_1) (select refs@@3 s_1) (exists_path (|$$'| Heap@@19 refs@@3) p_1_1 s_1))
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
(assert (forall ((EG_1@@5 (Array T@EdgeDomainType Bool)) (p_1@@0 T@Ref) (s_2@@0 T@Ref) ) (! (= (edge_ EG_1@@5 p_1@@0 s_2@@0) (select EG_1@@5 (create_edge p_1@@0 s_2@@0)))
 :qid |stdinbpl.728:15|
 :skolemid |84|
 :pattern ( (select EG_1@@5 (create_edge p_1@@0 s_2@@0)))
 :pattern ( (edge EG_1@@5 p_1@@0 s_2@@0))
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
(assert (forall ((p_1@@1 T@Ref) (s_2@@1 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@1 s_2@@1)) p_1@@1) (= (edge_succ (create_edge p_1@@1 s_2@@1)) s_2@@1))
 :qid |stdinbpl.679:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@1 s_2@@1))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_61442) (o_68 T@Ref) (f_71 T@Field_40180_203868) (v T@FrameType) ) (! (succHeap Heap@@21 (PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@21) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@21) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@21) (store (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@21) o_68 f_71 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@21) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@21) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@21) (store (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@21) o_68 f_71 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_61442) (o_68@@0 T@Ref) (f_71@@0 T@Field_40180_204001) (v@@0 T@PolymorphicMapType_61991) ) (! (succHeap Heap@@22 (PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@22) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@22) (store (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@22) o_68@@0 f_71@@0 v@@0) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@22) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@22) (store (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@22) o_68@@0 f_71@@0 v@@0) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_61442) (o_68@@1 T@Ref) (f_71@@1 T@Field_61515_61516) (v@@1 T@Ref) ) (! (succHeap Heap@@23 (PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@23) (store (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@23) o_68@@1 f_71@@1 v@@1) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@23) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@23) (store (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@23) o_68@@1 f_71@@1 v@@1) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@23) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_61442) (o_68@@2 T@Ref) (f_71@@2 T@Field_61502_53) (v@@2 Bool) ) (! (succHeap Heap@@24 (PolymorphicMapType_61442 (store (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@24) o_68@@2 f_71@@2 v@@2) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@24) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@24) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_61442 (store (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@24) o_68@@2 f_71@@2 v@@2) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@24) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@24) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@24)))
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
(assert (forall ((o_68@@3 T@Ref) (f_73 T@Field_61515_61516) (Heap@@27 T@PolymorphicMapType_61442) ) (!  (=> (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@27) o_68@@3 $allocated) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@27) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@27) o_68@@3 f_73) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@27) o_68@@3 f_73))
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
(assert (forall ((EG_1@@7 (Array T@EdgeDomainType Bool)) (p_1@@2 T@Ref) (s_2@@2 T@Ref) ) (! (= (edge EG_1@@7 p_1@@2 s_2@@2) (edge_ EG_1@@7 p_1@@2 s_2@@2))
 :qid |stdinbpl.722:15|
 :skolemid |83|
 :pattern ( (edge EG_1@@7 p_1@@2 s_2@@2))
)))
(assert (forall ((EG_1@@8 (Array T@EdgeDomainType Bool)) (start@@0 T@Ref) (end@@0 T@Ref) ) (! (= (exists_path EG_1@@8 start@@0 end@@0) (exists_path_ EG_1@@8 start@@0 end@@0))
 :qid |stdinbpl.752:15|
 :skolemid |89|
 :pattern ( (exists_path EG_1@@8 start@@0 end@@0))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_61442) (g0@@8 (Array T@Ref Bool)) (g1@@8 (Array T@Ref Bool)) ) (!  (and (= (apply_TCFraming Heap@@28 g0@@8 g1@@8) (|apply_TCFraming'| Heap@@28 g0@@8 g1@@8)) (dummyFunction_8494 (|apply_TCFraming#triggerStateless| g0@@8 g1@@8)))
 :qid |stdinbpl.984:15|
 :skolemid |119|
 :pattern ( (apply_TCFraming Heap@@28 g0@@8 g1@@8))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@29 () T@PolymorphicMapType_61442)
(declare-fun QPMask@2 () T@PolymorphicMapType_61463)
(declare-fun g1@@9 () (Array T@Ref Bool))
(declare-fun dummyFunction_40181 (T@Ref) Bool)
(declare-fun neverTriggered10 (T@Ref) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_61463)
(declare-fun QPMask@3 () T@PolymorphicMapType_61463)
(declare-fun g0@@9 () (Array T@Ref Bool))
(declare-fun neverTriggered11 (T@Ref) Bool)
(declare-fun u_10 () T@Ref)
(declare-fun v_10 () T@Ref)
(declare-fun QPMask@4 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered8 (T@Ref) Bool)
(declare-fun QPMask@5 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered9 (T@Ref) Bool)
(declare-fun u_8 () T@Ref)
(declare-fun v_8 () T@Ref)
(declare-fun QPMask@6 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered6 (T@Ref) Bool)
(declare-fun QPMask@7 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered7 (T@Ref) Bool)
(declare-fun u_6 () T@Ref)
(declare-fun v_6 () T@Ref)
(declare-fun QPMask@8 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered4 (T@Ref) Bool)
(declare-fun QPMask@9 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered5 (T@Ref) Bool)
(declare-fun u_4 () T@Ref)
(declare-fun v_5 () T@Ref)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_61463)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
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
 (=> (= (ControlFlow 0 0) 72) (let ((anon64_Then_correct  (and (=> (= (ControlFlow 0 59) (- 0 61)) (forall ((n_14 T@Ref) ) (!  (=> (and (select g1@@9 n_14) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1493:27|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@2) n_14 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14 next))
))) (=> (forall ((n_14@@0 T@Ref) ) (!  (=> (and (select g1@@9 n_14@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1493:27|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@2) n_14@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14@@0 next))
)) (and (=> (= (ControlFlow 0 59) (- 0 60)) (forall ((n_14@@1 T@Ref) (n_14_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14@@1 n_14_1)) (select g1@@9 n_14@@1)) (select g1@@9 n_14_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_14@@1 n_14_1)))
 :qid |stdinbpl.1500:27|
 :skolemid |179|
 :pattern ( (neverTriggered10 n_14@@1) (neverTriggered10 n_14_1))
))) (=> (forall ((n_14@@2 T@Ref) (n_14_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14@@2 n_14_1@@0)) (select g1@@9 n_14@@2)) (select g1@@9 n_14_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_14@@2 n_14_1@@0)))
 :qid |stdinbpl.1500:27|
 :skolemid |179|
 :pattern ( (neverTriggered10 n_14@@2) (neverTriggered10 n_14_1@@0))
)) (=> (= (ControlFlow 0 59) (- 0 58)) (forall ((n_14@@3 T@Ref) ) (!  (=> (select g1@@9 n_14@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@1) n_14@@3 next) NoPerm)))
 :qid |stdinbpl.1507:27|
 :skolemid |180|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@2) n_14@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14@@3 next))
)))))))))
(let ((anon66_Then_correct  (and (=> (= (ControlFlow 0 52) (- 0 54)) (forall ((n_15 T@Ref) ) (!  (=> (and (select (|Set#Union_40369| g1@@9 g0@@9) n_15) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_15 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1539:25|
 :skolemid |183|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_15 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@3) n_15 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_15 next))
))) (=> (forall ((n_15@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_40369| g1@@9 g0@@9) n_15@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_15@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1539:25|
 :skolemid |183|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_15@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@3) n_15@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_15@@0 next))
)) (and (=> (= (ControlFlow 0 52) (- 0 53)) (forall ((n_15@@1 T@Ref) (n_15_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15@@1 n_15_1)) (select (|Set#Union_40369| g1@@9 g0@@9) n_15@@1)) (select (|Set#Union_40369| g1@@9 g0@@9) n_15_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_15@@1 n_15_1)))
 :qid |stdinbpl.1546:25|
 :skolemid |184|
 :pattern ( (neverTriggered11 n_15@@1) (neverTriggered11 n_15_1))
))) (=> (forall ((n_15@@2 T@Ref) (n_15_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15@@2 n_15_1@@0)) (select (|Set#Union_40369| g1@@9 g0@@9) n_15@@2)) (select (|Set#Union_40369| g1@@9 g0@@9) n_15_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_15@@2 n_15_1@@0)))
 :qid |stdinbpl.1546:25|
 :skolemid |184|
 :pattern ( (neverTriggered11 n_15@@2) (neverTriggered11 n_15_1@@0))
)) (=> (= (ControlFlow 0 52) (- 0 51)) (forall ((n_15@@3 T@Ref) ) (!  (=> (select (|Set#Union_40369| g1@@9 g0@@9) n_15@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@1) n_15@@3 next) NoPerm)))
 :qid |stdinbpl.1553:25|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_15@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@3) n_15@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_15@@3 next))
)))))))))
(let ((anon39_correct true))
(let ((anon65_Then_correct  (=> (and (select g1@@9 u_10) (and (select g1@@9 v_10) (not (exists_path ($$ Heap@@29 g1@@9) u_10 v_10)))) (and (=> (= (ControlFlow 0 55) 52) anon66_Then_correct) (=> (= (ControlFlow 0 55) 49) anon39_correct)))))
(let ((anon65_Else_correct  (=> (and (not (and (select g1@@9 u_10) (and (select g1@@9 v_10) (not (exists_path ($$ Heap@@29 g1@@9) u_10 v_10))))) (= (ControlFlow 0 50) 49)) anon39_correct)))
(let ((anon63_Then_correct  (=> (select g1@@9 v_10) (and (and (=> (= (ControlFlow 0 62) 59) anon64_Then_correct) (=> (= (ControlFlow 0 62) 55) anon65_Then_correct)) (=> (= (ControlFlow 0 62) 50) anon65_Else_correct)))))
(let ((anon63_Else_correct  (=> (not (select g1@@9 v_10)) (and (=> (= (ControlFlow 0 57) 55) anon65_Then_correct) (=> (= (ControlFlow 0 57) 50) anon65_Else_correct)))))
(let ((anon62_Then_correct  (=> (select g1@@9 u_10) (and (=> (= (ControlFlow 0 63) 62) anon63_Then_correct) (=> (= (ControlFlow 0 63) 57) anon63_Else_correct)))))
(let ((anon62_Else_correct  (=> (not (select g1@@9 u_10)) (and (=> (= (ControlFlow 0 56) 55) anon65_Then_correct) (=> (= (ControlFlow 0 56) 50) anon65_Else_correct)))))
(let ((anon61_Else_correct true))
(let ((anon55_Else_correct  (=> (forall ((u_9 T@Ref) (v_9 T@Ref) ) (!  (=> (and (select g0@@9 u_9) (and (select g0@@9 v_9) (not (exists_path ($$ Heap@@29 g0@@9) u_9 v_9)))) (not (exists_path ($$ Heap@@29 (|Set#Union_40369| g0@@9 g1@@9)) u_9 v_9)))
 :qid |stdinbpl.1474:20|
 :skolemid |177|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g0@@9)) g0@@9) u_9 v_9))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 (|Set#Union_40369| g0@@9 g1@@9))) (|Set#Union_40369| g0@@9 g1@@9)) u_9 v_9))
)) (=> (and (state Heap@@29 QPMask@1) (state Heap@@29 QPMask@1)) (and (and (=> (= (ControlFlow 0 64) 48) anon61_Else_correct) (=> (= (ControlFlow 0 64) 63) anon62_Then_correct)) (=> (= (ControlFlow 0 64) 56) anon62_Else_correct))))))
(let ((anon58_Then_correct  (and (=> (= (ControlFlow 0 43) (- 0 45)) (forall ((n_12_1 T@Ref) ) (!  (=> (and (select g0@@9 n_12_1) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_12_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1390:27|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_12_1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@4) n_12_1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_12_1 next))
))) (=> (forall ((n_12_1@@0 T@Ref) ) (!  (=> (and (select g0@@9 n_12_1@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_12_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1390:27|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_12_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@4) n_12_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_12_1@@0 next))
)) (and (=> (= (ControlFlow 0 43) (- 0 44)) (forall ((n_12_1@@1 T@Ref) (n_12_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12_1@@1 n_12_2)) (select g0@@9 n_12_1@@1)) (select g0@@9 n_12_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_12_1@@1 n_12_2)))
 :qid |stdinbpl.1397:27|
 :skolemid |168|
 :pattern ( (neverTriggered8 n_12_1@@1) (neverTriggered8 n_12_2))
))) (=> (forall ((n_12_1@@2 T@Ref) (n_12_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12_1@@2 n_12_2@@0)) (select g0@@9 n_12_1@@2)) (select g0@@9 n_12_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_12_1@@2 n_12_2@@0)))
 :qid |stdinbpl.1397:27|
 :skolemid |168|
 :pattern ( (neverTriggered8 n_12_1@@2) (neverTriggered8 n_12_2@@0))
)) (=> (= (ControlFlow 0 43) (- 0 42)) (forall ((n_12_1@@3 T@Ref) ) (!  (=> (select g0@@9 n_12_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@1) n_12_1@@3 next) NoPerm)))
 :qid |stdinbpl.1404:27|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_12_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@4) n_12_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_12_1@@3 next))
)))))))))
(let ((anon60_Then_correct  (and (=> (= (ControlFlow 0 36) (- 0 38)) (forall ((n_13 T@Ref) ) (!  (=> (and (select (|Set#Union_40369| g0@@9 g1@@9) n_13) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1436:25|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) n_13 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13 next))
))) (=> (forall ((n_13@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_40369| g0@@9 g1@@9) n_13@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1436:25|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) n_13@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13@@0 next))
)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (forall ((n_13@@1 T@Ref) (n_13_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13@@1 n_13_1)) (select (|Set#Union_40369| g0@@9 g1@@9) n_13@@1)) (select (|Set#Union_40369| g0@@9 g1@@9) n_13_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_13@@1 n_13_1)))
 :qid |stdinbpl.1443:25|
 :skolemid |173|
 :pattern ( (neverTriggered9 n_13@@1) (neverTriggered9 n_13_1))
))) (=> (forall ((n_13@@2 T@Ref) (n_13_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13@@2 n_13_1@@0)) (select (|Set#Union_40369| g0@@9 g1@@9) n_13@@2)) (select (|Set#Union_40369| g0@@9 g1@@9) n_13_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_13@@2 n_13_1@@0)))
 :qid |stdinbpl.1443:25|
 :skolemid |173|
 :pattern ( (neverTriggered9 n_13@@2) (neverTriggered9 n_13_1@@0))
)) (=> (= (ControlFlow 0 36) (- 0 35)) (forall ((n_13@@3 T@Ref) ) (!  (=> (select (|Set#Union_40369| g0@@9 g1@@9) n_13@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@1) n_13@@3 next) NoPerm)))
 :qid |stdinbpl.1450:25|
 :skolemid |174|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) n_13@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13@@3 next))
)))))))))
(let ((anon30_correct true))
(let ((anon59_Then_correct  (=> (and (select g0@@9 u_8) (and (select g0@@9 v_8) (not (exists_path ($$ Heap@@29 g0@@9) u_8 v_8)))) (and (=> (= (ControlFlow 0 39) 36) anon60_Then_correct) (=> (= (ControlFlow 0 39) 33) anon30_correct)))))
(let ((anon59_Else_correct  (=> (and (not (and (select g0@@9 u_8) (and (select g0@@9 v_8) (not (exists_path ($$ Heap@@29 g0@@9) u_8 v_8))))) (= (ControlFlow 0 34) 33)) anon30_correct)))
(let ((anon57_Then_correct  (=> (select g0@@9 v_8) (and (and (=> (= (ControlFlow 0 46) 43) anon58_Then_correct) (=> (= (ControlFlow 0 46) 39) anon59_Then_correct)) (=> (= (ControlFlow 0 46) 34) anon59_Else_correct)))))
(let ((anon57_Else_correct  (=> (not (select g0@@9 v_8)) (and (=> (= (ControlFlow 0 41) 39) anon59_Then_correct) (=> (= (ControlFlow 0 41) 34) anon59_Else_correct)))))
(let ((anon56_Then_correct  (=> (select g0@@9 u_8) (and (=> (= (ControlFlow 0 47) 46) anon57_Then_correct) (=> (= (ControlFlow 0 47) 41) anon57_Else_correct)))))
(let ((anon56_Else_correct  (=> (not (select g0@@9 u_8)) (and (=> (= (ControlFlow 0 40) 39) anon59_Then_correct) (=> (= (ControlFlow 0 40) 34) anon59_Else_correct)))))
(let ((anon49_Else_correct  (=> (forall ((u_7 T@Ref) (v_7 T@Ref) ) (!  (=> (and (select g1@@9 u_7) (and (select g1@@9 v_7) (exists_path ($$ Heap@@29 g1@@9) u_7 v_7))) (exists_path ($$ Heap@@29 (|Set#Union_40369| g1@@9 g0@@9)) u_7 v_7))
 :qid |stdinbpl.1371:20|
 :skolemid |166|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g1@@9)) g1@@9) u_7 v_7))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 (|Set#Union_40369| g1@@9 g0@@9))) (|Set#Union_40369| g1@@9 g0@@9)) u_7 v_7))
)) (=> (and (state Heap@@29 QPMask@1) (state Heap@@29 QPMask@1)) (and (and (=> (= (ControlFlow 0 65) 64) anon55_Else_correct) (=> (= (ControlFlow 0 65) 47) anon56_Then_correct)) (=> (= (ControlFlow 0 65) 40) anon56_Else_correct))))))
(let ((anon52_Then_correct  (and (=> (= (ControlFlow 0 28) (- 0 30)) (forall ((n_10_1 T@Ref) ) (!  (=> (and (select g1@@9 n_10_1) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_10_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1287:27|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_10_1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@6) n_10_1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_10_1 next))
))) (=> (forall ((n_10_1@@0 T@Ref) ) (!  (=> (and (select g1@@9 n_10_1@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_10_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1287:27|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_10_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@6) n_10_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_10_1@@0 next))
)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (forall ((n_10_1@@1 T@Ref) (n_10_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1@@1 n_10_2)) (select g1@@9 n_10_1@@1)) (select g1@@9 n_10_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_10_1@@1 n_10_2)))
 :qid |stdinbpl.1294:27|
 :skolemid |157|
 :pattern ( (neverTriggered6 n_10_1@@1) (neverTriggered6 n_10_2))
))) (=> (forall ((n_10_1@@2 T@Ref) (n_10_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1@@2 n_10_2@@0)) (select g1@@9 n_10_1@@2)) (select g1@@9 n_10_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_10_1@@2 n_10_2@@0)))
 :qid |stdinbpl.1294:27|
 :skolemid |157|
 :pattern ( (neverTriggered6 n_10_1@@2) (neverTriggered6 n_10_2@@0))
)) (=> (= (ControlFlow 0 28) (- 0 27)) (forall ((n_10_1@@3 T@Ref) ) (!  (=> (select g1@@9 n_10_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@1) n_10_1@@3 next) NoPerm)))
 :qid |stdinbpl.1301:27|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_10_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@6) n_10_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_10_1@@3 next))
)))))))))
(let ((anon54_Then_correct  (and (=> (= (ControlFlow 0 21) (- 0 23)) (forall ((n_11_1 T@Ref) ) (!  (=> (and (select (|Set#Union_40369| g1@@9 g0@@9) n_11_1) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_11_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1333:25|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_11_1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@7) n_11_1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_11_1 next))
))) (=> (forall ((n_11_1@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_40369| g1@@9 g0@@9) n_11_1@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_11_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1333:25|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_11_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@7) n_11_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_11_1@@0 next))
)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (forall ((n_11_1@@1 T@Ref) (n_11_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_1@@1 n_11_2)) (select (|Set#Union_40369| g1@@9 g0@@9) n_11_1@@1)) (select (|Set#Union_40369| g1@@9 g0@@9) n_11_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_11_1@@1 n_11_2)))
 :qid |stdinbpl.1340:25|
 :skolemid |162|
 :pattern ( (neverTriggered7 n_11_1@@1) (neverTriggered7 n_11_2))
))) (=> (forall ((n_11_1@@2 T@Ref) (n_11_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_1@@2 n_11_2@@0)) (select (|Set#Union_40369| g1@@9 g0@@9) n_11_1@@2)) (select (|Set#Union_40369| g1@@9 g0@@9) n_11_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_11_1@@2 n_11_2@@0)))
 :qid |stdinbpl.1340:25|
 :skolemid |162|
 :pattern ( (neverTriggered7 n_11_1@@2) (neverTriggered7 n_11_2@@0))
)) (=> (= (ControlFlow 0 21) (- 0 20)) (forall ((n_11_1@@3 T@Ref) ) (!  (=> (select (|Set#Union_40369| g1@@9 g0@@9) n_11_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@1) n_11_1@@3 next) NoPerm)))
 :qid |stdinbpl.1347:25|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_11_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@7) n_11_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_11_1@@3 next))
)))))))))
(let ((anon21_correct true))
(let ((anon53_Then_correct  (=> (and (select g1@@9 u_6) (and (select g1@@9 v_6) (exists_path ($$ Heap@@29 g1@@9) u_6 v_6))) (and (=> (= (ControlFlow 0 24) 21) anon54_Then_correct) (=> (= (ControlFlow 0 24) 18) anon21_correct)))))
(let ((anon53_Else_correct  (=> (and (not (and (select g1@@9 u_6) (and (select g1@@9 v_6) (exists_path ($$ Heap@@29 g1@@9) u_6 v_6)))) (= (ControlFlow 0 19) 18)) anon21_correct)))
(let ((anon51_Then_correct  (=> (select g1@@9 v_6) (and (and (=> (= (ControlFlow 0 31) 28) anon52_Then_correct) (=> (= (ControlFlow 0 31) 24) anon53_Then_correct)) (=> (= (ControlFlow 0 31) 19) anon53_Else_correct)))))
(let ((anon51_Else_correct  (=> (not (select g1@@9 v_6)) (and (=> (= (ControlFlow 0 26) 24) anon53_Then_correct) (=> (= (ControlFlow 0 26) 19) anon53_Else_correct)))))
(let ((anon50_Then_correct  (=> (select g1@@9 u_6) (and (=> (= (ControlFlow 0 32) 31) anon51_Then_correct) (=> (= (ControlFlow 0 32) 26) anon51_Else_correct)))))
(let ((anon50_Else_correct  (=> (not (select g1@@9 u_6)) (and (=> (= (ControlFlow 0 25) 24) anon53_Then_correct) (=> (= (ControlFlow 0 25) 19) anon53_Else_correct)))))
(let ((anon43_Else_correct  (=> (forall ((u_5 T@Ref) (v_5_1 T@Ref) ) (!  (=> (and (select g0@@9 u_5) (and (select g0@@9 v_5_1) (exists_path ($$ Heap@@29 g0@@9) u_5 v_5_1))) (exists_path ($$ Heap@@29 (|Set#Union_40369| g0@@9 g1@@9)) u_5 v_5_1))
 :qid |stdinbpl.1268:20|
 :skolemid |155|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g0@@9)) g0@@9) u_5 v_5_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 (|Set#Union_40369| g0@@9 g1@@9))) (|Set#Union_40369| g0@@9 g1@@9)) u_5 v_5_1))
)) (=> (and (state Heap@@29 QPMask@1) (state Heap@@29 QPMask@1)) (and (and (=> (= (ControlFlow 0 66) 65) anon49_Else_correct) (=> (= (ControlFlow 0 66) 32) anon50_Then_correct)) (=> (= (ControlFlow 0 66) 25) anon50_Else_correct))))))
(let ((anon46_Then_correct  (and (=> (= (ControlFlow 0 13) (- 0 15)) (forall ((n_8 T@Ref) ) (!  (=> (and (select g0@@9 n_8) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_8 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1184:27|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_8 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) n_8 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_8 next))
))) (=> (forall ((n_8@@0 T@Ref) ) (!  (=> (and (select g0@@9 n_8@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_8@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1184:27|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_8@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) n_8@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_8@@0 next))
)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (forall ((n_8@@1 T@Ref) (n_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@1 n_8_1)) (select g0@@9 n_8@@1)) (select g0@@9 n_8_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_8@@1 n_8_1)))
 :qid |stdinbpl.1191:27|
 :skolemid |146|
 :pattern ( (neverTriggered4 n_8@@1) (neverTriggered4 n_8_1))
))) (=> (forall ((n_8@@2 T@Ref) (n_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@2 n_8_1@@0)) (select g0@@9 n_8@@2)) (select g0@@9 n_8_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_8@@2 n_8_1@@0)))
 :qid |stdinbpl.1191:27|
 :skolemid |146|
 :pattern ( (neverTriggered4 n_8@@2) (neverTriggered4 n_8_1@@0))
)) (=> (= (ControlFlow 0 13) (- 0 12)) (forall ((n_8@@3 T@Ref) ) (!  (=> (select g0@@9 n_8@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@1) n_8@@3 next) NoPerm)))
 :qid |stdinbpl.1198:27|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) n_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_8@@3 next))
)))))))))
(let ((anon48_Then_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) (forall ((n_9 T@Ref) ) (!  (=> (and (select (|Set#Union_40369| g0@@9 g1@@9) n_9) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_9 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1230:25|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_9 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@9) n_9 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_9 next))
))) (=> (forall ((n_9@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_40369| g0@@9 g1@@9) n_9@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_9@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1230:25|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_9@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@9) n_9@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_9@@0 next))
)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (forall ((n_9@@1 T@Ref) (n_9_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@1 n_9_1)) (select (|Set#Union_40369| g0@@9 g1@@9) n_9@@1)) (select (|Set#Union_40369| g0@@9 g1@@9) n_9_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_9@@1 n_9_1)))
 :qid |stdinbpl.1237:25|
 :skolemid |151|
 :pattern ( (neverTriggered5 n_9@@1) (neverTriggered5 n_9_1))
))) (=> (forall ((n_9@@2 T@Ref) (n_9_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@2 n_9_1@@0)) (select (|Set#Union_40369| g0@@9 g1@@9) n_9@@2)) (select (|Set#Union_40369| g0@@9 g1@@9) n_9_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_9@@2 n_9_1@@0)))
 :qid |stdinbpl.1237:25|
 :skolemid |151|
 :pattern ( (neverTriggered5 n_9@@2) (neverTriggered5 n_9_1@@0))
)) (=> (= (ControlFlow 0 6) (- 0 5)) (forall ((n_9@@3 T@Ref) ) (!  (=> (select (|Set#Union_40369| g0@@9 g1@@9) n_9@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@1) n_9@@3 next) NoPerm)))
 :qid |stdinbpl.1244:25|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_9@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@9) n_9@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_9@@3 next))
)))))))))
(let ((anon12_correct true))
(let ((anon47_Then_correct  (=> (and (select g0@@9 u_4) (and (select g0@@9 v_5) (exists_path ($$ Heap@@29 g0@@9) u_4 v_5))) (and (=> (= (ControlFlow 0 9) 6) anon48_Then_correct) (=> (= (ControlFlow 0 9) 3) anon12_correct)))))
(let ((anon47_Else_correct  (=> (and (not (and (select g0@@9 u_4) (and (select g0@@9 v_5) (exists_path ($$ Heap@@29 g0@@9) u_4 v_5)))) (= (ControlFlow 0 4) 3)) anon12_correct)))
(let ((anon45_Then_correct  (=> (select g0@@9 v_5) (and (and (=> (= (ControlFlow 0 16) 13) anon46_Then_correct) (=> (= (ControlFlow 0 16) 9) anon47_Then_correct)) (=> (= (ControlFlow 0 16) 4) anon47_Else_correct)))))
(let ((anon45_Else_correct  (=> (not (select g0@@9 v_5)) (and (=> (= (ControlFlow 0 11) 9) anon47_Then_correct) (=> (= (ControlFlow 0 11) 4) anon47_Else_correct)))))
(let ((anon44_Then_correct  (=> (select g0@@9 u_4) (and (=> (= (ControlFlow 0 17) 16) anon45_Then_correct) (=> (= (ControlFlow 0 17) 11) anon45_Else_correct)))))
(let ((anon44_Else_correct  (=> (not (select g0@@9 u_4)) (and (=> (= (ControlFlow 0 10) 9) anon47_Then_correct) (=> (= (ControlFlow 0 10) 4) anon47_Else_correct)))))
(let ((anon42_Else_correct  (and (=> (= (ControlFlow 0 67) (- 0 68)) (forall ((n_7 T@Ref) (n_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7 n_7_1)) (select g1@@9 n_7)) (select g1@@9 n_7_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_7 n_7_1)))
 :qid |stdinbpl.1131:15|
 :skolemid |139|
))) (=> (forall ((n_7@@0 T@Ref) (n_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@0 n_7_1@@0)) (select g1@@9 n_7@@0)) (select g1@@9 n_7_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_7@@0 n_7_1@@0)))
 :qid |stdinbpl.1131:15|
 :skolemid |139|
)) (=> (and (and (forall ((n_7@@1 T@Ref) ) (!  (=> (and (select g1@@9 n_7@@1) (< NoPerm FullPerm)) (and (qpRange3 n_7@@1) (= (invRecv3 n_7@@1) n_7@@1)))
 :qid |stdinbpl.1137:22|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@1) n_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_7@@1 next))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select g1@@9 (invRecv3 o_4)) (< NoPerm FullPerm)) (qpRange3 o_4)) (= (invRecv3 o_4) o_4))
 :qid |stdinbpl.1141:22|
 :skolemid |141|
 :pattern ( (invRecv3 o_4))
))) (and (forall ((n_7@@2 T@Ref) ) (!  (=> (select g1@@9 n_7@@2) (not (= n_7@@2 null)))
 :qid |stdinbpl.1147:22|
 :skolemid |142|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_7@@2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@1) n_7@@2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_7@@2 next))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select g1@@9 (invRecv3 o_4@@0)) (< NoPerm FullPerm)) (qpRange3 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv3 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@1) o_4@@0 next) (+ (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_4@@0 next) FullPerm)))) (=> (not (and (and (select g1@@9 (invRecv3 o_4@@0)) (< NoPerm FullPerm)) (qpRange3 o_4@@0))) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@1) o_4@@0 next) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_4@@0 next))))
 :qid |stdinbpl.1153:22|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@1) o_4@@0 next))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_61502_53) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@0) o_4@@1 f_5) (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@1) o_4@@1 f_5)))
 :qid |stdinbpl.1157:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@0) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@1) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_61515_61516) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@1) o_4@@2 f_5@@0)))
 :qid |stdinbpl.1157:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@1) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_40180_203868) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@1) o_4@@3 f_5@@1)))
 :qid |stdinbpl.1157:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@0) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@1) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_40180_204001) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@1) o_4@@4 f_5@@2)))
 :qid |stdinbpl.1157:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@0) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@1) o_4@@4 f_5@@2))
))) (state Heap@@29 QPMask@1)) (and (state Heap@@29 QPMask@1) (|Set#Equal_40372| (|Set#Intersection_40372| g1@@9 g0@@9) |Set#Empty_40375|))) (and (and (state Heap@@29 QPMask@1) (|Set#Equal_40372| (|Set#Union_40369| g0@@9 g1@@9) (|Set#Union_40369| g1@@9 g0@@9))) (and (state Heap@@29 QPMask@1) (state Heap@@29 QPMask@1)))) (and (and (=> (= (ControlFlow 0 67) 66) anon43_Else_correct) (=> (= (ControlFlow 0 67) 17) anon44_Then_correct)) (=> (= (ControlFlow 0 67) 10) anon44_Else_correct))))))))
(let ((anon42_Then_correct true))
(let ((anon41_Else_correct  (and (=> (= (ControlFlow 0 69) (- 0 70)) (forall ((n_5 T@Ref) (n_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5 n_5_1)) (select g0@@9 n_5)) (select g0@@9 n_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_5 n_5_1)))
 :qid |stdinbpl.1091:15|
 :skolemid |133|
))) (=> (forall ((n_5@@0 T@Ref) (n_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@0 n_5_1@@0)) (select g0@@9 n_5@@0)) (select g0@@9 n_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_5@@0 n_5_1@@0)))
 :qid |stdinbpl.1091:15|
 :skolemid |133|
)) (=> (and (and (forall ((n_5@@1 T@Ref) ) (!  (=> (and (select g0@@9 n_5@@1) (< NoPerm FullPerm)) (and (qpRange2 n_5@@1) (= (invRecv2 n_5@@1) n_5@@1)))
 :qid |stdinbpl.1097:22|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_5@@1 next))
)) (forall ((o_4@@5 T@Ref) ) (!  (=> (and (and (select g0@@9 (invRecv2 o_4@@5)) (< NoPerm FullPerm)) (qpRange2 o_4@@5)) (= (invRecv2 o_4@@5) o_4@@5))
 :qid |stdinbpl.1101:22|
 :skolemid |135|
 :pattern ( (invRecv2 o_4@@5))
))) (and (forall ((n_5@@2 T@Ref) ) (!  (=> (select g0@@9 n_5@@2) (not (= n_5@@2 null)))
 :qid |stdinbpl.1107:22|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_5@@2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_5@@2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_5@@2 next))
)) (forall ((o_4@@6 T@Ref) ) (!  (and (=> (and (and (select g0@@9 (invRecv2 o_4@@6)) (< NoPerm FullPerm)) (qpRange2 o_4@@6)) (and (=> (< NoPerm FullPerm) (= (invRecv2 o_4@@6) o_4@@6)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_4@@6 next) (+ (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_4@@6 next) FullPerm)))) (=> (not (and (and (select g0@@9 (invRecv2 o_4@@6)) (< NoPerm FullPerm)) (qpRange2 o_4@@6))) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_4@@6 next) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_4@@6 next))))
 :qid |stdinbpl.1113:22|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_4@@6 next))
)))) (=> (and (and (and (and (forall ((o_4@@7 T@Ref) (f_5@@3 T@Field_61502_53) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| ZeroMask) o_4@@7 f_5@@3) (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@0) o_4@@7 f_5@@3)))
 :qid |stdinbpl.1117:29|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| ZeroMask) o_4@@7 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@0) o_4@@7 f_5@@3))
)) (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_61515_61516) ) (!  (=> (not (= f_5@@4 next)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_4@@8 f_5@@4) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_4@@8 f_5@@4)))
 :qid |stdinbpl.1117:29|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_4@@8 f_5@@4))
))) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_40180_203868) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| ZeroMask) o_4@@9 f_5@@5) (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@0) o_4@@9 f_5@@5)))
 :qid |stdinbpl.1117:29|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| ZeroMask) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@0) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_40180_204001) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| ZeroMask) o_4@@10 f_5@@6) (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@0) o_4@@10 f_5@@6)))
 :qid |stdinbpl.1117:29|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| ZeroMask) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@0) o_4@@10 f_5@@6))
))) (and (state Heap@@29 QPMask@0) (state Heap@@29 QPMask@0))) (and (=> (= (ControlFlow 0 69) 2) anon42_Then_correct) (=> (= (ControlFlow 0 69) 67) anon42_Else_correct))))))))
(let ((anon41_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@29 ZeroMask) (=> (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 0)) (and (=> (= (ControlFlow 0 71) 1) anon41_Then_correct) (=> (= (ControlFlow 0 71) 69) anon41_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 72) 71) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))
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
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (start T@Ref) (end T@Ref) ) (! (= (exists_path_ EG_1 start end)  (or (= start end) (exists ((w_2 T@Ref) ) (!  (and (edge EG_1 start w_2) (exists_path_ EG_1 w_2 end))
 :qid |stdinbpl.760:70|
 :skolemid |90|
 :pattern ( (edge EG_1 start w_2))
 :pattern ( (exists_path_ EG_1 w_2 end))
))))
 :qid |stdinbpl.758:15|
 :skolemid |91|
 :pattern ( (exists_path EG_1 start end))
 :pattern ( (edge EG_1 start end))
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
(assert (forall ((Heap@@2 T@PolymorphicMapType_61442) (Mask@@0 T@PolymorphicMapType_61463) (g0@@0 (Array T@Ref Bool)) (g1@@0 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@2 Mask@@0) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6369 (|apply_TCFraming#condqp2| Heap@@2 g0@@0 g1@@0)) (FrameFragment_6369 (|apply_TCFraming#condqp3| Heap@@2 g0@@0 g1@@0))) g0@@0 g1@@0))) (=> (|Set#Equal_40372| (|Set#Intersection_40372| g1@@0 g0@@0) |Set#Empty_40375|) (forall ((u_2_1 T@Ref) (v_2_1 T@Ref) ) (!  (=> (and (select g0@@0 u_2_1) (and (select g0@@0 v_2_1) (not (exists_path ($$ Heap@@2 g0@@0) u_2_1 v_2_1)))) (not (exists_path ($$ Heap@@2 (|Set#Union_40369| g0@@0 g1@@0)) u_2_1 v_2_1)))
 :qid |stdinbpl.1041:285|
 :skolemid |129|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@2 g0@@0)) g0@@0) u_2_1 v_2_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@2 (|Set#Union_40369| g0@@0 g1@@0))) (|Set#Union_40369| g0@@0 g1@@0)) u_2_1 v_2_1))
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
(assert (forall ((EG_1@@0 (Array T@EdgeDomainType Bool)) (U_1 (Array T@Ref Bool)) (M (Array T@Ref Bool)) ) (!  (=> (apply_noExit EG_1@@0 U_1 M) (=> (forall ((u_3 T@Ref) (v_2 T@Ref) ) (!  (=> (and (select M u_3) (and (select U_1 v_2) (not (select M v_2)))) (not (edge EG_1@@0 u_3 v_2)))
 :qid |stdinbpl.736:50|
 :skolemid |85|
 :pattern ( (edge EG_1@@0 u_3 v_2))
 :pattern ( (select M u_3) (select M v_2))
)) (forall ((u_1 T@Ref) (v_1_1 T@Ref) ) (!  (=> (and (select M u_1) (and (select U_1 v_1_1) (not (select M v_1_1)))) (not (exists_path EG_1@@0 u_1 v_1_1)))
 :qid |stdinbpl.739:17|
 :skolemid |86|
 :pattern ( (exists_path EG_1@@0 u_1 v_1_1))
 :pattern ( (select M u_1) (select M v_1_1))
))))
 :qid |stdinbpl.734:15|
 :skolemid |87|
 :pattern ( (apply_noExit EG_1@@0 U_1 M))
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
(assert (forall ((Heap@@5 T@PolymorphicMapType_61442) (ExhaleHeap T@PolymorphicMapType_61442) (Mask@@2 T@PolymorphicMapType_61463) (pm_f_37 T@Field_40180_203868) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_40180_203932 Mask@@2 null pm_f_37) (IsPredicateField_40180_203959 pm_f_37)) (= (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@5) null (PredicateMaskField_40180 pm_f_37)) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap) null (PredicateMaskField_40180 pm_f_37)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@2) (IsPredicateField_40180_203959 pm_f_37) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap) null (PredicateMaskField_40180 pm_f_37)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_61442) (ExhaleHeap@@0 T@PolymorphicMapType_61442) (Mask@@3 T@PolymorphicMapType_61463) (pm_f_37@@0 T@Field_40180_203868) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_40180_203932 Mask@@3 null pm_f_37@@0) (IsWandField_40180_205508 pm_f_37@@0)) (= (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@6) null (WandMaskField_40180 pm_f_37@@0)) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@0) null (WandMaskField_40180 pm_f_37@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@3) (IsWandField_40180_205508 pm_f_37@@0) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@0) null (WandMaskField_40180 pm_f_37@@0)))
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
(assert (forall ((Heap@@8 T@PolymorphicMapType_61442) (Mask@@5 T@PolymorphicMapType_61463) (refs@@1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@8 Mask@@5) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (FrameFragment_6369 (|$$#condqp1| Heap@@8 refs@@1)) refs@@1))) (forall ((p_1 T@Ref) (s_2 T@Ref) ) (! (=  (and (select refs@@1 p_1) (and (select refs@@1 s_2) (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@8) p_1 next) s_2))) (select (|$$'| Heap@@8 refs@@1) (create_edge p_1 s_2)))
 :qid |stdinbpl.850:122|
 :skolemid |103|
 :pattern ( (create_edge p_1 s_2))
)))
 :qid |stdinbpl.848:15|
 :skolemid |104|
 :pattern ( (state Heap@@8 Mask@@5) (|$$'| Heap@@8 refs@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_61442) (ExhaleHeap@@1 T@PolymorphicMapType_61442) (Mask@@6 T@PolymorphicMapType_61463) (pm_f_37@@1 T@Field_40180_203868) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (=> (and (HasDirectPerm_40180_203932 Mask@@6 null pm_f_37@@1) (IsPredicateField_40180_203959 pm_f_37@@1)) (and (and (and (forall ((o2_37 T@Ref) (f_74 T@Field_61502_53) ) (!  (=> (select (|PolymorphicMapType_61991_61502_53#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@9) null (PredicateMaskField_40180 pm_f_37@@1))) o2_37 f_74) (= (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@9) o2_37 f_74) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@1) o2_37 f_74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@1) o2_37 f_74))
)) (forall ((o2_37@@0 T@Ref) (f_74@@0 T@Field_61515_61516) ) (!  (=> (select (|PolymorphicMapType_61991_61502_61516#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@9) null (PredicateMaskField_40180 pm_f_37@@1))) o2_37@@0 f_74@@0) (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@9) o2_37@@0 f_74@@0) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@@1) o2_37@@0 f_74@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@@1) o2_37@@0 f_74@@0))
))) (forall ((o2_37@@1 T@Ref) (f_74@@1 T@Field_40180_203868) ) (!  (=> (select (|PolymorphicMapType_61991_61502_203868#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@9) null (PredicateMaskField_40180 pm_f_37@@1))) o2_37@@1 f_74@@1) (= (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@9) o2_37@@1 f_74@@1) (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| ExhaleHeap@@1) o2_37@@1 f_74@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| ExhaleHeap@@1) o2_37@@1 f_74@@1))
))) (forall ((o2_37@@2 T@Ref) (f_74@@2 T@Field_40180_204001) ) (!  (=> (select (|PolymorphicMapType_61991_61502_204981#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@9) null (PredicateMaskField_40180 pm_f_37@@1))) o2_37@@2 f_74@@2) (= (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@9) o2_37@@2 f_74@@2) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@1) o2_37@@2 f_74@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@1) o2_37@@2 f_74@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (IsPredicateField_40180_203959 pm_f_37@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_61442) (ExhaleHeap@@2 T@PolymorphicMapType_61442) (Mask@@7 T@PolymorphicMapType_61463) (pm_f_37@@2 T@Field_40180_203868) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@7) (=> (and (HasDirectPerm_40180_203932 Mask@@7 null pm_f_37@@2) (IsWandField_40180_205508 pm_f_37@@2)) (and (and (and (forall ((o2_37@@3 T@Ref) (f_74@@3 T@Field_61502_53) ) (!  (=> (select (|PolymorphicMapType_61991_61502_53#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@10) null (WandMaskField_40180 pm_f_37@@2))) o2_37@@3 f_74@@3) (= (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@10) o2_37@@3 f_74@@3) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@2) o2_37@@3 f_74@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@2) o2_37@@3 f_74@@3))
)) (forall ((o2_37@@4 T@Ref) (f_74@@4 T@Field_61515_61516) ) (!  (=> (select (|PolymorphicMapType_61991_61502_61516#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@10) null (WandMaskField_40180 pm_f_37@@2))) o2_37@@4 f_74@@4) (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@10) o2_37@@4 f_74@@4) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@@2) o2_37@@4 f_74@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@@2) o2_37@@4 f_74@@4))
))) (forall ((o2_37@@5 T@Ref) (f_74@@5 T@Field_40180_203868) ) (!  (=> (select (|PolymorphicMapType_61991_61502_203868#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@10) null (WandMaskField_40180 pm_f_37@@2))) o2_37@@5 f_74@@5) (= (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@10) o2_37@@5 f_74@@5) (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| ExhaleHeap@@2) o2_37@@5 f_74@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| ExhaleHeap@@2) o2_37@@5 f_74@@5))
))) (forall ((o2_37@@6 T@Ref) (f_74@@6 T@Field_40180_204001) ) (!  (=> (select (|PolymorphicMapType_61991_61502_204981#PolymorphicMapType_61991| (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@10) null (WandMaskField_40180 pm_f_37@@2))) o2_37@@6 f_74@@6) (= (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@10) o2_37@@6 f_74@@6) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@2) o2_37@@6 f_74@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@2) o2_37@@6 f_74@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@7) (IsWandField_40180_205508 pm_f_37@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1@@3 (Array T@EdgeDomainType Bool)) (u_3@@0 T@Ref) (v_2@@2 T@Ref) (w_2@@0 T@Ref) ) (!  (=> (and (exists_path_ EG_1@@3 u_3@@0 w_2@@0) (exists_path_ EG_1@@3 w_2@@0 v_2@@2)) (exists_path_ EG_1@@3 u_3@@0 v_2@@2))
 :qid |stdinbpl.767:15|
 :skolemid |92|
 :pattern ( (exists_path EG_1@@3 u_3@@0 w_2@@0) (exists_path EG_1@@3 w_2@@0 v_2@@2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_61442) (ExhaleHeap@@3 T@PolymorphicMapType_61442) (Mask@@8 T@PolymorphicMapType_61463) (o_69 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@8) (=> (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@11) o_69 $allocated) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@3) o_69 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@8) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@3) o_69 $allocated))
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
(assert (forall ((Heap@@13 T@PolymorphicMapType_61442) (ExhaleHeap@@5 T@PolymorphicMapType_61442) (Mask@@18 T@PolymorphicMapType_61463) (o_69@@0 T@Ref) (f_74@@7 T@Field_40180_204001) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_40180_208813 Mask@@18 o_69@@0 f_74@@7) (= (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@13) o_69@@0 f_74@@7) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@5) o_69@@0 f_74@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| ExhaleHeap@@5) o_69@@0 f_74@@7))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_61442) (ExhaleHeap@@6 T@PolymorphicMapType_61442) (Mask@@19 T@PolymorphicMapType_61463) (o_69@@1 T@Ref) (f_74@@8 T@Field_40180_203868) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_40180_203932 Mask@@19 o_69@@1 f_74@@8) (= (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@14) o_69@@1 f_74@@8) (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| ExhaleHeap@@6) o_69@@1 f_74@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| ExhaleHeap@@6) o_69@@1 f_74@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_61442) (ExhaleHeap@@7 T@PolymorphicMapType_61442) (Mask@@20 T@PolymorphicMapType_61463) (o_69@@2 T@Ref) (f_74@@9 T@Field_61502_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_40180_53 Mask@@20 o_69@@2 f_74@@9) (= (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@15) o_69@@2 f_74@@9) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@7) o_69@@2 f_74@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| ExhaleHeap@@7) o_69@@2 f_74@@9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_61442) (ExhaleHeap@@8 T@PolymorphicMapType_61442) (Mask@@21 T@PolymorphicMapType_61463) (o_69@@3 T@Ref) (f_74@@10 T@Field_61515_61516) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_40180_40181 Mask@@21 o_69@@3 f_74@@10) (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@16) o_69@@3 f_74@@10) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@@8) o_69@@3 f_74@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@@8) o_69@@3 f_74@@10))
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
(assert (forall ((Heap@@17 T@PolymorphicMapType_61442) (Mask@@22 T@PolymorphicMapType_61463) (g0@@3 (Array T@Ref Bool)) (g1@@3 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@17 Mask@@22) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6369 (|apply_TCFraming#condqp2| Heap@@17 g0@@3 g1@@3)) (FrameFragment_6369 (|apply_TCFraming#condqp3| Heap@@17 g0@@3 g1@@3))) g0@@3 g1@@3))) (=> (|Set#Equal_40372| (|Set#Intersection_40372| g1@@3 g0@@3) |Set#Empty_40375|) (forall ((u_3@@1 T@Ref) (v_2@@3 T@Ref) ) (!  (=> (and (select g0@@3 u_3@@1) (and (select g0@@3 v_2@@3) (exists_path ($$ Heap@@17 g0@@3) u_3@@1 v_2@@3))) (exists_path ($$ Heap@@17 (|Set#Union_40369| g0@@3 g1@@3)) u_3@@1 v_2@@3))
 :qid |stdinbpl.1027:285|
 :skolemid |125|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@17 g0@@3)) g0@@3) u_3@@1 v_2@@3))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@17 (|Set#Union_40369| g0@@3 g1@@3))) (|Set#Union_40369| g0@@3 g1@@3)) u_3@@1 v_2@@3))
))))
 :qid |stdinbpl.1025:15|
 :skolemid |126|
 :pattern ( (state Heap@@17 Mask@@22) (|apply_TCFraming'| Heap@@17 g0@@3 g1@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_61442) (Mask@@23 T@PolymorphicMapType_61463) (g0@@4 (Array T@Ref Bool)) (g1@@4 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@18 Mask@@23) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6369 (|apply_TCFraming#condqp2| Heap@@18 g0@@4 g1@@4)) (FrameFragment_6369 (|apply_TCFraming#condqp3| Heap@@18 g0@@4 g1@@4))) g0@@4 g1@@4))) (=> (|Set#Equal_40372| (|Set#Intersection_40372| g1@@4 g0@@4) |Set#Empty_40375|) (forall ((u_1@@0 T@Ref) (v_1_1@@0 T@Ref) ) (!  (=> (and (select g1@@4 u_1@@0) (and (select g1@@4 v_1_1@@0) (exists_path ($$ Heap@@18 g1@@4) u_1@@0 v_1_1@@0))) (exists_path ($$ Heap@@18 (|Set#Union_40369| g1@@4 g0@@4)) u_1@@0 v_1_1@@0))
 :qid |stdinbpl.1034:285|
 :skolemid |127|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@18 g1@@4)) g1@@4) u_1@@0 v_1_1@@0))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@18 (|Set#Union_40369| g1@@4 g0@@4))) (|Set#Union_40369| g1@@4 g0@@4)) u_1@@0 v_1_1@@0))
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
(assert (forall ((Heap@@19 T@PolymorphicMapType_61442) (Mask@@24 T@PolymorphicMapType_61463) (refs@@3 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@19 Mask@@24) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (FrameFragment_6369 (|$$#condqp1| Heap@@19 refs@@3)) refs@@3))) (forall ((p_1_1 T@Ref) (s_1 T@Ref) ) (!  (=> (and (select refs@@3 p_1_1) (exists_path (|$$'| Heap@@19 refs@@3) p_1_1 s_1)) (select refs@@3 s_1))
 :qid |stdinbpl.857:122|
 :skolemid |105|
 :pattern ( (select refs@@3 p_1_1) (select refs@@3 s_1) (exists_path (|$$'| Heap@@19 refs@@3) p_1_1 s_1))
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
(assert (forall ((EG_1@@5 (Array T@EdgeDomainType Bool)) (p_1@@0 T@Ref) (s_2@@0 T@Ref) ) (! (= (edge_ EG_1@@5 p_1@@0 s_2@@0) (select EG_1@@5 (create_edge p_1@@0 s_2@@0)))
 :qid |stdinbpl.728:15|
 :skolemid |84|
 :pattern ( (select EG_1@@5 (create_edge p_1@@0 s_2@@0)))
 :pattern ( (edge EG_1@@5 p_1@@0 s_2@@0))
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
(assert (forall ((p_1@@1 T@Ref) (s_2@@1 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@1 s_2@@1)) p_1@@1) (= (edge_succ (create_edge p_1@@1 s_2@@1)) s_2@@1))
 :qid |stdinbpl.679:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@1 s_2@@1))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_61442) (o_68 T@Ref) (f_71 T@Field_40180_203868) (v T@FrameType) ) (! (succHeap Heap@@21 (PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@21) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@21) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@21) (store (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@21) o_68 f_71 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@21) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@21) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@21) (store (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@21) o_68 f_71 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_61442) (o_68@@0 T@Ref) (f_71@@0 T@Field_40180_204001) (v@@0 T@PolymorphicMapType_61991) ) (! (succHeap Heap@@22 (PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@22) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@22) (store (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@22) o_68@@0 f_71@@0 v@@0) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@22) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@22) (store (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@22) o_68@@0 f_71@@0 v@@0) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_61442) (o_68@@1 T@Ref) (f_71@@1 T@Field_61515_61516) (v@@1 T@Ref) ) (! (succHeap Heap@@23 (PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@23) (store (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@23) o_68@@1 f_71@@1 v@@1) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@23) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_61442 (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@23) (store (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@23) o_68@@1 f_71@@1 v@@1) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@23) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_61442) (o_68@@2 T@Ref) (f_71@@2 T@Field_61502_53) (v@@2 Bool) ) (! (succHeap Heap@@24 (PolymorphicMapType_61442 (store (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@24) o_68@@2 f_71@@2 v@@2) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@24) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@24) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_61442 (store (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@24) o_68@@2 f_71@@2 v@@2) (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@24) (|PolymorphicMapType_61442_40180_204045#PolymorphicMapType_61442| Heap@@24) (|PolymorphicMapType_61442_61502_203868#PolymorphicMapType_61442| Heap@@24)))
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
(assert (forall ((o_68@@3 T@Ref) (f_73 T@Field_61515_61516) (Heap@@27 T@PolymorphicMapType_61442) ) (!  (=> (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@27) o_68@@3 $allocated) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@27) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@27) o_68@@3 f_73) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@27) o_68@@3 f_73))
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
(assert (forall ((EG_1@@7 (Array T@EdgeDomainType Bool)) (p_1@@2 T@Ref) (s_2@@2 T@Ref) ) (! (= (edge EG_1@@7 p_1@@2 s_2@@2) (edge_ EG_1@@7 p_1@@2 s_2@@2))
 :qid |stdinbpl.722:15|
 :skolemid |83|
 :pattern ( (edge EG_1@@7 p_1@@2 s_2@@2))
)))
(assert (forall ((EG_1@@8 (Array T@EdgeDomainType Bool)) (start@@0 T@Ref) (end@@0 T@Ref) ) (! (= (exists_path EG_1@@8 start@@0 end@@0) (exists_path_ EG_1@@8 start@@0 end@@0))
 :qid |stdinbpl.752:15|
 :skolemid |89|
 :pattern ( (exists_path EG_1@@8 start@@0 end@@0))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_61442) (g0@@8 (Array T@Ref Bool)) (g1@@8 (Array T@Ref Bool)) ) (!  (and (= (apply_TCFraming Heap@@28 g0@@8 g1@@8) (|apply_TCFraming'| Heap@@28 g0@@8 g1@@8)) (dummyFunction_8494 (|apply_TCFraming#triggerStateless| g0@@8 g1@@8)))
 :qid |stdinbpl.984:15|
 :skolemid |119|
 :pattern ( (apply_TCFraming Heap@@28 g0@@8 g1@@8))
)))
; Valid

