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
(declare-sort T@Field_73987_53 0)
(declare-sort T@Field_74000_74001 0)
(declare-sort T@Field_83161_6878 0)
(declare-sort T@Field_48849_250666 0)
(declare-sort T@Field_48849_250533 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_73948 0)) (((PolymorphicMapType_73948 (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| (Array T@Ref T@Field_74000_74001 Real)) (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| (Array T@Ref T@Field_83161_6878 Real)) (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| (Array T@Ref T@Field_73987_53 Real)) (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| (Array T@Ref T@Field_48849_250533 Real)) (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| (Array T@Ref T@Field_48849_250666 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_74476 0)) (((PolymorphicMapType_74476 (|PolymorphicMapType_74476_73987_53#PolymorphicMapType_74476| (Array T@Ref T@Field_73987_53 Bool)) (|PolymorphicMapType_74476_73987_74001#PolymorphicMapType_74476| (Array T@Ref T@Field_74000_74001 Bool)) (|PolymorphicMapType_74476_73987_6878#PolymorphicMapType_74476| (Array T@Ref T@Field_83161_6878 Bool)) (|PolymorphicMapType_74476_73987_250533#PolymorphicMapType_74476| (Array T@Ref T@Field_48849_250533 Bool)) (|PolymorphicMapType_74476_73987_251844#PolymorphicMapType_74476| (Array T@Ref T@Field_48849_250666 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_73927 0)) (((PolymorphicMapType_73927 (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| (Array T@Ref T@Field_73987_53 Bool)) (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| (Array T@Ref T@Field_74000_74001 T@Ref)) (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| (Array T@Ref T@Field_83161_6878 Int)) (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| (Array T@Ref T@Field_48849_250666 T@PolymorphicMapType_74476)) (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| (Array T@Ref T@Field_48849_250533 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_73987_53)
(declare-fun next () T@Field_74000_74001)
(declare-fun val () T@Field_83161_6878)
(declare-fun succHeap (T@PolymorphicMapType_73927 T@PolymorphicMapType_73927) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_73927 T@PolymorphicMapType_73927) Bool)
(declare-fun state (T@PolymorphicMapType_73927 T@PolymorphicMapType_73948) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_73948) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_74476)
(declare-fun |apply_TCFraming'| (T@PolymorphicMapType_73927 (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun dummyFunction_9333 (Bool) Bool)
(declare-fun |apply_TCFraming#triggerStateless| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-sort T@EdgeDomainType 0)
(declare-fun exists_path ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun edge ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun exists_path_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun |$$'| (T@PolymorphicMapType_73927 (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun dummyFunction_83306 ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun |$$#triggerStateless| ((Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |Set#Union_49040| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_49043| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |apply_TCFraming#condqp2| (T@PolymorphicMapType_73927 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |sk_apply_TCFraming#condqp2| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun |apply_TCFraming#condqp3| (T@PolymorphicMapType_73927 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |sk_apply_TCFraming#condqp3| (Int Int) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |apply_TCFraming#trigger| (T@FrameType (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_7031 (Int) T@FrameType)
(declare-fun |Set#Equal_49043| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Set#Empty_49046| () (Array T@Ref Bool))
(declare-fun |$$#frame| (T@FrameType (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |$$#condqp1| (T@PolymorphicMapType_73927 (Array T@Ref Bool)) Int)
(declare-fun $$ (T@PolymorphicMapType_73927 (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |Set#Singleton_49733| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_49046| ((Array T@Ref Bool)) Int)
(declare-fun DEP ((Array T@EdgeDomainType Bool) T@Ref T@Ref T@Ref T@Ref) Bool)
(declare-fun __learn_trigger__ (Bool) Bool)
(declare-fun apply_noExit ((Array T@EdgeDomainType Bool) (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_73927 T@PolymorphicMapType_73927 T@PolymorphicMapType_73948) Bool)
(declare-fun IsPredicateField_48849_250624 (T@Field_48849_250533) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_48849 (T@Field_48849_250533) T@Field_48849_250666)
(declare-fun HasDirectPerm_48849_250597 (T@PolymorphicMapType_73948 T@Ref T@Field_48849_250533) Bool)
(declare-fun IsWandField_48849_252371 (T@Field_48849_250533) Bool)
(declare-fun WandMaskField_48849 (T@Field_48849_250533) T@Field_48849_250666)
(declare-fun unshared_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun func_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun DEP_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref T@Ref T@Ref) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_73927)
(declare-fun ZeroMask () T@PolymorphicMapType_73948)
(declare-fun InsidePredicate_73987_73987 (T@Field_48849_250533 T@FrameType T@Field_48849_250533 T@FrameType) Bool)
(declare-fun |sk_$$#condqp1| (Int Int) T@Ref)
(declare-fun IsPredicateField_48849_48850 (T@Field_74000_74001) Bool)
(declare-fun IsWandField_48849_48850 (T@Field_74000_74001) Bool)
(declare-fun IsPredicateField_48852_6878 (T@Field_83161_6878) Bool)
(declare-fun IsWandField_48852_6878 (T@Field_83161_6878) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_48849_255888 (T@Field_48849_250666) Bool)
(declare-fun IsWandField_48849_255904 (T@Field_48849_250666) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_48849_53 (T@Field_73987_53) Bool)
(declare-fun IsWandField_48849_53 (T@Field_73987_53) Bool)
(declare-fun |Set#Equal_48858| ((Array T@EdgeDomainType Bool) (Array T@EdgeDomainType Bool)) Bool)
(declare-fun HasDirectPerm_48849_256342 (T@PolymorphicMapType_73948 T@Ref T@Field_48849_250666) Bool)
(declare-fun HasDirectPerm_48849_53 (T@PolymorphicMapType_73948 T@Ref T@Field_73987_53) Bool)
(declare-fun HasDirectPerm_48852_6878 (T@PolymorphicMapType_73948 T@Ref T@Field_83161_6878) Bool)
(declare-fun HasDirectPerm_48849_48850 (T@PolymorphicMapType_73948 T@Ref T@Field_74000_74001) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_73948 T@PolymorphicMapType_73948 T@PolymorphicMapType_73948) Bool)
(declare-fun |Set#Difference_49046| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_49046| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |$$#trigger| (T@FrameType (Array T@Ref Bool)) Bool)
(declare-fun acyclic_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun create_edge (T@Ref T@Ref) T@EdgeDomainType)
(declare-fun edge_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun edge_pred (T@EdgeDomainType) T@Ref)
(declare-fun edge_succ (T@EdgeDomainType) T@Ref)
(declare-fun |apply_TCFraming#frame| (T@FrameType (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun succs ((Array T@EdgeDomainType Bool) T@Ref) (Array T@Ref Bool))
(declare-fun inst_uReach ((Array T@EdgeDomainType Bool) T@Ref) (Array T@Ref Bool))
(declare-fun inst_uReach_rev ((Array T@EdgeDomainType Bool) T@Ref) (Array T@Ref Bool))
(declare-fun apply_TCFraming (T@PolymorphicMapType_73927 (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_73927) (Heap1 T@PolymorphicMapType_73927) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_73927) (Mask T@PolymorphicMapType_73948) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_73927) (Heap1@@0 T@PolymorphicMapType_73927) (Heap2 T@PolymorphicMapType_73927) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_48849_250666) ) (!  (not (select (|PolymorphicMapType_74476_73987_251844#PolymorphicMapType_74476| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_74476_73987_251844#PolymorphicMapType_74476| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_48849_250533) ) (!  (not (select (|PolymorphicMapType_74476_73987_250533#PolymorphicMapType_74476| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_74476_73987_250533#PolymorphicMapType_74476| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_83161_6878) ) (!  (not (select (|PolymorphicMapType_74476_73987_6878#PolymorphicMapType_74476| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_74476_73987_6878#PolymorphicMapType_74476| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_74000_74001) ) (!  (not (select (|PolymorphicMapType_74476_73987_74001#PolymorphicMapType_74476| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_74476_73987_74001#PolymorphicMapType_74476| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_73987_53) ) (!  (not (select (|PolymorphicMapType_74476_73987_53#PolymorphicMapType_74476| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_74476_73987_53#PolymorphicMapType_74476| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_73927) (g0 (Array T@Ref Bool)) (g1 (Array T@Ref Bool)) ) (! (dummyFunction_9333 (|apply_TCFraming#triggerStateless| g0 g1))
 :qid |stdinbpl.1076:15|
 :skolemid |131|
 :pattern ( (|apply_TCFraming'| Heap@@0 g0 g1))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.559:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (start_1 T@Ref) (end_1 T@Ref) ) (! (= (exists_path_ EG_1 start_1 end_1)  (or (= start_1 end_1) (exists ((w_2 T@Ref) ) (!  (and (edge EG_1 start_1 w_2) (exists_path_ EG_1 w_2 end_1))
 :qid |stdinbpl.772:78|
 :skolemid |92|
 :pattern ( (edge EG_1 start_1 w_2))
 :pattern ( (exists_path_ EG_1 w_2 end_1))
))))
 :qid |stdinbpl.770:15|
 :skolemid |93|
 :pattern ( (exists_path EG_1 start_1 end_1))
 :pattern ( (edge EG_1 start_1 end_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_73927) (refs (Array T@Ref Bool)) ) (! (dummyFunction_83306 (|$$#triggerStateless| refs))
 :qid |stdinbpl.913:15|
 :skolemid |111|
 :pattern ( (|$$'| Heap@@1 refs))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_49040| (|Set#Union_49040| a@@0 b@@0) b@@0) (|Set#Union_49040| a@@0 b@@0))
 :qid |stdinbpl.511:18|
 :skolemid |38|
 :pattern ( (|Set#Union_49040| (|Set#Union_49040| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_49043| (|Set#Intersection_49043| a@@1 b@@1) b@@1) (|Set#Intersection_49043| a@@1 b@@1))
 :qid |stdinbpl.515:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_49043| (|Set#Intersection_49043| a@@1 b@@1) b@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_73927) (Heap1Heap T@PolymorphicMapType_73927) (g0@@0 (Array T@Ref Bool)) (g1@@0 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g0@@0 (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap g0@@0 g1@@0) (|apply_TCFraming#condqp2| Heap1Heap g0@@0 g1@@0))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select g0@@0 (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap g0@@0 g1@@0) (|apply_TCFraming#condqp2| Heap1Heap g0@@0 g1@@0))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select g0@@0 (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap g0@@0 g1@@0) (|apply_TCFraming#condqp2| Heap1Heap g0@@0 g1@@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap2Heap) (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap g0@@0 g1@@0) (|apply_TCFraming#condqp2| Heap1Heap g0@@0 g1@@0)) next) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap1Heap) (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap g0@@0 g1@@0) (|apply_TCFraming#condqp2| Heap1Heap g0@@0 g1@@0)) next)))) (= (|apply_TCFraming#condqp2| Heap2Heap g0@@0 g1@@0) (|apply_TCFraming#condqp2| Heap1Heap g0@@0 g1@@0)))
 :qid |stdinbpl.1093:15|
 :skolemid |133|
 :pattern ( (|apply_TCFraming#condqp2| Heap2Heap g0@@0 g1@@0) (|apply_TCFraming#condqp2| Heap1Heap g0@@0 g1@@0) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_73927) (Heap1Heap@@0 T@PolymorphicMapType_73927) (g0@@1 (Array T@Ref Bool)) (g1@@1 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g1@@1 (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@0 g0@@1 g1@@1) (|apply_TCFraming#condqp3| Heap1Heap@@0 g0@@1 g1@@1))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select g1@@1 (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@0 g0@@1 g1@@1) (|apply_TCFraming#condqp3| Heap1Heap@@0 g0@@1 g1@@1))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select g1@@1 (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@0 g0@@1 g1@@1) (|apply_TCFraming#condqp3| Heap1Heap@@0 g0@@1 g1@@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap2Heap@@0) (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@0 g0@@1 g1@@1) (|apply_TCFraming#condqp3| Heap1Heap@@0 g0@@1 g1@@1)) next) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap1Heap@@0) (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@0 g0@@1 g1@@1) (|apply_TCFraming#condqp3| Heap1Heap@@0 g0@@1 g1@@1)) next)))) (= (|apply_TCFraming#condqp3| Heap2Heap@@0 g0@@1 g1@@1) (|apply_TCFraming#condqp3| Heap1Heap@@0 g0@@1 g1@@1)))
 :qid |stdinbpl.1103:15|
 :skolemid |134|
 :pattern ( (|apply_TCFraming#condqp3| Heap2Heap@@0 g0@@1 g1@@1) (|apply_TCFraming#condqp3| Heap1Heap@@0 g0@@1 g1@@1) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_73927) (Mask@@0 T@PolymorphicMapType_73948) (g0@@2 (Array T@Ref Bool)) (g1@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@2 Mask@@0) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_7031 (|apply_TCFraming#condqp2| Heap@@2 g0@@2 g1@@2)) (FrameFragment_7031 (|apply_TCFraming#condqp3| Heap@@2 g0@@2 g1@@2))) g0@@2 g1@@2))) (=> (|Set#Equal_49043| (|Set#Intersection_49043| g1@@2 g0@@2) |Set#Empty_49046|) (forall ((u_2_2 T@Ref) (v_2_2 T@Ref) ) (!  (=> (and (select g0@@2 u_2_2) (and (select g0@@2 v_2_2) (not (exists_path ($$ Heap@@2 g0@@2) u_2_2 v_2_2)))) (not (exists_path ($$ Heap@@2 (|Set#Union_49040| g0@@2 g1@@2)) u_2_2 v_2_2)))
 :qid |stdinbpl.1129:285|
 :skolemid |140|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@2 g0@@2)) g0@@2) u_2_2 v_2_2))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@2 (|Set#Union_49040| g0@@2 g1@@2))) (|Set#Union_49040| g0@@2 g1@@2)) u_2_2 v_2_2))
))))
 :qid |stdinbpl.1127:15|
 :skolemid |141|
 :pattern ( (state Heap@@2 Mask@@0) (|apply_TCFraming'| Heap@@2 g0@@2 g1@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_73927) (Mask@@1 T@PolymorphicMapType_73948) (g0@@3 (Array T@Ref Bool)) (g1@@3 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@3 Mask@@1) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_7031 (|apply_TCFraming#condqp2| Heap@@3 g0@@3 g1@@3)) (FrameFragment_7031 (|apply_TCFraming#condqp3| Heap@@3 g0@@3 g1@@3))) g0@@3 g1@@3))) (=> (|Set#Equal_49043| (|Set#Intersection_49043| g1@@3 g0@@3) |Set#Empty_49046|) (forall ((u_3_1 T@Ref) (v_3_1 T@Ref) ) (!  (=> (and (select g1@@3 u_3_1) (and (select g1@@3 v_3_1) (not (exists_path ($$ Heap@@3 g1@@3) u_3_1 v_3_1)))) (not (exists_path ($$ Heap@@3 (|Set#Union_49040| g1@@3 g0@@3)) u_3_1 v_3_1)))
 :qid |stdinbpl.1136:285|
 :skolemid |142|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@3 g1@@3)) g1@@3) u_3_1 v_3_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@3 (|Set#Union_49040| g0@@3 g1@@3))) (|Set#Union_49040| g0@@3 g1@@3)) u_3_1 v_3_1))
))))
 :qid |stdinbpl.1134:15|
 :skolemid |143|
 :pattern ( (state Heap@@3 Mask@@1) (|apply_TCFraming'| Heap@@3 g0@@3 g1@@3))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_49733| r) o) (= r o))
 :qid |stdinbpl.480:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_49733| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_49046| (|Set#Union_49040| a@@2 b@@2)) (|Set#Card_49046| (|Set#Intersection_49043| a@@2 b@@2))) (+ (|Set#Card_49046| a@@2) (|Set#Card_49046| b@@2)))
 :qid |stdinbpl.519:18|
 :skolemid |42|
 :pattern ( (|Set#Card_49046| (|Set#Union_49040| a@@2 b@@2)))
 :pattern ( (|Set#Card_49046| (|Set#Intersection_49043| a@@2 b@@2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_73927) (Mask@@2 T@PolymorphicMapType_73948) (g0@@4 (Array T@Ref Bool)) (g1@@4 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@4 Mask@@2) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_7031 (|apply_TCFraming#condqp2| Heap@@4 g0@@4 g1@@4)) (FrameFragment_7031 (|apply_TCFraming#condqp3| Heap@@4 g0@@4 g1@@4))) g0@@4 g1@@4))) (=> (|Set#Equal_49043| (|Set#Intersection_49043| g1@@4 g0@@4) |Set#Empty_49046|) (forall ((u_4 T@Ref) (v_4_1 T@Ref) ) (!  (=> (and (select g0@@4 u_4) (select g0@@4 v_4_1)) (__learn_trigger__ (exists_path ($$ Heap@@4 (|Set#Union_49040| g0@@4 g1@@4)) u_4 v_4_1)))
 :qid |stdinbpl.1143:285|
 :skolemid |144|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@4 (|Set#Union_49040| g0@@4 g1@@4))) (|Set#Union_49040| g0@@4 g1@@4)) u_4 v_4_1 u_4 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@4) u_4 next)))
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@4 (|Set#Union_49040| g0@@4 g1@@4))) (|Set#Union_49040| g0@@4 g1@@4)) u_4 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@4) v_4_1 next) v_4_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@4) v_4_1 next)))
))))
 :qid |stdinbpl.1141:15|
 :skolemid |145|
 :pattern ( (state Heap@@4 Mask@@2) (|apply_TCFraming'| Heap@@4 g0@@4 g1@@4))
)))
(assert (forall ((EG_1@@0 (Array T@EdgeDomainType Bool)) (U_1 (Array T@Ref Bool)) (M_1 (Array T@Ref Bool)) ) (!  (=> (apply_noExit EG_1@@0 U_1 M_1) (=> (forall ((u_1 T@Ref) (v_2 T@Ref) ) (!  (=> (and (select M_1 u_1) (and (select U_1 v_2) (not (select M_1 v_2)))) (not (edge EG_1@@0 u_1 v_2)))
 :qid |stdinbpl.742:52|
 :skolemid |86|
 :pattern ( (edge EG_1@@0 u_1 v_2))
 :pattern ( (select M_1 u_1) (select M_1 v_2))
)) (forall ((u_1_1 T@Ref) (v_1_1 T@Ref) ) (!  (=> (and (select M_1 u_1_1) (and (select U_1 v_1_1) (not (select M_1 v_1_1)))) (not (exists_path EG_1@@0 u_1_1 v_1_1)))
 :qid |stdinbpl.745:17|
 :skolemid |87|
 :pattern ( (exists_path EG_1@@0 u_1_1 v_1_1))
 :pattern ( (select M_1 u_1_1) (select M_1 v_1_1))
))))
 :qid |stdinbpl.740:15|
 :skolemid |88|
 :pattern ( (apply_noExit EG_1@@0 U_1 M_1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_73927) (refs@@0 (Array T@Ref Bool)) ) (!  (and (= ($$ Heap@@5 refs@@0) (|$$'| Heap@@5 refs@@0)) (dummyFunction_83306 (|$$#triggerStateless| refs@@0)))
 :qid |stdinbpl.909:15|
 :skolemid |110|
 :pattern ( ($$ Heap@@5 refs@@0))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.562:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_73927) (ExhaleHeap T@PolymorphicMapType_73927) (Mask@@3 T@PolymorphicMapType_73948) (pm_f_16 T@Field_48849_250533) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_48849_250597 Mask@@3 null pm_f_16) (IsPredicateField_48849_250624 pm_f_16)) (= (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@6) null (PredicateMaskField_48849 pm_f_16)) (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap) null (PredicateMaskField_48849 pm_f_16)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@3) (IsPredicateField_48849_250624 pm_f_16) (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap) null (PredicateMaskField_48849 pm_f_16)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_73927) (ExhaleHeap@@0 T@PolymorphicMapType_73927) (Mask@@4 T@PolymorphicMapType_73948) (pm_f_16@@0 T@Field_48849_250533) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_48849_250597 Mask@@4 null pm_f_16@@0) (IsWandField_48849_252371 pm_f_16@@0)) (= (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@7) null (WandMaskField_48849 pm_f_16@@0)) (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap@@0) null (WandMaskField_48849 pm_f_16@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@4) (IsWandField_48849_252371 pm_f_16@@0) (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap@@0) null (WandMaskField_48849 pm_f_16@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_73927) (Mask@@5 T@PolymorphicMapType_73948) (g0@@5 (Array T@Ref Bool)) (g1@@5 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@8 Mask@@5) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_7031 (|apply_TCFraming#condqp2| Heap@@8 g0@@5 g1@@5)) (FrameFragment_7031 (|apply_TCFraming#condqp3| Heap@@8 g0@@5 g1@@5))) g0@@5 g1@@5))) (=> (|Set#Equal_49043| (|Set#Intersection_49043| g1@@5 g0@@5) |Set#Empty_49046|) (|Set#Equal_49043| (|Set#Union_49040| g0@@5 g1@@5) (|Set#Union_49040| g1@@5 g0@@5))))
 :qid |stdinbpl.1109:15|
 :skolemid |135|
 :pattern ( (state Heap@@8 Mask@@5) (|apply_TCFraming'| Heap@@8 g0@@5 g1@@5))
)))
(assert (forall ((EG_1@@1 (Array T@EdgeDomainType Bool)) ) (! (= (unshared_graph EG_1@@1) (forall ((v1 T@Ref) (v2 T@Ref) (v_2@@0 T@Ref) ) (!  (=> (and (edge EG_1@@1 v1 v_2@@0) (edge EG_1@@1 v2 v_2@@0)) (= v1 v2))
 :qid |stdinbpl.796:43|
 :skolemid |97|
 :pattern ( (edge EG_1@@1 v1 v_2@@0) (edge EG_1@@1 v2 v_2@@0))
)))
 :qid |stdinbpl.794:15|
 :skolemid |98|
 :pattern ( (unshared_graph EG_1@@1))
)))
(assert (forall ((EG_1@@2 (Array T@EdgeDomainType Bool)) ) (! (= (func_graph EG_1@@2) (forall ((v1@@0 T@Ref) (v2@@0 T@Ref) (v_2@@1 T@Ref) ) (!  (=> (and (edge EG_1@@2 v_2@@1 v1@@0) (edge EG_1@@2 v_2@@1 v2@@0)) (= v1@@0 v2@@0))
 :qid |stdinbpl.805:39|
 :skolemid |99|
 :pattern ( (edge EG_1@@2 v_2@@1 v1@@0) (edge EG_1@@2 v_2@@1 v2@@0))
)))
 :qid |stdinbpl.803:15|
 :skolemid |100|
 :pattern ( (func_graph EG_1@@2))
)))
(assert (forall ((EG_1@@3 (Array T@EdgeDomainType Bool)) (x T@Ref) (y T@Ref) ) (! (= (edge EG_1@@3 x y) (DEP_ EG_1@@3 x y x y))
 :qid |stdinbpl.831:15|
 :skolemid |102|
 :pattern ( (DEP EG_1@@3 x y x y))
 :pattern ( (edge EG_1@@3 x y))
)))
(assert (forall ((EG_1@@4 (Array T@EdgeDomainType Bool)) (x@@0 T@Ref) (y@@0 T@Ref) (u_1@@0 T@Ref) (v_2@@2 T@Ref) ) (!  (=> (not (edge EG_1@@4 u_1@@0 v_2@@2)) (not (DEP_ EG_1@@4 x@@0 y@@0 u_1@@0 v_2@@2)))
 :qid |stdinbpl.849:15|
 :skolemid |105|
 :pattern ( (DEP EG_1@@4 x@@0 y@@0 u_1@@0 v_2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1@@5 (Array T@EdgeDomainType Bool)) (u_1@@1 T@Ref) (v_2@@3 T@Ref) (w_2@@0 T@Ref) ) (!  (=> (and (exists_path EG_1@@5 u_1@@1 w_2@@0) (exists_path EG_1@@5 w_2@@0 v_2@@3)) (exists_path_ EG_1@@5 u_1@@1 v_2@@3))
 :qid |stdinbpl.779:15|
 :skolemid |94|
 :pattern ( (exists_path EG_1@@5 u_1@@1 w_2@@0) (exists_path EG_1@@5 w_2@@0 v_2@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_73927) (ExhaleHeap@@1 T@PolymorphicMapType_73927) (Mask@@6 T@PolymorphicMapType_73948) (o_35 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (=> (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@9) o_35 $allocated) (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| ExhaleHeap@@1) o_35 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| ExhaleHeap@@1) o_35 $allocated))
)))
(assert (forall ((p T@Field_48849_250533) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_73987_73987 p v_1 p w))
 :qid |stdinbpl.457:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_73987_73987 p v_1 p w))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_73927) (Heap1Heap@@1 T@PolymorphicMapType_73927) (refs@@1 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select refs@@1 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap@@1 refs@@1) (|$$#condqp1| Heap1Heap@@1 refs@@1))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select refs@@1 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap@@1 refs@@1) (|$$#condqp1| Heap1Heap@@1 refs@@1))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select refs@@1 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap@@1 refs@@1) (|$$#condqp1| Heap1Heap@@1 refs@@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap2Heap@@1) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap@@1 refs@@1) (|$$#condqp1| Heap1Heap@@1 refs@@1)) next) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap1Heap@@1) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap@@1 refs@@1) (|$$#condqp1| Heap1Heap@@1 refs@@1)) next)))) (= (|$$#condqp1| Heap2Heap@@1 refs@@1) (|$$#condqp1| Heap1Heap@@1 refs@@1)))
 :qid |stdinbpl.930:15|
 :skolemid |113|
 :pattern ( (|$$#condqp1| Heap2Heap@@1 refs@@1) (|$$#condqp1| Heap1Heap@@1 refs@@1) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert  (not (IsPredicateField_48849_48850 next)))
(assert  (not (IsWandField_48849_48850 next)))
(assert  (not (IsPredicateField_48852_6878 val)))
(assert  (not (IsWandField_48852_6878 val)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_73927) (ExhaleHeap@@2 T@PolymorphicMapType_73927) (Mask@@7 T@PolymorphicMapType_73948) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@7) (succHeap Heap@@10 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_73948) (o_2@@4 T@Ref) (f_4@@4 T@Field_48849_250666) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_48849_255888 f_4@@4))) (not (IsWandField_48849_255904 f_4@@4))) (<= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_73948) (o_2@@5 T@Ref) (f_4@@5 T@Field_48849_250533) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_48849_250624 f_4@@5))) (not (IsWandField_48849_252371 f_4@@5))) (<= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_73948) (o_2@@6 T@Ref) (f_4@@6 T@Field_73987_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_48849_53 f_4@@6))) (not (IsWandField_48849_53 f_4@@6))) (<= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_73948) (o_2@@7 T@Ref) (f_4@@7 T@Field_83161_6878) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_48852_6878 f_4@@7))) (not (IsWandField_48852_6878 f_4@@7))) (<= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_73948) (o_2@@8 T@Ref) (f_4@@8 T@Field_74000_74001) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_48849_48850 f_4@@8))) (not (IsWandField_48849_48850 f_4@@8))) (<= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((a@@4 (Array T@EdgeDomainType Bool)) (b@@3 (Array T@EdgeDomainType Bool)) ) (! (= (|Set#Equal_48858| a@@4 b@@3) (forall ((o@@0 T@EdgeDomainType) ) (! (= (select a@@4 o@@0) (select b@@3 o@@0))
 :qid |stdinbpl.544:31|
 :skolemid |48|
 :pattern ( (select a@@4 o@@0))
 :pattern ( (select b@@3 o@@0))
)))
 :qid |stdinbpl.543:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_48858| a@@4 b@@3))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) ) (! (= (|Set#Equal_49043| a@@5 b@@4) (forall ((o@@1 T@Ref) ) (! (= (select a@@5 o@@1) (select b@@4 o@@1))
 :qid |stdinbpl.544:31|
 :skolemid |48|
 :pattern ( (select a@@5 o@@1))
 :pattern ( (select b@@4 o@@1))
)))
 :qid |stdinbpl.543:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_49043| a@@5 b@@4))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_73948) (o_2@@9 T@Ref) (f_4@@9 T@Field_48849_250666) ) (! (= (HasDirectPerm_48849_256342 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_48849_256342 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_73948) (o_2@@10 T@Ref) (f_4@@10 T@Field_48849_250533) ) (! (= (HasDirectPerm_48849_250597 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_48849_250597 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_73948) (o_2@@11 T@Ref) (f_4@@11 T@Field_73987_53) ) (! (= (HasDirectPerm_48849_53 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_48849_53 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_73948) (o_2@@12 T@Ref) (f_4@@12 T@Field_83161_6878) ) (! (= (HasDirectPerm_48852_6878 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_48852_6878 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_73948) (o_2@@13 T@Ref) (f_4@@13 T@Field_74000_74001) ) (! (= (HasDirectPerm_48849_48850 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_48849_48850 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((EG_1@@6 (Array T@EdgeDomainType Bool)) (x@@1 T@Ref) (y@@1 T@Ref) (u_1@@2 T@Ref) (v_2@@4 T@Ref) ) (! (= (DEP EG_1@@6 x@@1 y@@1 u_1@@2 v_2@@4) (DEP_ EG_1@@6 x@@1 y@@1 u_1@@2 v_2@@4))
 :qid |stdinbpl.825:15|
 :skolemid |101|
 :pattern ( (DEP EG_1@@6 x@@1 y@@1 u_1@@2 v_2@@4))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_73927) (ExhaleHeap@@3 T@PolymorphicMapType_73927) (Mask@@18 T@PolymorphicMapType_73948) (pm_f_16@@1 T@Field_48849_250533) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_48849_250597 Mask@@18 null pm_f_16@@1) (IsPredicateField_48849_250624 pm_f_16@@1)) (and (and (and (and (forall ((o2_16 T@Ref) (f_48 T@Field_73987_53) ) (!  (=> (select (|PolymorphicMapType_74476_73987_53#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@11) null (PredicateMaskField_48849 pm_f_16@@1))) o2_16 f_48) (= (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@11) o2_16 f_48) (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| ExhaleHeap@@3) o2_16 f_48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| ExhaleHeap@@3) o2_16 f_48))
)) (forall ((o2_16@@0 T@Ref) (f_48@@0 T@Field_74000_74001) ) (!  (=> (select (|PolymorphicMapType_74476_73987_74001#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@11) null (PredicateMaskField_48849 pm_f_16@@1))) o2_16@@0 f_48@@0) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@11) o2_16@@0 f_48@@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@@3) o2_16@@0 f_48@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@@3) o2_16@@0 f_48@@0))
))) (forall ((o2_16@@1 T@Ref) (f_48@@1 T@Field_83161_6878) ) (!  (=> (select (|PolymorphicMapType_74476_73987_6878#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@11) null (PredicateMaskField_48849 pm_f_16@@1))) o2_16@@1 f_48@@1) (= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@11) o2_16@@1 f_48@@1) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@@3) o2_16@@1 f_48@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@@3) o2_16@@1 f_48@@1))
))) (forall ((o2_16@@2 T@Ref) (f_48@@2 T@Field_48849_250533) ) (!  (=> (select (|PolymorphicMapType_74476_73987_250533#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@11) null (PredicateMaskField_48849 pm_f_16@@1))) o2_16@@2 f_48@@2) (= (select (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@11) o2_16@@2 f_48@@2) (select (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| ExhaleHeap@@3) o2_16@@2 f_48@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| ExhaleHeap@@3) o2_16@@2 f_48@@2))
))) (forall ((o2_16@@3 T@Ref) (f_48@@3 T@Field_48849_250666) ) (!  (=> (select (|PolymorphicMapType_74476_73987_251844#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@11) null (PredicateMaskField_48849 pm_f_16@@1))) o2_16@@3 f_48@@3) (= (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@11) o2_16@@3 f_48@@3) (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap@@3) o2_16@@3 f_48@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap@@3) o2_16@@3 f_48@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@18) (IsPredicateField_48849_250624 pm_f_16@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_73927) (ExhaleHeap@@4 T@PolymorphicMapType_73927) (Mask@@19 T@PolymorphicMapType_73948) (pm_f_16@@2 T@Field_48849_250533) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_48849_250597 Mask@@19 null pm_f_16@@2) (IsWandField_48849_252371 pm_f_16@@2)) (and (and (and (and (forall ((o2_16@@4 T@Ref) (f_48@@4 T@Field_73987_53) ) (!  (=> (select (|PolymorphicMapType_74476_73987_53#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@12) null (WandMaskField_48849 pm_f_16@@2))) o2_16@@4 f_48@@4) (= (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@12) o2_16@@4 f_48@@4) (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| ExhaleHeap@@4) o2_16@@4 f_48@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| ExhaleHeap@@4) o2_16@@4 f_48@@4))
)) (forall ((o2_16@@5 T@Ref) (f_48@@5 T@Field_74000_74001) ) (!  (=> (select (|PolymorphicMapType_74476_73987_74001#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@12) null (WandMaskField_48849 pm_f_16@@2))) o2_16@@5 f_48@@5) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@12) o2_16@@5 f_48@@5) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@@4) o2_16@@5 f_48@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@@4) o2_16@@5 f_48@@5))
))) (forall ((o2_16@@6 T@Ref) (f_48@@6 T@Field_83161_6878) ) (!  (=> (select (|PolymorphicMapType_74476_73987_6878#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@12) null (WandMaskField_48849 pm_f_16@@2))) o2_16@@6 f_48@@6) (= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@12) o2_16@@6 f_48@@6) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@@4) o2_16@@6 f_48@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@@4) o2_16@@6 f_48@@6))
))) (forall ((o2_16@@7 T@Ref) (f_48@@7 T@Field_48849_250533) ) (!  (=> (select (|PolymorphicMapType_74476_73987_250533#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@12) null (WandMaskField_48849 pm_f_16@@2))) o2_16@@7 f_48@@7) (= (select (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@12) o2_16@@7 f_48@@7) (select (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| ExhaleHeap@@4) o2_16@@7 f_48@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| ExhaleHeap@@4) o2_16@@7 f_48@@7))
))) (forall ((o2_16@@8 T@Ref) (f_48@@8 T@Field_48849_250666) ) (!  (=> (select (|PolymorphicMapType_74476_73987_251844#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@12) null (WandMaskField_48849 pm_f_16@@2))) o2_16@@8 f_48@@8) (= (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@12) o2_16@@8 f_48@@8) (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap@@4) o2_16@@8 f_48@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap@@4) o2_16@@8 f_48@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@19) (IsWandField_48849_252371 pm_f_16@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.445:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_73927) (ExhaleHeap@@5 T@PolymorphicMapType_73927) (Mask@@20 T@PolymorphicMapType_73948) (o_35@@0 T@Ref) (f_48@@9 T@Field_48849_250666) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_48849_256342 Mask@@20 o_35@@0 f_48@@9) (= (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@13) o_35@@0 f_48@@9) (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap@@5) o_35@@0 f_48@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap@@5) o_35@@0 f_48@@9))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_73927) (ExhaleHeap@@6 T@PolymorphicMapType_73927) (Mask@@21 T@PolymorphicMapType_73948) (o_35@@1 T@Ref) (f_48@@10 T@Field_48849_250533) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_48849_250597 Mask@@21 o_35@@1 f_48@@10) (= (select (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@14) o_35@@1 f_48@@10) (select (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| ExhaleHeap@@6) o_35@@1 f_48@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| ExhaleHeap@@6) o_35@@1 f_48@@10))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_73927) (ExhaleHeap@@7 T@PolymorphicMapType_73927) (Mask@@22 T@PolymorphicMapType_73948) (o_35@@2 T@Ref) (f_48@@11 T@Field_73987_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_48849_53 Mask@@22 o_35@@2 f_48@@11) (= (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@15) o_35@@2 f_48@@11) (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| ExhaleHeap@@7) o_35@@2 f_48@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| ExhaleHeap@@7) o_35@@2 f_48@@11))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_73927) (ExhaleHeap@@8 T@PolymorphicMapType_73927) (Mask@@23 T@PolymorphicMapType_73948) (o_35@@3 T@Ref) (f_48@@12 T@Field_83161_6878) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_48852_6878 Mask@@23 o_35@@3 f_48@@12) (= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@16) o_35@@3 f_48@@12) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@@8) o_35@@3 f_48@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@@8) o_35@@3 f_48@@12))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_73927) (ExhaleHeap@@9 T@PolymorphicMapType_73927) (Mask@@24 T@PolymorphicMapType_73948) (o_35@@4 T@Ref) (f_48@@13 T@Field_74000_74001) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_48849_48850 Mask@@24 o_35@@4 f_48@@13) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@17) o_35@@4 f_48@@13) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@@9) o_35@@4 f_48@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@@9) o_35@@4 f_48@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_48849_250666) ) (! (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_48849_250533) ) (! (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_73987_53) ) (! (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_83161_6878) ) (! (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_74000_74001) ) (! (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_73927) (Mask@@25 T@PolymorphicMapType_73948) (g0@@6 (Array T@Ref Bool)) (g1@@6 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@18 Mask@@25) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_7031 (|apply_TCFraming#condqp2| Heap@@18 g0@@6 g1@@6)) (FrameFragment_7031 (|apply_TCFraming#condqp3| Heap@@18 g0@@6 g1@@6))) g0@@6 g1@@6))) (=> (|Set#Equal_49043| (|Set#Intersection_49043| g1@@6 g0@@6) |Set#Empty_49046|) (forall ((u_1@@3 T@Ref) (v_2@@5 T@Ref) ) (!  (=> (and (select g0@@6 u_1@@3) (and (select g0@@6 v_2@@5) (exists_path ($$ Heap@@18 g0@@6) u_1@@3 v_2@@5))) (exists_path ($$ Heap@@18 (|Set#Union_49040| g0@@6 g1@@6)) u_1@@3 v_2@@5))
 :qid |stdinbpl.1115:285|
 :skolemid |136|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@18 g0@@6)) g0@@6) u_1@@3 v_2@@5))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@18 (|Set#Union_49040| g0@@6 g1@@6))) (|Set#Union_49040| g0@@6 g1@@6)) u_1@@3 v_2@@5))
))))
 :qid |stdinbpl.1113:15|
 :skolemid |137|
 :pattern ( (state Heap@@18 Mask@@25) (|apply_TCFraming'| Heap@@18 g0@@6 g1@@6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_73927) (Mask@@26 T@PolymorphicMapType_73948) (g0@@7 (Array T@Ref Bool)) (g1@@7 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@19 Mask@@26) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_7031 (|apply_TCFraming#condqp2| Heap@@19 g0@@7 g1@@7)) (FrameFragment_7031 (|apply_TCFraming#condqp3| Heap@@19 g0@@7 g1@@7))) g0@@7 g1@@7))) (=> (|Set#Equal_49043| (|Set#Intersection_49043| g1@@7 g0@@7) |Set#Empty_49046|) (forall ((u_1_1@@0 T@Ref) (v_1_1@@0 T@Ref) ) (!  (=> (and (select g1@@7 u_1_1@@0) (and (select g1@@7 v_1_1@@0) (exists_path ($$ Heap@@19 g1@@7) u_1_1@@0 v_1_1@@0))) (exists_path ($$ Heap@@19 (|Set#Union_49040| g1@@7 g0@@7)) u_1_1@@0 v_1_1@@0))
 :qid |stdinbpl.1122:285|
 :skolemid |138|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@19 g1@@7)) g1@@7) u_1_1@@0 v_1_1@@0))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@19 (|Set#Union_49040| g1@@7 g0@@7))) (|Set#Union_49040| g1@@7 g0@@7)) u_1_1@@0 v_1_1@@0))
))))
 :qid |stdinbpl.1120:15|
 :skolemid |139|
 :pattern ( (state Heap@@19 Mask@@26) (|apply_TCFraming'| Heap@@19 g0@@7 g1@@7))
)))
(assert (forall ((EG_1@@7 (Array T@EdgeDomainType Bool)) (nu T@Ref) (n T@Ref) (mu T@Ref) (sigma T@Ref) ) (!  (=> (and (not (= nu n)) (and (not (= n sigma)) (and (not (= nu mu)) (and (edge EG_1@@7 nu sigma) (edge EG_1@@7 mu sigma))))) (not (DEP_ EG_1@@7 nu n mu sigma)))
 :qid |stdinbpl.873:15|
 :skolemid |109|
 :pattern ( (DEP EG_1@@7 nu n mu sigma))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_73948) (SummandMask1 T@PolymorphicMapType_73948) (SummandMask2 T@PolymorphicMapType_73948) (o_2@@19 T@Ref) (f_4@@19 T@Field_48849_250666) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_73948) (SummandMask1@@0 T@PolymorphicMapType_73948) (SummandMask2@@0 T@PolymorphicMapType_73948) (o_2@@20 T@Ref) (f_4@@20 T@Field_48849_250533) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_73948) (SummandMask1@@1 T@PolymorphicMapType_73948) (SummandMask2@@1 T@PolymorphicMapType_73948) (o_2@@21 T@Ref) (f_4@@21 T@Field_73987_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_73948) (SummandMask1@@2 T@PolymorphicMapType_73948) (SummandMask2@@2 T@PolymorphicMapType_73948) (o_2@@22 T@Ref) (f_4@@22 T@Field_83161_6878) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_73948) (SummandMask1@@3 T@PolymorphicMapType_73948) (SummandMask2@@3 T@PolymorphicMapType_73948) (o_2@@23 T@Ref) (f_4@@23 T@Field_74000_74001) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (o@@2 T@Ref) ) (! (= (select (|Set#Intersection_49043| a@@6 b@@5) o@@2)  (and (select a@@6 o@@2) (select b@@5 o@@2)))
 :qid |stdinbpl.508:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_49043| a@@6 b@@5) o@@2))
 :pattern ( (|Set#Intersection_49043| a@@6 b@@5) (select a@@6 o@@2))
 :pattern ( (|Set#Intersection_49043| a@@6 b@@5) (select b@@5 o@@2))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (o@@3 T@Ref) ) (! (= (select (|Set#Difference_49046| a@@7 b@@6) o@@3)  (and (select a@@7 o@@3) (not (select b@@6 o@@3))))
 :qid |stdinbpl.523:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_49046| a@@7 b@@6) o@@3))
 :pattern ( (|Set#Difference_49046| a@@7 b@@6) (select a@@7 o@@3))
)))
(assert (forall ((a@@8 (Array T@EdgeDomainType Bool)) (b@@7 (Array T@EdgeDomainType Bool)) ) (!  (=> (|Set#Equal_48858| a@@8 b@@7) (= a@@8 b@@7))
 :qid |stdinbpl.545:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_48858| a@@8 b@@7))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_49043| a@@9 b@@8) (= a@@9 b@@8))
 :qid |stdinbpl.545:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_49043| a@@9 b@@8))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (x@@2 T@Ref) (y@@2 T@Ref) ) (!  (=> (select a@@10 y@@2) (select (|Set#UnionOne_49046| a@@10 x@@2) y@@2))
 :qid |stdinbpl.488:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_49046| a@@10 x@@2) (select a@@10 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@3 T@Ref) ) (!  (=> (select a@@11 y@@3) (select (|Set#Union_49040| a@@11 b@@9) y@@3))
 :qid |stdinbpl.498:18|
 :skolemid |35|
 :pattern ( (|Set#Union_49040| a@@11 b@@9) (select a@@11 y@@3))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) (y@@4 T@Ref) ) (!  (=> (select b@@10 y@@4) (select (|Set#Union_49040| a@@12 b@@10) y@@4))
 :qid |stdinbpl.500:18|
 :skolemid |36|
 :pattern ( (|Set#Union_49040| a@@12 b@@10) (select b@@10 y@@4))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@3 T@Ref) (o@@4 T@Ref) ) (! (= (select (|Set#UnionOne_49046| a@@13 x@@3) o@@4)  (or (= o@@4 x@@3) (select a@@13 o@@4)))
 :qid |stdinbpl.484:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_49046| a@@13 x@@3) o@@4))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) (y@@5 T@Ref) ) (!  (=> (select b@@11 y@@5) (not (select (|Set#Difference_49046| a@@14 b@@11) y@@5)))
 :qid |stdinbpl.525:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_49046| a@@14 b@@11) (select b@@11 y@@5))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_49046| (|Set#Difference_49046| a@@15 b@@12)) (|Set#Card_49046| (|Set#Difference_49046| b@@12 a@@15))) (|Set#Card_49046| (|Set#Intersection_49043| a@@15 b@@12))) (|Set#Card_49046| (|Set#Union_49040| a@@15 b@@12))) (= (|Set#Card_49046| (|Set#Difference_49046| a@@15 b@@12)) (- (|Set#Card_49046| a@@15) (|Set#Card_49046| (|Set#Intersection_49043| a@@15 b@@12)))))
 :qid |stdinbpl.527:18|
 :skolemid |45|
 :pattern ( (|Set#Card_49046| (|Set#Difference_49046| a@@15 b@@12)))
)))
(assert (forall ((EG_1@@8 (Array T@EdgeDomainType Bool)) (x@@4 T@Ref) (y@@6 T@Ref) (v_2@@6 T@Ref) ) (!  (=> (and (exists_path_ EG_1@@8 x@@4 y@@6) (and (edge EG_1@@8 x@@4 v_2@@6) (exists_path_ EG_1@@8 v_2@@6 y@@6))) (DEP_ EG_1@@8 x@@4 y@@6 x@@4 v_2@@6))
 :qid |stdinbpl.837:15|
 :skolemid |103|
 :pattern ( (DEP EG_1@@8 x@@4 y@@6 x@@4 v_2@@6))
 :pattern ( (exists_path_ EG_1@@8 x@@4 y@@6) (exists_path EG_1@@8 v_2@@6 y@@6))
 :pattern ( (edge EG_1@@8 x@@4 v_2@@6) (exists_path_ EG_1@@8 v_2@@6 y@@6))
)))
(assert (forall ((EG_1@@9 (Array T@EdgeDomainType Bool)) (x@@5 T@Ref) (y@@7 T@Ref) (u_1@@4 T@Ref) ) (!  (=> (and (exists_path_ EG_1@@9 x@@5 y@@7) (and (exists_path_ EG_1@@9 x@@5 u_1@@4) (edge EG_1@@9 u_1@@4 y@@7))) (DEP_ EG_1@@9 x@@5 y@@7 u_1@@4 y@@7))
 :qid |stdinbpl.843:15|
 :skolemid |104|
 :pattern ( (DEP EG_1@@9 x@@5 y@@7 u_1@@4 y@@7))
 :pattern ( (exists_path_ EG_1@@9 x@@5 y@@7) (exists_path EG_1@@9 x@@5 u_1@@4))
 :pattern ( (edge EG_1@@9 u_1@@4 y@@7) (exists_path_ EG_1@@9 x@@5 u_1@@4))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_49046| s))
 :qid |stdinbpl.470:18|
 :skolemid |22|
 :pattern ( (|Set#Card_49046| s))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_73927) (Mask@@27 T@PolymorphicMapType_73948) (refs@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@20 Mask@@27) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (FrameFragment_7031 (|$$#condqp1| Heap@@20 refs@@2)) refs@@2))) (forall ((p_1_1 T@Ref) (s_1_1 T@Ref) ) (!  (=> (and (select refs@@2 p_1_1) (exists_path (|$$'| Heap@@20 refs@@2) p_1_1 s_1_1)) (select refs@@2 s_1_1))
 :qid |stdinbpl.945:122|
 :skolemid |116|
 :pattern ( (select refs@@2 p_1_1) (select refs@@2 s_1_1) (exists_path (|$$'| Heap@@20 refs@@2) p_1_1 s_1_1))
)))
 :qid |stdinbpl.943:15|
 :skolemid |117|
 :pattern ( (state Heap@@20 Mask@@27) (|$$'| Heap@@20 refs@@2))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_73927) (Mask@@28 T@PolymorphicMapType_73948) (refs@@3 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@21 Mask@@28) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (FrameFragment_7031 (|$$#condqp1| Heap@@21 refs@@3)) refs@@3))) (forall ((p_2_1 T@Ref) (s_2_1 T@Ref) ) (!  (=> (and (select refs@@3 s_2_1) (exists_path (|$$'| Heap@@21 refs@@3) p_2_1 s_2_1)) (select refs@@3 p_2_1))
 :qid |stdinbpl.952:122|
 :skolemid |118|
 :pattern ( (select refs@@3 p_2_1) (select refs@@3 s_2_1) (exists_path (|$$'| Heap@@21 refs@@3) p_2_1 s_2_1))
)))
 :qid |stdinbpl.950:15|
 :skolemid |119|
 :pattern ( (state Heap@@21 Mask@@28) (|$$'| Heap@@21 refs@@3))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (x@@6 T@Ref) ) (! (select (|Set#UnionOne_49046| a@@16 x@@6) x@@6)
 :qid |stdinbpl.486:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_49046| a@@16 x@@6))
)))
(assert (forall ((EG_1@@10 (Array T@EdgeDomainType Bool)) ) (! (= (acyclic_graph EG_1@@10) (forall ((v1@@1 T@Ref) (v2@@1 T@Ref) ) (!  (or (not (edge EG_1@@10 v1@@1 v2@@1)) (not (exists_path EG_1@@10 v2@@1 v1@@1)))
 :qid |stdinbpl.787:42|
 :skolemid |95|
 :pattern ( (edge EG_1@@10 v1@@1 v2@@1))
 :pattern ( (exists_path EG_1@@10 v2@@1 v1@@1))
)))
 :qid |stdinbpl.785:15|
 :skolemid |96|
 :pattern ( (acyclic_graph EG_1@@10))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (x@@7 T@Ref) ) (!  (=> (select a@@17 x@@7) (= (|Set#Card_49046| (|Set#UnionOne_49046| a@@17 x@@7)) (|Set#Card_49046| a@@17)))
 :qid |stdinbpl.490:18|
 :skolemid |32|
 :pattern ( (|Set#Card_49046| (|Set#UnionOne_49046| a@@17 x@@7)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_49046| (|Set#Singleton_49733| r@@0)) 1)
 :qid |stdinbpl.481:18|
 :skolemid |28|
 :pattern ( (|Set#Card_49046| (|Set#Singleton_49733| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_49733| r@@1) r@@1)
 :qid |stdinbpl.479:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_49733| r@@1))
)))
(assert (forall ((EG_1@@11 (Array T@EdgeDomainType Bool)) (p_1 T@Ref) (s_1 T@Ref) ) (! (= (edge_ EG_1@@11 p_1 s_1) (select EG_1@@11 (create_edge p_1 s_1)))
 :qid |stdinbpl.734:15|
 :skolemid |85|
 :pattern ( (select EG_1@@11 (create_edge p_1 s_1)))
 :pattern ( (edge EG_1@@11 p_1 s_1))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) ) (! (= (|Set#Union_49040| a@@18 (|Set#Union_49040| a@@18 b@@13)) (|Set#Union_49040| a@@18 b@@13))
 :qid |stdinbpl.513:18|
 :skolemid |39|
 :pattern ( (|Set#Union_49040| a@@18 (|Set#Union_49040| a@@18 b@@13)))
)))
(assert (forall ((a@@19 (Array T@Ref Bool)) (b@@14 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_49043| a@@19 (|Set#Intersection_49043| a@@19 b@@14)) (|Set#Intersection_49043| a@@19 b@@14))
 :qid |stdinbpl.517:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_49043| a@@19 (|Set#Intersection_49043| a@@19 b@@14)))
)))
(assert (forall ((o@@5 T@Ref) ) (!  (not (select |Set#Empty_49046| o@@5))
 :qid |stdinbpl.473:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_49046| o@@5))
)))
(assert (forall ((p_1@@0 T@Ref) (s_1@@0 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@0 s_1@@0)) p_1@@0) (= (edge_succ (create_edge p_1@@0 s_1@@0)) s_1@@0))
 :qid |stdinbpl.673:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@0 s_1@@0))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_73927) (o_34 T@Ref) (f_49 T@Field_48849_250533) (v T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_73927 (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@22) (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@22) (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@22) (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@22) (store (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@22) o_34 f_49 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_73927 (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@22) (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@22) (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@22) (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@22) (store (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@22) o_34 f_49 v)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_73927) (o_34@@0 T@Ref) (f_49@@0 T@Field_48849_250666) (v@@0 T@PolymorphicMapType_74476) ) (! (succHeap Heap@@23 (PolymorphicMapType_73927 (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@23) (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@23) (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@23) (store (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@23) o_34@@0 f_49@@0 v@@0) (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_73927 (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@23) (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@23) (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@23) (store (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@23) o_34@@0 f_49@@0 v@@0) (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_73927) (o_34@@1 T@Ref) (f_49@@1 T@Field_83161_6878) (v@@1 Int) ) (! (succHeap Heap@@24 (PolymorphicMapType_73927 (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@24) (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@24) (store (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@24) o_34@@1 f_49@@1 v@@1) (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@24) (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_73927 (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@24) (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@24) (store (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@24) o_34@@1 f_49@@1 v@@1) (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@24) (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_73927) (o_34@@2 T@Ref) (f_49@@2 T@Field_74000_74001) (v@@2 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_73927 (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@25) (store (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@25) o_34@@2 f_49@@2 v@@2) (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@25) (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@25) (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_73927 (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@25) (store (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@25) o_34@@2 f_49@@2 v@@2) (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@25) (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@25) (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_73927) (o_34@@3 T@Ref) (f_49@@3 T@Field_73987_53) (v@@3 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_73927 (store (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@26) o_34@@3 f_49@@3 v@@3) (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@26) (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@26) (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@26) (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_73927 (store (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@26) o_34@@3 f_49@@3 v@@3) (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@26) (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@26) (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@26) (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@26)))
)))
(assert (forall ((a@@20 Int) (b@@15 Int) ) (! (= (<= a@@20 b@@15) (= (|Math#min| a@@20 b@@15) a@@20))
 :qid |stdinbpl.557:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@20 b@@15))
)))
(assert (forall ((a@@21 Int) (b@@16 Int) ) (! (= (<= b@@16 a@@21) (= (|Math#min| a@@21 b@@16) b@@16))
 :qid |stdinbpl.558:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@21 b@@16))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_49046| s@@0) 0) (= s@@0 |Set#Empty_49046|)) (=> (not (= (|Set#Card_49046| s@@0) 0)) (exists ((x@@8 T@Ref) ) (! (select s@@0 x@@8)
 :qid |stdinbpl.476:33|
 :skolemid |24|
))))
 :qid |stdinbpl.474:18|
 :skolemid |25|
 :pattern ( (|Set#Card_49046| s@@0))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_73927) (Mask@@29 T@PolymorphicMapType_73948) (refs@@4 (Array T@Ref Bool)) ) (!  (=> (state Heap@@27 Mask@@29) (= (|$$'| Heap@@27 refs@@4) (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@27 refs@@4)) refs@@4)))
 :qid |stdinbpl.920:15|
 :skolemid |112|
 :pattern ( (state Heap@@27 Mask@@29) (|$$'| Heap@@27 refs@@4))
)))
(assert (forall ((a@@22 (Array T@Ref Bool)) (x@@9 T@Ref) ) (!  (=> (not (select a@@22 x@@9)) (= (|Set#Card_49046| (|Set#UnionOne_49046| a@@22 x@@9)) (+ (|Set#Card_49046| a@@22) 1)))
 :qid |stdinbpl.492:18|
 :skolemid |33|
 :pattern ( (|Set#Card_49046| (|Set#UnionOne_49046| a@@22 x@@9)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_73927) (Mask@@30 T@PolymorphicMapType_73948) (g0@@8 (Array T@Ref Bool)) (g1@@8 (Array T@Ref Bool)) ) (!  (=> (state Heap@@28 Mask@@30) (= (|apply_TCFraming'| Heap@@28 g0@@8 g1@@8) (|apply_TCFraming#frame| (CombineFrames (FrameFragment_7031 (|apply_TCFraming#condqp2| Heap@@28 g0@@8 g1@@8)) (FrameFragment_7031 (|apply_TCFraming#condqp3| Heap@@28 g0@@8 g1@@8))) g0@@8 g1@@8)))
 :qid |stdinbpl.1083:15|
 :skolemid |132|
 :pattern ( (state Heap@@28 Mask@@30) (|apply_TCFraming'| Heap@@28 g0@@8 g1@@8))
)))
(assert (forall ((o_34@@4 T@Ref) (f_47 T@Field_74000_74001) (Heap@@29 T@PolymorphicMapType_73927) ) (!  (=> (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@29) o_34@@4 $allocated) (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@29) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@29) o_34@@4 f_47) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@29) o_34@@4 f_47))
)))
(assert (forall ((p@@1 T@Field_48849_250533) (v_1@@0 T@FrameType) (q T@Field_48849_250533) (w@@0 T@FrameType) (r@@2 T@Field_48849_250533) (u T@FrameType) ) (!  (=> (and (InsidePredicate_73987_73987 p@@1 v_1@@0 q w@@0) (InsidePredicate_73987_73987 q w@@0 r@@2 u)) (InsidePredicate_73987_73987 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.452:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_73987_73987 p@@1 v_1@@0 q w@@0) (InsidePredicate_73987_73987 q w@@0 r@@2 u))
)))
(assert (forall ((EG_1@@12 (Array T@EdgeDomainType Bool)) (x@@10 T@Ref) (y@@8 T@Ref) (n@@0 T@Ref) ) (!  (=> (not (= n@@0 y@@8)) (not (DEP_ EG_1@@12 y@@8 n@@0 x@@10 y@@8)))
 :qid |stdinbpl.861:15|
 :skolemid |107|
 :pattern ( (DEP EG_1@@12 y@@8 n@@0 x@@10 y@@8))
)))
(assert (forall ((EG_1@@13 (Array T@EdgeDomainType Bool)) (x@@11 T@Ref) (y@@9 T@Ref) (n@@1 T@Ref) ) (!  (=> (not (= n@@1 x@@11)) (not (DEP_ EG_1@@13 n@@1 x@@11 x@@11 y@@9)))
 :qid |stdinbpl.867:15|
 :skolemid |108|
 :pattern ( (DEP EG_1@@13 n@@1 x@@11 x@@11 y@@9))
)))
(assert (forall ((a@@23 Int) ) (!  (=> (< a@@23 0) (= (|Math#clip| a@@23) 0))
 :qid |stdinbpl.563:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@23))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_73927) (Mask@@31 T@PolymorphicMapType_73948) (refs@@5 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@30 Mask@@31) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (FrameFragment_7031 (|$$#condqp1| Heap@@30 refs@@5)) refs@@5))) (forall ((p_1@@1 T@Ref) (s_1@@1 T@Ref) ) (! (=  (and (select refs@@5 p_1@@1) (and (select refs@@5 s_1@@1) (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@30) p_1@@1 next) s_1@@1) (not (= p_1@@1 s_1@@1))))) (select (|$$'| Heap@@30 refs@@5) (create_edge p_1@@1 s_1@@1)))
 :qid |stdinbpl.938:122|
 :skolemid |114|
 :pattern ( (create_edge p_1@@1 s_1@@1))
)))
 :qid |stdinbpl.936:15|
 :skolemid |115|
 :pattern ( (state Heap@@30 Mask@@31) (|$$'| Heap@@30 refs@@5))
)))
(assert (forall ((EG_1@@14 (Array T@EdgeDomainType Bool)) (pred_3 T@Ref) (succ T@Ref) ) (! (= (select (succs EG_1@@14 pred_3) succ) (edge_ EG_1@@14 pred_3 succ))
 :qid |stdinbpl.722:15|
 :skolemid |83|
 :pattern ( (select (succs EG_1@@14 pred_3) succ))
)))
(assert (forall ((EG_1@@15 (Array T@EdgeDomainType Bool)) (x@@12 T@Ref) (v_2@@7 T@Ref) ) (! (= (select (inst_uReach EG_1@@15 x@@12) v_2@@7) (exists_path EG_1@@15 x@@12 v_2@@7))
 :qid |stdinbpl.752:15|
 :skolemid |89|
 :pattern ( (select (inst_uReach EG_1@@15 x@@12) v_2@@7))
 :pattern ( (exists_path EG_1@@15 x@@12 v_2@@7))
)))
(assert (forall ((EG_1@@16 (Array T@EdgeDomainType Bool)) (u_1@@5 T@Ref) (y@@10 T@Ref) ) (! (= (select (inst_uReach_rev EG_1@@16 y@@10) u_1@@5) (exists_path EG_1@@16 u_1@@5 y@@10))
 :qid |stdinbpl.758:15|
 :skolemid |90|
 :pattern ( (select (inst_uReach_rev EG_1@@16 y@@10) u_1@@5))
 :pattern ( (exists_path EG_1@@16 u_1@@5 y@@10))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@24 (Array T@Ref Bool)) (b@@17 (Array T@Ref Bool)) (o@@6 T@Ref) ) (! (= (select (|Set#Union_49040| a@@24 b@@17) o@@6)  (or (select a@@24 o@@6) (select b@@17 o@@6)))
 :qid |stdinbpl.496:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_49040| a@@24 b@@17) o@@6))
)))
(assert (forall ((EG_1@@17 (Array T@EdgeDomainType Bool)) (x@@13 T@Ref) (y@@11 T@Ref) (u_1@@6 T@Ref) (v_2@@8 T@Ref) ) (!  (=> (DEP EG_1@@17 x@@13 y@@11 u_1@@6 v_2@@8) (and (exists_path EG_1@@17 x@@13 y@@11) (edge EG_1@@17 u_1@@6 v_2@@8)))
 :qid |stdinbpl.855:15|
 :skolemid |106|
 :pattern ( (DEP EG_1@@17 x@@13 y@@11 u_1@@6 v_2@@8))
)))
(assert (forall ((EG_1@@18 (Array T@EdgeDomainType Bool)) (p_1@@2 T@Ref) (s_1@@2 T@Ref) ) (! (= (edge EG_1@@18 p_1@@2 s_1@@2) (edge_ EG_1@@18 p_1@@2 s_1@@2))
 :qid |stdinbpl.728:15|
 :skolemid |84|
 :pattern ( (edge EG_1@@18 p_1@@2 s_1@@2))
)))
(assert (forall ((EG_1@@19 (Array T@EdgeDomainType Bool)) (start_1@@0 T@Ref) (end_1@@0 T@Ref) ) (! (= (exists_path EG_1@@19 start_1@@0 end_1@@0) (exists_path_ EG_1@@19 start_1@@0 end_1@@0))
 :qid |stdinbpl.764:15|
 :skolemid |91|
 :pattern ( (exists_path EG_1@@19 start_1@@0 end_1@@0))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_73927) (g0@@9 (Array T@Ref Bool)) (g1@@9 (Array T@Ref Bool)) ) (!  (and (= (apply_TCFraming Heap@@31 g0@@9 g1@@9) (|apply_TCFraming'| Heap@@31 g0@@9 g1@@9)) (dummyFunction_9333 (|apply_TCFraming#triggerStateless| g0@@9 g1@@9)))
 :qid |stdinbpl.1072:15|
 :skolemid |130|
 :pattern ( (apply_TCFraming Heap@@31 g0@@9 g1@@9))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_73927)
(declare-fun QPMask@31 () T@PolymorphicMapType_73948)
(declare-fun new_g () (Array T@Ref Bool))
(declare-fun dummyFunction_48850 (T@Ref) Bool)
(declare-fun neverTriggered57 (T@Ref) Bool)
(declare-fun QPMask@29 () T@PolymorphicMapType_73948)
(declare-fun QPMask@30 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered56 (T@Ref) Bool)
(declare-fun n_73 () T@Ref)
(declare-fun m_9 () T@Ref)
(declare-fun new_start () T@Ref)
(declare-fun n_72 () T@Ref)
(declare-fun n_71 () T@Ref)
(declare-fun qpRange55 (T@Ref) Bool)
(declare-fun invRecv55 (T@Ref) T@Ref)
(declare-fun QPMask@28 () T@PolymorphicMapType_73948)
(declare-fun g_1 () (Array T@Ref Bool))
(declare-fun new_node () T@Ref)
(declare-fun x@@14 () Int)
(declare-fun v$2_2 () T@Ref)
(declare-fun v1$0 () T@Ref)
(declare-fun v$1_2 () T@Ref)
(declare-fun v2$0 () T@Ref)
(declare-fun n$2_17 () T@Ref)
(declare-fun qpRange54 (T@Ref) Bool)
(declare-fun invRecv54 (T@Ref) T@Ref)
(declare-fun n_76 () T@Ref)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_73927)
(declare-fun start_1@@1 () T@Ref)
(declare-fun QPMask@25 () T@PolymorphicMapType_73948)
(declare-fun n_75 () T@Ref)
(declare-fun qpRange65 (T@Ref) Bool)
(declare-fun invRecv65 (T@Ref) T@Ref)
(declare-fun QPMask@24 () T@PolymorphicMapType_73948)
(declare-fun QPMask@27 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered64 (T@Ref) Bool)
(declare-fun QPMask@26 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered63 (T@Ref) Bool)
(declare-fun n_74 () T@Ref)
(declare-fun m_10 () T@Ref)
(declare-fun node@0 () T@Ref)
(declare-fun v$4_1 () T@Ref)
(declare-fun v1$1_1 () T@Ref)
(declare-fun v$3_1 () T@Ref)
(declare-fun v2$1_1 () T@Ref)
(declare-fun n$4_12 () T@Ref)
(declare-fun qpRange62 (T@Ref) Bool)
(declare-fun invRecv62 (T@Ref) T@Ref)
(declare-fun QPMask@3 () T@PolymorphicMapType_73948)
(declare-fun n_49_1 () T@Ref)
(declare-fun n_47 () T@Ref)
(declare-fun neverTriggered69 (T@Ref) Bool)
(declare-fun QPMask@23 () T@PolymorphicMapType_73948)
(declare-fun QPMask@22 () T@PolymorphicMapType_73948)
(declare-fun qpRange69 (T@Ref) Bool)
(declare-fun invRecv69 (T@Ref) T@Ref)
(declare-fun n_44 () T@Ref)
(declare-fun m_11 () T@Ref)
(declare-fun node@1 () T@Ref)
(declare-fun v$4_5 () T@Ref)
(declare-fun v1$1_5 () T@Ref)
(declare-fun v$3_5 () T@Ref)
(declare-fun v2$1_5 () T@Ref)
(declare-fun n$4_5_1 () T@Ref)
(declare-fun QPMask@5 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered68 (T@Ref) Bool)
(declare-fun qpRange68 (T@Ref) Bool)
(declare-fun invRecv68 (T@Ref) T@Ref)
(declare-fun QPMask@4 () T@PolymorphicMapType_73948)
(declare-fun qpRange66 (T@Ref) Bool)
(declare-fun invRecv66 (T@Ref) T@Ref)
(declare-fun qpRange67 (T@Ref) Bool)
(declare-fun invRecv67 (T@Ref) T@Ref)
(declare-fun new_g@0 () (Array T@Ref Bool))
(declare-fun n$0_8 () T@Ref)
(declare-fun n$0_12_1 () T@Ref)
(declare-fun ExhaleHeap@3 () T@PolymorphicMapType_73927)
(declare-fun n_23 () T@Ref)
(declare-fun m_4_1 () T@Ref)
(declare-fun ExhaleHeap@5 () T@PolymorphicMapType_73927)
(declare-fun new_start@0 () T@Ref)
(declare-fun n_21 () T@Ref)
(declare-fun n_19 () T@Ref)
(declare-fun neverTriggered59 (T@Ref) Bool)
(declare-fun QPMask@19 () T@PolymorphicMapType_73948)
(declare-fun QPMask@18 () T@PolymorphicMapType_73948)
(declare-fun qpRange59 (T@Ref) Bool)
(declare-fun invRecv59 (T@Ref) T@Ref)
(declare-fun new_node@0 () T@Ref)
(declare-fun v$2_2_1 () T@Ref)
(declare-fun v1$0_2 () T@Ref)
(declare-fun v$1_2_1 () T@Ref)
(declare-fun v2$0_2 () T@Ref)
(declare-fun n$2_2 () T@Ref)
(declare-fun QPMask@17 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered58 (T@Ref) Bool)
(declare-fun qpRange58 (T@Ref) Bool)
(declare-fun invRecv58 (T@Ref) T@Ref)
(declare-fun n_70_1 () T@Ref)
(declare-fun m_15 () T@Ref)
(declare-fun QPMask@21 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered83 (T@Ref) Bool)
(declare-fun QPMask@20 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered82 (T@Ref) Bool)
(declare-fun n_77 () T@Ref)
(declare-fun m_12 () T@Ref)
(declare-fun Heap@1 () T@PolymorphicMapType_73927)
(declare-fun QPMask@16 () T@PolymorphicMapType_73948)
(declare-fun Mask@11 () T@PolymorphicMapType_73948)
(declare-fun qpRange81 (T@Ref) Bool)
(declare-fun invRecv81 (T@Ref) T@Ref)
(declare-fun n$0_14_1 () T@Ref)
(declare-fun Mask@10 () T@PolymorphicMapType_73948)
(declare-fun Mask@9 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered80 (T@Ref) Bool)
(declare-fun qpRange80 (T@Ref) Bool)
(declare-fun invRecv80 (T@Ref) T@Ref)
(declare-fun ExhaleHeap@4 () T@PolymorphicMapType_73927)
(declare-fun QPMask@15 () T@PolymorphicMapType_73948)
(declare-fun QPMask@14 () T@PolymorphicMapType_73948)
(declare-fun Mask@8 () T@PolymorphicMapType_73948)
(declare-fun qpRange79 (T@Ref) Bool)
(declare-fun invRecv79 (T@Ref) T@Ref)
(declare-fun Mask@7 () T@PolymorphicMapType_73948)
(declare-fun QPMask@13 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered78 (T@Ref) Bool)
(declare-fun qpRange78 (T@Ref) Bool)
(declare-fun invRecv78 (T@Ref) T@Ref)
(declare-fun arg_to@0 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_73927)
(declare-fun QPMask@12 () T@PolymorphicMapType_73948)
(declare-fun Mask@6 () T@PolymorphicMapType_73948)
(declare-fun qpRange77 (T@Ref) Bool)
(declare-fun invRecv77 (T@Ref) T@Ref)
(declare-fun n$0_10_1 () T@Ref)
(declare-fun Mask@5 () T@PolymorphicMapType_73948)
(declare-fun Mask@4 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered76 (T@Ref) Bool)
(declare-fun qpRange76 (T@Ref) Bool)
(declare-fun invRecv76 (T@Ref) T@Ref)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_73927)
(declare-fun QPMask@11 () T@PolymorphicMapType_73948)
(declare-fun QPMask@10 () T@PolymorphicMapType_73948)
(declare-fun Mask@3 () T@PolymorphicMapType_73948)
(declare-fun qpRange75 (T@Ref) Bool)
(declare-fun invRecv75 (T@Ref) T@Ref)
(declare-fun Mask@2 () T@PolymorphicMapType_73948)
(declare-fun QPMask@7 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered74 (T@Ref) Bool)
(declare-fun qpRange74 (T@Ref) Bool)
(declare-fun invRecv74 (T@Ref) T@Ref)
(declare-fun QPMask@8 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered72 (T@Ref) Bool)
(declare-fun qpRange72 (T@Ref) Bool)
(declare-fun invRecv72 (T@Ref) T@Ref)
(declare-fun QPMask@9 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered73 (T@Ref) Bool)
(declare-fun qpRange73 (T@Ref) Bool)
(declare-fun invRecv73 (T@Ref) T@Ref)
(declare-fun QPMask@6 () T@PolymorphicMapType_73948)
(declare-fun qpRange70 (T@Ref) Bool)
(declare-fun invRecv70 (T@Ref) T@Ref)
(declare-fun qpRange71 (T@Ref) Bool)
(declare-fun invRecv71 (T@Ref) T@Ref)
(declare-fun Heap@@32 () T@PolymorphicMapType_73927)
(declare-fun n_30 () T@Ref)
(declare-fun n_28 () T@Ref)
(declare-fun neverTriggered61 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_73948)
(declare-fun qpRange61 (T@Ref) Bool)
(declare-fun invRecv61 (T@Ref) T@Ref)
(declare-fun n_25 () T@Ref)
(declare-fun m_6_1 () T@Ref)
(declare-fun v$4 () T@Ref)
(declare-fun v1$1 () T@Ref)
(declare-fun v$3 () T@Ref)
(declare-fun v2$1 () T@Ref)
(declare-fun n$4_10 () T@Ref)
(declare-fun node () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_73948)
(declare-fun QPMask@1 () T@PolymorphicMapType_73948)
(declare-fun Mask@1 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered60 (T@Ref) Bool)
(declare-fun qpRange60 (T@Ref) Bool)
(declare-fun invRecv60 (T@Ref) T@Ref)
(declare-fun n_55 () T@Ref)
(declare-fun n_70 () T@Ref)
(declare-fun qpRange53 (T@Ref) Bool)
(declare-fun invRecv53 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_73948)
(declare-fun QPMask@33 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered52 (T@Ref) Bool)
(declare-fun QPMask@32 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered51 (T@Ref) Bool)
(declare-fun n_69 () T@Ref)
(declare-fun m_8 () T@Ref)
(declare-fun v$0_2 () T@Ref)
(declare-fun v1_20 () T@Ref)
(declare-fun v_33 () T@Ref)
(declare-fun v2_20 () T@Ref)
(declare-fun n$0_34 () T@Ref)
(declare-fun qpRange50 (T@Ref) Bool)
(declare-fun invRecv50 (T@Ref) T@Ref)
(set-info :boogie-vc-id ringInsert)
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
 (=> (= (ControlFlow 0 0) 472) (let ((anon314_Then_correct  (and (=> (= (ControlFlow 0 445) (- 0 447)) (forall ((n$0_5 T@Ref) ) (!  (=> (and (select new_g n$0_5) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4765:27|
 :skolemid |512|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@31) n$0_5 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5 next))
))) (=> (forall ((n$0_5@@0 T@Ref) ) (!  (=> (and (select new_g n$0_5@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4765:27|
 :skolemid |512|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@31) n$0_5@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5@@0 next))
)) (and (=> (= (ControlFlow 0 445) (- 0 446)) (forall ((n$0_5@@1 T@Ref) (n$0_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_5@@1 n$0_5_1)) (select new_g n$0_5@@1)) (select new_g n$0_5_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_5@@1 n$0_5_1)))
 :qid |stdinbpl.4772:27|
 :skolemid |513|
 :pattern ( (neverTriggered57 n$0_5@@1) (neverTriggered57 n$0_5_1))
))) (=> (forall ((n$0_5@@2 T@Ref) (n$0_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_5@@2 n$0_5_1@@0)) (select new_g n$0_5@@2)) (select new_g n$0_5_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_5@@2 n$0_5_1@@0)))
 :qid |stdinbpl.4772:27|
 :skolemid |513|
 :pattern ( (neverTriggered57 n$0_5@@2) (neverTriggered57 n$0_5_1@@0))
)) (=> (= (ControlFlow 0 445) (- 0 444)) (forall ((n$0_5@@3 T@Ref) ) (!  (=> (select new_g n$0_5@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@29) n$0_5@@3 next) NoPerm)))
 :qid |stdinbpl.4779:27|
 :skolemid |514|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@31) n$0_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5@@3 next))
)))))))))
(let ((anon312_Then_correct  (and (=> (= (ControlFlow 0 440) (- 0 442)) (forall ((n$0_4 T@Ref) ) (!  (=> (and (select new_g n$0_4) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4721:25|
 :skolemid |507|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@30) n$0_4 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4 next))
))) (=> (forall ((n$0_4@@0 T@Ref) ) (!  (=> (and (select new_g n$0_4@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4721:25|
 :skolemid |507|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@30) n$0_4@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4@@0 next))
)) (and (=> (= (ControlFlow 0 440) (- 0 441)) (forall ((n$0_4@@1 T@Ref) (n$0_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_4@@1 n$0_4_1)) (select new_g n$0_4@@1)) (select new_g n$0_4_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_4@@1 n$0_4_1)))
 :qid |stdinbpl.4728:25|
 :skolemid |508|
 :pattern ( (neverTriggered56 n$0_4@@1) (neverTriggered56 n$0_4_1))
))) (=> (forall ((n$0_4@@2 T@Ref) (n$0_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_4@@2 n$0_4_1@@0)) (select new_g n$0_4@@2)) (select new_g n$0_4_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_4@@2 n$0_4_1@@0)))
 :qid |stdinbpl.4728:25|
 :skolemid |508|
 :pattern ( (neverTriggered56 n$0_4@@2) (neverTriggered56 n$0_4_1@@0))
)) (=> (= (ControlFlow 0 440) (- 0 439)) (forall ((n$0_4@@3 T@Ref) ) (!  (=> (select new_g n$0_4@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@29) n$0_4@@3 next) NoPerm)))
 :qid |stdinbpl.4735:25|
 :skolemid |509|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@30) n$0_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4@@3 next))
)))))))))
(let ((anon74_correct true))
(let ((anon313_Then_correct  (=> (exists_path ($$ PostHeap@0 new_g) n_73 m_9) (and (=> (= (ControlFlow 0 448) 445) anon314_Then_correct) (=> (= (ControlFlow 0 448) 437) anon74_correct)))))
(let ((anon313_Else_correct  (=> (and (not (exists_path ($$ PostHeap@0 new_g) n_73 m_9)) (= (ControlFlow 0 443) 437)) anon74_correct)))
(let ((anon311_Then_correct  (=> (and (select new_g n_73) (select new_g m_9)) (and (and (=> (= (ControlFlow 0 449) 440) anon312_Then_correct) (=> (= (ControlFlow 0 449) 448) anon313_Then_correct)) (=> (= (ControlFlow 0 449) 443) anon313_Else_correct)))))
(let ((anon311_Else_correct  (=> (and (not (and (select new_g n_73) (select new_g m_9))) (= (ControlFlow 0 438) 437)) anon74_correct)))
(let ((anon310_Else_correct true))
(let ((anon307_Else_correct  (=> (forall ((n_15 T@Ref) ) (!  (=> (and (select new_g n_15) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_15 next) new_start)) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| PostHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_15 next) val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| PostHeap@0) n_15 val)))
 :qid |stdinbpl.4703:20|
 :skolemid |506|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| PostHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_15 next) val))
)) (=> (and (state PostHeap@0 QPMask@29) (state PostHeap@0 QPMask@29)) (and (and (=> (= (ControlFlow 0 450) 436) anon310_Else_correct) (=> (= (ControlFlow 0 450) 449) anon311_Then_correct)) (=> (= (ControlFlow 0 450) 438) anon311_Else_correct))))))
(let ((anon66_correct true))
(let ((anon309_Else_correct  (=> (and (not (and (select new_g n_72) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_72 next) new_start))) (= (ControlFlow 0 432) 427)) anon66_correct)))
(let ((anon309_Then_correct  (=> (and (select new_g n_72) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_72 next) new_start)) (and (=> (= (ControlFlow 0 428) (- 0 431)) (HasDirectPerm_48849_48850 QPMask@29 n_72 next)) (=> (HasDirectPerm_48849_48850 QPMask@29 n_72 next) (and (=> (= (ControlFlow 0 428) (- 0 430)) (HasDirectPerm_48852_6878 QPMask@29 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_72 next) val)) (=> (HasDirectPerm_48852_6878 QPMask@29 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_72 next) val) (and (=> (= (ControlFlow 0 428) (- 0 429)) (HasDirectPerm_48852_6878 QPMask@29 n_72 val)) (=> (HasDirectPerm_48852_6878 QPMask@29 n_72 val) (=> (= (ControlFlow 0 428) 427) anon66_correct))))))))))
(let ((anon308_Else_correct  (=> (not (select new_g n_72)) (and (=> (= (ControlFlow 0 435) 428) anon309_Then_correct) (=> (= (ControlFlow 0 435) 432) anon309_Else_correct)))))
(let ((anon308_Then_correct  (=> (select new_g n_72) (and (=> (= (ControlFlow 0 433) (- 0 434)) (HasDirectPerm_48849_48850 QPMask@29 n_72 next)) (=> (HasDirectPerm_48849_48850 QPMask@29 n_72 next) (and (=> (= (ControlFlow 0 433) 428) anon309_Then_correct) (=> (= (ControlFlow 0 433) 432) anon309_Else_correct)))))))
(let ((anon304_Else_correct  (=> (and (forall ((n_13_2 T@Ref) ) (!  (=> (and (select new_g n_13_2) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_13_2 next) new_start))) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| PostHeap@0) n_13_2 val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| PostHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_13_2 next) val)))
 :qid |stdinbpl.4681:20|
 :skolemid |505|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| PostHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_13_2 next) val))
)) (state PostHeap@0 QPMask@29)) (and (and (=> (= (ControlFlow 0 451) 450) anon307_Else_correct) (=> (= (ControlFlow 0 451) 433) anon308_Then_correct)) (=> (= (ControlFlow 0 451) 435) anon308_Else_correct)))))
(let ((anon60_correct true))
(let ((anon306_Else_correct  (=> (and (not (and (select new_g n_71) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_71 next) new_start)))) (= (ControlFlow 0 423) 418)) anon60_correct)))
(let ((anon306_Then_correct  (=> (and (select new_g n_71) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_71 next) new_start))) (and (=> (= (ControlFlow 0 419) (- 0 422)) (HasDirectPerm_48852_6878 QPMask@29 n_71 val)) (=> (HasDirectPerm_48852_6878 QPMask@29 n_71 val) (and (=> (= (ControlFlow 0 419) (- 0 421)) (HasDirectPerm_48849_48850 QPMask@29 n_71 next)) (=> (HasDirectPerm_48849_48850 QPMask@29 n_71 next) (and (=> (= (ControlFlow 0 419) (- 0 420)) (HasDirectPerm_48852_6878 QPMask@29 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_71 next) val)) (=> (HasDirectPerm_48852_6878 QPMask@29 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_71 next) val) (=> (= (ControlFlow 0 419) 418) anon60_correct))))))))))
(let ((anon305_Else_correct  (=> (not (select new_g n_71)) (and (=> (= (ControlFlow 0 426) 419) anon306_Then_correct) (=> (= (ControlFlow 0 426) 423) anon306_Else_correct)))))
(let ((anon305_Then_correct  (=> (select new_g n_71) (and (=> (= (ControlFlow 0 424) (- 0 425)) (HasDirectPerm_48849_48850 QPMask@29 n_71 next)) (=> (HasDirectPerm_48849_48850 QPMask@29 n_71 next) (and (=> (= (ControlFlow 0 424) 419) anon306_Then_correct) (=> (= (ControlFlow 0 424) 423) anon306_Else_correct)))))))
(let ((anon303_Else_correct  (and (=> (= (ControlFlow 0 452) (- 0 454)) (forall ((n_11_2 T@Ref) (n_11_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_2 n_11_3)) (select new_g n_11_2)) (select new_g n_11_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_11_2 n_11_3)))
 :qid |stdinbpl.4622:15|
 :skolemid |499|
))) (=> (forall ((n_11_2@@0 T@Ref) (n_11_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_2@@0 n_11_3@@0)) (select new_g n_11_2@@0)) (select new_g n_11_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_11_2@@0 n_11_3@@0)))
 :qid |stdinbpl.4622:15|
 :skolemid |499|
)) (=> (and (and (forall ((n_11_2@@1 T@Ref) ) (!  (=> (and (select new_g n_11_2@@1) (< NoPerm FullPerm)) (and (qpRange55 n_11_2@@1) (= (invRecv55 n_11_2@@1) n_11_2@@1)))
 :qid |stdinbpl.4628:22|
 :skolemid |500|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| PostHeap@0) n_11_2@@1 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@29) n_11_2@@1 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| PostHeap@0) n_11_2@@1 val))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (select new_g (invRecv55 o_9)) (< NoPerm FullPerm)) (qpRange55 o_9)) (= (invRecv55 o_9) o_9))
 :qid |stdinbpl.4632:22|
 :skolemid |501|
 :pattern ( (invRecv55 o_9))
))) (and (forall ((n_11_2@@2 T@Ref) ) (!  (=> (select new_g n_11_2@@2) (not (= n_11_2@@2 null)))
 :qid |stdinbpl.4638:22|
 :skolemid |502|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| PostHeap@0) n_11_2@@2 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@29) n_11_2@@2 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| PostHeap@0) n_11_2@@2 val))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (select new_g (invRecv55 o_9@@0)) (< NoPerm FullPerm)) (qpRange55 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv55 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@29) o_9@@0 val) (+ (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@28) o_9@@0 val) FullPerm)))) (=> (not (and (and (select new_g (invRecv55 o_9@@0)) (< NoPerm FullPerm)) (qpRange55 o_9@@0))) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@29) o_9@@0 val) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@28) o_9@@0 val))))
 :qid |stdinbpl.4644:22|
 :skolemid |503|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@29) o_9@@0 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@28) o_9@@1 f_5) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@29) o_9@@1 f_5)))
 :qid |stdinbpl.4648:29|
 :skolemid |504|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@28) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@29) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_74000_74001) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@28) o_9@@2 f_5@@0) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@29) o_9@@2 f_5@@0)))
 :qid |stdinbpl.4648:29|
 :skolemid |504|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@28) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@29) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_83161_6878) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@28) o_9@@3 f_5@@1) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@29) o_9@@3 f_5@@1)))
 :qid |stdinbpl.4648:29|
 :skolemid |504|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@28) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@29) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@28) o_9@@4 f_5@@2) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@29) o_9@@4 f_5@@2)))
 :qid |stdinbpl.4648:29|
 :skolemid |504|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@28) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@29) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@28) o_9@@5 f_5@@3) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@29) o_9@@5 f_5@@3)))
 :qid |stdinbpl.4648:29|
 :skolemid |504|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@28) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@29) o_9@@5 f_5@@3))
))) (state PostHeap@0 QPMask@29)) (and (and (state PostHeap@0 QPMask@29) (not (select g_1 new_node))) (and (select new_g new_node) (state PostHeap@0 QPMask@29)))) (and (=> (= (ControlFlow 0 452) (- 0 453)) (HasDirectPerm_48852_6878 QPMask@29 new_node val)) (=> (HasDirectPerm_48852_6878 QPMask@29 new_node val) (=> (and (= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| PostHeap@0) new_node val) x@@14) (state PostHeap@0 QPMask@29)) (and (and (=> (= (ControlFlow 0 452) 451) anon304_Else_correct) (=> (= (ControlFlow 0 452) 424) anon305_Then_correct)) (=> (= (ControlFlow 0 452) 426) anon305_Else_correct)))))))))))
(let ((anon303_Then_correct true))
(let ((anon301_Else_correct  (=> (and (and (forall ((v$2_1 T@Ref) ) (!  (=> (select new_g v$2_1) (= (= v$2_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) v$2_1 next)) (|Set#Equal_49043| new_g (|Set#Singleton_49733| v$2_1))))
 :qid |stdinbpl.4608:20|
 :skolemid |498|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) v$2_1 next))
)) (state PostHeap@0 QPMask@28)) (and (select new_g new_start) (state PostHeap@0 QPMask@28))) (and (=> (= (ControlFlow 0 455) 417) anon303_Then_correct) (=> (= (ControlFlow 0 455) 452) anon303_Else_correct)))))
(let ((anon52_correct true))
(let ((anon302_Else_correct  (=> (and (not (select new_g v$2_2)) (= (ControlFlow 0 416) 413)) anon52_correct)))
(let ((anon302_Then_correct  (=> (select new_g v$2_2) (and (=> (= (ControlFlow 0 414) (- 0 415)) (HasDirectPerm_48849_48850 QPMask@28 v$2_2 next)) (=> (HasDirectPerm_48849_48850 QPMask@28 v$2_2 next) (=> (= (ControlFlow 0 414) 413) anon52_correct))))))
(let ((anon298_Else_correct  (=> (forall ((v1$0_1 T@Ref) (v2$0_1 T@Ref) (v$1_1 T@Ref) ) (!  (=> (and (select new_g v1$0_1) (and (select new_g v2$0_1) (select new_g v$1_1))) (=> (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) v1$0_1 next) v$1_1) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) v2$0_1 next) v$1_1)) (= v1$0_1 v2$0_1)))
 :qid |stdinbpl.4595:20|
 :skolemid |497|
 :pattern ( (select new_g v$1_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) v1$0_1 next) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) v2$0_1 next))
)) (and (and (=> (= (ControlFlow 0 456) 455) anon301_Else_correct) (=> (= (ControlFlow 0 456) 414) anon302_Then_correct)) (=> (= (ControlFlow 0 456) 416) anon302_Else_correct)))))
(let ((anon48_correct true))
(let ((anon300_Else_correct  (=> (and (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) v1$0 next) v$1_2)) (= (ControlFlow 0 410) 406)) anon48_correct)))
(let ((anon300_Then_correct  (=> (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) v1$0 next) v$1_2) (and (=> (= (ControlFlow 0 408) (- 0 409)) (HasDirectPerm_48849_48850 QPMask@28 v2$0 next)) (=> (HasDirectPerm_48849_48850 QPMask@28 v2$0 next) (=> (= (ControlFlow 0 408) 406) anon48_correct))))))
(let ((anon299_Then_correct  (=> (and (select new_g v1$0) (and (select new_g v2$0) (select new_g v$1_2))) (and (=> (= (ControlFlow 0 411) (- 0 412)) (HasDirectPerm_48849_48850 QPMask@28 v1$0 next)) (=> (HasDirectPerm_48849_48850 QPMask@28 v1$0 next) (and (=> (= (ControlFlow 0 411) 408) anon300_Then_correct) (=> (= (ControlFlow 0 411) 410) anon300_Else_correct)))))))
(let ((anon299_Else_correct  (=> (and (not (and (select new_g v1$0) (and (select new_g v2$0) (select new_g v$1_2)))) (= (ControlFlow 0 407) 406)) anon48_correct)))
(let ((anon296_Else_correct  (=> (and (forall ((n$2_1 T@Ref) ) (!  (=> (select new_g n$2_1) (select new_g (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$2_1 next)))
 :qid |stdinbpl.4577:20|
 :skolemid |496|
 :pattern ( (select new_g (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$2_1 next)))
 :pattern ( (select new_g n$2_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$2_1 next))
)) (state PostHeap@0 QPMask@28)) (and (and (=> (= (ControlFlow 0 457) 456) anon298_Else_correct) (=> (= (ControlFlow 0 457) 411) anon299_Then_correct)) (=> (= (ControlFlow 0 457) 407) anon299_Else_correct)))))
(let ((anon43_correct true))
(let ((anon297_Else_correct  (=> (and (not (select new_g n$2_17)) (= (ControlFlow 0 405) 402)) anon43_correct)))
(let ((anon297_Then_correct  (=> (select new_g n$2_17) (and (=> (= (ControlFlow 0 403) (- 0 404)) (HasDirectPerm_48849_48850 QPMask@28 n$2_17 next)) (=> (HasDirectPerm_48849_48850 QPMask@28 n$2_17 next) (=> (= (ControlFlow 0 403) 402) anon43_correct))))))
(let ((anon295_Else_correct  (and (=> (= (ControlFlow 0 458) (- 0 459)) (forall ((n$1_1 T@Ref) (n$1_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1 n$1_1_1)) (select new_g n$1_1)) (select new_g n$1_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_1 n$1_1_1)))
 :qid |stdinbpl.4536:15|
 :skolemid |490|
))) (=> (forall ((n$1_1@@0 T@Ref) (n$1_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1@@0 n$1_1_1@@0)) (select new_g n$1_1@@0)) (select new_g n$1_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_1@@0 n$1_1_1@@0)))
 :qid |stdinbpl.4536:15|
 :skolemid |490|
)) (=> (and (and (forall ((n$1_1@@1 T@Ref) ) (!  (=> (and (select new_g n$1_1@@1) (< NoPerm FullPerm)) (and (qpRange54 n$1_1@@1) (= (invRecv54 n$1_1@@1) n$1_1@@1)))
 :qid |stdinbpl.4542:22|
 :skolemid |491|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@28) n$1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$1_1@@1 next))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (select new_g (invRecv54 o_9@@6)) (< NoPerm FullPerm)) (qpRange54 o_9@@6)) (= (invRecv54 o_9@@6) o_9@@6))
 :qid |stdinbpl.4546:22|
 :skolemid |492|
 :pattern ( (invRecv54 o_9@@6))
))) (and (forall ((n$1_1@@2 T@Ref) ) (!  (=> (select new_g n$1_1@@2) (not (= n$1_1@@2 null)))
 :qid |stdinbpl.4552:22|
 :skolemid |493|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@28) n$1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$1_1@@2 next))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (select new_g (invRecv54 o_9@@7)) (< NoPerm FullPerm)) (qpRange54 o_9@@7)) (and (=> (< NoPerm FullPerm) (= (invRecv54 o_9@@7) o_9@@7)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@28) o_9@@7 next) (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_9@@7 next) FullPerm)))) (=> (not (and (and (select new_g (invRecv54 o_9@@7)) (< NoPerm FullPerm)) (qpRange54 o_9@@7))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@28) o_9@@7 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_9@@7 next))))
 :qid |stdinbpl.4558:22|
 :skolemid |494|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@28) o_9@@7 next))
)))) (=> (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| ZeroMask) o_9@@8 f_5@@4) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@28) o_9@@8 f_5@@4)))
 :qid |stdinbpl.4562:29|
 :skolemid |495|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| ZeroMask) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@28) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_74000_74001) ) (!  (=> (not (= f_5@@5 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_9@@9 f_5@@5) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@28) o_9@@9 f_5@@5)))
 :qid |stdinbpl.4562:29|
 :skolemid |495|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@28) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| ZeroMask) o_9@@10 f_5@@6) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@28) o_9@@10 f_5@@6)))
 :qid |stdinbpl.4562:29|
 :skolemid |495|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| ZeroMask) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@28) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| ZeroMask) o_9@@11 f_5@@7) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@28) o_9@@11 f_5@@7)))
 :qid |stdinbpl.4562:29|
 :skolemid |495|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| ZeroMask) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@28) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| ZeroMask) o_9@@12 f_5@@8) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@28) o_9@@12 f_5@@8)))
 :qid |stdinbpl.4562:29|
 :skolemid |495|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| ZeroMask) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@28) o_9@@12 f_5@@8))
))) (state PostHeap@0 QPMask@28)) (and (and (=> (= (ControlFlow 0 458) 457) anon296_Else_correct) (=> (= (ControlFlow 0 458) 403) anon297_Then_correct)) (=> (= (ControlFlow 0 458) 405) anon297_Else_correct))))))))
(let ((anon295_Then_correct true))
(let ((anon294_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (not (select new_g null))) (and (=> (= (ControlFlow 0 460) 401) anon295_Then_correct) (=> (= (ControlFlow 0 460) 458) anon295_Else_correct)))))
(let ((anon138_correct true))
(let ((anon348_Else_correct  (=> (and (not (and (select g_1 n_76) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_76 next) start_1@@1))) (= (ControlFlow 0 374) 369)) anon138_correct)))
(let ((anon348_Then_correct  (=> (and (select g_1 n_76) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_76 next) start_1@@1)) (and (=> (= (ControlFlow 0 370) (- 0 373)) (HasDirectPerm_48849_48850 QPMask@25 n_76 next)) (=> (HasDirectPerm_48849_48850 QPMask@25 n_76 next) (and (=> (= (ControlFlow 0 370) (- 0 372)) (HasDirectPerm_48852_6878 QPMask@25 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_76 next) val)) (=> (HasDirectPerm_48852_6878 QPMask@25 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_76 next) val) (and (=> (= (ControlFlow 0 370) (- 0 371)) (HasDirectPerm_48852_6878 QPMask@25 n_76 val)) (=> (HasDirectPerm_48852_6878 QPMask@25 n_76 val) (=> (= (ControlFlow 0 370) 369) anon138_correct))))))))))
(let ((anon347_Else_correct  (=> (not (select g_1 n_76)) (and (=> (= (ControlFlow 0 377) 370) anon348_Then_correct) (=> (= (ControlFlow 0 377) 374) anon348_Else_correct)))))
(let ((anon347_Then_correct  (=> (select g_1 n_76) (and (=> (= (ControlFlow 0 375) (- 0 376)) (HasDirectPerm_48849_48850 QPMask@25 n_76 next)) (=> (HasDirectPerm_48849_48850 QPMask@25 n_76 next) (and (=> (= (ControlFlow 0 375) 370) anon348_Then_correct) (=> (= (ControlFlow 0 375) 374) anon348_Else_correct)))))))
(let ((anon346_Else_correct true))
(let ((anon343_Else_correct  (=> (and (forall ((n_37 T@Ref) ) (!  (=> (and (select g_1 n_37) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_37 next) start_1@@1))) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_37 val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_37 next) val)))
 :qid |stdinbpl.5263:24|
 :skolemid |562|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_37 next) val))
)) (state ExhaleHeap@0 QPMask@25)) (and (and (=> (= (ControlFlow 0 378) 368) anon346_Else_correct) (=> (= (ControlFlow 0 378) 375) anon347_Then_correct)) (=> (= (ControlFlow 0 378) 377) anon347_Else_correct)))))
(let ((anon132_correct true))
(let ((anon345_Else_correct  (=> (and (not (and (select g_1 n_75) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_75 next) start_1@@1)))) (= (ControlFlow 0 364) 359)) anon132_correct)))
(let ((anon345_Then_correct  (=> (and (select g_1 n_75) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_75 next) start_1@@1))) (and (=> (= (ControlFlow 0 360) (- 0 363)) (HasDirectPerm_48852_6878 QPMask@25 n_75 val)) (=> (HasDirectPerm_48852_6878 QPMask@25 n_75 val) (and (=> (= (ControlFlow 0 360) (- 0 362)) (HasDirectPerm_48849_48850 QPMask@25 n_75 next)) (=> (HasDirectPerm_48849_48850 QPMask@25 n_75 next) (and (=> (= (ControlFlow 0 360) (- 0 361)) (HasDirectPerm_48852_6878 QPMask@25 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_75 next) val)) (=> (HasDirectPerm_48852_6878 QPMask@25 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_75 next) val) (=> (= (ControlFlow 0 360) 359) anon132_correct))))))))))
(let ((anon344_Else_correct  (=> (not (select g_1 n_75)) (and (=> (= (ControlFlow 0 367) 360) anon345_Then_correct) (=> (= (ControlFlow 0 367) 364) anon345_Else_correct)))))
(let ((anon344_Then_correct  (=> (select g_1 n_75) (and (=> (= (ControlFlow 0 365) (- 0 366)) (HasDirectPerm_48849_48850 QPMask@25 n_75 next)) (=> (HasDirectPerm_48849_48850 QPMask@25 n_75 next) (and (=> (= (ControlFlow 0 365) 360) anon345_Then_correct) (=> (= (ControlFlow 0 365) 364) anon345_Else_correct)))))))
(let ((anon342_Else_correct  (and (=> (= (ControlFlow 0 379) (- 0 380)) (forall ((n_35 T@Ref) (n_35_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_35 n_35_1)) (select g_1 n_35)) (select g_1 n_35_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_35 n_35_1)))
 :qid |stdinbpl.5213:19|
 :skolemid |556|
))) (=> (forall ((n_35@@0 T@Ref) (n_35_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_35@@0 n_35_1@@0)) (select g_1 n_35@@0)) (select g_1 n_35_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_35@@0 n_35_1@@0)))
 :qid |stdinbpl.5213:19|
 :skolemid |556|
)) (=> (and (and (forall ((n_35@@1 T@Ref) ) (!  (=> (and (select g_1 n_35@@1) (< NoPerm FullPerm)) (and (qpRange65 n_35@@1) (= (invRecv65 n_35@@1) n_35@@1)))
 :qid |stdinbpl.5219:26|
 :skolemid |557|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_35@@1 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@25) n_35@@1 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_35@@1 val))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv65 o_9@@13)) (< NoPerm FullPerm)) (qpRange65 o_9@@13)) (= (invRecv65 o_9@@13) o_9@@13))
 :qid |stdinbpl.5223:26|
 :skolemid |558|
 :pattern ( (invRecv65 o_9@@13))
))) (and (forall ((n_35@@2 T@Ref) ) (!  (=> (select g_1 n_35@@2) (not (= n_35@@2 null)))
 :qid |stdinbpl.5229:26|
 :skolemid |559|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_35@@2 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@25) n_35@@2 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_35@@2 val))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv65 o_9@@14)) (< NoPerm FullPerm)) (qpRange65 o_9@@14)) (and (=> (< NoPerm FullPerm) (= (invRecv65 o_9@@14) o_9@@14)) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@25) o_9@@14 val) (+ (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@24) o_9@@14 val) FullPerm)))) (=> (not (and (and (select g_1 (invRecv65 o_9@@14)) (< NoPerm FullPerm)) (qpRange65 o_9@@14))) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@25) o_9@@14 val) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@24) o_9@@14 val))))
 :qid |stdinbpl.5235:26|
 :skolemid |560|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@25) o_9@@14 val))
)))) (=> (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@24) o_9@@15 f_5@@9) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@25) o_9@@15 f_5@@9)))
 :qid |stdinbpl.5239:33|
 :skolemid |561|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@24) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@25) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_74000_74001) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@24) o_9@@16 f_5@@10) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@25) o_9@@16 f_5@@10)))
 :qid |stdinbpl.5239:33|
 :skolemid |561|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@24) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@25) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_83161_6878) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@24) o_9@@17 f_5@@11) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@25) o_9@@17 f_5@@11)))
 :qid |stdinbpl.5239:33|
 :skolemid |561|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@24) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@25) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@24) o_9@@18 f_5@@12) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@25) o_9@@18 f_5@@12)))
 :qid |stdinbpl.5239:33|
 :skolemid |561|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@24) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@25) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@24) o_9@@19 f_5@@13) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@25) o_9@@19 f_5@@13)))
 :qid |stdinbpl.5239:33|
 :skolemid |561|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@24) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@25) o_9@@19 f_5@@13))
))) (and (state ExhaleHeap@0 QPMask@25) (state ExhaleHeap@0 QPMask@25))) (and (and (=> (= (ControlFlow 0 379) 378) anon343_Else_correct) (=> (= (ControlFlow 0 379) 365) anon344_Then_correct)) (=> (= (ControlFlow 0 379) 367) anon344_Else_correct))))))))
(let ((anon342_Then_correct true))
(let ((anon337_Else_correct  (=> (and (forall ((n_33 T@Ref) (m_9_1 T@Ref) ) (!  (=> (and (select g_1 n_33) (select g_1 m_9_1)) (and (exists_path ($$ ExhaleHeap@0 g_1) n_33 m_9_1) (exists_path ($$ ExhaleHeap@0 g_1) m_9_1 n_33)))
 :qid |stdinbpl.5201:24|
 :skolemid |555|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@0 g_1)) g_1) n_33 m_9_1))
)) (state ExhaleHeap@0 QPMask@24)) (and (=> (= (ControlFlow 0 381) 358) anon342_Then_correct) (=> (= (ControlFlow 0 381) 379) anon342_Else_correct)))))
(let ((anon341_Then_correct  (and (=> (= (ControlFlow 0 353) (- 0 355)) (forall ((n$0_7 T@Ref) ) (!  (=> (and (select g_1 n$0_7) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_7 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5162:31|
 :skolemid |550|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_7 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@27) n$0_7 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_7 next))
))) (=> (forall ((n$0_7@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_7@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_7@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5162:31|
 :skolemid |550|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_7@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@27) n$0_7@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_7@@0 next))
)) (and (=> (= (ControlFlow 0 353) (- 0 354)) (forall ((n$0_7@@1 T@Ref) (n$0_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_7@@1 n$0_7_1)) (select g_1 n$0_7@@1)) (select g_1 n$0_7_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_7@@1 n$0_7_1)))
 :qid |stdinbpl.5169:31|
 :skolemid |551|
 :pattern ( (neverTriggered64 n$0_7@@1) (neverTriggered64 n$0_7_1))
))) (=> (forall ((n$0_7@@2 T@Ref) (n$0_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_7@@2 n$0_7_1@@0)) (select g_1 n$0_7@@2)) (select g_1 n$0_7_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_7@@2 n$0_7_1@@0)))
 :qid |stdinbpl.5169:31|
 :skolemid |551|
 :pattern ( (neverTriggered64 n$0_7@@2) (neverTriggered64 n$0_7_1@@0))
)) (=> (= (ControlFlow 0 353) (- 0 352)) (forall ((n$0_7@@3 T@Ref) ) (!  (=> (select g_1 n$0_7@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@24) n$0_7@@3 next) NoPerm)))
 :qid |stdinbpl.5176:31|
 :skolemid |552|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@27) n$0_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_7@@3 next))
)))))))))
(let ((anon339_Then_correct  (and (=> (= (ControlFlow 0 348) (- 0 350)) (forall ((n$0_6 T@Ref) ) (!  (=> (and (select g_1 n$0_6) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_6 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5118:29|
 :skolemid |545|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_6 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@26) n$0_6 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_6 next))
))) (=> (forall ((n$0_6@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_6@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_6@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5118:29|
 :skolemid |545|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_6@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@26) n$0_6@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_6@@0 next))
)) (and (=> (= (ControlFlow 0 348) (- 0 349)) (forall ((n$0_6@@1 T@Ref) (n$0_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_6@@1 n$0_6_1)) (select g_1 n$0_6@@1)) (select g_1 n$0_6_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_6@@1 n$0_6_1)))
 :qid |stdinbpl.5125:29|
 :skolemid |546|
 :pattern ( (neverTriggered63 n$0_6@@1) (neverTriggered63 n$0_6_1))
))) (=> (forall ((n$0_6@@2 T@Ref) (n$0_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_6@@2 n$0_6_1@@0)) (select g_1 n$0_6@@2)) (select g_1 n$0_6_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_6@@2 n$0_6_1@@0)))
 :qid |stdinbpl.5125:29|
 :skolemid |546|
 :pattern ( (neverTriggered63 n$0_6@@2) (neverTriggered63 n$0_6_1@@0))
)) (=> (= (ControlFlow 0 348) (- 0 347)) (forall ((n$0_6@@3 T@Ref) ) (!  (=> (select g_1 n$0_6@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@24) n$0_6@@3 next) NoPerm)))
 :qid |stdinbpl.5132:29|
 :skolemid |547|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@26) n$0_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_6@@3 next))
)))))))))
(let ((anon124_correct true))
(let ((anon340_Then_correct  (=> (exists_path ($$ ExhaleHeap@0 g_1) n_74 m_10) (and (=> (= (ControlFlow 0 356) 353) anon341_Then_correct) (=> (= (ControlFlow 0 356) 345) anon124_correct)))))
(let ((anon340_Else_correct  (=> (and (not (exists_path ($$ ExhaleHeap@0 g_1) n_74 m_10)) (= (ControlFlow 0 351) 345)) anon124_correct)))
(let ((anon338_Then_correct  (=> (and (select g_1 n_74) (select g_1 m_10)) (and (and (=> (= (ControlFlow 0 357) 348) anon339_Then_correct) (=> (= (ControlFlow 0 357) 356) anon340_Then_correct)) (=> (= (ControlFlow 0 357) 351) anon340_Else_correct)))))
(let ((anon338_Else_correct  (=> (and (not (and (select g_1 n_74) (select g_1 m_10))) (= (ControlFlow 0 346) 345)) anon124_correct)))
(let ((anon335_Else_correct  (=> (forall ((v$4_3 T@Ref) ) (!  (=> (select g_1 v$4_3) (= (= v$4_3 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v$4_3 next)) (|Set#Equal_49043| g_1 (|Set#Singleton_49733| v$4_3))))
 :qid |stdinbpl.5098:24|
 :skolemid |544|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v$4_3 next))
)) (=> (and (and (state ExhaleHeap@0 QPMask@24) (select g_1 node@0)) (and (state ExhaleHeap@0 QPMask@24) (state ExhaleHeap@0 QPMask@24))) (and (and (=> (= (ControlFlow 0 382) 381) anon337_Else_correct) (=> (= (ControlFlow 0 382) 357) anon338_Then_correct)) (=> (= (ControlFlow 0 382) 346) anon338_Else_correct))))))
(let ((anon116_correct true))
(let ((anon336_Else_correct  (=> (and (not (select g_1 v$4_1)) (= (ControlFlow 0 344) 341)) anon116_correct)))
(let ((anon336_Then_correct  (=> (select g_1 v$4_1) (and (=> (= (ControlFlow 0 342) (- 0 343)) (HasDirectPerm_48849_48850 QPMask@24 v$4_1 next)) (=> (HasDirectPerm_48849_48850 QPMask@24 v$4_1 next) (=> (= (ControlFlow 0 342) 341) anon116_correct))))))
(let ((anon332_Else_correct  (=> (forall ((v1$1_3 T@Ref) (v2$1_3 T@Ref) (v$3_3 T@Ref) ) (!  (=> (and (select g_1 v1$1_3) (and (select g_1 v2$1_3) (select g_1 v$3_3))) (=> (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v1$1_3 next) v$3_3) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v2$1_3 next) v$3_3)) (= v1$1_3 v2$1_3)))
 :qid |stdinbpl.5085:24|
 :skolemid |543|
 :pattern ( (select g_1 v$3_3) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v1$1_3 next) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v2$1_3 next))
)) (and (and (=> (= (ControlFlow 0 383) 382) anon335_Else_correct) (=> (= (ControlFlow 0 383) 342) anon336_Then_correct)) (=> (= (ControlFlow 0 383) 344) anon336_Else_correct)))))
(let ((anon112_correct true))
(let ((anon334_Else_correct  (=> (and (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v1$1_1 next) v$3_1)) (= (ControlFlow 0 338) 334)) anon112_correct)))
(let ((anon334_Then_correct  (=> (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v1$1_1 next) v$3_1) (and (=> (= (ControlFlow 0 336) (- 0 337)) (HasDirectPerm_48849_48850 QPMask@24 v2$1_1 next)) (=> (HasDirectPerm_48849_48850 QPMask@24 v2$1_1 next) (=> (= (ControlFlow 0 336) 334) anon112_correct))))))
(let ((anon333_Then_correct  (=> (and (select g_1 v1$1_1) (and (select g_1 v2$1_1) (select g_1 v$3_1))) (and (=> (= (ControlFlow 0 339) (- 0 340)) (HasDirectPerm_48849_48850 QPMask@24 v1$1_1 next)) (=> (HasDirectPerm_48849_48850 QPMask@24 v1$1_1 next) (and (=> (= (ControlFlow 0 339) 336) anon334_Then_correct) (=> (= (ControlFlow 0 339) 338) anon334_Else_correct)))))))
(let ((anon333_Else_correct  (=> (and (not (and (select g_1 v1$1_1) (and (select g_1 v2$1_1) (select g_1 v$3_1)))) (= (ControlFlow 0 335) 334)) anon112_correct)))
(let ((anon330_Else_correct  (=> (and (forall ((n$4_3_2 T@Ref) ) (!  (=> (select g_1 n$4_3_2) (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$4_3_2 next)))
 :qid |stdinbpl.5067:24|
 :skolemid |542|
 :pattern ( (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$4_3_2 next)))
 :pattern ( (select g_1 n$4_3_2) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$4_3_2 next))
)) (state ExhaleHeap@0 QPMask@24)) (and (and (=> (= (ControlFlow 0 384) 383) anon332_Else_correct) (=> (= (ControlFlow 0 384) 339) anon333_Then_correct)) (=> (= (ControlFlow 0 384) 335) anon333_Else_correct)))))
(let ((anon107_correct true))
(let ((anon331_Else_correct  (=> (and (not (select g_1 n$4_12)) (= (ControlFlow 0 333) 330)) anon107_correct)))
(let ((anon331_Then_correct  (=> (select g_1 n$4_12) (and (=> (= (ControlFlow 0 331) (- 0 332)) (HasDirectPerm_48849_48850 QPMask@24 n$4_12 next)) (=> (HasDirectPerm_48849_48850 QPMask@24 n$4_12 next) (=> (= (ControlFlow 0 331) 330) anon107_correct))))))
(let ((anon329_Else_correct  (and (=> (= (ControlFlow 0 385) (- 0 386)) (forall ((n$3_2 T@Ref) (n$3_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_2 n$3_2_1)) (select g_1 n$3_2)) (select g_1 n$3_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_2 n$3_2_1)))
 :qid |stdinbpl.5026:19|
 :skolemid |536|
))) (=> (forall ((n$3_2@@0 T@Ref) (n$3_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_2@@0 n$3_2_1@@0)) (select g_1 n$3_2@@0)) (select g_1 n$3_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_2@@0 n$3_2_1@@0)))
 :qid |stdinbpl.5026:19|
 :skolemid |536|
)) (=> (and (and (forall ((n$3_2@@1 T@Ref) ) (!  (=> (and (select g_1 n$3_2@@1) (< NoPerm FullPerm)) (and (qpRange62 n$3_2@@1) (= (invRecv62 n$3_2@@1) n$3_2@@1)))
 :qid |stdinbpl.5032:26|
 :skolemid |537|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$3_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@24) n$3_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$3_2@@1 next))
)) (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv62 o_9@@20)) (< NoPerm FullPerm)) (qpRange62 o_9@@20)) (= (invRecv62 o_9@@20) o_9@@20))
 :qid |stdinbpl.5036:26|
 :skolemid |538|
 :pattern ( (invRecv62 o_9@@20))
))) (and (forall ((n$3_2@@2 T@Ref) ) (!  (=> (select g_1 n$3_2@@2) (not (= n$3_2@@2 null)))
 :qid |stdinbpl.5042:26|
 :skolemid |539|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$3_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@24) n$3_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$3_2@@2 next))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv62 o_9@@21)) (< NoPerm FullPerm)) (qpRange62 o_9@@21)) (and (=> (< NoPerm FullPerm) (= (invRecv62 o_9@@21) o_9@@21)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@24) o_9@@21 next) (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@3) o_9@@21 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv62 o_9@@21)) (< NoPerm FullPerm)) (qpRange62 o_9@@21))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@24) o_9@@21 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@3) o_9@@21 next))))
 :qid |stdinbpl.5048:26|
 :skolemid |540|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@24) o_9@@21 next))
)))) (=> (and (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@3) o_9@@22 f_5@@14) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@24) o_9@@22 f_5@@14)))
 :qid |stdinbpl.5052:33|
 :skolemid |541|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@3) o_9@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@24) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_74000_74001) ) (!  (=> (not (= f_5@@15 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@3) o_9@@23 f_5@@15) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@24) o_9@@23 f_5@@15)))
 :qid |stdinbpl.5052:33|
 :skolemid |541|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@3) o_9@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@24) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@3) o_9@@24 f_5@@16) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@24) o_9@@24 f_5@@16)))
 :qid |stdinbpl.5052:33|
 :skolemid |541|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@3) o_9@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@24) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@3) o_9@@25 f_5@@17) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@24) o_9@@25 f_5@@17)))
 :qid |stdinbpl.5052:33|
 :skolemid |541|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@3) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@24) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@3) o_9@@26 f_5@@18) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@24) o_9@@26 f_5@@18)))
 :qid |stdinbpl.5052:33|
 :skolemid |541|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@3) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@24) o_9@@26 f_5@@18))
))) (state ExhaleHeap@0 QPMask@24)) (and (and (=> (= (ControlFlow 0 385) 384) anon330_Else_correct) (=> (= (ControlFlow 0 385) 331) anon331_Then_correct)) (=> (= (ControlFlow 0 385) 333) anon331_Else_correct))))))))
(let ((anon329_Then_correct true))
(let ((anon328_Then_correct  (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 387) 329) anon329_Then_correct) (=> (= (ControlFlow 0 387) 385) anon329_Else_correct)))))
(let ((anon171_correct true))
(let ((anon366_Else_correct  (=> (and (not (and (select g_1 n_49_1) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_49_1 next) start_1@@1))) (= (ControlFlow 0 298) 295)) anon171_correct)))
(let ((anon366_Then_correct  (=> (and (select g_1 n_49_1) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_49_1 next) start_1@@1)) (and (=> (= (ControlFlow 0 296) (- 0 297)) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_49_1 next) val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_49_1 val))) (=> (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_49_1 next) val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_49_1 val)) (=> (= (ControlFlow 0 296) 295) anon171_correct))))))
(let ((anon365_Else_correct true))
(let ((anon363_Else_correct  (=> (forall ((n_48_1 T@Ref) ) (!  (=> (and (select g_1 n_48_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_48_1 next) start_1@@1))) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_48_1 val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_48_1 next) val)))
 :qid |stdinbpl.5576:24|
 :skolemid |598|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_48_1 next) val))
)) (and (and (=> (= (ControlFlow 0 299) 294) anon365_Else_correct) (=> (= (ControlFlow 0 299) 296) anon366_Then_correct)) (=> (= (ControlFlow 0 299) 298) anon366_Else_correct)))))
(let ((anon167_correct true))
(let ((anon364_Else_correct  (=> (and (not (and (select g_1 n_47) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_47 next) start_1@@1)))) (= (ControlFlow 0 293) 290)) anon167_correct)))
(let ((anon364_Then_correct  (=> (and (select g_1 n_47) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_47 next) start_1@@1))) (and (=> (= (ControlFlow 0 291) (- 0 292)) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_47 val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_47 next) val))) (=> (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_47 val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_47 next) val)) (=> (= (ControlFlow 0 291) 290) anon167_correct))))))
(let ((anon361_Else_correct  (=> (forall ((n_45_1_1 T@Ref) (m_12_1 T@Ref) ) (!  (=> (and (select g_1 n_45_1_1) (select g_1 m_12_1)) (and (exists_path ($$ ExhaleHeap@0 g_1) n_45_1_1 m_12_1) (exists_path ($$ ExhaleHeap@0 g_1) m_12_1 n_45_1_1)))
 :qid |stdinbpl.5524:24|
 :skolemid |591|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@0 g_1)) g_1) n_45_1_1 m_12_1))
)) (and (=> (= (ControlFlow 0 300) (- 0 302)) (forall ((n_46 T@Ref) (n_46_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_46 n_46_1)) (select g_1 n_46)) (select g_1 n_46_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_46 n_46_1)))
 :qid |stdinbpl.5535:21|
 :skolemid |592|
 :pattern ( (neverTriggered69 n_46) (neverTriggered69 n_46_1))
))) (=> (forall ((n_46@@0 T@Ref) (n_46_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_46@@0 n_46_1@@0)) (select g_1 n_46@@0)) (select g_1 n_46_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_46@@0 n_46_1@@0)))
 :qid |stdinbpl.5535:21|
 :skolemid |592|
 :pattern ( (neverTriggered69 n_46@@0) (neverTriggered69 n_46_1@@0))
)) (and (=> (= (ControlFlow 0 300) (- 0 301)) (forall ((n_46@@1 T@Ref) ) (!  (=> (select g_1 n_46@@1) (>= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@22) n_46@@1 val) FullPerm))
 :qid |stdinbpl.5542:21|
 :skolemid |593|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_46@@1 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@23) n_46@@1 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_46@@1 val))
))) (=> (forall ((n_46@@2 T@Ref) ) (!  (=> (select g_1 n_46@@2) (>= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@22) n_46@@2 val) FullPerm))
 :qid |stdinbpl.5542:21|
 :skolemid |593|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_46@@2 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@23) n_46@@2 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_46@@2 val))
)) (=> (forall ((n_46@@3 T@Ref) ) (!  (=> (and (select g_1 n_46@@3) (< NoPerm FullPerm)) (and (qpRange69 n_46@@3) (= (invRecv69 n_46@@3) n_46@@3)))
 :qid |stdinbpl.5548:26|
 :skolemid |594|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_46@@3 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@23) n_46@@3 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_46@@3 val))
)) (=> (and (forall ((o_9@@27 T@Ref) ) (!  (=> (and (select g_1 (invRecv69 o_9@@27)) (and (< NoPerm FullPerm) (qpRange69 o_9@@27))) (= (invRecv69 o_9@@27) o_9@@27))
 :qid |stdinbpl.5552:26|
 :skolemid |595|
 :pattern ( (invRecv69 o_9@@27))
)) (forall ((o_9@@28 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv69 o_9@@28)) (and (< NoPerm FullPerm) (qpRange69 o_9@@28))) (and (= (invRecv69 o_9@@28) o_9@@28) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@23) o_9@@28 val) (- (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@22) o_9@@28 val) FullPerm)))) (=> (not (and (select g_1 (invRecv69 o_9@@28)) (and (< NoPerm FullPerm) (qpRange69 o_9@@28)))) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@23) o_9@@28 val) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@22) o_9@@28 val))))
 :qid |stdinbpl.5558:26|
 :skolemid |596|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@23) o_9@@28 val))
))) (=> (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@19 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@22) o_9@@29 f_5@@19) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@23) o_9@@29 f_5@@19)))
 :qid |stdinbpl.5564:33|
 :skolemid |597|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@23) o_9@@29 f_5@@19))
)) (forall ((o_9@@30 T@Ref) (f_5@@20 T@Field_74000_74001) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@22) o_9@@30 f_5@@20) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@23) o_9@@30 f_5@@20)))
 :qid |stdinbpl.5564:33|
 :skolemid |597|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@23) o_9@@30 f_5@@20))
))) (forall ((o_9@@31 T@Ref) (f_5@@21 T@Field_83161_6878) ) (!  (=> (not (= f_5@@21 val)) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@22) o_9@@31 f_5@@21) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@23) o_9@@31 f_5@@21)))
 :qid |stdinbpl.5564:33|
 :skolemid |597|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@23) o_9@@31 f_5@@21))
))) (forall ((o_9@@32 T@Ref) (f_5@@22 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@22) o_9@@32 f_5@@22) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@23) o_9@@32 f_5@@22)))
 :qid |stdinbpl.5564:33|
 :skolemid |597|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@23) o_9@@32 f_5@@22))
))) (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@22) o_9@@33 f_5@@23) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@23) o_9@@33 f_5@@23)))
 :qid |stdinbpl.5564:33|
 :skolemid |597|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@23) o_9@@33 f_5@@23))
))) (and (and (=> (= (ControlFlow 0 300) 299) anon363_Else_correct) (=> (= (ControlFlow 0 300) 291) anon364_Then_correct)) (=> (= (ControlFlow 0 300) 293) anon364_Else_correct))))))))))))
(let ((anon163_correct true))
(let ((anon362_Else_correct  (=> (and (not (and (select g_1 n_44) (select g_1 m_11))) (= (ControlFlow 0 289) 285)) anon163_correct)))
(let ((anon362_Then_correct  (=> (and (select g_1 n_44) (select g_1 m_11)) (and (=> (= (ControlFlow 0 286) (- 0 288)) (exists_path ($$ ExhaleHeap@0 g_1) n_44 m_11)) (=> (exists_path ($$ ExhaleHeap@0 g_1) n_44 m_11) (and (=> (= (ControlFlow 0 286) (- 0 287)) (exists_path ($$ ExhaleHeap@0 g_1) m_11 n_44)) (=> (exists_path ($$ ExhaleHeap@0 g_1) m_11 n_44) (=> (= (ControlFlow 0 286) 285) anon163_correct))))))))
(let ((anon359_Else_correct  (=> (forall ((v$4_6_1 T@Ref) ) (!  (=> (select g_1 v$4_6_1) (= (= v$4_6_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v$4_6_1 next)) (|Set#Equal_49043| g_1 (|Set#Singleton_49733| v$4_6_1))))
 :qid |stdinbpl.5509:24|
 :skolemid |590|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v$4_6_1 next))
)) (and (=> (= (ControlFlow 0 303) (- 0 304)) (select g_1 node@1)) (=> (select g_1 node@1) (and (and (=> (= (ControlFlow 0 303) 300) anon361_Else_correct) (=> (= (ControlFlow 0 303) 286) anon362_Then_correct)) (=> (= (ControlFlow 0 303) 289) anon362_Else_correct)))))))
(let ((anon159_correct true))
(let ((anon360_Else_correct  (=> (and (not (select g_1 v$4_5)) (= (ControlFlow 0 284) 281)) anon159_correct)))
(let ((anon360_Then_correct  (=> (select g_1 v$4_5) (and (=> (= (ControlFlow 0 282) (- 0 283)) (= (= v$4_5 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v$4_5 next)) (|Set#Equal_49043| g_1 (|Set#Singleton_49733| v$4_5)))) (=> (= (= v$4_5 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v$4_5 next)) (|Set#Equal_49043| g_1 (|Set#Singleton_49733| v$4_5))) (=> (= (ControlFlow 0 282) 281) anon159_correct))))))
(let ((anon356_Else_correct  (=> (forall ((v1$1_6_1 T@Ref) (v2$1_6_1 T@Ref) (v$3_6_1 T@Ref) ) (!  (=> (and (select g_1 v1$1_6_1) (and (select g_1 v2$1_6_1) (select g_1 v$3_6_1))) (=> (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v1$1_6_1 next) v$3_6_1) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v2$1_6_1 next) v$3_6_1)) (= v1$1_6_1 v2$1_6_1)))
 :qid |stdinbpl.5498:24|
 :skolemid |589|
 :pattern ( (select g_1 v$3_6_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v1$1_6_1 next) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v2$1_6_1 next))
)) (and (and (=> (= (ControlFlow 0 305) 303) anon359_Else_correct) (=> (= (ControlFlow 0 305) 282) anon360_Then_correct)) (=> (= (ControlFlow 0 305) 284) anon360_Else_correct)))))
(let ((anon155_correct true))
(let ((anon358_Else_correct  (=> (and (not (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v1$1_5 next) v$3_5) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v2$1_5 next) v$3_5))) (= (ControlFlow 0 279) 275)) anon155_correct)))
(let ((anon358_Then_correct  (=> (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v1$1_5 next) v$3_5) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v2$1_5 next) v$3_5)) (and (=> (= (ControlFlow 0 277) (- 0 278)) (= v1$1_5 v2$1_5)) (=> (= v1$1_5 v2$1_5) (=> (= (ControlFlow 0 277) 275) anon155_correct))))))
(let ((anon357_Then_correct  (=> (and (select g_1 v1$1_5) (and (select g_1 v2$1_5) (select g_1 v$3_5))) (and (=> (= (ControlFlow 0 280) 277) anon358_Then_correct) (=> (= (ControlFlow 0 280) 279) anon358_Else_correct)))))
(let ((anon357_Else_correct  (=> (and (not (and (select g_1 v1$1_5) (and (select g_1 v2$1_5) (select g_1 v$3_5)))) (= (ControlFlow 0 276) 275)) anon155_correct)))
(let ((anon354_Else_correct  (=> (forall ((n$4_6_1 T@Ref) ) (!  (=> (select g_1 n$4_6_1) (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$4_6_1 next)))
 :qid |stdinbpl.5485:24|
 :skolemid |588|
 :pattern ( (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$4_6_1 next)))
 :pattern ( (select g_1 n$4_6_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$4_6_1 next))
)) (and (and (=> (= (ControlFlow 0 306) 305) anon356_Else_correct) (=> (= (ControlFlow 0 306) 280) anon357_Then_correct)) (=> (= (ControlFlow 0 306) 276) anon357_Else_correct)))))
(let ((anon150_correct true))
(let ((anon355_Else_correct  (=> (and (not (select g_1 n$4_5_1)) (= (ControlFlow 0 274) 271)) anon150_correct)))
(let ((anon355_Then_correct  (=> (select g_1 n$4_5_1) (and (=> (= (ControlFlow 0 272) (- 0 273)) (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$4_5_1 next))) (=> (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$4_5_1 next)) (=> (= (ControlFlow 0 272) 271) anon150_correct))))))
(let ((anon147_correct  (=> (and (not (or (and (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) node@0 val) x@@14) (< x@@14 (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) node@0 next) val))) (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) node@0 next) start_1@@1) (or (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) node@0 val) x@@14) (< x@@14 (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) start_1@@1 val)))))) (state ExhaleHeap@0 QPMask@5)) (and (=> (= (ControlFlow 0 307) (- 0 311)) (HasDirectPerm_48849_48850 QPMask@5 node@0 next)) (=> (HasDirectPerm_48849_48850 QPMask@5 node@0 next) (=> (and (= node@1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) node@0 next)) (state ExhaleHeap@0 QPMask@5)) (and (=> (= (ControlFlow 0 307) (- 0 310)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 307) (- 0 309)) (forall ((n$3_4_1 T@Ref) (n$3_4_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_4_1 n$3_4_2)) (select g_1 n$3_4_1)) (select g_1 n$3_4_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_4_1 n$3_4_2)))
 :qid |stdinbpl.5444:21|
 :skolemid |582|
 :pattern ( (neverTriggered68 n$3_4_1) (neverTriggered68 n$3_4_2))
))) (=> (forall ((n$3_4_1@@0 T@Ref) (n$3_4_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_4_1@@0 n$3_4_2@@0)) (select g_1 n$3_4_1@@0)) (select g_1 n$3_4_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_4_1@@0 n$3_4_2@@0)))
 :qid |stdinbpl.5444:21|
 :skolemid |582|
 :pattern ( (neverTriggered68 n$3_4_1@@0) (neverTriggered68 n$3_4_2@@0))
)) (and (=> (= (ControlFlow 0 307) (- 0 308)) (forall ((n$3_4_1@@1 T@Ref) ) (!  (=> (select g_1 n$3_4_1@@1) (>= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@5) n$3_4_1@@1 next) FullPerm))
 :qid |stdinbpl.5451:21|
 :skolemid |583|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$3_4_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@22) n$3_4_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$3_4_1@@1 next))
))) (=> (forall ((n$3_4_1@@2 T@Ref) ) (!  (=> (select g_1 n$3_4_1@@2) (>= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@5) n$3_4_1@@2 next) FullPerm))
 :qid |stdinbpl.5451:21|
 :skolemid |583|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$3_4_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@22) n$3_4_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$3_4_1@@2 next))
)) (=> (forall ((n$3_4_1@@3 T@Ref) ) (!  (=> (and (select g_1 n$3_4_1@@3) (< NoPerm FullPerm)) (and (qpRange68 n$3_4_1@@3) (= (invRecv68 n$3_4_1@@3) n$3_4_1@@3)))
 :qid |stdinbpl.5457:26|
 :skolemid |584|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$3_4_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@22) n$3_4_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$3_4_1@@3 next))
)) (=> (and (forall ((o_9@@34 T@Ref) ) (!  (=> (and (select g_1 (invRecv68 o_9@@34)) (and (< NoPerm FullPerm) (qpRange68 o_9@@34))) (= (invRecv68 o_9@@34) o_9@@34))
 :qid |stdinbpl.5461:26|
 :skolemid |585|
 :pattern ( (invRecv68 o_9@@34))
)) (forall ((o_9@@35 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv68 o_9@@35)) (and (< NoPerm FullPerm) (qpRange68 o_9@@35))) (and (= (invRecv68 o_9@@35) o_9@@35) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@22) o_9@@35 next) (- (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@5) o_9@@35 next) FullPerm)))) (=> (not (and (select g_1 (invRecv68 o_9@@35)) (and (< NoPerm FullPerm) (qpRange68 o_9@@35)))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@22) o_9@@35 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@5) o_9@@35 next))))
 :qid |stdinbpl.5467:26|
 :skolemid |586|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@22) o_9@@35 next))
))) (=> (and (and (and (and (forall ((o_9@@36 T@Ref) (f_5@@24 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@5) o_9@@36 f_5@@24) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@22) o_9@@36 f_5@@24)))
 :qid |stdinbpl.5473:33|
 :skolemid |587|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@22) o_9@@36 f_5@@24))
)) (forall ((o_9@@37 T@Ref) (f_5@@25 T@Field_74000_74001) ) (!  (=> (not (= f_5@@25 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@5) o_9@@37 f_5@@25) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@22) o_9@@37 f_5@@25)))
 :qid |stdinbpl.5473:33|
 :skolemid |587|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@22) o_9@@37 f_5@@25))
))) (forall ((o_9@@38 T@Ref) (f_5@@26 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@5) o_9@@38 f_5@@26) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@22) o_9@@38 f_5@@26)))
 :qid |stdinbpl.5473:33|
 :skolemid |587|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@22) o_9@@38 f_5@@26))
))) (forall ((o_9@@39 T@Ref) (f_5@@27 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@5) o_9@@39 f_5@@27) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@22) o_9@@39 f_5@@27)))
 :qid |stdinbpl.5473:33|
 :skolemid |587|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@22) o_9@@39 f_5@@27))
))) (forall ((o_9@@40 T@Ref) (f_5@@28 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@5) o_9@@40 f_5@@28) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@22) o_9@@40 f_5@@28)))
 :qid |stdinbpl.5473:33|
 :skolemid |587|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@22) o_9@@40 f_5@@28))
))) (and (and (=> (= (ControlFlow 0 307) 306) anon354_Else_correct) (=> (= (ControlFlow 0 307) 272) anon355_Then_correct)) (=> (= (ControlFlow 0 307) 274) anon355_Else_correct)))))))))))))))))
(let ((anon353_Else_correct  (=> (and (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) node@0 val) x@@14) (= (ControlFlow 0 316) 307)) anon147_correct)))
(let ((anon353_Then_correct  (=> (not (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) node@0 val) x@@14)) (and (=> (= (ControlFlow 0 314) (- 0 315)) (HasDirectPerm_48852_6878 QPMask@5 start_1@@1 val)) (=> (HasDirectPerm_48852_6878 QPMask@5 start_1@@1 val) (=> (= (ControlFlow 0 314) 307) anon147_correct))))))
(let ((anon352_Then_correct  (=> (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) node@0 next) start_1@@1) (and (=> (= (ControlFlow 0 317) (- 0 318)) (HasDirectPerm_48852_6878 QPMask@5 node@0 val)) (=> (HasDirectPerm_48852_6878 QPMask@5 node@0 val) (and (=> (= (ControlFlow 0 317) 314) anon353_Then_correct) (=> (= (ControlFlow 0 317) 316) anon353_Else_correct)))))))
(let ((anon352_Else_correct  (=> (and (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) node@0 next) start_1@@1)) (= (ControlFlow 0 313) 307)) anon147_correct)))
(let ((anon351_Then_correct  (=> (not (and (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) node@0 val) x@@14) (< x@@14 (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) node@0 next) val)))) (and (=> (= (ControlFlow 0 319) (- 0 320)) (HasDirectPerm_48849_48850 QPMask@5 node@0 next)) (=> (HasDirectPerm_48849_48850 QPMask@5 node@0 next) (and (=> (= (ControlFlow 0 319) 317) anon352_Then_correct) (=> (= (ControlFlow 0 319) 313) anon352_Else_correct)))))))
(let ((anon351_Else_correct  (=> (and (and (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) node@0 val) x@@14) (< x@@14 (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) node@0 next) val))) (= (ControlFlow 0 312) 307)) anon147_correct)))
(let ((anon350_Else_correct  (=> (< x@@14 (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) node@0 val)) (and (=> (= (ControlFlow 0 324) 319) anon351_Then_correct) (=> (= (ControlFlow 0 324) 312) anon351_Else_correct)))))
(let ((anon350_Then_correct  (=> (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) node@0 val) x@@14) (and (=> (= (ControlFlow 0 321) (- 0 323)) (HasDirectPerm_48849_48850 QPMask@5 node@0 next)) (=> (HasDirectPerm_48849_48850 QPMask@5 node@0 next) (and (=> (= (ControlFlow 0 321) (- 0 322)) (HasDirectPerm_48852_6878 QPMask@5 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) node@0 next) val)) (=> (HasDirectPerm_48852_6878 QPMask@5 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) node@0 next) val) (and (=> (= (ControlFlow 0 321) 319) anon351_Then_correct) (=> (= (ControlFlow 0 321) 312) anon351_Else_correct)))))))))
(let ((anon349_Then_correct  (=> (and (state ExhaleHeap@0 ZeroMask) (not (select g_1 null))) (and (=> (= (ControlFlow 0 325) (- 0 328)) (forall ((n$3_3 T@Ref) (n$3_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_3 n$3_3_1)) (select g_1 n$3_3)) (select g_1 n$3_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_3 n$3_3_1)))
 :qid |stdinbpl.5304:19|
 :skolemid |564|
))) (=> (forall ((n$3_3@@0 T@Ref) (n$3_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_3@@0 n$3_3_1@@0)) (select g_1 n$3_3@@0)) (select g_1 n$3_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_3@@0 n$3_3_1@@0)))
 :qid |stdinbpl.5304:19|
 :skolemid |564|
)) (=> (and (and (forall ((n$3_3@@1 T@Ref) ) (!  (=> (and (select g_1 n$3_3@@1) (< NoPerm FullPerm)) (and (qpRange66 n$3_3@@1) (= (invRecv66 n$3_3@@1) n$3_3@@1)))
 :qid |stdinbpl.5310:26|
 :skolemid |565|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$3_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@4) n$3_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$3_3@@1 next))
)) (forall ((o_9@@41 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv66 o_9@@41)) (< NoPerm FullPerm)) (qpRange66 o_9@@41)) (= (invRecv66 o_9@@41) o_9@@41))
 :qid |stdinbpl.5314:26|
 :skolemid |566|
 :pattern ( (invRecv66 o_9@@41))
))) (and (forall ((n$3_3@@2 T@Ref) ) (!  (=> (select g_1 n$3_3@@2) (not (= n$3_3@@2 null)))
 :qid |stdinbpl.5320:26|
 :skolemid |567|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$3_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@4) n$3_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$3_3@@2 next))
)) (forall ((o_9@@42 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv66 o_9@@42)) (< NoPerm FullPerm)) (qpRange66 o_9@@42)) (and (=> (< NoPerm FullPerm) (= (invRecv66 o_9@@42) o_9@@42)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@4) o_9@@42 next) (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_9@@42 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv66 o_9@@42)) (< NoPerm FullPerm)) (qpRange66 o_9@@42))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@4) o_9@@42 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_9@@42 next))))
 :qid |stdinbpl.5326:26|
 :skolemid |568|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@4) o_9@@42 next))
)))) (=> (and (and (and (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@29 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| ZeroMask) o_9@@43 f_5@@29) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@4) o_9@@43 f_5@@29)))
 :qid |stdinbpl.5330:33|
 :skolemid |569|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| ZeroMask) o_9@@43 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@4) o_9@@43 f_5@@29))
)) (forall ((o_9@@44 T@Ref) (f_5@@30 T@Field_74000_74001) ) (!  (=> (not (= f_5@@30 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_9@@44 f_5@@30) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@4) o_9@@44 f_5@@30)))
 :qid |stdinbpl.5330:33|
 :skolemid |569|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_9@@44 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@4) o_9@@44 f_5@@30))
))) (forall ((o_9@@45 T@Ref) (f_5@@31 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| ZeroMask) o_9@@45 f_5@@31) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@4) o_9@@45 f_5@@31)))
 :qid |stdinbpl.5330:33|
 :skolemid |569|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| ZeroMask) o_9@@45 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@4) o_9@@45 f_5@@31))
))) (forall ((o_9@@46 T@Ref) (f_5@@32 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| ZeroMask) o_9@@46 f_5@@32) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@4) o_9@@46 f_5@@32)))
 :qid |stdinbpl.5330:33|
 :skolemid |569|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| ZeroMask) o_9@@46 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@4) o_9@@46 f_5@@32))
))) (forall ((o_9@@47 T@Ref) (f_5@@33 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| ZeroMask) o_9@@47 f_5@@33) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@4) o_9@@47 f_5@@33)))
 :qid |stdinbpl.5330:33|
 :skolemid |569|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| ZeroMask) o_9@@47 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@4) o_9@@47 f_5@@33))
))) (state ExhaleHeap@0 QPMask@4)) (and (forall ((n$4_4_1 T@Ref) ) (!  (=> (select g_1 n$4_4_1) (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$4_4_1 next)))
 :qid |stdinbpl.5336:24|
 :skolemid |570|
 :pattern ( (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$4_4_1 next)))
 :pattern ( (select g_1 n$4_4_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$4_4_1 next))
)) (forall ((v1$1_4 T@Ref) (v2$1_4 T@Ref) (v$3_4 T@Ref) ) (!  (=> (and (select g_1 v1$1_4) (and (select g_1 v2$1_4) (select g_1 v$3_4))) (=> (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v1$1_4 next) v$3_4) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v2$1_4 next) v$3_4)) (= v1$1_4 v2$1_4)))
 :qid |stdinbpl.5340:24|
 :skolemid |571|
 :pattern ( (select g_1 v$3_4) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v1$1_4 next) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v2$1_4 next))
)))) (and (and (forall ((v$4_4 T@Ref) ) (!  (=> (select g_1 v$4_4) (= (= v$4_4 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v$4_4 next)) (|Set#Equal_49043| g_1 (|Set#Singleton_49733| v$4_4))))
 :qid |stdinbpl.5344:24|
 :skolemid |572|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v$4_4 next))
)) (select g_1 node@0)) (and (state ExhaleHeap@0 QPMask@4) (forall ((n_40 T@Ref) (m_10_1 T@Ref) ) (!  (=> (and (select g_1 n_40) (select g_1 m_10_1)) (and (exists_path ($$ ExhaleHeap@0 g_1) n_40 m_10_1) (exists_path ($$ ExhaleHeap@0 g_1) m_10_1 n_40)))
 :qid |stdinbpl.5350:24|
 :skolemid |573|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@0 g_1)) g_1) n_40 m_10_1))
))))) (and (=> (= (ControlFlow 0 325) (- 0 327)) (forall ((n_41 T@Ref) (n_41_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_41 n_41_1)) (select g_1 n_41)) (select g_1 n_41_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_41 n_41_1)))
 :qid |stdinbpl.5356:19|
 :skolemid |574|
))) (=> (forall ((n_41@@0 T@Ref) (n_41_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_41@@0 n_41_1@@0)) (select g_1 n_41@@0)) (select g_1 n_41_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_41@@0 n_41_1@@0)))
 :qid |stdinbpl.5356:19|
 :skolemid |574|
)) (=> (and (and (forall ((n_41@@1 T@Ref) ) (!  (=> (and (select g_1 n_41@@1) (< NoPerm FullPerm)) (and (qpRange67 n_41@@1) (= (invRecv67 n_41@@1) n_41@@1)))
 :qid |stdinbpl.5362:26|
 :skolemid |575|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_41@@1 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@5) n_41@@1 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_41@@1 val))
)) (forall ((o_9@@48 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv67 o_9@@48)) (< NoPerm FullPerm)) (qpRange67 o_9@@48)) (= (invRecv67 o_9@@48) o_9@@48))
 :qid |stdinbpl.5366:26|
 :skolemid |576|
 :pattern ( (invRecv67 o_9@@48))
))) (and (forall ((n_41@@2 T@Ref) ) (!  (=> (select g_1 n_41@@2) (not (= n_41@@2 null)))
 :qid |stdinbpl.5372:26|
 :skolemid |577|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_41@@2 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@5) n_41@@2 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_41@@2 val))
)) (forall ((o_9@@49 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv67 o_9@@49)) (< NoPerm FullPerm)) (qpRange67 o_9@@49)) (and (=> (< NoPerm FullPerm) (= (invRecv67 o_9@@49) o_9@@49)) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@5) o_9@@49 val) (+ (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@4) o_9@@49 val) FullPerm)))) (=> (not (and (and (select g_1 (invRecv67 o_9@@49)) (< NoPerm FullPerm)) (qpRange67 o_9@@49))) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@5) o_9@@49 val) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@4) o_9@@49 val))))
 :qid |stdinbpl.5378:26|
 :skolemid |578|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@5) o_9@@49 val))
)))) (=> (and (and (and (and (and (forall ((o_9@@50 T@Ref) (f_5@@34 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@4) o_9@@50 f_5@@34) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@5) o_9@@50 f_5@@34)))
 :qid |stdinbpl.5382:33|
 :skolemid |579|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@4) o_9@@50 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@5) o_9@@50 f_5@@34))
)) (forall ((o_9@@51 T@Ref) (f_5@@35 T@Field_74000_74001) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@4) o_9@@51 f_5@@35) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@5) o_9@@51 f_5@@35)))
 :qid |stdinbpl.5382:33|
 :skolemid |579|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@4) o_9@@51 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@5) o_9@@51 f_5@@35))
))) (forall ((o_9@@52 T@Ref) (f_5@@36 T@Field_83161_6878) ) (!  (=> (not (= f_5@@36 val)) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@4) o_9@@52 f_5@@36) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@5) o_9@@52 f_5@@36)))
 :qid |stdinbpl.5382:33|
 :skolemid |579|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@4) o_9@@52 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@5) o_9@@52 f_5@@36))
))) (forall ((o_9@@53 T@Ref) (f_5@@37 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@4) o_9@@53 f_5@@37) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@5) o_9@@53 f_5@@37)))
 :qid |stdinbpl.5382:33|
 :skolemid |579|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@4) o_9@@53 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@5) o_9@@53 f_5@@37))
))) (forall ((o_9@@54 T@Ref) (f_5@@38 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@4) o_9@@54 f_5@@38) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@5) o_9@@54 f_5@@38)))
 :qid |stdinbpl.5382:33|
 :skolemid |579|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@4) o_9@@54 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@5) o_9@@54 f_5@@38))
))) (and (and (state ExhaleHeap@0 QPMask@5) (forall ((n_42 T@Ref) ) (!  (=> (and (select g_1 n_42) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_42 next) start_1@@1))) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_42 val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_42 next) val)))
 :qid |stdinbpl.5388:24|
 :skolemid |580|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_42 next) val))
))) (and (forall ((n_43 T@Ref) ) (!  (=> (and (select g_1 n_43) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_43 next) start_1@@1)) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_43 next) val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_43 val)))
 :qid |stdinbpl.5392:24|
 :skolemid |581|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_43 next) val))
)) (state ExhaleHeap@0 QPMask@5)))) (and (=> (= (ControlFlow 0 325) (- 0 326)) (HasDirectPerm_48852_6878 QPMask@5 node@0 val)) (=> (HasDirectPerm_48852_6878 QPMask@5 node@0 val) (and (=> (= (ControlFlow 0 325) 321) anon350_Then_correct) (=> (= (ControlFlow 0 325) 324) anon350_Else_correct)))))))))))))))
(let ((anon186_correct true))
(let ((anon373_Else_correct  (=> (and (not (and (select new_g@0 n$0_8) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_8 next) null)))) (= (ControlFlow 0 237) 234)) anon186_correct)))
(let ((anon373_Then_correct  (=> (and (select new_g@0 n$0_8) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_8 next) null))) (and (=> (= (ControlFlow 0 235) (- 0 236)) (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_8 next))) (=> (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_8 next)) (=> (= (ControlFlow 0 235) 234) anon186_correct))))))
(let ((anon214_correct true))
(let ((anon387_Else_correct  (=> (and (not (and (select new_g@0 n$0_12_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$0_12_1 next) null)))) (= (ControlFlow 0 183) 180)) anon214_correct)))
(let ((anon387_Then_correct  (=> (and (select new_g@0 n$0_12_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$0_12_1 next) null))) (and (=> (= (ControlFlow 0 181) (- 0 182)) (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$0_12_1 next))) (=> (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$0_12_1 next)) (=> (= (ControlFlow 0 181) 180) anon214_correct))))))
(let ((anon272_correct true))
(let ((anon417_Else_correct  (=> (and (not (and (select new_g@0 n_23) (select new_g@0 m_4_1))) (= (ControlFlow 0 137) 133)) anon272_correct)))
(let ((anon417_Then_correct  (=> (and (select new_g@0 n_23) (select new_g@0 m_4_1)) (and (=> (= (ControlFlow 0 134) (- 0 136)) (exists_path ($$ ExhaleHeap@5 new_g@0) n_23 m_4_1)) (=> (exists_path ($$ ExhaleHeap@5 new_g@0) n_23 m_4_1) (and (=> (= (ControlFlow 0 134) (- 0 135)) (exists_path ($$ ExhaleHeap@5 new_g@0) m_4_1 n_23)) (=> (exists_path ($$ ExhaleHeap@5 new_g@0) m_4_1 n_23) (=> (= (ControlFlow 0 134) 133) anon272_correct))))))))
(let ((anon416_Else_correct true))
(let ((anon414_Else_correct  (=> (forall ((n_22_1_1 T@Ref) ) (!  (=> (and (select new_g@0 n_22_1_1) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n_22_1_1 next) new_start@0)) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n_22_1_1 next) val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) n_22_1_1 val)))
 :qid |stdinbpl.6808:20|
 :skolemid |749|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n_22_1_1 next) val))
)) (and (and (=> (= (ControlFlow 0 138) 132) anon416_Else_correct) (=> (= (ControlFlow 0 138) 134) anon417_Then_correct)) (=> (= (ControlFlow 0 138) 137) anon417_Else_correct)))))
(let ((anon268_correct true))
(let ((anon415_Else_correct  (=> (and (not (and (select new_g@0 n_21) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n_21 next) new_start@0))) (= (ControlFlow 0 131) 128)) anon268_correct)))
(let ((anon415_Then_correct  (=> (and (select new_g@0 n_21) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n_21 next) new_start@0)) (and (=> (= (ControlFlow 0 129) (- 0 130)) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n_21 next) val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) n_21 val))) (=> (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n_21 next) val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) n_21 val)) (=> (= (ControlFlow 0 129) 128) anon268_correct))))))
(let ((anon412_Else_correct  (=> (forall ((n_20_1_1 T@Ref) ) (!  (=> (and (select new_g@0 n_20_1_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n_20_1_1 next) new_start@0))) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) n_20_1_1 val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n_20_1_1 next) val)))
 :qid |stdinbpl.6797:20|
 :skolemid |748|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n_20_1_1 next) val))
)) (and (and (=> (= (ControlFlow 0 139) 138) anon414_Else_correct) (=> (= (ControlFlow 0 139) 129) anon415_Then_correct)) (=> (= (ControlFlow 0 139) 131) anon415_Else_correct)))))
(let ((anon264_correct true))
(let ((anon413_Else_correct  (=> (and (not (and (select new_g@0 n_19) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n_19 next) new_start@0)))) (= (ControlFlow 0 127) 124)) anon264_correct)))
(let ((anon413_Then_correct  (=> (and (select new_g@0 n_19) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n_19 next) new_start@0))) (and (=> (= (ControlFlow 0 125) (- 0 126)) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) n_19 val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n_19 next) val))) (=> (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) n_19 val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n_19 next) val)) (=> (= (ControlFlow 0 125) 124) anon264_correct))))))
(let ((anon410_Else_correct  (=> (forall ((v$2_3_1 T@Ref) ) (!  (=> (select new_g@0 v$2_3_1) (= (= v$2_3_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) v$2_3_1 next)) (|Set#Equal_49043| new_g@0 (|Set#Singleton_49733| v$2_3_1))))
 :qid |stdinbpl.6737:20|
 :skolemid |741|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) v$2_3_1 next))
)) (and (=> (= (ControlFlow 0 140) (- 0 146)) (select new_g@0 new_start@0)) (=> (select new_g@0 new_start@0) (and (=> (= (ControlFlow 0 140) (- 0 145)) (forall ((n_18 T@Ref) (n_18_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_18 n_18_1)) (select new_g@0 n_18)) (select new_g@0 n_18_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_18 n_18_1)))
 :qid |stdinbpl.6750:17|
 :skolemid |742|
 :pattern ( (neverTriggered59 n_18) (neverTriggered59 n_18_1))
))) (=> (forall ((n_18@@0 T@Ref) (n_18_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_18@@0 n_18_1@@0)) (select new_g@0 n_18@@0)) (select new_g@0 n_18_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_18@@0 n_18_1@@0)))
 :qid |stdinbpl.6750:17|
 :skolemid |742|
 :pattern ( (neverTriggered59 n_18@@0) (neverTriggered59 n_18_1@@0))
)) (and (=> (= (ControlFlow 0 140) (- 0 144)) (forall ((n_18@@1 T@Ref) ) (!  (=> (select new_g@0 n_18@@1) (>= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@18) n_18@@1 val) FullPerm))
 :qid |stdinbpl.6757:17|
 :skolemid |743|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) n_18@@1 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@19) n_18@@1 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) n_18@@1 val))
))) (=> (forall ((n_18@@2 T@Ref) ) (!  (=> (select new_g@0 n_18@@2) (>= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@18) n_18@@2 val) FullPerm))
 :qid |stdinbpl.6757:17|
 :skolemid |743|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) n_18@@2 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@19) n_18@@2 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) n_18@@2 val))
)) (=> (forall ((n_18@@3 T@Ref) ) (!  (=> (and (select new_g@0 n_18@@3) (< NoPerm FullPerm)) (and (qpRange59 n_18@@3) (= (invRecv59 n_18@@3) n_18@@3)))
 :qid |stdinbpl.6763:22|
 :skolemid |744|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) n_18@@3 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@19) n_18@@3 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) n_18@@3 val))
)) (=> (and (forall ((o_9@@55 T@Ref) ) (!  (=> (and (select new_g@0 (invRecv59 o_9@@55)) (and (< NoPerm FullPerm) (qpRange59 o_9@@55))) (= (invRecv59 o_9@@55) o_9@@55))
 :qid |stdinbpl.6767:22|
 :skolemid |745|
 :pattern ( (invRecv59 o_9@@55))
)) (forall ((o_9@@56 T@Ref) ) (!  (and (=> (and (select new_g@0 (invRecv59 o_9@@56)) (and (< NoPerm FullPerm) (qpRange59 o_9@@56))) (and (= (invRecv59 o_9@@56) o_9@@56) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@19) o_9@@56 val) (- (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@18) o_9@@56 val) FullPerm)))) (=> (not (and (select new_g@0 (invRecv59 o_9@@56)) (and (< NoPerm FullPerm) (qpRange59 o_9@@56)))) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@19) o_9@@56 val) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@18) o_9@@56 val))))
 :qid |stdinbpl.6773:22|
 :skolemid |746|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@19) o_9@@56 val))
))) (=> (and (and (and (and (forall ((o_9@@57 T@Ref) (f_5@@39 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@18) o_9@@57 f_5@@39) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@19) o_9@@57 f_5@@39)))
 :qid |stdinbpl.6779:29|
 :skolemid |747|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@19) o_9@@57 f_5@@39))
)) (forall ((o_9@@58 T@Ref) (f_5@@40 T@Field_74000_74001) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@18) o_9@@58 f_5@@40) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@19) o_9@@58 f_5@@40)))
 :qid |stdinbpl.6779:29|
 :skolemid |747|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@19) o_9@@58 f_5@@40))
))) (forall ((o_9@@59 T@Ref) (f_5@@41 T@Field_83161_6878) ) (!  (=> (not (= f_5@@41 val)) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@18) o_9@@59 f_5@@41) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@19) o_9@@59 f_5@@41)))
 :qid |stdinbpl.6779:29|
 :skolemid |747|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@19) o_9@@59 f_5@@41))
))) (forall ((o_9@@60 T@Ref) (f_5@@42 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@18) o_9@@60 f_5@@42) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@19) o_9@@60 f_5@@42)))
 :qid |stdinbpl.6779:29|
 :skolemid |747|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@19) o_9@@60 f_5@@42))
))) (forall ((o_9@@61 T@Ref) (f_5@@43 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@18) o_9@@61 f_5@@43) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@19) o_9@@61 f_5@@43)))
 :qid |stdinbpl.6779:29|
 :skolemid |747|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@19) o_9@@61 f_5@@43))
))) (and (=> (= (ControlFlow 0 140) (- 0 143)) (not (select g_1 new_node@0))) (=> (not (select g_1 new_node@0)) (and (=> (= (ControlFlow 0 140) (- 0 142)) (select new_g@0 new_node@0)) (=> (select new_g@0 new_node@0) (and (=> (= (ControlFlow 0 140) (- 0 141)) (= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) new_node@0 val) x@@14)) (=> (= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@5) new_node@0 val) x@@14) (and (and (=> (= (ControlFlow 0 140) 139) anon412_Else_correct) (=> (= (ControlFlow 0 140) 125) anon413_Then_correct)) (=> (= (ControlFlow 0 140) 127) anon413_Else_correct))))))))))))))))))))
(let ((anon260_correct true))
(let ((anon411_Else_correct  (=> (and (not (select new_g@0 v$2_2_1)) (= (ControlFlow 0 123) 120)) anon260_correct)))
(let ((anon411_Then_correct  (=> (select new_g@0 v$2_2_1) (and (=> (= (ControlFlow 0 121) (- 0 122)) (= (= v$2_2_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) v$2_2_1 next)) (|Set#Equal_49043| new_g@0 (|Set#Singleton_49733| v$2_2_1)))) (=> (= (= v$2_2_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) v$2_2_1 next)) (|Set#Equal_49043| new_g@0 (|Set#Singleton_49733| v$2_2_1))) (=> (= (ControlFlow 0 121) 120) anon260_correct))))))
(let ((anon407_Else_correct  (=> (forall ((v1$0_3_1 T@Ref) (v2$0_3_1 T@Ref) (v$1_3_1 T@Ref) ) (!  (=> (and (select new_g@0 v1$0_3_1) (and (select new_g@0 v2$0_3_1) (select new_g@0 v$1_3_1))) (=> (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) v1$0_3_1 next) v$1_3_1) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) v2$0_3_1 next) v$1_3_1)) (= v1$0_3_1 v2$0_3_1)))
 :qid |stdinbpl.6726:20|
 :skolemid |740|
 :pattern ( (select new_g@0 v$1_3_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) v1$0_3_1 next) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) v2$0_3_1 next))
)) (and (and (=> (= (ControlFlow 0 147) 140) anon410_Else_correct) (=> (= (ControlFlow 0 147) 121) anon411_Then_correct)) (=> (= (ControlFlow 0 147) 123) anon411_Else_correct)))))
(let ((anon256_correct true))
(let ((anon409_Else_correct  (=> (and (not (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) v1$0_2 next) v$1_2_1) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) v2$0_2 next) v$1_2_1))) (= (ControlFlow 0 118) 114)) anon256_correct)))
(let ((anon409_Then_correct  (=> (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) v1$0_2 next) v$1_2_1) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) v2$0_2 next) v$1_2_1)) (and (=> (= (ControlFlow 0 116) (- 0 117)) (= v1$0_2 v2$0_2)) (=> (= v1$0_2 v2$0_2) (=> (= (ControlFlow 0 116) 114) anon256_correct))))))
(let ((anon408_Then_correct  (=> (and (select new_g@0 v1$0_2) (and (select new_g@0 v2$0_2) (select new_g@0 v$1_2_1))) (and (=> (= (ControlFlow 0 119) 116) anon409_Then_correct) (=> (= (ControlFlow 0 119) 118) anon409_Else_correct)))))
(let ((anon408_Else_correct  (=> (and (not (and (select new_g@0 v1$0_2) (and (select new_g@0 v2$0_2) (select new_g@0 v$1_2_1)))) (= (ControlFlow 0 115) 114)) anon256_correct)))
(let ((anon405_Else_correct  (=> (forall ((n$2_3_1 T@Ref) ) (!  (=> (select new_g@0 n$2_3_1) (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$2_3_1 next)))
 :qid |stdinbpl.6713:20|
 :skolemid |739|
 :pattern ( (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$2_3_1 next)))
 :pattern ( (select new_g@0 n$2_3_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$2_3_1 next))
)) (and (and (=> (= (ControlFlow 0 148) 147) anon407_Else_correct) (=> (= (ControlFlow 0 148) 119) anon408_Then_correct)) (=> (= (ControlFlow 0 148) 115) anon408_Else_correct)))))
(let ((anon251_correct true))
(let ((anon406_Else_correct  (=> (and (not (select new_g@0 n$2_2)) (= (ControlFlow 0 113) 110)) anon251_correct)))
(let ((anon406_Then_correct  (=> (select new_g@0 n$2_2) (and (=> (= (ControlFlow 0 111) (- 0 112)) (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$2_2 next))) (=> (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$2_2 next)) (=> (= (ControlFlow 0 111) 110) anon251_correct))))))
(let ((anon403_Else_correct  (=> (and (forall ((n_71_1 T@Ref) (m_16_1 T@Ref) ) (!  (=> (and (select new_g@0 n_71_1) (select new_g@0 m_16_1)) (and (exists_path ($$ ExhaleHeap@5 new_g@0) n_71_1 node@0) (exists_path ($$ ExhaleHeap@5 new_g@0) node@0 m_16_1)))
 :qid |stdinbpl.6654:20|
 :skolemid |732|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@5 new_g@0)) new_g@0) n_71_1 m_16_1))
)) (state ExhaleHeap@5 QPMask@17)) (and (=> (= (ControlFlow 0 149) (- 0 152)) (not (select new_g@0 null))) (=> (not (select new_g@0 null)) (and (=> (= (ControlFlow 0 149) (- 0 151)) (forall ((n$1_2 T@Ref) (n$1_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_2 n$1_2_1)) (select new_g@0 n$1_2)) (select new_g@0 n$1_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_2 n$1_2_1)))
 :qid |stdinbpl.6672:17|
 :skolemid |733|
 :pattern ( (neverTriggered58 n$1_2) (neverTriggered58 n$1_2_1))
))) (=> (forall ((n$1_2@@0 T@Ref) (n$1_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_2@@0 n$1_2_1@@0)) (select new_g@0 n$1_2@@0)) (select new_g@0 n$1_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_2@@0 n$1_2_1@@0)))
 :qid |stdinbpl.6672:17|
 :skolemid |733|
 :pattern ( (neverTriggered58 n$1_2@@0) (neverTriggered58 n$1_2_1@@0))
)) (and (=> (= (ControlFlow 0 149) (- 0 150)) (forall ((n$1_2@@1 T@Ref) ) (!  (=> (select new_g@0 n$1_2@@1) (>= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) n$1_2@@1 next) FullPerm))
 :qid |stdinbpl.6679:17|
 :skolemid |734|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$1_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@18) n$1_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$1_2@@1 next))
))) (=> (forall ((n$1_2@@2 T@Ref) ) (!  (=> (select new_g@0 n$1_2@@2) (>= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) n$1_2@@2 next) FullPerm))
 :qid |stdinbpl.6679:17|
 :skolemid |734|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$1_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@18) n$1_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$1_2@@2 next))
)) (=> (forall ((n$1_2@@3 T@Ref) ) (!  (=> (and (select new_g@0 n$1_2@@3) (< NoPerm FullPerm)) (and (qpRange58 n$1_2@@3) (= (invRecv58 n$1_2@@3) n$1_2@@3)))
 :qid |stdinbpl.6685:22|
 :skolemid |735|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$1_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@18) n$1_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$1_2@@3 next))
)) (=> (and (forall ((o_9@@62 T@Ref) ) (!  (=> (and (select new_g@0 (invRecv58 o_9@@62)) (and (< NoPerm FullPerm) (qpRange58 o_9@@62))) (= (invRecv58 o_9@@62) o_9@@62))
 :qid |stdinbpl.6689:22|
 :skolemid |736|
 :pattern ( (invRecv58 o_9@@62))
)) (forall ((o_9@@63 T@Ref) ) (!  (and (=> (and (select new_g@0 (invRecv58 o_9@@63)) (and (< NoPerm FullPerm) (qpRange58 o_9@@63))) (and (= (invRecv58 o_9@@63) o_9@@63) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@18) o_9@@63 next) (- (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) o_9@@63 next) FullPerm)))) (=> (not (and (select new_g@0 (invRecv58 o_9@@63)) (and (< NoPerm FullPerm) (qpRange58 o_9@@63)))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@18) o_9@@63 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) o_9@@63 next))))
 :qid |stdinbpl.6695:22|
 :skolemid |737|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@18) o_9@@63 next))
))) (=> (and (and (and (and (forall ((o_9@@64 T@Ref) (f_5@@44 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@17) o_9@@64 f_5@@44) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@18) o_9@@64 f_5@@44)))
 :qid |stdinbpl.6701:29|
 :skolemid |738|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@18) o_9@@64 f_5@@44))
)) (forall ((o_9@@65 T@Ref) (f_5@@45 T@Field_74000_74001) ) (!  (=> (not (= f_5@@45 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) o_9@@65 f_5@@45) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@18) o_9@@65 f_5@@45)))
 :qid |stdinbpl.6701:29|
 :skolemid |738|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@18) o_9@@65 f_5@@45))
))) (forall ((o_9@@66 T@Ref) (f_5@@46 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@17) o_9@@66 f_5@@46) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@18) o_9@@66 f_5@@46)))
 :qid |stdinbpl.6701:29|
 :skolemid |738|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@18) o_9@@66 f_5@@46))
))) (forall ((o_9@@67 T@Ref) (f_5@@47 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@17) o_9@@67 f_5@@47) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@18) o_9@@67 f_5@@47)))
 :qid |stdinbpl.6701:29|
 :skolemid |738|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@18) o_9@@67 f_5@@47))
))) (forall ((o_9@@68 T@Ref) (f_5@@48 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@17) o_9@@68 f_5@@48) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@18) o_9@@68 f_5@@48)))
 :qid |stdinbpl.6701:29|
 :skolemid |738|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@18) o_9@@68 f_5@@48))
))) (and (and (=> (= (ControlFlow 0 149) 148) anon405_Else_correct) (=> (= (ControlFlow 0 149) 111) anon406_Then_correct)) (=> (= (ControlFlow 0 149) 113) anon406_Else_correct))))))))))))))
(let ((anon247_correct true))
(let ((anon404_Else_correct  (=> (and (not (and (select new_g@0 n_70_1) (select new_g@0 m_15))) (= (ControlFlow 0 109) 105)) anon247_correct)))
(let ((anon404_Then_correct  (=> (and (select new_g@0 n_70_1) (select new_g@0 m_15)) (and (=> (= (ControlFlow 0 106) (- 0 108)) (exists_path ($$ ExhaleHeap@5 new_g@0) n_70_1 node@0)) (=> (exists_path ($$ ExhaleHeap@5 new_g@0) n_70_1 node@0) (and (=> (= (ControlFlow 0 106) (- 0 107)) (exists_path ($$ ExhaleHeap@5 new_g@0) node@0 m_15)) (=> (exists_path ($$ ExhaleHeap@5 new_g@0) node@0 m_15) (=> (= (ControlFlow 0 106) 105) anon247_correct))))))))
(let ((anon402_Then_correct  (and (=> (= (ControlFlow 0 100) (- 0 102)) (forall ((n$0_17_2 T@Ref) ) (!  (=> (and (select new_g@0 n$0_17_2) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$0_17_2 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.6606:27|
 :skolemid |727|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$0_17_2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@21) n$0_17_2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$0_17_2 next))
))) (=> (forall ((n$0_17_2@@0 T@Ref) ) (!  (=> (and (select new_g@0 n$0_17_2@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$0_17_2@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.6606:27|
 :skolemid |727|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$0_17_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@21) n$0_17_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$0_17_2@@0 next))
)) (and (=> (= (ControlFlow 0 100) (- 0 101)) (forall ((n$0_17_2@@1 T@Ref) (n$0_17_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_17_2@@1 n$0_17_3)) (select new_g@0 n$0_17_2@@1)) (select new_g@0 n$0_17_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_17_2@@1 n$0_17_3)))
 :qid |stdinbpl.6613:27|
 :skolemid |728|
 :pattern ( (neverTriggered83 n$0_17_2@@1) (neverTriggered83 n$0_17_3))
))) (=> (forall ((n$0_17_2@@2 T@Ref) (n$0_17_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_17_2@@2 n$0_17_3@@0)) (select new_g@0 n$0_17_2@@2)) (select new_g@0 n$0_17_3@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_17_2@@2 n$0_17_3@@0)))
 :qid |stdinbpl.6613:27|
 :skolemid |728|
 :pattern ( (neverTriggered83 n$0_17_2@@2) (neverTriggered83 n$0_17_3@@0))
)) (=> (= (ControlFlow 0 100) (- 0 99)) (forall ((n$0_17_2@@3 T@Ref) ) (!  (=> (select new_g@0 n$0_17_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) n$0_17_2@@3 next) NoPerm)))
 :qid |stdinbpl.6620:27|
 :skolemid |729|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$0_17_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@21) n$0_17_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$0_17_2@@3 next))
)))))))))
(let ((anon400_Then_correct  (and (=> (= (ControlFlow 0 95) (- 0 97)) (forall ((n$0_16_1 T@Ref) ) (!  (=> (and (select new_g@0 n$0_16_1) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$0_16_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.6562:25|
 :skolemid |722|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$0_16_1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@20) n$0_16_1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$0_16_1 next))
))) (=> (forall ((n$0_16_1@@0 T@Ref) ) (!  (=> (and (select new_g@0 n$0_16_1@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$0_16_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.6562:25|
 :skolemid |722|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$0_16_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@20) n$0_16_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$0_16_1@@0 next))
)) (and (=> (= (ControlFlow 0 95) (- 0 96)) (forall ((n$0_16_1@@1 T@Ref) (n$0_16_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_16_1@@1 n$0_16_2)) (select new_g@0 n$0_16_1@@1)) (select new_g@0 n$0_16_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_16_1@@1 n$0_16_2)))
 :qid |stdinbpl.6569:25|
 :skolemid |723|
 :pattern ( (neverTriggered82 n$0_16_1@@1) (neverTriggered82 n$0_16_2))
))) (=> (forall ((n$0_16_1@@2 T@Ref) (n$0_16_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_16_1@@2 n$0_16_2@@0)) (select new_g@0 n$0_16_1@@2)) (select new_g@0 n$0_16_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_16_1@@2 n$0_16_2@@0)))
 :qid |stdinbpl.6569:25|
 :skolemid |723|
 :pattern ( (neverTriggered82 n$0_16_1@@2) (neverTriggered82 n$0_16_2@@0))
)) (=> (= (ControlFlow 0 95) (- 0 94)) (forall ((n$0_16_1@@3 T@Ref) ) (!  (=> (select new_g@0 n$0_16_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) n$0_16_1@@3 next) NoPerm)))
 :qid |stdinbpl.6576:25|
 :skolemid |724|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$0_16_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@20) n$0_16_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$0_16_1@@3 next))
)))))))))
(let ((anon243_correct true))
(let ((anon401_Then_correct  (=> (exists_path ($$ ExhaleHeap@5 new_g@0) n_77 node@0) (and (=> (= (ControlFlow 0 103) 100) anon402_Then_correct) (=> (= (ControlFlow 0 103) 92) anon243_correct)))))
(let ((anon401_Else_correct  (=> (and (not (exists_path ($$ ExhaleHeap@5 new_g@0) n_77 node@0)) (= (ControlFlow 0 98) 92)) anon243_correct)))
(let ((anon399_Then_correct  (=> (and (select new_g@0 n_77) (select new_g@0 m_12)) (and (and (=> (= (ControlFlow 0 104) 95) anon400_Then_correct) (=> (= (ControlFlow 0 104) 103) anon401_Then_correct)) (=> (= (ControlFlow 0 104) 98) anon401_Else_correct)))))
(let ((anon399_Else_correct  (=> (and (not (and (select new_g@0 n_77) (select new_g@0 m_12))) (= (ControlFlow 0 93) 92)) anon243_correct)))
(let ((anon236_correct  (=> (and (state ExhaleHeap@5 QPMask@17) (forall ((n_65_1 T@Ref) ) (!  (=> (and (select new_g@0 n_65_1) (not (= n_65_1 node@0))) (__learn_trigger__ (DEP ($$ ExhaleHeap@5 new_g@0) node@0 n_65_1 node@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) node@0 next))))
 :qid |stdinbpl.6522:22|
 :skolemid |718|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@5 new_g@0)) new_g@0) new_node@0 n_65_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@5 new_g@0)) new_g@0) node@0 n_65_1))
))) (=> (and (and (and (state ExhaleHeap@5 QPMask@17) (forall ((n_66_1 T@Ref) ) (!  (=> (and (select new_g@0 n_66_1) (not (= n_66_1 new_node@0))) (__learn_trigger__ (DEP ($$ ExhaleHeap@5 new_g@0) new_node@0 n_66_1 new_node@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) new_node@0 next))))
 :qid |stdinbpl.6527:22|
 :skolemid |719|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@5 new_g@0)) new_g@0) new_node@0 n_66_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@5 new_g@0)) new_g@0) node@0 n_66_1))
))) (and (state ExhaleHeap@5 QPMask@17) (forall ((n_67_1 T@Ref) ) (!  (=> (and (select new_g@0 n_67_1) (not (= n_67_1 node@0))) (__learn_trigger__ (DEP ($$ ExhaleHeap@5 new_g@0) n_67_1 node@0 n_67_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n_67_1 next))))
 :qid |stdinbpl.6532:22|
 :skolemid |720|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@5 new_g@0)) new_g@0) n_67_1 new_node@0))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@5 new_g@0)) new_g@0) n_67_1 node@0))
)))) (and (and (state ExhaleHeap@5 QPMask@17) (forall ((n_68_1 T@Ref) ) (!  (=> (select new_g@0 n_68_1) (and (__learn_trigger__ (exists_path ($$ ExhaleHeap@5 new_g@0) new_node@0 n_68_1)) (__learn_trigger__ (exists_path ($$ Heap@1 new_g@0) new_node@0 n_68_1))))
 :qid |stdinbpl.6537:22|
 :skolemid |721|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@5 new_g@0)) new_g@0) new_node@0 n_68_1 new_node@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) new_node@0 next)))
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@5 new_g@0)) new_g@0) node@0 n_68_1 node@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) node@0 next)))
))) (and (state ExhaleHeap@5 QPMask@17) (state ExhaleHeap@5 QPMask@17)))) (and (and (and (and (=> (= (ControlFlow 0 153) 149) anon403_Else_correct) (=> (= (ControlFlow 0 153) 106) anon404_Then_correct)) (=> (= (ControlFlow 0 153) 109) anon404_Else_correct)) (=> (= (ControlFlow 0 153) 104) anon399_Then_correct)) (=> (= (ControlFlow 0 153) 93) anon399_Else_correct))))))
(let ((anon397_Else_correct  (=> (and (= new_node@0 null) (= (ControlFlow 0 155) 153)) anon236_correct)))
(let ((anon397_Then_correct  (=> (and (and (not (= new_node@0 null)) (state ExhaleHeap@5 QPMask@17)) (and (forall ((x$0_5 T@Ref) (y_5_2 T@Ref) (u_5_2 T@Ref) (v_7 T@Ref) ) (!  (=> (and (DEP ($$ ExhaleHeap@5 new_g@0) x$0_5 y_5_2 u_5_2 v_7) (not (DEP ($$ ExhaleHeap@5 new_g@0) x$0_5 y_5_2 node@0 new_node@0))) (DEP ($$ Heap@1 new_g@0) x$0_5 y_5_2 u_5_2 v_7))
 :qid |stdinbpl.6516:24|
 :skolemid |717|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@5 new_g@0)) new_g@0) x$0_5 y_5_2 u_5_2 v_7))
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@1 new_g@0)) new_g@0) x$0_5 y_5_2 u_5_2 v_7))
)) (= (ControlFlow 0 154) 153))) anon236_correct)))
(let ((anon396_Else_correct  (=> (= new_node@0 null) (and (=> (= (ControlFlow 0 157) 154) anon397_Then_correct) (=> (= (ControlFlow 0 157) 155) anon397_Else_correct)))))
(let ((anon396_Then_correct  (=> (not (= new_node@0 null)) (=> (and (state ExhaleHeap@5 QPMask@17) (forall ((x$0_4 T@Ref) (y_4_1 T@Ref) (u_4@@0 T@Ref) (v_6_1 T@Ref) ) (!  (=> (and (not (= node@0 new_node@0)) (and (not (= u_4@@0 v_6_1)) (not (= x$0_4 y_4_1)))) (=> (or (DEP ($$ Heap@1 new_g@0) x$0_4 y_4_1 u_4@@0 v_6_1) (or (and (= x$0_4 node@0) (and (= u_4@@0 node@0) (and (= y_4_1 new_node@0) (= v_6_1 new_node@0)))) (or (exists ((w_2_2 T@Ref) (z_2 T@Ref) ) (!  (and (forall ((u__3 T@Ref) (v__3 T@Ref) ) (!  (not (DEP ($$ Heap@1 new_g@0) x$0_4 y_4_1 u__3 v__3))
 :qid |stdinbpl.6495:21|
 :skolemid |710|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@1 new_g@0)) new_g@0) x$0_4 y_4_1 u__3 v__3))
)) (and (or (and (DEP ($$ Heap@1 new_g@0) x$0_4 node@0 u_4@@0 v_6_1) (not (= x$0_4 node@0))) (and (= x$0_4 u_4@@0) (and (= u_4@@0 node@0) (= v_6_1 new_node@0)))) (or (and (DEP ($$ Heap@1 new_g@0) new_node@0 y_4_1 w_2_2 z_2) (not (= new_node@0 y_4_1))) (and (= node@0 w_2_2) (and (= new_node@0 z_2) (= z_2 y_4_1))))))
 :qid |stdinbpl.6493:223|
 :skolemid |711|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@1 new_g@0)) new_g@0) new_node@0 y_4_1 w_2_2 z_2))
)) (or (exists ((U_2_1 T@Ref) (V_2_1 T@Ref) ) (!  (and (forall ((u__4 T@Ref) (v__4 T@Ref) ) (!  (not (DEP ($$ Heap@1 new_g@0) x$0_4 y_4_1 u__4 v__4))
 :qid |stdinbpl.6501:21|
 :skolemid |712|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@1 new_g@0)) new_g@0) x$0_4 y_4_1 u__4 v__4))
)) (and (or (and (DEP ($$ Heap@1 new_g@0) x$0_4 node@0 U_2_1 V_2_1) (not (= x$0_4 node@0))) (and (= x$0_4 U_2_1) (and (= U_2_1 node@0) (= V_2_1 new_node@0)))) (or (and (DEP ($$ Heap@1 new_g@0) new_node@0 y_4_1 u_4@@0 v_6_1) (not (= new_node@0 y_4_1))) (and (= node@0 u_4@@0) (and (= new_node@0 v_6_1) (= v_6_1 y_4_1))))))
 :qid |stdinbpl.6499:25|
 :skolemid |713|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@1 new_g@0)) new_g@0) x$0_4 node@0 U_2_1 V_2_1))
)) (and (= u_4@@0 node@0) (and (= v_6_1 new_node@0) (exists ((U_3_1 T@Ref) (V_3 T@Ref) (w_3_1 T@Ref) (z_3 T@Ref) ) (!  (and (forall ((u__5 T@Ref) (v__5 T@Ref) ) (!  (not (DEP ($$ Heap@1 new_g@0) x$0_4 y_4_1 u__5 v__5))
 :qid |stdinbpl.6507:21|
 :skolemid |714|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@1 new_g@0)) new_g@0) x$0_4 y_4_1 u__5 v__5))
)) (and (or (and (DEP ($$ Heap@1 new_g@0) x$0_4 node@0 U_3_1 V_3) (not (= x$0_4 node@0))) (and (= x$0_4 U_3_1) (and (= U_3_1 node@0) (= V_3 new_node@0)))) (or (and (DEP ($$ Heap@1 new_g@0) new_node@0 y_4_1 w_3_1 z_3) (not (= new_node@0 y_4_1))) (and (= node@0 w_3_1) (and (= new_node@0 z_3) (= z_3 y_4_1))))))
 :qid |stdinbpl.6505:62|
 :skolemid |715|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@1 new_g@0)) new_g@0) x$0_4 node@0 U_3_1 V_3) (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@1 new_g@0)) new_g@0) new_node@0 y_4_1 w_3_1 z_3))
)))))))) (DEP ($$ ExhaleHeap@5 new_g@0) x$0_4 y_4_1 u_4@@0 v_6_1)))
 :qid |stdinbpl.6491:24|
 :skolemid |716|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@5 new_g@0)) new_g@0) x$0_4 y_4_1 u_4@@0 v_6_1))
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@1 new_g@0)) new_g@0) x$0_4 y_4_1 u_4@@0 v_6_1))
))) (and (=> (= (ControlFlow 0 156) 154) anon397_Then_correct) (=> (= (ControlFlow 0 156) 155) anon397_Else_correct))))))
(let ((anon395_Else_correct  (=> (= new_node@0 null) (and (=> (= (ControlFlow 0 159) 156) anon396_Then_correct) (=> (= (ControlFlow 0 159) 157) anon396_Else_correct)))))
(let ((anon395_Then_correct  (=> (not (= new_node@0 null)) (=> (and (state ExhaleHeap@5 QPMask@17) (forall ((v1_5_2 T@Ref) (v2_5_2 T@Ref) ) (! (= (edge ($$ ExhaleHeap@5 new_g@0) v1_5_2 v2_5_2)  (or (edge ($$ Heap@1 new_g@0) v1_5_2 v2_5_2) (and (= v1_5_2 node@0) (= v2_5_2 new_node@0))))
 :qid |stdinbpl.6484:24|
 :skolemid |709|
 :pattern ( (edge (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@5 new_g@0)) new_g@0) v1_5_2 v2_5_2))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@5 new_g@0)) new_g@0) v1_5_2 v2_5_2))
))) (and (=> (= (ControlFlow 0 158) 156) anon396_Then_correct) (=> (= (ControlFlow 0 158) 157) anon396_Else_correct))))))
(let ((anon394_Else_correct  (=> (not (= new_node@0 null)) (and (=> (= (ControlFlow 0 161) 158) anon395_Then_correct) (=> (= (ControlFlow 0 161) 159) anon395_Else_correct)))))
(let ((anon394_Then_correct  (=> (= new_node@0 null) (=> (and (state ExhaleHeap@5 QPMask@17) (|Set#Equal_48858| ($$ ExhaleHeap@5 new_g@0) ($$ Heap@1 new_g@0))) (and (=> (= (ControlFlow 0 160) 158) anon395_Then_correct) (=> (= (ControlFlow 0 160) 159) anon395_Else_correct))))))
(let ((anon392_Else_correct  (=> (forall ((n$0_15_1 T@Ref) ) (!  (=> (and (select new_g@0 n$0_15_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n$0_15_1 next) null))) (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n$0_15_1 next)))
 :qid |stdinbpl.6413:22|
 :skolemid |700|
 :pattern ( (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n$0_15_1 next)))
 :pattern ( (select new_g@0 n$0_15_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n$0_15_1 next))
)) (and (=> (= (ControlFlow 0 162) (- 0 166)) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) node@0 next) null)) (=> (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) node@0 next) null) (and (=> (= (ControlFlow 0 162) (- 0 165)) (not (exists_path ($$ Heap@1 new_g@0) node@0 new_node@0))) (=> (not (exists_path ($$ Heap@1 new_g@0) node@0 new_node@0)) (=> (and (IdenticalOnKnownLocations Heap@1 ExhaleHeap@5 QPMask@16) (not (select new_g@0 null))) (=> (and (and (select new_g@0 node@0) (not (= node@0 null))) (and (= Mask@11 (PolymorphicMapType_73948 (store (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@16) node@0 next (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@16) node@0 next) FullPerm)) (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@16) (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@16) (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@16) (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@16))) (state ExhaleHeap@5 Mask@11))) (and (=> (= (ControlFlow 0 162) (- 0 164)) (forall ((n$1_6 T@Ref) (n$1_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_6 n$1_6_1)) (and (select new_g@0 n$1_6) (not (= n$1_6 node@0)))) (and (select new_g@0 n$1_6_1) (not (= n$1_6_1 node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_6 n$1_6_1)))
 :qid |stdinbpl.6435:17|
 :skolemid |701|
))) (=> (forall ((n$1_6@@0 T@Ref) (n$1_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_6@@0 n$1_6_1@@0)) (and (select new_g@0 n$1_6@@0) (not (= n$1_6@@0 node@0)))) (and (select new_g@0 n$1_6_1@@0) (not (= n$1_6_1@@0 node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_6@@0 n$1_6_1@@0)))
 :qid |stdinbpl.6435:17|
 :skolemid |701|
)) (=> (and (forall ((n$1_6@@1 T@Ref) ) (!  (=> (and (and (select new_g@0 n$1_6@@1) (not (= n$1_6@@1 node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange81 n$1_6@@1) (= (invRecv81 n$1_6@@1) n$1_6@@1)))
 :qid |stdinbpl.6441:24|
 :skolemid |702|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$1_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) n$1_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$1_6@@1 next))
)) (forall ((o_9@@69 T@Ref) ) (!  (=> (and (and (and (select new_g@0 (invRecv81 o_9@@69)) (not (= (invRecv81 o_9@@69) node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange81 o_9@@69)) (= (invRecv81 o_9@@69) o_9@@69))
 :qid |stdinbpl.6445:24|
 :skolemid |703|
 :pattern ( (invRecv81 o_9@@69))
))) (and (=> (= (ControlFlow 0 162) (- 0 163)) (forall ((n$1_6@@2 T@Ref) ) (!  (=> (and (select new_g@0 n$1_6@@2) (not (= n$1_6@@2 node@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.6451:17|
 :skolemid |704|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$1_6@@2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) n$1_6@@2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$1_6@@2 next))
))) (=> (forall ((n$1_6@@3 T@Ref) ) (!  (=> (and (select new_g@0 n$1_6@@3) (not (= n$1_6@@3 node@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.6451:17|
 :skolemid |704|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$1_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) n$1_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$1_6@@3 next))
)) (=> (and (forall ((n$1_6@@4 T@Ref) ) (!  (=> (and (and (select new_g@0 n$1_6@@4) (not (= n$1_6@@4 node@0))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$1_6@@4 null)))
 :qid |stdinbpl.6457:24|
 :skolemid |705|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$1_6@@4 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) n$1_6@@4 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$1_6@@4 next))
)) (forall ((o_9@@70 T@Ref) ) (!  (and (=> (and (and (and (select new_g@0 (invRecv81 o_9@@70)) (not (= (invRecv81 o_9@@70) node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange81 o_9@@70)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv81 o_9@@70) o_9@@70)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) o_9@@70 next) (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@11) o_9@@70 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select new_g@0 (invRecv81 o_9@@70)) (not (= (invRecv81 o_9@@70) node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange81 o_9@@70))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) o_9@@70 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@11) o_9@@70 next))))
 :qid |stdinbpl.6463:24|
 :skolemid |706|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) o_9@@70 next))
))) (=> (and (and (and (and (and (and (forall ((o_9@@71 T@Ref) (f_5@@49 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@11) o_9@@71 f_5@@49) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@17) o_9@@71 f_5@@49)))
 :qid |stdinbpl.6467:31|
 :skolemid |707|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@11) o_9@@71 f_5@@49))
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@17) o_9@@71 f_5@@49))
)) (forall ((o_9@@72 T@Ref) (f_5@@50 T@Field_74000_74001) ) (!  (=> (not (= f_5@@50 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@11) o_9@@72 f_5@@50) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) o_9@@72 f_5@@50)))
 :qid |stdinbpl.6467:31|
 :skolemid |707|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@11) o_9@@72 f_5@@50))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) o_9@@72 f_5@@50))
))) (forall ((o_9@@73 T@Ref) (f_5@@51 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@11) o_9@@73 f_5@@51) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@17) o_9@@73 f_5@@51)))
 :qid |stdinbpl.6467:31|
 :skolemid |707|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@11) o_9@@73 f_5@@51))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@17) o_9@@73 f_5@@51))
))) (forall ((o_9@@74 T@Ref) (f_5@@52 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@11) o_9@@74 f_5@@52) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@17) o_9@@74 f_5@@52)))
 :qid |stdinbpl.6467:31|
 :skolemid |707|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@11) o_9@@74 f_5@@52))
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@17) o_9@@74 f_5@@52))
))) (forall ((o_9@@75 T@Ref) (f_5@@53 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@11) o_9@@75 f_5@@53) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@17) o_9@@75 f_5@@53)))
 :qid |stdinbpl.6467:31|
 :skolemid |707|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@11) o_9@@75 f_5@@53))
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@17) o_9@@75 f_5@@53))
))) (state ExhaleHeap@5 QPMask@17)) (and (forall ((n$2_7_1 T@Ref) ) (!  (=> (and (select new_g@0 n$2_7_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$2_7_1 next) null))) (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$2_7_1 next)))
 :qid |stdinbpl.6473:22|
 :skolemid |708|
 :pattern ( (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$2_7_1 next)))
 :pattern ( (select new_g@0 n$2_7_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) n$2_7_1 next))
)) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@5) node@0 next) new_node@0))) (and (=> (= (ControlFlow 0 162) 160) anon394_Then_correct) (=> (= (ControlFlow 0 162) 161) anon394_Else_correct))))))))))))))))))
(let ((anon227_correct true))
(let ((anon393_Else_correct  (=> (and (not (and (select new_g@0 n$0_14_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n$0_14_1 next) null)))) (= (ControlFlow 0 91) 88)) anon227_correct)))
(let ((anon393_Then_correct  (=> (and (select new_g@0 n$0_14_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n$0_14_1 next) null))) (and (=> (= (ControlFlow 0 89) (- 0 90)) (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n$0_14_1 next))) (=> (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n$0_14_1 next)) (=> (= (ControlFlow 0 89) 88) anon227_correct))))))
(let ((anon224_correct  (=> (= Mask@10 (PolymorphicMapType_73948 (store (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@9) node@0 next (- (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@9) node@0 next) FullPerm)) (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@9) (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@9) (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@9) (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@9))) (and (=> (= (ControlFlow 0 167) (- 0 170)) (forall ((n_64_1 T@Ref) ) (!  (=> (and (and (select new_g@0 n_64_1) (not (= n_64_1 node@0))) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n_64_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.6365:19|
 :skolemid |693|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n_64_1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@16) n_64_1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n_64_1 next))
))) (=> (forall ((n_64_1@@0 T@Ref) ) (!  (=> (and (and (select new_g@0 n_64_1@@0) (not (= n_64_1@@0 node@0))) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n_64_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.6365:19|
 :skolemid |693|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n_64_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@16) n_64_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n_64_1@@0 next))
)) (and (=> (= (ControlFlow 0 167) (- 0 169)) (forall ((n_64_1@@1 T@Ref) (n_64_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_64_1@@1 n_64_2)) (and (select new_g@0 n_64_1@@1) (not (= n_64_1@@1 node@0)))) (and (select new_g@0 n_64_2) (not (= n_64_2 node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_64_1@@1 n_64_2)))
 :qid |stdinbpl.6372:19|
 :skolemid |694|
 :pattern ( (neverTriggered80 n_64_1@@1) (neverTriggered80 n_64_2))
))) (=> (forall ((n_64_1@@2 T@Ref) (n_64_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_64_1@@2 n_64_2@@0)) (and (select new_g@0 n_64_1@@2) (not (= n_64_1@@2 node@0)))) (and (select new_g@0 n_64_2@@0) (not (= n_64_2@@0 node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_64_1@@2 n_64_2@@0)))
 :qid |stdinbpl.6372:19|
 :skolemid |694|
 :pattern ( (neverTriggered80 n_64_1@@2) (neverTriggered80 n_64_2@@0))
)) (and (=> (= (ControlFlow 0 167) (- 0 168)) (forall ((n_64_1@@3 T@Ref) ) (!  (=> (and (select new_g@0 n_64_1@@3) (not (= n_64_1@@3 node@0))) (>= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@10) n_64_1@@3 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.6379:19|
 :skolemid |695|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n_64_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@16) n_64_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n_64_1@@3 next))
))) (=> (forall ((n_64_1@@4 T@Ref) ) (!  (=> (and (select new_g@0 n_64_1@@4) (not (= n_64_1@@4 node@0))) (>= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@10) n_64_1@@4 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.6379:19|
 :skolemid |695|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n_64_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@16) n_64_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n_64_1@@4 next))
)) (=> (forall ((n_64_1@@5 T@Ref) ) (!  (=> (and (and (select new_g@0 n_64_1@@5) (not (= n_64_1@@5 node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange80 n_64_1@@5) (= (invRecv80 n_64_1@@5) n_64_1@@5)))
 :qid |stdinbpl.6385:24|
 :skolemid |696|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n_64_1@@5 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@16) n_64_1@@5 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@1) n_64_1@@5 next))
)) (=> (and (forall ((o_9@@76 T@Ref) ) (!  (=> (and (and (select new_g@0 (invRecv80 o_9@@76)) (not (= (invRecv80 o_9@@76) node@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange80 o_9@@76))) (= (invRecv80 o_9@@76) o_9@@76))
 :qid |stdinbpl.6389:24|
 :skolemid |697|
 :pattern ( (invRecv80 o_9@@76))
)) (forall ((o_9@@77 T@Ref) ) (!  (and (=> (and (and (select new_g@0 (invRecv80 o_9@@77)) (not (= (invRecv80 o_9@@77) node@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange80 o_9@@77))) (and (= (invRecv80 o_9@@77) o_9@@77) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@16) o_9@@77 next) (- (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@10) o_9@@77 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select new_g@0 (invRecv80 o_9@@77)) (not (= (invRecv80 o_9@@77) node@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange80 o_9@@77)))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@16) o_9@@77 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@10) o_9@@77 next))))
 :qid |stdinbpl.6395:24|
 :skolemid |698|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@16) o_9@@77 next))
))) (=> (and (and (and (and (forall ((o_9@@78 T@Ref) (f_5@@54 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@10) o_9@@78 f_5@@54) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@16) o_9@@78 f_5@@54)))
 :qid |stdinbpl.6401:31|
 :skolemid |699|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@16) o_9@@78 f_5@@54))
)) (forall ((o_9@@79 T@Ref) (f_5@@55 T@Field_74000_74001) ) (!  (=> (not (= f_5@@55 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@10) o_9@@79 f_5@@55) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@16) o_9@@79 f_5@@55)))
 :qid |stdinbpl.6401:31|
 :skolemid |699|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@16) o_9@@79 f_5@@55))
))) (forall ((o_9@@80 T@Ref) (f_5@@56 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@10) o_9@@80 f_5@@56) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@16) o_9@@80 f_5@@56)))
 :qid |stdinbpl.6401:31|
 :skolemid |699|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@16) o_9@@80 f_5@@56))
))) (forall ((o_9@@81 T@Ref) (f_5@@57 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@10) o_9@@81 f_5@@57) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@16) o_9@@81 f_5@@57)))
 :qid |stdinbpl.6401:31|
 :skolemid |699|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@16) o_9@@81 f_5@@57))
))) (forall ((o_9@@82 T@Ref) (f_5@@58 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@10) o_9@@82 f_5@@58) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@16) o_9@@82 f_5@@58)))
 :qid |stdinbpl.6401:31|
 :skolemid |699|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@16) o_9@@82 f_5@@58))
))) (and (and (=> (= (ControlFlow 0 167) 162) anon392_Else_correct) (=> (= (ControlFlow 0 167) 89) anon393_Then_correct)) (=> (= (ControlFlow 0 167) 91) anon393_Else_correct))))))))))))))
(let ((anon391_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 173) 167)) anon224_correct)))
(let ((anon391_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 171) (- 0 172)) (<= FullPerm (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@9) node@0 next))) (=> (<= FullPerm (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@9) node@0 next)) (=> (= (ControlFlow 0 171) 167) anon224_correct))))))
(let ((anon222_correct  (=> (state Heap@1 Mask@9) (and (=> (= (ControlFlow 0 174) (- 0 178)) (select new_g@0 node@0)) (=> (select new_g@0 node@0) (and (=> (= (ControlFlow 0 174) (- 0 177)) (not (= new_node@0 null))) (=> (not (= new_node@0 null)) (and (=> (= (ControlFlow 0 174) (- 0 176)) (not (select new_g@0 null))) (=> (not (select new_g@0 null)) (and (=> (= (ControlFlow 0 174) (- 0 175)) (select new_g@0 node@0)) (=> (select new_g@0 node@0) (and (=> (= (ControlFlow 0 174) 171) anon391_Then_correct) (=> (= (ControlFlow 0 174) 173) anon391_Else_correct)))))))))))))
(let ((anon221_correct  (=> (state ExhaleHeap@4 QPMask@15) (=> (and (and (state ExhaleHeap@4 QPMask@15) (= Heap@1 ExhaleHeap@4)) (and (= Mask@9 QPMask@15) (= (ControlFlow 0 184) 174))) anon222_correct))))
(let ((anon390_Else_correct  (=> (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) node@0 next) null) (= (ControlFlow 0 186) 184)) anon221_correct)))
(let ((anon390_Then_correct  (=> (and (and (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) node@0 next) null)) (state ExhaleHeap@4 QPMask@15)) (and (forall ((x$0_3 T@Ref) (y_3_2 T@Ref) (u_3_1@@0 T@Ref) (v_5_2 T@Ref) ) (!  (=> (and (DEP ($$ ExhaleHeap@3 new_g@0) x$0_3 y_3_2 u_3_1@@0 v_5_2) (not (DEP ($$ ExhaleHeap@3 new_g@0) x$0_3 y_3_2 node@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) node@0 next)))) (DEP ($$ ExhaleHeap@4 new_g@0) x$0_3 y_3_2 u_3_1@@0 v_5_2))
 :qid |stdinbpl.6330:28|
 :skolemid |692|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@4 new_g@0)) new_g@0) x$0_3 y_3_2 u_3_1@@0 v_5_2))
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@3 new_g@0)) new_g@0) x$0_3 y_3_2 u_3_1@@0 v_5_2))
)) (= (ControlFlow 0 185) 184))) anon221_correct)))
(let ((anon389_Else_correct  (=> (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) node@0 next) null) (and (=> (= (ControlFlow 0 188) 185) anon390_Then_correct) (=> (= (ControlFlow 0 188) 186) anon390_Else_correct)))))
(let ((anon389_Then_correct  (=> (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) node@0 next) null)) (=> (and (state ExhaleHeap@4 QPMask@15) (forall ((v1_4 T@Ref) (v2_4 T@Ref) ) (! (= (edge ($$ ExhaleHeap@4 new_g@0) v1_4 v2_4)  (and (edge ($$ ExhaleHeap@3 new_g@0) v1_4 v2_4) (not (and (= v1_4 node@0) (= v2_4 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) node@0 next))))))
 :qid |stdinbpl.6323:28|
 :skolemid |691|
 :pattern ( (edge (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@4 new_g@0)) new_g@0) v1_4 v2_4))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@4 new_g@0)) new_g@0) v1_4 v2_4))
))) (and (=> (= (ControlFlow 0 187) 185) anon390_Then_correct) (=> (= (ControlFlow 0 187) 186) anon390_Else_correct))))))
(let ((anon388_Else_correct  (=> (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) node@0 next) null)) (and (=> (= (ControlFlow 0 190) 187) anon389_Then_correct) (=> (= (ControlFlow 0 190) 188) anon389_Else_correct)))))
(let ((anon388_Then_correct  (=> (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) node@0 next) null) (=> (and (state ExhaleHeap@4 QPMask@15) (|Set#Equal_48858| ($$ ExhaleHeap@4 new_g@0) ($$ ExhaleHeap@3 new_g@0))) (and (=> (= (ControlFlow 0 189) 187) anon389_Then_correct) (=> (= (ControlFlow 0 189) 188) anon389_Else_correct))))))
(let ((anon386_Else_correct  (=> (forall ((n$0_13_1_1 T@Ref) ) (!  (=> (and (select new_g@0 n$0_13_1_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$0_13_1_1 next) null))) (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$0_13_1_1 next)))
 :qid |stdinbpl.6256:26|
 :skolemid |682|
 :pattern ( (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$0_13_1_1 next)))
 :pattern ( (select new_g@0 n$0_13_1_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$0_13_1_1 next))
)) (=> (and (IdenticalOnKnownLocations ExhaleHeap@3 ExhaleHeap@4 QPMask@14) (not (select new_g@0 null))) (=> (and (and (select new_g@0 node@0) (not (= node@0 null))) (and (= Mask@8 (PolymorphicMapType_73948 (store (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@14) node@0 next (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@14) node@0 next) FullPerm)) (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@14) (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@14) (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@14) (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@14))) (state ExhaleHeap@4 Mask@8))) (and (=> (= (ControlFlow 0 191) (- 0 193)) (forall ((n$1_5 T@Ref) (n$1_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_5 n$1_5_1)) (and (select new_g@0 n$1_5) (not (= n$1_5 node@0)))) (and (select new_g@0 n$1_5_1) (not (= n$1_5_1 node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_5 n$1_5_1)))
 :qid |stdinbpl.6274:21|
 :skolemid |683|
))) (=> (forall ((n$1_5@@0 T@Ref) (n$1_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_5@@0 n$1_5_1@@0)) (and (select new_g@0 n$1_5@@0) (not (= n$1_5@@0 node@0)))) (and (select new_g@0 n$1_5_1@@0) (not (= n$1_5_1@@0 node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_5@@0 n$1_5_1@@0)))
 :qid |stdinbpl.6274:21|
 :skolemid |683|
)) (=> (and (forall ((n$1_5@@1 T@Ref) ) (!  (=> (and (and (select new_g@0 n$1_5@@1) (not (= n$1_5@@1 node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange79 n$1_5@@1) (= (invRecv79 n$1_5@@1) n$1_5@@1)))
 :qid |stdinbpl.6280:28|
 :skolemid |684|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@4) n$1_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@15) n$1_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@4) n$1_5@@1 next))
)) (forall ((o_9@@83 T@Ref) ) (!  (=> (and (and (and (select new_g@0 (invRecv79 o_9@@83)) (not (= (invRecv79 o_9@@83) node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange79 o_9@@83)) (= (invRecv79 o_9@@83) o_9@@83))
 :qid |stdinbpl.6284:28|
 :skolemid |685|
 :pattern ( (invRecv79 o_9@@83))
))) (and (=> (= (ControlFlow 0 191) (- 0 192)) (forall ((n$1_5@@2 T@Ref) ) (!  (=> (and (select new_g@0 n$1_5@@2) (not (= n$1_5@@2 node@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.6290:21|
 :skolemid |686|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@4) n$1_5@@2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@15) n$1_5@@2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@4) n$1_5@@2 next))
))) (=> (forall ((n$1_5@@3 T@Ref) ) (!  (=> (and (select new_g@0 n$1_5@@3) (not (= n$1_5@@3 node@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.6290:21|
 :skolemid |686|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@4) n$1_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@15) n$1_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@4) n$1_5@@3 next))
)) (=> (and (forall ((n$1_5@@4 T@Ref) ) (!  (=> (and (and (select new_g@0 n$1_5@@4) (not (= n$1_5@@4 node@0))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$1_5@@4 null)))
 :qid |stdinbpl.6296:28|
 :skolemid |687|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@4) n$1_5@@4 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@15) n$1_5@@4 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@4) n$1_5@@4 next))
)) (forall ((o_9@@84 T@Ref) ) (!  (and (=> (and (and (and (select new_g@0 (invRecv79 o_9@@84)) (not (= (invRecv79 o_9@@84) node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange79 o_9@@84)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv79 o_9@@84) o_9@@84)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@15) o_9@@84 next) (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@8) o_9@@84 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select new_g@0 (invRecv79 o_9@@84)) (not (= (invRecv79 o_9@@84) node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange79 o_9@@84))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@15) o_9@@84 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@8) o_9@@84 next))))
 :qid |stdinbpl.6302:28|
 :skolemid |688|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@15) o_9@@84 next))
))) (=> (and (and (and (and (and (and (forall ((o_9@@85 T@Ref) (f_5@@59 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@8) o_9@@85 f_5@@59) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@15) o_9@@85 f_5@@59)))
 :qid |stdinbpl.6306:35|
 :skolemid |689|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@8) o_9@@85 f_5@@59))
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@15) o_9@@85 f_5@@59))
)) (forall ((o_9@@86 T@Ref) (f_5@@60 T@Field_74000_74001) ) (!  (=> (not (= f_5@@60 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@8) o_9@@86 f_5@@60) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@15) o_9@@86 f_5@@60)))
 :qid |stdinbpl.6306:35|
 :skolemid |689|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@8) o_9@@86 f_5@@60))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@15) o_9@@86 f_5@@60))
))) (forall ((o_9@@87 T@Ref) (f_5@@61 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@8) o_9@@87 f_5@@61) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@15) o_9@@87 f_5@@61)))
 :qid |stdinbpl.6306:35|
 :skolemid |689|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@8) o_9@@87 f_5@@61))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@15) o_9@@87 f_5@@61))
))) (forall ((o_9@@88 T@Ref) (f_5@@62 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@8) o_9@@88 f_5@@62) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@15) o_9@@88 f_5@@62)))
 :qid |stdinbpl.6306:35|
 :skolemid |689|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@8) o_9@@88 f_5@@62))
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@15) o_9@@88 f_5@@62))
))) (forall ((o_9@@89 T@Ref) (f_5@@63 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@8) o_9@@89 f_5@@63) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@15) o_9@@89 f_5@@63)))
 :qid |stdinbpl.6306:35|
 :skolemid |689|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@8) o_9@@89 f_5@@63))
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@15) o_9@@89 f_5@@63))
))) (state ExhaleHeap@4 QPMask@15)) (and (forall ((n$2_6_2 T@Ref) ) (!  (=> (and (select new_g@0 n$2_6_2) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@4) n$2_6_2 next) null))) (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@4) n$2_6_2 next)))
 :qid |stdinbpl.6312:26|
 :skolemid |690|
 :pattern ( (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@4) n$2_6_2 next)))
 :pattern ( (select new_g@0 n$2_6_2) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@4) n$2_6_2 next))
)) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@4) node@0 next) null))) (and (=> (= (ControlFlow 0 191) 189) anon388_Then_correct) (=> (= (ControlFlow 0 191) 190) anon388_Else_correct))))))))))))))
(let ((anon211_correct  (=> (= Mask@7 (PolymorphicMapType_73948 (store (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@13) node@0 next (- (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@13) node@0 next) FullPerm)) (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@13) (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@13) (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@13) (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@13))) (and (=> (= (ControlFlow 0 194) (- 0 197)) (forall ((n_63_1 T@Ref) ) (!  (=> (and (and (select new_g@0 n_63_1) (not (= n_63_1 node@0))) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n_63_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.6208:23|
 :skolemid |675|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n_63_1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@14) n_63_1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n_63_1 next))
))) (=> (forall ((n_63_1@@0 T@Ref) ) (!  (=> (and (and (select new_g@0 n_63_1@@0) (not (= n_63_1@@0 node@0))) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n_63_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.6208:23|
 :skolemid |675|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n_63_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@14) n_63_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n_63_1@@0 next))
)) (and (=> (= (ControlFlow 0 194) (- 0 196)) (forall ((n_63_1@@1 T@Ref) (n_63_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_63_1@@1 n_63_2)) (and (select new_g@0 n_63_1@@1) (not (= n_63_1@@1 node@0)))) (and (select new_g@0 n_63_2) (not (= n_63_2 node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_63_1@@1 n_63_2)))
 :qid |stdinbpl.6215:23|
 :skolemid |676|
 :pattern ( (neverTriggered78 n_63_1@@1) (neverTriggered78 n_63_2))
))) (=> (forall ((n_63_1@@2 T@Ref) (n_63_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_63_1@@2 n_63_2@@0)) (and (select new_g@0 n_63_1@@2) (not (= n_63_1@@2 node@0)))) (and (select new_g@0 n_63_2@@0) (not (= n_63_2@@0 node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_63_1@@2 n_63_2@@0)))
 :qid |stdinbpl.6215:23|
 :skolemid |676|
 :pattern ( (neverTriggered78 n_63_1@@2) (neverTriggered78 n_63_2@@0))
)) (and (=> (= (ControlFlow 0 194) (- 0 195)) (forall ((n_63_1@@3 T@Ref) ) (!  (=> (and (select new_g@0 n_63_1@@3) (not (= n_63_1@@3 node@0))) (>= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@7) n_63_1@@3 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.6222:23|
 :skolemid |677|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n_63_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@14) n_63_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n_63_1@@3 next))
))) (=> (forall ((n_63_1@@4 T@Ref) ) (!  (=> (and (select new_g@0 n_63_1@@4) (not (= n_63_1@@4 node@0))) (>= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@7) n_63_1@@4 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.6222:23|
 :skolemid |677|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n_63_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@14) n_63_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n_63_1@@4 next))
)) (=> (forall ((n_63_1@@5 T@Ref) ) (!  (=> (and (and (select new_g@0 n_63_1@@5) (not (= n_63_1@@5 node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange78 n_63_1@@5) (= (invRecv78 n_63_1@@5) n_63_1@@5)))
 :qid |stdinbpl.6228:28|
 :skolemid |678|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n_63_1@@5 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@14) n_63_1@@5 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n_63_1@@5 next))
)) (=> (and (forall ((o_9@@90 T@Ref) ) (!  (=> (and (and (select new_g@0 (invRecv78 o_9@@90)) (not (= (invRecv78 o_9@@90) node@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange78 o_9@@90))) (= (invRecv78 o_9@@90) o_9@@90))
 :qid |stdinbpl.6232:28|
 :skolemid |679|
 :pattern ( (invRecv78 o_9@@90))
)) (forall ((o_9@@91 T@Ref) ) (!  (and (=> (and (and (select new_g@0 (invRecv78 o_9@@91)) (not (= (invRecv78 o_9@@91) node@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange78 o_9@@91))) (and (= (invRecv78 o_9@@91) o_9@@91) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@14) o_9@@91 next) (- (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@7) o_9@@91 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select new_g@0 (invRecv78 o_9@@91)) (not (= (invRecv78 o_9@@91) node@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange78 o_9@@91)))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@14) o_9@@91 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@7) o_9@@91 next))))
 :qid |stdinbpl.6238:28|
 :skolemid |680|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@14) o_9@@91 next))
))) (=> (and (and (and (and (forall ((o_9@@92 T@Ref) (f_5@@64 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@7) o_9@@92 f_5@@64) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@14) o_9@@92 f_5@@64)))
 :qid |stdinbpl.6244:35|
 :skolemid |681|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@14) o_9@@92 f_5@@64))
)) (forall ((o_9@@93 T@Ref) (f_5@@65 T@Field_74000_74001) ) (!  (=> (not (= f_5@@65 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@7) o_9@@93 f_5@@65) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@14) o_9@@93 f_5@@65)))
 :qid |stdinbpl.6244:35|
 :skolemid |681|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@14) o_9@@93 f_5@@65))
))) (forall ((o_9@@94 T@Ref) (f_5@@66 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@7) o_9@@94 f_5@@66) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@14) o_9@@94 f_5@@66)))
 :qid |stdinbpl.6244:35|
 :skolemid |681|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@14) o_9@@94 f_5@@66))
))) (forall ((o_9@@95 T@Ref) (f_5@@67 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@7) o_9@@95 f_5@@67) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@14) o_9@@95 f_5@@67)))
 :qid |stdinbpl.6244:35|
 :skolemid |681|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@14) o_9@@95 f_5@@67))
))) (forall ((o_9@@96 T@Ref) (f_5@@68 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@7) o_9@@96 f_5@@68) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@14) o_9@@96 f_5@@68)))
 :qid |stdinbpl.6244:35|
 :skolemid |681|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@14) o_9@@96 f_5@@68))
))) (and (and (=> (= (ControlFlow 0 194) 191) anon386_Else_correct) (=> (= (ControlFlow 0 194) 181) anon387_Then_correct)) (=> (= (ControlFlow 0 194) 183) anon387_Else_correct))))))))))))))
(let ((anon385_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 200) 194)) anon211_correct)))
(let ((anon385_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 198) (- 0 199)) (<= FullPerm (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@13) node@0 next))) (=> (<= FullPerm (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@13) node@0 next)) (=> (= (ControlFlow 0 198) 194) anon211_correct))))))
(let ((anon384_Then_correct  (=> (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) node@0 next) null)) (and (=> (= (ControlFlow 0 201) (- 0 204)) (select new_g@0 node@0)) (=> (select new_g@0 node@0) (and (=> (= (ControlFlow 0 201) (- 0 203)) (not (select new_g@0 null))) (=> (not (select new_g@0 null)) (and (=> (= (ControlFlow 0 201) (- 0 202)) (select new_g@0 node@0)) (=> (select new_g@0 node@0) (and (=> (= (ControlFlow 0 201) 198) anon385_Then_correct) (=> (= (ControlFlow 0 201) 200) anon385_Else_correct)))))))))))
(let ((anon384_Else_correct  (=> (and (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) node@0 next) null) (= Heap@1 ExhaleHeap@3)) (and (= Mask@9 QPMask@13) (= (ControlFlow 0 179) 174))) anon222_correct)))
(let ((anon208_correct  (=> (and (state ExhaleHeap@3 QPMask@13) (forall ((n_59_1 T@Ref) ) (!  (=> (and (select new_g@0 n_59_1) (not (= n_59_1 new_node@0))) (__learn_trigger__ (DEP ($$ ExhaleHeap@3 new_g@0) new_node@0 n_59_1 new_node@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) new_node@0 next))))
 :qid |stdinbpl.6156:22|
 :skolemid |671|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@3 new_g@0)) new_g@0) arg_to@0 n_59_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@3 new_g@0)) new_g@0) new_node@0 n_59_1))
))) (=> (and (and (and (state ExhaleHeap@3 QPMask@13) (forall ((n_60_1 T@Ref) ) (!  (=> (and (select new_g@0 n_60_1) (not (= n_60_1 arg_to@0))) (__learn_trigger__ (DEP ($$ ExhaleHeap@3 new_g@0) arg_to@0 n_60_1 arg_to@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) arg_to@0 next))))
 :qid |stdinbpl.6161:22|
 :skolemid |672|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@3 new_g@0)) new_g@0) arg_to@0 n_60_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@3 new_g@0)) new_g@0) new_node@0 n_60_1))
))) (and (state ExhaleHeap@3 QPMask@13) (forall ((n_61_1 T@Ref) ) (!  (=> (and (select new_g@0 n_61_1) (not (= n_61_1 new_node@0))) (__learn_trigger__ (DEP ($$ ExhaleHeap@3 new_g@0) n_61_1 new_node@0 n_61_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n_61_1 next))))
 :qid |stdinbpl.6166:22|
 :skolemid |673|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@3 new_g@0)) new_g@0) n_61_1 arg_to@0))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@3 new_g@0)) new_g@0) n_61_1 new_node@0))
)))) (and (and (state ExhaleHeap@3 QPMask@13) (forall ((n_62_1 T@Ref) ) (!  (=> (select new_g@0 n_62_1) (and (__learn_trigger__ (exists_path ($$ ExhaleHeap@3 new_g@0) arg_to@0 n_62_1)) (__learn_trigger__ (exists_path ($$ Heap@0 new_g@0) arg_to@0 n_62_1))))
 :qid |stdinbpl.6171:22|
 :skolemid |674|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@3 new_g@0)) new_g@0) arg_to@0 n_62_1 arg_to@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) arg_to@0 next)))
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@3 new_g@0)) new_g@0) new_node@0 n_62_1 new_node@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) new_node@0 next)))
))) (and (state ExhaleHeap@3 QPMask@13) (state ExhaleHeap@3 QPMask@13)))) (and (=> (= (ControlFlow 0 205) (- 0 206)) (HasDirectPerm_48849_48850 QPMask@13 node@0 next)) (=> (HasDirectPerm_48849_48850 QPMask@13 node@0 next) (and (=> (= (ControlFlow 0 205) 201) anon384_Then_correct) (=> (= (ControlFlow 0 205) 179) anon384_Else_correct))))))))
(let ((anon383_Else_correct  (=> (and (= arg_to@0 null) (= (ControlFlow 0 208) 205)) anon208_correct)))
(let ((anon383_Then_correct  (=> (and (and (not (= arg_to@0 null)) (state ExhaleHeap@3 QPMask@13)) (and (forall ((x$0_2 T@Ref) (y_2_1 T@Ref) (u_2_2@@0 T@Ref) (v_4_1@@0 T@Ref) ) (!  (=> (and (DEP ($$ ExhaleHeap@3 new_g@0) x$0_2 y_2_1 u_2_2@@0 v_4_1@@0) (not (DEP ($$ ExhaleHeap@3 new_g@0) x$0_2 y_2_1 new_node@0 arg_to@0))) (DEP ($$ Heap@0 new_g@0) x$0_2 y_2_1 u_2_2@@0 v_4_1@@0))
 :qid |stdinbpl.6150:24|
 :skolemid |670|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@3 new_g@0)) new_g@0) x$0_2 y_2_1 u_2_2@@0 v_4_1@@0))
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@0 new_g@0)) new_g@0) x$0_2 y_2_1 u_2_2@@0 v_4_1@@0))
)) (= (ControlFlow 0 207) 205))) anon208_correct)))
(let ((anon382_Else_correct  (=> (= arg_to@0 null) (and (=> (= (ControlFlow 0 210) 207) anon383_Then_correct) (=> (= (ControlFlow 0 210) 208) anon383_Else_correct)))))
(let ((anon382_Then_correct  (=> (not (= arg_to@0 null)) (=> (and (state ExhaleHeap@3 QPMask@13) (forall ((x$0_1 T@Ref) (y_1 T@Ref) (u_1_1@@1 T@Ref) (v_3_1@@0 T@Ref) ) (!  (=> (and (not (= new_node@0 arg_to@0)) (and (not (= u_1_1@@1 v_3_1@@0)) (not (= x$0_1 y_1)))) (=> (or (DEP ($$ Heap@0 new_g@0) x$0_1 y_1 u_1_1@@1 v_3_1@@0) (or (and (= x$0_1 new_node@0) (and (= u_1_1@@1 new_node@0) (and (= y_1 arg_to@0) (= v_3_1@@0 arg_to@0)))) (or (exists ((w_2@@1 T@Ref) (z T@Ref) ) (!  (and (forall ((u_ T@Ref) (v_ T@Ref) ) (!  (not (DEP ($$ Heap@0 new_g@0) x$0_1 y_1 u_ v_))
 :qid |stdinbpl.6129:21|
 :skolemid |663|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@0 new_g@0)) new_g@0) x$0_1 y_1 u_ v_))
)) (and (or (and (DEP ($$ Heap@0 new_g@0) x$0_1 new_node@0 u_1_1@@1 v_3_1@@0) (not (= x$0_1 new_node@0))) (and (= x$0_1 u_1_1@@1) (and (= u_1_1@@1 new_node@0) (= v_3_1@@0 arg_to@0)))) (or (and (DEP ($$ Heap@0 new_g@0) arg_to@0 y_1 w_2@@1 z) (not (= arg_to@0 y_1))) (and (= new_node@0 w_2@@1) (and (= arg_to@0 z) (= z y_1))))))
 :qid |stdinbpl.6127:229|
 :skolemid |664|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@0 new_g@0)) new_g@0) arg_to@0 y_1 w_2@@1 z))
)) (or (exists ((U_1@@0 T@Ref) (V_11 T@Ref) ) (!  (and (forall ((u__1 T@Ref) (v__1 T@Ref) ) (!  (not (DEP ($$ Heap@0 new_g@0) x$0_1 y_1 u__1 v__1))
 :qid |stdinbpl.6135:21|
 :skolemid |665|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@0 new_g@0)) new_g@0) x$0_1 y_1 u__1 v__1))
)) (and (or (and (DEP ($$ Heap@0 new_g@0) x$0_1 new_node@0 U_1@@0 V_11) (not (= x$0_1 new_node@0))) (and (= x$0_1 U_1@@0) (and (= U_1@@0 new_node@0) (= V_11 arg_to@0)))) (or (and (DEP ($$ Heap@0 new_g@0) arg_to@0 y_1 u_1_1@@1 v_3_1@@0) (not (= arg_to@0 y_1))) (and (= new_node@0 u_1_1@@1) (and (= arg_to@0 v_3_1@@0) (= v_3_1@@0 y_1))))))
 :qid |stdinbpl.6133:25|
 :skolemid |666|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@0 new_g@0)) new_g@0) x$0_1 new_node@0 U_1@@0 V_11))
)) (and (= u_1_1@@1 new_node@0) (and (= v_3_1@@0 arg_to@0) (exists ((U_1_1 T@Ref) (V_1 T@Ref) (w_1_1 T@Ref) (z_1 T@Ref) ) (!  (and (forall ((u__2 T@Ref) (v__2 T@Ref) ) (!  (not (DEP ($$ Heap@0 new_g@0) x$0_1 y_1 u__2 v__2))
 :qid |stdinbpl.6141:21|
 :skolemid |667|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@0 new_g@0)) new_g@0) x$0_1 y_1 u__2 v__2))
)) (and (or (and (DEP ($$ Heap@0 new_g@0) x$0_1 new_node@0 U_1_1 V_1) (not (= x$0_1 new_node@0))) (and (= x$0_1 U_1_1) (and (= U_1_1 new_node@0) (= V_1 arg_to@0)))) (or (and (DEP ($$ Heap@0 new_g@0) arg_to@0 y_1 w_1_1 z_1) (not (= arg_to@0 y_1))) (and (= new_node@0 w_1_1) (and (= arg_to@0 z_1) (= z_1 y_1))))))
 :qid |stdinbpl.6139:66|
 :skolemid |668|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@0 new_g@0)) new_g@0) x$0_1 new_node@0 U_1_1 V_1) (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@0 new_g@0)) new_g@0) arg_to@0 y_1 w_1_1 z_1))
)))))))) (DEP ($$ ExhaleHeap@3 new_g@0) x$0_1 y_1 u_1_1@@1 v_3_1@@0)))
 :qid |stdinbpl.6125:24|
 :skolemid |669|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@3 new_g@0)) new_g@0) x$0_1 y_1 u_1_1@@1 v_3_1@@0))
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@0 new_g@0)) new_g@0) x$0_1 y_1 u_1_1@@1 v_3_1@@0))
))) (and (=> (= (ControlFlow 0 209) 207) anon383_Then_correct) (=> (= (ControlFlow 0 209) 208) anon383_Else_correct))))))
(let ((anon381_Else_correct  (=> (= arg_to@0 null) (and (=> (= (ControlFlow 0 212) 209) anon382_Then_correct) (=> (= (ControlFlow 0 212) 210) anon382_Else_correct)))))
(let ((anon381_Then_correct  (=> (not (= arg_to@0 null)) (=> (and (state ExhaleHeap@3 QPMask@13) (forall ((v1_3 T@Ref) (v2_3 T@Ref) ) (! (= (edge ($$ ExhaleHeap@3 new_g@0) v1_3 v2_3)  (or (edge ($$ Heap@0 new_g@0) v1_3 v2_3) (and (= v1_3 new_node@0) (= v2_3 arg_to@0))))
 :qid |stdinbpl.6118:24|
 :skolemid |662|
 :pattern ( (edge (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@3 new_g@0)) new_g@0) v1_3 v2_3))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@3 new_g@0)) new_g@0) v1_3 v2_3))
))) (and (=> (= (ControlFlow 0 211) 209) anon382_Then_correct) (=> (= (ControlFlow 0 211) 210) anon382_Else_correct))))))
(let ((anon380_Else_correct  (=> (not (= arg_to@0 null)) (and (=> (= (ControlFlow 0 214) 211) anon381_Then_correct) (=> (= (ControlFlow 0 214) 212) anon381_Else_correct)))))
(let ((anon380_Then_correct  (=> (= arg_to@0 null) (=> (and (state ExhaleHeap@3 QPMask@13) (|Set#Equal_48858| ($$ ExhaleHeap@3 new_g@0) ($$ Heap@0 new_g@0))) (and (=> (= (ControlFlow 0 213) 211) anon381_Then_correct) (=> (= (ControlFlow 0 213) 212) anon381_Else_correct))))))
(let ((anon378_Else_correct  (=> (forall ((n$0_11_1 T@Ref) ) (!  (=> (and (select new_g@0 n$0_11_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n$0_11_1 next) null))) (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n$0_11_1 next)))
 :qid |stdinbpl.6047:22|
 :skolemid |653|
 :pattern ( (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n$0_11_1 next)))
 :pattern ( (select new_g@0 n$0_11_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n$0_11_1 next))
)) (and (=> (= (ControlFlow 0 215) (- 0 219)) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) new_node@0 next) null)) (=> (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) new_node@0 next) null) (and (=> (= (ControlFlow 0 215) (- 0 218)) (not (exists_path ($$ Heap@0 new_g@0) new_node@0 arg_to@0))) (=> (not (exists_path ($$ Heap@0 new_g@0) new_node@0 arg_to@0)) (=> (and (IdenticalOnKnownLocations Heap@0 ExhaleHeap@3 QPMask@12) (not (select new_g@0 null))) (=> (and (and (select new_g@0 new_node@0) (not (= new_node@0 null))) (and (= Mask@6 (PolymorphicMapType_73948 (store (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@12) new_node@0 next (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@12) new_node@0 next) FullPerm)) (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@12) (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@12) (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@12) (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@12))) (state ExhaleHeap@3 Mask@6))) (and (=> (= (ControlFlow 0 215) (- 0 217)) (forall ((n$1_4 T@Ref) (n$1_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_4 n$1_4_1)) (and (select new_g@0 n$1_4) (not (= n$1_4 new_node@0)))) (and (select new_g@0 n$1_4_1) (not (= n$1_4_1 new_node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_4 n$1_4_1)))
 :qid |stdinbpl.6069:17|
 :skolemid |654|
))) (=> (forall ((n$1_4@@0 T@Ref) (n$1_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_4@@0 n$1_4_1@@0)) (and (select new_g@0 n$1_4@@0) (not (= n$1_4@@0 new_node@0)))) (and (select new_g@0 n$1_4_1@@0) (not (= n$1_4_1@@0 new_node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_4@@0 n$1_4_1@@0)))
 :qid |stdinbpl.6069:17|
 :skolemid |654|
)) (=> (and (forall ((n$1_4@@1 T@Ref) ) (!  (=> (and (and (select new_g@0 n$1_4@@1) (not (= n$1_4@@1 new_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange77 n$1_4@@1) (= (invRecv77 n$1_4@@1) n$1_4@@1)))
 :qid |stdinbpl.6075:24|
 :skolemid |655|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$1_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@13) n$1_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$1_4@@1 next))
)) (forall ((o_9@@97 T@Ref) ) (!  (=> (and (and (and (select new_g@0 (invRecv77 o_9@@97)) (not (= (invRecv77 o_9@@97) new_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange77 o_9@@97)) (= (invRecv77 o_9@@97) o_9@@97))
 :qid |stdinbpl.6079:24|
 :skolemid |656|
 :pattern ( (invRecv77 o_9@@97))
))) (and (=> (= (ControlFlow 0 215) (- 0 216)) (forall ((n$1_4@@2 T@Ref) ) (!  (=> (and (select new_g@0 n$1_4@@2) (not (= n$1_4@@2 new_node@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.6085:17|
 :skolemid |657|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$1_4@@2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@13) n$1_4@@2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$1_4@@2 next))
))) (=> (forall ((n$1_4@@3 T@Ref) ) (!  (=> (and (select new_g@0 n$1_4@@3) (not (= n$1_4@@3 new_node@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.6085:17|
 :skolemid |657|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$1_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@13) n$1_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$1_4@@3 next))
)) (=> (and (forall ((n$1_4@@4 T@Ref) ) (!  (=> (and (and (select new_g@0 n$1_4@@4) (not (= n$1_4@@4 new_node@0))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$1_4@@4 null)))
 :qid |stdinbpl.6091:24|
 :skolemid |658|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$1_4@@4 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@13) n$1_4@@4 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$1_4@@4 next))
)) (forall ((o_9@@98 T@Ref) ) (!  (and (=> (and (and (and (select new_g@0 (invRecv77 o_9@@98)) (not (= (invRecv77 o_9@@98) new_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange77 o_9@@98)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv77 o_9@@98) o_9@@98)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@13) o_9@@98 next) (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@6) o_9@@98 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select new_g@0 (invRecv77 o_9@@98)) (not (= (invRecv77 o_9@@98) new_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange77 o_9@@98))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@13) o_9@@98 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@6) o_9@@98 next))))
 :qid |stdinbpl.6097:24|
 :skolemid |659|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@13) o_9@@98 next))
))) (=> (and (and (and (and (and (and (forall ((o_9@@99 T@Ref) (f_5@@69 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@6) o_9@@99 f_5@@69) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@13) o_9@@99 f_5@@69)))
 :qid |stdinbpl.6101:31|
 :skolemid |660|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@6) o_9@@99 f_5@@69))
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@13) o_9@@99 f_5@@69))
)) (forall ((o_9@@100 T@Ref) (f_5@@70 T@Field_74000_74001) ) (!  (=> (not (= f_5@@70 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@6) o_9@@100 f_5@@70) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@13) o_9@@100 f_5@@70)))
 :qid |stdinbpl.6101:31|
 :skolemid |660|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@6) o_9@@100 f_5@@70))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@13) o_9@@100 f_5@@70))
))) (forall ((o_9@@101 T@Ref) (f_5@@71 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@6) o_9@@101 f_5@@71) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@13) o_9@@101 f_5@@71)))
 :qid |stdinbpl.6101:31|
 :skolemid |660|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@6) o_9@@101 f_5@@71))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@13) o_9@@101 f_5@@71))
))) (forall ((o_9@@102 T@Ref) (f_5@@72 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@6) o_9@@102 f_5@@72) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@13) o_9@@102 f_5@@72)))
 :qid |stdinbpl.6101:31|
 :skolemid |660|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@6) o_9@@102 f_5@@72))
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@13) o_9@@102 f_5@@72))
))) (forall ((o_9@@103 T@Ref) (f_5@@73 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@6) o_9@@103 f_5@@73) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@13) o_9@@103 f_5@@73)))
 :qid |stdinbpl.6101:31|
 :skolemid |660|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@6) o_9@@103 f_5@@73))
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@13) o_9@@103 f_5@@73))
))) (state ExhaleHeap@3 QPMask@13)) (and (forall ((n$2_5_1 T@Ref) ) (!  (=> (and (select new_g@0 n$2_5_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$2_5_1 next) null))) (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$2_5_1 next)))
 :qid |stdinbpl.6107:22|
 :skolemid |661|
 :pattern ( (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$2_5_1 next)))
 :pattern ( (select new_g@0 n$2_5_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) n$2_5_1 next))
)) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@3) new_node@0 next) arg_to@0))) (and (=> (= (ControlFlow 0 215) 213) anon380_Then_correct) (=> (= (ControlFlow 0 215) 214) anon380_Else_correct))))))))))))))))))
(let ((anon199_correct true))
(let ((anon379_Else_correct  (=> (and (not (and (select new_g@0 n$0_10_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n$0_10_1 next) null)))) (= (ControlFlow 0 87) 84)) anon199_correct)))
(let ((anon379_Then_correct  (=> (and (select new_g@0 n$0_10_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n$0_10_1 next) null))) (and (=> (= (ControlFlow 0 85) (- 0 86)) (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n$0_10_1 next))) (=> (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n$0_10_1 next)) (=> (= (ControlFlow 0 85) 84) anon199_correct))))))
(let ((anon196_correct  (=> (= Mask@5 (PolymorphicMapType_73948 (store (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@4) new_node@0 next (- (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@4) new_node@0 next) FullPerm)) (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@4) (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@4) (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@4) (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@4))) (and (=> (= (ControlFlow 0 220) (- 0 223)) (forall ((n_58_1 T@Ref) ) (!  (=> (and (and (select new_g@0 n_58_1) (not (= n_58_1 new_node@0))) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n_58_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5999:19|
 :skolemid |646|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n_58_1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@12) n_58_1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n_58_1 next))
))) (=> (forall ((n_58_1@@0 T@Ref) ) (!  (=> (and (and (select new_g@0 n_58_1@@0) (not (= n_58_1@@0 new_node@0))) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n_58_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5999:19|
 :skolemid |646|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n_58_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@12) n_58_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n_58_1@@0 next))
)) (and (=> (= (ControlFlow 0 220) (- 0 222)) (forall ((n_58_1@@1 T@Ref) (n_58_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_58_1@@1 n_58_2)) (and (select new_g@0 n_58_1@@1) (not (= n_58_1@@1 new_node@0)))) (and (select new_g@0 n_58_2) (not (= n_58_2 new_node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_58_1@@1 n_58_2)))
 :qid |stdinbpl.6006:19|
 :skolemid |647|
 :pattern ( (neverTriggered76 n_58_1@@1) (neverTriggered76 n_58_2))
))) (=> (forall ((n_58_1@@2 T@Ref) (n_58_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_58_1@@2 n_58_2@@0)) (and (select new_g@0 n_58_1@@2) (not (= n_58_1@@2 new_node@0)))) (and (select new_g@0 n_58_2@@0) (not (= n_58_2@@0 new_node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_58_1@@2 n_58_2@@0)))
 :qid |stdinbpl.6006:19|
 :skolemid |647|
 :pattern ( (neverTriggered76 n_58_1@@2) (neverTriggered76 n_58_2@@0))
)) (and (=> (= (ControlFlow 0 220) (- 0 221)) (forall ((n_58_1@@3 T@Ref) ) (!  (=> (and (select new_g@0 n_58_1@@3) (not (= n_58_1@@3 new_node@0))) (>= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@5) n_58_1@@3 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.6013:19|
 :skolemid |648|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n_58_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@12) n_58_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n_58_1@@3 next))
))) (=> (forall ((n_58_1@@4 T@Ref) ) (!  (=> (and (select new_g@0 n_58_1@@4) (not (= n_58_1@@4 new_node@0))) (>= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@5) n_58_1@@4 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.6013:19|
 :skolemid |648|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n_58_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@12) n_58_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n_58_1@@4 next))
)) (=> (forall ((n_58_1@@5 T@Ref) ) (!  (=> (and (and (select new_g@0 n_58_1@@5) (not (= n_58_1@@5 new_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange76 n_58_1@@5) (= (invRecv76 n_58_1@@5) n_58_1@@5)))
 :qid |stdinbpl.6019:24|
 :skolemid |649|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n_58_1@@5 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@12) n_58_1@@5 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) n_58_1@@5 next))
)) (=> (and (forall ((o_9@@104 T@Ref) ) (!  (=> (and (and (select new_g@0 (invRecv76 o_9@@104)) (not (= (invRecv76 o_9@@104) new_node@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange76 o_9@@104))) (= (invRecv76 o_9@@104) o_9@@104))
 :qid |stdinbpl.6023:24|
 :skolemid |650|
 :pattern ( (invRecv76 o_9@@104))
)) (forall ((o_9@@105 T@Ref) ) (!  (and (=> (and (and (select new_g@0 (invRecv76 o_9@@105)) (not (= (invRecv76 o_9@@105) new_node@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange76 o_9@@105))) (and (= (invRecv76 o_9@@105) o_9@@105) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@12) o_9@@105 next) (- (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@5) o_9@@105 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select new_g@0 (invRecv76 o_9@@105)) (not (= (invRecv76 o_9@@105) new_node@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange76 o_9@@105)))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@12) o_9@@105 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@5) o_9@@105 next))))
 :qid |stdinbpl.6029:24|
 :skolemid |651|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@12) o_9@@105 next))
))) (=> (and (and (and (and (forall ((o_9@@106 T@Ref) (f_5@@74 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@5) o_9@@106 f_5@@74) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@12) o_9@@106 f_5@@74)))
 :qid |stdinbpl.6035:31|
 :skolemid |652|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@12) o_9@@106 f_5@@74))
)) (forall ((o_9@@107 T@Ref) (f_5@@75 T@Field_74000_74001) ) (!  (=> (not (= f_5@@75 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@5) o_9@@107 f_5@@75) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@12) o_9@@107 f_5@@75)))
 :qid |stdinbpl.6035:31|
 :skolemid |652|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@12) o_9@@107 f_5@@75))
))) (forall ((o_9@@108 T@Ref) (f_5@@76 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@5) o_9@@108 f_5@@76) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@12) o_9@@108 f_5@@76)))
 :qid |stdinbpl.6035:31|
 :skolemid |652|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@12) o_9@@108 f_5@@76))
))) (forall ((o_9@@109 T@Ref) (f_5@@77 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@5) o_9@@109 f_5@@77) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@12) o_9@@109 f_5@@77)))
 :qid |stdinbpl.6035:31|
 :skolemid |652|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@12) o_9@@109 f_5@@77))
))) (forall ((o_9@@110 T@Ref) (f_5@@78 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@5) o_9@@110 f_5@@78) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@12) o_9@@110 f_5@@78)))
 :qid |stdinbpl.6035:31|
 :skolemid |652|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@12) o_9@@110 f_5@@78))
))) (and (and (=> (= (ControlFlow 0 220) 215) anon378_Else_correct) (=> (= (ControlFlow 0 220) 85) anon379_Then_correct)) (=> (= (ControlFlow 0 220) 87) anon379_Else_correct))))))))))))))
(let ((anon377_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 226) 220)) anon196_correct)))
(let ((anon377_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 224) (- 0 225)) (<= FullPerm (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@4) new_node@0 next))) (=> (<= FullPerm (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@4) new_node@0 next)) (=> (= (ControlFlow 0 224) 220) anon196_correct))))))
(let ((anon194_correct  (=> (state Heap@0 Mask@4) (and (=> (= (ControlFlow 0 227) (- 0 232)) (HasDirectPerm_48849_48850 Mask@4 node@0 next)) (=> (HasDirectPerm_48849_48850 Mask@4 node@0 next) (=> (= arg_to@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@0) node@0 next)) (and (=> (= (ControlFlow 0 227) (- 0 231)) (select new_g@0 new_node@0)) (=> (select new_g@0 new_node@0) (and (=> (= (ControlFlow 0 227) (- 0 230)) (not (= arg_to@0 null))) (=> (not (= arg_to@0 null)) (and (=> (= (ControlFlow 0 227) (- 0 229)) (not (select new_g@0 null))) (=> (not (select new_g@0 null)) (and (=> (= (ControlFlow 0 227) (- 0 228)) (select new_g@0 new_node@0)) (=> (select new_g@0 new_node@0) (and (=> (= (ControlFlow 0 227) 224) anon377_Then_correct) (=> (= (ControlFlow 0 227) 226) anon377_Else_correct))))))))))))))))
(let ((anon193_correct  (=> (state ExhaleHeap@2 QPMask@11) (=> (and (and (state ExhaleHeap@2 QPMask@11) (= Mask@4 QPMask@11)) (and (= Heap@0 ExhaleHeap@2) (= (ControlFlow 0 238) 227))) anon194_correct))))
(let ((anon376_Else_correct  (=> (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) new_node@0 next) null) (= (ControlFlow 0 240) 238)) anon193_correct)))
(let ((anon376_Then_correct  (=> (and (and (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) new_node@0 next) null)) (state ExhaleHeap@2 QPMask@11)) (and (forall ((x$0 T@Ref) (y@@12 T@Ref) (u_1@@7 T@Ref) (v_2_2@@0 T@Ref) ) (!  (=> (and (DEP ($$ ExhaleHeap@0 new_g@0) x$0 y@@12 u_1@@7 v_2_2@@0) (not (DEP ($$ ExhaleHeap@0 new_g@0) x$0 y@@12 new_node@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) new_node@0 next)))) (DEP ($$ ExhaleHeap@2 new_g@0) x$0 y@@12 u_1@@7 v_2_2@@0))
 :qid |stdinbpl.5959:28|
 :skolemid |645|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@2 new_g@0)) new_g@0) x$0 y@@12 u_1@@7 v_2_2@@0))
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@0 new_g@0)) new_g@0) x$0 y@@12 u_1@@7 v_2_2@@0))
)) (= (ControlFlow 0 239) 238))) anon193_correct)))
(let ((anon375_Else_correct  (=> (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) new_node@0 next) null) (and (=> (= (ControlFlow 0 242) 239) anon376_Then_correct) (=> (= (ControlFlow 0 242) 240) anon376_Else_correct)))))
(let ((anon375_Then_correct  (=> (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) new_node@0 next) null)) (=> (and (state ExhaleHeap@2 QPMask@11) (forall ((v1_2_1 T@Ref) (v2_2_1 T@Ref) ) (! (= (edge ($$ ExhaleHeap@2 new_g@0) v1_2_1 v2_2_1)  (and (edge ($$ ExhaleHeap@0 new_g@0) v1_2_1 v2_2_1) (not (and (= v1_2_1 new_node@0) (= v2_2_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) new_node@0 next))))))
 :qid |stdinbpl.5952:28|
 :skolemid |644|
 :pattern ( (edge (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@2 new_g@0)) new_g@0) v1_2_1 v2_2_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@2 new_g@0)) new_g@0) v1_2_1 v2_2_1))
))) (and (=> (= (ControlFlow 0 241) 239) anon376_Then_correct) (=> (= (ControlFlow 0 241) 240) anon376_Else_correct))))))
(let ((anon374_Else_correct  (=> (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) new_node@0 next) null)) (and (=> (= (ControlFlow 0 244) 241) anon375_Then_correct) (=> (= (ControlFlow 0 244) 242) anon375_Else_correct)))))
(let ((anon374_Then_correct  (=> (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) new_node@0 next) null) (=> (and (state ExhaleHeap@2 QPMask@11) (|Set#Equal_48858| ($$ ExhaleHeap@2 new_g@0) ($$ ExhaleHeap@0 new_g@0))) (and (=> (= (ControlFlow 0 243) 241) anon375_Then_correct) (=> (= (ControlFlow 0 243) 242) anon375_Else_correct))))))
(let ((anon372_Else_correct  (=> (forall ((n$0_9_1_1 T@Ref) ) (!  (=> (and (select new_g@0 n$0_9_1_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_9_1_1 next) null))) (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_9_1_1 next)))
 :qid |stdinbpl.5885:26|
 :skolemid |635|
 :pattern ( (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_9_1_1 next)))
 :pattern ( (select new_g@0 n$0_9_1_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$0_9_1_1 next))
)) (=> (and (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@2 QPMask@10) (not (select new_g@0 null))) (=> (and (and (select new_g@0 new_node@0) (not (= new_node@0 null))) (and (= Mask@3 (PolymorphicMapType_73948 (store (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@10) new_node@0 next (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@10) new_node@0 next) FullPerm)) (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@10) (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@10) (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@10) (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@10))) (state ExhaleHeap@2 Mask@3))) (and (=> (= (ControlFlow 0 245) (- 0 247)) (forall ((n$1_3 T@Ref) (n$1_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_3 n$1_3_1)) (and (select new_g@0 n$1_3) (not (= n$1_3 new_node@0)))) (and (select new_g@0 n$1_3_1) (not (= n$1_3_1 new_node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_3 n$1_3_1)))
 :qid |stdinbpl.5903:21|
 :skolemid |636|
))) (=> (forall ((n$1_3@@0 T@Ref) (n$1_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_3@@0 n$1_3_1@@0)) (and (select new_g@0 n$1_3@@0) (not (= n$1_3@@0 new_node@0)))) (and (select new_g@0 n$1_3_1@@0) (not (= n$1_3_1@@0 new_node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_3@@0 n$1_3_1@@0)))
 :qid |stdinbpl.5903:21|
 :skolemid |636|
)) (=> (and (forall ((n$1_3@@1 T@Ref) ) (!  (=> (and (and (select new_g@0 n$1_3@@1) (not (= n$1_3@@1 new_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange75 n$1_3@@1) (= (invRecv75 n$1_3@@1) n$1_3@@1)))
 :qid |stdinbpl.5909:28|
 :skolemid |637|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@2) n$1_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@11) n$1_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@2) n$1_3@@1 next))
)) (forall ((o_9@@111 T@Ref) ) (!  (=> (and (and (and (select new_g@0 (invRecv75 o_9@@111)) (not (= (invRecv75 o_9@@111) new_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange75 o_9@@111)) (= (invRecv75 o_9@@111) o_9@@111))
 :qid |stdinbpl.5913:28|
 :skolemid |638|
 :pattern ( (invRecv75 o_9@@111))
))) (and (=> (= (ControlFlow 0 245) (- 0 246)) (forall ((n$1_3@@2 T@Ref) ) (!  (=> (and (select new_g@0 n$1_3@@2) (not (= n$1_3@@2 new_node@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5919:21|
 :skolemid |639|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@2) n$1_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@11) n$1_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@2) n$1_3@@2 next))
))) (=> (forall ((n$1_3@@3 T@Ref) ) (!  (=> (and (select new_g@0 n$1_3@@3) (not (= n$1_3@@3 new_node@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5919:21|
 :skolemid |639|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@2) n$1_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@11) n$1_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@2) n$1_3@@3 next))
)) (=> (and (forall ((n$1_3@@4 T@Ref) ) (!  (=> (and (and (select new_g@0 n$1_3@@4) (not (= n$1_3@@4 new_node@0))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$1_3@@4 null)))
 :qid |stdinbpl.5925:28|
 :skolemid |640|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@2) n$1_3@@4 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@11) n$1_3@@4 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@2) n$1_3@@4 next))
)) (forall ((o_9@@112 T@Ref) ) (!  (and (=> (and (and (and (select new_g@0 (invRecv75 o_9@@112)) (not (= (invRecv75 o_9@@112) new_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange75 o_9@@112)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv75 o_9@@112) o_9@@112)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@11) o_9@@112 next) (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@3) o_9@@112 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select new_g@0 (invRecv75 o_9@@112)) (not (= (invRecv75 o_9@@112) new_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange75 o_9@@112))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@11) o_9@@112 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@3) o_9@@112 next))))
 :qid |stdinbpl.5931:28|
 :skolemid |641|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@11) o_9@@112 next))
))) (=> (and (and (and (and (and (and (forall ((o_9@@113 T@Ref) (f_5@@79 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@3) o_9@@113 f_5@@79) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@11) o_9@@113 f_5@@79)))
 :qid |stdinbpl.5935:35|
 :skolemid |642|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@3) o_9@@113 f_5@@79))
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@11) o_9@@113 f_5@@79))
)) (forall ((o_9@@114 T@Ref) (f_5@@80 T@Field_74000_74001) ) (!  (=> (not (= f_5@@80 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@3) o_9@@114 f_5@@80) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@11) o_9@@114 f_5@@80)))
 :qid |stdinbpl.5935:35|
 :skolemid |642|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@3) o_9@@114 f_5@@80))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@11) o_9@@114 f_5@@80))
))) (forall ((o_9@@115 T@Ref) (f_5@@81 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@3) o_9@@115 f_5@@81) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@11) o_9@@115 f_5@@81)))
 :qid |stdinbpl.5935:35|
 :skolemid |642|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@3) o_9@@115 f_5@@81))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@11) o_9@@115 f_5@@81))
))) (forall ((o_9@@116 T@Ref) (f_5@@82 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@3) o_9@@116 f_5@@82) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@11) o_9@@116 f_5@@82)))
 :qid |stdinbpl.5935:35|
 :skolemid |642|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@3) o_9@@116 f_5@@82))
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@11) o_9@@116 f_5@@82))
))) (forall ((o_9@@117 T@Ref) (f_5@@83 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@3) o_9@@117 f_5@@83) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@11) o_9@@117 f_5@@83)))
 :qid |stdinbpl.5935:35|
 :skolemid |642|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@3) o_9@@117 f_5@@83))
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@11) o_9@@117 f_5@@83))
))) (state ExhaleHeap@2 QPMask@11)) (and (forall ((n$2_4_1 T@Ref) ) (!  (=> (and (select new_g@0 n$2_4_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@2) n$2_4_1 next) null))) (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@2) n$2_4_1 next)))
 :qid |stdinbpl.5941:26|
 :skolemid |643|
 :pattern ( (select new_g@0 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@2) n$2_4_1 next)))
 :pattern ( (select new_g@0 n$2_4_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@2) n$2_4_1 next))
)) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@2) new_node@0 next) null))) (and (=> (= (ControlFlow 0 245) 243) anon374_Then_correct) (=> (= (ControlFlow 0 245) 244) anon374_Else_correct))))))))))))))
(let ((anon183_correct  (=> (= Mask@2 (PolymorphicMapType_73948 (store (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@7) new_node@0 next (- (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@7) new_node@0 next) FullPerm)) (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@7) (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@7) (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@7) (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@7))) (and (=> (= (ControlFlow 0 248) (- 0 251)) (forall ((n_57_1 T@Ref) ) (!  (=> (and (and (select new_g@0 n_57_1) (not (= n_57_1 new_node@0))) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_57_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5837:23|
 :skolemid |628|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_57_1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@10) n_57_1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_57_1 next))
))) (=> (forall ((n_57_1@@0 T@Ref) ) (!  (=> (and (and (select new_g@0 n_57_1@@0) (not (= n_57_1@@0 new_node@0))) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_57_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5837:23|
 :skolemid |628|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_57_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@10) n_57_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_57_1@@0 next))
)) (and (=> (= (ControlFlow 0 248) (- 0 250)) (forall ((n_57_1@@1 T@Ref) (n_57_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_57_1@@1 n_57_2)) (and (select new_g@0 n_57_1@@1) (not (= n_57_1@@1 new_node@0)))) (and (select new_g@0 n_57_2) (not (= n_57_2 new_node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_57_1@@1 n_57_2)))
 :qid |stdinbpl.5844:23|
 :skolemid |629|
 :pattern ( (neverTriggered74 n_57_1@@1) (neverTriggered74 n_57_2))
))) (=> (forall ((n_57_1@@2 T@Ref) (n_57_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_57_1@@2 n_57_2@@0)) (and (select new_g@0 n_57_1@@2) (not (= n_57_1@@2 new_node@0)))) (and (select new_g@0 n_57_2@@0) (not (= n_57_2@@0 new_node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_57_1@@2 n_57_2@@0)))
 :qid |stdinbpl.5844:23|
 :skolemid |629|
 :pattern ( (neverTriggered74 n_57_1@@2) (neverTriggered74 n_57_2@@0))
)) (and (=> (= (ControlFlow 0 248) (- 0 249)) (forall ((n_57_1@@3 T@Ref) ) (!  (=> (and (select new_g@0 n_57_1@@3) (not (= n_57_1@@3 new_node@0))) (>= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@2) n_57_1@@3 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.5851:23|
 :skolemid |630|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_57_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@10) n_57_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_57_1@@3 next))
))) (=> (forall ((n_57_1@@4 T@Ref) ) (!  (=> (and (select new_g@0 n_57_1@@4) (not (= n_57_1@@4 new_node@0))) (>= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@2) n_57_1@@4 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.5851:23|
 :skolemid |630|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_57_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@10) n_57_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_57_1@@4 next))
)) (=> (forall ((n_57_1@@5 T@Ref) ) (!  (=> (and (and (select new_g@0 n_57_1@@5) (not (= n_57_1@@5 new_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange74 n_57_1@@5) (= (invRecv74 n_57_1@@5) n_57_1@@5)))
 :qid |stdinbpl.5857:28|
 :skolemid |631|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_57_1@@5 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@10) n_57_1@@5 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_57_1@@5 next))
)) (=> (and (forall ((o_9@@118 T@Ref) ) (!  (=> (and (and (select new_g@0 (invRecv74 o_9@@118)) (not (= (invRecv74 o_9@@118) new_node@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange74 o_9@@118))) (= (invRecv74 o_9@@118) o_9@@118))
 :qid |stdinbpl.5861:28|
 :skolemid |632|
 :pattern ( (invRecv74 o_9@@118))
)) (forall ((o_9@@119 T@Ref) ) (!  (and (=> (and (and (select new_g@0 (invRecv74 o_9@@119)) (not (= (invRecv74 o_9@@119) new_node@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange74 o_9@@119))) (and (= (invRecv74 o_9@@119) o_9@@119) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@10) o_9@@119 next) (- (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@2) o_9@@119 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select new_g@0 (invRecv74 o_9@@119)) (not (= (invRecv74 o_9@@119) new_node@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange74 o_9@@119)))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@10) o_9@@119 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@2) o_9@@119 next))))
 :qid |stdinbpl.5867:28|
 :skolemid |633|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@10) o_9@@119 next))
))) (=> (and (and (and (and (forall ((o_9@@120 T@Ref) (f_5@@84 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@2) o_9@@120 f_5@@84) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@10) o_9@@120 f_5@@84)))
 :qid |stdinbpl.5873:35|
 :skolemid |634|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@10) o_9@@120 f_5@@84))
)) (forall ((o_9@@121 T@Ref) (f_5@@85 T@Field_74000_74001) ) (!  (=> (not (= f_5@@85 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@2) o_9@@121 f_5@@85) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@10) o_9@@121 f_5@@85)))
 :qid |stdinbpl.5873:35|
 :skolemid |634|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@10) o_9@@121 f_5@@85))
))) (forall ((o_9@@122 T@Ref) (f_5@@86 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@2) o_9@@122 f_5@@86) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@10) o_9@@122 f_5@@86)))
 :qid |stdinbpl.5873:35|
 :skolemid |634|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@10) o_9@@122 f_5@@86))
))) (forall ((o_9@@123 T@Ref) (f_5@@87 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@2) o_9@@123 f_5@@87) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@10) o_9@@123 f_5@@87)))
 :qid |stdinbpl.5873:35|
 :skolemid |634|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@10) o_9@@123 f_5@@87))
))) (forall ((o_9@@124 T@Ref) (f_5@@88 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@2) o_9@@124 f_5@@88) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@10) o_9@@124 f_5@@88)))
 :qid |stdinbpl.5873:35|
 :skolemid |634|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@10) o_9@@124 f_5@@88))
))) (and (and (=> (= (ControlFlow 0 248) 245) anon372_Else_correct) (=> (= (ControlFlow 0 248) 235) anon373_Then_correct)) (=> (= (ControlFlow 0 248) 237) anon373_Else_correct))))))))))))))
(let ((anon371_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 254) 248)) anon183_correct)))
(let ((anon371_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 252) (- 0 253)) (<= FullPerm (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@7) new_node@0 next))) (=> (<= FullPerm (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@7) new_node@0 next)) (=> (= (ControlFlow 0 252) 248) anon183_correct))))))
(let ((anon370_Then_correct  (=> (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) new_node@0 next) null)) (and (=> (= (ControlFlow 0 255) (- 0 258)) (select new_g@0 new_node@0)) (=> (select new_g@0 new_node@0) (and (=> (= (ControlFlow 0 255) (- 0 257)) (not (select new_g@0 null))) (=> (not (select new_g@0 null)) (and (=> (= (ControlFlow 0 255) (- 0 256)) (select new_g@0 new_node@0)) (=> (select new_g@0 new_node@0) (and (=> (= (ControlFlow 0 255) 252) anon371_Then_correct) (=> (= (ControlFlow 0 255) 254) anon371_Else_correct)))))))))))
(let ((anon370_Else_correct  (=> (and (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) new_node@0 next) null) (= Mask@4 QPMask@7)) (and (= Heap@0 ExhaleHeap@0) (= (ControlFlow 0 233) 227))) anon194_correct)))
(let ((anon369_Else_correct  (=> (apply_TCFraming ExhaleHeap@0 g_1 (|Set#Singleton_49733| new_node@0)) (=> (and (state ExhaleHeap@0 QPMask@7) (state ExhaleHeap@0 QPMask@7)) (and (=> (= (ControlFlow 0 259) (- 0 260)) (HasDirectPerm_48849_48850 QPMask@7 new_node@0 next)) (=> (HasDirectPerm_48849_48850 QPMask@7 new_node@0 next) (and (=> (= (ControlFlow 0 259) 255) anon370_Then_correct) (=> (= (ControlFlow 0 259) 233) anon370_Else_correct))))))))
(let ((anon369_Then_correct  (and (=> (= (ControlFlow 0 77) (- 0 83)) (forall ((n_55_1 T@Ref) ) (!  (=> (and (select g_1 n_55_1) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_55_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5734:21|
 :skolemid |618|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_55_1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@8) n_55_1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_55_1 next))
))) (=> (forall ((n_55_1@@0 T@Ref) ) (!  (=> (and (select g_1 n_55_1@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_55_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5734:21|
 :skolemid |618|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_55_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@8) n_55_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_55_1@@0 next))
)) (and (=> (= (ControlFlow 0 77) (- 0 82)) (forall ((n_55_1@@1 T@Ref) (n_55_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_55_1@@1 n_55_2)) (select g_1 n_55_1@@1)) (select g_1 n_55_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_55_1@@1 n_55_2)))
 :qid |stdinbpl.5741:21|
 :skolemid |619|
 :pattern ( (neverTriggered72 n_55_1@@1) (neverTriggered72 n_55_2))
))) (=> (forall ((n_55_1@@2 T@Ref) (n_55_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_55_1@@2 n_55_2@@0)) (select g_1 n_55_1@@2)) (select g_1 n_55_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_55_1@@2 n_55_2@@0)))
 :qid |stdinbpl.5741:21|
 :skolemid |619|
 :pattern ( (neverTriggered72 n_55_1@@2) (neverTriggered72 n_55_2@@0))
)) (and (=> (= (ControlFlow 0 77) (- 0 81)) (forall ((n_55_1@@3 T@Ref) ) (!  (=> (select g_1 n_55_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@7) n_55_1@@3 next) NoPerm)))
 :qid |stdinbpl.5748:21|
 :skolemid |620|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_55_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@8) n_55_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_55_1@@3 next))
))) (=> (forall ((n_55_1@@4 T@Ref) ) (!  (=> (select g_1 n_55_1@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@7) n_55_1@@4 next) NoPerm)))
 :qid |stdinbpl.5748:21|
 :skolemid |620|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_55_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@8) n_55_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_55_1@@4 next))
)) (=> (and (forall ((n_55_1@@5 T@Ref) ) (!  (=> (and (select g_1 n_55_1@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange72 n_55_1@@5) (= (invRecv72 n_55_1@@5) n_55_1@@5)))
 :qid |stdinbpl.5754:26|
 :skolemid |621|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_55_1@@5 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@8) n_55_1@@5 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_55_1@@5 next))
)) (forall ((o_9@@125 T@Ref) ) (!  (=> (and (select g_1 (invRecv72 o_9@@125)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange72 o_9@@125))) (= (invRecv72 o_9@@125) o_9@@125))
 :qid |stdinbpl.5758:26|
 :skolemid |622|
 :pattern ( (invRecv72 o_9@@125))
))) (and (=> (= (ControlFlow 0 77) (- 0 80)) (forall ((n_56_1 T@Ref) ) (!  (=> (and (select (|Set#Singleton_49733| new_node@0) n_56_1) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_56_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5766:21|
 :skolemid |623|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_56_1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@9) n_56_1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_56_1 next))
))) (=> (forall ((n_56_1@@0 T@Ref) ) (!  (=> (and (select (|Set#Singleton_49733| new_node@0) n_56_1@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_56_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5766:21|
 :skolemid |623|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_56_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@9) n_56_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_56_1@@0 next))
)) (and (=> (= (ControlFlow 0 77) (- 0 79)) (forall ((n_56_1@@1 T@Ref) (n_56_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_56_1@@1 n_56_2)) (select (|Set#Singleton_49733| new_node@0) n_56_1@@1)) (select (|Set#Singleton_49733| new_node@0) n_56_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_56_1@@1 n_56_2)))
 :qid |stdinbpl.5773:21|
 :skolemid |624|
 :pattern ( (neverTriggered73 n_56_1@@1) (neverTriggered73 n_56_2))
))) (=> (forall ((n_56_1@@2 T@Ref) (n_56_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_56_1@@2 n_56_2@@0)) (select (|Set#Singleton_49733| new_node@0) n_56_1@@2)) (select (|Set#Singleton_49733| new_node@0) n_56_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_56_1@@2 n_56_2@@0)))
 :qid |stdinbpl.5773:21|
 :skolemid |624|
 :pattern ( (neverTriggered73 n_56_1@@2) (neverTriggered73 n_56_2@@0))
)) (and (=> (= (ControlFlow 0 77) (- 0 78)) (forall ((n_56_1@@3 T@Ref) ) (!  (=> (select (|Set#Singleton_49733| new_node@0) n_56_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@7) n_56_1@@3 next) NoPerm)))
 :qid |stdinbpl.5780:21|
 :skolemid |625|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_56_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@9) n_56_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_56_1@@3 next))
))) (=> (forall ((n_56_1@@4 T@Ref) ) (!  (=> (select (|Set#Singleton_49733| new_node@0) n_56_1@@4) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@7) n_56_1@@4 next) NoPerm)))
 :qid |stdinbpl.5780:21|
 :skolemid |625|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_56_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@9) n_56_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_56_1@@4 next))
)) (=> (forall ((n_56_1@@5 T@Ref) ) (!  (=> (and (select (|Set#Singleton_49733| new_node@0) n_56_1@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange73 n_56_1@@5) (= (invRecv73 n_56_1@@5) n_56_1@@5)))
 :qid |stdinbpl.5786:26|
 :skolemid |626|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_56_1@@5 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@9) n_56_1@@5 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_56_1@@5 next))
)) (=> (and (forall ((o_9@@126 T@Ref) ) (!  (=> (and (select (|Set#Singleton_49733| new_node@0) (invRecv73 o_9@@126)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange73 o_9@@126))) (= (invRecv73 o_9@@126) o_9@@126))
 :qid |stdinbpl.5790:26|
 :skolemid |627|
 :pattern ( (invRecv73 o_9@@126))
)) (= (ControlFlow 0 77) (- 0 76))) (|Set#Equal_49043| (|Set#Intersection_49043| (|Set#Singleton_49733| new_node@0) g_1) |Set#Empty_49046|))))))))))))))))))
(let ((anon178_correct  (=> (and (state ExhaleHeap@0 QPMask@7) (state ExhaleHeap@0 QPMask@7)) (and (=> (= (ControlFlow 0 261) 77) anon369_Then_correct) (=> (= (ControlFlow 0 261) 259) anon369_Else_correct)))))
(let ((anon368_Else_correct  (=> (and (and (not (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) node@0 next) start_1@@1) (< x@@14 (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) start_1@@1 val)))) (state ExhaleHeap@0 QPMask@7)) (and (= new_start@0 start_1@@1) (= (ControlFlow 0 263) 261))) anon178_correct)))
(let ((anon368_Then_correct  (=> (and (and (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) node@0 next) start_1@@1) (< x@@14 (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) start_1@@1 val))) (state ExhaleHeap@0 QPMask@7)) (and (= new_start@0 new_node@0) (= (ControlFlow 0 262) 261))) anon178_correct)))
(let ((anon367_Else_correct  (=> (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) node@0 next) start_1@@1)) (and (=> (= (ControlFlow 0 266) 262) anon368_Then_correct) (=> (= (ControlFlow 0 266) 263) anon368_Else_correct)))))
(let ((anon367_Then_correct  (=> (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) node@0 next) start_1@@1) (and (=> (= (ControlFlow 0 264) (- 0 265)) (HasDirectPerm_48852_6878 QPMask@7 start_1@@1 val)) (=> (HasDirectPerm_48852_6878 QPMask@7 start_1@@1 val) (and (=> (= (ControlFlow 0 264) 262) anon368_Then_correct) (=> (= (ControlFlow 0 264) 263) anon368_Else_correct)))))))
(let ((anon349_Else_correct  (=> (or (and (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) node@0 val) x@@14) (< x@@14 (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) node@0 next) val))) (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) node@0 next) start_1@@1) (or (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) node@0 val) x@@14) (< x@@14 (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) start_1@@1 val))))) (=> (and (state ExhaleHeap@0 QPMask@3) (not (select g_1 null))) (and (=> (= (ControlFlow 0 267) (- 0 270)) (forall ((n$3_5_1 T@Ref) (n$3_5_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_5_1 n$3_5_2)) (select g_1 n$3_5_1)) (select g_1 n$3_5_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_5_1 n$3_5_2)))
 :qid |stdinbpl.5605:17|
 :skolemid |600|
))) (=> (forall ((n$3_5_1@@0 T@Ref) (n$3_5_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_5_1@@0 n$3_5_2@@0)) (select g_1 n$3_5_1@@0)) (select g_1 n$3_5_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_5_1@@0 n$3_5_2@@0)))
 :qid |stdinbpl.5605:17|
 :skolemid |600|
)) (=> (and (and (forall ((n$3_5_1@@1 T@Ref) ) (!  (=> (and (select g_1 n$3_5_1@@1) (< NoPerm FullPerm)) (and (qpRange70 n$3_5_1@@1) (= (invRecv70 n$3_5_1@@1) n$3_5_1@@1)))
 :qid |stdinbpl.5611:24|
 :skolemid |601|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$3_5_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@6) n$3_5_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$3_5_1@@1 next))
)) (forall ((o_9@@127 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv70 o_9@@127)) (< NoPerm FullPerm)) (qpRange70 o_9@@127)) (= (invRecv70 o_9@@127) o_9@@127))
 :qid |stdinbpl.5615:24|
 :skolemid |602|
 :pattern ( (invRecv70 o_9@@127))
))) (and (forall ((n$3_5_1@@2 T@Ref) ) (!  (=> (select g_1 n$3_5_1@@2) (not (= n$3_5_1@@2 null)))
 :qid |stdinbpl.5621:24|
 :skolemid |603|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$3_5_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@6) n$3_5_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$3_5_1@@2 next))
)) (forall ((o_9@@128 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv70 o_9@@128)) (< NoPerm FullPerm)) (qpRange70 o_9@@128)) (and (=> (< NoPerm FullPerm) (= (invRecv70 o_9@@128) o_9@@128)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@6) o_9@@128 next) (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@3) o_9@@128 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv70 o_9@@128)) (< NoPerm FullPerm)) (qpRange70 o_9@@128))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@6) o_9@@128 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@3) o_9@@128 next))))
 :qid |stdinbpl.5627:24|
 :skolemid |604|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@6) o_9@@128 next))
)))) (=> (and (and (and (and (and (and (and (forall ((o_9@@129 T@Ref) (f_5@@89 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@3) o_9@@129 f_5@@89) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@6) o_9@@129 f_5@@89)))
 :qid |stdinbpl.5631:31|
 :skolemid |605|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@3) o_9@@129 f_5@@89))
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@6) o_9@@129 f_5@@89))
)) (forall ((o_9@@130 T@Ref) (f_5@@90 T@Field_74000_74001) ) (!  (=> (not (= f_5@@90 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@3) o_9@@130 f_5@@90) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@6) o_9@@130 f_5@@90)))
 :qid |stdinbpl.5631:31|
 :skolemid |605|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@3) o_9@@130 f_5@@90))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@6) o_9@@130 f_5@@90))
))) (forall ((o_9@@131 T@Ref) (f_5@@91 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@3) o_9@@131 f_5@@91) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@6) o_9@@131 f_5@@91)))
 :qid |stdinbpl.5631:31|
 :skolemid |605|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@3) o_9@@131 f_5@@91))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@6) o_9@@131 f_5@@91))
))) (forall ((o_9@@132 T@Ref) (f_5@@92 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@3) o_9@@132 f_5@@92) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@6) o_9@@132 f_5@@92)))
 :qid |stdinbpl.5631:31|
 :skolemid |605|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@3) o_9@@132 f_5@@92))
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@6) o_9@@132 f_5@@92))
))) (forall ((o_9@@133 T@Ref) (f_5@@93 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@3) o_9@@133 f_5@@93) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@6) o_9@@133 f_5@@93)))
 :qid |stdinbpl.5631:31|
 :skolemid |605|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@3) o_9@@133 f_5@@93))
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@6) o_9@@133 f_5@@93))
))) (state ExhaleHeap@0 QPMask@6)) (and (forall ((n$4_7_1 T@Ref) ) (!  (=> (select g_1 n$4_7_1) (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$4_7_1 next)))
 :qid |stdinbpl.5637:22|
 :skolemid |606|
 :pattern ( (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$4_7_1 next)))
 :pattern ( (select g_1 n$4_7_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n$4_7_1 next))
)) (forall ((v1$1_7 T@Ref) (v2$1_7 T@Ref) (v$3_7 T@Ref) ) (!  (=> (and (select g_1 v1$1_7) (and (select g_1 v2$1_7) (select g_1 v$3_7))) (=> (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v1$1_7 next) v$3_7) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v2$1_7 next) v$3_7)) (= v1$1_7 v2$1_7)))
 :qid |stdinbpl.5641:22|
 :skolemid |607|
 :pattern ( (select g_1 v$3_7) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v1$1_7 next) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v2$1_7 next))
)))) (and (and (forall ((v$4_7 T@Ref) ) (!  (=> (select g_1 v$4_7) (= (= v$4_7 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v$4_7 next)) (|Set#Equal_49043| g_1 (|Set#Singleton_49733| v$4_7))))
 :qid |stdinbpl.5645:22|
 :skolemid |608|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) v$4_7 next))
)) (select g_1 node@0)) (and (state ExhaleHeap@0 QPMask@6) (forall ((n_51_1 T@Ref) (m_13 T@Ref) ) (!  (=> (and (select g_1 n_51_1) (select g_1 m_13)) (and (exists_path ($$ ExhaleHeap@0 g_1) n_51_1 m_13) (exists_path ($$ ExhaleHeap@0 g_1) m_13 n_51_1)))
 :qid |stdinbpl.5651:22|
 :skolemid |609|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| ExhaleHeap@0 g_1)) g_1) n_51_1 m_13))
))))) (and (=> (= (ControlFlow 0 267) (- 0 269)) (forall ((n_52_1 T@Ref) (n_52_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_52_1 n_52_2)) (select g_1 n_52_1)) (select g_1 n_52_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_52_1 n_52_2)))
 :qid |stdinbpl.5657:17|
 :skolemid |610|
))) (=> (forall ((n_52_1@@0 T@Ref) (n_52_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_52_1@@0 n_52_2@@0)) (select g_1 n_52_1@@0)) (select g_1 n_52_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_52_1@@0 n_52_2@@0)))
 :qid |stdinbpl.5657:17|
 :skolemid |610|
)) (=> (and (and (forall ((n_52_1@@1 T@Ref) ) (!  (=> (and (select g_1 n_52_1@@1) (< NoPerm FullPerm)) (and (qpRange71 n_52_1@@1) (= (invRecv71 n_52_1@@1) n_52_1@@1)))
 :qid |stdinbpl.5663:24|
 :skolemid |611|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_52_1@@1 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@7) n_52_1@@1 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_52_1@@1 val))
)) (forall ((o_9@@134 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv71 o_9@@134)) (< NoPerm FullPerm)) (qpRange71 o_9@@134)) (= (invRecv71 o_9@@134) o_9@@134))
 :qid |stdinbpl.5667:24|
 :skolemid |612|
 :pattern ( (invRecv71 o_9@@134))
))) (and (forall ((n_52_1@@2 T@Ref) ) (!  (=> (select g_1 n_52_1@@2) (not (= n_52_1@@2 null)))
 :qid |stdinbpl.5673:24|
 :skolemid |613|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_52_1@@2 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@7) n_52_1@@2 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_52_1@@2 val))
)) (forall ((o_9@@135 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv71 o_9@@135)) (< NoPerm FullPerm)) (qpRange71 o_9@@135)) (and (=> (< NoPerm FullPerm) (= (invRecv71 o_9@@135) o_9@@135)) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@7) o_9@@135 val) (+ (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@6) o_9@@135 val) FullPerm)))) (=> (not (and (and (select g_1 (invRecv71 o_9@@135)) (< NoPerm FullPerm)) (qpRange71 o_9@@135))) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@7) o_9@@135 val) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@6) o_9@@135 val))))
 :qid |stdinbpl.5679:24|
 :skolemid |614|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@7) o_9@@135 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@136 T@Ref) (f_5@@94 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@6) o_9@@136 f_5@@94) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@7) o_9@@136 f_5@@94)))
 :qid |stdinbpl.5683:31|
 :skolemid |615|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@6) o_9@@136 f_5@@94))
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@7) o_9@@136 f_5@@94))
)) (forall ((o_9@@137 T@Ref) (f_5@@95 T@Field_74000_74001) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@6) o_9@@137 f_5@@95) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@7) o_9@@137 f_5@@95)))
 :qid |stdinbpl.5683:31|
 :skolemid |615|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@6) o_9@@137 f_5@@95))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@7) o_9@@137 f_5@@95))
))) (forall ((o_9@@138 T@Ref) (f_5@@96 T@Field_83161_6878) ) (!  (=> (not (= f_5@@96 val)) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@6) o_9@@138 f_5@@96) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@7) o_9@@138 f_5@@96)))
 :qid |stdinbpl.5683:31|
 :skolemid |615|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@6) o_9@@138 f_5@@96))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@7) o_9@@138 f_5@@96))
))) (forall ((o_9@@139 T@Ref) (f_5@@97 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@6) o_9@@139 f_5@@97) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@7) o_9@@139 f_5@@97)))
 :qid |stdinbpl.5683:31|
 :skolemid |615|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@6) o_9@@139 f_5@@97))
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@7) o_9@@139 f_5@@97))
))) (forall ((o_9@@140 T@Ref) (f_5@@98 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@6) o_9@@140 f_5@@98) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@7) o_9@@140 f_5@@98)))
 :qid |stdinbpl.5683:31|
 :skolemid |615|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@6) o_9@@140 f_5@@98))
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@7) o_9@@140 f_5@@98))
))) (state ExhaleHeap@0 QPMask@7)) (and (and (forall ((n_53_1 T@Ref) ) (!  (=> (and (select g_1 n_53_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_53_1 next) start_1@@1))) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_53_1 val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_53_1 next) val)))
 :qid |stdinbpl.5689:22|
 :skolemid |616|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_53_1 next) val))
)) (forall ((n_54_1 T@Ref) ) (!  (=> (and (select g_1 n_54_1) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_54_1 next) start_1@@1)) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_54_1 next) val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) n_54_1 val)))
 :qid |stdinbpl.5693:22|
 :skolemid |617|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@0) n_54_1 next) val))
))) (and (state ExhaleHeap@0 QPMask@7) (state ExhaleHeap@0 QPMask@7)))) (and (=> (= (ControlFlow 0 267) (- 0 268)) (HasDirectPerm_48849_48850 QPMask@7 node@0 next)) (=> (HasDirectPerm_48849_48850 QPMask@7 node@0 next) (and (=> (= (ControlFlow 0 267) 264) anon367_Then_correct) (=> (= (ControlFlow 0 267) 266) anon367_Else_correct))))))))))))))))
(let ((anon326_Else_correct  (=> (forall ((n_31_1_1 T@Ref) ) (!  (=> (and (select g_1 n_31_1_1) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_31_1_1 next) start_1@@1)) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_31_1_1 next) val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) n_31_1_1 val)))
 :qid |stdinbpl.5003:24|
 :skolemid |535|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_31_1_1 next) val))
)) (=> (and (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@0 QPMask@3) (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| ExhaleHeap@0) node@0 $allocated)) (and (and (=> (= (ControlFlow 0 388) 387) anon328_Then_correct) (=> (= (ControlFlow 0 388) 325) anon349_Then_correct)) (=> (= (ControlFlow 0 388) 267) anon349_Else_correct))))))
(let ((anon100_correct true))
(let ((anon327_Else_correct  (=> (and (not (and (select g_1 n_30) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_30 next) start_1@@1))) (= (ControlFlow 0 75) 72)) anon100_correct)))
(let ((anon327_Then_correct  (=> (and (select g_1 n_30) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_30 next) start_1@@1)) (and (=> (= (ControlFlow 0 73) (- 0 74)) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_30 next) val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) n_30 val))) (=> (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_30 next) val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) n_30 val)) (=> (= (ControlFlow 0 73) 72) anon100_correct))))))
(let ((anon324_Else_correct  (=> (forall ((n_29_1_1 T@Ref) ) (!  (=> (and (select g_1 n_29_1_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_29_1_1 next) start_1@@1))) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) n_29_1_1 val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_29_1_1 next) val)))
 :qid |stdinbpl.4992:24|
 :skolemid |534|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_29_1_1 next) val))
)) (and (and (=> (= (ControlFlow 0 389) 388) anon326_Else_correct) (=> (= (ControlFlow 0 389) 73) anon327_Then_correct)) (=> (= (ControlFlow 0 389) 75) anon327_Else_correct)))))
(let ((anon96_correct true))
(let ((anon325_Else_correct  (=> (and (not (and (select g_1 n_28) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_28 next) start_1@@1)))) (= (ControlFlow 0 71) 68)) anon96_correct)))
(let ((anon325_Then_correct  (=> (and (select g_1 n_28) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_28 next) start_1@@1))) (and (=> (= (ControlFlow 0 69) (- 0 70)) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) n_28 val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_28 next) val))) (=> (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) n_28 val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_28 next) val)) (=> (= (ControlFlow 0 69) 68) anon96_correct))))))
(let ((anon322_Else_correct  (=> (forall ((n_26_1_1 T@Ref) (m_7_1 T@Ref) ) (!  (=> (and (select g_1 n_26_1_1) (select g_1 m_7_1)) (and (exists_path ($$ Heap@@32 g_1) n_26_1_1 m_7_1) (exists_path ($$ Heap@@32 g_1) m_7_1 n_26_1_1)))
 :qid |stdinbpl.4940:24|
 :skolemid |527|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) n_26_1_1 m_7_1))
)) (and (=> (= (ControlFlow 0 390) (- 0 392)) (forall ((n_27 T@Ref) (n_27_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_27 n_27_1)) (select g_1 n_27)) (select g_1 n_27_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_27 n_27_1)))
 :qid |stdinbpl.4951:21|
 :skolemid |528|
 :pattern ( (neverTriggered61 n_27) (neverTriggered61 n_27_1))
))) (=> (forall ((n_27@@0 T@Ref) (n_27_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_27@@0 n_27_1@@0)) (select g_1 n_27@@0)) (select g_1 n_27_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_27@@0 n_27_1@@0)))
 :qid |stdinbpl.4951:21|
 :skolemid |528|
 :pattern ( (neverTriggered61 n_27@@0) (neverTriggered61 n_27_1@@0))
)) (and (=> (= (ControlFlow 0 390) (- 0 391)) (forall ((n_27@@1 T@Ref) ) (!  (=> (select g_1 n_27@@1) (>= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@2) n_27@@1 val) FullPerm))
 :qid |stdinbpl.4958:21|
 :skolemid |529|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) n_27@@1 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@3) n_27@@1 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) n_27@@1 val))
))) (=> (forall ((n_27@@2 T@Ref) ) (!  (=> (select g_1 n_27@@2) (>= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@2) n_27@@2 val) FullPerm))
 :qid |stdinbpl.4958:21|
 :skolemid |529|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) n_27@@2 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@3) n_27@@2 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) n_27@@2 val))
)) (=> (forall ((n_27@@3 T@Ref) ) (!  (=> (and (select g_1 n_27@@3) (< NoPerm FullPerm)) (and (qpRange61 n_27@@3) (= (invRecv61 n_27@@3) n_27@@3)))
 :qid |stdinbpl.4964:26|
 :skolemid |530|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) n_27@@3 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@3) n_27@@3 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) n_27@@3 val))
)) (=> (and (forall ((o_9@@141 T@Ref) ) (!  (=> (and (select g_1 (invRecv61 o_9@@141)) (and (< NoPerm FullPerm) (qpRange61 o_9@@141))) (= (invRecv61 o_9@@141) o_9@@141))
 :qid |stdinbpl.4968:26|
 :skolemid |531|
 :pattern ( (invRecv61 o_9@@141))
)) (forall ((o_9@@142 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv61 o_9@@142)) (and (< NoPerm FullPerm) (qpRange61 o_9@@142))) (and (= (invRecv61 o_9@@142) o_9@@142) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@3) o_9@@142 val) (- (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@2) o_9@@142 val) FullPerm)))) (=> (not (and (select g_1 (invRecv61 o_9@@142)) (and (< NoPerm FullPerm) (qpRange61 o_9@@142)))) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@3) o_9@@142 val) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@2) o_9@@142 val))))
 :qid |stdinbpl.4974:26|
 :skolemid |532|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@3) o_9@@142 val))
))) (=> (and (and (and (and (forall ((o_9@@143 T@Ref) (f_5@@99 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@2) o_9@@143 f_5@@99) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@3) o_9@@143 f_5@@99)))
 :qid |stdinbpl.4980:33|
 :skolemid |533|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@3) o_9@@143 f_5@@99))
)) (forall ((o_9@@144 T@Ref) (f_5@@100 T@Field_74000_74001) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) o_9@@144 f_5@@100) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@3) o_9@@144 f_5@@100)))
 :qid |stdinbpl.4980:33|
 :skolemid |533|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@3) o_9@@144 f_5@@100))
))) (forall ((o_9@@145 T@Ref) (f_5@@101 T@Field_83161_6878) ) (!  (=> (not (= f_5@@101 val)) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@2) o_9@@145 f_5@@101) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@3) o_9@@145 f_5@@101)))
 :qid |stdinbpl.4980:33|
 :skolemid |533|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@3) o_9@@145 f_5@@101))
))) (forall ((o_9@@146 T@Ref) (f_5@@102 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@2) o_9@@146 f_5@@102) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@3) o_9@@146 f_5@@102)))
 :qid |stdinbpl.4980:33|
 :skolemid |533|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@3) o_9@@146 f_5@@102))
))) (forall ((o_9@@147 T@Ref) (f_5@@103 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@2) o_9@@147 f_5@@103) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@3) o_9@@147 f_5@@103)))
 :qid |stdinbpl.4980:33|
 :skolemid |533|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@3) o_9@@147 f_5@@103))
))) (and (and (=> (= (ControlFlow 0 390) 389) anon324_Else_correct) (=> (= (ControlFlow 0 390) 69) anon325_Then_correct)) (=> (= (ControlFlow 0 390) 71) anon325_Else_correct))))))))))))
(let ((anon92_correct true))
(let ((anon323_Else_correct  (=> (and (not (and (select g_1 n_25) (select g_1 m_6_1))) (= (ControlFlow 0 67) 63)) anon92_correct)))
(let ((anon323_Then_correct  (=> (and (select g_1 n_25) (select g_1 m_6_1)) (and (=> (= (ControlFlow 0 64) (- 0 66)) (exists_path ($$ Heap@@32 g_1) n_25 m_6_1)) (=> (exists_path ($$ Heap@@32 g_1) n_25 m_6_1) (and (=> (= (ControlFlow 0 64) (- 0 65)) (exists_path ($$ Heap@@32 g_1) m_6_1 n_25)) (=> (exists_path ($$ Heap@@32 g_1) m_6_1 n_25) (=> (= (ControlFlow 0 64) 63) anon92_correct))))))))
(let ((anon320_Else_correct  (=> (forall ((v$4_1_1 T@Ref) ) (!  (=> (select g_1 v$4_1_1) (= (= v$4_1_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v$4_1_1 next)) (|Set#Equal_49043| g_1 (|Set#Singleton_49733| v$4_1_1))))
 :qid |stdinbpl.4925:24|
 :skolemid |526|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v$4_1_1 next))
)) (and (=> (= (ControlFlow 0 393) (- 0 394)) (select g_1 start_1@@1)) (=> (select g_1 start_1@@1) (and (and (=> (= (ControlFlow 0 393) 390) anon322_Else_correct) (=> (= (ControlFlow 0 393) 64) anon323_Then_correct)) (=> (= (ControlFlow 0 393) 67) anon323_Else_correct)))))))
(let ((anon88_correct true))
(let ((anon321_Else_correct  (=> (and (not (select g_1 v$4)) (= (ControlFlow 0 62) 59)) anon88_correct)))
(let ((anon321_Then_correct  (=> (select g_1 v$4) (and (=> (= (ControlFlow 0 60) (- 0 61)) (= (= v$4 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v$4 next)) (|Set#Equal_49043| g_1 (|Set#Singleton_49733| v$4)))) (=> (= (= v$4 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v$4 next)) (|Set#Equal_49043| g_1 (|Set#Singleton_49733| v$4))) (=> (= (ControlFlow 0 60) 59) anon88_correct))))))
(let ((anon317_Else_correct  (=> (forall ((v1$1_1_1 T@Ref) (v2$1_1_1 T@Ref) (v$3_1_1 T@Ref) ) (!  (=> (and (select g_1 v1$1_1_1) (and (select g_1 v2$1_1_1) (select g_1 v$3_1_1))) (=> (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v1$1_1_1 next) v$3_1_1) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v2$1_1_1 next) v$3_1_1)) (= v1$1_1_1 v2$1_1_1)))
 :qid |stdinbpl.4914:24|
 :skolemid |525|
 :pattern ( (select g_1 v$3_1_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v1$1_1_1 next) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v2$1_1_1 next))
)) (and (and (=> (= (ControlFlow 0 395) 393) anon320_Else_correct) (=> (= (ControlFlow 0 395) 60) anon321_Then_correct)) (=> (= (ControlFlow 0 395) 62) anon321_Else_correct)))))
(let ((anon84_correct true))
(let ((anon319_Else_correct  (=> (and (not (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v1$1 next) v$3) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v2$1 next) v$3))) (= (ControlFlow 0 57) 53)) anon84_correct)))
(let ((anon319_Then_correct  (=> (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v1$1 next) v$3) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v2$1 next) v$3)) (and (=> (= (ControlFlow 0 55) (- 0 56)) (= v1$1 v2$1)) (=> (= v1$1 v2$1) (=> (= (ControlFlow 0 55) 53) anon84_correct))))))
(let ((anon318_Then_correct  (=> (and (select g_1 v1$1) (and (select g_1 v2$1) (select g_1 v$3))) (and (=> (= (ControlFlow 0 58) 55) anon319_Then_correct) (=> (= (ControlFlow 0 58) 57) anon319_Else_correct)))))
(let ((anon318_Else_correct  (=> (and (not (and (select g_1 v1$1) (and (select g_1 v2$1) (select g_1 v$3)))) (= (ControlFlow 0 54) 53)) anon84_correct)))
(let ((anon315_Else_correct  (=> (forall ((n$4_1_1_1 T@Ref) ) (!  (=> (select g_1 n$4_1_1_1) (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$4_1_1_1 next)))
 :qid |stdinbpl.4901:24|
 :skolemid |524|
 :pattern ( (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$4_1_1_1 next)))
 :pattern ( (select g_1 n$4_1_1_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$4_1_1_1 next))
)) (and (and (=> (= (ControlFlow 0 396) 395) anon317_Else_correct) (=> (= (ControlFlow 0 396) 58) anon318_Then_correct)) (=> (= (ControlFlow 0 396) 54) anon318_Else_correct)))))
(let ((anon79_correct true))
(let ((anon316_Else_correct  (=> (and (not (select g_1 n$4_10)) (= (ControlFlow 0 52) 49)) anon79_correct)))
(let ((anon316_Then_correct  (=> (select g_1 n$4_10) (and (=> (= (ControlFlow 0 50) (- 0 51)) (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$4_10 next))) (=> (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$4_10 next)) (=> (= (ControlFlow 0 50) 49) anon79_correct))))))
(let ((anon294_Else_correct  (=> (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@32) node $allocated) (=> (and (not (select g_1 new_node@0)) (|Set#Equal_49043| new_g@0 (|Set#Union_49040| g_1 (|Set#Singleton_49733| new_node@0)))) (=> (and (and (not (= new_node@0 null)) (= Mask@0 (PolymorphicMapType_73948 (store (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@1) new_node@0 next (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@1) new_node@0 next) FullPerm)) (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@1) (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@1) (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@1) (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@1)))) (and (state Heap@@32 Mask@0) (not (= new_node@0 null)))) (=> (and (and (and (= Mask@1 (PolymorphicMapType_73948 (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@0) (store (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@0) new_node@0 val (+ (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@0) new_node@0 val) FullPerm)) (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@0) (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@0) (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@0))) (state Heap@@32 Mask@1)) (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) new_node@0 next) null) (= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) new_node@0 val) x@@14))) (and (and (state Heap@@32 Mask@1) (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@32) new_node@0 $allocated)) (and (state Heap@@32 Mask@1) (state Heap@@32 Mask@1)))) (and (=> (= (ControlFlow 0 397) (- 0 400)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 397) (- 0 399)) (forall ((n$3_4 T@Ref) (n$3_6 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_4 n$3_6)) (select g_1 n$3_4)) (select g_1 n$3_6)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_4 n$3_6)))
 :qid |stdinbpl.4860:21|
 :skolemid |518|
 :pattern ( (neverTriggered60 n$3_4) (neverTriggered60 n$3_6))
))) (=> (forall ((n$3_4@@0 T@Ref) (n$3_6@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$3_4@@0 n$3_6@@0)) (select g_1 n$3_4@@0)) (select g_1 n$3_6@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$3_4@@0 n$3_6@@0)))
 :qid |stdinbpl.4860:21|
 :skolemid |518|
 :pattern ( (neverTriggered60 n$3_4@@0) (neverTriggered60 n$3_6@@0))
)) (and (=> (= (ControlFlow 0 397) (- 0 398)) (forall ((n$3_4@@1 T@Ref) ) (!  (=> (select g_1 n$3_4@@1) (>= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@1) n$3_4@@1 next) FullPerm))
 :qid |stdinbpl.4867:21|
 :skolemid |519|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$3_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n$3_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$3_4@@1 next))
))) (=> (forall ((n$3_4@@2 T@Ref) ) (!  (=> (select g_1 n$3_4@@2) (>= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@1) n$3_4@@2 next) FullPerm))
 :qid |stdinbpl.4867:21|
 :skolemid |519|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$3_4@@2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n$3_4@@2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$3_4@@2 next))
)) (=> (forall ((n$3_4@@3 T@Ref) ) (!  (=> (and (select g_1 n$3_4@@3) (< NoPerm FullPerm)) (and (qpRange60 n$3_4@@3) (= (invRecv60 n$3_4@@3) n$3_4@@3)))
 :qid |stdinbpl.4873:26|
 :skolemid |520|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$3_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n$3_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$3_4@@3 next))
)) (=> (and (forall ((o_9@@148 T@Ref) ) (!  (=> (and (select g_1 (invRecv60 o_9@@148)) (and (< NoPerm FullPerm) (qpRange60 o_9@@148))) (= (invRecv60 o_9@@148) o_9@@148))
 :qid |stdinbpl.4877:26|
 :skolemid |521|
 :pattern ( (invRecv60 o_9@@148))
)) (forall ((o_9@@149 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv60 o_9@@149)) (and (< NoPerm FullPerm) (qpRange60 o_9@@149))) (and (= (invRecv60 o_9@@149) o_9@@149) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) o_9@@149 next) (- (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@1) o_9@@149 next) FullPerm)))) (=> (not (and (select g_1 (invRecv60 o_9@@149)) (and (< NoPerm FullPerm) (qpRange60 o_9@@149)))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) o_9@@149 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@1) o_9@@149 next))))
 :qid |stdinbpl.4883:26|
 :skolemid |522|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) o_9@@149 next))
))) (=> (and (and (and (and (forall ((o_9@@150 T@Ref) (f_5@@104 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@1) o_9@@150 f_5@@104) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@2) o_9@@150 f_5@@104)))
 :qid |stdinbpl.4889:33|
 :skolemid |523|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@2) o_9@@150 f_5@@104))
)) (forall ((o_9@@151 T@Ref) (f_5@@105 T@Field_74000_74001) ) (!  (=> (not (= f_5@@105 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@1) o_9@@151 f_5@@105) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) o_9@@151 f_5@@105)))
 :qid |stdinbpl.4889:33|
 :skolemid |523|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) o_9@@151 f_5@@105))
))) (forall ((o_9@@152 T@Ref) (f_5@@106 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@1) o_9@@152 f_5@@106) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@2) o_9@@152 f_5@@106)))
 :qid |stdinbpl.4889:33|
 :skolemid |523|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@2) o_9@@152 f_5@@106))
))) (forall ((o_9@@153 T@Ref) (f_5@@107 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@1) o_9@@153 f_5@@107) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@2) o_9@@153 f_5@@107)))
 :qid |stdinbpl.4889:33|
 :skolemid |523|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@2) o_9@@153 f_5@@107))
))) (forall ((o_9@@154 T@Ref) (f_5@@108 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@1) o_9@@154 f_5@@108) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@2) o_9@@154 f_5@@108)))
 :qid |stdinbpl.4889:33|
 :skolemid |523|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@2) o_9@@154 f_5@@108))
))) (and (and (=> (= (ControlFlow 0 397) 396) anon315_Else_correct) (=> (= (ControlFlow 0 397) 50) anon316_Then_correct)) (=> (= (ControlFlow 0 397) 52) anon316_Else_correct)))))))))))))))))
(let ((anon291_Else_correct  (=> (and (forall ((n_9 T@Ref) ) (!  (=> (and (select g_1 n_9) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_9 next) start_1@@1)) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_9 next) val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) n_9 val)))
 :qid |stdinbpl.4512:20|
 :skolemid |489|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_9 next) val))
)) (state Heap@@32 QPMask@1)) (and (=> (= (ControlFlow 0 461) 460) anon294_Then_correct) (=> (= (ControlFlow 0 461) 397) anon294_Else_correct)))))
(let ((anon36_correct true))
(let ((anon293_Else_correct  (=> (and (not (and (select g_1 n_55) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_55 next) start_1@@1))) (= (ControlFlow 0 45) 40)) anon36_correct)))
(let ((anon293_Then_correct  (=> (and (select g_1 n_55) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_55 next) start_1@@1)) (and (=> (= (ControlFlow 0 41) (- 0 44)) (HasDirectPerm_48849_48850 QPMask@1 n_55 next)) (=> (HasDirectPerm_48849_48850 QPMask@1 n_55 next) (and (=> (= (ControlFlow 0 41) (- 0 43)) (HasDirectPerm_48852_6878 QPMask@1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_55 next) val)) (=> (HasDirectPerm_48852_6878 QPMask@1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_55 next) val) (and (=> (= (ControlFlow 0 41) (- 0 42)) (HasDirectPerm_48852_6878 QPMask@1 n_55 val)) (=> (HasDirectPerm_48852_6878 QPMask@1 n_55 val) (=> (= (ControlFlow 0 41) 40) anon36_correct))))))))))
(let ((anon292_Else_correct  (=> (not (select g_1 n_55)) (and (=> (= (ControlFlow 0 48) 41) anon293_Then_correct) (=> (= (ControlFlow 0 48) 45) anon293_Else_correct)))))
(let ((anon292_Then_correct  (=> (select g_1 n_55) (and (=> (= (ControlFlow 0 46) (- 0 47)) (HasDirectPerm_48849_48850 QPMask@1 n_55 next)) (=> (HasDirectPerm_48849_48850 QPMask@1 n_55 next) (and (=> (= (ControlFlow 0 46) 41) anon293_Then_correct) (=> (= (ControlFlow 0 46) 45) anon293_Else_correct)))))))
(let ((anon288_Else_correct  (=> (and (forall ((n_7 T@Ref) ) (!  (=> (and (select g_1 n_7) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_7 next) start_1@@1))) (<= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) n_7 val) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_7 next) val)))
 :qid |stdinbpl.4490:20|
 :skolemid |488|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_7 next) val))
)) (state Heap@@32 QPMask@1)) (and (and (=> (= (ControlFlow 0 462) 461) anon291_Else_correct) (=> (= (ControlFlow 0 462) 46) anon292_Then_correct)) (=> (= (ControlFlow 0 462) 48) anon292_Else_correct)))))
(let ((anon30_correct true))
(let ((anon290_Else_correct  (=> (and (not (and (select g_1 n_70) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_70 next) start_1@@1)))) (= (ControlFlow 0 36) 31)) anon30_correct)))
(let ((anon290_Then_correct  (=> (and (select g_1 n_70) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_70 next) start_1@@1))) (and (=> (= (ControlFlow 0 32) (- 0 35)) (HasDirectPerm_48852_6878 QPMask@1 n_70 val)) (=> (HasDirectPerm_48852_6878 QPMask@1 n_70 val) (and (=> (= (ControlFlow 0 32) (- 0 34)) (HasDirectPerm_48849_48850 QPMask@1 n_70 next)) (=> (HasDirectPerm_48849_48850 QPMask@1 n_70 next) (and (=> (= (ControlFlow 0 32) (- 0 33)) (HasDirectPerm_48852_6878 QPMask@1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_70 next) val)) (=> (HasDirectPerm_48852_6878 QPMask@1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_70 next) val) (=> (= (ControlFlow 0 32) 31) anon30_correct))))))))))
(let ((anon289_Else_correct  (=> (not (select g_1 n_70)) (and (=> (= (ControlFlow 0 39) 32) anon290_Then_correct) (=> (= (ControlFlow 0 39) 36) anon290_Else_correct)))))
(let ((anon289_Then_correct  (=> (select g_1 n_70) (and (=> (= (ControlFlow 0 37) (- 0 38)) (HasDirectPerm_48849_48850 QPMask@1 n_70 next)) (=> (HasDirectPerm_48849_48850 QPMask@1 n_70 next) (and (=> (= (ControlFlow 0 37) 32) anon290_Then_correct) (=> (= (ControlFlow 0 37) 36) anon290_Else_correct)))))))
(let ((anon287_Else_correct  (and (=> (= (ControlFlow 0 463) (- 0 464)) (forall ((n_5 T@Ref) (n_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5 n_5_1)) (select g_1 n_5)) (select g_1 n_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_5 n_5_1)))
 :qid |stdinbpl.4440:15|
 :skolemid |482|
))) (=> (forall ((n_5@@0 T@Ref) (n_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@0 n_5_1@@0)) (select g_1 n_5@@0)) (select g_1 n_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_5@@0 n_5_1@@0)))
 :qid |stdinbpl.4440:15|
 :skolemid |482|
)) (=> (and (and (forall ((n_5@@1 T@Ref) ) (!  (=> (and (select g_1 n_5@@1) (< NoPerm FullPerm)) (and (qpRange53 n_5@@1) (= (invRecv53 n_5@@1) n_5@@1)))
 :qid |stdinbpl.4446:22|
 :skolemid |483|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) n_5@@1 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@1) n_5@@1 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) n_5@@1 val))
)) (forall ((o_9@@155 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv53 o_9@@155)) (< NoPerm FullPerm)) (qpRange53 o_9@@155)) (= (invRecv53 o_9@@155) o_9@@155))
 :qid |stdinbpl.4450:22|
 :skolemid |484|
 :pattern ( (invRecv53 o_9@@155))
))) (and (forall ((n_5@@2 T@Ref) ) (!  (=> (select g_1 n_5@@2) (not (= n_5@@2 null)))
 :qid |stdinbpl.4456:22|
 :skolemid |485|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) n_5@@2 val))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@1) n_5@@2 val))
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@32) n_5@@2 val))
)) (forall ((o_9@@156 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv53 o_9@@156)) (< NoPerm FullPerm)) (qpRange53 o_9@@156)) (and (=> (< NoPerm FullPerm) (= (invRecv53 o_9@@156) o_9@@156)) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@1) o_9@@156 val) (+ (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@0) o_9@@156 val) FullPerm)))) (=> (not (and (and (select g_1 (invRecv53 o_9@@156)) (< NoPerm FullPerm)) (qpRange53 o_9@@156))) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@1) o_9@@156 val) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@0) o_9@@156 val))))
 :qid |stdinbpl.4462:22|
 :skolemid |486|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@1) o_9@@156 val))
)))) (=> (and (and (and (and (and (forall ((o_9@@157 T@Ref) (f_5@@109 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@0) o_9@@157 f_5@@109) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@1) o_9@@157 f_5@@109)))
 :qid |stdinbpl.4466:29|
 :skolemid |487|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@0) o_9@@157 f_5@@109))
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@1) o_9@@157 f_5@@109))
)) (forall ((o_9@@158 T@Ref) (f_5@@110 T@Field_74000_74001) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_9@@158 f_5@@110) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@1) o_9@@158 f_5@@110)))
 :qid |stdinbpl.4466:29|
 :skolemid |487|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_9@@158 f_5@@110))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@1) o_9@@158 f_5@@110))
))) (forall ((o_9@@159 T@Ref) (f_5@@111 T@Field_83161_6878) ) (!  (=> (not (= f_5@@111 val)) (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@0) o_9@@159 f_5@@111) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@1) o_9@@159 f_5@@111)))
 :qid |stdinbpl.4466:29|
 :skolemid |487|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@0) o_9@@159 f_5@@111))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@1) o_9@@159 f_5@@111))
))) (forall ((o_9@@160 T@Ref) (f_5@@112 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@0) o_9@@160 f_5@@112) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@1) o_9@@160 f_5@@112)))
 :qid |stdinbpl.4466:29|
 :skolemid |487|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@0) o_9@@160 f_5@@112))
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@1) o_9@@160 f_5@@112))
))) (forall ((o_9@@161 T@Ref) (f_5@@113 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@0) o_9@@161 f_5@@113) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@1) o_9@@161 f_5@@113)))
 :qid |stdinbpl.4466:29|
 :skolemid |487|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@0) o_9@@161 f_5@@113))
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@1) o_9@@161 f_5@@113))
))) (and (state Heap@@32 QPMask@1) (state Heap@@32 QPMask@1))) (and (and (=> (= (ControlFlow 0 463) 462) anon288_Else_correct) (=> (= (ControlFlow 0 463) 37) anon289_Then_correct)) (=> (= (ControlFlow 0 463) 39) anon289_Else_correct))))))))
(let ((anon287_Then_correct true))
(let ((anon282_Else_correct  (=> (and (forall ((n_3 T@Ref) (m_1 T@Ref) ) (!  (=> (and (select g_1 n_3) (select g_1 m_1)) (and (exists_path ($$ Heap@@32 g_1) n_3 m_1) (exists_path ($$ Heap@@32 g_1) m_1 n_3)))
 :qid |stdinbpl.4428:20|
 :skolemid |481|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) n_3 m_1))
)) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 465) 30) anon287_Then_correct) (=> (= (ControlFlow 0 465) 463) anon287_Else_correct)))))
(let ((anon286_Then_correct  (and (=> (= (ControlFlow 0 25) (- 0 27)) (forall ((n$0_3 T@Ref) ) (!  (=> (and (select g_1 n$0_3) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_3 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4389:27|
 :skolemid |476|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@33) n$0_3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_3 next))
))) (=> (forall ((n$0_3@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_3@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_3@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4389:27|
 :skolemid |476|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_3@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@33) n$0_3@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_3@@0 next))
)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (forall ((n$0_3@@1 T@Ref) (n$0_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3@@1 n$0_3_1)) (select g_1 n$0_3@@1)) (select g_1 n$0_3_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_3@@1 n$0_3_1)))
 :qid |stdinbpl.4396:27|
 :skolemid |477|
 :pattern ( (neverTriggered52 n$0_3@@1) (neverTriggered52 n$0_3_1))
))) (=> (forall ((n$0_3@@2 T@Ref) (n$0_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3@@2 n$0_3_1@@0)) (select g_1 n$0_3@@2)) (select g_1 n$0_3_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_3@@2 n$0_3_1@@0)))
 :qid |stdinbpl.4396:27|
 :skolemid |477|
 :pattern ( (neverTriggered52 n$0_3@@2) (neverTriggered52 n$0_3_1@@0))
)) (=> (= (ControlFlow 0 25) (- 0 24)) (forall ((n$0_3@@3 T@Ref) ) (!  (=> (select g_1 n$0_3@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n$0_3@@3 next) NoPerm)))
 :qid |stdinbpl.4403:27|
 :skolemid |478|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@33) n$0_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_3@@3 next))
)))))))))
(let ((anon284_Then_correct  (and (=> (= (ControlFlow 0 20) (- 0 22)) (forall ((n$0_2 T@Ref) ) (!  (=> (and (select g_1 n$0_2) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_2 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4345:25|
 :skolemid |471|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@32) n$0_2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_2 next))
))) (=> (forall ((n$0_2@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_2@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_2@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4345:25|
 :skolemid |471|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@32) n$0_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_2@@0 next))
)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (forall ((n$0_2@@1 T@Ref) (n$0_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2@@1 n$0_2_1)) (select g_1 n$0_2@@1)) (select g_1 n$0_2_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_2@@1 n$0_2_1)))
 :qid |stdinbpl.4352:25|
 :skolemid |472|
 :pattern ( (neverTriggered51 n$0_2@@1) (neverTriggered51 n$0_2_1))
))) (=> (forall ((n$0_2@@2 T@Ref) (n$0_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2@@2 n$0_2_1@@0)) (select g_1 n$0_2@@2)) (select g_1 n$0_2_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_2@@2 n$0_2_1@@0)))
 :qid |stdinbpl.4352:25|
 :skolemid |472|
 :pattern ( (neverTriggered51 n$0_2@@2) (neverTriggered51 n$0_2_1@@0))
)) (=> (= (ControlFlow 0 20) (- 0 19)) (forall ((n$0_2@@3 T@Ref) ) (!  (=> (select g_1 n$0_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n$0_2@@3 next) NoPerm)))
 :qid |stdinbpl.4359:25|
 :skolemid |473|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@32) n$0_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_2@@3 next))
)))))))))
(let ((anon22_correct true))
(let ((anon285_Then_correct  (=> (exists_path ($$ Heap@@32 g_1) n_69 m_8) (and (=> (= (ControlFlow 0 28) 25) anon286_Then_correct) (=> (= (ControlFlow 0 28) 17) anon22_correct)))))
(let ((anon285_Else_correct  (=> (and (not (exists_path ($$ Heap@@32 g_1) n_69 m_8)) (= (ControlFlow 0 23) 17)) anon22_correct)))
(let ((anon283_Then_correct  (=> (and (select g_1 n_69) (select g_1 m_8)) (and (and (=> (= (ControlFlow 0 29) 20) anon284_Then_correct) (=> (= (ControlFlow 0 29) 28) anon285_Then_correct)) (=> (= (ControlFlow 0 29) 23) anon285_Else_correct)))))
(let ((anon283_Else_correct  (=> (and (not (and (select g_1 n_69) (select g_1 m_8))) (= (ControlFlow 0 18) 17)) anon22_correct)))
(let ((anon280_Else_correct  (=> (forall ((v$0_1 T@Ref) ) (!  (=> (select g_1 v$0_1) (= (= v$0_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v$0_1 next)) (|Set#Equal_49043| g_1 (|Set#Singleton_49733| v$0_1))))
 :qid |stdinbpl.4325:20|
 :skolemid |470|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v$0_1 next))
)) (=> (and (and (state Heap@@32 QPMask@0) (select g_1 start_1@@1)) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0))) (and (and (=> (= (ControlFlow 0 466) 465) anon282_Else_correct) (=> (= (ControlFlow 0 466) 29) anon283_Then_correct)) (=> (= (ControlFlow 0 466) 18) anon283_Else_correct))))))
(let ((anon14_correct true))
(let ((anon281_Else_correct  (=> (and (not (select g_1 v$0_2)) (= (ControlFlow 0 16) 13)) anon14_correct)))
(let ((anon281_Then_correct  (=> (select g_1 v$0_2) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_48849_48850 QPMask@0 v$0_2 next)) (=> (HasDirectPerm_48849_48850 QPMask@0 v$0_2 next) (=> (= (ControlFlow 0 14) 13) anon14_correct))))))
(let ((anon277_Else_correct  (=> (forall ((v1_1 T@Ref) (v2_1 T@Ref) (v_1_1@@1 T@Ref) ) (!  (=> (and (select g_1 v1_1) (and (select g_1 v2_1) (select g_1 v_1_1@@1))) (=> (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v1_1 next) v_1_1@@1) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v2_1 next) v_1_1@@1)) (= v1_1 v2_1)))
 :qid |stdinbpl.4312:20|
 :skolemid |469|
 :pattern ( (select g_1 v_1_1@@1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v1_1 next) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v2_1 next))
)) (and (and (=> (= (ControlFlow 0 467) 466) anon280_Else_correct) (=> (= (ControlFlow 0 467) 14) anon281_Then_correct)) (=> (= (ControlFlow 0 467) 16) anon281_Else_correct)))))
(let ((anon10_correct true))
(let ((anon279_Else_correct  (=> (and (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v1_20 next) v_33)) (= (ControlFlow 0 10) 6)) anon10_correct)))
(let ((anon279_Then_correct  (=> (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v1_20 next) v_33) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_48849_48850 QPMask@0 v2_20 next)) (=> (HasDirectPerm_48849_48850 QPMask@0 v2_20 next) (=> (= (ControlFlow 0 8) 6) anon10_correct))))))
(let ((anon278_Then_correct  (=> (and (select g_1 v1_20) (and (select g_1 v2_20) (select g_1 v_33))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_48849_48850 QPMask@0 v1_20 next)) (=> (HasDirectPerm_48849_48850 QPMask@0 v1_20 next) (and (=> (= (ControlFlow 0 11) 8) anon279_Then_correct) (=> (= (ControlFlow 0 11) 10) anon279_Else_correct)))))))
(let ((anon278_Else_correct  (=> (and (not (and (select g_1 v1_20) (and (select g_1 v2_20) (select g_1 v_33)))) (= (ControlFlow 0 7) 6)) anon10_correct)))
(let ((anon275_Else_correct  (=> (and (forall ((n$0_1 T@Ref) ) (!  (=> (select g_1 n$0_1) (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_1 next)))
 :qid |stdinbpl.4294:20|
 :skolemid |468|
 :pattern ( (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_1 next)))
 :pattern ( (select g_1 n$0_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_1 next))
)) (state Heap@@32 QPMask@0)) (and (and (=> (= (ControlFlow 0 468) 467) anon277_Else_correct) (=> (= (ControlFlow 0 468) 11) anon278_Then_correct)) (=> (= (ControlFlow 0 468) 7) anon278_Else_correct)))))
(let ((anon5_correct true))
(let ((anon276_Else_correct  (=> (and (not (select g_1 n$0_34)) (= (ControlFlow 0 5) 2)) anon5_correct)))
(let ((anon276_Then_correct  (=> (select g_1 n$0_34) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_48849_48850 QPMask@0 n$0_34 next)) (=> (HasDirectPerm_48849_48850 QPMask@0 n$0_34 next) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))
(let ((anon274_Else_correct  (and (=> (= (ControlFlow 0 469) (- 0 470)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select g_1 n_1)) (select g_1 n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.4253:15|
 :skolemid |462|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select g_1 n_1@@0)) (select g_1 n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.4253:15|
 :skolemid |462|
)) (=> (and (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select g_1 n_1@@1) (< NoPerm FullPerm)) (and (qpRange50 n_1@@1) (= (invRecv50 n_1@@1) n_1@@1)))
 :qid |stdinbpl.4259:22|
 :skolemid |463|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_1@@1 next))
)) (forall ((o_9@@162 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv50 o_9@@162)) (< NoPerm FullPerm)) (qpRange50 o_9@@162)) (= (invRecv50 o_9@@162) o_9@@162))
 :qid |stdinbpl.4263:22|
 :skolemid |464|
 :pattern ( (invRecv50 o_9@@162))
))) (and (forall ((n_1@@2 T@Ref) ) (!  (=> (select g_1 n_1@@2) (not (= n_1@@2 null)))
 :qid |stdinbpl.4269:22|
 :skolemid |465|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_1@@2 next))
)) (forall ((o_9@@163 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv50 o_9@@163)) (< NoPerm FullPerm)) (qpRange50 o_9@@163)) (and (=> (< NoPerm FullPerm) (= (invRecv50 o_9@@163) o_9@@163)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_9@@163 next) (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_9@@163 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv50 o_9@@163)) (< NoPerm FullPerm)) (qpRange50 o_9@@163))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_9@@163 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_9@@163 next))))
 :qid |stdinbpl.4275:22|
 :skolemid |466|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_9@@163 next))
)))) (=> (and (and (and (and (and (forall ((o_9@@164 T@Ref) (f_5@@114 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| ZeroMask) o_9@@164 f_5@@114) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@0) o_9@@164 f_5@@114)))
 :qid |stdinbpl.4279:29|
 :skolemid |467|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| ZeroMask) o_9@@164 f_5@@114))
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@0) o_9@@164 f_5@@114))
)) (forall ((o_9@@165 T@Ref) (f_5@@115 T@Field_74000_74001) ) (!  (=> (not (= f_5@@115 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_9@@165 f_5@@115) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_9@@165 f_5@@115)))
 :qid |stdinbpl.4279:29|
 :skolemid |467|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_9@@165 f_5@@115))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_9@@165 f_5@@115))
))) (forall ((o_9@@166 T@Ref) (f_5@@116 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| ZeroMask) o_9@@166 f_5@@116) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@0) o_9@@166 f_5@@116)))
 :qid |stdinbpl.4279:29|
 :skolemid |467|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| ZeroMask) o_9@@166 f_5@@116))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@0) o_9@@166 f_5@@116))
))) (forall ((o_9@@167 T@Ref) (f_5@@117 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| ZeroMask) o_9@@167 f_5@@117) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@0) o_9@@167 f_5@@117)))
 :qid |stdinbpl.4279:29|
 :skolemid |467|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| ZeroMask) o_9@@167 f_5@@117))
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@0) o_9@@167 f_5@@117))
))) (forall ((o_9@@168 T@Ref) (f_5@@118 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| ZeroMask) o_9@@168 f_5@@118) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@0) o_9@@168 f_5@@118)))
 :qid |stdinbpl.4279:29|
 :skolemid |467|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| ZeroMask) o_9@@168 f_5@@118))
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@0) o_9@@168 f_5@@118))
))) (state Heap@@32 QPMask@0)) (and (and (=> (= (ControlFlow 0 469) 468) anon275_Else_correct) (=> (= (ControlFlow 0 469) 3) anon276_Then_correct)) (=> (= (ControlFlow 0 469) 5) anon276_Else_correct))))))))
(let ((anon274_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@32) start_1@@1 $allocated) (not (select g_1 null)))) (and (=> (= (ControlFlow 0 471) 1) anon274_Then_correct) (=> (= (ControlFlow 0 471) 469) anon274_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 472) 471) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
