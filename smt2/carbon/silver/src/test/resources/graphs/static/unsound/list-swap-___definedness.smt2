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
(declare-sort T@Field_58062_53 0)
(declare-sort T@Field_58075_58076 0)
(declare-sort T@Field_37930_191531 0)
(declare-sort T@Field_37930_191398 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_58023 0)) (((PolymorphicMapType_58023 (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| (Array T@Ref T@Field_58075_58076 Real)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| (Array T@Ref T@Field_58062_53 Real)) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| (Array T@Ref T@Field_37930_191398 Real)) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| (Array T@Ref T@Field_37930_191531 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_58551 0)) (((PolymorphicMapType_58551 (|PolymorphicMapType_58551_58062_53#PolymorphicMapType_58551| (Array T@Ref T@Field_58062_53 Bool)) (|PolymorphicMapType_58551_58062_58076#PolymorphicMapType_58551| (Array T@Ref T@Field_58075_58076 Bool)) (|PolymorphicMapType_58551_58062_191398#PolymorphicMapType_58551| (Array T@Ref T@Field_37930_191398 Bool)) (|PolymorphicMapType_58551_58062_192511#PolymorphicMapType_58551| (Array T@Ref T@Field_37930_191531 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_58002 0)) (((PolymorphicMapType_58002 (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| (Array T@Ref T@Field_58062_53 Bool)) (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| (Array T@Ref T@Field_58075_58076 T@Ref)) (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| (Array T@Ref T@Field_37930_191531 T@PolymorphicMapType_58551)) (|PolymorphicMapType_58002_58062_191398#PolymorphicMapType_58002| (Array T@Ref T@Field_37930_191398 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_58062_53)
(declare-fun next () T@Field_58075_58076)
(declare-fun succHeap (T@PolymorphicMapType_58002 T@PolymorphicMapType_58002) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_58002 T@PolymorphicMapType_58002) Bool)
(declare-fun state (T@PolymorphicMapType_58002 T@PolymorphicMapType_58023) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_58023) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_58551)
(declare-fun |apply_TCFraming'| (T@PolymorphicMapType_58002 (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun dummyFunction_8139 (Bool) Bool)
(declare-fun |apply_TCFraming#triggerStateless| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-sort T@EdgeDomainType 0)
(declare-fun exists_path ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun edge ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun exists_path_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun |$$'| (T@PolymorphicMapType_58002 (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun dummyFunction_66230 ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun |$$#triggerStateless| ((Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |Set#Union_38119| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_38122| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |apply_TCFraming#condqp2| (T@PolymorphicMapType_58002 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |sk_apply_TCFraming#condqp2| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun |apply_TCFraming#condqp3| (T@PolymorphicMapType_58002 (Array T@Ref Bool) (Array T@Ref Bool)) Int)
(declare-fun |sk_apply_TCFraming#condqp3| (Int Int) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |apply_TCFraming#trigger| (T@FrameType (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_6002 (Int) T@FrameType)
(declare-fun |Set#Equal_38122| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Set#Empty_38125| () (Array T@Ref Bool))
(declare-fun |$$#frame| (T@FrameType (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |$$#condqp1| (T@PolymorphicMapType_58002 (Array T@Ref Bool)) Int)
(declare-fun $$ (T@PolymorphicMapType_58002 (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |Set#Singleton_38125| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_38125| ((Array T@Ref Bool)) Int)
(declare-fun apply_noExit ((Array T@EdgeDomainType Bool) (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_58002 T@PolymorphicMapType_58002 T@PolymorphicMapType_58023) Bool)
(declare-fun IsPredicateField_37930_191489 (T@Field_37930_191398) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_37930 (T@Field_37930_191398) T@Field_37930_191531)
(declare-fun HasDirectPerm_37930_191462 (T@PolymorphicMapType_58023 T@Ref T@Field_37930_191398) Bool)
(declare-fun IsWandField_37930_193038 (T@Field_37930_191398) Bool)
(declare-fun WandMaskField_37930 (T@Field_37930_191398) T@Field_37930_191531)
(declare-fun unshared_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun func_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun |$$#trigger| (T@FrameType (Array T@Ref Bool)) Bool)
(declare-fun create_edge (T@Ref T@Ref) T@EdgeDomainType)
(declare-fun dummyHeap () T@PolymorphicMapType_58002)
(declare-fun ZeroMask () T@PolymorphicMapType_58023)
(declare-fun InsidePredicate_58062_58062 (T@Field_37930_191398 T@FrameType T@Field_37930_191398 T@FrameType) Bool)
(declare-fun |sk_$$#condqp1| (Int Int) T@Ref)
(declare-fun IsPredicateField_37930_37931 (T@Field_58075_58076) Bool)
(declare-fun IsWandField_37930_37931 (T@Field_58075_58076) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_37930_195972 (T@Field_37930_191531) Bool)
(declare-fun IsWandField_37930_195988 (T@Field_37930_191531) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_37930_53 (T@Field_58062_53) Bool)
(declare-fun IsWandField_37930_53 (T@Field_58062_53) Bool)
(declare-fun |Set#Equal_37937| ((Array T@EdgeDomainType Bool) (Array T@EdgeDomainType Bool)) Bool)
(declare-fun HasDirectPerm_37930_196343 (T@PolymorphicMapType_58023 T@Ref T@Field_37930_191531) Bool)
(declare-fun HasDirectPerm_37930_53 (T@PolymorphicMapType_58023 T@Ref T@Field_58062_53) Bool)
(declare-fun HasDirectPerm_37930_37931 (T@PolymorphicMapType_58023 T@Ref T@Field_58075_58076) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_58023 T@PolymorphicMapType_58023 T@PolymorphicMapType_58023) Bool)
(declare-fun |Set#Difference_38125| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_38125| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun acyclic_graph ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun edge_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun edge_pred (T@EdgeDomainType) T@Ref)
(declare-fun edge_succ (T@EdgeDomainType) T@Ref)
(declare-fun |apply_TCFraming#frame| (T@FrameType (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun succs ((Array T@EdgeDomainType Bool) T@Ref) (Array T@Ref Bool))
(declare-fun inst_uReach ((Array T@EdgeDomainType Bool) T@Ref) (Array T@Ref Bool))
(declare-fun inst_uReach_rev ((Array T@EdgeDomainType Bool) T@Ref) (Array T@Ref Bool))
(declare-fun apply_TCFraming (T@PolymorphicMapType_58002 (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_58002) (Heap1 T@PolymorphicMapType_58002) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_58002) (Mask T@PolymorphicMapType_58023) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_58002) (Heap1@@0 T@PolymorphicMapType_58002) (Heap2 T@PolymorphicMapType_58002) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_37930_191531) ) (!  (not (select (|PolymorphicMapType_58551_58062_192511#PolymorphicMapType_58551| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_58551_58062_192511#PolymorphicMapType_58551| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_37930_191398) ) (!  (not (select (|PolymorphicMapType_58551_58062_191398#PolymorphicMapType_58551| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_58551_58062_191398#PolymorphicMapType_58551| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_58075_58076) ) (!  (not (select (|PolymorphicMapType_58551_58062_58076#PolymorphicMapType_58551| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_58551_58062_58076#PolymorphicMapType_58551| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_58062_53) ) (!  (not (select (|PolymorphicMapType_58551_58062_53#PolymorphicMapType_58551| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_58551_58062_53#PolymorphicMapType_58551| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_58002) (g0 (Array T@Ref Bool)) (g1 (Array T@Ref Bool)) ) (! (dummyFunction_8139 (|apply_TCFraming#triggerStateless| g0 g1))
 :qid |stdinbpl.939:15|
 :skolemid |122|
 :pattern ( (|apply_TCFraming'| Heap@@0 g0 g1))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.505:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (start T@Ref) (end T@Ref) ) (! (= (exists_path_ EG_1 start end)  (or (= start end) (exists ((w_2 T@Ref) ) (!  (and (edge EG_1 start w_2) (exists_path_ EG_1 w_2 end))
 :qid |stdinbpl.718:70|
 :skolemid |92|
 :pattern ( (edge EG_1 start w_2))
 :pattern ( (exists_path_ EG_1 w_2 end))
))))
 :qid |stdinbpl.716:15|
 :skolemid |93|
 :pattern ( (exists_path EG_1 start end))
 :pattern ( (edge EG_1 start end))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_58002) (refs (Array T@Ref Bool)) ) (! (dummyFunction_66230 (|$$#triggerStateless| refs))
 :qid |stdinbpl.776:15|
 :skolemid |102|
 :pattern ( (|$$'| Heap@@1 refs))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_38119| (|Set#Union_38119| a@@0 b@@0) b@@0) (|Set#Union_38119| a@@0 b@@0))
 :qid |stdinbpl.457:18|
 :skolemid |38|
 :pattern ( (|Set#Union_38119| (|Set#Union_38119| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_38122| (|Set#Intersection_38122| a@@1 b@@1) b@@1) (|Set#Intersection_38122| a@@1 b@@1))
 :qid |stdinbpl.461:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_38122| (|Set#Intersection_38122| a@@1 b@@1) b@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_58002) (Heap1Heap T@PolymorphicMapType_58002) (g0@@0 (Array T@Ref Bool)) (g1@@0 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g0@@0 (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap g0@@0 g1@@0) (|apply_TCFraming#condqp2| Heap1Heap g0@@0 g1@@0))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select g0@@0 (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap g0@@0 g1@@0) (|apply_TCFraming#condqp2| Heap1Heap g0@@0 g1@@0))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select g0@@0 (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap g0@@0 g1@@0) (|apply_TCFraming#condqp2| Heap1Heap g0@@0 g1@@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap2Heap) (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap g0@@0 g1@@0) (|apply_TCFraming#condqp2| Heap1Heap g0@@0 g1@@0)) next) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap1Heap) (|sk_apply_TCFraming#condqp2| (|apply_TCFraming#condqp2| Heap2Heap g0@@0 g1@@0) (|apply_TCFraming#condqp2| Heap1Heap g0@@0 g1@@0)) next)))) (= (|apply_TCFraming#condqp2| Heap2Heap g0@@0 g1@@0) (|apply_TCFraming#condqp2| Heap1Heap g0@@0 g1@@0)))
 :qid |stdinbpl.956:15|
 :skolemid |124|
 :pattern ( (|apply_TCFraming#condqp2| Heap2Heap g0@@0 g1@@0) (|apply_TCFraming#condqp2| Heap1Heap g0@@0 g1@@0) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_58002) (Heap1Heap@@0 T@PolymorphicMapType_58002) (g0@@1 (Array T@Ref Bool)) (g1@@1 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g1@@1 (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@0 g0@@1 g1@@1) (|apply_TCFraming#condqp3| Heap1Heap@@0 g0@@1 g1@@1))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select g1@@1 (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@0 g0@@1 g1@@1) (|apply_TCFraming#condqp3| Heap1Heap@@0 g0@@1 g1@@1))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select g1@@1 (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@0 g0@@1 g1@@1) (|apply_TCFraming#condqp3| Heap1Heap@@0 g0@@1 g1@@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap2Heap@@0) (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@0 g0@@1 g1@@1) (|apply_TCFraming#condqp3| Heap1Heap@@0 g0@@1 g1@@1)) next) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap1Heap@@0) (|sk_apply_TCFraming#condqp3| (|apply_TCFraming#condqp3| Heap2Heap@@0 g0@@1 g1@@1) (|apply_TCFraming#condqp3| Heap1Heap@@0 g0@@1 g1@@1)) next)))) (= (|apply_TCFraming#condqp3| Heap2Heap@@0 g0@@1 g1@@1) (|apply_TCFraming#condqp3| Heap1Heap@@0 g0@@1 g1@@1)))
 :qid |stdinbpl.966:15|
 :skolemid |125|
 :pattern ( (|apply_TCFraming#condqp3| Heap2Heap@@0 g0@@1 g1@@1) (|apply_TCFraming#condqp3| Heap1Heap@@0 g0@@1 g1@@1) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_58002) (Mask@@0 T@PolymorphicMapType_58023) (g0@@2 (Array T@Ref Bool)) (g1@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@2 Mask@@0) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6002 (|apply_TCFraming#condqp2| Heap@@2 g0@@2 g1@@2)) (FrameFragment_6002 (|apply_TCFraming#condqp3| Heap@@2 g0@@2 g1@@2))) g0@@2 g1@@2))) (=> (|Set#Equal_38122| (|Set#Intersection_38122| g1@@2 g0@@2) |Set#Empty_38125|) (forall ((u_2_1 T@Ref) (v_2_1 T@Ref) ) (!  (=> (and (select g0@@2 u_2_1) (and (select g0@@2 v_2_1) (not (exists_path ($$ Heap@@2 g0@@2) u_2_1 v_2_1)))) (not (exists_path ($$ Heap@@2 (|Set#Union_38119| g0@@2 g1@@2)) u_2_1 v_2_1)))
 :qid |stdinbpl.992:285|
 :skolemid |131|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| Heap@@2 g0@@2)) g0@@2) u_2_1 v_2_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| Heap@@2 (|Set#Union_38119| g0@@2 g1@@2))) (|Set#Union_38119| g0@@2 g1@@2)) u_2_1 v_2_1))
))))
 :qid |stdinbpl.990:15|
 :skolemid |132|
 :pattern ( (state Heap@@2 Mask@@0) (|apply_TCFraming'| Heap@@2 g0@@2 g1@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_58002) (Mask@@1 T@PolymorphicMapType_58023) (g0@@3 (Array T@Ref Bool)) (g1@@3 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@3 Mask@@1) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6002 (|apply_TCFraming#condqp2| Heap@@3 g0@@3 g1@@3)) (FrameFragment_6002 (|apply_TCFraming#condqp3| Heap@@3 g0@@3 g1@@3))) g0@@3 g1@@3))) (=> (|Set#Equal_38122| (|Set#Intersection_38122| g1@@3 g0@@3) |Set#Empty_38125|) (forall ((u_3_1 T@Ref) (v_3_1 T@Ref) ) (!  (=> (and (select g1@@3 u_3_1) (and (select g1@@3 v_3_1) (not (exists_path ($$ Heap@@3 g1@@3) u_3_1 v_3_1)))) (not (exists_path ($$ Heap@@3 (|Set#Union_38119| g1@@3 g0@@3)) u_3_1 v_3_1)))
 :qid |stdinbpl.999:285|
 :skolemid |133|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| Heap@@3 g1@@3)) g1@@3) u_3_1 v_3_1))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| Heap@@3 (|Set#Union_38119| g0@@3 g1@@3))) (|Set#Union_38119| g0@@3 g1@@3)) u_3_1 v_3_1))
))))
 :qid |stdinbpl.997:15|
 :skolemid |134|
 :pattern ( (state Heap@@3 Mask@@1) (|apply_TCFraming'| Heap@@3 g0@@3 g1@@3))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_38125| r) o) (= r o))
 :qid |stdinbpl.426:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_38125| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_38125| (|Set#Union_38119| a@@2 b@@2)) (|Set#Card_38125| (|Set#Intersection_38122| a@@2 b@@2))) (+ (|Set#Card_38125| a@@2) (|Set#Card_38125| b@@2)))
 :qid |stdinbpl.465:18|
 :skolemid |42|
 :pattern ( (|Set#Card_38125| (|Set#Union_38119| a@@2 b@@2)))
 :pattern ( (|Set#Card_38125| (|Set#Intersection_38122| a@@2 b@@2)))
)))
(assert (forall ((EG_1@@0 (Array T@EdgeDomainType Bool)) (U_1 (Array T@Ref Bool)) (M (Array T@Ref Bool)) ) (!  (=> (apply_noExit EG_1@@0 U_1 M) (=> (forall ((u_3 T@Ref) (v_2 T@Ref) ) (!  (=> (and (select M u_3) (and (select U_1 v_2) (not (select M v_2)))) (not (edge EG_1@@0 u_3 v_2)))
 :qid |stdinbpl.688:50|
 :skolemid |86|
 :pattern ( (edge EG_1@@0 u_3 v_2))
 :pattern ( (select M u_3) (select M v_2))
)) (forall ((u_1 T@Ref) (v_1_1 T@Ref) ) (!  (=> (and (select M u_1) (and (select U_1 v_1_1) (not (select M v_1_1)))) (not (exists_path EG_1@@0 u_1 v_1_1)))
 :qid |stdinbpl.691:17|
 :skolemid |87|
 :pattern ( (exists_path EG_1@@0 u_1 v_1_1))
 :pattern ( (select M u_1) (select M v_1_1))
))))
 :qid |stdinbpl.686:15|
 :skolemid |88|
 :pattern ( (apply_noExit EG_1@@0 U_1 M))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_58002) (refs@@0 (Array T@Ref Bool)) ) (!  (and (= ($$ Heap@@4 refs@@0) (|$$'| Heap@@4 refs@@0)) (dummyFunction_66230 (|$$#triggerStateless| refs@@0)))
 :qid |stdinbpl.772:15|
 :skolemid |101|
 :pattern ( ($$ Heap@@4 refs@@0))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.508:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_58002) (ExhaleHeap T@PolymorphicMapType_58002) (Mask@@2 T@PolymorphicMapType_58023) (pm_f_23 T@Field_37930_191398) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_37930_191462 Mask@@2 null pm_f_23) (IsPredicateField_37930_191489 pm_f_23)) (= (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@5) null (PredicateMaskField_37930 pm_f_23)) (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| ExhaleHeap) null (PredicateMaskField_37930 pm_f_23)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@2) (IsPredicateField_37930_191489 pm_f_23) (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| ExhaleHeap) null (PredicateMaskField_37930 pm_f_23)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_58002) (ExhaleHeap@@0 T@PolymorphicMapType_58002) (Mask@@3 T@PolymorphicMapType_58023) (pm_f_23@@0 T@Field_37930_191398) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_37930_191462 Mask@@3 null pm_f_23@@0) (IsWandField_37930_193038 pm_f_23@@0)) (= (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@6) null (WandMaskField_37930 pm_f_23@@0)) (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| ExhaleHeap@@0) null (WandMaskField_37930 pm_f_23@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@3) (IsWandField_37930_193038 pm_f_23@@0) (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| ExhaleHeap@@0) null (WandMaskField_37930 pm_f_23@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_58002) (Mask@@4 T@PolymorphicMapType_58023) (g0@@4 (Array T@Ref Bool)) (g1@@4 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@7 Mask@@4) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6002 (|apply_TCFraming#condqp2| Heap@@7 g0@@4 g1@@4)) (FrameFragment_6002 (|apply_TCFraming#condqp3| Heap@@7 g0@@4 g1@@4))) g0@@4 g1@@4))) (=> (|Set#Equal_38122| (|Set#Intersection_38122| g1@@4 g0@@4) |Set#Empty_38125|) (|Set#Equal_38122| (|Set#Union_38119| g0@@4 g1@@4) (|Set#Union_38119| g1@@4 g0@@4))))
 :qid |stdinbpl.972:15|
 :skolemid |126|
 :pattern ( (state Heap@@7 Mask@@4) (|apply_TCFraming'| Heap@@7 g0@@4 g1@@4))
)))
(assert (forall ((EG_1@@1 (Array T@EdgeDomainType Bool)) ) (! (= (unshared_graph EG_1@@1) (forall ((v1 T@Ref) (v2 T@Ref) (v_2@@0 T@Ref) ) (!  (=> (and (edge EG_1@@1 v1 v_2@@0) (edge EG_1@@1 v2 v_2@@0)) (= v1 v2))
 :qid |stdinbpl.742:43|
 :skolemid |97|
 :pattern ( (edge EG_1@@1 v1 v_2@@0) (edge EG_1@@1 v2 v_2@@0))
)))
 :qid |stdinbpl.740:15|
 :skolemid |98|
 :pattern ( (unshared_graph EG_1@@1))
)))
(assert (forall ((EG_1@@2 (Array T@EdgeDomainType Bool)) ) (! (= (func_graph EG_1@@2) (forall ((v1@@0 T@Ref) (v2@@0 T@Ref) (v_2@@1 T@Ref) ) (!  (=> (and (edge EG_1@@2 v_2@@1 v1@@0) (edge EG_1@@2 v_2@@1 v2@@0)) (= v1@@0 v2@@0))
 :qid |stdinbpl.751:39|
 :skolemid |99|
 :pattern ( (edge EG_1@@2 v_2@@1 v1@@0) (edge EG_1@@2 v_2@@1 v2@@0))
)))
 :qid |stdinbpl.749:15|
 :skolemid |100|
 :pattern ( (func_graph EG_1@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_58002) (Mask@@5 T@PolymorphicMapType_58023) (refs@@1 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@8 Mask@@5) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (FrameFragment_6002 (|$$#condqp1| Heap@@8 refs@@1)) refs@@1))) (forall ((p_1 T@Ref) (s_2 T@Ref) ) (! (=  (and (select refs@@1 p_1) (and (select refs@@1 s_2) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@8) p_1 next) s_2))) (select (|$$'| Heap@@8 refs@@1) (create_edge p_1 s_2)))
 :qid |stdinbpl.801:122|
 :skolemid |105|
 :pattern ( (create_edge p_1 s_2))
)))
 :qid |stdinbpl.799:15|
 :skolemid |106|
 :pattern ( (state Heap@@8 Mask@@5) (|$$'| Heap@@8 refs@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_58002) (ExhaleHeap@@1 T@PolymorphicMapType_58002) (Mask@@6 T@PolymorphicMapType_58023) (pm_f_23@@1 T@Field_37930_191398) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (=> (and (HasDirectPerm_37930_191462 Mask@@6 null pm_f_23@@1) (IsPredicateField_37930_191489 pm_f_23@@1)) (and (and (and (forall ((o2_23 T@Ref) (f_32 T@Field_58062_53) ) (!  (=> (select (|PolymorphicMapType_58551_58062_53#PolymorphicMapType_58551| (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@9) null (PredicateMaskField_37930 pm_f_23@@1))) o2_23 f_32) (= (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@9) o2_23 f_32) (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| ExhaleHeap@@1) o2_23 f_32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| ExhaleHeap@@1) o2_23 f_32))
)) (forall ((o2_23@@0 T@Ref) (f_32@@0 T@Field_58075_58076) ) (!  (=> (select (|PolymorphicMapType_58551_58062_58076#PolymorphicMapType_58551| (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@9) null (PredicateMaskField_37930 pm_f_23@@1))) o2_23@@0 f_32@@0) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@9) o2_23@@0 f_32@@0) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@@1) o2_23@@0 f_32@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@@1) o2_23@@0 f_32@@0))
))) (forall ((o2_23@@1 T@Ref) (f_32@@1 T@Field_37930_191398) ) (!  (=> (select (|PolymorphicMapType_58551_58062_191398#PolymorphicMapType_58551| (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@9) null (PredicateMaskField_37930 pm_f_23@@1))) o2_23@@1 f_32@@1) (= (select (|PolymorphicMapType_58002_58062_191398#PolymorphicMapType_58002| Heap@@9) o2_23@@1 f_32@@1) (select (|PolymorphicMapType_58002_58062_191398#PolymorphicMapType_58002| ExhaleHeap@@1) o2_23@@1 f_32@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_58002_58062_191398#PolymorphicMapType_58002| ExhaleHeap@@1) o2_23@@1 f_32@@1))
))) (forall ((o2_23@@2 T@Ref) (f_32@@2 T@Field_37930_191531) ) (!  (=> (select (|PolymorphicMapType_58551_58062_192511#PolymorphicMapType_58551| (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@9) null (PredicateMaskField_37930 pm_f_23@@1))) o2_23@@2 f_32@@2) (= (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@9) o2_23@@2 f_32@@2) (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| ExhaleHeap@@1) o2_23@@2 f_32@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| ExhaleHeap@@1) o2_23@@2 f_32@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (IsPredicateField_37930_191489 pm_f_23@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_58002) (ExhaleHeap@@2 T@PolymorphicMapType_58002) (Mask@@7 T@PolymorphicMapType_58023) (pm_f_23@@2 T@Field_37930_191398) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@7) (=> (and (HasDirectPerm_37930_191462 Mask@@7 null pm_f_23@@2) (IsWandField_37930_193038 pm_f_23@@2)) (and (and (and (forall ((o2_23@@3 T@Ref) (f_32@@3 T@Field_58062_53) ) (!  (=> (select (|PolymorphicMapType_58551_58062_53#PolymorphicMapType_58551| (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@10) null (WandMaskField_37930 pm_f_23@@2))) o2_23@@3 f_32@@3) (= (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@10) o2_23@@3 f_32@@3) (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| ExhaleHeap@@2) o2_23@@3 f_32@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| ExhaleHeap@@2) o2_23@@3 f_32@@3))
)) (forall ((o2_23@@4 T@Ref) (f_32@@4 T@Field_58075_58076) ) (!  (=> (select (|PolymorphicMapType_58551_58062_58076#PolymorphicMapType_58551| (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@10) null (WandMaskField_37930 pm_f_23@@2))) o2_23@@4 f_32@@4) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@10) o2_23@@4 f_32@@4) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@@2) o2_23@@4 f_32@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@@2) o2_23@@4 f_32@@4))
))) (forall ((o2_23@@5 T@Ref) (f_32@@5 T@Field_37930_191398) ) (!  (=> (select (|PolymorphicMapType_58551_58062_191398#PolymorphicMapType_58551| (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@10) null (WandMaskField_37930 pm_f_23@@2))) o2_23@@5 f_32@@5) (= (select (|PolymorphicMapType_58002_58062_191398#PolymorphicMapType_58002| Heap@@10) o2_23@@5 f_32@@5) (select (|PolymorphicMapType_58002_58062_191398#PolymorphicMapType_58002| ExhaleHeap@@2) o2_23@@5 f_32@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_58002_58062_191398#PolymorphicMapType_58002| ExhaleHeap@@2) o2_23@@5 f_32@@5))
))) (forall ((o2_23@@6 T@Ref) (f_32@@6 T@Field_37930_191531) ) (!  (=> (select (|PolymorphicMapType_58551_58062_192511#PolymorphicMapType_58551| (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@10) null (WandMaskField_37930 pm_f_23@@2))) o2_23@@6 f_32@@6) (= (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@10) o2_23@@6 f_32@@6) (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| ExhaleHeap@@2) o2_23@@6 f_32@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| ExhaleHeap@@2) o2_23@@6 f_32@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@7) (IsWandField_37930_193038 pm_f_23@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1@@3 (Array T@EdgeDomainType Bool)) (u_3@@0 T@Ref) (v_2@@2 T@Ref) (w_2@@0 T@Ref) ) (!  (=> (and (exists_path_ EG_1@@3 u_3@@0 w_2@@0) (exists_path_ EG_1@@3 w_2@@0 v_2@@2)) (exists_path_ EG_1@@3 u_3@@0 v_2@@2))
 :qid |stdinbpl.725:15|
 :skolemid |94|
 :pattern ( (exists_path EG_1@@3 u_3@@0 w_2@@0) (exists_path EG_1@@3 w_2@@0 v_2@@2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_58002) (ExhaleHeap@@3 T@PolymorphicMapType_58002) (Mask@@8 T@PolymorphicMapType_58023) (o_28 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@8) (=> (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@11) o_28 $allocated) (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| ExhaleHeap@@3) o_28 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@3 Mask@@8) (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| ExhaleHeap@@3) o_28 $allocated))
)))
(assert (forall ((p T@Field_37930_191398) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_58062_58062 p v_1 p w))
 :qid |stdinbpl.403:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_58062_58062 p v_1 p w))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_58002) (Heap1Heap@@1 T@PolymorphicMapType_58002) (refs@@2 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select refs@@2 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap@@1 refs@@2) (|$$#condqp1| Heap1Heap@@1 refs@@2))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select refs@@2 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap@@1 refs@@2) (|$$#condqp1| Heap1Heap@@1 refs@@2))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select refs@@2 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap@@1 refs@@2) (|$$#condqp1| Heap1Heap@@1 refs@@2))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap2Heap@@1) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap@@1 refs@@2) (|$$#condqp1| Heap1Heap@@1 refs@@2)) next) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap1Heap@@1) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap@@1 refs@@2) (|$$#condqp1| Heap1Heap@@1 refs@@2)) next)))) (= (|$$#condqp1| Heap2Heap@@1 refs@@2) (|$$#condqp1| Heap1Heap@@1 refs@@2)))
 :qid |stdinbpl.793:15|
 :skolemid |104|
 :pattern ( (|$$#condqp1| Heap2Heap@@1 refs@@2) (|$$#condqp1| Heap1Heap@@1 refs@@2) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert  (not (IsPredicateField_37930_37931 next)))
(assert  (not (IsWandField_37930_37931 next)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_58002) (ExhaleHeap@@4 T@PolymorphicMapType_58002) (Mask@@9 T@PolymorphicMapType_58023) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@4 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_58023) (o_2@@3 T@Ref) (f_4@@3 T@Field_37930_191531) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@@10) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_37930_195972 f_4@@3))) (not (IsWandField_37930_195988 f_4@@3))) (<= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@@10) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@@10) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_58023) (o_2@@4 T@Ref) (f_4@@4 T@Field_37930_191398) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@@11) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_37930_191489 f_4@@4))) (not (IsWandField_37930_193038 f_4@@4))) (<= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@@11) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@@11) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_58023) (o_2@@5 T@Ref) (f_4@@5 T@Field_58062_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@@12) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_37930_53 f_4@@5))) (not (IsWandField_37930_53 f_4@@5))) (<= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@@12) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@@12) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_58023) (o_2@@6 T@Ref) (f_4@@6 T@Field_58075_58076) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@@13) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_37930_37931 f_4@@6))) (not (IsWandField_37930_37931 f_4@@6))) (<= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@@13) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@@13) o_2@@6 f_4@@6))
)))
(assert (forall ((a@@4 (Array T@EdgeDomainType Bool)) (b@@3 (Array T@EdgeDomainType Bool)) ) (! (= (|Set#Equal_37937| a@@4 b@@3) (forall ((o@@0 T@EdgeDomainType) ) (! (= (select a@@4 o@@0) (select b@@3 o@@0))
 :qid |stdinbpl.490:31|
 :skolemid |48|
 :pattern ( (select a@@4 o@@0))
 :pattern ( (select b@@3 o@@0))
)))
 :qid |stdinbpl.489:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_37937| a@@4 b@@3))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) ) (! (= (|Set#Equal_38122| a@@5 b@@4) (forall ((o@@1 T@Ref) ) (! (= (select a@@5 o@@1) (select b@@4 o@@1))
 :qid |stdinbpl.490:31|
 :skolemid |48|
 :pattern ( (select a@@5 o@@1))
 :pattern ( (select b@@4 o@@1))
)))
 :qid |stdinbpl.489:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_38122| a@@5 b@@4))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_58023) (o_2@@7 T@Ref) (f_4@@7 T@Field_37930_191531) ) (! (= (HasDirectPerm_37930_196343 Mask@@14 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@@14) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_37930_196343 Mask@@14 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_58023) (o_2@@8 T@Ref) (f_4@@8 T@Field_37930_191398) ) (! (= (HasDirectPerm_37930_191462 Mask@@15 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@@15) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_37930_191462 Mask@@15 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_58023) (o_2@@9 T@Ref) (f_4@@9 T@Field_58062_53) ) (! (= (HasDirectPerm_37930_53 Mask@@16 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@@16) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_37930_53 Mask@@16 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_58023) (o_2@@10 T@Ref) (f_4@@10 T@Field_58075_58076) ) (! (= (HasDirectPerm_37930_37931 Mask@@17 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@@17) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_37930_37931 Mask@@17 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.391:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_58002) (ExhaleHeap@@5 T@PolymorphicMapType_58002) (Mask@@18 T@PolymorphicMapType_58023) (o_28@@0 T@Ref) (f_32@@7 T@Field_37930_191531) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_37930_196343 Mask@@18 o_28@@0 f_32@@7) (= (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@13) o_28@@0 f_32@@7) (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| ExhaleHeap@@5) o_28@@0 f_32@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| ExhaleHeap@@5) o_28@@0 f_32@@7))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_58002) (ExhaleHeap@@6 T@PolymorphicMapType_58002) (Mask@@19 T@PolymorphicMapType_58023) (o_28@@1 T@Ref) (f_32@@8 T@Field_37930_191398) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_37930_191462 Mask@@19 o_28@@1 f_32@@8) (= (select (|PolymorphicMapType_58002_58062_191398#PolymorphicMapType_58002| Heap@@14) o_28@@1 f_32@@8) (select (|PolymorphicMapType_58002_58062_191398#PolymorphicMapType_58002| ExhaleHeap@@6) o_28@@1 f_32@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_58002_58062_191398#PolymorphicMapType_58002| ExhaleHeap@@6) o_28@@1 f_32@@8))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_58002) (ExhaleHeap@@7 T@PolymorphicMapType_58002) (Mask@@20 T@PolymorphicMapType_58023) (o_28@@2 T@Ref) (f_32@@9 T@Field_58062_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_37930_53 Mask@@20 o_28@@2 f_32@@9) (= (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@15) o_28@@2 f_32@@9) (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| ExhaleHeap@@7) o_28@@2 f_32@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| ExhaleHeap@@7) o_28@@2 f_32@@9))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_58002) (ExhaleHeap@@8 T@PolymorphicMapType_58002) (Mask@@21 T@PolymorphicMapType_58023) (o_28@@3 T@Ref) (f_32@@10 T@Field_58075_58076) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_37930_37931 Mask@@21 o_28@@3 f_32@@10) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@16) o_28@@3 f_32@@10) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@@8) o_28@@3 f_32@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@@8) o_28@@3 f_32@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_37930_191531) ) (! (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_37930_191398) ) (! (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_58062_53) ) (! (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_58075_58076) ) (! (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_58002) (Mask@@22 T@PolymorphicMapType_58023) (g0@@5 (Array T@Ref Bool)) (g1@@5 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@17 Mask@@22) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6002 (|apply_TCFraming#condqp2| Heap@@17 g0@@5 g1@@5)) (FrameFragment_6002 (|apply_TCFraming#condqp3| Heap@@17 g0@@5 g1@@5))) g0@@5 g1@@5))) (=> (|Set#Equal_38122| (|Set#Intersection_38122| g1@@5 g0@@5) |Set#Empty_38125|) (forall ((u_3@@1 T@Ref) (v_2@@3 T@Ref) ) (!  (=> (and (select g0@@5 u_3@@1) (and (select g0@@5 v_2@@3) (exists_path ($$ Heap@@17 g0@@5) u_3@@1 v_2@@3))) (exists_path ($$ Heap@@17 (|Set#Union_38119| g0@@5 g1@@5)) u_3@@1 v_2@@3))
 :qid |stdinbpl.978:285|
 :skolemid |127|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| Heap@@17 g0@@5)) g0@@5) u_3@@1 v_2@@3))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| Heap@@17 (|Set#Union_38119| g0@@5 g1@@5))) (|Set#Union_38119| g0@@5 g1@@5)) u_3@@1 v_2@@3))
))))
 :qid |stdinbpl.976:15|
 :skolemid |128|
 :pattern ( (state Heap@@17 Mask@@22) (|apply_TCFraming'| Heap@@17 g0@@5 g1@@5))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_58002) (Mask@@23 T@PolymorphicMapType_58023) (g0@@6 (Array T@Ref Bool)) (g1@@6 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@18 Mask@@23) (or (< AssumeFunctionsAbove 0) (|apply_TCFraming#trigger| (CombineFrames (FrameFragment_6002 (|apply_TCFraming#condqp2| Heap@@18 g0@@6 g1@@6)) (FrameFragment_6002 (|apply_TCFraming#condqp3| Heap@@18 g0@@6 g1@@6))) g0@@6 g1@@6))) (=> (|Set#Equal_38122| (|Set#Intersection_38122| g1@@6 g0@@6) |Set#Empty_38125|) (forall ((u_1@@0 T@Ref) (v_1_1@@0 T@Ref) ) (!  (=> (and (select g1@@6 u_1@@0) (and (select g1@@6 v_1_1@@0) (exists_path ($$ Heap@@18 g1@@6) u_1@@0 v_1_1@@0))) (exists_path ($$ Heap@@18 (|Set#Union_38119| g1@@6 g0@@6)) u_1@@0 v_1_1@@0))
 :qid |stdinbpl.985:285|
 :skolemid |129|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| Heap@@18 g1@@6)) g1@@6) u_1@@0 v_1_1@@0))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| Heap@@18 (|Set#Union_38119| g1@@6 g0@@6))) (|Set#Union_38119| g1@@6 g0@@6)) u_1@@0 v_1_1@@0))
))))
 :qid |stdinbpl.983:15|
 :skolemid |130|
 :pattern ( (state Heap@@18 Mask@@23) (|apply_TCFraming'| Heap@@18 g0@@6 g1@@6))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_58023) (SummandMask1 T@PolymorphicMapType_58023) (SummandMask2 T@PolymorphicMapType_58023) (o_2@@15 T@Ref) (f_4@@15 T@Field_37930_191531) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_58023) (SummandMask1@@0 T@PolymorphicMapType_58023) (SummandMask2@@0 T@PolymorphicMapType_58023) (o_2@@16 T@Ref) (f_4@@16 T@Field_37930_191398) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_58023) (SummandMask1@@1 T@PolymorphicMapType_58023) (SummandMask2@@1 T@PolymorphicMapType_58023) (o_2@@17 T@Ref) (f_4@@17 T@Field_58062_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_58023) (SummandMask1@@2 T@PolymorphicMapType_58023) (SummandMask2@@2 T@PolymorphicMapType_58023) (o_2@@18 T@Ref) (f_4@@18 T@Field_58075_58076) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (o@@2 T@Ref) ) (! (= (select (|Set#Intersection_38122| a@@6 b@@5) o@@2)  (and (select a@@6 o@@2) (select b@@5 o@@2)))
 :qid |stdinbpl.454:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_38122| a@@6 b@@5) o@@2))
 :pattern ( (|Set#Intersection_38122| a@@6 b@@5) (select a@@6 o@@2))
 :pattern ( (|Set#Intersection_38122| a@@6 b@@5) (select b@@5 o@@2))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (o@@3 T@Ref) ) (! (= (select (|Set#Difference_38125| a@@7 b@@6) o@@3)  (and (select a@@7 o@@3) (not (select b@@6 o@@3))))
 :qid |stdinbpl.469:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_38125| a@@7 b@@6) o@@3))
 :pattern ( (|Set#Difference_38125| a@@7 b@@6) (select a@@7 o@@3))
)))
(assert (forall ((a@@8 (Array T@EdgeDomainType Bool)) (b@@7 (Array T@EdgeDomainType Bool)) ) (!  (=> (|Set#Equal_37937| a@@8 b@@7) (= a@@8 b@@7))
 :qid |stdinbpl.491:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_37937| a@@8 b@@7))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_38122| a@@9 b@@8) (= a@@9 b@@8))
 :qid |stdinbpl.491:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_38122| a@@9 b@@8))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@10 y) (select (|Set#UnionOne_38125| a@@10 x) y))
 :qid |stdinbpl.434:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_38125| a@@10 x) (select a@@10 y))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@11 y@@0) (select (|Set#Union_38119| a@@11 b@@9) y@@0))
 :qid |stdinbpl.444:18|
 :skolemid |35|
 :pattern ( (|Set#Union_38119| a@@11 b@@9) (select a@@11 y@@0))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@10 y@@1) (select (|Set#Union_38119| a@@12 b@@10) y@@1))
 :qid |stdinbpl.446:18|
 :skolemid |36|
 :pattern ( (|Set#Union_38119| a@@12 b@@10) (select b@@10 y@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@4 T@Ref) ) (! (= (select (|Set#UnionOne_38125| a@@13 x@@0) o@@4)  (or (= o@@4 x@@0) (select a@@13 o@@4)))
 :qid |stdinbpl.430:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_38125| a@@13 x@@0) o@@4))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@11 y@@2) (not (select (|Set#Difference_38125| a@@14 b@@11) y@@2)))
 :qid |stdinbpl.471:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_38125| a@@14 b@@11) (select b@@11 y@@2))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_38125| (|Set#Difference_38125| a@@15 b@@12)) (|Set#Card_38125| (|Set#Difference_38125| b@@12 a@@15))) (|Set#Card_38125| (|Set#Intersection_38122| a@@15 b@@12))) (|Set#Card_38125| (|Set#Union_38119| a@@15 b@@12))) (= (|Set#Card_38125| (|Set#Difference_38125| a@@15 b@@12)) (- (|Set#Card_38125| a@@15) (|Set#Card_38125| (|Set#Intersection_38122| a@@15 b@@12)))))
 :qid |stdinbpl.473:18|
 :skolemid |45|
 :pattern ( (|Set#Card_38125| (|Set#Difference_38125| a@@15 b@@12)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_38125| s))
 :qid |stdinbpl.416:18|
 :skolemid |22|
 :pattern ( (|Set#Card_38125| s))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_58002) (Mask@@24 T@PolymorphicMapType_58023) (refs@@3 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@19 Mask@@24) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (FrameFragment_6002 (|$$#condqp1| Heap@@19 refs@@3)) refs@@3))) (forall ((p_1_1 T@Ref) (s_1 T@Ref) ) (!  (=> (and (select refs@@3 p_1_1) (exists_path (|$$'| Heap@@19 refs@@3) p_1_1 s_1)) (select refs@@3 s_1))
 :qid |stdinbpl.808:122|
 :skolemid |107|
 :pattern ( (select refs@@3 p_1_1) (select refs@@3 s_1) (exists_path (|$$'| Heap@@19 refs@@3) p_1_1 s_1))
)))
 :qid |stdinbpl.806:15|
 :skolemid |108|
 :pattern ( (state Heap@@19 Mask@@24) (|$$'| Heap@@19 refs@@3))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_58002) (Mask@@25 T@PolymorphicMapType_58023) (refs@@4 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@20 Mask@@25) (or (< AssumeFunctionsAbove 1) (|$$#trigger| (FrameFragment_6002 (|$$#condqp1| Heap@@20 refs@@4)) refs@@4))) (forall ((p_2_1 T@Ref) (s_2_1 T@Ref) ) (!  (=> (and (select refs@@4 s_2_1) (exists_path (|$$'| Heap@@20 refs@@4) p_2_1 s_2_1)) (select refs@@4 p_2_1))
 :qid |stdinbpl.815:122|
 :skolemid |109|
 :pattern ( (select refs@@4 p_2_1) (select refs@@4 s_2_1) (exists_path (|$$'| Heap@@20 refs@@4) p_2_1 s_2_1))
)))
 :qid |stdinbpl.813:15|
 :skolemid |110|
 :pattern ( (state Heap@@20 Mask@@25) (|$$'| Heap@@20 refs@@4))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_38125| a@@16 x@@1) x@@1)
 :qid |stdinbpl.432:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_38125| a@@16 x@@1))
)))
(assert (forall ((EG_1@@4 (Array T@EdgeDomainType Bool)) ) (! (= (acyclic_graph EG_1@@4) (forall ((v1@@1 T@Ref) (v2@@1 T@Ref) ) (!  (or (not (edge EG_1@@4 v1@@1 v2@@1)) (not (exists_path EG_1@@4 v2@@1 v1@@1)))
 :qid |stdinbpl.733:42|
 :skolemid |95|
 :pattern ( (edge EG_1@@4 v1@@1 v2@@1))
 :pattern ( (exists_path EG_1@@4 v2@@1 v1@@1))
)))
 :qid |stdinbpl.731:15|
 :skolemid |96|
 :pattern ( (acyclic_graph EG_1@@4))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@17 x@@2) (= (|Set#Card_38125| (|Set#UnionOne_38125| a@@17 x@@2)) (|Set#Card_38125| a@@17)))
 :qid |stdinbpl.436:18|
 :skolemid |32|
 :pattern ( (|Set#Card_38125| (|Set#UnionOne_38125| a@@17 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_38125| (|Set#Singleton_38125| r@@0)) 1)
 :qid |stdinbpl.427:18|
 :skolemid |28|
 :pattern ( (|Set#Card_38125| (|Set#Singleton_38125| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_38125| r@@1) r@@1)
 :qid |stdinbpl.425:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_38125| r@@1))
)))
(assert (forall ((EG_1@@5 (Array T@EdgeDomainType Bool)) (p_1@@0 T@Ref) (s_2@@0 T@Ref) ) (! (= (edge_ EG_1@@5 p_1@@0 s_2@@0) (select EG_1@@5 (create_edge p_1@@0 s_2@@0)))
 :qid |stdinbpl.680:15|
 :skolemid |85|
 :pattern ( (select EG_1@@5 (create_edge p_1@@0 s_2@@0)))
 :pattern ( (edge EG_1@@5 p_1@@0 s_2@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) ) (! (= (|Set#Union_38119| a@@18 (|Set#Union_38119| a@@18 b@@13)) (|Set#Union_38119| a@@18 b@@13))
 :qid |stdinbpl.459:18|
 :skolemid |39|
 :pattern ( (|Set#Union_38119| a@@18 (|Set#Union_38119| a@@18 b@@13)))
)))
(assert (forall ((a@@19 (Array T@Ref Bool)) (b@@14 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_38122| a@@19 (|Set#Intersection_38122| a@@19 b@@14)) (|Set#Intersection_38122| a@@19 b@@14))
 :qid |stdinbpl.463:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_38122| a@@19 (|Set#Intersection_38122| a@@19 b@@14)))
)))
(assert (forall ((o@@5 T@Ref) ) (!  (not (select |Set#Empty_38125| o@@5))
 :qid |stdinbpl.419:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_38125| o@@5))
)))
(assert (forall ((p_1@@1 T@Ref) (s_2@@1 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@1 s_2@@1)) p_1@@1) (= (edge_succ (create_edge p_1@@1 s_2@@1)) s_2@@1))
 :qid |stdinbpl.619:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@1 s_2@@1))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_58002) (o_47 T@Ref) (f_51 T@Field_37930_191398) (v T@FrameType) ) (! (succHeap Heap@@21 (PolymorphicMapType_58002 (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@21) (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@21) (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@21) (store (|PolymorphicMapType_58002_58062_191398#PolymorphicMapType_58002| Heap@@21) o_47 f_51 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_58002 (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@21) (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@21) (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@21) (store (|PolymorphicMapType_58002_58062_191398#PolymorphicMapType_58002| Heap@@21) o_47 f_51 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_58002) (o_47@@0 T@Ref) (f_51@@0 T@Field_37930_191531) (v@@0 T@PolymorphicMapType_58551) ) (! (succHeap Heap@@22 (PolymorphicMapType_58002 (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@22) (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@22) (store (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@22) o_47@@0 f_51@@0 v@@0) (|PolymorphicMapType_58002_58062_191398#PolymorphicMapType_58002| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_58002 (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@22) (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@22) (store (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@22) o_47@@0 f_51@@0 v@@0) (|PolymorphicMapType_58002_58062_191398#PolymorphicMapType_58002| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_58002) (o_47@@1 T@Ref) (f_51@@1 T@Field_58075_58076) (v@@1 T@Ref) ) (! (succHeap Heap@@23 (PolymorphicMapType_58002 (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@23) (store (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@23) o_47@@1 f_51@@1 v@@1) (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@23) (|PolymorphicMapType_58002_58062_191398#PolymorphicMapType_58002| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_58002 (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@23) (store (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@23) o_47@@1 f_51@@1 v@@1) (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@23) (|PolymorphicMapType_58002_58062_191398#PolymorphicMapType_58002| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_58002) (o_47@@2 T@Ref) (f_51@@2 T@Field_58062_53) (v@@2 Bool) ) (! (succHeap Heap@@24 (PolymorphicMapType_58002 (store (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@24) o_47@@2 f_51@@2 v@@2) (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@24) (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@24) (|PolymorphicMapType_58002_58062_191398#PolymorphicMapType_58002| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_58002 (store (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@24) o_47@@2 f_51@@2 v@@2) (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@24) (|PolymorphicMapType_58002_37930_191575#PolymorphicMapType_58002| Heap@@24) (|PolymorphicMapType_58002_58062_191398#PolymorphicMapType_58002| Heap@@24)))
)))
(assert (forall ((a@@20 Int) (b@@15 Int) ) (! (= (<= a@@20 b@@15) (= (|Math#min| a@@20 b@@15) a@@20))
 :qid |stdinbpl.503:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@20 b@@15))
)))
(assert (forall ((a@@21 Int) (b@@16 Int) ) (! (= (<= b@@16 a@@21) (= (|Math#min| a@@21 b@@16) b@@16))
 :qid |stdinbpl.504:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@21 b@@16))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_38125| s@@0) 0) (= s@@0 |Set#Empty_38125|)) (=> (not (= (|Set#Card_38125| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.422:33|
 :skolemid |24|
))))
 :qid |stdinbpl.420:18|
 :skolemid |25|
 :pattern ( (|Set#Card_38125| s@@0))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_58002) (Mask@@26 T@PolymorphicMapType_58023) (refs@@5 (Array T@Ref Bool)) ) (!  (=> (state Heap@@25 Mask@@26) (= (|$$'| Heap@@25 refs@@5) (|$$#frame| (FrameFragment_6002 (|$$#condqp1| Heap@@25 refs@@5)) refs@@5)))
 :qid |stdinbpl.783:15|
 :skolemid |103|
 :pattern ( (state Heap@@25 Mask@@26) (|$$'| Heap@@25 refs@@5))
)))
(assert (forall ((a@@22 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@22 x@@4)) (= (|Set#Card_38125| (|Set#UnionOne_38125| a@@22 x@@4)) (+ (|Set#Card_38125| a@@22) 1)))
 :qid |stdinbpl.438:18|
 :skolemid |33|
 :pattern ( (|Set#Card_38125| (|Set#UnionOne_38125| a@@22 x@@4)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_58002) (Mask@@27 T@PolymorphicMapType_58023) (g0@@7 (Array T@Ref Bool)) (g1@@7 (Array T@Ref Bool)) ) (!  (=> (state Heap@@26 Mask@@27) (= (|apply_TCFraming'| Heap@@26 g0@@7 g1@@7) (|apply_TCFraming#frame| (CombineFrames (FrameFragment_6002 (|apply_TCFraming#condqp2| Heap@@26 g0@@7 g1@@7)) (FrameFragment_6002 (|apply_TCFraming#condqp3| Heap@@26 g0@@7 g1@@7))) g0@@7 g1@@7)))
 :qid |stdinbpl.946:15|
 :skolemid |123|
 :pattern ( (state Heap@@26 Mask@@27) (|apply_TCFraming'| Heap@@26 g0@@7 g1@@7))
)))
(assert (forall ((o_47@@3 T@Ref) (f_43 T@Field_58075_58076) (Heap@@27 T@PolymorphicMapType_58002) ) (!  (=> (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@27) o_47@@3 $allocated) (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@27) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@27) o_47@@3 f_43) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@27) o_47@@3 f_43))
)))
(assert (forall ((p@@1 T@Field_37930_191398) (v_1@@0 T@FrameType) (q T@Field_37930_191398) (w@@0 T@FrameType) (r@@2 T@Field_37930_191398) (u T@FrameType) ) (!  (=> (and (InsidePredicate_58062_58062 p@@1 v_1@@0 q w@@0) (InsidePredicate_58062_58062 q w@@0 r@@2 u)) (InsidePredicate_58062_58062 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.398:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_58062_58062 p@@1 v_1@@0 q w@@0) (InsidePredicate_58062_58062 q w@@0 r@@2 u))
)))
(assert (forall ((a@@23 Int) ) (!  (=> (< a@@23 0) (= (|Math#clip| a@@23) 0))
 :qid |stdinbpl.509:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@23))
)))
(assert (forall ((EG_1@@6 (Array T@EdgeDomainType Bool)) (pred_2 T@Ref) (succ T@Ref) ) (! (= (select (succs EG_1@@6 pred_2) succ) (edge_ EG_1@@6 pred_2 succ))
 :qid |stdinbpl.668:15|
 :skolemid |83|
 :pattern ( (select (succs EG_1@@6 pred_2) succ))
)))
(assert (forall ((EG_1@@7 (Array T@EdgeDomainType Bool)) (x@@5 T@Ref) (v_2@@4 T@Ref) ) (! (= (select (inst_uReach EG_1@@7 x@@5) v_2@@4) (exists_path EG_1@@7 x@@5 v_2@@4))
 :qid |stdinbpl.698:15|
 :skolemid |89|
 :pattern ( (select (inst_uReach EG_1@@7 x@@5) v_2@@4))
 :pattern ( (exists_path EG_1@@7 x@@5 v_2@@4))
)))
(assert (forall ((EG_1@@8 (Array T@EdgeDomainType Bool)) (u_3@@2 T@Ref) (y@@3 T@Ref) ) (! (= (select (inst_uReach_rev EG_1@@8 y@@3) u_3@@2) (exists_path EG_1@@8 u_3@@2 y@@3))
 :qid |stdinbpl.704:15|
 :skolemid |90|
 :pattern ( (select (inst_uReach_rev EG_1@@8 y@@3) u_3@@2))
 :pattern ( (exists_path EG_1@@8 u_3@@2 y@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@24 (Array T@Ref Bool)) (b@@17 (Array T@Ref Bool)) (o@@6 T@Ref) ) (! (= (select (|Set#Union_38119| a@@24 b@@17) o@@6)  (or (select a@@24 o@@6) (select b@@17 o@@6)))
 :qid |stdinbpl.442:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_38119| a@@24 b@@17) o@@6))
)))
(assert (forall ((EG_1@@9 (Array T@EdgeDomainType Bool)) (p_1@@2 T@Ref) (s_2@@2 T@Ref) ) (! (= (edge EG_1@@9 p_1@@2 s_2@@2) (edge_ EG_1@@9 p_1@@2 s_2@@2))
 :qid |stdinbpl.674:15|
 :skolemid |84|
 :pattern ( (edge EG_1@@9 p_1@@2 s_2@@2))
)))
(assert (forall ((EG_1@@10 (Array T@EdgeDomainType Bool)) (start@@0 T@Ref) (end@@0 T@Ref) ) (! (= (exists_path EG_1@@10 start@@0 end@@0) (exists_path_ EG_1@@10 start@@0 end@@0))
 :qid |stdinbpl.710:15|
 :skolemid |91|
 :pattern ( (exists_path EG_1@@10 start@@0 end@@0))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_58002) (g0@@8 (Array T@Ref Bool)) (g1@@8 (Array T@Ref Bool)) ) (!  (and (= (apply_TCFraming Heap@@28 g0@@8 g1@@8) (|apply_TCFraming'| Heap@@28 g0@@8 g1@@8)) (dummyFunction_8139 (|apply_TCFraming#triggerStateless| g0@@8 g1@@8)))
 :qid |stdinbpl.935:15|
 :skolemid |121|
 :pattern ( (apply_TCFraming Heap@@28 g0@@8 g1@@8))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun refs@@6 () (Array T@Ref Bool))
(declare-fun Result () (Array T@EdgeDomainType Bool))
(declare-fun Heap@@29 () T@PolymorphicMapType_58002)
(declare-fun QPMask@0 () T@PolymorphicMapType_58023)
(declare-fun s_5 () T@Ref)
(declare-fun p_9 () T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(set-info :boogie-vc-id |$$#definedness|)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon17_Else_correct true))
(let ((anon17_Then_correct true))
(let ((anon16_Else_correct  (=> (and (forall ((p_6_1 T@Ref) (s_6_1 T@Ref) ) (!  (=> (and (select refs@@6 p_6_1) (exists_path Result p_6_1 s_6_1)) (select refs@@6 s_6_1))
 :qid |stdinbpl.911:20|
 :skolemid |119|
 :pattern ( (select refs@@6 p_6_1) (select refs@@6 s_6_1) (exists_path Result p_6_1 s_6_1))
)) (state Heap@@29 QPMask@0)) (and (=> (= (ControlFlow 0 11) 9) anon17_Then_correct) (=> (= (ControlFlow 0 11) 10) anon17_Else_correct)))))
(let ((anon16_Then_correct true))
(let ((anon13_Else_correct  (=> (and (forall ((p_4_1 T@Ref) (s_4_1 T@Ref) ) (! (=  (and (select refs@@6 p_4_1) (and (select refs@@6 s_4_1) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) p_4_1 next) s_4_1))) (select Result (create_edge p_4_1 s_4_1)))
 :qid |stdinbpl.901:20|
 :skolemid |118|
 :pattern ( (create_edge p_4_1 s_4_1))
)) (state Heap@@29 QPMask@0)) (and (=> (= (ControlFlow 0 12) 8) anon16_Then_correct) (=> (= (ControlFlow 0 12) 11) anon16_Else_correct)))))
(let ((anon6_correct true))
(let ((anon15_Else_correct  (=> (and (not (select refs@@6 s_5)) (= (ControlFlow 0 6) 2)) anon6_correct)))
(let ((anon15_Then_correct  (=> (select refs@@6 s_5) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_37930_37931 QPMask@0 p_9 next)) (=> (HasDirectPerm_37930_37931 QPMask@0 p_9 next) (=> (= (ControlFlow 0 4) 2) anon6_correct))))))
(let ((anon14_Then_correct  (=> (select refs@@6 p_9) (and (=> (= (ControlFlow 0 7) 4) anon15_Then_correct) (=> (= (ControlFlow 0 7) 6) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (and (not (select refs@@6 p_9)) (= (ControlFlow 0 3) 2)) anon6_correct)))
(let ((anon12_Else_correct  (and (=> (= (ControlFlow 0 13) (- 0 15)) (forall ((n_3 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3 n_3_1)) (select refs@@6 n_3)) (select refs@@6 n_3_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_3 n_3_1)))
 :qid |stdinbpl.849:15|
 :skolemid |111|
))) (=> (forall ((n_3@@0 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@0 n_3_1@@0)) (select refs@@6 n_3@@0)) (select refs@@6 n_3_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_3@@0 n_3_1@@0)))
 :qid |stdinbpl.849:15|
 :skolemid |111|
)) (=> (and (forall ((n_3@@1 T@Ref) ) (!  (=> (and (select refs@@6 n_3@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange1 n_3@@1) (= (invRecv1 n_3@@1) n_3@@1)))
 :qid |stdinbpl.855:22|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) n_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_3@@1 next))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select refs@@6 (invRecv1 o_4)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange1 o_4)) (= (invRecv1 o_4) o_4))
 :qid |stdinbpl.859:22|
 :skolemid |113|
 :pattern ( (invRecv1 o_4))
))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (forall ((n_3@@2 T@Ref) ) (!  (=> (select refs@@6 n_3@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.865:15|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) n_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_3@@2 next))
))) (=> (forall ((n_3@@3 T@Ref) ) (!  (=> (select refs@@6 n_3@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.865:15|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) n_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_3@@3 next))
)) (=> (and (forall ((n_3@@4 T@Ref) ) (!  (=> (and (select refs@@6 n_3@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n_3@@4 null)))
 :qid |stdinbpl.871:22|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_3@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) n_3@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_3@@4 next))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select refs@@6 (invRecv1 o_4@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange1 o_4@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv1 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) o_4@@0 next) (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| ZeroMask) o_4@@0 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select refs@@6 (invRecv1 o_4@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) o_4@@0 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| ZeroMask) o_4@@0 next))))
 :qid |stdinbpl.877:22|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) o_4@@0 next))
))) (=> (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.881:29|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_58075_58076) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.881:29|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.881:29|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.881:29|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@0) o_4@@4 f_5@@2))
))) (and (state Heap@@29 QPMask@0) (state Heap@@29 QPMask@0))) (and (and (=> (= (ControlFlow 0 13) 12) anon13_Else_correct) (=> (= (ControlFlow 0 13) 7) anon14_Then_correct)) (=> (= (ControlFlow 0 13) 3) anon14_Else_correct)))))))))))
(let ((anon12_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@29 ZeroMask) (=> (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 1)) (and (=> (= (ControlFlow 0 16) 1) anon12_Then_correct) (=> (= (ControlFlow 0 16) 13) anon12_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 17) 16) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
