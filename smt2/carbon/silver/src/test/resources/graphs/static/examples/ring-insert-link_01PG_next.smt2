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
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (start T@Ref) (end T@Ref) ) (! (= (exists_path_ EG_1 start end)  (or (= start end) (exists ((w_2 T@Ref) ) (!  (and (edge EG_1 start w_2) (exists_path_ EG_1 w_2 end))
 :qid |stdinbpl.772:70|
 :skolemid |92|
 :pattern ( (edge EG_1 start w_2))
 :pattern ( (exists_path_ EG_1 w_2 end))
))))
 :qid |stdinbpl.770:15|
 :skolemid |93|
 :pattern ( (exists_path EG_1 start end))
 :pattern ( (edge EG_1 start end))
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
(assert (forall ((Heap@@2 T@PolymorphicMapType_73927) (Mask@@0 T@PolymorphicMapType_73948) (g0@@2 (Array T@Ref Bool)) (g1@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@2 Mask@@0) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_7031 (|apply_TCFraming#condqp2| Heap@@2 g0@@2 g1@@2)) (FrameFragment_7031 (|apply_TCFraming#condqp3| Heap@@2 g0@@2 g1@@2))) g0@@2 g1@@2))) (=> (|Set#Equal_49043| (|Set#Intersection_49043| g1@@2 g0@@2) |Set#Empty_49046|) (forall ((u_2_1 T@Ref) (v_2_1 T@Ref) ) (!  (=> (and (select g0@@2 u_2_1) (and (select g0@@2 v_2_1) (not (exists_path ($$ Heap@@2 g0@@2) u_2_1 v_2_1)))) (not (exists_path ($$ Heap@@2 (|Set#Union_49040| g0@@2 g1@@2)) u_2_1 v_2_1)))
 :qid |stdinbpl.1129:285|
 :skolemid |140|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@2 g0@@2)) g0@@2) u_2_1 v_2_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@2 (|Set#Union_49040| g0@@2 g1@@2))) (|Set#Union_49040| g0@@2 g1@@2)) u_2_1 v_2_1))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_73927) (Mask@@2 T@PolymorphicMapType_73948) (g0@@4 (Array T@Ref Bool)) (g1@@4 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@4 Mask@@2) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_7031 (|apply_TCFraming#condqp2| Heap@@4 g0@@4 g1@@4)) (FrameFragment_7031 (|apply_TCFraming#condqp3| Heap@@4 g0@@4 g1@@4))) g0@@4 g1@@4))) (=> (|Set#Equal_49043| (|Set#Intersection_49043| g1@@4 g0@@4) |Set#Empty_49046|) (forall ((u_4_1 T@Ref) (v_4_1 T@Ref) ) (!  (=> (and (select g0@@4 u_4_1) (select g0@@4 v_4_1)) (__learn_trigger__ (exists_path ($$ Heap@@4 (|Set#Union_49040| g0@@4 g1@@4)) u_4_1 v_4_1)))
 :qid |stdinbpl.1143:285|
 :skolemid |144|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@4 (|Set#Union_49040| g0@@4 g1@@4))) (|Set#Union_49040| g0@@4 g1@@4)) u_4_1 v_4_1 u_4_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@4) u_4_1 next)))
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@4 (|Set#Union_49040| g0@@4 g1@@4))) (|Set#Union_49040| g0@@4 g1@@4)) u_4_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@4) v_4_1 next) v_4_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@4) v_4_1 next)))
))))
 :qid |stdinbpl.1141:15|
 :skolemid |145|
 :pattern ( (state Heap@@4 Mask@@2) (|apply_TCFraming'| Heap@@4 g0@@4 g1@@4))
)))
(assert (forall ((EG_1@@0 (Array T@EdgeDomainType Bool)) (U_1 (Array T@Ref Bool)) (M (Array T@Ref Bool)) ) (!  (=> (apply_noExit EG_1@@0 U_1 M) (=> (forall ((u_3 T@Ref) (v_2 T@Ref) ) (!  (=> (and (select M u_3) (and (select U_1 v_2) (not (select M v_2)))) (not (edge EG_1@@0 u_3 v_2)))
 :qid |stdinbpl.742:50|
 :skolemid |86|
 :pattern ( (edge EG_1@@0 u_3 v_2))
 :pattern ( (select M u_3) (select M v_2))
)) (forall ((u_1 T@Ref) (v_1_1 T@Ref) ) (!  (=> (and (select M u_1) (and (select U_1 v_1_1) (not (select M v_1_1)))) (not (exists_path EG_1@@0 u_1 v_1_1)))
 :qid |stdinbpl.745:17|
 :skolemid |87|
 :pattern ( (exists_path EG_1@@0 u_1 v_1_1))
 :pattern ( (select M u_1) (select M v_1_1))
))))
 :qid |stdinbpl.740:15|
 :skolemid |88|
 :pattern ( (apply_noExit EG_1@@0 U_1 M))
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
(assert (forall ((Heap@@6 T@PolymorphicMapType_73927) (ExhaleHeap T@PolymorphicMapType_73927) (Mask@@3 T@PolymorphicMapType_73948) (pm_f_39 T@Field_48849_250533) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_48849_250597 Mask@@3 null pm_f_39) (IsPredicateField_48849_250624 pm_f_39)) (= (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@6) null (PredicateMaskField_48849 pm_f_39)) (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap) null (PredicateMaskField_48849 pm_f_39)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@3) (IsPredicateField_48849_250624 pm_f_39) (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap) null (PredicateMaskField_48849 pm_f_39)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_73927) (ExhaleHeap@@0 T@PolymorphicMapType_73927) (Mask@@4 T@PolymorphicMapType_73948) (pm_f_39@@0 T@Field_48849_250533) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_48849_250597 Mask@@4 null pm_f_39@@0) (IsWandField_48849_252371 pm_f_39@@0)) (= (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@7) null (WandMaskField_48849 pm_f_39@@0)) (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap@@0) null (WandMaskField_48849 pm_f_39@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@4) (IsWandField_48849_252371 pm_f_39@@0) (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap@@0) null (WandMaskField_48849 pm_f_39@@0)))
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
(assert (forall ((EG_1@@4 (Array T@EdgeDomainType Bool)) (x@@0 T@Ref) (y@@0 T@Ref) (u_3@@0 T@Ref) (v_2@@2 T@Ref) ) (!  (=> (not (edge EG_1@@4 u_3@@0 v_2@@2)) (not (DEP_ EG_1@@4 x@@0 y@@0 u_3@@0 v_2@@2)))
 :qid |stdinbpl.849:15|
 :skolemid |105|
 :pattern ( (DEP EG_1@@4 x@@0 y@@0 u_3@@0 v_2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1@@5 (Array T@EdgeDomainType Bool)) (u_3@@1 T@Ref) (v_2@@3 T@Ref) (w_2@@0 T@Ref) ) (!  (=> (and (exists_path EG_1@@5 u_3@@1 w_2@@0) (exists_path EG_1@@5 w_2@@0 v_2@@3)) (exists_path_ EG_1@@5 u_3@@1 v_2@@3))
 :qid |stdinbpl.779:15|
 :skolemid |94|
 :pattern ( (exists_path EG_1@@5 u_3@@1 w_2@@0) (exists_path EG_1@@5 w_2@@0 v_2@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_73927) (ExhaleHeap@@1 T@PolymorphicMapType_73927) (Mask@@6 T@PolymorphicMapType_73948) (o_73 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (=> (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@9) o_73 $allocated) (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| ExhaleHeap@@1) o_73 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| ExhaleHeap@@1) o_73 $allocated))
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
(assert (forall ((EG_1@@6 (Array T@EdgeDomainType Bool)) (x@@1 T@Ref) (y@@1 T@Ref) (u_3@@2 T@Ref) (v_2@@4 T@Ref) ) (! (= (DEP EG_1@@6 x@@1 y@@1 u_3@@2 v_2@@4) (DEP_ EG_1@@6 x@@1 y@@1 u_3@@2 v_2@@4))
 :qid |stdinbpl.825:15|
 :skolemid |101|
 :pattern ( (DEP EG_1@@6 x@@1 y@@1 u_3@@2 v_2@@4))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_73927) (ExhaleHeap@@3 T@PolymorphicMapType_73927) (Mask@@18 T@PolymorphicMapType_73948) (pm_f_39@@1 T@Field_48849_250533) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_48849_250597 Mask@@18 null pm_f_39@@1) (IsPredicateField_48849_250624 pm_f_39@@1)) (and (and (and (and (forall ((o2_39 T@Ref) (f_79 T@Field_73987_53) ) (!  (=> (select (|PolymorphicMapType_74476_73987_53#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@11) null (PredicateMaskField_48849 pm_f_39@@1))) o2_39 f_79) (= (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@11) o2_39 f_79) (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| ExhaleHeap@@3) o2_39 f_79)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| ExhaleHeap@@3) o2_39 f_79))
)) (forall ((o2_39@@0 T@Ref) (f_79@@0 T@Field_74000_74001) ) (!  (=> (select (|PolymorphicMapType_74476_73987_74001#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@11) null (PredicateMaskField_48849 pm_f_39@@1))) o2_39@@0 f_79@@0) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@11) o2_39@@0 f_79@@0) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@@3) o2_39@@0 f_79@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@@3) o2_39@@0 f_79@@0))
))) (forall ((o2_39@@1 T@Ref) (f_79@@1 T@Field_83161_6878) ) (!  (=> (select (|PolymorphicMapType_74476_73987_6878#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@11) null (PredicateMaskField_48849 pm_f_39@@1))) o2_39@@1 f_79@@1) (= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@11) o2_39@@1 f_79@@1) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@@3) o2_39@@1 f_79@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@@3) o2_39@@1 f_79@@1))
))) (forall ((o2_39@@2 T@Ref) (f_79@@2 T@Field_48849_250533) ) (!  (=> (select (|PolymorphicMapType_74476_73987_250533#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@11) null (PredicateMaskField_48849 pm_f_39@@1))) o2_39@@2 f_79@@2) (= (select (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@11) o2_39@@2 f_79@@2) (select (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| ExhaleHeap@@3) o2_39@@2 f_79@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| ExhaleHeap@@3) o2_39@@2 f_79@@2))
))) (forall ((o2_39@@3 T@Ref) (f_79@@3 T@Field_48849_250666) ) (!  (=> (select (|PolymorphicMapType_74476_73987_251844#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@11) null (PredicateMaskField_48849 pm_f_39@@1))) o2_39@@3 f_79@@3) (= (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@11) o2_39@@3 f_79@@3) (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap@@3) o2_39@@3 f_79@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap@@3) o2_39@@3 f_79@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@18) (IsPredicateField_48849_250624 pm_f_39@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_73927) (ExhaleHeap@@4 T@PolymorphicMapType_73927) (Mask@@19 T@PolymorphicMapType_73948) (pm_f_39@@2 T@Field_48849_250533) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_48849_250597 Mask@@19 null pm_f_39@@2) (IsWandField_48849_252371 pm_f_39@@2)) (and (and (and (and (forall ((o2_39@@4 T@Ref) (f_79@@4 T@Field_73987_53) ) (!  (=> (select (|PolymorphicMapType_74476_73987_53#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@12) null (WandMaskField_48849 pm_f_39@@2))) o2_39@@4 f_79@@4) (= (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@12) o2_39@@4 f_79@@4) (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| ExhaleHeap@@4) o2_39@@4 f_79@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| ExhaleHeap@@4) o2_39@@4 f_79@@4))
)) (forall ((o2_39@@5 T@Ref) (f_79@@5 T@Field_74000_74001) ) (!  (=> (select (|PolymorphicMapType_74476_73987_74001#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@12) null (WandMaskField_48849 pm_f_39@@2))) o2_39@@5 f_79@@5) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@12) o2_39@@5 f_79@@5) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@@4) o2_39@@5 f_79@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@@4) o2_39@@5 f_79@@5))
))) (forall ((o2_39@@6 T@Ref) (f_79@@6 T@Field_83161_6878) ) (!  (=> (select (|PolymorphicMapType_74476_73987_6878#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@12) null (WandMaskField_48849 pm_f_39@@2))) o2_39@@6 f_79@@6) (= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@12) o2_39@@6 f_79@@6) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@@4) o2_39@@6 f_79@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@@4) o2_39@@6 f_79@@6))
))) (forall ((o2_39@@7 T@Ref) (f_79@@7 T@Field_48849_250533) ) (!  (=> (select (|PolymorphicMapType_74476_73987_250533#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@12) null (WandMaskField_48849 pm_f_39@@2))) o2_39@@7 f_79@@7) (= (select (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@12) o2_39@@7 f_79@@7) (select (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| ExhaleHeap@@4) o2_39@@7 f_79@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| ExhaleHeap@@4) o2_39@@7 f_79@@7))
))) (forall ((o2_39@@8 T@Ref) (f_79@@8 T@Field_48849_250666) ) (!  (=> (select (|PolymorphicMapType_74476_73987_251844#PolymorphicMapType_74476| (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@12) null (WandMaskField_48849 pm_f_39@@2))) o2_39@@8 f_79@@8) (= (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@12) o2_39@@8 f_79@@8) (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap@@4) o2_39@@8 f_79@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap@@4) o2_39@@8 f_79@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@19) (IsWandField_48849_252371 pm_f_39@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.445:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_73927) (ExhaleHeap@@5 T@PolymorphicMapType_73927) (Mask@@20 T@PolymorphicMapType_73948) (o_73@@0 T@Ref) (f_79@@9 T@Field_48849_250666) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_48849_256342 Mask@@20 o_73@@0 f_79@@9) (= (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@13) o_73@@0 f_79@@9) (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap@@5) o_73@@0 f_79@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| ExhaleHeap@@5) o_73@@0 f_79@@9))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_73927) (ExhaleHeap@@6 T@PolymorphicMapType_73927) (Mask@@21 T@PolymorphicMapType_73948) (o_73@@1 T@Ref) (f_79@@10 T@Field_48849_250533) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_48849_250597 Mask@@21 o_73@@1 f_79@@10) (= (select (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@14) o_73@@1 f_79@@10) (select (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| ExhaleHeap@@6) o_73@@1 f_79@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| ExhaleHeap@@6) o_73@@1 f_79@@10))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_73927) (ExhaleHeap@@7 T@PolymorphicMapType_73927) (Mask@@22 T@PolymorphicMapType_73948) (o_73@@2 T@Ref) (f_79@@11 T@Field_73987_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_48849_53 Mask@@22 o_73@@2 f_79@@11) (= (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@15) o_73@@2 f_79@@11) (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| ExhaleHeap@@7) o_73@@2 f_79@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| ExhaleHeap@@7) o_73@@2 f_79@@11))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_73927) (ExhaleHeap@@8 T@PolymorphicMapType_73927) (Mask@@23 T@PolymorphicMapType_73948) (o_73@@3 T@Ref) (f_79@@12 T@Field_83161_6878) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_48852_6878 Mask@@23 o_73@@3 f_79@@12) (= (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@16) o_73@@3 f_79@@12) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@@8) o_73@@3 f_79@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| ExhaleHeap@@8) o_73@@3 f_79@@12))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_73927) (ExhaleHeap@@9 T@PolymorphicMapType_73927) (Mask@@24 T@PolymorphicMapType_73948) (o_73@@4 T@Ref) (f_79@@13 T@Field_74000_74001) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_48849_48850 Mask@@24 o_73@@4 f_79@@13) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@17) o_73@@4 f_79@@13) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@@9) o_73@@4 f_79@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| ExhaleHeap@@9) o_73@@4 f_79@@13))
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
(assert (forall ((Heap@@18 T@PolymorphicMapType_73927) (Mask@@25 T@PolymorphicMapType_73948) (g0@@6 (Array T@Ref Bool)) (g1@@6 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@18 Mask@@25) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_7031 (|apply_TCFraming#condqp2| Heap@@18 g0@@6 g1@@6)) (FrameFragment_7031 (|apply_TCFraming#condqp3| Heap@@18 g0@@6 g1@@6))) g0@@6 g1@@6))) (=> (|Set#Equal_49043| (|Set#Intersection_49043| g1@@6 g0@@6) |Set#Empty_49046|) (forall ((u_3@@3 T@Ref) (v_2@@5 T@Ref) ) (!  (=> (and (select g0@@6 u_3@@3) (and (select g0@@6 v_2@@5) (exists_path ($$ Heap@@18 g0@@6) u_3@@3 v_2@@5))) (exists_path ($$ Heap@@18 (|Set#Union_49040| g0@@6 g1@@6)) u_3@@3 v_2@@5))
 :qid |stdinbpl.1115:285|
 :skolemid |136|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@18 g0@@6)) g0@@6) u_3@@3 v_2@@5))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@18 (|Set#Union_49040| g0@@6 g1@@6))) (|Set#Union_49040| g0@@6 g1@@6)) u_3@@3 v_2@@5))
))))
 :qid |stdinbpl.1113:15|
 :skolemid |137|
 :pattern ( (state Heap@@18 Mask@@25) (|apply_TCFraming'| Heap@@18 g0@@6 g1@@6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_73927) (Mask@@26 T@PolymorphicMapType_73948) (g0@@7 (Array T@Ref Bool)) (g1@@7 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@19 Mask@@26) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_7031 (|apply_TCFraming#condqp2| Heap@@19 g0@@7 g1@@7)) (FrameFragment_7031 (|apply_TCFraming#condqp3| Heap@@19 g0@@7 g1@@7))) g0@@7 g1@@7))) (=> (|Set#Equal_49043| (|Set#Intersection_49043| g1@@7 g0@@7) |Set#Empty_49046|) (forall ((u_1@@0 T@Ref) (v_1_1@@0 T@Ref) ) (!  (=> (and (select g1@@7 u_1@@0) (and (select g1@@7 v_1_1@@0) (exists_path ($$ Heap@@19 g1@@7) u_1@@0 v_1_1@@0))) (exists_path ($$ Heap@@19 (|Set#Union_49040| g1@@7 g0@@7)) u_1@@0 v_1_1@@0))
 :qid |stdinbpl.1122:285|
 :skolemid |138|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@19 g1@@7)) g1@@7) u_1@@0 v_1_1@@0))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@19 (|Set#Union_49040| g1@@7 g0@@7))) (|Set#Union_49040| g1@@7 g0@@7)) u_1@@0 v_1_1@@0))
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
(assert (forall ((EG_1@@9 (Array T@EdgeDomainType Bool)) (x@@5 T@Ref) (y@@7 T@Ref) (u_3@@4 T@Ref) ) (!  (=> (and (exists_path_ EG_1@@9 x@@5 y@@7) (and (exists_path_ EG_1@@9 x@@5 u_3@@4) (edge EG_1@@9 u_3@@4 y@@7))) (DEP_ EG_1@@9 x@@5 y@@7 u_3@@4 y@@7))
 :qid |stdinbpl.843:15|
 :skolemid |104|
 :pattern ( (DEP EG_1@@9 x@@5 y@@7 u_3@@4 y@@7))
 :pattern ( (exists_path_ EG_1@@9 x@@5 y@@7) (exists_path EG_1@@9 x@@5 u_3@@4))
 :pattern ( (edge EG_1@@9 u_3@@4 y@@7) (exists_path_ EG_1@@9 x@@5 u_3@@4))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_49046| s))
 :qid |stdinbpl.470:18|
 :skolemid |22|
 :pattern ( (|Set#Card_49046| s))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_73927) (Mask@@27 T@PolymorphicMapType_73948) (refs@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@20 Mask@@27) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (FrameFragment_7031 (|$$#condqp1| Heap@@20 refs@@2)) refs@@2))) (forall ((p_1_1 T@Ref) (s_1 T@Ref) ) (!  (=> (and (select refs@@2 p_1_1) (exists_path (|$$'| Heap@@20 refs@@2) p_1_1 s_1)) (select refs@@2 s_1))
 :qid |stdinbpl.945:122|
 :skolemid |116|
 :pattern ( (select refs@@2 p_1_1) (select refs@@2 s_1) (exists_path (|$$'| Heap@@20 refs@@2) p_1_1 s_1))
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
(assert (forall ((EG_1@@11 (Array T@EdgeDomainType Bool)) (p_1 T@Ref) (s_2 T@Ref) ) (! (= (edge_ EG_1@@11 p_1 s_2) (select EG_1@@11 (create_edge p_1 s_2)))
 :qid |stdinbpl.734:15|
 :skolemid |85|
 :pattern ( (select EG_1@@11 (create_edge p_1 s_2)))
 :pattern ( (edge EG_1@@11 p_1 s_2))
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
(assert (forall ((p_1@@0 T@Ref) (s_2@@0 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@0 s_2@@0)) p_1@@0) (= (edge_succ (create_edge p_1@@0 s_2@@0)) s_2@@0))
 :qid |stdinbpl.673:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@0 s_2@@0))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_73927) (o_72 T@Ref) (f_80 T@Field_48849_250533) (v T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_73927 (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@22) (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@22) (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@22) (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@22) (store (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@22) o_72 f_80 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_73927 (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@22) (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@22) (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@22) (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@22) (store (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@22) o_72 f_80 v)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_73927) (o_72@@0 T@Ref) (f_80@@0 T@Field_48849_250666) (v@@0 T@PolymorphicMapType_74476) ) (! (succHeap Heap@@23 (PolymorphicMapType_73927 (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@23) (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@23) (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@23) (store (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@23) o_72@@0 f_80@@0 v@@0) (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_73927 (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@23) (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@23) (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@23) (store (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@23) o_72@@0 f_80@@0 v@@0) (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_73927) (o_72@@1 T@Ref) (f_80@@1 T@Field_83161_6878) (v@@1 Int) ) (! (succHeap Heap@@24 (PolymorphicMapType_73927 (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@24) (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@24) (store (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@24) o_72@@1 f_80@@1 v@@1) (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@24) (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_73927 (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@24) (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@24) (store (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@24) o_72@@1 f_80@@1 v@@1) (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@24) (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_73927) (o_72@@2 T@Ref) (f_80@@2 T@Field_74000_74001) (v@@2 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_73927 (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@25) (store (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@25) o_72@@2 f_80@@2 v@@2) (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@25) (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@25) (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_73927 (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@25) (store (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@25) o_72@@2 f_80@@2 v@@2) (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@25) (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@25) (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_73927) (o_72@@3 T@Ref) (f_80@@3 T@Field_73987_53) (v@@3 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_73927 (store (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@26) o_72@@3 f_80@@3 v@@3) (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@26) (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@26) (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@26) (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_73927 (store (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@26) o_72@@3 f_80@@3 v@@3) (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@26) (|PolymorphicMapType_73927_48852_6878#PolymorphicMapType_73927| Heap@@26) (|PolymorphicMapType_73927_48849_250710#PolymorphicMapType_73927| Heap@@26) (|PolymorphicMapType_73927_73987_250533#PolymorphicMapType_73927| Heap@@26)))
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
(assert (forall ((o_72@@4 T@Ref) (f_78 T@Field_74000_74001) (Heap@@29 T@PolymorphicMapType_73927) ) (!  (=> (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@29) o_72@@4 $allocated) (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@29) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@29) o_72@@4 f_78) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@29) o_72@@4 f_78))
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
(assert (forall ((Heap@@30 T@PolymorphicMapType_73927) (Mask@@31 T@PolymorphicMapType_73948) (refs@@5 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@30 Mask@@31) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (FrameFragment_7031 (|$$#condqp1| Heap@@30 refs@@5)) refs@@5))) (forall ((p_1@@1 T@Ref) (s_2@@1 T@Ref) ) (! (=  (and (select refs@@5 p_1@@1) (and (select refs@@5 s_2@@1) (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@30) p_1@@1 next) s_2@@1) (not (= p_1@@1 s_2@@1))))) (select (|$$'| Heap@@30 refs@@5) (create_edge p_1@@1 s_2@@1)))
 :qid |stdinbpl.938:122|
 :skolemid |114|
 :pattern ( (create_edge p_1@@1 s_2@@1))
)))
 :qid |stdinbpl.936:15|
 :skolemid |115|
 :pattern ( (state Heap@@30 Mask@@31) (|$$'| Heap@@30 refs@@5))
)))
(assert (forall ((EG_1@@14 (Array T@EdgeDomainType Bool)) (pred_2 T@Ref) (succ T@Ref) ) (! (= (select (succs EG_1@@14 pred_2) succ) (edge_ EG_1@@14 pred_2 succ))
 :qid |stdinbpl.722:15|
 :skolemid |83|
 :pattern ( (select (succs EG_1@@14 pred_2) succ))
)))
(assert (forall ((EG_1@@15 (Array T@EdgeDomainType Bool)) (x@@12 T@Ref) (v_2@@7 T@Ref) ) (! (= (select (inst_uReach EG_1@@15 x@@12) v_2@@7) (exists_path EG_1@@15 x@@12 v_2@@7))
 :qid |stdinbpl.752:15|
 :skolemid |89|
 :pattern ( (select (inst_uReach EG_1@@15 x@@12) v_2@@7))
 :pattern ( (exists_path EG_1@@15 x@@12 v_2@@7))
)))
(assert (forall ((EG_1@@16 (Array T@EdgeDomainType Bool)) (u_3@@5 T@Ref) (y@@10 T@Ref) ) (! (= (select (inst_uReach_rev EG_1@@16 y@@10) u_3@@5) (exists_path EG_1@@16 u_3@@5 y@@10))
 :qid |stdinbpl.758:15|
 :skolemid |90|
 :pattern ( (select (inst_uReach_rev EG_1@@16 y@@10) u_3@@5))
 :pattern ( (exists_path EG_1@@16 u_3@@5 y@@10))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@24 (Array T@Ref Bool)) (b@@17 (Array T@Ref Bool)) (o@@6 T@Ref) ) (! (= (select (|Set#Union_49040| a@@24 b@@17) o@@6)  (or (select a@@24 o@@6) (select b@@17 o@@6)))
 :qid |stdinbpl.496:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_49040| a@@24 b@@17) o@@6))
)))
(assert (forall ((EG_1@@17 (Array T@EdgeDomainType Bool)) (x@@13 T@Ref) (y@@11 T@Ref) (u_3@@6 T@Ref) (v_2@@8 T@Ref) ) (!  (=> (DEP EG_1@@17 x@@13 y@@11 u_3@@6 v_2@@8) (and (exists_path EG_1@@17 x@@13 y@@11) (edge EG_1@@17 u_3@@6 v_2@@8)))
 :qid |stdinbpl.855:15|
 :skolemid |106|
 :pattern ( (DEP EG_1@@17 x@@13 y@@11 u_3@@6 v_2@@8))
)))
(assert (forall ((EG_1@@18 (Array T@EdgeDomainType Bool)) (p_1@@2 T@Ref) (s_2@@2 T@Ref) ) (! (= (edge EG_1@@18 p_1@@2 s_2@@2) (edge_ EG_1@@18 p_1@@2 s_2@@2))
 :qid |stdinbpl.728:15|
 :skolemid |84|
 :pattern ( (edge EG_1@@18 p_1@@2 s_2@@2))
)))
(assert (forall ((EG_1@@19 (Array T@EdgeDomainType Bool)) (start@@0 T@Ref) (end@@0 T@Ref) ) (! (= (exists_path EG_1@@19 start@@0 end@@0) (exists_path_ EG_1@@19 start@@0 end@@0))
 :qid |stdinbpl.764:15|
 :skolemid |91|
 :pattern ( (exists_path EG_1@@19 start@@0 end@@0))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_73927) (g0@@9 (Array T@Ref Bool)) (g1@@9 (Array T@Ref Bool)) ) (!  (and (= (apply_TCFraming Heap@@31 g0@@9 g1@@9) (|apply_TCFraming'| Heap@@31 g0@@9 g1@@9)) (dummyFunction_9333 (|apply_TCFraming#triggerStateless| g0@@9 g1@@9)))
 :qid |stdinbpl.1072:15|
 :skolemid |130|
 :pattern ( (apply_TCFraming Heap@@31 g0@@9 g1@@9))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@32 () T@PolymorphicMapType_73927)
(declare-fun QPMask@4 () T@PolymorphicMapType_73948)
(declare-fun g_1 () (Array T@Ref Bool))
(declare-fun dummyFunction_48850 (T@Ref) Bool)
(declare-fun neverTriggered27 (T@Ref) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_73948)
(declare-fun PostHeap@0 () T@PolymorphicMapType_73927)
(declare-fun QPMask@3 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered26 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_73948)
(declare-fun QPMask@25 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered29 (T@Ref) Bool)
(declare-fun QPMask@24 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered28 (T@Ref) Bool)
(declare-fun QPMask@16 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered39 (T@Ref) Bool)
(declare-fun QPMask@15 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered38 (T@Ref) Bool)
(declare-fun x_34 () T@Ref)
(declare-fun from () T@Ref)
(declare-fun U_3 () T@Ref)
(declare-fun V_2 () T@Ref)
(declare-fun to () T@Ref)
(declare-fun y_8 () T@Ref)
(declare-fun QPMask@17 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered37 (T@Ref) Bool)
(declare-fun QPMask@19 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered36 (T@Ref) Bool)
(declare-fun QPMask@18 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered35 (T@Ref) Bool)
(declare-fun U_2 () T@Ref)
(declare-fun V () T@Ref)
(declare-fun QPMask@20 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered34 (T@Ref) Bool)
(declare-fun QPMask@22 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered33 (T@Ref) Bool)
(declare-fun QPMask@21 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered32 (T@Ref) Bool)
(declare-fun u_33 () T@Ref)
(declare-fun v_32 () T@Ref)
(declare-fun QPMask@23 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered31 (T@Ref) Bool)
(declare-fun QPMask@14 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered40 (T@Ref) Bool)
(declare-fun QPMask@13 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered30 (T@Ref) Bool)
(declare-fun QPMask@11 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered42 (T@Ref) Bool)
(declare-fun QPMask@12 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered43 (T@Ref) Bool)
(declare-fun x_35 () T@Ref)
(declare-fun y_9 () T@Ref)
(declare-fun u_34 () T@Ref)
(declare-fun v_33 () T@Ref)
(declare-fun QPMask@10 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered41 (T@Ref) Bool)
(declare-fun QPMask@6 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered48 (T@Ref) Bool)
(declare-fun QPMask@5 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered47 (T@Ref) Bool)
(declare-fun n_54 () T@Ref)
(declare-fun QPMask@7 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered46 (T@Ref) Bool)
(declare-fun n_53 () T@Ref)
(declare-fun QPMask@8 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered45 (T@Ref) Bool)
(declare-fun n_51 () T@Ref)
(declare-fun QPMask@9 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered44 (T@Ref) Bool)
(declare-fun n_50 () T@Ref)
(declare-fun n$2_38 () T@Ref)
(declare-fun qpRange25 (T@Ref) Bool)
(declare-fun invRecv25 (T@Ref) T@Ref)
(declare-fun PostMask@0 () T@PolymorphicMapType_73948)
(declare-fun QPMask@1 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered24 (T@Ref) Bool)
(declare-fun n$0_37 () T@Ref)
(declare-fun qpRange23 (T@Ref) Bool)
(declare-fun invRecv23 (T@Ref) T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_73948)
(set-info :boogie-vc-id link_01PG_next)
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
 (=> (= (ControlFlow 0 0) 210) (let ((anon178_Then_correct  (and (=> (= (ControlFlow 0 192) (- 0 194)) (forall ((n_4_1 T@Ref) ) (!  (=> (and (select g_1 n_4_1) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_4_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2737:23|
 :skolemid |299|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_4_1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@4) n_4_1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_4_1 next))
))) (=> (forall ((n_4_1@@0 T@Ref) ) (!  (=> (and (select g_1 n_4_1@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_4_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2737:23|
 :skolemid |299|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_4_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@4) n_4_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_4_1@@0 next))
)) (and (=> (= (ControlFlow 0 192) (- 0 193)) (forall ((n_4_1@@1 T@Ref) (n_4_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4_1@@1 n_4_2)) (select g_1 n_4_1@@1)) (select g_1 n_4_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_4_1@@1 n_4_2)))
 :qid |stdinbpl.2744:23|
 :skolemid |300|
 :pattern ( (neverTriggered27 n_4_1@@1) (neverTriggered27 n_4_2))
))) (=> (forall ((n_4_1@@2 T@Ref) (n_4_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4_1@@2 n_4_2@@0)) (select g_1 n_4_1@@2)) (select g_1 n_4_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_4_1@@2 n_4_2@@0)))
 :qid |stdinbpl.2744:23|
 :skolemid |300|
 :pattern ( (neverTriggered27 n_4_1@@2) (neverTriggered27 n_4_2@@0))
)) (=> (= (ControlFlow 0 192) (- 0 191)) (forall ((n_4_1@@3 T@Ref) ) (!  (=> (select g_1 n_4_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_4_1@@3 next) NoPerm)))
 :qid |stdinbpl.2751:23|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_4_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@4) n_4_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_4_1@@3 next))
)))))))))
(let ((anon177_Then_correct  (and (=> (= (ControlFlow 0 188) (- 0 190)) (forall ((n_3 T@Ref) ) (!  (=> (and (select g_1 n_3) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_3 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2694:23|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@3) n_3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_3 next))
))) (=> (forall ((n_3@@0 T@Ref) ) (!  (=> (and (select g_1 n_3@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_3@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2694:23|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_3@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@3) n_3@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_3@@0 next))
)) (and (=> (= (ControlFlow 0 188) (- 0 189)) (forall ((n_3@@1 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@1 n_3_1)) (select g_1 n_3@@1)) (select g_1 n_3_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_3@@1 n_3_1)))
 :qid |stdinbpl.2701:23|
 :skolemid |295|
 :pattern ( (neverTriggered26 n_3@@1) (neverTriggered26 n_3_1))
))) (=> (forall ((n_3@@2 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@2 n_3_1@@0)) (select g_1 n_3@@2)) (select g_1 n_3_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_3@@2 n_3_1@@0)))
 :qid |stdinbpl.2701:23|
 :skolemid |295|
 :pattern ( (neverTriggered26 n_3@@2) (neverTriggered26 n_3_1@@0))
)) (=> (= (ControlFlow 0 188) (- 0 187)) (forall ((n_3@@3 T@Ref) ) (!  (=> (select g_1 n_3@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n_3@@3 next) NoPerm)))
 :qid |stdinbpl.2708:23|
 :skolemid |296|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@3) n_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_3@@3 next))
)))))))))
(let ((anon182_Else_correct true))
(let ((anon182_Then_correct  (and (=> (= (ControlFlow 0 180) (- 0 182)) (forall ((n_6 T@Ref) ) (!  (=> (and (select g_1 n_6) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_6 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2828:25|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_6 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@25) n_6 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_6 next))
))) (=> (forall ((n_6@@0 T@Ref) ) (!  (=> (and (select g_1 n_6@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_6@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2828:25|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_6@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@25) n_6@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_6@@0 next))
)) (and (=> (= (ControlFlow 0 180) (- 0 181)) (forall ((n_6@@1 T@Ref) (n_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@1 n_6_1)) (select g_1 n_6@@1)) (select g_1 n_6_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_6@@1 n_6_1)))
 :qid |stdinbpl.2835:25|
 :skolemid |310|
 :pattern ( (neverTriggered29 n_6@@1) (neverTriggered29 n_6_1))
))) (=> (forall ((n_6@@2 T@Ref) (n_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@2 n_6_1@@0)) (select g_1 n_6@@2)) (select g_1 n_6_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_6@@2 n_6_1@@0)))
 :qid |stdinbpl.2835:25|
 :skolemid |310|
 :pattern ( (neverTriggered29 n_6@@2) (neverTriggered29 n_6_1@@0))
)) (=> (= (ControlFlow 0 180) (- 0 179)) (forall ((n_6@@3 T@Ref) ) (!  (=> (select g_1 n_6@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_6@@3 next) NoPerm)))
 :qid |stdinbpl.2842:25|
 :skolemid |311|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@25) n_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_6@@3 next))
)))))))))
(let ((anon181_Then_correct  (and (=> (= (ControlFlow 0 176) (- 0 178)) (forall ((n_5 T@Ref) ) (!  (=> (and (select g_1 n_5) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_5 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2785:25|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_5 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@24) n_5 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_5 next))
))) (=> (forall ((n_5@@0 T@Ref) ) (!  (=> (and (select g_1 n_5@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_5@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2785:25|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_5@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@24) n_5@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_5@@0 next))
)) (and (=> (= (ControlFlow 0 176) (- 0 177)) (forall ((n_5@@1 T@Ref) (n_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@1 n_5_1)) (select g_1 n_5@@1)) (select g_1 n_5_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_5@@1 n_5_1)))
 :qid |stdinbpl.2792:25|
 :skolemid |305|
 :pattern ( (neverTriggered28 n_5@@1) (neverTriggered28 n_5_1))
))) (=> (forall ((n_5@@2 T@Ref) (n_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@2 n_5_1@@0)) (select g_1 n_5@@2)) (select g_1 n_5_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_5@@2 n_5_1@@0)))
 :qid |stdinbpl.2792:25|
 :skolemid |305|
 :pattern ( (neverTriggered28 n_5@@2) (neverTriggered28 n_5_1@@0))
)) (=> (= (ControlFlow 0 176) (- 0 175)) (forall ((n_5@@3 T@Ref) ) (!  (=> (select g_1 n_5@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n_5@@3 next) NoPerm)))
 :qid |stdinbpl.2799:25|
 :skolemid |306|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@24) n_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_5@@3 next))
)))))))))
(let ((anon213_Then_correct  (and (=> (= (ControlFlow 0 159) (- 0 161)) (forall ((n_16 T@Ref) ) (!  (=> (and (select g_1 n_16) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_16 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3295:45|
 :skolemid |367|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_16 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@16) n_16 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_16 next))
))) (=> (forall ((n_16@@0 T@Ref) ) (!  (=> (and (select g_1 n_16@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_16@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3295:45|
 :skolemid |367|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_16@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@16) n_16@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_16@@0 next))
)) (and (=> (= (ControlFlow 0 159) (- 0 160)) (forall ((n_16@@1 T@Ref) (n_16_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_16@@1 n_16_1)) (select g_1 n_16@@1)) (select g_1 n_16_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_16@@1 n_16_1)))
 :qid |stdinbpl.3302:45|
 :skolemid |368|
 :pattern ( (neverTriggered39 n_16@@1) (neverTriggered39 n_16_1))
))) (=> (forall ((n_16@@2 T@Ref) (n_16_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_16@@2 n_16_1@@0)) (select g_1 n_16@@2)) (select g_1 n_16_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_16@@2 n_16_1@@0)))
 :qid |stdinbpl.3302:45|
 :skolemid |368|
 :pattern ( (neverTriggered39 n_16@@2) (neverTriggered39 n_16_1@@0))
)) (=> (= (ControlFlow 0 159) (- 0 158)) (forall ((n_16@@3 T@Ref) ) (!  (=> (select g_1 n_16@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_16@@3 next) NoPerm)))
 :qid |stdinbpl.3309:45|
 :skolemid |369|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_16@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@16) n_16@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_16@@3 next))
)))))))))
(let ((anon211_Then_correct  (and (=> (= (ControlFlow 0 154) (- 0 156)) (forall ((n_15 T@Ref) ) (!  (=> (and (select g_1 n_15) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_15 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3254:43|
 :skolemid |362|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_15 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@15) n_15 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_15 next))
))) (=> (forall ((n_15@@0 T@Ref) ) (!  (=> (and (select g_1 n_15@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_15@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3254:43|
 :skolemid |362|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_15@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@15) n_15@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_15@@0 next))
)) (and (=> (= (ControlFlow 0 154) (- 0 155)) (forall ((n_15@@1 T@Ref) (n_15_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15@@1 n_15_1)) (select g_1 n_15@@1)) (select g_1 n_15_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_15@@1 n_15_1)))
 :qid |stdinbpl.3261:43|
 :skolemid |363|
 :pattern ( (neverTriggered38 n_15@@1) (neverTriggered38 n_15_1))
))) (=> (forall ((n_15@@2 T@Ref) (n_15_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15@@2 n_15_1@@0)) (select g_1 n_15@@2)) (select g_1 n_15_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_15@@2 n_15_1@@0)))
 :qid |stdinbpl.3261:43|
 :skolemid |363|
 :pattern ( (neverTriggered38 n_15@@2) (neverTriggered38 n_15_1@@0))
)) (=> (= (ControlFlow 0 154) (- 0 153)) (forall ((n_15@@3 T@Ref) ) (!  (=> (select g_1 n_15@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_15@@3 next) NoPerm)))
 :qid |stdinbpl.3268:43|
 :skolemid |364|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_15@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@15) n_15@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_15@@3 next))
)))))))))
(let ((anon79_correct true))
(let ((anon212_Then_correct  (=> (or (and (DEP ($$ Heap@@32 g_1) x_34 from U_3 V_2) (not (= x_34 from))) (and (= x_34 U_3) (and (= U_3 from) (= V_2 to)))) (and (=> (= (ControlFlow 0 162) 159) anon213_Then_correct) (=> (= (ControlFlow 0 162) 151) anon79_correct)))))
(let ((anon212_Else_correct  (=> (and (not (or (and (DEP ($$ Heap@@32 g_1) x_34 from U_3 V_2) (not (= x_34 from))) (and (= x_34 U_3) (and (= U_3 from) (= V_2 to))))) (= (ControlFlow 0 157) 151)) anon79_correct)))
(let ((anon210_Then_correct  (=> (forall ((u__7 T@Ref) (v__7 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_34 y_8 u__7 v__7))
 :qid |stdinbpl.3242:39|
 :skolemid |361|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 y_8 u__7 v__7))
)) (and (and (=> (= (ControlFlow 0 163) 154) anon211_Then_correct) (=> (= (ControlFlow 0 163) 162) anon212_Then_correct)) (=> (= (ControlFlow 0 163) 157) anon212_Else_correct)))))
(let ((anon210_Else_correct  (=> (and (not (forall ((u__7@@0 T@Ref) (v__7@@0 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_34 y_8 u__7@@0 v__7@@0))
 :qid |stdinbpl.3242:39|
 :skolemid |361|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 y_8 u__7@@0 v__7@@0))
))) (= (ControlFlow 0 152) 151)) anon79_correct)))
(let ((anon209_Else_correct true))
(let ((anon209_Then_correct  (and (=> (= (ControlFlow 0 147) (- 0 149)) (forall ((n_14 T@Ref) ) (!  (=> (and (select g_1 n_14) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_14 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3208:43|
 :skolemid |356|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_14 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) n_14 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_14 next))
))) (=> (forall ((n_14@@0 T@Ref) ) (!  (=> (and (select g_1 n_14@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_14@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3208:43|
 :skolemid |356|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_14@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) n_14@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_14@@0 next))
)) (and (=> (= (ControlFlow 0 147) (- 0 148)) (forall ((n_14@@1 T@Ref) (n_14_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14@@1 n_14_1)) (select g_1 n_14@@1)) (select g_1 n_14_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_14@@1 n_14_1)))
 :qid |stdinbpl.3215:43|
 :skolemid |357|
 :pattern ( (neverTriggered37 n_14@@1) (neverTriggered37 n_14_1))
))) (=> (forall ((n_14@@2 T@Ref) (n_14_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14@@2 n_14_1@@0)) (select g_1 n_14@@2)) (select g_1 n_14_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_14@@2 n_14_1@@0)))
 :qid |stdinbpl.3215:43|
 :skolemid |357|
 :pattern ( (neverTriggered37 n_14@@2) (neverTriggered37 n_14_1@@0))
)) (=> (= (ControlFlow 0 147) (- 0 146)) (forall ((n_14@@3 T@Ref) ) (!  (=> (select g_1 n_14@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_14@@3 next) NoPerm)))
 :qid |stdinbpl.3222:43|
 :skolemid |358|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_14@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@17) n_14@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_14@@3 next))
)))))))))
(let ((anon203_Then_correct  (and (=> (= (ControlFlow 0 139) (- 0 141)) (forall ((n_13 T@Ref) ) (!  (=> (and (select g_1 n_13) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_13 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3153:39|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_13 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@19) n_13 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_13 next))
))) (=> (forall ((n_13@@0 T@Ref) ) (!  (=> (and (select g_1 n_13@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_13@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3153:39|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_13@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@19) n_13@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_13@@0 next))
)) (and (=> (= (ControlFlow 0 139) (- 0 140)) (forall ((n_13@@1 T@Ref) (n_13_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13@@1 n_13_1)) (select g_1 n_13@@1)) (select g_1 n_13_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_13@@1 n_13_1)))
 :qid |stdinbpl.3160:39|
 :skolemid |350|
 :pattern ( (neverTriggered36 n_13@@1) (neverTriggered36 n_13_1))
))) (=> (forall ((n_13@@2 T@Ref) (n_13_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13@@2 n_13_1@@0)) (select g_1 n_13@@2)) (select g_1 n_13_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_13@@2 n_13_1@@0)))
 :qid |stdinbpl.3160:39|
 :skolemid |350|
 :pattern ( (neverTriggered36 n_13@@2) (neverTriggered36 n_13_1@@0))
)) (=> (= (ControlFlow 0 139) (- 0 138)) (forall ((n_13@@3 T@Ref) ) (!  (=> (select g_1 n_13@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_13@@3 next) NoPerm)))
 :qid |stdinbpl.3167:39|
 :skolemid |351|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_13@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@19) n_13@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_13@@3 next))
)))))))))
(let ((anon201_Then_correct  (and (=> (= (ControlFlow 0 134) (- 0 136)) (forall ((n_12_1 T@Ref) ) (!  (=> (and (select g_1 n_12_1) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_12_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3112:37|
 :skolemid |344|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_12_1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@18) n_12_1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_12_1 next))
))) (=> (forall ((n_12_1@@0 T@Ref) ) (!  (=> (and (select g_1 n_12_1@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_12_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3112:37|
 :skolemid |344|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_12_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@18) n_12_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_12_1@@0 next))
)) (and (=> (= (ControlFlow 0 134) (- 0 135)) (forall ((n_12_1@@1 T@Ref) (n_12_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12_1@@1 n_12_2)) (select g_1 n_12_1@@1)) (select g_1 n_12_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_12_1@@1 n_12_2)))
 :qid |stdinbpl.3119:37|
 :skolemid |345|
 :pattern ( (neverTriggered35 n_12_1@@1) (neverTriggered35 n_12_2))
))) (=> (forall ((n_12_1@@2 T@Ref) (n_12_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12_1@@2 n_12_2@@0)) (select g_1 n_12_1@@2)) (select g_1 n_12_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_12_1@@2 n_12_2@@0)))
 :qid |stdinbpl.3119:37|
 :skolemid |345|
 :pattern ( (neverTriggered35 n_12_1@@2) (neverTriggered35 n_12_2@@0))
)) (=> (= (ControlFlow 0 134) (- 0 133)) (forall ((n_12_1@@3 T@Ref) ) (!  (=> (select g_1 n_12_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_12_1@@3 next) NoPerm)))
 :qid |stdinbpl.3126:37|
 :skolemid |346|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_12_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@18) n_12_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_12_1@@3 next))
)))))))))
(let ((anon64_correct true))
(let ((anon202_Then_correct  (=> (or (and (DEP ($$ Heap@@32 g_1) x_34 from U_2 V) (not (= x_34 from))) (and (= x_34 U_2) (and (= U_2 from) (= V to)))) (and (=> (= (ControlFlow 0 142) 139) anon203_Then_correct) (=> (= (ControlFlow 0 142) 131) anon64_correct)))))
(let ((anon202_Else_correct  (=> (and (not (or (and (DEP ($$ Heap@@32 g_1) x_34 from U_2 V) (not (= x_34 from))) (and (= x_34 U_2) (and (= U_2 from) (= V to))))) (= (ControlFlow 0 137) 131)) anon64_correct)))
(let ((anon200_Then_correct  (=> (forall ((u__4 T@Ref) (v__4 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_34 y_8 u__4 v__4))
 :qid |stdinbpl.3100:33|
 :skolemid |343|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 y_8 u__4 v__4))
)) (and (and (=> (= (ControlFlow 0 143) 134) anon201_Then_correct) (=> (= (ControlFlow 0 143) 142) anon202_Then_correct)) (=> (= (ControlFlow 0 143) 137) anon202_Else_correct)))))
(let ((anon200_Else_correct  (=> (and (not (forall ((u__4@@0 T@Ref) (v__4@@0 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_34 y_8 u__4@@0 v__4@@0))
 :qid |stdinbpl.3100:33|
 :skolemid |343|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 y_8 u__4@@0 v__4@@0))
))) (= (ControlFlow 0 132) 131)) anon64_correct)))
(let ((anon199_Else_correct true))
(let ((anon199_Then_correct  (and (=> (= (ControlFlow 0 127) (- 0 129)) (forall ((n_11_1 T@Ref) ) (!  (=> (and (select g_1 n_11_1) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_11_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3066:37|
 :skolemid |338|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_11_1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@20) n_11_1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_11_1 next))
))) (=> (forall ((n_11_1@@0 T@Ref) ) (!  (=> (and (select g_1 n_11_1@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_11_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3066:37|
 :skolemid |338|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_11_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@20) n_11_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_11_1@@0 next))
)) (and (=> (= (ControlFlow 0 127) (- 0 128)) (forall ((n_11_1@@1 T@Ref) (n_11_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_1@@1 n_11_2)) (select g_1 n_11_1@@1)) (select g_1 n_11_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_11_1@@1 n_11_2)))
 :qid |stdinbpl.3073:37|
 :skolemid |339|
 :pattern ( (neverTriggered34 n_11_1@@1) (neverTriggered34 n_11_2))
))) (=> (forall ((n_11_1@@2 T@Ref) (n_11_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_1@@2 n_11_2@@0)) (select g_1 n_11_1@@2)) (select g_1 n_11_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_11_1@@2 n_11_2@@0)))
 :qid |stdinbpl.3073:37|
 :skolemid |339|
 :pattern ( (neverTriggered34 n_11_1@@2) (neverTriggered34 n_11_2@@0))
)) (=> (= (ControlFlow 0 127) (- 0 126)) (forall ((n_11_1@@3 T@Ref) ) (!  (=> (select g_1 n_11_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_11_1@@3 next) NoPerm)))
 :qid |stdinbpl.3080:37|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_11_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@20) n_11_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_11_1@@3 next))
)))))))))
(let ((anon195_Then_correct  (and (=> (= (ControlFlow 0 120) (- 0 122)) (forall ((n_10_1 T@Ref) ) (!  (=> (and (select g_1 n_10_1) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_10_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3013:37|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_10_1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@22) n_10_1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_10_1 next))
))) (=> (forall ((n_10_1@@0 T@Ref) ) (!  (=> (and (select g_1 n_10_1@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_10_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3013:37|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_10_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@22) n_10_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_10_1@@0 next))
)) (and (=> (= (ControlFlow 0 120) (- 0 121)) (forall ((n_10_1@@1 T@Ref) (n_10_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1@@1 n_10_2)) (select g_1 n_10_1@@1)) (select g_1 n_10_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_10_1@@1 n_10_2)))
 :qid |stdinbpl.3020:37|
 :skolemid |332|
 :pattern ( (neverTriggered33 n_10_1@@1) (neverTriggered33 n_10_2))
))) (=> (forall ((n_10_1@@2 T@Ref) (n_10_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1@@2 n_10_2@@0)) (select g_1 n_10_1@@2)) (select g_1 n_10_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_10_1@@2 n_10_2@@0)))
 :qid |stdinbpl.3020:37|
 :skolemid |332|
 :pattern ( (neverTriggered33 n_10_1@@2) (neverTriggered33 n_10_2@@0))
)) (=> (= (ControlFlow 0 120) (- 0 119)) (forall ((n_10_1@@3 T@Ref) ) (!  (=> (select g_1 n_10_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_10_1@@3 next) NoPerm)))
 :qid |stdinbpl.3027:37|
 :skolemid |333|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_10_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@22) n_10_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_10_1@@3 next))
)))))))))
(let ((anon193_Then_correct  (and (=> (= (ControlFlow 0 115) (- 0 117)) (forall ((n_9 T@Ref) ) (!  (=> (and (select g_1 n_9) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_9 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2972:35|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_9 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@21) n_9 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_9 next))
))) (=> (forall ((n_9@@0 T@Ref) ) (!  (=> (and (select g_1 n_9@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_9@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2972:35|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_9@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@21) n_9@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_9@@0 next))
)) (and (=> (= (ControlFlow 0 115) (- 0 116)) (forall ((n_9@@1 T@Ref) (n_9_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@1 n_9_1)) (select g_1 n_9@@1)) (select g_1 n_9_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_9@@1 n_9_1)))
 :qid |stdinbpl.2979:35|
 :skolemid |327|
 :pattern ( (neverTriggered32 n_9@@1) (neverTriggered32 n_9_1))
))) (=> (forall ((n_9@@2 T@Ref) (n_9_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@2 n_9_1@@0)) (select g_1 n_9@@2)) (select g_1 n_9_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_9@@2 n_9_1@@0)))
 :qid |stdinbpl.2979:35|
 :skolemid |327|
 :pattern ( (neverTriggered32 n_9@@2) (neverTriggered32 n_9_1@@0))
)) (=> (= (ControlFlow 0 115) (- 0 114)) (forall ((n_9@@3 T@Ref) ) (!  (=> (select g_1 n_9@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_9@@3 next) NoPerm)))
 :qid |stdinbpl.2986:35|
 :skolemid |328|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_9@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@21) n_9@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_9@@3 next))
)))))))))
(let ((anon51_correct true))
(let ((anon194_Then_correct  (=> (or (and (DEP ($$ Heap@@32 g_1) x_34 from u_33 v_32) (not (= x_34 from))) (and (= x_34 u_33) (and (= u_33 from) (= v_32 to)))) (and (=> (= (ControlFlow 0 123) 120) anon195_Then_correct) (=> (= (ControlFlow 0 123) 112) anon51_correct)))))
(let ((anon194_Else_correct  (=> (and (not (or (and (DEP ($$ Heap@@32 g_1) x_34 from u_33 v_32) (not (= x_34 from))) (and (= x_34 u_33) (and (= u_33 from) (= v_32 to))))) (= (ControlFlow 0 118) 112)) anon51_correct)))
(let ((anon192_Then_correct  (=> (forall ((u__1 T@Ref) (v__1 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_34 y_8 u__1 v__1))
 :qid |stdinbpl.2960:31|
 :skolemid |325|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 y_8 u__1 v__1))
)) (and (and (=> (= (ControlFlow 0 124) 115) anon193_Then_correct) (=> (= (ControlFlow 0 124) 123) anon194_Then_correct)) (=> (= (ControlFlow 0 124) 118) anon194_Else_correct)))))
(let ((anon192_Else_correct  (=> (and (not (forall ((u__1@@0 T@Ref) (v__1@@0 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_34 y_8 u__1@@0 v__1@@0))
 :qid |stdinbpl.2960:31|
 :skolemid |325|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 y_8 u__1@@0 v__1@@0))
))) (= (ControlFlow 0 113) 112)) anon51_correct)))
(let ((anon191_Else_correct true))
(let ((anon191_Then_correct  (and (=> (= (ControlFlow 0 108) (- 0 110)) (forall ((n_8 T@Ref) ) (!  (=> (and (select g_1 n_8) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_8 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2926:35|
 :skolemid |320|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_8 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@23) n_8 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_8 next))
))) (=> (forall ((n_8@@0 T@Ref) ) (!  (=> (and (select g_1 n_8@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_8@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2926:35|
 :skolemid |320|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_8@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@23) n_8@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_8@@0 next))
)) (and (=> (= (ControlFlow 0 108) (- 0 109)) (forall ((n_8@@1 T@Ref) (n_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@1 n_8_1)) (select g_1 n_8@@1)) (select g_1 n_8_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_8@@1 n_8_1)))
 :qid |stdinbpl.2933:35|
 :skolemid |321|
 :pattern ( (neverTriggered31 n_8@@1) (neverTriggered31 n_8_1))
))) (=> (forall ((n_8@@2 T@Ref) (n_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@2 n_8_1@@0)) (select g_1 n_8@@2)) (select g_1 n_8_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_8@@2 n_8_1@@0)))
 :qid |stdinbpl.2933:35|
 :skolemid |321|
 :pattern ( (neverTriggered31 n_8@@2) (neverTriggered31 n_8_1@@0))
)) (=> (= (ControlFlow 0 108) (- 0 107)) (forall ((n_8@@3 T@Ref) ) (!  (=> (select g_1 n_8@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_8@@3 next) NoPerm)))
 :qid |stdinbpl.2940:35|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@23) n_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_8@@3 next))
)))))))))
(let ((anon215_Then_correct  (and (=> (= (ControlFlow 0 100) (- 0 102)) (forall ((n_17 T@Ref) ) (!  (=> (and (select g_1 n_17) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_17 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3364:29|
 :skolemid |378|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_17 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@14) n_17 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_17 next))
))) (=> (forall ((n_17@@0 T@Ref) ) (!  (=> (and (select g_1 n_17@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_17@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3364:29|
 :skolemid |378|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_17@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@14) n_17@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_17@@0 next))
)) (and (=> (= (ControlFlow 0 100) (- 0 101)) (forall ((n_17@@1 T@Ref) (n_17_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_17@@1 n_17_1)) (select g_1 n_17@@1)) (select g_1 n_17_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_17@@1 n_17_1)))
 :qid |stdinbpl.3371:29|
 :skolemid |379|
 :pattern ( (neverTriggered40 n_17@@1) (neverTriggered40 n_17_1))
))) (=> (forall ((n_17@@2 T@Ref) (n_17_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_17@@2 n_17_1@@0)) (select g_1 n_17@@2)) (select g_1 n_17_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_17@@2 n_17_1@@0)))
 :qid |stdinbpl.3371:29|
 :skolemid |379|
 :pattern ( (neverTriggered40 n_17@@2) (neverTriggered40 n_17_1@@0))
)) (=> (= (ControlFlow 0 100) (- 0 99)) (forall ((n_17@@3 T@Ref) ) (!  (=> (select g_1 n_17@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n_17@@3 next) NoPerm)))
 :qid |stdinbpl.3378:29|
 :skolemid |380|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_17@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@14) n_17@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_17@@3 next))
)))))))))
(let ((anon186_Then_correct  (and (=> (= (ControlFlow 0 95) (- 0 97)) (forall ((n_7 T@Ref) ) (!  (=> (and (select g_1 n_7) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_7 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2882:27|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_7 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@13) n_7 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_7 next))
))) (=> (forall ((n_7@@0 T@Ref) ) (!  (=> (and (select g_1 n_7@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_7@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2882:27|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_7@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@13) n_7@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_7@@0 next))
)) (and (=> (= (ControlFlow 0 95) (- 0 96)) (forall ((n_7@@1 T@Ref) (n_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@1 n_7_1)) (select g_1 n_7@@1)) (select g_1 n_7_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_7@@1 n_7_1)))
 :qid |stdinbpl.2889:27|
 :skolemid |316|
 :pattern ( (neverTriggered30 n_7@@1) (neverTriggered30 n_7_1))
))) (=> (forall ((n_7@@2 T@Ref) (n_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@2 n_7_1@@0)) (select g_1 n_7@@2)) (select g_1 n_7_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_7@@2 n_7_1@@0)))
 :qid |stdinbpl.2889:27|
 :skolemid |316|
 :pattern ( (neverTriggered30 n_7@@2) (neverTriggered30 n_7_1@@0))
)) (=> (= (ControlFlow 0 95) (- 0 94)) (forall ((n_7@@3 T@Ref) ) (!  (=> (select g_1 n_7@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_7@@3 next) NoPerm)))
 :qid |stdinbpl.2896:27|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@13) n_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_7@@3 next))
)))))))))
(let ((anon83_correct true))
(let ((anon214_Then_correct  (=> (or (DEP ($$ Heap@@32 g_1) x_34 y_8 u_33 v_32) (or (and (= x_34 from) (and (= u_33 from) (and (= y_8 to) (= v_32 to)))) (or (exists ((w_3_1 T@Ref) (z_3 T@Ref) ) (!  (and (forall ((u__8 T@Ref) (v__8 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_34 y_8 u__8 v__8))
 :qid |stdinbpl.3339:23|
 :skolemid |372|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 y_8 u__8 v__8))
)) (and (or (and (DEP ($$ Heap@@32 g_1) x_34 from u_33 v_32) (not (= x_34 from))) (and (= x_34 u_33) (and (= u_33 from) (= v_32 to)))) (or (and (DEP ($$ Heap@@32 g_1) to y_8 w_3_1 z_3) (not (= to y_8))) (and (= from w_3_1) (and (= to z_3) (= z_3 y_8))))))
 :qid |stdinbpl.3337:148|
 :skolemid |373|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) to y_8 w_3_1 z_3))
)) (or (exists ((U_3_1 T@Ref) (V_3 T@Ref) ) (!  (and (forall ((u__9 T@Ref) (v__9 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_34 y_8 u__9 v__9))
 :qid |stdinbpl.3345:23|
 :skolemid |374|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 y_8 u__9 v__9))
)) (and (or (and (DEP ($$ Heap@@32 g_1) x_34 from U_3_1 V_3) (not (= x_34 from))) (and (= x_34 U_3_1) (and (= U_3_1 from) (= V_3 to)))) (or (and (DEP ($$ Heap@@32 g_1) to y_8 u_33 v_32) (not (= to y_8))) (and (= from u_33) (and (= to v_32) (= v_32 y_8))))))
 :qid |stdinbpl.3343:27|
 :skolemid |375|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 from U_3_1 V_3))
)) (and (= u_33 from) (and (= v_32 to) (exists ((U_4 T@Ref) (V_4 T@Ref) (w_4_1 T@Ref) (z_4 T@Ref) ) (!  (and (forall ((u__10 T@Ref) (v__10 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_34 y_8 u__10 v__10))
 :qid |stdinbpl.3351:23|
 :skolemid |376|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 y_8 u__10 v__10))
)) (and (or (and (DEP ($$ Heap@@32 g_1) x_34 from U_4 V_4) (not (= x_34 from))) (and (= x_34 U_4) (and (= U_4 from) (= V_4 to)))) (or (and (DEP ($$ Heap@@32 g_1) to y_8 w_4_1 z_4) (not (= to y_8))) (and (= from w_4_1) (and (= to z_4) (= z_4 y_8))))))
 :qid |stdinbpl.3349:58|
 :skolemid |377|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 from U_4 V_4) (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) to y_8 w_4_1 z_4))
)))))))) (and (=> (= (ControlFlow 0 103) 100) anon215_Then_correct) (=> (= (ControlFlow 0 103) 92) anon83_correct)))))
(let ((anon214_Else_correct  (=> (and (not (or (DEP ($$ Heap@@32 g_1) x_34 y_8 u_33 v_32) (or (and (= x_34 from) (and (= u_33 from) (and (= y_8 to) (= v_32 to)))) (or (exists ((w_3_1@@0 T@Ref) (z_3@@0 T@Ref) ) (!  (and (forall ((u__8@@0 T@Ref) (v__8@@0 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_34 y_8 u__8@@0 v__8@@0))
 :qid |stdinbpl.3339:23|
 :skolemid |372|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 y_8 u__8@@0 v__8@@0))
)) (and (or (and (DEP ($$ Heap@@32 g_1) x_34 from u_33 v_32) (not (= x_34 from))) (and (= x_34 u_33) (and (= u_33 from) (= v_32 to)))) (or (and (DEP ($$ Heap@@32 g_1) to y_8 w_3_1@@0 z_3@@0) (not (= to y_8))) (and (= from w_3_1@@0) (and (= to z_3@@0) (= z_3@@0 y_8))))))
 :qid |stdinbpl.3337:148|
 :skolemid |373|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) to y_8 w_3_1@@0 z_3@@0))
)) (or (exists ((U_3_1@@0 T@Ref) (V_3@@0 T@Ref) ) (!  (and (forall ((u__9@@0 T@Ref) (v__9@@0 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_34 y_8 u__9@@0 v__9@@0))
 :qid |stdinbpl.3345:23|
 :skolemid |374|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 y_8 u__9@@0 v__9@@0))
)) (and (or (and (DEP ($$ Heap@@32 g_1) x_34 from U_3_1@@0 V_3@@0) (not (= x_34 from))) (and (= x_34 U_3_1@@0) (and (= U_3_1@@0 from) (= V_3@@0 to)))) (or (and (DEP ($$ Heap@@32 g_1) to y_8 u_33 v_32) (not (= to y_8))) (and (= from u_33) (and (= to v_32) (= v_32 y_8))))))
 :qid |stdinbpl.3343:27|
 :skolemid |375|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 from U_3_1@@0 V_3@@0))
)) (and (= u_33 from) (and (= v_32 to) (exists ((U_4@@0 T@Ref) (V_4@@0 T@Ref) (w_4_1@@0 T@Ref) (z_4@@0 T@Ref) ) (!  (and (forall ((u__10@@0 T@Ref) (v__10@@0 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_34 y_8 u__10@@0 v__10@@0))
 :qid |stdinbpl.3351:23|
 :skolemid |376|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 y_8 u__10@@0 v__10@@0))
)) (and (or (and (DEP ($$ Heap@@32 g_1) x_34 from U_4@@0 V_4@@0) (not (= x_34 from))) (and (= x_34 U_4@@0) (and (= U_4@@0 from) (= V_4@@0 to)))) (or (and (DEP ($$ Heap@@32 g_1) to y_8 w_4_1@@0 z_4@@0) (not (= to y_8))) (and (= from w_4_1@@0) (and (= to z_4@@0) (= z_4@@0 y_8))))))
 :qid |stdinbpl.3349:58|
 :skolemid |377|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 from U_4@@0 V_4@@0) (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) to y_8 w_4_1@@0 z_4@@0))
))))))))) (= (ControlFlow 0 98) 92)) anon83_correct)))
(let ((anon206_Then_correct  (=> (= v_32 to) (and (and (and (and (and (=> (= (ControlFlow 0 164) 103) anon214_Then_correct) (=> (= (ControlFlow 0 164) 98) anon214_Else_correct)) (=> (= (ControlFlow 0 164) 163) anon210_Then_correct)) (=> (= (ControlFlow 0 164) 152) anon210_Else_correct)) (=> (= (ControlFlow 0 164) 147) anon209_Then_correct)) (=> (= (ControlFlow 0 164) 150) anon209_Else_correct)))))
(let ((anon206_Else_correct  (=> (not (= v_32 to)) (and (=> (= (ControlFlow 0 145) 103) anon214_Then_correct) (=> (= (ControlFlow 0 145) 98) anon214_Else_correct)))))
(let ((anon205_Then_correct  (=> (= u_33 from) (and (=> (= (ControlFlow 0 165) 164) anon206_Then_correct) (=> (= (ControlFlow 0 165) 145) anon206_Else_correct)))))
(let ((anon205_Else_correct  (=> (not (= u_33 from)) (and (=> (= (ControlFlow 0 144) 103) anon214_Then_correct) (=> (= (ControlFlow 0 144) 98) anon214_Else_correct)))))
(let ((anon204_Then_correct  (=> (not (exists ((U_1_1 T@Ref) (V_1 T@Ref) ) (!  (and (forall ((u__5 T@Ref) (v__5 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_34 y_8 u__5 v__5))
 :qid |stdinbpl.3191:29|
 :skolemid |354|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 y_8 u__5 v__5))
)) (and (or (and (DEP ($$ Heap@@32 g_1) x_34 from U_1_1 V_1) (not (= x_34 from))) (and (= x_34 U_1_1) (and (= U_1_1 from) (= V_1 to)))) (or (and (DEP ($$ Heap@@32 g_1) to y_8 u_33 v_32) (not (= to y_8))) (and (= from u_33) (and (= to v_32) (= v_32 y_8))))))
 :qid |stdinbpl.3189:32|
 :skolemid |355|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 from U_1_1 V_1))
))) (and (=> (= (ControlFlow 0 166) 165) anon205_Then_correct) (=> (= (ControlFlow 0 166) 144) anon205_Else_correct)))))
(let ((anon204_Else_correct  (=> (exists ((U_1_1@@0 T@Ref) (V_1@@0 T@Ref) ) (!  (and (forall ((u__5@@0 T@Ref) (v__5@@0 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_34 y_8 u__5@@0 v__5@@0))
 :qid |stdinbpl.3191:29|
 :skolemid |354|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 y_8 u__5@@0 v__5@@0))
)) (and (or (and (DEP ($$ Heap@@32 g_1) x_34 from U_1_1@@0 V_1@@0) (not (= x_34 from))) (and (= x_34 U_1_1@@0) (and (= U_1_1@@0 from) (= V_1@@0 to)))) (or (and (DEP ($$ Heap@@32 g_1) to y_8 u_33 v_32) (not (= to y_8))) (and (= from u_33) (and (= to v_32) (= v_32 y_8))))))
 :qid |stdinbpl.3189:32|
 :skolemid |355|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 from U_1_1@@0 V_1@@0))
)) (and (=> (= (ControlFlow 0 125) 103) anon214_Then_correct) (=> (= (ControlFlow 0 125) 98) anon214_Else_correct)))))
(let ((anon196_Then_correct  (=> (not (exists ((w_1 T@Ref) (z_1 T@Ref) ) (!  (and (forall ((u__2 T@Ref) (v__2 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_34 y_8 u__2 v__2))
 :qid |stdinbpl.3051:27|
 :skolemid |336|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 y_8 u__2 v__2))
)) (and (or (and (DEP ($$ Heap@@32 g_1) x_34 from u_33 v_32) (not (= x_34 from))) (and (= x_34 u_33) (and (= u_33 from) (= v_32 to)))) (or (and (DEP ($$ Heap@@32 g_1) to y_8 w_1 z_1) (not (= to y_8))) (and (= from w_1) (and (= to z_1) (= z_1 y_8))))))
 :qid |stdinbpl.3049:30|
 :skolemid |337|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) to y_8 w_1 z_1))
))) (and (and (and (and (and (=> (= (ControlFlow 0 167) 166) anon204_Then_correct) (=> (= (ControlFlow 0 167) 125) anon204_Else_correct)) (=> (= (ControlFlow 0 167) 143) anon200_Then_correct)) (=> (= (ControlFlow 0 167) 132) anon200_Else_correct)) (=> (= (ControlFlow 0 167) 127) anon199_Then_correct)) (=> (= (ControlFlow 0 167) 130) anon199_Else_correct)))))
(let ((anon196_Else_correct  (=> (exists ((w_1@@0 T@Ref) (z_1@@0 T@Ref) ) (!  (and (forall ((u__2@@0 T@Ref) (v__2@@0 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_34 y_8 u__2@@0 v__2@@0))
 :qid |stdinbpl.3051:27|
 :skolemid |336|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_34 y_8 u__2@@0 v__2@@0))
)) (and (or (and (DEP ($$ Heap@@32 g_1) x_34 from u_33 v_32) (not (= x_34 from))) (and (= x_34 u_33) (and (= u_33 from) (= v_32 to)))) (or (and (DEP ($$ Heap@@32 g_1) to y_8 w_1@@0 z_1@@0) (not (= to y_8))) (and (= from w_1@@0) (and (= to z_1@@0) (= z_1@@0 y_8))))))
 :qid |stdinbpl.3049:30|
 :skolemid |337|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) to y_8 w_1@@0 z_1@@0))
)) (and (=> (= (ControlFlow 0 106) 103) anon214_Then_correct) (=> (= (ControlFlow 0 106) 98) anon214_Else_correct)))))
(let ((anon188_Then_correct  (=> (not (and (= x_34 from) (and (= u_33 from) (and (= y_8 to) (= v_32 to))))) (and (and (and (and (and (=> (= (ControlFlow 0 168) 167) anon196_Then_correct) (=> (= (ControlFlow 0 168) 106) anon196_Else_correct)) (=> (= (ControlFlow 0 168) 124) anon192_Then_correct)) (=> (= (ControlFlow 0 168) 113) anon192_Else_correct)) (=> (= (ControlFlow 0 168) 108) anon191_Then_correct)) (=> (= (ControlFlow 0 168) 111) anon191_Else_correct)))))
(let ((anon188_Else_correct  (=> (and (= x_34 from) (and (= u_33 from) (and (= y_8 to) (= v_32 to)))) (and (=> (= (ControlFlow 0 105) 103) anon214_Then_correct) (=> (= (ControlFlow 0 105) 98) anon214_Else_correct)))))
(let ((anon187_Then_correct  (=> (not (DEP ($$ Heap@@32 g_1) x_34 y_8 u_33 v_32)) (and (=> (= (ControlFlow 0 169) 168) anon188_Then_correct) (=> (= (ControlFlow 0 169) 105) anon188_Else_correct)))))
(let ((anon187_Else_correct  (=> (DEP ($$ Heap@@32 g_1) x_34 y_8 u_33 v_32) (and (=> (= (ControlFlow 0 104) 103) anon214_Then_correct) (=> (= (ControlFlow 0 104) 98) anon214_Else_correct)))))
(let ((anon185_Then_correct  (=> (and (not (= from to)) (and (not (= u_33 v_32)) (not (= x_34 y_8)))) (and (and (=> (= (ControlFlow 0 170) 95) anon186_Then_correct) (=> (= (ControlFlow 0 170) 169) anon187_Then_correct)) (=> (= (ControlFlow 0 170) 104) anon187_Else_correct)))))
(let ((anon185_Else_correct  (=> (and (not (and (not (= from to)) (and (not (= u_33 v_32)) (not (= x_34 y_8))))) (= (ControlFlow 0 93) 92)) anon83_correct)))
(let ((anon220_Then_correct  (and (=> (= (ControlFlow 0 84) (- 0 86)) (forall ((n_19 T@Ref) ) (!  (=> (and (select g_1 n_19) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_19 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3484:27|
 :skolemid |395|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_19 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@11) n_19 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_19 next))
))) (=> (forall ((n_19@@0 T@Ref) ) (!  (=> (and (select g_1 n_19@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_19@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3484:27|
 :skolemid |395|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_19@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@11) n_19@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_19@@0 next))
)) (and (=> (= (ControlFlow 0 84) (- 0 85)) (forall ((n_19@@1 T@Ref) (n_19_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_19@@1 n_19_1)) (select g_1 n_19@@1)) (select g_1 n_19_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_19@@1 n_19_1)))
 :qid |stdinbpl.3491:27|
 :skolemid |396|
 :pattern ( (neverTriggered42 n_19@@1) (neverTriggered42 n_19_1))
))) (=> (forall ((n_19@@2 T@Ref) (n_19_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_19@@2 n_19_1@@0)) (select g_1 n_19@@2)) (select g_1 n_19_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_19@@2 n_19_1@@0)))
 :qid |stdinbpl.3491:27|
 :skolemid |396|
 :pattern ( (neverTriggered42 n_19@@2) (neverTriggered42 n_19_1@@0))
)) (=> (= (ControlFlow 0 84) (- 0 83)) (forall ((n_19@@3 T@Ref) ) (!  (=> (select g_1 n_19@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n_19@@3 next) NoPerm)))
 :qid |stdinbpl.3498:27|
 :skolemid |397|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_19@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@11) n_19@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_19@@3 next))
)))))))))
(let ((anon222_Then_correct  (and (=> (= (ControlFlow 0 78) (- 0 80)) (forall ((n_20 T@Ref) ) (!  (=> (and (select g_1 n_20) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_20 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3529:27|
 :skolemid |400|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_20 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@12) n_20 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_20 next))
))) (=> (forall ((n_20@@0 T@Ref) ) (!  (=> (and (select g_1 n_20@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_20@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3529:27|
 :skolemid |400|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_20@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@12) n_20@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_20@@0 next))
)) (and (=> (= (ControlFlow 0 78) (- 0 79)) (forall ((n_20@@1 T@Ref) (n_20_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_20@@1 n_20_1)) (select g_1 n_20@@1)) (select g_1 n_20_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_20@@1 n_20_1)))
 :qid |stdinbpl.3536:27|
 :skolemid |401|
 :pattern ( (neverTriggered43 n_20@@1) (neverTriggered43 n_20_1))
))) (=> (forall ((n_20@@2 T@Ref) (n_20_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_20@@2 n_20_1@@0)) (select g_1 n_20@@2)) (select g_1 n_20_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_20@@2 n_20_1@@0)))
 :qid |stdinbpl.3536:27|
 :skolemid |401|
 :pattern ( (neverTriggered43 n_20@@2) (neverTriggered43 n_20_1@@0))
)) (=> (= (ControlFlow 0 78) (- 0 77)) (forall ((n_20@@3 T@Ref) ) (!  (=> (select g_1 n_20@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_20@@3 next) NoPerm)))
 :qid |stdinbpl.3543:27|
 :skolemid |402|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_20@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@12) n_20@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_20@@3 next))
)))))))))
(let ((anon95_correct true))
(let ((anon221_Then_correct  (=> (and (DEP ($$ PostHeap@0 g_1) x_35 y_9 u_34 v_33) (not (DEP ($$ PostHeap@0 g_1) x_35 y_9 from to))) (and (=> (= (ControlFlow 0 81) 78) anon222_Then_correct) (=> (= (ControlFlow 0 81) 75) anon95_correct)))))
(let ((anon221_Else_correct  (=> (and (not (and (DEP ($$ PostHeap@0 g_1) x_35 y_9 u_34 v_33) (not (DEP ($$ PostHeap@0 g_1) x_35 y_9 from to)))) (= (ControlFlow 0 76) 75)) anon95_correct)))
(let ((anon219_Then_correct  (=> (DEP ($$ PostHeap@0 g_1) x_35 y_9 u_34 v_33) (and (and (=> (= (ControlFlow 0 87) 84) anon220_Then_correct) (=> (= (ControlFlow 0 87) 81) anon221_Then_correct)) (=> (= (ControlFlow 0 87) 76) anon221_Else_correct)))))
(let ((anon219_Else_correct  (=> (not (DEP ($$ PostHeap@0 g_1) x_35 y_9 u_34 v_33)) (and (=> (= (ControlFlow 0 82) 81) anon221_Then_correct) (=> (= (ControlFlow 0 82) 76) anon221_Else_correct)))))
(let ((anon218_Then_correct  (and (=> (= (ControlFlow 0 72) (- 0 74)) (forall ((n_18 T@Ref) ) (!  (=> (and (select g_1 n_18) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_18 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3440:25|
 :skolemid |390|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_18 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@10) n_18 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_18 next))
))) (=> (forall ((n_18@@0 T@Ref) ) (!  (=> (and (select g_1 n_18@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_18@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3440:25|
 :skolemid |390|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_18@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@10) n_18@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_18@@0 next))
)) (and (=> (= (ControlFlow 0 72) (- 0 73)) (forall ((n_18@@1 T@Ref) (n_18_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_18@@1 n_18_1)) (select g_1 n_18@@1)) (select g_1 n_18_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_18@@1 n_18_1)))
 :qid |stdinbpl.3447:25|
 :skolemid |391|
 :pattern ( (neverTriggered41 n_18@@1) (neverTriggered41 n_18_1))
))) (=> (forall ((n_18@@2 T@Ref) (n_18_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_18@@2 n_18_1@@0)) (select g_1 n_18@@2)) (select g_1 n_18_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_18@@2 n_18_1@@0)))
 :qid |stdinbpl.3447:25|
 :skolemid |391|
 :pattern ( (neverTriggered41 n_18@@2) (neverTriggered41 n_18_1@@0))
)) (=> (= (ControlFlow 0 72) (- 0 71)) (forall ((n_18@@3 T@Ref) ) (!  (=> (select g_1 n_18@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n_18@@3 next) NoPerm)))
 :qid |stdinbpl.3454:25|
 :skolemid |392|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_18@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@10) n_18@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_18@@3 next))
)))))))))
(let ((anon236_Then_correct  (and (=> (= (ControlFlow 0 60) (- 0 62)) (forall ((n$0_6 T@Ref) ) (!  (=> (and (select g_1 n$0_6) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_6 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3801:27|
 :skolemid |429|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_6 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@6) n$0_6 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_6 next))
))) (=> (forall ((n$0_6@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_6@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_6@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3801:27|
 :skolemid |429|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_6@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@6) n$0_6@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_6@@0 next))
)) (and (=> (= (ControlFlow 0 60) (- 0 61)) (forall ((n$0_6@@1 T@Ref) (n$0_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_6@@1 n$0_6_1)) (select g_1 n$0_6@@1)) (select g_1 n$0_6_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_6@@1 n$0_6_1)))
 :qid |stdinbpl.3808:27|
 :skolemid |430|
 :pattern ( (neverTriggered48 n$0_6@@1) (neverTriggered48 n$0_6_1))
))) (=> (forall ((n$0_6@@2 T@Ref) (n$0_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_6@@2 n$0_6_1@@0)) (select g_1 n$0_6@@2)) (select g_1 n$0_6_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_6@@2 n$0_6_1@@0)))
 :qid |stdinbpl.3808:27|
 :skolemid |430|
 :pattern ( (neverTriggered48 n$0_6@@2) (neverTriggered48 n$0_6_1@@0))
)) (=> (= (ControlFlow 0 60) (- 0 59)) (forall ((n$0_6@@3 T@Ref) ) (!  (=> (select g_1 n$0_6@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n$0_6@@3 next) NoPerm)))
 :qid |stdinbpl.3815:27|
 :skolemid |431|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@6) n$0_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_6@@3 next))
)))))))))
(let ((anon234_Then_correct  (and (=> (= (ControlFlow 0 55) (- 0 57)) (forall ((n$0_5 T@Ref) ) (!  (=> (and (select g_1 n$0_5) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3757:25|
 :skolemid |424|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@5) n$0_5 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5 next))
))) (=> (forall ((n$0_5@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_5@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3757:25|
 :skolemid |424|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@5) n$0_5@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5@@0 next))
)) (and (=> (= (ControlFlow 0 55) (- 0 56)) (forall ((n$0_5@@1 T@Ref) (n$0_5_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_5@@1 n$0_5_2)) (select g_1 n$0_5@@1)) (select g_1 n$0_5_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_5@@1 n$0_5_2)))
 :qid |stdinbpl.3764:25|
 :skolemid |425|
 :pattern ( (neverTriggered47 n$0_5@@1) (neverTriggered47 n$0_5_2))
))) (=> (forall ((n$0_5@@2 T@Ref) (n$0_5_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_5@@2 n$0_5_2@@0)) (select g_1 n$0_5@@2)) (select g_1 n$0_5_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_5@@2 n$0_5_2@@0)))
 :qid |stdinbpl.3764:25|
 :skolemid |425|
 :pattern ( (neverTriggered47 n$0_5@@2) (neverTriggered47 n$0_5_2@@0))
)) (=> (= (ControlFlow 0 55) (- 0 54)) (forall ((n$0_5@@3 T@Ref) ) (!  (=> (select g_1 n$0_5@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n$0_5@@3 next) NoPerm)))
 :qid |stdinbpl.3771:25|
 :skolemid |426|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@5) n$0_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5@@3 next))
)))))))))
(let ((anon122_correct true))
(let ((anon235_Then_correct  (=> (__learn_trigger__ (exists_path ($$ PostHeap@0 g_1) to n_54)) (and (=> (= (ControlFlow 0 63) 60) anon236_Then_correct) (=> (= (ControlFlow 0 63) 52) anon122_correct)))))
(let ((anon235_Else_correct  (=> (and (not (__learn_trigger__ (exists_path ($$ PostHeap@0 g_1) to n_54))) (= (ControlFlow 0 58) 52)) anon122_correct)))
(let ((anon233_Then_correct  (=> (select g_1 n_54) (and (and (=> (= (ControlFlow 0 64) 55) anon234_Then_correct) (=> (= (ControlFlow 0 64) 63) anon235_Then_correct)) (=> (= (ControlFlow 0 64) 58) anon235_Else_correct)))))
(let ((anon233_Else_correct  (=> (and (not (select g_1 n_54)) (= (ControlFlow 0 53) 52)) anon122_correct)))
(let ((anon232_Else_correct true))
(let ((anon229_Else_correct  (=> (forall ((n_26_1 T@Ref) ) (!  (=> (and (select g_1 n_26_1) (not (= n_26_1 from))) (__learn_trigger__ (DEP ($$ PostHeap@0 g_1) n_26_1 from n_26_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n_26_1 next))))
 :qid |stdinbpl.3739:20|
 :skolemid |423|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| PostHeap@0 g_1)) g_1) n_26_1 to))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| PostHeap@0 g_1)) g_1) n_26_1 from))
)) (=> (and (state PostHeap@0 QPMask@2) (state PostHeap@0 QPMask@2)) (and (and (=> (= (ControlFlow 0 65) 51) anon232_Else_correct) (=> (= (ControlFlow 0 65) 64) anon233_Then_correct)) (=> (= (ControlFlow 0 65) 53) anon233_Else_correct))))))
(let ((anon231_Then_correct  (and (=> (= (ControlFlow 0 45) (- 0 47)) (forall ((n$0_4 T@Ref) ) (!  (=> (and (select g_1 n$0_4) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3699:25|
 :skolemid |418|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@7) n$0_4 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4 next))
))) (=> (forall ((n$0_4@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_4@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3699:25|
 :skolemid |418|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@7) n$0_4@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4@@0 next))
)) (and (=> (= (ControlFlow 0 45) (- 0 46)) (forall ((n$0_4@@1 T@Ref) (n$0_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_4@@1 n$0_4_1)) (select g_1 n$0_4@@1)) (select g_1 n$0_4_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_4@@1 n$0_4_1)))
 :qid |stdinbpl.3706:25|
 :skolemid |419|
 :pattern ( (neverTriggered46 n$0_4@@1) (neverTriggered46 n$0_4_1))
))) (=> (forall ((n$0_4@@2 T@Ref) (n$0_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_4@@2 n$0_4_1@@0)) (select g_1 n$0_4@@2)) (select g_1 n$0_4_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_4@@2 n$0_4_1@@0)))
 :qid |stdinbpl.3706:25|
 :skolemid |419|
 :pattern ( (neverTriggered46 n$0_4@@2) (neverTriggered46 n$0_4_1@@0))
)) (=> (= (ControlFlow 0 45) (- 0 44)) (forall ((n$0_4@@3 T@Ref) ) (!  (=> (select g_1 n$0_4@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n$0_4@@3 next) NoPerm)))
 :qid |stdinbpl.3713:25|
 :skolemid |420|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@7) n$0_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4@@3 next))
)))))))))
(let ((anon114_correct true))
(let ((anon231_Else_correct  (and (=> (= (ControlFlow 0 48) (- 0 49)) (HasDirectPerm_48849_48850 QPMask@2 n_53 next)) (=> (HasDirectPerm_48849_48850 QPMask@2 n_53 next) (=> (= (ControlFlow 0 48) 42) anon114_correct)))))
(let ((anon230_Then_correct  (=> (and (select g_1 n_53) (not (= n_53 from))) (and (=> (= (ControlFlow 0 50) 45) anon231_Then_correct) (=> (= (ControlFlow 0 50) 48) anon231_Else_correct)))))
(let ((anon230_Else_correct  (=> (and (not (and (select g_1 n_53) (not (= n_53 from)))) (= (ControlFlow 0 43) 42)) anon114_correct)))
(let ((anon226_Else_correct  (=> (forall ((n_24 T@Ref) ) (!  (=> (and (select g_1 n_24) (not (= n_24 to))) (__learn_trigger__ (DEP ($$ PostHeap@0 g_1) to n_24 to (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) to next))))
 :qid |stdinbpl.3681:20|
 :skolemid |417|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| PostHeap@0 g_1)) g_1) to n_24))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| PostHeap@0 g_1)) g_1) from n_24))
)) (=> (and (state PostHeap@0 QPMask@2) (state PostHeap@0 QPMask@2)) (and (and (=> (= (ControlFlow 0 66) 65) anon229_Else_correct) (=> (= (ControlFlow 0 66) 50) anon230_Then_correct)) (=> (= (ControlFlow 0 66) 43) anon230_Else_correct))))))
(let ((anon228_Then_correct  (and (=> (= (ControlFlow 0 36) (- 0 38)) (forall ((n$0_3_2 T@Ref) ) (!  (=> (and (select g_1 n$0_3_2) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_3_2 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3641:25|
 :skolemid |412|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_3_2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@8) n$0_3_2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_3_2 next))
))) (=> (forall ((n$0_3_2@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_3_2@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_3_2@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3641:25|
 :skolemid |412|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_3_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@8) n$0_3_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_3_2@@0 next))
)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (forall ((n$0_3_2@@1 T@Ref) (n$0_3_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3_2@@1 n$0_3_3)) (select g_1 n$0_3_2@@1)) (select g_1 n$0_3_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_3_2@@1 n$0_3_3)))
 :qid |stdinbpl.3648:25|
 :skolemid |413|
 :pattern ( (neverTriggered45 n$0_3_2@@1) (neverTriggered45 n$0_3_3))
))) (=> (forall ((n$0_3_2@@2 T@Ref) (n$0_3_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3_2@@2 n$0_3_3@@0)) (select g_1 n$0_3_2@@2)) (select g_1 n$0_3_3@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_3_2@@2 n$0_3_3@@0)))
 :qid |stdinbpl.3648:25|
 :skolemid |413|
 :pattern ( (neverTriggered45 n$0_3_2@@2) (neverTriggered45 n$0_3_3@@0))
)) (=> (= (ControlFlow 0 36) (- 0 35)) (forall ((n$0_3_2@@3 T@Ref) ) (!  (=> (select g_1 n$0_3_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n$0_3_2@@3 next) NoPerm)))
 :qid |stdinbpl.3655:25|
 :skolemid |414|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_3_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@8) n$0_3_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_3_2@@3 next))
)))))))))
(let ((anon108_correct true))
(let ((anon228_Else_correct  (and (=> (= (ControlFlow 0 39) (- 0 40)) (HasDirectPerm_48849_48850 QPMask@2 to next)) (=> (HasDirectPerm_48849_48850 QPMask@2 to next) (=> (= (ControlFlow 0 39) 33) anon108_correct)))))
(let ((anon227_Then_correct  (=> (and (select g_1 n_51) (not (= n_51 to))) (and (=> (= (ControlFlow 0 41) 36) anon228_Then_correct) (=> (= (ControlFlow 0 41) 39) anon228_Else_correct)))))
(let ((anon227_Else_correct  (=> (and (not (and (select g_1 n_51) (not (= n_51 to)))) (= (ControlFlow 0 34) 33)) anon108_correct)))
(let ((anon223_Else_correct  (=> (forall ((n_22 T@Ref) ) (!  (=> (and (select g_1 n_22) (not (= n_22 from))) (__learn_trigger__ (DEP ($$ PostHeap@0 g_1) from n_22 from (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) from next))))
 :qid |stdinbpl.3623:20|
 :skolemid |411|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| PostHeap@0 g_1)) g_1) to n_22))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| PostHeap@0 g_1)) g_1) from n_22))
)) (=> (and (state PostHeap@0 QPMask@2) (state PostHeap@0 QPMask@2)) (and (and (=> (= (ControlFlow 0 67) 66) anon226_Else_correct) (=> (= (ControlFlow 0 67) 41) anon227_Then_correct)) (=> (= (ControlFlow 0 67) 34) anon227_Else_correct))))))
(let ((anon225_Then_correct  (and (=> (= (ControlFlow 0 27) (- 0 29)) (forall ((n$0_2_1 T@Ref) ) (!  (=> (and (select g_1 n$0_2_1) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_2_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3583:25|
 :skolemid |406|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_2_1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@9) n$0_2_1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_2_1 next))
))) (=> (forall ((n$0_2_1@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_2_1@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_2_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3583:25|
 :skolemid |406|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_2_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@9) n$0_2_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_2_1@@0 next))
)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (forall ((n$0_2_1@@1 T@Ref) (n$0_2_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2_1@@1 n$0_2_2)) (select g_1 n$0_2_1@@1)) (select g_1 n$0_2_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_2_1@@1 n$0_2_2)))
 :qid |stdinbpl.3590:25|
 :skolemid |407|
 :pattern ( (neverTriggered44 n$0_2_1@@1) (neverTriggered44 n$0_2_2))
))) (=> (forall ((n$0_2_1@@2 T@Ref) (n$0_2_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2_1@@2 n$0_2_2@@0)) (select g_1 n$0_2_1@@2)) (select g_1 n$0_2_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_2_1@@2 n$0_2_2@@0)))
 :qid |stdinbpl.3590:25|
 :skolemid |407|
 :pattern ( (neverTriggered44 n$0_2_1@@2) (neverTriggered44 n$0_2_2@@0))
)) (=> (= (ControlFlow 0 27) (- 0 26)) (forall ((n$0_2_1@@3 T@Ref) ) (!  (=> (select g_1 n$0_2_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n$0_2_1@@3 next) NoPerm)))
 :qid |stdinbpl.3597:25|
 :skolemid |408|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_2_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@9) n$0_2_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_2_1@@3 next))
)))))))))
(let ((anon102_correct true))
(let ((anon225_Else_correct  (and (=> (= (ControlFlow 0 30) (- 0 31)) (HasDirectPerm_48849_48850 QPMask@2 from next)) (=> (HasDirectPerm_48849_48850 QPMask@2 from next) (=> (= (ControlFlow 0 30) 24) anon102_correct)))))
(let ((anon224_Then_correct  (=> (and (select g_1 n_50) (not (= n_50 from))) (and (=> (= (ControlFlow 0 32) 27) anon225_Then_correct) (=> (= (ControlFlow 0 32) 30) anon225_Else_correct)))))
(let ((anon224_Else_correct  (=> (and (not (and (select g_1 n_50) (not (= n_50 from)))) (= (ControlFlow 0 25) 24)) anon102_correct)))
(let ((anon97_correct  (=> (and (state PostHeap@0 QPMask@2) (state PostHeap@0 QPMask@2)) (and (and (=> (= (ControlFlow 0 68) 67) anon223_Else_correct) (=> (= (ControlFlow 0 68) 32) anon224_Then_correct)) (=> (= (ControlFlow 0 68) 25) anon224_Else_correct)))))
(let ((anon217_Else_correct  (=> (and (forall ((x_3 T@Ref) (y_3_2 T@Ref) (u_3_1@@0 T@Ref) (v_3_1@@0 T@Ref) ) (!  (=> (and (DEP ($$ PostHeap@0 g_1) x_3 y_3_2 u_3_1@@0 v_3_1@@0) (not (DEP ($$ PostHeap@0 g_1) x_3 y_3_2 from to))) (DEP ($$ Heap@@32 g_1) x_3 y_3_2 u_3_1@@0 v_3_1@@0))
 :qid |stdinbpl.3564:22|
 :skolemid |405|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| PostHeap@0 g_1)) g_1) x_3 y_3_2 u_3_1@@0 v_3_1@@0))
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_3 y_3_2 u_3_1@@0 v_3_1@@0))
)) (= (ControlFlow 0 70) 68)) anon97_correct)))
(let ((anon216_Then_correct  (=> (and (not (= to null)) (state PostHeap@0 QPMask@2)) (and (and (and (=> (= (ControlFlow 0 88) 70) anon217_Else_correct) (=> (= (ControlFlow 0 88) 72) anon218_Then_correct)) (=> (= (ControlFlow 0 88) 87) anon219_Then_correct)) (=> (= (ControlFlow 0 88) 82) anon219_Else_correct)))))
(let ((anon216_Else_correct  (=> (and (= to null) (= (ControlFlow 0 69) 68)) anon97_correct)))
(let ((anon85_correct  (=> (state PostHeap@0 QPMask@2) (and (=> (= (ControlFlow 0 89) 88) anon216_Then_correct) (=> (= (ControlFlow 0 89) 69) anon216_Else_correct)))))
(let ((anon184_Else_correct  (=> (and (forall ((x_1 T@Ref) (y_1 T@Ref) (u_1@@1 T@Ref) (v_1_1@@1 T@Ref) ) (!  (=> (and (not (= from to)) (and (not (= u_1@@1 v_1_1@@1)) (not (= x_1 y_1)))) (=> (or (DEP ($$ Heap@@32 g_1) x_1 y_1 u_1@@1 v_1_1@@1) (or (and (= x_1 from) (and (= u_1@@1 from) (and (= y_1 to) (= v_1_1@@1 to)))) (or (exists ((w_5 T@Ref) (z_5 T@Ref) ) (!  (and (forall ((u__11 T@Ref) (v__11 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_1 y_1 u__11 v__11))
 :qid |stdinbpl.3407:19|
 :skolemid |383|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_1 y_1 u__11 v__11))
)) (and (or (and (DEP ($$ Heap@@32 g_1) x_1 from u_1@@1 v_1_1@@1) (not (= x_1 from))) (and (= x_1 u_1@@1) (and (= u_1@@1 from) (= v_1_1@@1 to)))) (or (and (DEP ($$ Heap@@32 g_1) to y_1 w_5 z_5) (not (= to y_1))) (and (= from w_5) (and (= to z_5) (= z_5 y_1))))))
 :qid |stdinbpl.3405:185|
 :skolemid |384|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) to y_1 w_5 z_5))
)) (or (exists ((U_5 T@Ref) (V_5 T@Ref) ) (!  (and (forall ((u__12 T@Ref) (v__12 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_1 y_1 u__12 v__12))
 :qid |stdinbpl.3413:19|
 :skolemid |385|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_1 y_1 u__12 v__12))
)) (and (or (and (DEP ($$ Heap@@32 g_1) x_1 from U_5 V_5) (not (= x_1 from))) (and (= x_1 U_5) (and (= U_5 from) (= V_5 to)))) (or (and (DEP ($$ Heap@@32 g_1) to y_1 u_1@@1 v_1_1@@1) (not (= to y_1))) (and (= from u_1@@1) (and (= to v_1_1@@1) (= v_1_1@@1 y_1))))))
 :qid |stdinbpl.3411:23|
 :skolemid |386|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_1 from U_5 V_5))
)) (and (= u_1@@1 from) (and (= v_1_1@@1 to) (exists ((U_6 T@Ref) (V_6 T@Ref) (w_6 T@Ref) (z_6 T@Ref) ) (!  (and (forall ((u__13 T@Ref) (v__13 T@Ref) ) (!  (not (DEP ($$ Heap@@32 g_1) x_1 y_1 u__13 v__13))
 :qid |stdinbpl.3419:19|
 :skolemid |387|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_1 y_1 u__13 v__13))
)) (and (or (and (DEP ($$ Heap@@32 g_1) x_1 from U_6 V_6) (not (= x_1 from))) (and (= x_1 U_6) (and (= U_6 from) (= V_6 to)))) (or (and (DEP ($$ Heap@@32 g_1) to y_1 w_6 z_6) (not (= to y_1))) (and (= from w_6) (and (= to z_6) (= z_6 y_1))))))
 :qid |stdinbpl.3417:54|
 :skolemid |388|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_1 from U_6 V_6) (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) to y_1 w_6 z_6))
)))))))) (DEP ($$ PostHeap@0 g_1) x_1 y_1 u_1@@1 v_1_1@@1)))
 :qid |stdinbpl.3403:22|
 :skolemid |389|
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| PostHeap@0 g_1)) g_1) x_1 y_1 u_1@@1 v_1_1@@1))
 :pattern ( (DEP (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) x_1 y_1 u_1@@1 v_1_1@@1))
)) (= (ControlFlow 0 91) 89)) anon85_correct)))
(let ((anon183_Then_correct  (=> (and (not (= to null)) (state PostHeap@0 QPMask@2)) (and (and (=> (= (ControlFlow 0 171) 91) anon184_Else_correct) (=> (= (ControlFlow 0 171) 170) anon185_Then_correct)) (=> (= (ControlFlow 0 171) 93) anon185_Else_correct)))))
(let ((anon183_Else_correct  (=> (and (= to null) (= (ControlFlow 0 90) 89)) anon85_correct)))
(let ((anon33_correct  (=> (state PostHeap@0 QPMask@2) (and (=> (= (ControlFlow 0 172) 171) anon183_Then_correct) (=> (= (ControlFlow 0 172) 90) anon183_Else_correct)))))
(let ((anon180_Else_correct  (=> (and (forall ((v1_1 T@Ref) (v2_1 T@Ref) ) (! (= (edge ($$ PostHeap@0 g_1) v1_1 v2_1)  (or (edge ($$ Heap@@32 g_1) v1_1 v2_1) (and (= v1_1 from) (= v2_1 to))))
 :qid |stdinbpl.2862:22|
 :skolemid |314|
 :pattern ( (edge (|$$#frame| (FrameFragment_7031 (|$$#condqp1| PostHeap@0 g_1)) g_1) v1_1 v2_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| PostHeap@0 g_1)) g_1) v1_1 v2_1))
)) (= (ControlFlow 0 174) 172)) anon33_correct)))
(let ((anon179_Then_correct  (=> (and (not (= to null)) (state PostHeap@0 QPMask@2)) (and (and (and (=> (= (ControlFlow 0 184) 174) anon180_Else_correct) (=> (= (ControlFlow 0 184) 176) anon181_Then_correct)) (=> (= (ControlFlow 0 184) 180) anon182_Then_correct)) (=> (= (ControlFlow 0 184) 183) anon182_Else_correct)))))
(let ((anon179_Else_correct  (=> (and (= to null) (= (ControlFlow 0 173) 172)) anon33_correct)))
(let ((anon25_correct  (=> (state PostHeap@0 QPMask@2) (and (=> (= (ControlFlow 0 185) 184) anon179_Then_correct) (=> (= (ControlFlow 0 185) 173) anon179_Else_correct)))))
(let ((anon178_Else_correct  (=> (and (|Set#Equal_48858| ($$ PostHeap@0 g_1) ($$ Heap@@32 g_1)) (= (ControlFlow 0 195) 185)) anon25_correct)))
(let ((anon176_Then_correct  (=> (and (= to null) (state PostHeap@0 QPMask@2)) (and (and (=> (= (ControlFlow 0 196) 188) anon177_Then_correct) (=> (= (ControlFlow 0 196) 192) anon178_Then_correct)) (=> (= (ControlFlow 0 196) 195) anon178_Else_correct)))))
(let ((anon176_Else_correct  (=> (and (not (= to null)) (= (ControlFlow 0 186) 185)) anon25_correct)))
(let ((anon173_Else_correct  (=> (and (forall ((n$2_1_1 T@Ref) ) (!  (=> (and (select g_1 n$2_1_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$2_1_1 next) null))) (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$2_1_1 next)))
 :qid |stdinbpl.2671:20|
 :skolemid |293|
 :pattern ( (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$2_1_1 next)))
 :pattern ( (select g_1 n$2_1_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$2_1_1 next))
)) (state PostHeap@0 QPMask@2)) (and (=> (= (ControlFlow 0 197) (- 0 198)) (HasDirectPerm_48849_48850 QPMask@2 from next)) (=> (HasDirectPerm_48849_48850 QPMask@2 from next) (=> (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) from next) to) (state PostHeap@0 QPMask@2)) (and (=> (= (ControlFlow 0 197) 196) anon176_Then_correct) (=> (= (ControlFlow 0 197) 186) anon176_Else_correct))))))))
(let ((anon18_correct true))
(let ((anon175_Else_correct  (=> (and (not (and (select g_1 n$2_38) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$2_38 next) null)))) (= (ControlFlow 0 20) 17)) anon18_correct)))
(let ((anon175_Then_correct  (=> (and (select g_1 n$2_38) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$2_38 next) null))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (HasDirectPerm_48849_48850 QPMask@2 n$2_38 next)) (=> (HasDirectPerm_48849_48850 QPMask@2 n$2_38 next) (=> (= (ControlFlow 0 18) 17) anon18_correct))))))
(let ((anon174_Else_correct  (=> (not (select g_1 n$2_38)) (and (=> (= (ControlFlow 0 23) 18) anon175_Then_correct) (=> (= (ControlFlow 0 23) 20) anon175_Else_correct)))))
(let ((anon174_Then_correct  (=> (select g_1 n$2_38) (and (=> (= (ControlFlow 0 21) (- 0 22)) (HasDirectPerm_48849_48850 QPMask@2 n$2_38 next)) (=> (HasDirectPerm_48849_48850 QPMask@2 n$2_38 next) (and (=> (= (ControlFlow 0 21) 18) anon175_Then_correct) (=> (= (ControlFlow 0 21) 20) anon175_Else_correct)))))))
(let ((anon172_Else_correct  (and (=> (= (ControlFlow 0 199) (- 0 201)) (forall ((n$1_1 T@Ref) (n$1_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1 n$1_1_1)) (and (select g_1 n$1_1) (not (= n$1_1 from)))) (and (select g_1 n$1_1_1) (not (= n$1_1_1 from)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_1 n$1_1_1)))
 :qid |stdinbpl.2620:15|
 :skolemid |286|
))) (=> (forall ((n$1_1@@0 T@Ref) (n$1_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1@@0 n$1_1_1@@0)) (and (select g_1 n$1_1@@0) (not (= n$1_1@@0 from)))) (and (select g_1 n$1_1_1@@0) (not (= n$1_1_1@@0 from)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_1@@0 n$1_1_1@@0)))
 :qid |stdinbpl.2620:15|
 :skolemid |286|
)) (=> (and (forall ((n$1_1@@1 T@Ref) ) (!  (=> (and (and (select g_1 n$1_1@@1) (not (= n$1_1@@1 from))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange25 n$1_1@@1) (= (invRecv25 n$1_1@@1) n$1_1@@1)))
 :qid |stdinbpl.2626:22|
 :skolemid |287|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n$1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$1_1@@1 next))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv25 o_4)) (not (= (invRecv25 o_4) from))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange25 o_4)) (= (invRecv25 o_4) o_4))
 :qid |stdinbpl.2630:22|
 :skolemid |288|
 :pattern ( (invRecv25 o_4))
))) (and (=> (= (ControlFlow 0 199) (- 0 200)) (forall ((n$1_1@@2 T@Ref) ) (!  (=> (and (select g_1 n$1_1@@2) (not (= n$1_1@@2 from))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2636:15|
 :skolemid |289|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n$1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$1_1@@2 next))
))) (=> (forall ((n$1_1@@3 T@Ref) ) (!  (=> (and (select g_1 n$1_1@@3) (not (= n$1_1@@3 from))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2636:15|
 :skolemid |289|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$1_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n$1_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$1_1@@3 next))
)) (=> (and (forall ((n$1_1@@4 T@Ref) ) (!  (=> (and (and (select g_1 n$1_1@@4) (not (= n$1_1@@4 from))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$1_1@@4 null)))
 :qid |stdinbpl.2642:22|
 :skolemid |290|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$1_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n$1_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$1_1@@4 next))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv25 o_4@@0)) (not (= (invRecv25 o_4@@0) from))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange25 o_4@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv25 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) o_4@@0 next) (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| PostMask@0) o_4@@0 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv25 o_4@@0)) (not (= (invRecv25 o_4@@0) from))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange25 o_4@@0))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) o_4@@0 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| PostMask@0) o_4@@0 next))))
 :qid |stdinbpl.2648:22|
 :skolemid |291|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) o_4@@0 next))
))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| PostMask@0) o_4@@1 f_5) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@2) o_4@@1 f_5)))
 :qid |stdinbpl.2652:29|
 :skolemid |292|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| PostMask@0) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@2) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_74000_74001) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| PostMask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) o_4@@2 f_5@@0)))
 :qid |stdinbpl.2652:29|
 :skolemid |292|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| PostMask@0) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| PostMask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@2) o_4@@3 f_5@@1)))
 :qid |stdinbpl.2652:29|
 :skolemid |292|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| PostMask@0) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@2) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| PostMask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@2) o_4@@4 f_5@@2)))
 :qid |stdinbpl.2652:29|
 :skolemid |292|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| PostMask@0) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@2) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| PostMask@0) o_4@@5 f_5@@3) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@2) o_4@@5 f_5@@3)))
 :qid |stdinbpl.2652:29|
 :skolemid |292|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| PostMask@0) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@2) o_4@@5 f_5@@3))
))) (state PostHeap@0 QPMask@2)) (and (and (=> (= (ControlFlow 0 199) 197) anon173_Else_correct) (=> (= (ControlFlow 0 199) 21) anon174_Then_correct)) (=> (= (ControlFlow 0 199) 23) anon174_Else_correct)))))))))))
(let ((anon172_Then_correct true))
(let ((anon171_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (not (select g_1 null))) (=> (and (and (select g_1 from) (not (= from null))) (and (= PostMask@0 (PolymorphicMapType_73948 (store (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) from next (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) from next) FullPerm)) (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| ZeroMask) (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| ZeroMask) (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| ZeroMask) (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| ZeroMask))) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 202) 16) anon172_Then_correct) (=> (= (ControlFlow 0 202) 199) anon172_Else_correct))))))
(let ((anon171_Else_correct true))
(let ((anon170_Else_correct  (=> (and (not (exists_path ($$ Heap@@32 g_1) from to)) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 203) 202) anon171_Then_correct) (=> (= (ControlFlow 0 203) 14) anon171_Else_correct)))))
(let ((anon170_Then_correct  (and (=> (= (ControlFlow 0 10) (- 0 12)) (forall ((n_2 T@Ref) ) (!  (=> (and (select g_1 n_2) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_2 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2559:21|
 :skolemid |281|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@1) n_2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_2 next))
))) (=> (forall ((n_2@@0 T@Ref) ) (!  (=> (and (select g_1 n_2@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_2@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2559:21|
 :skolemid |281|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@1) n_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_2@@0 next))
)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (forall ((n_2@@1 T@Ref) (n_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@1 n_2_1)) (select g_1 n_2@@1)) (select g_1 n_2_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_2@@1 n_2_1)))
 :qid |stdinbpl.2566:21|
 :skolemid |282|
 :pattern ( (neverTriggered24 n_2@@1) (neverTriggered24 n_2_1))
))) (=> (forall ((n_2@@2 T@Ref) (n_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@2 n_2_1@@0)) (select g_1 n_2@@2)) (select g_1 n_2_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_2@@2 n_2_1@@0)))
 :qid |stdinbpl.2566:21|
 :skolemid |282|
 :pattern ( (neverTriggered24 n_2@@2) (neverTriggered24 n_2_1@@0))
)) (=> (= (ControlFlow 0 10) (- 0 9)) (forall ((n_2@@3 T@Ref) ) (!  (=> (select g_1 n_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_2@@3 next) NoPerm)))
 :qid |stdinbpl.2573:21|
 :skolemid |283|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@1) n_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_2@@3 next))
)))))))))
(let ((anon167_Else_correct  (=> (and (forall ((n$0_1 T@Ref) ) (!  (=> (and (select g_1 n$0_1) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_1 next) null))) (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_1 next)))
 :qid |stdinbpl.2537:20|
 :skolemid |280|
 :pattern ( (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_1 next)))
 :pattern ( (select g_1 n$0_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_1 next))
)) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 204) (- 0 205)) (HasDirectPerm_48849_48850 QPMask@0 from next)) (=> (HasDirectPerm_48849_48850 QPMask@0 from next) (=> (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) from next) null) (=> (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 204) 10) anon170_Then_correct) (=> (= (ControlFlow 0 204) 203) anon170_Else_correct)))))))))
(let ((anon7_correct true))
(let ((anon169_Else_correct  (=> (and (not (and (select g_1 n$0_37) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_37 next) null)))) (= (ControlFlow 0 5) 2)) anon7_correct)))
(let ((anon169_Then_correct  (=> (and (select g_1 n$0_37) (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_37 next) null))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_48849_48850 QPMask@0 n$0_37 next)) (=> (HasDirectPerm_48849_48850 QPMask@0 n$0_37 next) (=> (= (ControlFlow 0 3) 2) anon7_correct))))))
(let ((anon168_Else_correct  (=> (not (select g_1 n$0_37)) (and (=> (= (ControlFlow 0 8) 3) anon169_Then_correct) (=> (= (ControlFlow 0 8) 5) anon169_Else_correct)))))
(let ((anon168_Then_correct  (=> (select g_1 n$0_37) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_48849_48850 QPMask@0 n$0_37 next)) (=> (HasDirectPerm_48849_48850 QPMask@0 n$0_37 next) (and (=> (= (ControlFlow 0 6) 3) anon169_Then_correct) (=> (= (ControlFlow 0 6) 5) anon169_Else_correct)))))))
(let ((anon166_Else_correct  (and (=> (= (ControlFlow 0 206) (- 0 208)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (and (select g_1 n_1) (not (= n_1 from)))) (and (select g_1 n_1_1) (not (= n_1_1 from)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_1 n_1_1)))
 :qid |stdinbpl.2486:15|
 :skolemid |273|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (and (select g_1 n_1@@0) (not (= n_1@@0 from)))) (and (select g_1 n_1_1@@0) (not (= n_1_1@@0 from)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.2486:15|
 :skolemid |273|
)) (=> (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (and (select g_1 n_1@@1) (not (= n_1@@1 from))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange23 n_1@@1) (= (invRecv23 n_1@@1) n_1@@1)))
 :qid |stdinbpl.2492:22|
 :skolemid |274|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_1@@1 next))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv23 o_4@@6)) (not (= (invRecv23 o_4@@6) from))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange23 o_4@@6)) (= (invRecv23 o_4@@6) o_4@@6))
 :qid |stdinbpl.2496:22|
 :skolemid |275|
 :pattern ( (invRecv23 o_4@@6))
))) (and (=> (= (ControlFlow 0 206) (- 0 207)) (forall ((n_1@@2 T@Ref) ) (!  (=> (and (select g_1 n_1@@2) (not (= n_1@@2 from))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2502:15|
 :skolemid |276|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_1@@2 next))
))) (=> (forall ((n_1@@3 T@Ref) ) (!  (=> (and (select g_1 n_1@@3) (not (= n_1@@3 from))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2502:15|
 :skolemid |276|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_1@@3 next))
)) (=> (and (forall ((n_1@@4 T@Ref) ) (!  (=> (and (and (select g_1 n_1@@4) (not (= n_1@@4 from))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n_1@@4 null)))
 :qid |stdinbpl.2508:22|
 :skolemid |277|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_1@@4 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_1@@4 next))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv23 o_4@@7)) (not (= (invRecv23 o_4@@7) from))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange23 o_4@@7)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv23 o_4@@7) o_4@@7)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_4@@7 next) (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@0) o_4@@7 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv23 o_4@@7)) (not (= (invRecv23 o_4@@7) from))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange23 o_4@@7))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_4@@7 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@0) o_4@@7 next))))
 :qid |stdinbpl.2514:22|
 :skolemid |278|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_4@@7 next))
))) (=> (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@0) o_4@@8 f_5@@4) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@0) o_4@@8 f_5@@4)))
 :qid |stdinbpl.2518:29|
 :skolemid |279|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| Mask@0) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@0) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_74000_74001) ) (!  (=> (not (= f_5@@5 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@0) o_4@@9 f_5@@5) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_4@@9 f_5@@5)))
 :qid |stdinbpl.2518:29|
 :skolemid |279|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| Mask@0) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@0) o_4@@10 f_5@@6) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@0) o_4@@10 f_5@@6)))
 :qid |stdinbpl.2518:29|
 :skolemid |279|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| Mask@0) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@0) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@0) o_4@@11 f_5@@7) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@0) o_4@@11 f_5@@7)))
 :qid |stdinbpl.2518:29|
 :skolemid |279|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| Mask@0) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@0) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@0) o_4@@12 f_5@@8) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@0) o_4@@12 f_5@@8)))
 :qid |stdinbpl.2518:29|
 :skolemid |279|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| Mask@0) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@0) o_4@@12 f_5@@8))
))) (state Heap@@32 QPMask@0)) (and (and (=> (= (ControlFlow 0 206) 204) anon167_Else_correct) (=> (= (ControlFlow 0 206) 6) anon168_Then_correct)) (=> (= (ControlFlow 0 206) 8) anon168_Else_correct)))))))))))
(let ((anon166_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@32 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@32) from $allocated)) (and (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@32) to $allocated) (select g_1 from))) (=> (and (and (and (state Heap@@32 ZeroMask) (not (= to null))) (and (state Heap@@32 ZeroMask) (not (select g_1 null)))) (and (and (select g_1 from) (not (= from null))) (and (= Mask@0 (PolymorphicMapType_73948 (store (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) from next (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) from next) FullPerm)) (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| ZeroMask) (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| ZeroMask) (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| ZeroMask) (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| ZeroMask))) (state Heap@@32 Mask@0)))) (and (=> (= (ControlFlow 0 209) 1) anon166_Then_correct) (=> (= (ControlFlow 0 209) 206) anon166_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 210) 209) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
