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
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_73927)
(declare-fun QPMask@4 () T@PolymorphicMapType_73948)
(declare-fun g_1 () (Array T@Ref Bool))
(declare-fun dummyFunction_48850 (T@Ref) Bool)
(declare-fun neverTriggered89 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_73948)
(declare-fun QPMask@3 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered88 (T@Ref) Bool)
(declare-fun n_72 () T@Ref)
(declare-fun m_16 () T@Ref)
(declare-fun v$2_3 () T@Ref)
(declare-fun v1$0_3 () T@Ref)
(declare-fun v$1_3 () T@Ref)
(declare-fun v2$0_3 () T@Ref)
(declare-fun n$2_39 () T@Ref)
(declare-fun qpRange87 (T@Ref) Bool)
(declare-fun invRecv87 (T@Ref) T@Ref)
(declare-fun n_6 () T@Ref)
(declare-fun m_4_1 () T@Ref)
(declare-fun Heap@@32 () T@PolymorphicMapType_73927)
(declare-fun v$2_2_1 () T@Ref)
(declare-fun v1$0_2 () T@Ref)
(declare-fun v$1_2_1 () T@Ref)
(declare-fun v2$0_2 () T@Ref)
(declare-fun n$2_2 () T@Ref)
(declare-fun neverTriggered90 (T@Ref) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_73948)
(declare-fun QPMask@0 () T@PolymorphicMapType_73948)
(declare-fun qpRange90 (T@Ref) Bool)
(declare-fun invRecv90 (T@Ref) T@Ref)
(declare-fun start@@1 () T@Ref)
(declare-fun QPMask@6 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered86 (T@Ref) Bool)
(declare-fun QPMask@5 () T@PolymorphicMapType_73948)
(declare-fun neverTriggered85 (T@Ref) Bool)
(declare-fun n_71 () T@Ref)
(declare-fun m_14 () T@Ref)
(declare-fun v$0_3 () T@Ref)
(declare-fun v1_32 () T@Ref)
(declare-fun v_35 () T@Ref)
(declare-fun v2_32 () T@Ref)
(declare-fun n$0_39 () T@Ref)
(declare-fun qpRange84 (T@Ref) Bool)
(declare-fun invRecv84 (T@Ref) T@Ref)
(set-info :boogie-vc-id ring_lemma)
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
 (=> (= (ControlFlow 0 0) 100) (let ((anon92_Then_correct  (and (=> (= (ControlFlow 0 82) (- 0 84)) (forall ((n$0_5 T@Ref) ) (!  (=> (and (select g_1 n$0_5) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7219:27|
 :skolemid |785|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@4) n$0_5 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5 next))
))) (=> (forall ((n$0_5@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_5@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7219:27|
 :skolemid |785|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@4) n$0_5@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5@@0 next))
)) (and (=> (= (ControlFlow 0 82) (- 0 83)) (forall ((n$0_5@@1 T@Ref) (n$0_5_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_5@@1 n$0_5_2)) (select g_1 n$0_5@@1)) (select g_1 n$0_5_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_5@@1 n$0_5_2)))
 :qid |stdinbpl.7226:27|
 :skolemid |786|
 :pattern ( (neverTriggered89 n$0_5@@1) (neverTriggered89 n$0_5_2))
))) (=> (forall ((n$0_5@@2 T@Ref) (n$0_5_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_5@@2 n$0_5_2@@0)) (select g_1 n$0_5@@2)) (select g_1 n$0_5_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_5@@2 n$0_5_2@@0)))
 :qid |stdinbpl.7226:27|
 :skolemid |786|
 :pattern ( (neverTriggered89 n$0_5@@2) (neverTriggered89 n$0_5_2@@0))
)) (=> (= (ControlFlow 0 82) (- 0 81)) (forall ((n$0_5@@3 T@Ref) ) (!  (=> (select g_1 n$0_5@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n$0_5@@3 next) NoPerm)))
 :qid |stdinbpl.7233:27|
 :skolemid |787|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@4) n$0_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_5@@3 next))
)))))))))
(let ((anon90_Then_correct  (and (=> (= (ControlFlow 0 77) (- 0 79)) (forall ((n$0_4 T@Ref) ) (!  (=> (and (select g_1 n$0_4) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7175:25|
 :skolemid |780|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@3) n$0_4 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4 next))
))) (=> (forall ((n$0_4@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_4@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7175:25|
 :skolemid |780|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@3) n$0_4@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4@@0 next))
)) (and (=> (= (ControlFlow 0 77) (- 0 78)) (forall ((n$0_4@@1 T@Ref) (n$0_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_4@@1 n$0_4_1)) (select g_1 n$0_4@@1)) (select g_1 n$0_4_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_4@@1 n$0_4_1)))
 :qid |stdinbpl.7182:25|
 :skolemid |781|
 :pattern ( (neverTriggered88 n$0_4@@1) (neverTriggered88 n$0_4_1))
))) (=> (forall ((n$0_4@@2 T@Ref) (n$0_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_4@@2 n$0_4_1@@0)) (select g_1 n$0_4@@2)) (select g_1 n$0_4_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_4@@2 n$0_4_1@@0)))
 :qid |stdinbpl.7182:25|
 :skolemid |781|
 :pattern ( (neverTriggered88 n$0_4@@2) (neverTriggered88 n$0_4_1@@0))
)) (=> (= (ControlFlow 0 77) (- 0 76)) (forall ((n$0_4@@3 T@Ref) ) (!  (=> (select g_1 n$0_4@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n$0_4@@3 next) NoPerm)))
 :qid |stdinbpl.7189:25|
 :skolemid |782|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@3) n$0_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$0_4@@3 next))
)))))))))
(let ((anon46_correct true))
(let ((anon91_Then_correct  (=> (exists_path ($$ PostHeap@0 g_1) n_72 m_16) (and (=> (= (ControlFlow 0 85) 82) anon92_Then_correct) (=> (= (ControlFlow 0 85) 74) anon46_correct)))))
(let ((anon91_Else_correct  (=> (and (not (exists_path ($$ PostHeap@0 g_1) n_72 m_16)) (= (ControlFlow 0 80) 74)) anon46_correct)))
(let ((anon89_Then_correct  (=> (and (select g_1 n_72) (select g_1 m_16)) (and (and (=> (= (ControlFlow 0 86) 77) anon90_Then_correct) (=> (= (ControlFlow 0 86) 85) anon91_Then_correct)) (=> (= (ControlFlow 0 86) 80) anon91_Else_correct)))))
(let ((anon89_Else_correct  (=> (and (not (and (select g_1 n_72) (select g_1 m_16))) (= (ControlFlow 0 75) 74)) anon46_correct)))
(let ((anon88_Else_correct true))
(let ((anon86_Else_correct  (=> (forall ((v$2_1 T@Ref) ) (!  (=> (select g_1 v$2_1) (= (= v$2_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) v$2_1 next)) (|Set#Equal_49043| g_1 (|Set#Singleton_49733| v$2_1))))
 :qid |stdinbpl.7157:20|
 :skolemid |779|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) v$2_1 next))
)) (=> (and (state PostHeap@0 QPMask@2) (state PostHeap@0 QPMask@2)) (and (and (=> (= (ControlFlow 0 87) 73) anon88_Else_correct) (=> (= (ControlFlow 0 87) 86) anon89_Then_correct)) (=> (= (ControlFlow 0 87) 75) anon89_Else_correct))))))
(let ((anon38_correct true))
(let ((anon87_Else_correct  (=> (and (not (select g_1 v$2_3)) (= (ControlFlow 0 72) 69)) anon38_correct)))
(let ((anon87_Then_correct  (=> (select g_1 v$2_3) (and (=> (= (ControlFlow 0 70) (- 0 71)) (HasDirectPerm_48849_48850 QPMask@2 v$2_3 next)) (=> (HasDirectPerm_48849_48850 QPMask@2 v$2_3 next) (=> (= (ControlFlow 0 70) 69) anon38_correct))))))
(let ((anon83_Else_correct  (=> (forall ((v1$0_1 T@Ref) (v2$0_1 T@Ref) (v$1_1 T@Ref) ) (!  (=> (and (select g_1 v1$0_1) (and (select g_1 v2$0_1) (select g_1 v$1_1))) (=> (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) v1$0_1 next) v$1_1) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) v2$0_1 next) v$1_1)) (= v1$0_1 v2$0_1)))
 :qid |stdinbpl.7144:20|
 :skolemid |778|
 :pattern ( (select g_1 v$1_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) v1$0_1 next) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) v2$0_1 next))
)) (and (and (=> (= (ControlFlow 0 88) 87) anon86_Else_correct) (=> (= (ControlFlow 0 88) 70) anon87_Then_correct)) (=> (= (ControlFlow 0 88) 72) anon87_Else_correct)))))
(let ((anon34_correct true))
(let ((anon85_Else_correct  (=> (and (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) v1$0_3 next) v$1_3)) (= (ControlFlow 0 66) 62)) anon34_correct)))
(let ((anon85_Then_correct  (=> (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) v1$0_3 next) v$1_3) (and (=> (= (ControlFlow 0 64) (- 0 65)) (HasDirectPerm_48849_48850 QPMask@2 v2$0_3 next)) (=> (HasDirectPerm_48849_48850 QPMask@2 v2$0_3 next) (=> (= (ControlFlow 0 64) 62) anon34_correct))))))
(let ((anon84_Then_correct  (=> (and (select g_1 v1$0_3) (and (select g_1 v2$0_3) (select g_1 v$1_3))) (and (=> (= (ControlFlow 0 67) (- 0 68)) (HasDirectPerm_48849_48850 QPMask@2 v1$0_3 next)) (=> (HasDirectPerm_48849_48850 QPMask@2 v1$0_3 next) (and (=> (= (ControlFlow 0 67) 64) anon85_Then_correct) (=> (= (ControlFlow 0 67) 66) anon85_Else_correct)))))))
(let ((anon84_Else_correct  (=> (and (not (and (select g_1 v1$0_3) (and (select g_1 v2$0_3) (select g_1 v$1_3)))) (= (ControlFlow 0 63) 62)) anon34_correct)))
(let ((anon81_Else_correct  (=> (and (forall ((n$2_1_1 T@Ref) ) (!  (=> (select g_1 n$2_1_1) (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$2_1_1 next)))
 :qid |stdinbpl.7126:20|
 :skolemid |777|
 :pattern ( (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$2_1_1 next)))
 :pattern ( (select g_1 n$2_1_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$2_1_1 next))
)) (state PostHeap@0 QPMask@2)) (and (and (=> (= (ControlFlow 0 89) 88) anon83_Else_correct) (=> (= (ControlFlow 0 89) 67) anon84_Then_correct)) (=> (= (ControlFlow 0 89) 63) anon84_Else_correct)))))
(let ((anon29_correct true))
(let ((anon82_Else_correct  (=> (and (not (select g_1 n$2_39)) (= (ControlFlow 0 61) 58)) anon29_correct)))
(let ((anon82_Then_correct  (=> (select g_1 n$2_39) (and (=> (= (ControlFlow 0 59) (- 0 60)) (HasDirectPerm_48849_48850 QPMask@2 n$2_39 next)) (=> (HasDirectPerm_48849_48850 QPMask@2 n$2_39 next) (=> (= (ControlFlow 0 59) 58) anon29_correct))))))
(let ((anon80_Else_correct  (and (=> (= (ControlFlow 0 90) (- 0 91)) (forall ((n$1_1 T@Ref) (n$1_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1 n$1_1_1)) (select g_1 n$1_1)) (select g_1 n$1_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_1 n$1_1_1)))
 :qid |stdinbpl.7085:15|
 :skolemid |771|
))) (=> (forall ((n$1_1@@0 T@Ref) (n$1_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1@@0 n$1_1_1@@0)) (select g_1 n$1_1@@0)) (select g_1 n$1_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_1@@0 n$1_1_1@@0)))
 :qid |stdinbpl.7085:15|
 :skolemid |771|
)) (=> (and (and (forall ((n$1_1@@1 T@Ref) ) (!  (=> (and (select g_1 n$1_1@@1) (< NoPerm FullPerm)) (and (qpRange87 n$1_1@@1) (= (invRecv87 n$1_1@@1) n$1_1@@1)))
 :qid |stdinbpl.7091:22|
 :skolemid |772|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n$1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$1_1@@1 next))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv87 o_4)) (< NoPerm FullPerm)) (qpRange87 o_4)) (= (invRecv87 o_4) o_4))
 :qid |stdinbpl.7095:22|
 :skolemid |773|
 :pattern ( (invRecv87 o_4))
))) (and (forall ((n$1_1@@2 T@Ref) ) (!  (=> (select g_1 n$1_1@@2) (not (= n$1_1@@2 null)))
 :qid |stdinbpl.7101:22|
 :skolemid |774|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) n$1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| PostHeap@0) n$1_1@@2 next))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv87 o_4@@0)) (< NoPerm FullPerm)) (qpRange87 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv87 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) o_4@@0 next) (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_4@@0 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv87 o_4@@0)) (< NoPerm FullPerm)) (qpRange87 o_4@@0))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) o_4@@0 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_4@@0 next))))
 :qid |stdinbpl.7107:22|
 :skolemid |775|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) o_4@@0 next))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@2) o_4@@1 f_5)))
 :qid |stdinbpl.7111:29|
 :skolemid |776|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@2) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_74000_74001) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) o_4@@2 f_5@@0)))
 :qid |stdinbpl.7111:29|
 :skolemid |776|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@2) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@2) o_4@@3 f_5@@1)))
 :qid |stdinbpl.7111:29|
 :skolemid |776|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@2) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@2) o_4@@4 f_5@@2)))
 :qid |stdinbpl.7111:29|
 :skolemid |776|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@2) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@2) o_4@@5 f_5@@3)))
 :qid |stdinbpl.7111:29|
 :skolemid |776|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@2) o_4@@5 f_5@@3))
))) (state PostHeap@0 QPMask@2)) (and (and (=> (= (ControlFlow 0 90) 89) anon81_Else_correct) (=> (= (ControlFlow 0 90) 59) anon82_Then_correct)) (=> (= (ControlFlow 0 90) 61) anon82_Else_correct))))))))
(let ((anon80_Then_correct true))
(let ((anon79_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (not (select g_1 null))) (and (=> (= (ControlFlow 0 92) 57) anon80_Then_correct) (=> (= (ControlFlow 0 92) 90) anon80_Else_correct)))))
(let ((anon64_correct true))
(let ((anon101_Else_correct  (=> (and (not (and (select g_1 n_6) (select g_1 m_4_1))) (= (ControlFlow 0 49) 45)) anon64_correct)))
(let ((anon101_Then_correct  (=> (and (select g_1 n_6) (select g_1 m_4_1)) (and (=> (= (ControlFlow 0 46) (- 0 48)) (exists_path ($$ Heap@@32 g_1) n_6 m_4_1)) (=> (exists_path ($$ Heap@@32 g_1) n_6 m_4_1) (and (=> (= (ControlFlow 0 46) (- 0 47)) (exists_path ($$ Heap@@32 g_1) m_4_1 n_6)) (=> (exists_path ($$ Heap@@32 g_1) m_4_1 n_6) (=> (= (ControlFlow 0 46) 45) anon64_correct))))))))
(let ((anon100_Else_correct true))
(let ((anon98_Else_correct  (=> (forall ((v$2_3_1 T@Ref) ) (!  (=> (select g_1 v$2_3_1) (= (= v$2_3_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v$2_3_1 next)) (|Set#Equal_49043| g_1 (|Set#Singleton_49733| v$2_3_1))))
 :qid |stdinbpl.7344:20|
 :skolemid |799|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v$2_3_1 next))
)) (and (and (=> (= (ControlFlow 0 50) 44) anon100_Else_correct) (=> (= (ControlFlow 0 50) 46) anon101_Then_correct)) (=> (= (ControlFlow 0 50) 49) anon101_Else_correct)))))
(let ((anon60_correct true))
(let ((anon99_Else_correct  (=> (and (not (select g_1 v$2_2_1)) (= (ControlFlow 0 43) 40)) anon60_correct)))
(let ((anon99_Then_correct  (=> (select g_1 v$2_2_1) (and (=> (= (ControlFlow 0 41) (- 0 42)) (= (= v$2_2_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v$2_2_1 next)) (|Set#Equal_49043| g_1 (|Set#Singleton_49733| v$2_2_1)))) (=> (= (= v$2_2_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v$2_2_1 next)) (|Set#Equal_49043| g_1 (|Set#Singleton_49733| v$2_2_1))) (=> (= (ControlFlow 0 41) 40) anon60_correct))))))
(let ((anon95_Else_correct  (=> (forall ((v1$0_3_1 T@Ref) (v2$0_3_1 T@Ref) (v$1_3_1 T@Ref) ) (!  (=> (and (select g_1 v1$0_3_1) (and (select g_1 v2$0_3_1) (select g_1 v$1_3_1))) (=> (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v1$0_3_1 next) v$1_3_1) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v2$0_3_1 next) v$1_3_1)) (= v1$0_3_1 v2$0_3_1)))
 :qid |stdinbpl.7333:20|
 :skolemid |798|
 :pattern ( (select g_1 v$1_3_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v1$0_3_1 next) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v2$0_3_1 next))
)) (and (and (=> (= (ControlFlow 0 51) 50) anon98_Else_correct) (=> (= (ControlFlow 0 51) 41) anon99_Then_correct)) (=> (= (ControlFlow 0 51) 43) anon99_Else_correct)))))
(let ((anon56_correct true))
(let ((anon97_Else_correct  (=> (and (not (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v1$0_2 next) v$1_2_1) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v2$0_2 next) v$1_2_1))) (= (ControlFlow 0 38) 34)) anon56_correct)))
(let ((anon97_Then_correct  (=> (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v1$0_2 next) v$1_2_1) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v2$0_2 next) v$1_2_1)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (= v1$0_2 v2$0_2)) (=> (= v1$0_2 v2$0_2) (=> (= (ControlFlow 0 36) 34) anon56_correct))))))
(let ((anon96_Then_correct  (=> (and (select g_1 v1$0_2) (and (select g_1 v2$0_2) (select g_1 v$1_2_1))) (and (=> (= (ControlFlow 0 39) 36) anon97_Then_correct) (=> (= (ControlFlow 0 39) 38) anon97_Else_correct)))))
(let ((anon96_Else_correct  (=> (and (not (and (select g_1 v1$0_2) (and (select g_1 v2$0_2) (select g_1 v$1_2_1)))) (= (ControlFlow 0 35) 34)) anon56_correct)))
(let ((anon93_Else_correct  (=> (forall ((n$2_3_1 T@Ref) ) (!  (=> (select g_1 n$2_3_1) (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$2_3_1 next)))
 :qid |stdinbpl.7320:20|
 :skolemid |797|
 :pattern ( (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$2_3_1 next)))
 :pattern ( (select g_1 n$2_3_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$2_3_1 next))
)) (and (and (=> (= (ControlFlow 0 52) 51) anon95_Else_correct) (=> (= (ControlFlow 0 52) 39) anon96_Then_correct)) (=> (= (ControlFlow 0 52) 35) anon96_Else_correct)))))
(let ((anon51_correct true))
(let ((anon94_Else_correct  (=> (and (not (select g_1 n$2_2)) (= (ControlFlow 0 33) 30)) anon51_correct)))
(let ((anon94_Then_correct  (=> (select g_1 n$2_2) (and (=> (= (ControlFlow 0 31) (- 0 32)) (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$2_2 next))) (=> (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$2_2 next)) (=> (= (ControlFlow 0 31) 30) anon51_correct))))))
(let ((anon79_Else_correct  (and (=> (= (ControlFlow 0 53) (- 0 56)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 53) (- 0 55)) (forall ((n$1_2 T@Ref) (n$1_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_2 n$1_2_1)) (select g_1 n$1_2)) (select g_1 n$1_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_2 n$1_2_1)))
 :qid |stdinbpl.7279:17|
 :skolemid |791|
 :pattern ( (neverTriggered90 n$1_2) (neverTriggered90 n$1_2_1))
))) (=> (forall ((n$1_2@@0 T@Ref) (n$1_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_2@@0 n$1_2_1@@0)) (select g_1 n$1_2@@0)) (select g_1 n$1_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_2@@0 n$1_2_1@@0)))
 :qid |stdinbpl.7279:17|
 :skolemid |791|
 :pattern ( (neverTriggered90 n$1_2@@0) (neverTriggered90 n$1_2_1@@0))
)) (and (=> (= (ControlFlow 0 53) (- 0 54)) (forall ((n$1_2@@1 T@Ref) ) (!  (=> (select g_1 n$1_2@@1) (>= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n$1_2@@1 next) FullPerm))
 :qid |stdinbpl.7286:17|
 :skolemid |792|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$1_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@1) n$1_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$1_2@@1 next))
))) (=> (forall ((n$1_2@@2 T@Ref) ) (!  (=> (select g_1 n$1_2@@2) (>= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n$1_2@@2 next) FullPerm))
 :qid |stdinbpl.7286:17|
 :skolemid |792|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$1_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@1) n$1_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$1_2@@2 next))
)) (=> (forall ((n$1_2@@3 T@Ref) ) (!  (=> (and (select g_1 n$1_2@@3) (< NoPerm FullPerm)) (and (qpRange90 n$1_2@@3) (= (invRecv90 n$1_2@@3) n$1_2@@3)))
 :qid |stdinbpl.7292:22|
 :skolemid |793|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$1_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@1) n$1_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$1_2@@3 next))
)) (=> (and (forall ((o_4@@6 T@Ref) ) (!  (=> (and (select g_1 (invRecv90 o_4@@6)) (and (< NoPerm FullPerm) (qpRange90 o_4@@6))) (= (invRecv90 o_4@@6) o_4@@6))
 :qid |stdinbpl.7296:22|
 :skolemid |794|
 :pattern ( (invRecv90 o_4@@6))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv90 o_4@@7)) (and (< NoPerm FullPerm) (qpRange90 o_4@@7))) (and (= (invRecv90 o_4@@7) o_4@@7) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@1) o_4@@7 next) (- (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_4@@7 next) FullPerm)))) (=> (not (and (select g_1 (invRecv90 o_4@@7)) (and (< NoPerm FullPerm) (qpRange90 o_4@@7)))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@1) o_4@@7 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_4@@7 next))))
 :qid |stdinbpl.7302:22|
 :skolemid |795|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@1) o_4@@7 next))
))) (=> (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@0) o_4@@8 f_5@@4) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@1) o_4@@8 f_5@@4)))
 :qid |stdinbpl.7308:29|
 :skolemid |796|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@1) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_74000_74001) ) (!  (=> (not (= f_5@@5 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_4@@9 f_5@@5) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@1) o_4@@9 f_5@@5)))
 :qid |stdinbpl.7308:29|
 :skolemid |796|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@1) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@0) o_4@@10 f_5@@6) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@1) o_4@@10 f_5@@6)))
 :qid |stdinbpl.7308:29|
 :skolemid |796|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@1) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@0) o_4@@11 f_5@@7) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@1) o_4@@11 f_5@@7)))
 :qid |stdinbpl.7308:29|
 :skolemid |796|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@1) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@0) o_4@@12 f_5@@8) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@1) o_4@@12 f_5@@8)))
 :qid |stdinbpl.7308:29|
 :skolemid |796|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@1) o_4@@12 f_5@@8))
))) (and (and (=> (= (ControlFlow 0 53) 52) anon93_Else_correct) (=> (= (ControlFlow 0 53) 31) anon94_Then_correct)) (=> (= (ControlFlow 0 53) 33) anon94_Else_correct)))))))))))))
(let ((anon74_Else_correct  (=> (and (forall ((n_3 T@Ref) (m_1_1 T@Ref) ) (!  (=> (and (select g_1 n_3) (select g_1 m_1_1)) (and (exists_path ($$ Heap@@32 g_1) n_3 start@@1) (exists_path ($$ Heap@@32 g_1) start@@1 m_1_1)))
 :qid |stdinbpl.7061:20|
 :skolemid |770|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_7031 (|$$#condqp1| Heap@@32 g_1)) g_1) n_3 m_1_1))
)) (state Heap@@32 QPMask@0)) (and (=> (= (ControlFlow 0 93) 92) anon79_Then_correct) (=> (= (ControlFlow 0 93) 53) anon79_Else_correct)))))
(let ((anon78_Then_correct  (and (=> (= (ControlFlow 0 25) (- 0 27)) (forall ((n$0_3_2 T@Ref) ) (!  (=> (and (select g_1 n$0_3_2) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_3_2 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7022:27|
 :skolemid |765|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_3_2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@6) n$0_3_2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_3_2 next))
))) (=> (forall ((n$0_3_2@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_3_2@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_3_2@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.7022:27|
 :skolemid |765|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_3_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@6) n$0_3_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_3_2@@0 next))
)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (forall ((n$0_3_2@@1 T@Ref) (n$0_3_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3_2@@1 n$0_3_3)) (select g_1 n$0_3_2@@1)) (select g_1 n$0_3_3)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_3_2@@1 n$0_3_3)))
 :qid |stdinbpl.7029:27|
 :skolemid |766|
 :pattern ( (neverTriggered86 n$0_3_2@@1) (neverTriggered86 n$0_3_3))
))) (=> (forall ((n$0_3_2@@2 T@Ref) (n$0_3_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3_2@@2 n$0_3_3@@0)) (select g_1 n$0_3_2@@2)) (select g_1 n$0_3_3@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_3_2@@2 n$0_3_3@@0)))
 :qid |stdinbpl.7029:27|
 :skolemid |766|
 :pattern ( (neverTriggered86 n$0_3_2@@2) (neverTriggered86 n$0_3_3@@0))
)) (=> (= (ControlFlow 0 25) (- 0 24)) (forall ((n$0_3_2@@3 T@Ref) ) (!  (=> (select g_1 n$0_3_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n$0_3_2@@3 next) NoPerm)))
 :qid |stdinbpl.7036:27|
 :skolemid |767|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_3_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@6) n$0_3_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_3_2@@3 next))
)))))))))
(let ((anon76_Then_correct  (and (=> (= (ControlFlow 0 20) (- 0 22)) (forall ((n$0_2_1 T@Ref) ) (!  (=> (and (select g_1 n$0_2_1) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_2_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.6978:25|
 :skolemid |760|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_2_1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@5) n$0_2_1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_2_1 next))
))) (=> (forall ((n$0_2_1@@0 T@Ref) ) (!  (=> (and (select g_1 n$0_2_1@@0) (dummyFunction_48850 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_2_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.6978:25|
 :skolemid |760|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_2_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@5) n$0_2_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_2_1@@0 next))
)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (forall ((n$0_2_1@@1 T@Ref) (n$0_2_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2_1@@1 n$0_2_2)) (select g_1 n$0_2_1@@1)) (select g_1 n$0_2_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_2_1@@1 n$0_2_2)))
 :qid |stdinbpl.6985:25|
 :skolemid |761|
 :pattern ( (neverTriggered85 n$0_2_1@@1) (neverTriggered85 n$0_2_2))
))) (=> (forall ((n$0_2_1@@2 T@Ref) (n$0_2_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2_1@@2 n$0_2_2@@0)) (select g_1 n$0_2_1@@2)) (select g_1 n$0_2_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$0_2_1@@2 n$0_2_2@@0)))
 :qid |stdinbpl.6985:25|
 :skolemid |761|
 :pattern ( (neverTriggered85 n$0_2_1@@2) (neverTriggered85 n$0_2_2@@0))
)) (=> (= (ControlFlow 0 20) (- 0 19)) (forall ((n$0_2_1@@3 T@Ref) ) (!  (=> (select g_1 n$0_2_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n$0_2_1@@3 next) NoPerm)))
 :qid |stdinbpl.6992:25|
 :skolemid |762|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_2_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@5) n$0_2_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_2_1@@3 next))
)))))))))
(let ((anon22_correct true))
(let ((anon77_Then_correct  (=> (exists_path ($$ Heap@@32 g_1) n_71 start@@1) (and (=> (= (ControlFlow 0 28) 25) anon78_Then_correct) (=> (= (ControlFlow 0 28) 17) anon22_correct)))))
(let ((anon77_Else_correct  (=> (and (not (exists_path ($$ Heap@@32 g_1) n_71 start@@1)) (= (ControlFlow 0 23) 17)) anon22_correct)))
(let ((anon75_Then_correct  (=> (and (select g_1 n_71) (select g_1 m_14)) (and (and (=> (= (ControlFlow 0 29) 20) anon76_Then_correct) (=> (= (ControlFlow 0 29) 28) anon77_Then_correct)) (=> (= (ControlFlow 0 29) 23) anon77_Else_correct)))))
(let ((anon75_Else_correct  (=> (and (not (and (select g_1 n_71) (select g_1 m_14))) (= (ControlFlow 0 18) 17)) anon22_correct)))
(let ((anon72_Else_correct  (=> (forall ((v$0_1 T@Ref) ) (!  (=> (select g_1 v$0_1) (= (= v$0_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v$0_1 next)) (|Set#Equal_49043| g_1 (|Set#Singleton_49733| v$0_1))))
 :qid |stdinbpl.6958:20|
 :skolemid |759|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v$0_1 next))
)) (=> (and (and (state Heap@@32 QPMask@0) (select g_1 start@@1)) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0))) (and (and (=> (= (ControlFlow 0 94) 93) anon74_Else_correct) (=> (= (ControlFlow 0 94) 29) anon75_Then_correct)) (=> (= (ControlFlow 0 94) 18) anon75_Else_correct))))))
(let ((anon14_correct true))
(let ((anon73_Else_correct  (=> (and (not (select g_1 v$0_3)) (= (ControlFlow 0 16) 13)) anon14_correct)))
(let ((anon73_Then_correct  (=> (select g_1 v$0_3) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_48849_48850 QPMask@0 v$0_3 next)) (=> (HasDirectPerm_48849_48850 QPMask@0 v$0_3 next) (=> (= (ControlFlow 0 14) 13) anon14_correct))))))
(let ((anon69_Else_correct  (=> (forall ((v1_1 T@Ref) (v2_1 T@Ref) (v_1_1@@1 T@Ref) ) (!  (=> (and (select g_1 v1_1) (and (select g_1 v2_1) (select g_1 v_1_1@@1))) (=> (and (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v1_1 next) v_1_1@@1) (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v2_1 next) v_1_1@@1)) (= v1_1 v2_1)))
 :qid |stdinbpl.6945:20|
 :skolemid |758|
 :pattern ( (select g_1 v_1_1@@1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v1_1 next) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v2_1 next))
)) (and (and (=> (= (ControlFlow 0 95) 94) anon72_Else_correct) (=> (= (ControlFlow 0 95) 14) anon73_Then_correct)) (=> (= (ControlFlow 0 95) 16) anon73_Else_correct)))))
(let ((anon10_correct true))
(let ((anon71_Else_correct  (=> (and (not (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v1_32 next) v_35)) (= (ControlFlow 0 10) 6)) anon10_correct)))
(let ((anon71_Then_correct  (=> (= (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) v1_32 next) v_35) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_48849_48850 QPMask@0 v2_32 next)) (=> (HasDirectPerm_48849_48850 QPMask@0 v2_32 next) (=> (= (ControlFlow 0 8) 6) anon10_correct))))))
(let ((anon70_Then_correct  (=> (and (select g_1 v1_32) (and (select g_1 v2_32) (select g_1 v_35))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_48849_48850 QPMask@0 v1_32 next)) (=> (HasDirectPerm_48849_48850 QPMask@0 v1_32 next) (and (=> (= (ControlFlow 0 11) 8) anon71_Then_correct) (=> (= (ControlFlow 0 11) 10) anon71_Else_correct)))))))
(let ((anon70_Else_correct  (=> (and (not (and (select g_1 v1_32) (and (select g_1 v2_32) (select g_1 v_35)))) (= (ControlFlow 0 7) 6)) anon10_correct)))
(let ((anon67_Else_correct  (=> (and (forall ((n$0_1 T@Ref) ) (!  (=> (select g_1 n$0_1) (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_1 next)))
 :qid |stdinbpl.6927:20|
 :skolemid |757|
 :pattern ( (select g_1 (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_1 next)))
 :pattern ( (select g_1 n$0_1) (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n$0_1 next))
)) (state Heap@@32 QPMask@0)) (and (and (=> (= (ControlFlow 0 96) 95) anon69_Else_correct) (=> (= (ControlFlow 0 96) 11) anon70_Then_correct)) (=> (= (ControlFlow 0 96) 7) anon70_Else_correct)))))
(let ((anon5_correct true))
(let ((anon68_Else_correct  (=> (and (not (select g_1 n$0_39)) (= (ControlFlow 0 5) 2)) anon5_correct)))
(let ((anon68_Then_correct  (=> (select g_1 n$0_39) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_48849_48850 QPMask@0 n$0_39 next)) (=> (HasDirectPerm_48849_48850 QPMask@0 n$0_39 next) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))
(let ((anon66_Else_correct  (and (=> (= (ControlFlow 0 97) (- 0 98)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select g_1 n_1)) (select g_1 n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.6886:15|
 :skolemid |751|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select g_1 n_1@@0)) (select g_1 n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.6886:15|
 :skolemid |751|
)) (=> (and (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select g_1 n_1@@1) (< NoPerm FullPerm)) (and (qpRange84 n_1@@1) (= (invRecv84 n_1@@1) n_1@@1)))
 :qid |stdinbpl.6892:22|
 :skolemid |752|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_1@@1 next))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv84 o_4@@13)) (< NoPerm FullPerm)) (qpRange84 o_4@@13)) (= (invRecv84 o_4@@13) o_4@@13))
 :qid |stdinbpl.6896:22|
 :skolemid |753|
 :pattern ( (invRecv84 o_4@@13))
))) (and (forall ((n_1@@2 T@Ref) ) (!  (=> (select g_1 n_1@@2) (not (= n_1@@2 null)))
 :qid |stdinbpl.6902:22|
 :skolemid |754|
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_73927_47956_47957#PolymorphicMapType_73927| Heap@@32) n_1@@2 next))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv84 o_4@@14)) (< NoPerm FullPerm)) (qpRange84 o_4@@14)) (and (=> (< NoPerm FullPerm) (= (invRecv84 o_4@@14) o_4@@14)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_4@@14 next) (+ (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_4@@14 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv84 o_4@@14)) (< NoPerm FullPerm)) (qpRange84 o_4@@14))) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_4@@14 next) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_4@@14 next))))
 :qid |stdinbpl.6908:22|
 :skolemid |755|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_4@@14 next))
)))) (=> (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_73987_53) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| ZeroMask) o_4@@15 f_5@@9) (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@0) o_4@@15 f_5@@9)))
 :qid |stdinbpl.6912:29|
 :skolemid |756|
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| ZeroMask) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_73948_48849_53#PolymorphicMapType_73948| QPMask@0) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_74000_74001) ) (!  (=> (not (= f_5@@10 next)) (= (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_4@@16 f_5@@10) (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_4@@16 f_5@@10)))
 :qid |stdinbpl.6912:29|
 :skolemid |756|
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| ZeroMask) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_73948_48849_48850#PolymorphicMapType_73948| QPMask@0) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_83161_6878) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| ZeroMask) o_4@@17 f_5@@11) (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@0) o_4@@17 f_5@@11)))
 :qid |stdinbpl.6912:29|
 :skolemid |756|
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| ZeroMask) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_73948_48852_6878#PolymorphicMapType_73948| QPMask@0) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_48849_250533) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| ZeroMask) o_4@@18 f_5@@12) (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@0) o_4@@18 f_5@@12)))
 :qid |stdinbpl.6912:29|
 :skolemid |756|
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| ZeroMask) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_73948_48849_250533#PolymorphicMapType_73948| QPMask@0) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_48849_250666) ) (!  (=> true (= (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| ZeroMask) o_4@@19 f_5@@13) (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@0) o_4@@19 f_5@@13)))
 :qid |stdinbpl.6912:29|
 :skolemid |756|
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| ZeroMask) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_73948_48849_254773#PolymorphicMapType_73948| QPMask@0) o_4@@19 f_5@@13))
))) (state Heap@@32 QPMask@0)) (and (and (=> (= (ControlFlow 0 97) 96) anon67_Else_correct) (=> (= (ControlFlow 0 97) 3) anon68_Then_correct)) (=> (= (ControlFlow 0 97) 5) anon68_Else_correct))))))))
(let ((anon66_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_73927_47953_53#PolymorphicMapType_73927| Heap@@32) start@@1 $allocated) (not (select g_1 null)))) (and (=> (= (ControlFlow 0 99) 1) anon66_Then_correct) (=> (= (ControlFlow 0 99) 97) anon66_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 100) 99) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
