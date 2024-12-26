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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_61442)
(declare-fun QPMask@14 () T@PolymorphicMapType_61463)
(declare-fun g1@@9 () (Array T@Ref Bool))
(declare-fun dummyFunction_40181 (T@Ref) Bool)
(declare-fun neverTriggered84 (T@Ref) Bool)
(declare-fun QPMask@11 () T@PolymorphicMapType_61463)
(declare-fun n$7_3 () T@Ref)
(declare-fun g0@@9 () (Array T@Ref Bool))
(declare-fun QPMask@13 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered83 (T@Ref) Bool)
(declare-fun QPMask@12 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered82 (T@Ref) Bool)
(declare-fun n$6_4 () T@Ref)
(declare-fun qpRange81 (T@Ref) Bool)
(declare-fun invRecv81 (T@Ref) T@Ref)
(declare-fun QPMask@10 () T@PolymorphicMapType_61463)
(declare-fun n$4_13 () T@Ref)
(declare-fun qpRange80 (T@Ref) Bool)
(declare-fun invRecv80 (T@Ref) T@Ref)
(declare-fun n$7_2 () T@Ref)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_61442)
(declare-fun x1_2 () T@Ref)
(declare-fun n$6_2 () T@Ref)
(declare-fun neverTriggered86 (T@Ref) Bool)
(declare-fun QPMask@9 () T@PolymorphicMapType_61463)
(declare-fun QPMask@8 () T@PolymorphicMapType_61463)
(declare-fun qpRange86 (T@Ref) Bool)
(declare-fun invRecv86 (T@Ref) T@Ref)
(declare-fun n$4_2_1 () T@Ref)
(declare-fun QPMask@5 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered85 (T@Ref) Bool)
(declare-fun qpRange85 (T@Ref) Bool)
(declare-fun invRecv85 (T@Ref) T@Ref)
(declare-fun neverTriggered91 (T@Ref) Bool)
(declare-fun QPMask@6 () T@PolymorphicMapType_61463)
(declare-fun qpRange91 (T@Ref) Bool)
(declare-fun invRecv91 (T@Ref) T@Ref)
(declare-fun neverTriggered92 (T@Ref) Bool)
(declare-fun QPMask@7 () T@PolymorphicMapType_61463)
(declare-fun qpRange92 (T@Ref) Bool)
(declare-fun invRecv92 (T@Ref) T@Ref)
(declare-fun Heap@@29 () T@PolymorphicMapType_61442)
(declare-fun x0 () T@Ref)
(declare-fun arg_g@0 () (Array T@Ref Bool))
(declare-fun QPMask@4 () T@PolymorphicMapType_61463)
(declare-fun qpRange90 (T@Ref) Bool)
(declare-fun invRecv90 (T@Ref) T@Ref)
(declare-fun n$0_4 () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered89 (T@Ref) Bool)
(declare-fun qpRange89 (T@Ref) Bool)
(declare-fun invRecv89 (T@Ref) T@Ref)
(declare-fun neverTriggered87 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_61463)
(declare-fun qpRange87 (T@Ref) Bool)
(declare-fun invRecv87 (T@Ref) T@Ref)
(declare-fun neverTriggered88 (T@Ref) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_61463)
(declare-fun qpRange88 (T@Ref) Bool)
(declare-fun invRecv88 (T@Ref) T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered79 (T@Ref) Bool)
(declare-fun QPMask@15 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered78 (T@Ref) Bool)
(declare-fun n_38 () T@Ref)
(declare-fun m_5 () T@Ref)
(declare-fun QPMask@16 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered77 (T@Ref) Bool)
(declare-fun n_37 () T@Ref)
(declare-fun m_4 () T@Ref)
(declare-fun QPMask@17 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered76 (T@Ref) Bool)
(declare-fun n$2_29 () T@Ref)
(declare-fun QPMask@18 () T@PolymorphicMapType_61463)
(declare-fun neverTriggered75 (T@Ref) Bool)
(declare-fun n$1_17 () T@Ref)
(declare-fun n$0_32 () T@Ref)
(declare-fun qpRange74 (T@Ref) Bool)
(declare-fun invRecv74 (T@Ref) T@Ref)
(set-info :boogie-vc-id unjoin_dags)
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
 (=> (= (ControlFlow 0 0) 151) (let ((anon120_Then_correct  (and (=> (= (ControlFlow 0 126) (- 0 128)) (forall ((n_11_1 T@Ref) ) (!  (=> (and (select g1@@9 n_11_1) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_11_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5900:25|
 :skolemid |632|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_11_1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@14) n_11_1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_11_1 next))
))) (=> (forall ((n_11_1@@0 T@Ref) ) (!  (=> (and (select g1@@9 n_11_1@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_11_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5900:25|
 :skolemid |632|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_11_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@14) n_11_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_11_1@@0 next))
)) (and (=> (= (ControlFlow 0 126) (- 0 127)) (forall ((n_11_1@@1 T@Ref) (n_11_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_1@@1 n_11_2)) (select g1@@9 n_11_1@@1)) (select g1@@9 n_11_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_11_1@@1 n_11_2)))
 :qid |stdinbpl.5907:25|
 :skolemid |633|
 :pattern ( (neverTriggered84 n_11_1@@1) (neverTriggered84 n_11_2))
))) (=> (forall ((n_11_1@@2 T@Ref) (n_11_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_1@@2 n_11_2@@0)) (select g1@@9 n_11_1@@2)) (select g1@@9 n_11_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_11_1@@2 n_11_2@@0)))
 :qid |stdinbpl.5907:25|
 :skolemid |633|
 :pattern ( (neverTriggered84 n_11_1@@2) (neverTriggered84 n_11_2@@0))
)) (=> (= (ControlFlow 0 126) (- 0 125)) (forall ((n_11_1@@3 T@Ref) ) (!  (=> (select g1@@9 n_11_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@11) n_11_1@@3 next) NoPerm)))
 :qid |stdinbpl.5914:25|
 :skolemid |634|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_11_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@14) n_11_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_11_1@@3 next))
)))))))))
(let ((anon59_correct true))
(let ((anon119_Then_correct  (=> (select g1@@9 n$7_3) (and (=> (= (ControlFlow 0 129) 126) anon120_Then_correct) (=> (= (ControlFlow 0 129) 123) anon59_correct)))))
(let ((anon119_Else_correct  (=> (and (not (select g1@@9 n$7_3)) (= (ControlFlow 0 124) 123)) anon59_correct)))
(let ((anon118_Else_correct true))
(let ((anon117_Else_correct  (=> (acyclic_graph ($$ PostHeap@0 g0@@9)) (=> (and (state PostHeap@0 QPMask@11) (state PostHeap@0 QPMask@11)) (and (and (=> (= (ControlFlow 0 130) 122) anon118_Else_correct) (=> (= (ControlFlow 0 130) 129) anon119_Then_correct)) (=> (= (ControlFlow 0 130) 124) anon119_Else_correct))))))
(let ((anon117_Then_correct  (and (=> (= (ControlFlow 0 119) (- 0 121)) (forall ((n_10_1 T@Ref) ) (!  (=> (and (select g0@@9 n_10_1) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_10_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5850:21|
 :skolemid |627|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_10_1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@13) n_10_1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_10_1 next))
))) (=> (forall ((n_10_1@@0 T@Ref) ) (!  (=> (and (select g0@@9 n_10_1@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_10_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5850:21|
 :skolemid |627|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_10_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@13) n_10_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_10_1@@0 next))
)) (and (=> (= (ControlFlow 0 119) (- 0 120)) (forall ((n_10_1@@1 T@Ref) (n_10_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1@@1 n_10_2)) (select g0@@9 n_10_1@@1)) (select g0@@9 n_10_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_10_1@@1 n_10_2)))
 :qid |stdinbpl.5857:21|
 :skolemid |628|
 :pattern ( (neverTriggered83 n_10_1@@1) (neverTriggered83 n_10_2))
))) (=> (forall ((n_10_1@@2 T@Ref) (n_10_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1@@2 n_10_2@@0)) (select g0@@9 n_10_1@@2)) (select g0@@9 n_10_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_10_1@@2 n_10_2@@0)))
 :qid |stdinbpl.5857:21|
 :skolemid |628|
 :pattern ( (neverTriggered83 n_10_1@@2) (neverTriggered83 n_10_2@@0))
)) (=> (= (ControlFlow 0 119) (- 0 118)) (forall ((n_10_1@@3 T@Ref) ) (!  (=> (select g0@@9 n_10_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@11) n_10_1@@3 next) NoPerm)))
 :qid |stdinbpl.5864:21|
 :skolemid |629|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_10_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@13) n_10_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_10_1@@3 next))
)))))))))
(let ((anon116_Else_correct  (=> (acyclic_graph ($$ PostHeap@0 g1@@9)) (=> (and (state PostHeap@0 QPMask@11) (state PostHeap@0 QPMask@11)) (and (=> (= (ControlFlow 0 131) 119) anon117_Then_correct) (=> (= (ControlFlow 0 131) 130) anon117_Else_correct))))))
(let ((anon116_Then_correct  (and (=> (= (ControlFlow 0 115) (- 0 117)) (forall ((n_9 T@Ref) ) (!  (=> (and (select g1@@9 n_9) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_9 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5802:21|
 :skolemid |622|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_9 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@12) n_9 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_9 next))
))) (=> (forall ((n_9@@0 T@Ref) ) (!  (=> (and (select g1@@9 n_9@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_9@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5802:21|
 :skolemid |622|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_9@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@12) n_9@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_9@@0 next))
)) (and (=> (= (ControlFlow 0 115) (- 0 116)) (forall ((n_9@@1 T@Ref) (n_9_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@1 n_9_1)) (select g1@@9 n_9@@1)) (select g1@@9 n_9_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_9@@1 n_9_1)))
 :qid |stdinbpl.5809:21|
 :skolemid |623|
 :pattern ( (neverTriggered82 n_9@@1) (neverTriggered82 n_9_1))
))) (=> (forall ((n_9@@2 T@Ref) (n_9_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@2 n_9_1@@0)) (select g1@@9 n_9@@2)) (select g1@@9 n_9_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_9@@2 n_9_1@@0)))
 :qid |stdinbpl.5809:21|
 :skolemid |623|
 :pattern ( (neverTriggered82 n_9@@2) (neverTriggered82 n_9_1@@0))
)) (=> (= (ControlFlow 0 115) (- 0 114)) (forall ((n_9@@3 T@Ref) ) (!  (=> (select g1@@9 n_9@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@11) n_9@@3 next) NoPerm)))
 :qid |stdinbpl.5816:21|
 :skolemid |624|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_9@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@12) n_9@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n_9@@3 next))
)))))))))
(let ((anon113_Else_correct  (=> (forall ((n$6_1 T@Ref) ) (!  (=> (and (select g1@@9 n$6_1) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$6_1 next) null))) (select g1@@9 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$6_1 next)))
 :qid |stdinbpl.5786:20|
 :skolemid |621|
 :pattern ( (select g1@@9 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$6_1 next)))
 :pattern ( (select g1@@9 n$6_1) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$6_1 next))
)) (=> (and (state PostHeap@0 QPMask@11) (state PostHeap@0 QPMask@11)) (and (=> (= (ControlFlow 0 132) 115) anon116_Then_correct) (=> (= (ControlFlow 0 132) 131) anon116_Else_correct))))))
(let ((anon50_correct true))
(let ((anon115_Else_correct  (=> (and (not (and (select g1@@9 n$6_4) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$6_4 next) null)))) (= (ControlFlow 0 110) 107)) anon50_correct)))
(let ((anon115_Then_correct  (=> (and (select g1@@9 n$6_4) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$6_4 next) null))) (and (=> (= (ControlFlow 0 108) (- 0 109)) (HasDirectPerm_40180_40181 QPMask@11 n$6_4 next)) (=> (HasDirectPerm_40180_40181 QPMask@11 n$6_4 next) (=> (= (ControlFlow 0 108) 107) anon50_correct))))))
(let ((anon114_Else_correct  (=> (not (select g1@@9 n$6_4)) (and (=> (= (ControlFlow 0 113) 108) anon115_Then_correct) (=> (= (ControlFlow 0 113) 110) anon115_Else_correct)))))
(let ((anon114_Then_correct  (=> (select g1@@9 n$6_4) (and (=> (= (ControlFlow 0 111) (- 0 112)) (HasDirectPerm_40180_40181 QPMask@11 n$6_4 next)) (=> (HasDirectPerm_40180_40181 QPMask@11 n$6_4 next) (and (=> (= (ControlFlow 0 111) 108) anon115_Then_correct) (=> (= (ControlFlow 0 111) 110) anon115_Else_correct)))))))
(let ((anon112_Else_correct  (and (=> (= (ControlFlow 0 133) (- 0 134)) (forall ((n$5_1 T@Ref) (n$5_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_1 n$5_1_1)) (select g1@@9 n$5_1)) (select g1@@9 n$5_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_1 n$5_1_1)))
 :qid |stdinbpl.5741:15|
 :skolemid |615|
))) (=> (forall ((n$5_1@@0 T@Ref) (n$5_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_1@@0 n$5_1_1@@0)) (select g1@@9 n$5_1@@0)) (select g1@@9 n$5_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_1@@0 n$5_1_1@@0)))
 :qid |stdinbpl.5741:15|
 :skolemid |615|
)) (=> (and (and (forall ((n$5_1@@1 T@Ref) ) (!  (=> (and (select g1@@9 n$5_1@@1) (< NoPerm FullPerm)) (and (qpRange81 n$5_1@@1) (= (invRecv81 n$5_1@@1) n$5_1@@1)))
 :qid |stdinbpl.5747:22|
 :skolemid |616|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$5_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@11) n$5_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$5_1@@1 next))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select g1@@9 (invRecv81 o_4)) (< NoPerm FullPerm)) (qpRange81 o_4)) (= (invRecv81 o_4) o_4))
 :qid |stdinbpl.5751:22|
 :skolemid |617|
 :pattern ( (invRecv81 o_4))
))) (and (forall ((n$5_1@@2 T@Ref) ) (!  (=> (select g1@@9 n$5_1@@2) (not (= n$5_1@@2 null)))
 :qid |stdinbpl.5757:22|
 :skolemid |618|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$5_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@11) n$5_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$5_1@@2 next))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select g1@@9 (invRecv81 o_4@@0)) (< NoPerm FullPerm)) (qpRange81 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv81 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@11) o_4@@0 next) (+ (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@10) o_4@@0 next) FullPerm)))) (=> (not (and (and (select g1@@9 (invRecv81 o_4@@0)) (< NoPerm FullPerm)) (qpRange81 o_4@@0))) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@11) o_4@@0 next) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@10) o_4@@0 next))))
 :qid |stdinbpl.5763:22|
 :skolemid |619|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@11) o_4@@0 next))
)))) (=> (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_61502_53) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@10) o_4@@1 f_5) (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@11) o_4@@1 f_5)))
 :qid |stdinbpl.5767:29|
 :skolemid |620|
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@10) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@11) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_61515_61516) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@10) o_4@@2 f_5@@0) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@11) o_4@@2 f_5@@0)))
 :qid |stdinbpl.5767:29|
 :skolemid |620|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@10) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@11) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_40180_203868) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@10) o_4@@3 f_5@@1) (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@11) o_4@@3 f_5@@1)))
 :qid |stdinbpl.5767:29|
 :skolemid |620|
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@10) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@11) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_40180_204001) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@10) o_4@@4 f_5@@2) (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@11) o_4@@4 f_5@@2)))
 :qid |stdinbpl.5767:29|
 :skolemid |620|
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@10) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@11) o_4@@4 f_5@@2))
))) (state PostHeap@0 QPMask@11)) (and (and (=> (= (ControlFlow 0 133) 132) anon113_Else_correct) (=> (= (ControlFlow 0 133) 111) anon114_Then_correct)) (=> (= (ControlFlow 0 133) 113) anon114_Else_correct))))))))
(let ((anon112_Then_correct true))
(let ((anon109_Else_correct  (=> (forall ((n$4_1_2 T@Ref) ) (!  (=> (and (select g0@@9 n$4_1_2) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$4_1_2 next) null))) (select g0@@9 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$4_1_2 next)))
 :qid |stdinbpl.5728:20|
 :skolemid |614|
 :pattern ( (select g0@@9 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$4_1_2 next)))
 :pattern ( (select g0@@9 n$4_1_2) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$4_1_2 next))
)) (=> (and (state PostHeap@0 QPMask@10) (not (select g1@@9 null))) (and (=> (= (ControlFlow 0 135) 106) anon112_Then_correct) (=> (= (ControlFlow 0 135) 133) anon112_Else_correct))))))
(let ((anon42_correct true))
(let ((anon111_Else_correct  (=> (and (not (and (select g0@@9 n$4_13) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$4_13 next) null)))) (= (ControlFlow 0 102) 99)) anon42_correct)))
(let ((anon111_Then_correct  (=> (and (select g0@@9 n$4_13) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$4_13 next) null))) (and (=> (= (ControlFlow 0 100) (- 0 101)) (HasDirectPerm_40180_40181 QPMask@10 n$4_13 next)) (=> (HasDirectPerm_40180_40181 QPMask@10 n$4_13 next) (=> (= (ControlFlow 0 100) 99) anon42_correct))))))
(let ((anon110_Else_correct  (=> (not (select g0@@9 n$4_13)) (and (=> (= (ControlFlow 0 105) 100) anon111_Then_correct) (=> (= (ControlFlow 0 105) 102) anon111_Else_correct)))))
(let ((anon110_Then_correct  (=> (select g0@@9 n$4_13) (and (=> (= (ControlFlow 0 103) (- 0 104)) (HasDirectPerm_40180_40181 QPMask@10 n$4_13 next)) (=> (HasDirectPerm_40180_40181 QPMask@10 n$4_13 next) (and (=> (= (ControlFlow 0 103) 100) anon111_Then_correct) (=> (= (ControlFlow 0 103) 102) anon111_Else_correct)))))))
(let ((anon108_Else_correct  (and (=> (= (ControlFlow 0 136) (- 0 137)) (forall ((n$3_1_2 T@Ref) (n$3_1_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_1_2 n$3_1_3)) (select g0@@9 n$3_1_2)) (select g0@@9 n$3_1_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_1_2 n$3_1_3)))
 :qid |stdinbpl.5683:15|
 :skolemid |608|
))) (=> (forall ((n$3_1_2@@0 T@Ref) (n$3_1_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_1_2@@0 n$3_1_3@@0)) (select g0@@9 n$3_1_2@@0)) (select g0@@9 n$3_1_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_1_2@@0 n$3_1_3@@0)))
 :qid |stdinbpl.5683:15|
 :skolemid |608|
)) (=> (and (and (forall ((n$3_1_2@@1 T@Ref) ) (!  (=> (and (select g0@@9 n$3_1_2@@1) (< NoPerm FullPerm)) (and (qpRange80 n$3_1_2@@1) (= (invRecv80 n$3_1_2@@1) n$3_1_2@@1)))
 :qid |stdinbpl.5689:22|
 :skolemid |609|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$3_1_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@10) n$3_1_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$3_1_2@@1 next))
)) (forall ((o_4@@5 T@Ref) ) (!  (=> (and (and (select g0@@9 (invRecv80 o_4@@5)) (< NoPerm FullPerm)) (qpRange80 o_4@@5)) (= (invRecv80 o_4@@5) o_4@@5))
 :qid |stdinbpl.5693:22|
 :skolemid |610|
 :pattern ( (invRecv80 o_4@@5))
))) (and (forall ((n$3_1_2@@2 T@Ref) ) (!  (=> (select g0@@9 n$3_1_2@@2) (not (= n$3_1_2@@2 null)))
 :qid |stdinbpl.5699:22|
 :skolemid |611|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$3_1_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@10) n$3_1_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| PostHeap@0) n$3_1_2@@2 next))
)) (forall ((o_4@@6 T@Ref) ) (!  (and (=> (and (and (select g0@@9 (invRecv80 o_4@@6)) (< NoPerm FullPerm)) (qpRange80 o_4@@6)) (and (=> (< NoPerm FullPerm) (= (invRecv80 o_4@@6) o_4@@6)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@10) o_4@@6 next) (+ (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_4@@6 next) FullPerm)))) (=> (not (and (and (select g0@@9 (invRecv80 o_4@@6)) (< NoPerm FullPerm)) (qpRange80 o_4@@6))) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@10) o_4@@6 next) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_4@@6 next))))
 :qid |stdinbpl.5705:22|
 :skolemid |612|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@10) o_4@@6 next))
)))) (=> (and (and (and (and (forall ((o_4@@7 T@Ref) (f_5@@3 T@Field_61502_53) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| ZeroMask) o_4@@7 f_5@@3) (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@10) o_4@@7 f_5@@3)))
 :qid |stdinbpl.5709:29|
 :skolemid |613|
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| ZeroMask) o_4@@7 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@10) o_4@@7 f_5@@3))
)) (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_61515_61516) ) (!  (=> (not (= f_5@@4 next)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_4@@8 f_5@@4) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@10) o_4@@8 f_5@@4)))
 :qid |stdinbpl.5709:29|
 :skolemid |613|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@10) o_4@@8 f_5@@4))
))) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_40180_203868) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| ZeroMask) o_4@@9 f_5@@5) (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@10) o_4@@9 f_5@@5)))
 :qid |stdinbpl.5709:29|
 :skolemid |613|
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| ZeroMask) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@10) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_40180_204001) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| ZeroMask) o_4@@10 f_5@@6) (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@10) o_4@@10 f_5@@6)))
 :qid |stdinbpl.5709:29|
 :skolemid |613|
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| ZeroMask) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@10) o_4@@10 f_5@@6))
))) (state PostHeap@0 QPMask@10)) (and (and (=> (= (ControlFlow 0 136) 135) anon109_Else_correct) (=> (= (ControlFlow 0 136) 103) anon110_Then_correct)) (=> (= (ControlFlow 0 136) 105) anon110_Else_correct))))))))
(let ((anon108_Then_correct true))
(let ((anon107_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (not (select g0@@9 null))) (and (=> (= (ControlFlow 0 138) 98) anon108_Then_correct) (=> (= (ControlFlow 0 138) 136) anon108_Else_correct)))))
(let ((anon86_correct true))
(let ((anon133_Else_correct  (=> (and (not (select g1@@9 n$7_2)) (= (ControlFlow 0 71) 68)) anon86_correct)))
(let ((anon133_Then_correct  (=> (select g1@@9 n$7_2) (and (=> (= (ControlFlow 0 69) (- 0 70)) (exists_path ($$ ExhaleHeap@2 g1@@9) x1_2 n$7_2)) (=> (exists_path ($$ ExhaleHeap@2 g1@@9) x1_2 n$7_2) (=> (= (ControlFlow 0 69) 68) anon86_correct))))))
(let ((anon132_Else_correct true))
(let ((anon130_Else_correct  (=> (forall ((n$6_3_1 T@Ref) ) (!  (=> (and (select g1@@9 n$6_3_1) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$6_3_1 next) null))) (select g1@@9 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$6_3_1 next)))
 :qid |stdinbpl.6352:20|
 :skolemid |687|
 :pattern ( (select g1@@9 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$6_3_1 next)))
 :pattern ( (select g1@@9 n$6_3_1) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$6_3_1 next))
)) (and (=> (= (ControlFlow 0 72) (- 0 74)) (acyclic_graph ($$ ExhaleHeap@2 g1@@9))) (=> (acyclic_graph ($$ ExhaleHeap@2 g1@@9)) (and (=> (= (ControlFlow 0 72) (- 0 73)) (acyclic_graph ($$ ExhaleHeap@2 g0@@9))) (=> (acyclic_graph ($$ ExhaleHeap@2 g0@@9)) (and (and (=> (= (ControlFlow 0 72) 67) anon132_Else_correct) (=> (= (ControlFlow 0 72) 69) anon133_Then_correct)) (=> (= (ControlFlow 0 72) 71) anon133_Else_correct)))))))))
(let ((anon82_correct true))
(let ((anon131_Else_correct  (=> (and (not (and (select g1@@9 n$6_2) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$6_2 next) null)))) (= (ControlFlow 0 66) 63)) anon82_correct)))
(let ((anon131_Then_correct  (=> (and (select g1@@9 n$6_2) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$6_2 next) null))) (and (=> (= (ControlFlow 0 64) (- 0 65)) (select g1@@9 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$6_2 next))) (=> (select g1@@9 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$6_2 next)) (=> (= (ControlFlow 0 64) 63) anon82_correct))))))
(let ((anon128_Else_correct  (=> (forall ((n$4_3_1 T@Ref) ) (!  (=> (and (select g0@@9 n$4_3_1) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$4_3_1 next) null))) (select g0@@9 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$4_3_1 next)))
 :qid |stdinbpl.6298:20|
 :skolemid |680|
 :pattern ( (select g0@@9 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$4_3_1 next)))
 :pattern ( (select g0@@9 n$4_3_1) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$4_3_1 next))
)) (and (=> (= (ControlFlow 0 75) (- 0 78)) (not (select g1@@9 null))) (=> (not (select g1@@9 null)) (and (=> (= (ControlFlow 0 75) (- 0 77)) (forall ((n$5_2 T@Ref) (n$5_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_2 n$5_2_1)) (select g1@@9 n$5_2)) (select g1@@9 n$5_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_2 n$5_2_1)))
 :qid |stdinbpl.6311:17|
 :skolemid |681|
 :pattern ( (neverTriggered86 n$5_2) (neverTriggered86 n$5_2_1))
))) (=> (forall ((n$5_2@@0 T@Ref) (n$5_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_2@@0 n$5_2_1@@0)) (select g1@@9 n$5_2@@0)) (select g1@@9 n$5_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_2@@0 n$5_2_1@@0)))
 :qid |stdinbpl.6311:17|
 :skolemid |681|
 :pattern ( (neverTriggered86 n$5_2@@0) (neverTriggered86 n$5_2_1@@0))
)) (and (=> (= (ControlFlow 0 75) (- 0 76)) (forall ((n$5_2@@1 T@Ref) ) (!  (=> (select g1@@9 n$5_2@@1) (>= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) n$5_2@@1 next) FullPerm))
 :qid |stdinbpl.6318:17|
 :skolemid |682|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$5_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@9) n$5_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$5_2@@1 next))
))) (=> (forall ((n$5_2@@2 T@Ref) ) (!  (=> (select g1@@9 n$5_2@@2) (>= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) n$5_2@@2 next) FullPerm))
 :qid |stdinbpl.6318:17|
 :skolemid |682|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$5_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@9) n$5_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$5_2@@2 next))
)) (=> (forall ((n$5_2@@3 T@Ref) ) (!  (=> (and (select g1@@9 n$5_2@@3) (< NoPerm FullPerm)) (and (qpRange86 n$5_2@@3) (= (invRecv86 n$5_2@@3) n$5_2@@3)))
 :qid |stdinbpl.6324:22|
 :skolemid |683|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$5_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@9) n$5_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$5_2@@3 next))
)) (=> (and (forall ((o_4@@11 T@Ref) ) (!  (=> (and (select g1@@9 (invRecv86 o_4@@11)) (and (< NoPerm FullPerm) (qpRange86 o_4@@11))) (= (invRecv86 o_4@@11) o_4@@11))
 :qid |stdinbpl.6328:22|
 :skolemid |684|
 :pattern ( (invRecv86 o_4@@11))
)) (forall ((o_4@@12 T@Ref) ) (!  (and (=> (and (select g1@@9 (invRecv86 o_4@@12)) (and (< NoPerm FullPerm) (qpRange86 o_4@@12))) (and (= (invRecv86 o_4@@12) o_4@@12) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@9) o_4@@12 next) (- (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) o_4@@12 next) FullPerm)))) (=> (not (and (select g1@@9 (invRecv86 o_4@@12)) (and (< NoPerm FullPerm) (qpRange86 o_4@@12)))) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@9) o_4@@12 next) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) o_4@@12 next))))
 :qid |stdinbpl.6334:22|
 :skolemid |685|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@9) o_4@@12 next))
))) (=> (and (and (and (forall ((o_4@@13 T@Ref) (f_5@@7 T@Field_61502_53) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@8) o_4@@13 f_5@@7) (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@9) o_4@@13 f_5@@7)))
 :qid |stdinbpl.6340:29|
 :skolemid |686|
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@9) o_4@@13 f_5@@7))
)) (forall ((o_4@@14 T@Ref) (f_5@@8 T@Field_61515_61516) ) (!  (=> (not (= f_5@@8 next)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) o_4@@14 f_5@@8) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@9) o_4@@14 f_5@@8)))
 :qid |stdinbpl.6340:29|
 :skolemid |686|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@9) o_4@@14 f_5@@8))
))) (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_40180_203868) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@8) o_4@@15 f_5@@9) (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@9) o_4@@15 f_5@@9)))
 :qid |stdinbpl.6340:29|
 :skolemid |686|
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@9) o_4@@15 f_5@@9))
))) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_40180_204001) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@8) o_4@@16 f_5@@10) (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@9) o_4@@16 f_5@@10)))
 :qid |stdinbpl.6340:29|
 :skolemid |686|
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@9) o_4@@16 f_5@@10))
))) (and (and (=> (= (ControlFlow 0 75) 72) anon130_Else_correct) (=> (= (ControlFlow 0 75) 64) anon131_Then_correct)) (=> (= (ControlFlow 0 75) 66) anon131_Else_correct))))))))))))))
(let ((anon78_correct true))
(let ((anon129_Else_correct  (=> (and (not (and (select g0@@9 n$4_2_1) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$4_2_1 next) null)))) (= (ControlFlow 0 62) 59)) anon78_correct)))
(let ((anon129_Then_correct  (=> (and (select g0@@9 n$4_2_1) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$4_2_1 next) null))) (and (=> (= (ControlFlow 0 60) (- 0 61)) (select g0@@9 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$4_2_1 next))) (=> (select g0@@9 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$4_2_1 next)) (=> (= (ControlFlow 0 60) 59) anon78_correct))))))
(let ((anon127_Else_correct  (=> (apply_TCFraming ExhaleHeap@2 g0@@9 g1@@9) (=> (and (state ExhaleHeap@2 QPMask@5) (state ExhaleHeap@2 QPMask@5)) (and (=> (= (ControlFlow 0 79) (- 0 82)) (not (select g0@@9 null))) (=> (not (select g0@@9 null)) (and (=> (= (ControlFlow 0 79) (- 0 81)) (forall ((n$3_2 T@Ref) (n$3_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_2 n$3_2_1)) (select g0@@9 n$3_2)) (select g0@@9 n$3_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_2 n$3_2_1)))
 :qid |stdinbpl.6257:17|
 :skolemid |674|
 :pattern ( (neverTriggered85 n$3_2) (neverTriggered85 n$3_2_1))
))) (=> (forall ((n$3_2@@0 T@Ref) (n$3_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_2@@0 n$3_2_1@@0)) (select g0@@9 n$3_2@@0)) (select g0@@9 n$3_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_2@@0 n$3_2_1@@0)))
 :qid |stdinbpl.6257:17|
 :skolemid |674|
 :pattern ( (neverTriggered85 n$3_2@@0) (neverTriggered85 n$3_2_1@@0))
)) (and (=> (= (ControlFlow 0 79) (- 0 80)) (forall ((n$3_2@@1 T@Ref) ) (!  (=> (select g0@@9 n$3_2@@1) (>= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) n$3_2@@1 next) FullPerm))
 :qid |stdinbpl.6264:17|
 :skolemid |675|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$3_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) n$3_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$3_2@@1 next))
))) (=> (forall ((n$3_2@@2 T@Ref) ) (!  (=> (select g0@@9 n$3_2@@2) (>= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) n$3_2@@2 next) FullPerm))
 :qid |stdinbpl.6264:17|
 :skolemid |675|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$3_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) n$3_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$3_2@@2 next))
)) (=> (forall ((n$3_2@@3 T@Ref) ) (!  (=> (and (select g0@@9 n$3_2@@3) (< NoPerm FullPerm)) (and (qpRange85 n$3_2@@3) (= (invRecv85 n$3_2@@3) n$3_2@@3)))
 :qid |stdinbpl.6270:22|
 :skolemid |676|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$3_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) n$3_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$3_2@@3 next))
)) (=> (and (forall ((o_4@@17 T@Ref) ) (!  (=> (and (select g0@@9 (invRecv85 o_4@@17)) (and (< NoPerm FullPerm) (qpRange85 o_4@@17))) (= (invRecv85 o_4@@17) o_4@@17))
 :qid |stdinbpl.6274:22|
 :skolemid |677|
 :pattern ( (invRecv85 o_4@@17))
)) (forall ((o_4@@18 T@Ref) ) (!  (and (=> (and (select g0@@9 (invRecv85 o_4@@18)) (and (< NoPerm FullPerm) (qpRange85 o_4@@18))) (and (= (invRecv85 o_4@@18) o_4@@18) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) o_4@@18 next) (- (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) o_4@@18 next) FullPerm)))) (=> (not (and (select g0@@9 (invRecv85 o_4@@18)) (and (< NoPerm FullPerm) (qpRange85 o_4@@18)))) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) o_4@@18 next) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) o_4@@18 next))))
 :qid |stdinbpl.6280:22|
 :skolemid |678|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) o_4@@18 next))
))) (=> (and (and (and (forall ((o_4@@19 T@Ref) (f_5@@11 T@Field_61502_53) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@5) o_4@@19 f_5@@11) (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@8) o_4@@19 f_5@@11)))
 :qid |stdinbpl.6286:29|
 :skolemid |679|
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@8) o_4@@19 f_5@@11))
)) (forall ((o_4@@20 T@Ref) (f_5@@12 T@Field_61515_61516) ) (!  (=> (not (= f_5@@12 next)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) o_4@@20 f_5@@12) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) o_4@@20 f_5@@12)))
 :qid |stdinbpl.6286:29|
 :skolemid |679|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@8) o_4@@20 f_5@@12))
))) (forall ((o_4@@21 T@Ref) (f_5@@13 T@Field_40180_203868) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@5) o_4@@21 f_5@@13) (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@8) o_4@@21 f_5@@13)))
 :qid |stdinbpl.6286:29|
 :skolemid |679|
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@8) o_4@@21 f_5@@13))
))) (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_40180_204001) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@5) o_4@@22 f_5@@14) (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@8) o_4@@22 f_5@@14)))
 :qid |stdinbpl.6286:29|
 :skolemid |679|
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@8) o_4@@22 f_5@@14))
))) (and (and (=> (= (ControlFlow 0 79) 75) anon128_Else_correct) (=> (= (ControlFlow 0 79) 60) anon129_Then_correct)) (=> (= (ControlFlow 0 79) 62) anon129_Else_correct)))))))))))))))
(let ((anon127_Then_correct  (and (=> (= (ControlFlow 0 54) (- 0 58)) (forall ((n_18 T@Ref) (n_18_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_18 n_18_1)) (select g0@@9 n_18)) (select g0@@9 n_18_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_18 n_18_1)))
 :qid |stdinbpl.6183:21|
 :skolemid |666|
 :pattern ( (neverTriggered91 n_18) (neverTriggered91 n_18_1))
))) (=> (forall ((n_18@@0 T@Ref) (n_18_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_18@@0 n_18_1@@0)) (select g0@@9 n_18@@0)) (select g0@@9 n_18_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_18@@0 n_18_1@@0)))
 :qid |stdinbpl.6183:21|
 :skolemid |666|
 :pattern ( (neverTriggered91 n_18@@0) (neverTriggered91 n_18_1@@0))
)) (and (=> (= (ControlFlow 0 54) (- 0 57)) (forall ((n_18@@1 T@Ref) ) (!  (=> (select g0@@9 n_18@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) n_18@@1 next) NoPerm)))
 :qid |stdinbpl.6190:21|
 :skolemid |667|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n_18@@1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@6) n_18@@1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n_18@@1 next))
))) (=> (forall ((n_18@@2 T@Ref) ) (!  (=> (select g0@@9 n_18@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) n_18@@2 next) NoPerm)))
 :qid |stdinbpl.6190:21|
 :skolemid |667|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n_18@@2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@6) n_18@@2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n_18@@2 next))
)) (=> (and (forall ((n_18@@3 T@Ref) ) (!  (=> (and (select g0@@9 n_18@@3) (< NoPerm FullPerm)) (and (qpRange91 n_18@@3) (= (invRecv91 n_18@@3) n_18@@3)))
 :qid |stdinbpl.6196:26|
 :skolemid |668|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n_18@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@6) n_18@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n_18@@3 next))
)) (forall ((o_4@@23 T@Ref) ) (!  (=> (and (select g0@@9 (invRecv91 o_4@@23)) (and (< NoPerm FullPerm) (qpRange91 o_4@@23))) (= (invRecv91 o_4@@23) o_4@@23))
 :qid |stdinbpl.6200:26|
 :skolemid |669|
 :pattern ( (invRecv91 o_4@@23))
))) (and (=> (= (ControlFlow 0 54) (- 0 56)) (forall ((n_19 T@Ref) (n_19_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_19 n_19_1)) (select g1@@9 n_19)) (select g1@@9 n_19_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_19 n_19_1)))
 :qid |stdinbpl.6211:21|
 :skolemid |670|
 :pattern ( (neverTriggered92 n_19) (neverTriggered92 n_19_1))
))) (=> (forall ((n_19@@0 T@Ref) (n_19_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_19@@0 n_19_1@@0)) (select g1@@9 n_19@@0)) (select g1@@9 n_19_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_19@@0 n_19_1@@0)))
 :qid |stdinbpl.6211:21|
 :skolemid |670|
 :pattern ( (neverTriggered92 n_19@@0) (neverTriggered92 n_19_1@@0))
)) (and (=> (= (ControlFlow 0 54) (- 0 55)) (forall ((n_19@@1 T@Ref) ) (!  (=> (select g1@@9 n_19@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) n_19@@1 next) NoPerm)))
 :qid |stdinbpl.6218:21|
 :skolemid |671|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n_19@@1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@7) n_19@@1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n_19@@1 next))
))) (=> (forall ((n_19@@2 T@Ref) ) (!  (=> (select g1@@9 n_19@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) n_19@@2 next) NoPerm)))
 :qid |stdinbpl.6218:21|
 :skolemid |671|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n_19@@2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@7) n_19@@2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n_19@@2 next))
)) (=> (forall ((n_19@@3 T@Ref) ) (!  (=> (and (select g1@@9 n_19@@3) (< NoPerm FullPerm)) (and (qpRange92 n_19@@3) (= (invRecv92 n_19@@3) n_19@@3)))
 :qid |stdinbpl.6224:26|
 :skolemid |672|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n_19@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@7) n_19@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n_19@@3 next))
)) (=> (and (forall ((o_4@@24 T@Ref) ) (!  (=> (and (select g1@@9 (invRecv92 o_4@@24)) (and (< NoPerm FullPerm) (qpRange92 o_4@@24))) (= (invRecv92 o_4@@24) o_4@@24))
 :qid |stdinbpl.6228:26|
 :skolemid |673|
 :pattern ( (invRecv92 o_4@@24))
)) (= (ControlFlow 0 54) (- 0 53))) (|Set#Equal_40372| (|Set#Intersection_40372| g1@@9 g0@@9) |Set#Empty_40375|))))))))))))))
(let ((anon73_correct  (=> (state ExhaleHeap@2 QPMask@5) (=> (and (state ExhaleHeap@2 QPMask@5) (state ExhaleHeap@2 QPMask@5)) (and (=> (= (ControlFlow 0 83) 54) anon127_Then_correct) (=> (= (ControlFlow 0 83) 79) anon127_Else_correct))))))
(let ((anon126_Else_correct  (=> (and (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next) null) (= (ControlFlow 0 85) 83)) anon73_correct)))
(let ((anon126_Then_correct  (=> (and (and (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next) null)) (state ExhaleHeap@2 QPMask@5)) (and (forall ((v1_1 T@Ref) (v2_1 T@Ref) ) (! (= (exists_path ($$ ExhaleHeap@2 arg_g@0) v1_1 v2_1)  (or (= v1_1 v2_1) (and (not (= v1_1 v2_1)) (or (exists ((n_16 T@Ref) ) (!  (and (exists_path ($$ Heap@@29 arg_g@0) v1_1 n_16) (and (exists_path ($$ Heap@@29 arg_g@0) n_16 v2_1) (or (and (not (exists_path ($$ Heap@@29 arg_g@0) n_16 x0)) (not (exists_path ($$ Heap@@29 arg_g@0) x0 n_16))) (and (not (exists_path ($$ Heap@@29 arg_g@0) n_16 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next))) (not (exists_path ($$ Heap@@29 arg_g@0) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next) n_16))))))
 :qid |stdinbpl.6153:106|
 :skolemid |662|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 arg_g@0)) arg_g@0) v1_1 n_16))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 arg_g@0)) arg_g@0) n_16 v2_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 arg_g@0)) arg_g@0) n_16 x0))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 arg_g@0)) arg_g@0) x0 n_16))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 arg_g@0)) arg_g@0) n_16 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next)))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 arg_g@0)) arg_g@0) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next) n_16))
)) (or (exists ((n_17 T@Ref) ) (!  (and (not (= n_17 x0)) (and (not (= n_17 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next))) (and (exists_path ($$ Heap@@29 arg_g@0) x0 n_17) (exists_path ($$ Heap@@29 arg_g@0) n_17 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next)))))
 :qid |stdinbpl.6156:25|
 :skolemid |663|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 arg_g@0)) arg_g@0) x0 n_17))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 arg_g@0)) arg_g@0) n_17 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next)))
)) (exists ((u_3@@2 T@Ref) (v_2@@5 T@Ref) ) (!  (and (or (not (= u_3@@2 x0)) (not (= v_2@@5 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next)))) (and (edge ($$ Heap@@29 arg_g@0) u_3@@2 v_2@@5) (and (exists_path ($$ Heap@@29 arg_g@0) v1_1 u_3@@2) (and (exists_path ($$ Heap@@29 arg_g@0) u_3@@2 x0) (and (exists_path ($$ Heap@@29 arg_g@0) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next) v_2@@5) (exists_path ($$ Heap@@29 arg_g@0) v_2@@5 v2_1))))))
 :qid |stdinbpl.6159:24|
 :skolemid |664|
 :pattern ( (edge (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 arg_g@0)) arg_g@0) u_3@@2 v_2@@5))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 arg_g@0)) arg_g@0) v1_1 u_3@@2) (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 arg_g@0)) arg_g@0) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next) v_2@@5))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 arg_g@0)) arg_g@0) v1_1 u_3@@2) (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 arg_g@0)) arg_g@0) v_2@@5 v2_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 arg_g@0)) arg_g@0) u_3@@2 x0) (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 arg_g@0)) arg_g@0) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next) v_2@@5))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 arg_g@0)) arg_g@0) u_3@@2 x0) (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 arg_g@0)) arg_g@0) v_2@@5 v2_1))
)))))))
 :qid |stdinbpl.6151:24|
 :skolemid |665|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| ExhaleHeap@2 arg_g@0)) arg_g@0) v1_1 v2_1))
)) (= (ControlFlow 0 84) 83))) anon73_correct)))
(let ((anon125_Else_correct  (=> (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next) null) (and (=> (= (ControlFlow 0 87) 84) anon126_Then_correct) (=> (= (ControlFlow 0 87) 85) anon126_Else_correct)))))
(let ((anon125_Then_correct  (=> (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next) null)) (=> (and (state ExhaleHeap@2 QPMask@5) (forall ((v1@@2 T@Ref) (v2@@2 T@Ref) ) (! (= (edge ($$ ExhaleHeap@2 arg_g@0) v1@@2 v2@@2)  (and (edge ($$ Heap@@29 arg_g@0) v1@@2 v2@@2) (not (and (= v1@@2 x0) (= v2@@2 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next))))))
 :qid |stdinbpl.6144:24|
 :skolemid |661|
 :pattern ( (edge (|$$#frame| (FrameFragment_6369 (|$$#condqp1| ExhaleHeap@2 arg_g@0)) arg_g@0) v1@@2 v2@@2))
))) (and (=> (= (ControlFlow 0 86) 84) anon126_Then_correct) (=> (= (ControlFlow 0 86) 85) anon126_Else_correct))))))
(let ((anon124_Else_correct  (=> (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next) null)) (and (=> (= (ControlFlow 0 89) 86) anon125_Then_correct) (=> (= (ControlFlow 0 89) 87) anon125_Else_correct)))))
(let ((anon124_Then_correct  (=> (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next) null) (=> (and (state ExhaleHeap@2 QPMask@5) (|Set#Equal_40187| ($$ ExhaleHeap@2 arg_g@0) ($$ Heap@@29 arg_g@0))) (and (=> (= (ControlFlow 0 88) 86) anon125_Then_correct) (=> (= (ControlFlow 0 88) 87) anon125_Else_correct))))))
(let ((anon122_Else_correct  (=> (forall ((n$0_5_1 T@Ref) ) (!  (=> (and (select arg_g@0 n$0_5_1) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_5_1 next) null))) (select arg_g@0 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_5_1 next)))
 :qid |stdinbpl.6084:22|
 :skolemid |652|
 :pattern ( (select arg_g@0 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_5_1 next)))
 :pattern ( (select arg_g@0 n$0_5_1) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_5_1 next))
)) (=> (and (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@2 QPMask@4) (not (select arg_g@0 null))) (and (=> (= (ControlFlow 0 90) (- 0 91)) (forall ((n$1_2 T@Ref) (n$1_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_2 n$1_2_1)) (select arg_g@0 n$1_2)) (select arg_g@0 n$1_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_2 n$1_2_1)))
 :qid |stdinbpl.6097:17|
 :skolemid |653|
))) (=> (forall ((n$1_2@@0 T@Ref) (n$1_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_2@@0 n$1_2_1@@0)) (select arg_g@0 n$1_2@@0)) (select arg_g@0 n$1_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_2@@0 n$1_2_1@@0)))
 :qid |stdinbpl.6097:17|
 :skolemid |653|
)) (=> (and (and (forall ((n$1_2@@1 T@Ref) ) (!  (=> (and (select arg_g@0 n$1_2@@1) (< NoPerm FullPerm)) (and (qpRange90 n$1_2@@1) (= (invRecv90 n$1_2@@1) n$1_2@@1)))
 :qid |stdinbpl.6103:24|
 :skolemid |654|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$1_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) n$1_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$1_2@@1 next))
)) (forall ((o_4@@25 T@Ref) ) (!  (=> (and (and (select arg_g@0 (invRecv90 o_4@@25)) (< NoPerm FullPerm)) (qpRange90 o_4@@25)) (= (invRecv90 o_4@@25) o_4@@25))
 :qid |stdinbpl.6107:24|
 :skolemid |655|
 :pattern ( (invRecv90 o_4@@25))
))) (and (forall ((n$1_2@@2 T@Ref) ) (!  (=> (select arg_g@0 n$1_2@@2) (not (= n$1_2@@2 null)))
 :qid |stdinbpl.6113:24|
 :skolemid |656|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$1_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) n$1_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$1_2@@2 next))
)) (forall ((o_4@@26 T@Ref) ) (!  (and (=> (and (and (select arg_g@0 (invRecv90 o_4@@26)) (< NoPerm FullPerm)) (qpRange90 o_4@@26)) (and (=> (< NoPerm FullPerm) (= (invRecv90 o_4@@26) o_4@@26)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) o_4@@26 next) (+ (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@4) o_4@@26 next) FullPerm)))) (=> (not (and (and (select arg_g@0 (invRecv90 o_4@@26)) (< NoPerm FullPerm)) (qpRange90 o_4@@26))) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) o_4@@26 next) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@4) o_4@@26 next))))
 :qid |stdinbpl.6119:24|
 :skolemid |657|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) o_4@@26 next))
)))) (=> (and (and (and (and (forall ((o_4@@27 T@Ref) (f_5@@15 T@Field_61502_53) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@4) o_4@@27 f_5@@15) (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@5) o_4@@27 f_5@@15)))
 :qid |stdinbpl.6123:31|
 :skolemid |658|
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@4) o_4@@27 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@5) o_4@@27 f_5@@15))
)) (forall ((o_4@@28 T@Ref) (f_5@@16 T@Field_61515_61516) ) (!  (=> (not (= f_5@@16 next)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@4) o_4@@28 f_5@@16) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) o_4@@28 f_5@@16)))
 :qid |stdinbpl.6123:31|
 :skolemid |658|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@4) o_4@@28 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@5) o_4@@28 f_5@@16))
))) (forall ((o_4@@29 T@Ref) (f_5@@17 T@Field_40180_203868) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@4) o_4@@29 f_5@@17) (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@5) o_4@@29 f_5@@17)))
 :qid |stdinbpl.6123:31|
 :skolemid |658|
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@4) o_4@@29 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@5) o_4@@29 f_5@@17))
))) (forall ((o_4@@30 T@Ref) (f_5@@18 T@Field_40180_204001) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@4) o_4@@30 f_5@@18) (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@5) o_4@@30 f_5@@18)))
 :qid |stdinbpl.6123:31|
 :skolemid |658|
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@4) o_4@@30 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@5) o_4@@30 f_5@@18))
))) (and (and (state ExhaleHeap@2 QPMask@5) (forall ((n$2_2 T@Ref) ) (!  (=> (and (select arg_g@0 n$2_2) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$2_2 next) null))) (select arg_g@0 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$2_2 next)))
 :qid |stdinbpl.6129:22|
 :skolemid |659|
 :pattern ( (select arg_g@0 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$2_2 next)))
 :pattern ( (select arg_g@0 n$2_2) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n$2_2 next))
))) (and (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) x0 next) null) (forall ((n_15 T@Ref) ) (!  (=> (and (select arg_g@0 n_15) (not (= n_15 x0))) (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| ExhaleHeap@2) n_15 next) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_15 next)))
 :qid |stdinbpl.6134:22|
 :skolemid |660|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_15 next))
))))) (and (=> (= (ControlFlow 0 90) 88) anon124_Then_correct) (=> (= (ControlFlow 0 90) 89) anon124_Else_correct))))))))))
(let ((anon66_correct true))
(let ((anon123_Else_correct  (=> (and (not (and (select arg_g@0 n$0_4) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_4 next) null)))) (= (ControlFlow 0 52) 49)) anon66_correct)))
(let ((anon123_Then_correct  (=> (and (select arg_g@0 n$0_4) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_4 next) null))) (and (=> (= (ControlFlow 0 50) (- 0 51)) (select arg_g@0 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_4 next))) (=> (select arg_g@0 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_4 next)) (=> (= (ControlFlow 0 50) 49) anon66_correct))))))
(let ((anon121_Else_correct  (=> (and (and (apply_TCFraming Heap@@29 g0@@9 g1@@9) (state Heap@@29 QPMask@0)) (and (state Heap@@29 QPMask@0) (= arg_g@0 (|Set#Union_40369| g0@@9 g1@@9)))) (and (=> (= (ControlFlow 0 92) (- 0 96)) (select arg_g@0 x0)) (=> (select arg_g@0 x0) (and (=> (= (ControlFlow 0 92) (- 0 95)) (not (select arg_g@0 null))) (=> (not (select arg_g@0 null)) (and (=> (= (ControlFlow 0 92) (- 0 94)) (forall ((n_14 T@Ref) (n_14_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14 n_14_1)) (select arg_g@0 n_14)) (select arg_g@0 n_14_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_14 n_14_1)))
 :qid |stdinbpl.6043:19|
 :skolemid |646|
 :pattern ( (neverTriggered89 n_14) (neverTriggered89 n_14_1))
))) (=> (forall ((n_14@@0 T@Ref) (n_14_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14@@0 n_14_1@@0)) (select arg_g@0 n_14@@0)) (select arg_g@0 n_14_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_14@@0 n_14_1@@0)))
 :qid |stdinbpl.6043:19|
 :skolemid |646|
 :pattern ( (neverTriggered89 n_14@@0) (neverTriggered89 n_14_1@@0))
)) (and (=> (= (ControlFlow 0 92) (- 0 93)) (forall ((n_14@@1 T@Ref) ) (!  (=> (select arg_g@0 n_14@@1) (>= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_14@@1 next) FullPerm))
 :qid |stdinbpl.6050:19|
 :skolemid |647|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14@@1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@4) n_14@@1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14@@1 next))
))) (=> (forall ((n_14@@2 T@Ref) ) (!  (=> (select arg_g@0 n_14@@2) (>= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_14@@2 next) FullPerm))
 :qid |stdinbpl.6050:19|
 :skolemid |647|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14@@2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@4) n_14@@2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14@@2 next))
)) (=> (forall ((n_14@@3 T@Ref) ) (!  (=> (and (select arg_g@0 n_14@@3) (< NoPerm FullPerm)) (and (qpRange89 n_14@@3) (= (invRecv89 n_14@@3) n_14@@3)))
 :qid |stdinbpl.6056:24|
 :skolemid |648|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@4) n_14@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_14@@3 next))
)) (=> (and (forall ((o_4@@31 T@Ref) ) (!  (=> (and (select arg_g@0 (invRecv89 o_4@@31)) (and (< NoPerm FullPerm) (qpRange89 o_4@@31))) (= (invRecv89 o_4@@31) o_4@@31))
 :qid |stdinbpl.6060:24|
 :skolemid |649|
 :pattern ( (invRecv89 o_4@@31))
)) (forall ((o_4@@32 T@Ref) ) (!  (and (=> (and (select arg_g@0 (invRecv89 o_4@@32)) (and (< NoPerm FullPerm) (qpRange89 o_4@@32))) (and (= (invRecv89 o_4@@32) o_4@@32) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@4) o_4@@32 next) (- (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_4@@32 next) FullPerm)))) (=> (not (and (select arg_g@0 (invRecv89 o_4@@32)) (and (< NoPerm FullPerm) (qpRange89 o_4@@32)))) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@4) o_4@@32 next) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_4@@32 next))))
 :qid |stdinbpl.6066:24|
 :skolemid |650|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@4) o_4@@32 next))
))) (=> (and (and (and (forall ((o_4@@33 T@Ref) (f_5@@19 T@Field_61502_53) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@0) o_4@@33 f_5@@19) (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@4) o_4@@33 f_5@@19)))
 :qid |stdinbpl.6072:31|
 :skolemid |651|
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@4) o_4@@33 f_5@@19))
)) (forall ((o_4@@34 T@Ref) (f_5@@20 T@Field_61515_61516) ) (!  (=> (not (= f_5@@20 next)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_4@@34 f_5@@20) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@4) o_4@@34 f_5@@20)))
 :qid |stdinbpl.6072:31|
 :skolemid |651|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@4) o_4@@34 f_5@@20))
))) (forall ((o_4@@35 T@Ref) (f_5@@21 T@Field_40180_203868) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@0) o_4@@35 f_5@@21) (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@4) o_4@@35 f_5@@21)))
 :qid |stdinbpl.6072:31|
 :skolemid |651|
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@4) o_4@@35 f_5@@21))
))) (forall ((o_4@@36 T@Ref) (f_5@@22 T@Field_40180_204001) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@0) o_4@@36 f_5@@22) (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@4) o_4@@36 f_5@@22)))
 :qid |stdinbpl.6072:31|
 :skolemid |651|
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@4) o_4@@36 f_5@@22))
))) (and (and (=> (= (ControlFlow 0 92) 90) anon122_Else_correct) (=> (= (ControlFlow 0 92) 50) anon123_Then_correct)) (=> (= (ControlFlow 0 92) 52) anon123_Else_correct))))))))))))))))
(let ((anon121_Then_correct  (and (=> (= (ControlFlow 0 44) (- 0 48)) (forall ((n_12_1 T@Ref) (n_12_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12_1 n_12_2)) (select g0@@9 n_12_1)) (select g0@@9 n_12_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_12_1 n_12_2)))
 :qid |stdinbpl.5962:21|
 :skolemid |638|
 :pattern ( (neverTriggered87 n_12_1) (neverTriggered87 n_12_2))
))) (=> (forall ((n_12_1@@0 T@Ref) (n_12_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12_1@@0 n_12_2@@0)) (select g0@@9 n_12_1@@0)) (select g0@@9 n_12_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_12_1@@0 n_12_2@@0)))
 :qid |stdinbpl.5962:21|
 :skolemid |638|
 :pattern ( (neverTriggered87 n_12_1@@0) (neverTriggered87 n_12_2@@0))
)) (and (=> (= (ControlFlow 0 44) (- 0 47)) (forall ((n_12_1@@1 T@Ref) ) (!  (=> (select g0@@9 n_12_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_12_1@@1 next) NoPerm)))
 :qid |stdinbpl.5969:21|
 :skolemid |639|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_12_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@2) n_12_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_12_1@@1 next))
))) (=> (forall ((n_12_1@@2 T@Ref) ) (!  (=> (select g0@@9 n_12_1@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_12_1@@2 next) NoPerm)))
 :qid |stdinbpl.5969:21|
 :skolemid |639|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_12_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@2) n_12_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_12_1@@2 next))
)) (=> (and (forall ((n_12_1@@3 T@Ref) ) (!  (=> (and (select g0@@9 n_12_1@@3) (< NoPerm FullPerm)) (and (qpRange87 n_12_1@@3) (= (invRecv87 n_12_1@@3) n_12_1@@3)))
 :qid |stdinbpl.5975:26|
 :skolemid |640|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_12_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@2) n_12_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_12_1@@3 next))
)) (forall ((o_4@@37 T@Ref) ) (!  (=> (and (select g0@@9 (invRecv87 o_4@@37)) (and (< NoPerm FullPerm) (qpRange87 o_4@@37))) (= (invRecv87 o_4@@37) o_4@@37))
 :qid |stdinbpl.5979:26|
 :skolemid |641|
 :pattern ( (invRecv87 o_4@@37))
))) (and (=> (= (ControlFlow 0 44) (- 0 46)) (forall ((n_13 T@Ref) (n_13_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13 n_13_1)) (select g1@@9 n_13)) (select g1@@9 n_13_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_13 n_13_1)))
 :qid |stdinbpl.5990:21|
 :skolemid |642|
 :pattern ( (neverTriggered88 n_13) (neverTriggered88 n_13_1))
))) (=> (forall ((n_13@@0 T@Ref) (n_13_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13@@0 n_13_1@@0)) (select g1@@9 n_13@@0)) (select g1@@9 n_13_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_13@@0 n_13_1@@0)))
 :qid |stdinbpl.5990:21|
 :skolemid |642|
 :pattern ( (neverTriggered88 n_13@@0) (neverTriggered88 n_13_1@@0))
)) (and (=> (= (ControlFlow 0 44) (- 0 45)) (forall ((n_13@@1 T@Ref) ) (!  (=> (select g1@@9 n_13@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_13@@1 next) NoPerm)))
 :qid |stdinbpl.5997:21|
 :skolemid |643|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13@@1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@3) n_13@@1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13@@1 next))
))) (=> (forall ((n_13@@2 T@Ref) ) (!  (=> (select g1@@9 n_13@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_13@@2 next) NoPerm)))
 :qid |stdinbpl.5997:21|
 :skolemid |643|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13@@2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@3) n_13@@2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13@@2 next))
)) (=> (forall ((n_13@@3 T@Ref) ) (!  (=> (and (select g1@@9 n_13@@3) (< NoPerm FullPerm)) (and (qpRange88 n_13@@3) (= (invRecv88 n_13@@3) n_13@@3)))
 :qid |stdinbpl.6003:26|
 :skolemid |644|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@3) n_13@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_13@@3 next))
)) (=> (and (forall ((o_4@@38 T@Ref) ) (!  (=> (and (select g1@@9 (invRecv88 o_4@@38)) (and (< NoPerm FullPerm) (qpRange88 o_4@@38))) (= (invRecv88 o_4@@38) o_4@@38))
 :qid |stdinbpl.6007:26|
 :skolemid |645|
 :pattern ( (invRecv88 o_4@@38))
)) (= (ControlFlow 0 44) (- 0 43))) (|Set#Equal_40372| (|Set#Intersection_40372| g1@@9 g0@@9) |Set#Empty_40375|))))))))))))))
(let ((anon107_Else_correct  (=> (state Heap@@29 QPMask@0) (and (=> (= (ControlFlow 0 97) 44) anon121_Then_correct) (=> (= (ControlFlow 0 97) 92) anon121_Else_correct)))))
(let ((anon106_Else_correct  (=> (and (acyclic_graph ($$ Heap@@29 (|Set#Union_40369| g0@@9 g1@@9))) (state Heap@@29 QPMask@0)) (and (=> (= (ControlFlow 0 139) (- 0 140)) (HasDirectPerm_40180_40181 QPMask@0 x0 next)) (=> (HasDirectPerm_40180_40181 QPMask@0 x0 next) (=> (and (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) x0 next) x1_2) (state Heap@@29 QPMask@0)) (and (=> (= (ControlFlow 0 139) 138) anon107_Then_correct) (=> (= (ControlFlow 0 139) 97) anon107_Else_correct))))))))
(let ((anon106_Then_correct  (and (=> (= (ControlFlow 0 40) (- 0 42)) (forall ((n_8 T@Ref) ) (!  (=> (and (select (|Set#Union_40369| g0@@9 g1@@9) n_8) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_8 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5621:21|
 :skolemid |603|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_8 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@1) n_8 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_8 next))
))) (=> (forall ((n_8@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_40369| g0@@9 g1@@9) n_8@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_8@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5621:21|
 :skolemid |603|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_8@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@1) n_8@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_8@@0 next))
)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (forall ((n_8@@1 T@Ref) (n_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@1 n_8_1)) (select (|Set#Union_40369| g0@@9 g1@@9) n_8@@1)) (select (|Set#Union_40369| g0@@9 g1@@9) n_8_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_8@@1 n_8_1)))
 :qid |stdinbpl.5628:21|
 :skolemid |604|
 :pattern ( (neverTriggered79 n_8@@1) (neverTriggered79 n_8_1))
))) (=> (forall ((n_8@@2 T@Ref) (n_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@2 n_8_1@@0)) (select (|Set#Union_40369| g0@@9 g1@@9) n_8@@2)) (select (|Set#Union_40369| g0@@9 g1@@9) n_8_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_8@@2 n_8_1@@0)))
 :qid |stdinbpl.5628:21|
 :skolemid |604|
 :pattern ( (neverTriggered79 n_8@@2) (neverTriggered79 n_8_1@@0))
)) (=> (= (ControlFlow 0 40) (- 0 39)) (forall ((n_8@@3 T@Ref) ) (!  (=> (select (|Set#Union_40369| g0@@9 g1@@9) n_8@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_8@@3 next) NoPerm)))
 :qid |stdinbpl.5635:21|
 :skolemid |605|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@1) n_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_8@@3 next))
)))))))))
(let ((anon103_Else_correct  (=> (forall ((n_7 T@Ref) (m_3 T@Ref) ) (!  (=> (and (select g1@@9 n_7) (select g0@@9 m_3)) (not (edge ($$ Heap@@29 (|Set#Union_40369| g0@@9 g1@@9)) n_7 m_3)))
 :qid |stdinbpl.5605:20|
 :skolemid |602|
 :pattern ( (select g1@@9 n_7) (select g0@@9 m_3))
)) (=> (and (state Heap@@29 QPMask@0) (state Heap@@29 QPMask@0)) (and (=> (= (ControlFlow 0 141) 40) anon106_Then_correct) (=> (= (ControlFlow 0 141) 139) anon106_Else_correct))))))
(let ((anon105_Then_correct  (and (=> (= (ControlFlow 0 35) (- 0 37)) (forall ((n$0_3_2 T@Ref) ) (!  (=> (and (select (|Set#Union_40369| g0@@9 g1@@9) n$0_3_2) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_3_2 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5567:25|
 :skolemid |597|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_3_2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@15) n$0_3_2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_3_2 next))
))) (=> (forall ((n$0_3_2@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_40369| g0@@9 g1@@9) n$0_3_2@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_3_2@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5567:25|
 :skolemid |597|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_3_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@15) n$0_3_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_3_2@@0 next))
)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (forall ((n$0_3_2@@1 T@Ref) (n$0_3_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3_2@@1 n$0_3_3)) (select (|Set#Union_40369| g0@@9 g1@@9) n$0_3_2@@1)) (select (|Set#Union_40369| g0@@9 g1@@9) n$0_3_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_3_2@@1 n$0_3_3)))
 :qid |stdinbpl.5574:25|
 :skolemid |598|
 :pattern ( (neverTriggered78 n$0_3_2@@1) (neverTriggered78 n$0_3_3))
))) (=> (forall ((n$0_3_2@@2 T@Ref) (n$0_3_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3_2@@2 n$0_3_3@@0)) (select (|Set#Union_40369| g0@@9 g1@@9) n$0_3_2@@2)) (select (|Set#Union_40369| g0@@9 g1@@9) n$0_3_3@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_3_2@@2 n$0_3_3@@0)))
 :qid |stdinbpl.5574:25|
 :skolemid |598|
 :pattern ( (neverTriggered78 n$0_3_2@@2) (neverTriggered78 n$0_3_3@@0))
)) (=> (= (ControlFlow 0 35) (- 0 34)) (forall ((n$0_3_2@@3 T@Ref) ) (!  (=> (select (|Set#Union_40369| g0@@9 g1@@9) n$0_3_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n$0_3_2@@3 next) NoPerm)))
 :qid |stdinbpl.5581:25|
 :skolemid |599|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_3_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@15) n$0_3_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_3_2@@3 next))
)))))))))
(let ((anon31_correct true))
(let ((anon104_Then_correct  (=> (and (select g1@@9 n_38) (select g0@@9 m_5)) (and (=> (= (ControlFlow 0 38) 35) anon105_Then_correct) (=> (= (ControlFlow 0 38) 32) anon31_correct)))))
(let ((anon104_Else_correct  (=> (and (not (and (select g1@@9 n_38) (select g0@@9 m_5))) (= (ControlFlow 0 33) 32)) anon31_correct)))
(let ((anon100_Else_correct  (=> (forall ((n_5 T@Ref) (m_1_1 T@Ref) ) (!  (=> (and (select g0@@9 n_5) (select g1@@9 m_1_1)) (= (edge ($$ Heap@@29 (|Set#Union_40369| g0@@9 g1@@9)) n_5 m_1_1)  (and (= n_5 x0) (= m_1_1 x1_2))))
 :qid |stdinbpl.5549:20|
 :skolemid |596|
 :pattern ( (select g0@@9 n_5) (select g1@@9 m_1_1))
)) (=> (and (state Heap@@29 QPMask@0) (state Heap@@29 QPMask@0)) (and (and (=> (= (ControlFlow 0 142) 141) anon103_Else_correct) (=> (= (ControlFlow 0 142) 38) anon104_Then_correct)) (=> (= (ControlFlow 0 142) 33) anon104_Else_correct))))))
(let ((anon102_Then_correct  (and (=> (= (ControlFlow 0 28) (- 0 30)) (forall ((n$0_2_1 T@Ref) ) (!  (=> (and (select (|Set#Union_40369| g0@@9 g1@@9) n$0_2_1) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_2_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5511:25|
 :skolemid |591|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_2_1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@16) n$0_2_1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_2_1 next))
))) (=> (forall ((n$0_2_1@@0 T@Ref) ) (!  (=> (and (select (|Set#Union_40369| g0@@9 g1@@9) n$0_2_1@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_2_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5511:25|
 :skolemid |591|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_2_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@16) n$0_2_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_2_1@@0 next))
)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (forall ((n$0_2_1@@1 T@Ref) (n$0_2_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2_1@@1 n$0_2_2)) (select (|Set#Union_40369| g0@@9 g1@@9) n$0_2_1@@1)) (select (|Set#Union_40369| g0@@9 g1@@9) n$0_2_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_2_1@@1 n$0_2_2)))
 :qid |stdinbpl.5518:25|
 :skolemid |592|
 :pattern ( (neverTriggered77 n$0_2_1@@1) (neverTriggered77 n$0_2_2))
))) (=> (forall ((n$0_2_1@@2 T@Ref) (n$0_2_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2_1@@2 n$0_2_2@@0)) (select (|Set#Union_40369| g0@@9 g1@@9) n$0_2_1@@2)) (select (|Set#Union_40369| g0@@9 g1@@9) n$0_2_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_2_1@@2 n$0_2_2@@0)))
 :qid |stdinbpl.5518:25|
 :skolemid |592|
 :pattern ( (neverTriggered77 n$0_2_1@@2) (neverTriggered77 n$0_2_2@@0))
)) (=> (= (ControlFlow 0 28) (- 0 27)) (forall ((n$0_2_1@@3 T@Ref) ) (!  (=> (select (|Set#Union_40369| g0@@9 g1@@9) n$0_2_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n$0_2_1@@3 next) NoPerm)))
 :qid |stdinbpl.5525:25|
 :skolemid |593|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_2_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@16) n$0_2_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_2_1@@3 next))
)))))))))
(let ((anon26_correct true))
(let ((anon101_Then_correct  (=> (and (select g0@@9 n_37) (select g1@@9 m_4)) (and (=> (= (ControlFlow 0 31) 28) anon102_Then_correct) (=> (= (ControlFlow 0 31) 25) anon26_correct)))))
(let ((anon101_Else_correct  (=> (and (not (and (select g0@@9 n_37) (select g1@@9 m_4))) (= (ControlFlow 0 26) 25)) anon26_correct)))
(let ((anon97_Else_correct  (=> (forall ((n$2_1_1 T@Ref) ) (!  (=> (select g1@@9 n$2_1_1) (exists_path ($$ Heap@@29 g1@@9) x1_2 n$2_1_1))
 :qid |stdinbpl.5493:20|
 :skolemid |590|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g1@@9)) g1@@9) x1_2 n$2_1_1))
)) (=> (and (state Heap@@29 QPMask@0) (state Heap@@29 QPMask@0)) (and (and (=> (= (ControlFlow 0 143) 142) anon100_Else_correct) (=> (= (ControlFlow 0 143) 31) anon101_Then_correct)) (=> (= (ControlFlow 0 143) 26) anon101_Else_correct))))))
(let ((anon99_Then_correct  (and (=> (= (ControlFlow 0 21) (- 0 23)) (forall ((n_3 T@Ref) ) (!  (=> (and (select g1@@9 n_3) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_3 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5455:25|
 :skolemid |585|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@17) n_3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_3 next))
))) (=> (forall ((n_3@@0 T@Ref) ) (!  (=> (and (select g1@@9 n_3@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_3@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5455:25|
 :skolemid |585|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_3@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@17) n_3@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_3@@0 next))
)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (forall ((n_3@@1 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@1 n_3_1)) (select g1@@9 n_3@@1)) (select g1@@9 n_3_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_3@@1 n_3_1)))
 :qid |stdinbpl.5462:25|
 :skolemid |586|
 :pattern ( (neverTriggered76 n_3@@1) (neverTriggered76 n_3_1))
))) (=> (forall ((n_3@@2 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@2 n_3_1@@0)) (select g1@@9 n_3@@2)) (select g1@@9 n_3_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_3@@2 n_3_1@@0)))
 :qid |stdinbpl.5462:25|
 :skolemid |586|
 :pattern ( (neverTriggered76 n_3@@2) (neverTriggered76 n_3_1@@0))
)) (=> (= (ControlFlow 0 21) (- 0 20)) (forall ((n_3@@3 T@Ref) ) (!  (=> (select g1@@9 n_3@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_3@@3 next) NoPerm)))
 :qid |stdinbpl.5469:25|
 :skolemid |587|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@17) n_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_3@@3 next))
)))))))))
(let ((anon21_correct true))
(let ((anon98_Then_correct  (=> (select g1@@9 n$2_29) (and (=> (= (ControlFlow 0 24) 21) anon99_Then_correct) (=> (= (ControlFlow 0 24) 18) anon21_correct)))))
(let ((anon98_Else_correct  (=> (and (not (select g1@@9 n$2_29)) (= (ControlFlow 0 19) 18)) anon21_correct)))
(let ((anon94_Else_correct  (=> (forall ((n$1_1 T@Ref) ) (!  (=> (select g0@@9 n$1_1) (exists_path ($$ Heap@@29 g0@@9) n$1_1 x0))
 :qid |stdinbpl.5437:20|
 :skolemid |584|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6369 (|$$#condqp1| Heap@@29 g0@@9)) g0@@9) n$1_1 x0))
)) (=> (and (state Heap@@29 QPMask@0) (state Heap@@29 QPMask@0)) (and (and (=> (= (ControlFlow 0 144) 143) anon97_Else_correct) (=> (= (ControlFlow 0 144) 24) anon98_Then_correct)) (=> (= (ControlFlow 0 144) 19) anon98_Else_correct))))))
(let ((anon96_Then_correct  (and (=> (= (ControlFlow 0 14) (- 0 16)) (forall ((n_2 T@Ref) ) (!  (=> (and (select g0@@9 n_2) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_2 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5399:25|
 :skolemid |579|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@18) n_2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_2 next))
))) (=> (forall ((n_2@@0 T@Ref) ) (!  (=> (and (select g0@@9 n_2@@0) (dummyFunction_40181 (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_2@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5399:25|
 :skolemid |579|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@18) n_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_2@@0 next))
)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (forall ((n_2@@1 T@Ref) (n_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@1 n_2_1)) (select g0@@9 n_2@@1)) (select g0@@9 n_2_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_2@@1 n_2_1)))
 :qid |stdinbpl.5406:25|
 :skolemid |580|
 :pattern ( (neverTriggered75 n_2@@1) (neverTriggered75 n_2_1))
))) (=> (forall ((n_2@@2 T@Ref) (n_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@2 n_2_1@@0)) (select g0@@9 n_2@@2)) (select g0@@9 n_2_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_2@@2 n_2_1@@0)))
 :qid |stdinbpl.5406:25|
 :skolemid |580|
 :pattern ( (neverTriggered75 n_2@@2) (neverTriggered75 n_2_1@@0))
)) (=> (= (ControlFlow 0 14) (- 0 13)) (forall ((n_2@@3 T@Ref) ) (!  (=> (select g0@@9 n_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_2@@3 next) NoPerm)))
 :qid |stdinbpl.5413:25|
 :skolemid |581|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@18) n_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_2@@3 next))
)))))))))
(let ((anon16_correct true))
(let ((anon95_Then_correct  (=> (select g0@@9 n$1_17) (and (=> (= (ControlFlow 0 17) 14) anon96_Then_correct) (=> (= (ControlFlow 0 17) 11) anon16_correct)))))
(let ((anon95_Else_correct  (=> (and (not (select g0@@9 n$1_17)) (= (ControlFlow 0 12) 11)) anon16_correct)))
(let ((anon91_Else_correct  (=> (and (forall ((n$0_1 T@Ref) ) (!  (=> (and (select (|Set#Union_40369| g0@@9 g1@@9) n$0_1) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_1 next) null))) (select (|Set#Union_40369| g0@@9 g1@@9) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_1 next)))
 :qid |stdinbpl.5378:20|
 :skolemid |578|
 :pattern ( (select (|Set#Union_40369| g0@@9 g1@@9) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_1 next)))
 :pattern ( (select (|Set#Union_40369| g0@@9 g1@@9) n$0_1) (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_1 next))
)) (state Heap@@29 QPMask@0)) (=> (and (and (select g0@@9 x0) (select g1@@9 x1_2)) (and (state Heap@@29 QPMask@0) (state Heap@@29 QPMask@0))) (and (and (=> (= (ControlFlow 0 145) 144) anon94_Else_correct) (=> (= (ControlFlow 0 145) 17) anon95_Then_correct)) (=> (= (ControlFlow 0 145) 12) anon95_Else_correct))))))
(let ((anon11_correct true))
(let ((anon93_Else_correct  (=> (and (not (and (select (|Set#Union_40369| g0@@9 g1@@9) n$0_32) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_32 next) null)))) (= (ControlFlow 0 7) 4)) anon11_correct)))
(let ((anon93_Then_correct  (=> (and (select (|Set#Union_40369| g0@@9 g1@@9) n$0_32) (not (= (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n$0_32 next) null))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_40180_40181 QPMask@0 n$0_32 next)) (=> (HasDirectPerm_40180_40181 QPMask@0 n$0_32 next) (=> (= (ControlFlow 0 5) 4) anon11_correct))))))
(let ((anon92_Else_correct  (=> (not (select (|Set#Union_40369| g0@@9 g1@@9) n$0_32)) (and (=> (= (ControlFlow 0 10) 5) anon93_Then_correct) (=> (= (ControlFlow 0 10) 7) anon93_Else_correct)))))
(let ((anon92_Then_correct  (=> (select (|Set#Union_40369| g0@@9 g1@@9) n$0_32) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_40180_40181 QPMask@0 n$0_32 next)) (=> (HasDirectPerm_40180_40181 QPMask@0 n$0_32 next) (and (=> (= (ControlFlow 0 8) 5) anon93_Then_correct) (=> (= (ControlFlow 0 8) 7) anon93_Else_correct)))))))
(let ((anon90_Else_correct  (and (=> (= (ControlFlow 0 146) (- 0 147)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select (|Set#Union_40369| g0@@9 g1@@9) n_1)) (select (|Set#Union_40369| g0@@9 g1@@9) n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.5333:15|
 :skolemid |572|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select (|Set#Union_40369| g0@@9 g1@@9) n_1@@0)) (select (|Set#Union_40369| g0@@9 g1@@9) n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.5333:15|
 :skolemid |572|
)) (=> (and (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select (|Set#Union_40369| g0@@9 g1@@9) n_1@@1) (< NoPerm FullPerm)) (and (qpRange74 n_1@@1) (= (invRecv74 n_1@@1) n_1@@1)))
 :qid |stdinbpl.5339:22|
 :skolemid |573|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_1@@1 next))
)) (forall ((o_4@@39 T@Ref) ) (!  (=> (and (and (select (|Set#Union_40369| g0@@9 g1@@9) (invRecv74 o_4@@39)) (< NoPerm FullPerm)) (qpRange74 o_4@@39)) (= (invRecv74 o_4@@39) o_4@@39))
 :qid |stdinbpl.5343:22|
 :skolemid |574|
 :pattern ( (invRecv74 o_4@@39))
))) (and (forall ((n_1@@2 T@Ref) ) (!  (=> (select (|Set#Union_40369| g0@@9 g1@@9) n_1@@2) (not (= n_1@@2 null)))
 :qid |stdinbpl.5349:22|
 :skolemid |575|
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_61442_39387_39388#PolymorphicMapType_61442| Heap@@29) n_1@@2 next))
)) (forall ((o_4@@40 T@Ref) ) (!  (and (=> (and (and (select (|Set#Union_40369| g0@@9 g1@@9) (invRecv74 o_4@@40)) (< NoPerm FullPerm)) (qpRange74 o_4@@40)) (and (=> (< NoPerm FullPerm) (= (invRecv74 o_4@@40) o_4@@40)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_4@@40 next) (+ (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_4@@40 next) FullPerm)))) (=> (not (and (and (select (|Set#Union_40369| g0@@9 g1@@9) (invRecv74 o_4@@40)) (< NoPerm FullPerm)) (qpRange74 o_4@@40))) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_4@@40 next) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_4@@40 next))))
 :qid |stdinbpl.5355:22|
 :skolemid |576|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_4@@40 next))
)))) (=> (and (and (and (and (forall ((o_4@@41 T@Ref) (f_5@@23 T@Field_61502_53) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| ZeroMask) o_4@@41 f_5@@23) (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@0) o_4@@41 f_5@@23)))
 :qid |stdinbpl.5359:29|
 :skolemid |577|
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| ZeroMask) o_4@@41 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_61463_40180_53#PolymorphicMapType_61463| QPMask@0) o_4@@41 f_5@@23))
)) (forall ((o_4@@42 T@Ref) (f_5@@24 T@Field_61515_61516) ) (!  (=> (not (= f_5@@24 next)) (= (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_4@@42 f_5@@24) (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_4@@42 f_5@@24)))
 :qid |stdinbpl.5359:29|
 :skolemid |577|
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| ZeroMask) o_4@@42 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_61463_40180_40181#PolymorphicMapType_61463| QPMask@0) o_4@@42 f_5@@24))
))) (forall ((o_4@@43 T@Ref) (f_5@@25 T@Field_40180_203868) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| ZeroMask) o_4@@43 f_5@@25) (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@0) o_4@@43 f_5@@25)))
 :qid |stdinbpl.5359:29|
 :skolemid |577|
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| ZeroMask) o_4@@43 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_61463_40180_203868#PolymorphicMapType_61463| QPMask@0) o_4@@43 f_5@@25))
))) (forall ((o_4@@44 T@Ref) (f_5@@26 T@Field_40180_204001) ) (!  (=> true (= (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| ZeroMask) o_4@@44 f_5@@26) (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@0) o_4@@44 f_5@@26)))
 :qid |stdinbpl.5359:29|
 :skolemid |577|
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| ZeroMask) o_4@@44 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_61463_40180_207547#PolymorphicMapType_61463| QPMask@0) o_4@@44 f_5@@26))
))) (state Heap@@29 QPMask@0)) (and (and (=> (= (ControlFlow 0 146) 145) anon91_Else_correct) (=> (= (ControlFlow 0 146) 8) anon92_Then_correct)) (=> (= (ControlFlow 0 146) 10) anon92_Else_correct))))))))
(let ((anon90_Then_correct true))
(let ((anon89_Else_correct  (=> (forall ((r$0_1 T@Ref) ) (!  (=> (select g1@@9 r$0_1) (not (select g0@@9 r$0_1)))
 :qid |stdinbpl.5320:20|
 :skolemid |571|
 :pattern ( (select g0@@9 r$0_1) (select g1@@9 r$0_1))
)) (=> (and (state Heap@@29 ZeroMask) (not (select (|Set#Union_40369| g0@@9 g1@@9) null))) (and (=> (= (ControlFlow 0 148) 3) anon90_Then_correct) (=> (= (ControlFlow 0 148) 146) anon90_Else_correct))))))
(let ((anon89_Then_correct true))
(let ((anon88_Else_correct  (=> (forall ((r_1_1 T@Ref) ) (!  (=> (select g0@@9 r_1_1) (not (select g1@@9 r_1_1)))
 :qid |stdinbpl.5311:20|
 :skolemid |570|
 :pattern ( (select g0@@9 r_1_1) (select g1@@9 r_1_1))
)) (and (=> (= (ControlFlow 0 149) 2) anon89_Then_correct) (=> (= (ControlFlow 0 149) 148) anon89_Else_correct)))))
(let ((anon88_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@29 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@29) x0 $allocated) (select (|PolymorphicMapType_61442_39384_53#PolymorphicMapType_61442| Heap@@29) x1_2 $allocated))) (and (=> (= (ControlFlow 0 150) 1) anon88_Then_correct) (=> (= (ControlFlow 0 150) 149) anon88_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 151) 150) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
