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
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun ExhaleHeap@3 () T@PolymorphicMapType_58002)
(declare-fun QPMask@34 () T@PolymorphicMapType_58023)
(declare-fun g_1 () (Array T@Ref Bool))
(declare-fun dummyFunction_37931 (T@Ref) Bool)
(declare-fun neverTriggered45 (T@Ref) Bool)
(declare-fun QPMask@30 () T@PolymorphicMapType_58023)
(declare-fun QPMask@35 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered46 (T@Ref) Bool)
(declare-fun QPMask@36 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered47 (T@Ref) Bool)
(declare-fun prev_node@0 () T@Ref)
(declare-fun node@1 () T@Ref)
(declare-fun node_i@0 () T@Ref)
(declare-fun prev_i@0 () T@Ref)
(declare-fun x@@6 () T@Ref)
(declare-fun QPMask@37 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered44 (T@Ref) Bool)
(declare-fun n$4_1 () T@Ref)
(declare-fun QPMask@33 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered43 (T@Ref) Bool)
(declare-fun QPMask@32 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered42 (T@Ref) Bool)
(declare-fun QPMask@31 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered41 (T@Ref) Bool)
(declare-fun j_9 () Int)
(declare-fun count_1@0 () Int)
(declare-fun i () Int)
(declare-fun n$3_1 () T@Ref)
(declare-fun qpRange40 (T@Ref) Bool)
(declare-fun invRecv40 (T@Ref) T@Ref)
(declare-fun QPMask@4 () T@PolymorphicMapType_58023)
(declare-fun n$0_12 () T@Ref)
(declare-fun ExhaleHeap@10 () T@PolymorphicMapType_58002)
(declare-fun n$0_10 () T@Ref)
(declare-fun ExhaleHeap@9 () T@PolymorphicMapType_58002)
(declare-fun n$0_8 () T@Ref)
(declare-fun ExhaleHeap@8 () T@PolymorphicMapType_58002)
(declare-fun n$0_6 () T@Ref)
(declare-fun ExhaleHeap@5 () T@PolymorphicMapType_58002)
(declare-fun n$0_20 () T@Ref)
(declare-fun ExhaleHeap@12 () T@PolymorphicMapType_58002)
(declare-fun n$0_18 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_58002)
(declare-fun n$0_16 () T@Ref)
(declare-fun ExhaleHeap@6 () T@PolymorphicMapType_58002)
(declare-fun n$0_14 () T@Ref)
(declare-fun n$0_4 () T@Ref)
(declare-fun ExhaleHeap@4 () T@PolymorphicMapType_58002)
(declare-fun n$0_2_1 () T@Ref)
(declare-fun Heap@1 () T@PolymorphicMapType_58002)
(declare-fun QPMask@28 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered70 (T@Ref) Bool)
(declare-fun Mask@21 () T@PolymorphicMapType_58023)
(declare-fun QPMask@27 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered69 (T@Ref) Bool)
(declare-fun node@2 () T@Ref)
(declare-fun node_i@1 () T@Ref)
(declare-fun prev_i@1 () T@Ref)
(declare-fun n$4_5 () T@Ref)
(declare-fun count_1@1 () Int)
(declare-fun n$3_5 () T@Ref)
(declare-fun neverTriggered71 (T@Ref) Bool)
(declare-fun QPMask@29 () T@PolymorphicMapType_58023)
(declare-fun qpRange71 (T@Ref) Bool)
(declare-fun invRecv71 (T@Ref) T@Ref)
(declare-fun ExhaleHeap@13 () T@PolymorphicMapType_58002)
(declare-fun QPMask@26 () T@PolymorphicMapType_58023)
(declare-fun vexit@0 () T@Ref)
(declare-fun QPMask@25 () T@PolymorphicMapType_58023)
(declare-fun Mask@20 () T@PolymorphicMapType_58023)
(declare-fun qpRange68 (T@Ref) Bool)
(declare-fun invRecv68 (T@Ref) T@Ref)
(declare-fun Mask@19 () T@PolymorphicMapType_58023)
(declare-fun QPMask@24 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered67 (T@Ref) Bool)
(declare-fun qpRange67 (T@Ref) Bool)
(declare-fun invRecv67 (T@Ref) T@Ref)
(declare-fun QPMask@23 () T@PolymorphicMapType_58023)
(declare-fun Mask@18 () T@PolymorphicMapType_58023)
(declare-fun qpRange66 (T@Ref) Bool)
(declare-fun invRecv66 (T@Ref) T@Ref)
(declare-fun Mask@17 () T@PolymorphicMapType_58023)
(declare-fun Mask@16 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered65 (T@Ref) Bool)
(declare-fun qpRange65 (T@Ref) Bool)
(declare-fun invRecv65 (T@Ref) T@Ref)
(declare-fun ExhaleHeap@11 () T@PolymorphicMapType_58002)
(declare-fun QPMask@22 () T@PolymorphicMapType_58023)
(declare-fun QPMask@21 () T@PolymorphicMapType_58023)
(declare-fun Mask@15 () T@PolymorphicMapType_58023)
(declare-fun qpRange60 (T@Ref) Bool)
(declare-fun invRecv60 (T@Ref) T@Ref)
(declare-fun Mask@14 () T@PolymorphicMapType_58023)
(declare-fun QPMask@20 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered59 (T@Ref) Bool)
(declare-fun qpRange59 (T@Ref) Bool)
(declare-fun invRecv59 (T@Ref) T@Ref)
(declare-fun QPMask@19 () T@PolymorphicMapType_58023)
(declare-fun Mask@13 () T@PolymorphicMapType_58023)
(declare-fun qpRange58 (T@Ref) Bool)
(declare-fun invRecv58 (T@Ref) T@Ref)
(declare-fun Mask@12 () T@PolymorphicMapType_58023)
(declare-fun QPMask@18 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered57 (T@Ref) Bool)
(declare-fun qpRange57 (T@Ref) Bool)
(declare-fun invRecv57 (T@Ref) T@Ref)
(declare-fun arg_y@0 () T@Ref)
(declare-fun QPMask@17 () T@PolymorphicMapType_58023)
(declare-fun Mask@11 () T@PolymorphicMapType_58023)
(declare-fun qpRange56 (T@Ref) Bool)
(declare-fun invRecv56 (T@Ref) T@Ref)
(declare-fun Mask@10 () T@PolymorphicMapType_58023)
(declare-fun QPMask@16 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered55 (T@Ref) Bool)
(declare-fun qpRange55 (T@Ref) Bool)
(declare-fun invRecv55 (T@Ref) T@Ref)
(declare-fun QPMask@15 () T@PolymorphicMapType_58023)
(declare-fun Mask@9 () T@PolymorphicMapType_58023)
(declare-fun qpRange54 (T@Ref) Bool)
(declare-fun invRecv54 (T@Ref) T@Ref)
(declare-fun Mask@8 () T@PolymorphicMapType_58023)
(declare-fun QPMask@10 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered53 (T@Ref) Bool)
(declare-fun qpRange53 (T@Ref) Bool)
(declare-fun invRecv53 (T@Ref) T@Ref)
(declare-fun ExhaleHeap@7 () T@PolymorphicMapType_58002)
(declare-fun QPMask@14 () T@PolymorphicMapType_58023)
(declare-fun QPMask@13 () T@PolymorphicMapType_58023)
(declare-fun Mask@7 () T@PolymorphicMapType_58023)
(declare-fun qpRange64 (T@Ref) Bool)
(declare-fun invRecv64 (T@Ref) T@Ref)
(declare-fun Mask@6 () T@PolymorphicMapType_58023)
(declare-fun QPMask@12 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered63 (T@Ref) Bool)
(declare-fun qpRange63 (T@Ref) Bool)
(declare-fun invRecv63 (T@Ref) T@Ref)
(declare-fun QPMask@11 () T@PolymorphicMapType_58023)
(declare-fun Mask@5 () T@PolymorphicMapType_58023)
(declare-fun qpRange62 (T@Ref) Bool)
(declare-fun invRecv62 (T@Ref) T@Ref)
(declare-fun Mask@4 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered61 (T@Ref) Bool)
(declare-fun qpRange61 (T@Ref) Bool)
(declare-fun invRecv61 (T@Ref) T@Ref)
(declare-fun QPMask@9 () T@PolymorphicMapType_58023)
(declare-fun Mask@3 () T@PolymorphicMapType_58023)
(declare-fun qpRange52 (T@Ref) Bool)
(declare-fun invRecv52 (T@Ref) T@Ref)
(declare-fun Mask@2 () T@PolymorphicMapType_58023)
(declare-fun QPMask@8 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered51 (T@Ref) Bool)
(declare-fun qpRange51 (T@Ref) Bool)
(declare-fun invRecv51 (T@Ref) T@Ref)
(declare-fun QPMask@7 () T@PolymorphicMapType_58023)
(declare-fun Mask@1 () T@PolymorphicMapType_58023)
(declare-fun qpRange50 (T@Ref) Bool)
(declare-fun invRecv50 (T@Ref) T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_58023)
(declare-fun QPMask@5 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered49 (T@Ref) Bool)
(declare-fun qpRange49 (T@Ref) Bool)
(declare-fun invRecv49 (T@Ref) T@Ref)
(declare-fun node_j () T@Ref)
(declare-fun prev_j () T@Ref)
(declare-fun vexit () T@Ref)
(declare-fun qpRange48 (T@Ref) Bool)
(declare-fun invRecv48 (T@Ref) T@Ref)
(declare-fun QPMask@6 () T@PolymorphicMapType_58023)
(declare-fun qpRange72 (T@Ref) Bool)
(declare-fun invRecv72 (T@Ref) T@Ref)
(declare-fun Heap@@29 () T@PolymorphicMapType_58002)
(declare-fun node@0 () T@Ref)
(declare-fun n$4 () T@Ref)
(declare-fun n$3 () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_58023)
(declare-fun prev_node () T@Ref)
(declare-fun node () T@Ref)
(declare-fun prev_i () T@Ref)
(declare-fun node_i () T@Ref)
(declare-fun neverTriggered39 (T@Ref) Bool)
(declare-fun qpRange39 (T@Ref) Bool)
(declare-fun invRecv39 (T@Ref) T@Ref)
(declare-fun QPMask@38 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered38 (T@Ref) Bool)
(declare-fun n$1 () T@Ref)
(declare-fun QPMask@3 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered37 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered36 (T@Ref) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_58023)
(declare-fun neverTriggered35 (T@Ref) Bool)
(declare-fun n$0_3 () T@Ref)
(declare-fun qpRange34 (T@Ref) Bool)
(declare-fun invRecv34 (T@Ref) T@Ref)
(set-info :boogie-vc-id swap)
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
 (=> (= (ControlFlow 0 0) 526) (let ((anon315_Then_correct  (and (=> (= (ControlFlow 0 455) (- 0 457)) (forall ((n_10_1 T@Ref) ) (!  (=> (and (select g_1 n_10_1) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_10_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3712:27|
 :skolemid |393|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_10_1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@34) n_10_1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_10_1 next))
))) (=> (forall ((n_10_1@@0 T@Ref) ) (!  (=> (and (select g_1 n_10_1@@0) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_10_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3712:27|
 :skolemid |393|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_10_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@34) n_10_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_10_1@@0 next))
)) (and (=> (= (ControlFlow 0 455) (- 0 456)) (forall ((n_10_1@@1 T@Ref) (n_10_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1@@1 n_10_2)) (select g_1 n_10_1@@1)) (select g_1 n_10_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_10_1@@1 n_10_2)))
 :qid |stdinbpl.3719:27|
 :skolemid |394|
 :pattern ( (neverTriggered45 n_10_1@@1) (neverTriggered45 n_10_2))
))) (=> (forall ((n_10_1@@2 T@Ref) (n_10_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1@@2 n_10_2@@0)) (select g_1 n_10_1@@2)) (select g_1 n_10_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_10_1@@2 n_10_2@@0)))
 :qid |stdinbpl.3719:27|
 :skolemid |394|
 :pattern ( (neverTriggered45 n_10_1@@2) (neverTriggered45 n_10_2@@0))
)) (=> (= (ControlFlow 0 455) (- 0 454)) (forall ((n_10_1@@3 T@Ref) ) (!  (=> (select g_1 n_10_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@30) n_10_1@@3 next) NoPerm)))
 :qid |stdinbpl.3726:27|
 :skolemid |395|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_10_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@34) n_10_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_10_1@@3 next))
)))))))))
(let ((anon317_Then_correct  (and (=> (= (ControlFlow 0 447) (- 0 449)) (forall ((n_11_1 T@Ref) ) (!  (=> (and (select g_1 n_11_1) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_11_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3762:27|
 :skolemid |398|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_11_1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@35) n_11_1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_11_1 next))
))) (=> (forall ((n_11_1@@0 T@Ref) ) (!  (=> (and (select g_1 n_11_1@@0) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_11_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3762:27|
 :skolemid |398|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_11_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@35) n_11_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_11_1@@0 next))
)) (and (=> (= (ControlFlow 0 447) (- 0 448)) (forall ((n_11_1@@1 T@Ref) (n_11_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_1@@1 n_11_2)) (select g_1 n_11_1@@1)) (select g_1 n_11_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_11_1@@1 n_11_2)))
 :qid |stdinbpl.3769:27|
 :skolemid |399|
 :pattern ( (neverTriggered46 n_11_1@@1) (neverTriggered46 n_11_2))
))) (=> (forall ((n_11_1@@2 T@Ref) (n_11_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_1@@2 n_11_2@@0)) (select g_1 n_11_1@@2)) (select g_1 n_11_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_11_1@@2 n_11_2@@0)))
 :qid |stdinbpl.3769:27|
 :skolemid |399|
 :pattern ( (neverTriggered46 n_11_1@@2) (neverTriggered46 n_11_2@@0))
)) (=> (= (ControlFlow 0 447) (- 0 446)) (forall ((n_11_1@@3 T@Ref) ) (!  (=> (select g_1 n_11_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@30) n_11_1@@3 next) NoPerm)))
 :qid |stdinbpl.3776:27|
 :skolemid |400|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_11_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@35) n_11_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_11_1@@3 next))
)))))))))
(let ((anon319_Then_correct  (and (=> (= (ControlFlow 0 439) (- 0 441)) (forall ((n_12_1 T@Ref) ) (!  (=> (and (select g_1 n_12_1) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_12_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3812:27|
 :skolemid |403|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_12_1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@36) n_12_1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_12_1 next))
))) (=> (forall ((n_12_1@@0 T@Ref) ) (!  (=> (and (select g_1 n_12_1@@0) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_12_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3812:27|
 :skolemid |403|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_12_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@36) n_12_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_12_1@@0 next))
)) (and (=> (= (ControlFlow 0 439) (- 0 440)) (forall ((n_12_1@@1 T@Ref) (n_12_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12_1@@1 n_12_2)) (select g_1 n_12_1@@1)) (select g_1 n_12_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_12_1@@1 n_12_2)))
 :qid |stdinbpl.3819:27|
 :skolemid |404|
 :pattern ( (neverTriggered47 n_12_1@@1) (neverTriggered47 n_12_2))
))) (=> (forall ((n_12_1@@2 T@Ref) (n_12_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12_1@@2 n_12_2@@0)) (select g_1 n_12_1@@2)) (select g_1 n_12_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_12_1@@2 n_12_2@@0)))
 :qid |stdinbpl.3819:27|
 :skolemid |404|
 :pattern ( (neverTriggered47 n_12_1@@2) (neverTriggered47 n_12_2@@0))
)) (=> (= (ControlFlow 0 439) (- 0 438)) (forall ((n_12_1@@3 T@Ref) ) (!  (=> (select g_1 n_12_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@30) n_12_1@@3 next) NoPerm)))
 :qid |stdinbpl.3826:27|
 :skolemid |405|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_12_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@36) n_12_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_12_1@@3 next))
)))))))))
(let ((anon81_correct true))
(let ((anon319_Else_correct  (=> (and (exists_path ($$ ExhaleHeap@3 g_1) prev_node@0 node@1) (= (ControlFlow 0 442) 436)) anon81_correct)))
(let ((anon318_Then_correct  (=> (and (not (= node@1 null)) (state ExhaleHeap@3 QPMask@30)) (and (=> (= (ControlFlow 0 443) 439) anon319_Then_correct) (=> (= (ControlFlow 0 443) 442) anon319_Else_correct)))))
(let ((anon318_Else_correct  (=> (and (= node@1 null) (= (ControlFlow 0 437) 436)) anon81_correct)))
(let ((anon77_correct  (=> (state ExhaleHeap@3 QPMask@30) (and (=> (= (ControlFlow 0 444) 443) anon318_Then_correct) (=> (= (ControlFlow 0 444) 437) anon318_Else_correct)))))
(let ((anon317_Else_correct  (=> (and (exists_path ($$ ExhaleHeap@3 g_1) node_i@0 prev_node@0) (= (ControlFlow 0 450) 444)) anon77_correct)))
(let ((anon316_Then_correct  (=> (and (not (= node_i@0 null)) (state ExhaleHeap@3 QPMask@30)) (and (=> (= (ControlFlow 0 451) 447) anon317_Then_correct) (=> (= (ControlFlow 0 451) 450) anon317_Else_correct)))))
(let ((anon316_Else_correct  (=> (and (= node_i@0 null) (= (ControlFlow 0 445) 444)) anon77_correct)))
(let ((anon73_correct  (=> (state ExhaleHeap@3 QPMask@30) (and (=> (= (ControlFlow 0 452) 451) anon316_Then_correct) (=> (= (ControlFlow 0 452) 445) anon316_Else_correct)))))
(let ((anon315_Else_correct  (=> (and (exists_path ($$ ExhaleHeap@3 g_1) prev_i@0 node_i@0) (= (ControlFlow 0 458) 452)) anon73_correct)))
(let ((anon314_Then_correct  (=> (and (not (= node_i@0 null)) (state ExhaleHeap@3 QPMask@30)) (and (=> (= (ControlFlow 0 459) 455) anon315_Then_correct) (=> (= (ControlFlow 0 459) 458) anon315_Else_correct)))))
(let ((anon314_Else_correct  (=> (and (= node_i@0 null) (= (ControlFlow 0 453) 452)) anon73_correct)))
(let ((anon311_Else_correct  (=> (and (forall ((n$4_3 T@Ref) ) (!  (=> (select g_1 n$4_3) (exists_path ($$ ExhaleHeap@3 g_1) x@@6 n$4_3))
 :qid |stdinbpl.3695:24|
 :skolemid |392|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@3 g_1)) g_1) x@@6 n$4_3))
)) (state ExhaleHeap@3 QPMask@30)) (and (=> (= (ControlFlow 0 460) 459) anon314_Then_correct) (=> (= (ControlFlow 0 460) 453) anon314_Else_correct)))))
(let ((anon313_Then_correct  (and (=> (= (ControlFlow 0 432) (- 0 434)) (forall ((n_9 T@Ref) ) (!  (=> (and (select g_1 n_9) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_9 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3657:29|
 :skolemid |387|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_9 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@37) n_9 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_9 next))
))) (=> (forall ((n_9@@0 T@Ref) ) (!  (=> (and (select g_1 n_9@@0) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_9@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3657:29|
 :skolemid |387|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_9@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@37) n_9@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_9@@0 next))
)) (and (=> (= (ControlFlow 0 432) (- 0 433)) (forall ((n_9@@1 T@Ref) (n_9_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@1 n_9_1)) (select g_1 n_9@@1)) (select g_1 n_9_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_9@@1 n_9_1)))
 :qid |stdinbpl.3664:29|
 :skolemid |388|
 :pattern ( (neverTriggered44 n_9@@1) (neverTriggered44 n_9_1))
))) (=> (forall ((n_9@@2 T@Ref) (n_9_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@2 n_9_1@@0)) (select g_1 n_9@@2)) (select g_1 n_9_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_9@@2 n_9_1@@0)))
 :qid |stdinbpl.3664:29|
 :skolemid |388|
 :pattern ( (neverTriggered44 n_9@@2) (neverTriggered44 n_9_1@@0))
)) (=> (= (ControlFlow 0 432) (- 0 431)) (forall ((n_9@@3 T@Ref) ) (!  (=> (select g_1 n_9@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@30) n_9@@3 next) NoPerm)))
 :qid |stdinbpl.3671:29|
 :skolemid |389|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_9@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@37) n_9@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_9@@3 next))
)))))))))
(let ((anon68_correct true))
(let ((anon312_Then_correct  (=> (select g_1 n$4_1) (and (=> (= (ControlFlow 0 435) 432) anon313_Then_correct) (=> (= (ControlFlow 0 435) 429) anon68_correct)))))
(let ((anon312_Else_correct  (=> (and (not (select g_1 n$4_1)) (= (ControlFlow 0 430) 429)) anon68_correct)))
(let ((anon310_Else_correct  (=> (unshared_graph ($$ ExhaleHeap@3 g_1)) (=> (and (state ExhaleHeap@3 QPMask@30) (state ExhaleHeap@3 QPMask@30)) (and (and (=> (= (ControlFlow 0 461) 460) anon311_Else_correct) (=> (= (ControlFlow 0 461) 435) anon312_Then_correct)) (=> (= (ControlFlow 0 461) 430) anon312_Else_correct))))))
(let ((anon310_Then_correct  (and (=> (= (ControlFlow 0 426) (- 0 428)) (forall ((n_8 T@Ref) ) (!  (=> (and (select g_1 n_8) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_8 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3607:25|
 :skolemid |382|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_8 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@33) n_8 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_8 next))
))) (=> (forall ((n_8@@0 T@Ref) ) (!  (=> (and (select g_1 n_8@@0) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_8@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3607:25|
 :skolemid |382|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_8@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@33) n_8@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_8@@0 next))
)) (and (=> (= (ControlFlow 0 426) (- 0 427)) (forall ((n_8@@1 T@Ref) (n_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@1 n_8_1)) (select g_1 n_8@@1)) (select g_1 n_8_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_8@@1 n_8_1)))
 :qid |stdinbpl.3614:25|
 :skolemid |383|
 :pattern ( (neverTriggered43 n_8@@1) (neverTriggered43 n_8_1))
))) (=> (forall ((n_8@@2 T@Ref) (n_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@2 n_8_1@@0)) (select g_1 n_8@@2)) (select g_1 n_8_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_8@@2 n_8_1@@0)))
 :qid |stdinbpl.3614:25|
 :skolemid |383|
 :pattern ( (neverTriggered43 n_8@@2) (neverTriggered43 n_8_1@@0))
)) (=> (= (ControlFlow 0 426) (- 0 425)) (forall ((n_8@@3 T@Ref) ) (!  (=> (select g_1 n_8@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@30) n_8@@3 next) NoPerm)))
 :qid |stdinbpl.3621:25|
 :skolemid |384|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@33) n_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_8@@3 next))
)))))))))
(let ((anon309_Else_correct  (=> (and (func_graph ($$ ExhaleHeap@3 g_1)) (state ExhaleHeap@3 QPMask@30)) (and (=> (= (ControlFlow 0 462) 426) anon310_Then_correct) (=> (= (ControlFlow 0 462) 461) anon310_Else_correct)))))
(let ((anon309_Then_correct  (and (=> (= (ControlFlow 0 422) (- 0 424)) (forall ((n_7 T@Ref) ) (!  (=> (and (select g_1 n_7) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_7 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3560:25|
 :skolemid |377|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_7 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@32) n_7 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_7 next))
))) (=> (forall ((n_7@@0 T@Ref) ) (!  (=> (and (select g_1 n_7@@0) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_7@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3560:25|
 :skolemid |377|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_7@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@32) n_7@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_7@@0 next))
)) (and (=> (= (ControlFlow 0 422) (- 0 423)) (forall ((n_7@@1 T@Ref) (n_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@1 n_7_1)) (select g_1 n_7@@1)) (select g_1 n_7_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_7@@1 n_7_1)))
 :qid |stdinbpl.3567:25|
 :skolemid |378|
 :pattern ( (neverTriggered42 n_7@@1) (neverTriggered42 n_7_1))
))) (=> (forall ((n_7@@2 T@Ref) (n_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@2 n_7_1@@0)) (select g_1 n_7@@2)) (select g_1 n_7_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_7@@2 n_7_1@@0)))
 :qid |stdinbpl.3567:25|
 :skolemid |378|
 :pattern ( (neverTriggered42 n_7@@2) (neverTriggered42 n_7_1@@0))
)) (=> (= (ControlFlow 0 422) (- 0 421)) (forall ((n_7@@3 T@Ref) ) (!  (=> (select g_1 n_7@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@30) n_7@@3 next) NoPerm)))
 :qid |stdinbpl.3574:25|
 :skolemid |379|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@32) n_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_7@@3 next))
)))))))))
(let ((anon308_Else_correct  (=> (and (acyclic_graph ($$ ExhaleHeap@3 g_1)) (state ExhaleHeap@3 QPMask@30)) (and (=> (= (ControlFlow 0 463) 422) anon309_Then_correct) (=> (= (ControlFlow 0 463) 462) anon309_Else_correct)))))
(let ((anon308_Then_correct  (and (=> (= (ControlFlow 0 418) (- 0 420)) (forall ((n_6 T@Ref) ) (!  (=> (and (select g_1 n_6) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_6 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3513:25|
 :skolemid |372|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_6 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@31) n_6 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_6 next))
))) (=> (forall ((n_6@@0 T@Ref) ) (!  (=> (and (select g_1 n_6@@0) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_6@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3513:25|
 :skolemid |372|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_6@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@31) n_6@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_6@@0 next))
)) (and (=> (= (ControlFlow 0 418) (- 0 419)) (forall ((n_6@@1 T@Ref) (n_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@1 n_6_1)) (select g_1 n_6@@1)) (select g_1 n_6_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_6@@1 n_6_1)))
 :qid |stdinbpl.3520:25|
 :skolemid |373|
 :pattern ( (neverTriggered41 n_6@@1) (neverTriggered41 n_6_1))
))) (=> (forall ((n_6@@2 T@Ref) (n_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@2 n_6_1@@0)) (select g_1 n_6@@2)) (select g_1 n_6_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_6@@2 n_6_1@@0)))
 :qid |stdinbpl.3520:25|
 :skolemid |373|
 :pattern ( (neverTriggered41 n_6@@2) (neverTriggered41 n_6_1@@0))
)) (=> (= (ControlFlow 0 418) (- 0 417)) (forall ((n_6@@3 T@Ref) ) (!  (=> (select g_1 n_6@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@30) n_6@@3 next) NoPerm)))
 :qid |stdinbpl.3527:25|
 :skolemid |374|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@31) n_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_6@@3 next))
)))))))))
(let ((anon58_correct  (=> (and (state ExhaleHeap@3 QPMask@30) (state ExhaleHeap@3 QPMask@30)) (and (=> (= (ControlFlow 0 464) 418) anon308_Then_correct) (=> (= (ControlFlow 0 464) 463) anon308_Else_correct)))))
(let ((anon307_Else_correct  (=> (and (< j_9 count_1@0) (= (ControlFlow 0 467) 464)) anon58_correct)))
(let ((anon307_Then_correct  (=> (<= count_1@0 j_9) (and (=> (= (ControlFlow 0 465) (- 0 466)) (HasDirectPerm_37930_37931 QPMask@30 prev_node@0 next)) (=> (HasDirectPerm_37930_37931 QPMask@30 prev_node@0 next) (=> (and (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) prev_node@0 next) node@1) (= (ControlFlow 0 465) 464)) anon58_correct))))))
(let ((anon56_correct  (=> (state ExhaleHeap@3 QPMask@30) (and (=> (= (ControlFlow 0 468) 465) anon307_Then_correct) (=> (= (ControlFlow 0 468) 467) anon307_Else_correct)))))
(let ((anon306_Else_correct  (=> (and (<= count_1@0 i) (= (ControlFlow 0 470) 468)) anon56_correct)))
(let ((anon306_Then_correct  (=> (and (and (< i count_1@0) (select g_1 node_i@0)) (and (select g_1 prev_i@0) (= (ControlFlow 0 469) 468))) anon56_correct)))
(let ((anon54_correct  (=> (state ExhaleHeap@3 QPMask@30) (and (=> (= (ControlFlow 0 471) 469) anon306_Then_correct) (=> (= (ControlFlow 0 471) 470) anon306_Else_correct)))))
(let ((anon305_Else_correct  (=> (and (< j_9 count_1@0) (= (ControlFlow 0 473) 471)) anon54_correct)))
(let ((anon305_Then_correct  (=> (<= count_1@0 j_9) (=> (and (select g_1 prev_node@0) (= (ControlFlow 0 472) 471)) anon54_correct))))
(let ((anon52_correct  (=> (state ExhaleHeap@3 QPMask@30) (and (=> (= (ControlFlow 0 474) 472) anon305_Then_correct) (=> (= (ControlFlow 0 474) 473) anon305_Else_correct)))))
(let ((anon304_Else_correct  (=> (and (= node@1 null) (= (ControlFlow 0 476) 474)) anon52_correct)))
(let ((anon304_Then_correct  (=> (not (= node@1 null)) (=> (and (select g_1 node@1) (= (ControlFlow 0 475) 474)) anon52_correct))))
(let ((anon301_Else_correct  (=> (and (forall ((n$3_3 T@Ref) ) (!  (=> (and (select g_1 n$3_3) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$3_3 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$3_3 next)))
 :qid |stdinbpl.3476:24|
 :skolemid |371|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$3_3 next)))
 :pattern ( (select g_1 n$3_3) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$3_3 next))
)) (state ExhaleHeap@3 QPMask@30)) (and (=> (= (ControlFlow 0 477) 475) anon304_Then_correct) (=> (= (ControlFlow 0 477) 476) anon304_Else_correct)))))
(let ((anon49_correct true))
(let ((anon303_Else_correct  (=> (and (not (and (select g_1 n$3_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$3_1 next) null)))) (= (ControlFlow 0 413) 410)) anon49_correct)))
(let ((anon303_Then_correct  (=> (and (select g_1 n$3_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$3_1 next) null))) (and (=> (= (ControlFlow 0 411) (- 0 412)) (HasDirectPerm_37930_37931 QPMask@30 n$3_1 next)) (=> (HasDirectPerm_37930_37931 QPMask@30 n$3_1 next) (=> (= (ControlFlow 0 411) 410) anon49_correct))))))
(let ((anon302_Else_correct  (=> (not (select g_1 n$3_1)) (and (=> (= (ControlFlow 0 416) 411) anon303_Then_correct) (=> (= (ControlFlow 0 416) 413) anon303_Else_correct)))))
(let ((anon302_Then_correct  (=> (select g_1 n$3_1) (and (=> (= (ControlFlow 0 414) (- 0 415)) (HasDirectPerm_37930_37931 QPMask@30 n$3_1 next)) (=> (HasDirectPerm_37930_37931 QPMask@30 n$3_1 next) (and (=> (= (ControlFlow 0 414) 411) anon303_Then_correct) (=> (= (ControlFlow 0 414) 413) anon303_Else_correct)))))))
(let ((anon300_Else_correct  (and (=> (= (ControlFlow 0 478) (- 0 479)) (forall ((n$2_2 T@Ref) (n$2_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$2_2 n$2_2_1)) (select g_1 n$2_2)) (select g_1 n$2_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$2_2 n$2_2_1)))
 :qid |stdinbpl.3431:19|
 :skolemid |365|
))) (=> (forall ((n$2_2@@0 T@Ref) (n$2_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$2_2@@0 n$2_2_1@@0)) (select g_1 n$2_2@@0)) (select g_1 n$2_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$2_2@@0 n$2_2_1@@0)))
 :qid |stdinbpl.3431:19|
 :skolemid |365|
)) (=> (and (and (forall ((n$2_2@@1 T@Ref) ) (!  (=> (and (select g_1 n$2_2@@1) (< NoPerm FullPerm)) (and (qpRange40 n$2_2@@1) (= (invRecv40 n$2_2@@1) n$2_2@@1)))
 :qid |stdinbpl.3437:26|
 :skolemid |366|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$2_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@30) n$2_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$2_2@@1 next))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv40 o_4)) (< NoPerm FullPerm)) (qpRange40 o_4)) (= (invRecv40 o_4) o_4))
 :qid |stdinbpl.3441:26|
 :skolemid |367|
 :pattern ( (invRecv40 o_4))
))) (and (forall ((n$2_2@@2 T@Ref) ) (!  (=> (select g_1 n$2_2@@2) (not (= n$2_2@@2 null)))
 :qid |stdinbpl.3447:26|
 :skolemid |368|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$2_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@30) n$2_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$2_2@@2 next))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv40 o_4@@0)) (< NoPerm FullPerm)) (qpRange40 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv40 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@30) o_4@@0 next) (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@4) o_4@@0 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv40 o_4@@0)) (< NoPerm FullPerm)) (qpRange40 o_4@@0))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@30) o_4@@0 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@4) o_4@@0 next))))
 :qid |stdinbpl.3453:26|
 :skolemid |369|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@30) o_4@@0 next))
)))) (=> (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@4) o_4@@1 f_5) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@30) o_4@@1 f_5)))
 :qid |stdinbpl.3457:33|
 :skolemid |370|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@4) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@30) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_58075_58076) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@4) o_4@@2 f_5@@0) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@30) o_4@@2 f_5@@0)))
 :qid |stdinbpl.3457:33|
 :skolemid |370|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@4) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@30) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@4) o_4@@3 f_5@@1) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@30) o_4@@3 f_5@@1)))
 :qid |stdinbpl.3457:33|
 :skolemid |370|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@4) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@30) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@4) o_4@@4 f_5@@2) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@30) o_4@@4 f_5@@2)))
 :qid |stdinbpl.3457:33|
 :skolemid |370|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@4) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@30) o_4@@4 f_5@@2))
))) (state ExhaleHeap@3 QPMask@30)) (and (and (=> (= (ControlFlow 0 478) 477) anon301_Else_correct) (=> (= (ControlFlow 0 478) 414) anon302_Then_correct)) (=> (= (ControlFlow 0 478) 416) anon302_Else_correct))))))))
(let ((anon300_Then_correct true))
(let ((anon299_Then_correct  (=> (and (and (and (<= 0 i) (< i j_9)) (and (state ExhaleHeap@3 QPMask@4) (<= 0 count_1@0))) (and (and (state ExhaleHeap@3 QPMask@4) (select g_1 x@@6)) (and (state ExhaleHeap@3 QPMask@4) (not (select g_1 null))))) (and (=> (= (ControlFlow 0 480) 409) anon300_Then_correct) (=> (= (ControlFlow 0 480) 478) anon300_Else_correct)))))
(let ((anon172_correct true))
(let ((anon366_Else_correct  (=> (and (not (and (select g_1 n$0_12) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$0_12 next) null)))) (= (ControlFlow 0 247) 244)) anon172_correct)))
(let ((anon366_Then_correct  (=> (and (select g_1 n$0_12) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$0_12 next) null))) (and (=> (= (ControlFlow 0 245) (- 0 246)) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$0_12 next))) (=> (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$0_12 next)) (=> (= (ControlFlow 0 245) 244) anon172_correct))))))
(let ((anon158_correct true))
(let ((anon359_Else_correct  (=> (and (not (and (select g_1 n$0_10) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$0_10 next) null)))) (= (ControlFlow 0 243) 240)) anon158_correct)))
(let ((anon359_Then_correct  (=> (and (select g_1 n$0_10) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$0_10 next) null))) (and (=> (= (ControlFlow 0 241) (- 0 242)) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$0_10 next))) (=> (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$0_10 next)) (=> (= (ControlFlow 0 241) 240) anon158_correct))))))
(let ((anon146_correct true))
(let ((anon353_Else_correct  (=> (and (not (and (select g_1 n$0_8) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$0_8 next) null)))) (= (ControlFlow 0 239) 236)) anon146_correct)))
(let ((anon353_Then_correct  (=> (and (select g_1 n$0_8) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$0_8 next) null))) (and (=> (= (ControlFlow 0 237) (- 0 238)) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$0_8 next))) (=> (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$0_8 next)) (=> (= (ControlFlow 0 237) 236) anon146_correct))))))
(let ((anon132_correct true))
(let ((anon346_Else_correct  (=> (and (not (and (select g_1 n$0_6) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$0_6 next) null)))) (= (ControlFlow 0 235) 232)) anon132_correct)))
(let ((anon346_Then_correct  (=> (and (select g_1 n$0_6) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$0_6 next) null))) (and (=> (= (ControlFlow 0 233) (- 0 234)) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$0_6 next))) (=> (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$0_6 next)) (=> (= (ControlFlow 0 233) 232) anon132_correct))))))
(let ((anon226_correct true))
(let ((anon392_Else_correct  (=> (and (not (and (select g_1 n$0_20) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$0_20 next) null)))) (= (ControlFlow 0 139) 136)) anon226_correct)))
(let ((anon392_Then_correct  (=> (and (select g_1 n$0_20) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$0_20 next) null))) (and (=> (= (ControlFlow 0 137) (- 0 138)) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$0_20 next))) (=> (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$0_20 next)) (=> (= (ControlFlow 0 137) 136) anon226_correct))))))
(let ((anon212_correct true))
(let ((anon385_Else_correct  (=> (and (not (and (select g_1 n$0_18) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n$0_18 next) null)))) (= (ControlFlow 0 135) 132)) anon212_correct)))
(let ((anon385_Then_correct  (=> (and (select g_1 n$0_18) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n$0_18 next) null))) (and (=> (= (ControlFlow 0 133) (- 0 134)) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n$0_18 next))) (=> (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n$0_18 next)) (=> (= (ControlFlow 0 133) 132) anon212_correct))))))
(let ((anon199_correct true))
(let ((anon379_Else_correct  (=> (and (not (and (select g_1 n$0_16) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$0_16 next) null)))) (= (ControlFlow 0 131) 128)) anon199_correct)))
(let ((anon379_Then_correct  (=> (and (select g_1 n$0_16) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$0_16 next) null))) (and (=> (= (ControlFlow 0 129) (- 0 130)) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$0_16 next))) (=> (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$0_16 next)) (=> (= (ControlFlow 0 129) 128) anon199_correct))))))
(let ((anon185_correct true))
(let ((anon372_Else_correct  (=> (and (not (and (select g_1 n$0_14) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$0_14 next) null)))) (= (ControlFlow 0 127) 124)) anon185_correct)))
(let ((anon372_Then_correct  (=> (and (select g_1 n$0_14) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$0_14 next) null))) (and (=> (= (ControlFlow 0 125) (- 0 126)) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$0_14 next))) (=> (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$0_14 next)) (=> (= (ControlFlow 0 125) 124) anon185_correct))))))
(let ((anon119_correct true))
(let ((anon339_Else_correct  (=> (and (not (and (select g_1 n$0_4) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$0_4 next) null)))) (= (ControlFlow 0 123) 120)) anon119_correct)))
(let ((anon339_Then_correct  (=> (and (select g_1 n$0_4) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$0_4 next) null))) (and (=> (= (ControlFlow 0 121) (- 0 122)) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$0_4 next))) (=> (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$0_4 next)) (=> (= (ControlFlow 0 121) 120) anon119_correct))))))
(let ((anon105_correct true))
(let ((anon332_Else_correct  (=> (and (not (and (select g_1 n$0_2_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$0_2_1 next) null)))) (= (ControlFlow 0 119) 116)) anon105_correct)))
(let ((anon332_Then_correct  (=> (and (select g_1 n$0_2_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$0_2_1 next) null))) (and (=> (= (ControlFlow 0 117) (- 0 118)) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$0_2_1 next))) (=> (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$0_2_1 next)) (=> (= (ControlFlow 0 117) 116) anon105_correct))))))
(let ((anon398_Then_correct  (and (=> (= (ControlFlow 0 105) (- 0 107)) (forall ((n_24 T@Ref) ) (!  (=> (and (select g_1 n_24) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n_24 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5639:31|
 :skolemid |601|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n_24 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@28) n_24 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n_24 next))
))) (=> (forall ((n_24@@0 T@Ref) ) (!  (=> (and (select g_1 n_24@@0) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n_24@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5639:31|
 :skolemid |601|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n_24@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@28) n_24@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n_24@@0 next))
)) (and (=> (= (ControlFlow 0 105) (- 0 106)) (forall ((n_24@@1 T@Ref) (n_24_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_24@@1 n_24_1)) (select g_1 n_24@@1)) (select g_1 n_24_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_24@@1 n_24_1)))
 :qid |stdinbpl.5646:31|
 :skolemid |602|
 :pattern ( (neverTriggered70 n_24@@1) (neverTriggered70 n_24_1))
))) (=> (forall ((n_24@@2 T@Ref) (n_24_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_24@@2 n_24_1@@0)) (select g_1 n_24@@2)) (select g_1 n_24_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_24@@2 n_24_1@@0)))
 :qid |stdinbpl.5646:31|
 :skolemid |602|
 :pattern ( (neverTriggered70 n_24@@2) (neverTriggered70 n_24_1@@0))
)) (=> (= (ControlFlow 0 105) (- 0 104)) (forall ((n_24@@3 T@Ref) ) (!  (=> (select g_1 n_24@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@21) n_24@@3 next) NoPerm)))
 :qid |stdinbpl.5653:31|
 :skolemid |603|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n_24@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@28) n_24@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n_24@@3 next))
)))))))))
(let ((anon397_Then_correct  (and (=> (= (ControlFlow 0 101) (- 0 103)) (forall ((n_23 T@Ref) ) (!  (=> (and (select g_1 n_23) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n_23 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5592:31|
 :skolemid |596|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n_23 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@27) n_23 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n_23 next))
))) (=> (forall ((n_23@@0 T@Ref) ) (!  (=> (and (select g_1 n_23@@0) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n_23@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5592:31|
 :skolemid |596|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n_23@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@27) n_23@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n_23@@0 next))
)) (and (=> (= (ControlFlow 0 101) (- 0 102)) (forall ((n_23@@1 T@Ref) (n_23_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_23@@1 n_23_1)) (select g_1 n_23@@1)) (select g_1 n_23_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_23@@1 n_23_1)))
 :qid |stdinbpl.5599:31|
 :skolemid |597|
 :pattern ( (neverTriggered69 n_23@@1) (neverTriggered69 n_23_1))
))) (=> (forall ((n_23@@2 T@Ref) (n_23_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_23@@2 n_23_1@@0)) (select g_1 n_23@@2)) (select g_1 n_23_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_23@@2 n_23_1@@0)))
 :qid |stdinbpl.5599:31|
 :skolemid |597|
 :pattern ( (neverTriggered69 n_23@@2) (neverTriggered69 n_23_1@@0))
)) (=> (= (ControlFlow 0 101) (- 0 100)) (forall ((n_23@@3 T@Ref) ) (!  (=> (select g_1 n_23@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@21) n_23@@3 next) NoPerm)))
 :qid |stdinbpl.5606:31|
 :skolemid |598|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n_23@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@27) n_23@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n_23@@3 next))
)))))))))
(let ((anon262_correct true))
(let ((anon409_Else_correct  (=> (and (= node@2 null) (= (ControlFlow 0 65) 62)) anon262_correct)))
(let ((anon409_Then_correct  (=> (not (= node@2 null)) (and (=> (= (ControlFlow 0 63) (- 0 64)) (exists_path ($$ Heap@1 g_1) node@1 node@2)) (=> (exists_path ($$ Heap@1 g_1) node@1 node@2) (=> (= (ControlFlow 0 63) 62) anon262_correct))))))
(let ((anon408_Else_correct  (=> (= node_i@1 null) (and (=> (= (ControlFlow 0 68) 63) anon409_Then_correct) (=> (= (ControlFlow 0 68) 65) anon409_Else_correct)))))
(let ((anon408_Then_correct  (=> (not (= node_i@1 null)) (and (=> (= (ControlFlow 0 66) (- 0 67)) (exists_path ($$ Heap@1 g_1) node_i@1 node@1)) (=> (exists_path ($$ Heap@1 g_1) node_i@1 node@1) (and (=> (= (ControlFlow 0 66) 63) anon409_Then_correct) (=> (= (ControlFlow 0 66) 65) anon409_Else_correct)))))))
(let ((anon407_Else_correct  (=> (= node_i@1 null) (and (=> (= (ControlFlow 0 71) 66) anon408_Then_correct) (=> (= (ControlFlow 0 71) 68) anon408_Else_correct)))))
(let ((anon407_Then_correct  (=> (not (= node_i@1 null)) (and (=> (= (ControlFlow 0 69) (- 0 70)) (exists_path ($$ Heap@1 g_1) prev_i@1 node_i@1)) (=> (exists_path ($$ Heap@1 g_1) prev_i@1 node_i@1) (and (=> (= (ControlFlow 0 69) 66) anon408_Then_correct) (=> (= (ControlFlow 0 69) 68) anon408_Else_correct)))))))
(let ((anon405_Else_correct  (=> (forall ((n$4_6_1 T@Ref) ) (!  (=> (select g_1 n$4_6_1) (exists_path ($$ Heap@1 g_1) x@@6 n$4_6_1))
 :qid |stdinbpl.5774:24|
 :skolemid |613|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| Heap@1 g_1)) g_1) x@@6 n$4_6_1))
)) (and (=> (= (ControlFlow 0 72) 69) anon407_Then_correct) (=> (= (ControlFlow 0 72) 71) anon407_Else_correct)))))
(let ((anon255_correct true))
(let ((anon406_Else_correct  (=> (and (not (select g_1 n$4_5)) (= (ControlFlow 0 61) 58)) anon255_correct)))
(let ((anon406_Then_correct  (=> (select g_1 n$4_5) (and (=> (= (ControlFlow 0 59) (- 0 60)) (exists_path ($$ Heap@1 g_1) x@@6 n$4_5)) (=> (exists_path ($$ Heap@1 g_1) x@@6 n$4_5) (=> (= (ControlFlow 0 59) 58) anon255_correct))))))
(let ((anon252_correct  (and (=> (= (ControlFlow 0 73) (- 0 76)) (acyclic_graph ($$ Heap@1 g_1))) (=> (acyclic_graph ($$ Heap@1 g_1)) (and (=> (= (ControlFlow 0 73) (- 0 75)) (func_graph ($$ Heap@1 g_1))) (=> (func_graph ($$ Heap@1 g_1)) (and (=> (= (ControlFlow 0 73) (- 0 74)) (unshared_graph ($$ Heap@1 g_1))) (=> (unshared_graph ($$ Heap@1 g_1)) (and (and (=> (= (ControlFlow 0 73) 72) anon405_Else_correct) (=> (= (ControlFlow 0 73) 59) anon406_Then_correct)) (=> (= (ControlFlow 0 73) 61) anon406_Else_correct))))))))))
(let ((anon404_Else_correct  (=> (and (< j_9 count_1@1) (= (ControlFlow 0 79) 73)) anon252_correct)))
(let ((anon404_Then_correct  (=> (<= count_1@1 j_9) (and (=> (= (ControlFlow 0 77) (- 0 78)) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) node@1 next) node@2)) (=> (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) node@1 next) node@2) (=> (= (ControlFlow 0 77) 73) anon252_correct))))))
(let ((anon403_Else_correct  (=> (<= count_1@1 i) (and (=> (= (ControlFlow 0 83) 77) anon404_Then_correct) (=> (= (ControlFlow 0 83) 79) anon404_Else_correct)))))
(let ((anon403_Then_correct  (=> (< i count_1@1) (and (=> (= (ControlFlow 0 80) (- 0 82)) (select g_1 node_i@1)) (=> (select g_1 node_i@1) (and (=> (= (ControlFlow 0 80) (- 0 81)) (select g_1 prev_i@1)) (=> (select g_1 prev_i@1) (and (=> (= (ControlFlow 0 80) 77) anon404_Then_correct) (=> (= (ControlFlow 0 80) 79) anon404_Else_correct)))))))))
(let ((anon402_Else_correct  (=> (< j_9 count_1@1) (and (=> (= (ControlFlow 0 86) 80) anon403_Then_correct) (=> (= (ControlFlow 0 86) 83) anon403_Else_correct)))))
(let ((anon402_Then_correct  (=> (<= count_1@1 j_9) (and (=> (= (ControlFlow 0 84) (- 0 85)) (select g_1 node@1)) (=> (select g_1 node@1) (and (=> (= (ControlFlow 0 84) 80) anon403_Then_correct) (=> (= (ControlFlow 0 84) 83) anon403_Else_correct)))))))
(let ((anon401_Else_correct  (=> (= node@2 null) (and (=> (= (ControlFlow 0 89) 84) anon402_Then_correct) (=> (= (ControlFlow 0 89) 86) anon402_Else_correct)))))
(let ((anon401_Then_correct  (=> (not (= node@2 null)) (and (=> (= (ControlFlow 0 87) (- 0 88)) (select g_1 node@2)) (=> (select g_1 node@2) (and (=> (= (ControlFlow 0 87) 84) anon402_Then_correct) (=> (= (ControlFlow 0 87) 86) anon402_Else_correct)))))))
(let ((anon399_Else_correct  (=> (forall ((n$3_6_1 T@Ref) ) (!  (=> (and (select g_1 n$3_6_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n$3_6_1 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n$3_6_1 next)))
 :qid |stdinbpl.5739:24|
 :skolemid |612|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n$3_6_1 next)))
 :pattern ( (select g_1 n$3_6_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n$3_6_1 next))
)) (and (=> (= (ControlFlow 0 90) 87) anon401_Then_correct) (=> (= (ControlFlow 0 90) 89) anon401_Else_correct)))))
(let ((anon243_correct true))
(let ((anon400_Else_correct  (=> (and (not (and (select g_1 n$3_5) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n$3_5 next) null)))) (= (ControlFlow 0 57) 54)) anon243_correct)))
(let ((anon400_Then_correct  (=> (and (select g_1 n$3_5) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n$3_5 next) null))) (and (=> (= (ControlFlow 0 55) (- 0 56)) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n$3_5 next))) (=> (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n$3_5 next)) (=> (= (ControlFlow 0 55) 54) anon243_correct))))))
(let ((anon240_correct  (=> (state Heap@1 Mask@21) (and (=> (= (ControlFlow 0 91) (- 0 98)) (<= 0 i)) (=> (<= 0 i) (and (=> (= (ControlFlow 0 91) (- 0 97)) (< i j_9)) (=> (< i j_9) (and (=> (= (ControlFlow 0 91) (- 0 96)) (<= 0 count_1@1)) (=> (<= 0 count_1@1) (and (=> (= (ControlFlow 0 91) (- 0 95)) (select g_1 x@@6)) (=> (select g_1 x@@6) (and (=> (= (ControlFlow 0 91) (- 0 94)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 91) (- 0 93)) (forall ((n$2_14 T@Ref) (n$2_14_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$2_14 n$2_14_1)) (select g_1 n$2_14)) (select g_1 n$2_14_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$2_14 n$2_14_1)))
 :qid |stdinbpl.5698:21|
 :skolemid |606|
 :pattern ( (neverTriggered71 n$2_14) (neverTriggered71 n$2_14_1))
))) (=> (forall ((n$2_14@@0 T@Ref) (n$2_14_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$2_14@@0 n$2_14_1@@0)) (select g_1 n$2_14@@0)) (select g_1 n$2_14_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$2_14@@0 n$2_14_1@@0)))
 :qid |stdinbpl.5698:21|
 :skolemid |606|
 :pattern ( (neverTriggered71 n$2_14@@0) (neverTriggered71 n$2_14_1@@0))
)) (and (=> (= (ControlFlow 0 91) (- 0 92)) (forall ((n$2_14@@1 T@Ref) ) (!  (=> (select g_1 n$2_14@@1) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@21) n$2_14@@1 next) FullPerm))
 :qid |stdinbpl.5705:21|
 :skolemid |607|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n$2_14@@1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@29) n$2_14@@1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n$2_14@@1 next))
))) (=> (forall ((n$2_14@@2 T@Ref) ) (!  (=> (select g_1 n$2_14@@2) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@21) n$2_14@@2 next) FullPerm))
 :qid |stdinbpl.5705:21|
 :skolemid |607|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n$2_14@@2 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@29) n$2_14@@2 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n$2_14@@2 next))
)) (=> (forall ((n$2_14@@3 T@Ref) ) (!  (=> (and (select g_1 n$2_14@@3) (< NoPerm FullPerm)) (and (qpRange71 n$2_14@@3) (= (invRecv71 n$2_14@@3) n$2_14@@3)))
 :qid |stdinbpl.5711:26|
 :skolemid |608|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n$2_14@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@29) n$2_14@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) n$2_14@@3 next))
)) (=> (and (forall ((o_4@@5 T@Ref) ) (!  (=> (and (select g_1 (invRecv71 o_4@@5)) (and (< NoPerm FullPerm) (qpRange71 o_4@@5))) (= (invRecv71 o_4@@5) o_4@@5))
 :qid |stdinbpl.5715:26|
 :skolemid |609|
 :pattern ( (invRecv71 o_4@@5))
)) (forall ((o_4@@6 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv71 o_4@@6)) (and (< NoPerm FullPerm) (qpRange71 o_4@@6))) (and (= (invRecv71 o_4@@6) o_4@@6) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@29) o_4@@6 next) (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@21) o_4@@6 next) FullPerm)))) (=> (not (and (select g_1 (invRecv71 o_4@@6)) (and (< NoPerm FullPerm) (qpRange71 o_4@@6)))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@29) o_4@@6 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@21) o_4@@6 next))))
 :qid |stdinbpl.5721:26|
 :skolemid |610|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@29) o_4@@6 next))
))) (=> (and (and (and (forall ((o_4@@7 T@Ref) (f_5@@3 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@21) o_4@@7 f_5@@3) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@29) o_4@@7 f_5@@3)))
 :qid |stdinbpl.5727:33|
 :skolemid |611|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@29) o_4@@7 f_5@@3))
)) (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_58075_58076) ) (!  (=> (not (= f_5@@4 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@21) o_4@@8 f_5@@4) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@29) o_4@@8 f_5@@4)))
 :qid |stdinbpl.5727:33|
 :skolemid |611|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@29) o_4@@8 f_5@@4))
))) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@21) o_4@@9 f_5@@5) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@29) o_4@@9 f_5@@5)))
 :qid |stdinbpl.5727:33|
 :skolemid |611|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@29) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@21) o_4@@10 f_5@@6) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@29) o_4@@10 f_5@@6)))
 :qid |stdinbpl.5727:33|
 :skolemid |611|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@29) o_4@@10 f_5@@6))
))) (and (and (=> (= (ControlFlow 0 91) 90) anon399_Else_correct) (=> (= (ControlFlow 0 91) 55) anon400_Then_correct)) (=> (= (ControlFlow 0 91) 57) anon400_Else_correct))))))))))))))))))))))
(let ((anon398_Else_correct  (and (=> (= (ControlFlow 0 108) (- 0 109)) (exists_path ($$ Heap@1 g_1) node@1 node@2)) (=> (exists_path ($$ Heap@1 g_1) node@1 node@2) (=> (= (ControlFlow 0 108) 91) anon240_correct)))))
(let ((anon397_Else_correct  (and (=> (= (ControlFlow 0 110) (- 0 111)) (exists_path ($$ Heap@1 g_1) node@2 node@2)) (=> (exists_path ($$ Heap@1 g_1) node@2 node@2) (and (=> (= (ControlFlow 0 110) 105) anon398_Then_correct) (=> (= (ControlFlow 0 110) 108) anon398_Else_correct))))))
(let ((anon396_Then_correct  (=> (not (= node@2 null)) (and (=> (= (ControlFlow 0 112) 101) anon397_Then_correct) (=> (= (ControlFlow 0 112) 110) anon397_Else_correct)))))
(let ((anon396_Else_correct  (=> (and (= node@2 null) (= (ControlFlow 0 99) 91)) anon240_correct)))
(let ((anon234_correct  (=> (and (state Heap@1 Mask@21) (state Heap@1 Mask@21)) (and (=> (= (ControlFlow 0 113) (- 0 114)) (HasDirectPerm_37930_37931 Mask@21 node@1 next)) (=> (HasDirectPerm_37930_37931 Mask@21 node@1 next) (=> (and (and (= node@2 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@1) node@1 next)) (state Heap@1 Mask@21)) (and (= count_1@1 (+ count_1@0 1)) (state Heap@1 Mask@21))) (and (=> (= (ControlFlow 0 113) 112) anon396_Then_correct) (=> (= (ControlFlow 0 113) 99) anon396_Else_correct))))))))
(let ((anon233_correct  (=> (state ExhaleHeap@13 QPMask@26) (=> (and (and (state ExhaleHeap@13 QPMask@26) (= Heap@1 ExhaleHeap@13)) (and (= Mask@21 QPMask@26) (= (ControlFlow 0 140) 113))) anon234_correct))))
(let ((anon395_Else_correct  (=> (and (= vexit@0 null) (= (ControlFlow 0 142) 140)) anon233_correct)))
(let ((anon395_Then_correct  (=> (and (and (not (= vexit@0 null)) (state ExhaleHeap@13 QPMask@26)) (and (forall ((v1_19 T@Ref) (v2_19 T@Ref) ) (!  (=> (not (= v1_19 v2_19)) (= (exists_path ($$ ExhaleHeap@13 g_1) v1_19 v2_19)  (or (exists_path ($$ ExhaleHeap@12 g_1) v1_19 v2_19) (and (exists_path ($$ ExhaleHeap@12 g_1) v1_19 node_i@1) (exists_path ($$ ExhaleHeap@12 g_1) vexit@0 v2_19)))))
 :qid |stdinbpl.5551:36|
 :skolemid |595|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@13 g_1)) g_1) v1_19 v2_19))
)) (= (ControlFlow 0 141) 140))) anon233_correct)))
(let ((anon394_Else_correct  (=> (= vexit@0 null) (and (=> (= (ControlFlow 0 144) 141) anon395_Then_correct) (=> (= (ControlFlow 0 144) 142) anon395_Else_correct)))))
(let ((anon394_Then_correct  (=> (not (= vexit@0 null)) (=> (and (state ExhaleHeap@13 QPMask@26) (forall ((v1_18 T@Ref) (v2_18 T@Ref) ) (! (= (edge ($$ ExhaleHeap@13 g_1) v1_18 v2_18)  (or (edge ($$ ExhaleHeap@12 g_1) v1_18 v2_18) (and (= v1_18 node_i@1) (= v2_18 vexit@0))))
 :qid |stdinbpl.5544:36|
 :skolemid |594|
 :pattern ( (edge (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@12 g_1)) g_1) v1_18 v2_18))
))) (and (=> (= (ControlFlow 0 143) 141) anon395_Then_correct) (=> (= (ControlFlow 0 143) 142) anon395_Else_correct))))))
(let ((anon393_Else_correct  (=> (not (= vexit@0 null)) (and (=> (= (ControlFlow 0 146) 143) anon394_Then_correct) (=> (= (ControlFlow 0 146) 144) anon394_Else_correct)))))
(let ((anon393_Then_correct  (=> (= vexit@0 null) (=> (and (state ExhaleHeap@13 QPMask@26) (|Set#Equal_37937| ($$ ExhaleHeap@13 g_1) ($$ ExhaleHeap@12 g_1))) (and (=> (= (ControlFlow 0 145) 143) anon394_Then_correct) (=> (= (ControlFlow 0 145) 144) anon394_Else_correct))))))
(let ((anon391_Else_correct  (=> (forall ((n$0_21_1 T@Ref) ) (!  (=> (and (select g_1 n$0_21_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$0_21_1 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$0_21_1 next)))
 :qid |stdinbpl.5475:34|
 :skolemid |585|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$0_21_1 next)))
 :pattern ( (select g_1 n$0_21_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$0_21_1 next))
)) (and (=> (= (ControlFlow 0 147) (- 0 150)) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) node_i@1 next) null)) (=> (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) node_i@1 next) null) (=> (and (IdenticalOnKnownLocations ExhaleHeap@12 ExhaleHeap@13 QPMask@25) (not (select g_1 null))) (=> (and (and (select g_1 node_i@1) (not (= node_i@1 null))) (and (= Mask@20 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@25) node_i@1 next (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@25) node_i@1 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@25) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@25) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@25))) (state ExhaleHeap@13 Mask@20))) (and (=> (= (ControlFlow 0 147) (- 0 149)) (forall ((n$1_11 T@Ref) (n$1_11_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_11 n$1_11_1)) (and (select g_1 n$1_11) (not (= n$1_11 node_i@1)))) (and (select g_1 n$1_11_1) (not (= n$1_11_1 node_i@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_11 n$1_11_1)))
 :qid |stdinbpl.5495:29|
 :skolemid |586|
))) (=> (forall ((n$1_11@@0 T@Ref) (n$1_11_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_11@@0 n$1_11_1@@0)) (and (select g_1 n$1_11@@0) (not (= n$1_11@@0 node_i@1)))) (and (select g_1 n$1_11_1@@0) (not (= n$1_11_1@@0 node_i@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_11@@0 n$1_11_1@@0)))
 :qid |stdinbpl.5495:29|
 :skolemid |586|
)) (=> (and (forall ((n$1_11@@1 T@Ref) ) (!  (=> (and (and (select g_1 n$1_11@@1) (not (= n$1_11@@1 node_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange68 n$1_11@@1) (= (invRecv68 n$1_11@@1) n$1_11@@1)))
 :qid |stdinbpl.5501:36|
 :skolemid |587|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@13) n$1_11@@1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@26) n$1_11@@1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@13) n$1_11@@1 next))
)) (forall ((o_4@@11 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv68 o_4@@11)) (not (= (invRecv68 o_4@@11) node_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange68 o_4@@11)) (= (invRecv68 o_4@@11) o_4@@11))
 :qid |stdinbpl.5505:36|
 :skolemid |588|
 :pattern ( (invRecv68 o_4@@11))
))) (and (=> (= (ControlFlow 0 147) (- 0 148)) (forall ((n$1_11@@2 T@Ref) ) (!  (=> (and (select g_1 n$1_11@@2) (not (= n$1_11@@2 node_i@1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5511:29|
 :skolemid |589|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@13) n$1_11@@2 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@26) n$1_11@@2 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@13) n$1_11@@2 next))
))) (=> (forall ((n$1_11@@3 T@Ref) ) (!  (=> (and (select g_1 n$1_11@@3) (not (= n$1_11@@3 node_i@1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5511:29|
 :skolemid |589|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@13) n$1_11@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@26) n$1_11@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@13) n$1_11@@3 next))
)) (=> (and (forall ((n$1_11@@4 T@Ref) ) (!  (=> (and (and (select g_1 n$1_11@@4) (not (= n$1_11@@4 node_i@1))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$1_11@@4 null)))
 :qid |stdinbpl.5517:36|
 :skolemid |590|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@13) n$1_11@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@26) n$1_11@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@13) n$1_11@@4 next))
)) (forall ((o_4@@12 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv68 o_4@@12)) (not (= (invRecv68 o_4@@12) node_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange68 o_4@@12)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv68 o_4@@12) o_4@@12)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@26) o_4@@12 next) (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@20) o_4@@12 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv68 o_4@@12)) (not (= (invRecv68 o_4@@12) node_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange68 o_4@@12))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@26) o_4@@12 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@20) o_4@@12 next))))
 :qid |stdinbpl.5523:36|
 :skolemid |591|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@26) o_4@@12 next))
))) (=> (and (and (and (and (and (forall ((o_4@@13 T@Ref) (f_5@@7 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@20) o_4@@13 f_5@@7) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@26) o_4@@13 f_5@@7)))
 :qid |stdinbpl.5527:43|
 :skolemid |592|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@20) o_4@@13 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@26) o_4@@13 f_5@@7))
)) (forall ((o_4@@14 T@Ref) (f_5@@8 T@Field_58075_58076) ) (!  (=> (not (= f_5@@8 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@20) o_4@@14 f_5@@8) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@26) o_4@@14 f_5@@8)))
 :qid |stdinbpl.5527:43|
 :skolemid |592|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@20) o_4@@14 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@26) o_4@@14 f_5@@8))
))) (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@20) o_4@@15 f_5@@9) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@26) o_4@@15 f_5@@9)))
 :qid |stdinbpl.5527:43|
 :skolemid |592|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@20) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@26) o_4@@15 f_5@@9))
))) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@20) o_4@@16 f_5@@10) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@26) o_4@@16 f_5@@10)))
 :qid |stdinbpl.5527:43|
 :skolemid |592|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@20) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@26) o_4@@16 f_5@@10))
))) (state ExhaleHeap@13 QPMask@26)) (and (forall ((n$2_13 T@Ref) ) (!  (=> (and (select g_1 n$2_13) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@13) n$2_13 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@13) n$2_13 next)))
 :qid |stdinbpl.5533:34|
 :skolemid |593|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@13) n$2_13 next)))
 :pattern ( (select g_1 n$2_13) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@13) n$2_13 next))
)) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@13) node_i@1 next) vexit@0))) (and (=> (= (ControlFlow 0 147) 145) anon393_Then_correct) (=> (= (ControlFlow 0 147) 146) anon393_Else_correct))))))))))))))))
(let ((anon223_correct  (=> (= Mask@19 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@24) node_i@1 next (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@24) node_i@1 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@24) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@24) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@24))) (and (=> (= (ControlFlow 0 151) (- 0 154)) (forall ((n_22 T@Ref) ) (!  (=> (and (and (select g_1 n_22) (not (= n_22 node_i@1))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n_22 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5427:31|
 :skolemid |578|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n_22 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@25) n_22 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n_22 next))
))) (=> (forall ((n_22@@0 T@Ref) ) (!  (=> (and (and (select g_1 n_22@@0) (not (= n_22@@0 node_i@1))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n_22@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5427:31|
 :skolemid |578|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n_22@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@25) n_22@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n_22@@0 next))
)) (and (=> (= (ControlFlow 0 151) (- 0 153)) (forall ((n_22@@1 T@Ref) (n_22_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_22@@1 n_22_1)) (and (select g_1 n_22@@1) (not (= n_22@@1 node_i@1)))) (and (select g_1 n_22_1) (not (= n_22_1 node_i@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_22@@1 n_22_1)))
 :qid |stdinbpl.5434:31|
 :skolemid |579|
 :pattern ( (neverTriggered67 n_22@@1) (neverTriggered67 n_22_1))
))) (=> (forall ((n_22@@2 T@Ref) (n_22_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_22@@2 n_22_1@@0)) (and (select g_1 n_22@@2) (not (= n_22@@2 node_i@1)))) (and (select g_1 n_22_1@@0) (not (= n_22_1@@0 node_i@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_22@@2 n_22_1@@0)))
 :qid |stdinbpl.5434:31|
 :skolemid |579|
 :pattern ( (neverTriggered67 n_22@@2) (neverTriggered67 n_22_1@@0))
)) (and (=> (= (ControlFlow 0 151) (- 0 152)) (forall ((n_22@@3 T@Ref) ) (!  (=> (and (select g_1 n_22@@3) (not (= n_22@@3 node_i@1))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@19) n_22@@3 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.5441:31|
 :skolemid |580|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n_22@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@25) n_22@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n_22@@3 next))
))) (=> (forall ((n_22@@4 T@Ref) ) (!  (=> (and (select g_1 n_22@@4) (not (= n_22@@4 node_i@1))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@19) n_22@@4 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.5441:31|
 :skolemid |580|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n_22@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@25) n_22@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n_22@@4 next))
)) (=> (forall ((n_22@@5 T@Ref) ) (!  (=> (and (and (select g_1 n_22@@5) (not (= n_22@@5 node_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange67 n_22@@5) (= (invRecv67 n_22@@5) n_22@@5)))
 :qid |stdinbpl.5447:36|
 :skolemid |581|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n_22@@5 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@25) n_22@@5 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n_22@@5 next))
)) (=> (and (forall ((o_4@@17 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv67 o_4@@17)) (not (= (invRecv67 o_4@@17) node_i@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange67 o_4@@17))) (= (invRecv67 o_4@@17) o_4@@17))
 :qid |stdinbpl.5451:36|
 :skolemid |582|
 :pattern ( (invRecv67 o_4@@17))
)) (forall ((o_4@@18 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv67 o_4@@18)) (not (= (invRecv67 o_4@@18) node_i@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange67 o_4@@18))) (and (= (invRecv67 o_4@@18) o_4@@18) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@25) o_4@@18 next) (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@19) o_4@@18 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select g_1 (invRecv67 o_4@@18)) (not (= (invRecv67 o_4@@18) node_i@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange67 o_4@@18)))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@25) o_4@@18 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@19) o_4@@18 next))))
 :qid |stdinbpl.5457:36|
 :skolemid |583|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@25) o_4@@18 next))
))) (=> (and (and (and (forall ((o_4@@19 T@Ref) (f_5@@11 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@19) o_4@@19 f_5@@11) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@25) o_4@@19 f_5@@11)))
 :qid |stdinbpl.5463:43|
 :skolemid |584|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@25) o_4@@19 f_5@@11))
)) (forall ((o_4@@20 T@Ref) (f_5@@12 T@Field_58075_58076) ) (!  (=> (not (= f_5@@12 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@19) o_4@@20 f_5@@12) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@25) o_4@@20 f_5@@12)))
 :qid |stdinbpl.5463:43|
 :skolemid |584|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@25) o_4@@20 f_5@@12))
))) (forall ((o_4@@21 T@Ref) (f_5@@13 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@19) o_4@@21 f_5@@13) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@25) o_4@@21 f_5@@13)))
 :qid |stdinbpl.5463:43|
 :skolemid |584|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@25) o_4@@21 f_5@@13))
))) (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@19) o_4@@22 f_5@@14) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@25) o_4@@22 f_5@@14)))
 :qid |stdinbpl.5463:43|
 :skolemid |584|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@25) o_4@@22 f_5@@14))
))) (and (and (=> (= (ControlFlow 0 151) 147) anon391_Else_correct) (=> (= (ControlFlow 0 151) 137) anon392_Then_correct)) (=> (= (ControlFlow 0 151) 139) anon392_Else_correct))))))))))))))
(let ((anon390_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 157) 151)) anon223_correct)))
(let ((anon390_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 155) (- 0 156)) (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@24) node_i@1 next))) (=> (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@24) node_i@1 next)) (=> (= (ControlFlow 0 155) 151) anon223_correct))))))
(let ((anon221_correct  (and (=> (= (ControlFlow 0 158) (- 0 160)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 158) (- 0 159)) (select g_1 node_i@1)) (=> (select g_1 node_i@1) (and (=> (= (ControlFlow 0 158) 155) anon390_Then_correct) (=> (= (ControlFlow 0 158) 157) anon390_Else_correct))))))))
(let ((anon389_Else_correct  (=> (and (= vexit@0 null) (= (ControlFlow 0 163) 158)) anon221_correct)))
(let ((anon389_Then_correct  (=> (not (= vexit@0 null)) (and (=> (= (ControlFlow 0 161) (- 0 162)) (select g_1 vexit@0)) (=> (select g_1 vexit@0) (=> (= (ControlFlow 0 161) 158) anon221_correct))))))
(let ((anon219_correct  (=> (and (state ExhaleHeap@12 QPMask@24) (state ExhaleHeap@12 QPMask@24)) (and (=> (= (ControlFlow 0 164) (- 0 165)) (select g_1 node_i@1)) (=> (select g_1 node_i@1) (and (=> (= (ControlFlow 0 164) 161) anon389_Then_correct) (=> (= (ControlFlow 0 164) 163) anon389_Else_correct)))))))
(let ((anon388_Else_correct  (=> (and (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) node_i@1 next) null) (= (ControlFlow 0 167) 164)) anon219_correct)))
(let ((anon388_Then_correct  (=> (and (and (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) node_i@1 next) null)) (state ExhaleHeap@12 QPMask@24)) (and (forall ((v1_17 T@Ref) (v2_17 T@Ref) ) (!  (=> (not (= v1_17 v2_17)) (= (exists_path ($$ ExhaleHeap@12 g_1) v1_17 v2_17)  (and (exists_path ($$ Heap@0 g_1) v1_17 v2_17) (not (and (exists_path ($$ Heap@0 g_1) v1_17 node_i@1) (exists_path ($$ Heap@0 g_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) node_i@1 next) v2_17))))))
 :qid |stdinbpl.5392:36|
 :skolemid |577|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@12 g_1)) g_1) v1_17 v2_17))
)) (= (ControlFlow 0 166) 164))) anon219_correct)))
(let ((anon387_Else_correct  (=> (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) node_i@1 next) null) (and (=> (= (ControlFlow 0 169) 166) anon388_Then_correct) (=> (= (ControlFlow 0 169) 167) anon388_Else_correct)))))
(let ((anon387_Then_correct  (=> (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) node_i@1 next) null)) (=> (and (state ExhaleHeap@12 QPMask@24) (forall ((v1_16 T@Ref) (v2_16 T@Ref) ) (! (= (edge ($$ ExhaleHeap@12 g_1) v1_16 v2_16)  (and (edge ($$ Heap@0 g_1) v1_16 v2_16) (not (and (= v1_16 node_i@1) (= v2_16 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) node_i@1 next))))))
 :qid |stdinbpl.5385:36|
 :skolemid |576|
 :pattern ( (edge (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@12 g_1)) g_1) v1_16 v2_16))
))) (and (=> (= (ControlFlow 0 168) 166) anon388_Then_correct) (=> (= (ControlFlow 0 168) 167) anon388_Else_correct))))))
(let ((anon386_Else_correct  (=> (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) node_i@1 next) null)) (and (=> (= (ControlFlow 0 171) 168) anon387_Then_correct) (=> (= (ControlFlow 0 171) 169) anon387_Else_correct)))))
(let ((anon386_Then_correct  (=> (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) node_i@1 next) null) (=> (and (state ExhaleHeap@12 QPMask@24) (|Set#Equal_37937| ($$ ExhaleHeap@12 g_1) ($$ Heap@0 g_1))) (and (=> (= (ControlFlow 0 170) 168) anon387_Then_correct) (=> (= (ControlFlow 0 170) 169) anon387_Else_correct))))))
(let ((anon384_Else_correct  (=> (forall ((n$0_19_1 T@Ref) ) (!  (=> (and (select g_1 n$0_19_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n$0_19_1 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n$0_19_1 next)))
 :qid |stdinbpl.5318:34|
 :skolemid |567|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n$0_19_1 next)))
 :pattern ( (select g_1 n$0_19_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n$0_19_1 next))
)) (=> (and (IdenticalOnKnownLocations Heap@0 ExhaleHeap@12 QPMask@23) (not (select g_1 null))) (=> (and (and (select g_1 node_i@1) (not (= node_i@1 null))) (and (= Mask@18 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@23) node_i@1 next (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@23) node_i@1 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@23) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@23) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@23))) (state ExhaleHeap@12 Mask@18))) (and (=> (= (ControlFlow 0 172) (- 0 174)) (forall ((n$1_10 T@Ref) (n$1_10_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_10 n$1_10_1)) (and (select g_1 n$1_10) (not (= n$1_10 node_i@1)))) (and (select g_1 n$1_10_1) (not (= n$1_10_1 node_i@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_10 n$1_10_1)))
 :qid |stdinbpl.5336:29|
 :skolemid |568|
))) (=> (forall ((n$1_10@@0 T@Ref) (n$1_10_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_10@@0 n$1_10_1@@0)) (and (select g_1 n$1_10@@0) (not (= n$1_10@@0 node_i@1)))) (and (select g_1 n$1_10_1@@0) (not (= n$1_10_1@@0 node_i@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_10@@0 n$1_10_1@@0)))
 :qid |stdinbpl.5336:29|
 :skolemid |568|
)) (=> (and (forall ((n$1_10@@1 T@Ref) ) (!  (=> (and (and (select g_1 n$1_10@@1) (not (= n$1_10@@1 node_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange66 n$1_10@@1) (= (invRecv66 n$1_10@@1) n$1_10@@1)))
 :qid |stdinbpl.5342:36|
 :skolemid |569|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$1_10@@1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@24) n$1_10@@1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$1_10@@1 next))
)) (forall ((o_4@@23 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv66 o_4@@23)) (not (= (invRecv66 o_4@@23) node_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange66 o_4@@23)) (= (invRecv66 o_4@@23) o_4@@23))
 :qid |stdinbpl.5346:36|
 :skolemid |570|
 :pattern ( (invRecv66 o_4@@23))
))) (and (=> (= (ControlFlow 0 172) (- 0 173)) (forall ((n$1_10@@2 T@Ref) ) (!  (=> (and (select g_1 n$1_10@@2) (not (= n$1_10@@2 node_i@1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5352:29|
 :skolemid |571|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$1_10@@2 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@24) n$1_10@@2 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$1_10@@2 next))
))) (=> (forall ((n$1_10@@3 T@Ref) ) (!  (=> (and (select g_1 n$1_10@@3) (not (= n$1_10@@3 node_i@1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5352:29|
 :skolemid |571|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$1_10@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@24) n$1_10@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$1_10@@3 next))
)) (=> (and (forall ((n$1_10@@4 T@Ref) ) (!  (=> (and (and (select g_1 n$1_10@@4) (not (= n$1_10@@4 node_i@1))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$1_10@@4 null)))
 :qid |stdinbpl.5358:36|
 :skolemid |572|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$1_10@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@24) n$1_10@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$1_10@@4 next))
)) (forall ((o_4@@24 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv66 o_4@@24)) (not (= (invRecv66 o_4@@24) node_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange66 o_4@@24)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv66 o_4@@24) o_4@@24)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@24) o_4@@24 next) (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@18) o_4@@24 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv66 o_4@@24)) (not (= (invRecv66 o_4@@24) node_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange66 o_4@@24))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@24) o_4@@24 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@18) o_4@@24 next))))
 :qid |stdinbpl.5364:36|
 :skolemid |573|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@24) o_4@@24 next))
))) (=> (and (and (and (and (and (forall ((o_4@@25 T@Ref) (f_5@@15 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@18) o_4@@25 f_5@@15) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@24) o_4@@25 f_5@@15)))
 :qid |stdinbpl.5368:43|
 :skolemid |574|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@18) o_4@@25 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@24) o_4@@25 f_5@@15))
)) (forall ((o_4@@26 T@Ref) (f_5@@16 T@Field_58075_58076) ) (!  (=> (not (= f_5@@16 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@18) o_4@@26 f_5@@16) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@24) o_4@@26 f_5@@16)))
 :qid |stdinbpl.5368:43|
 :skolemid |574|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@18) o_4@@26 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@24) o_4@@26 f_5@@16))
))) (forall ((o_4@@27 T@Ref) (f_5@@17 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@18) o_4@@27 f_5@@17) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@24) o_4@@27 f_5@@17)))
 :qid |stdinbpl.5368:43|
 :skolemid |574|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@18) o_4@@27 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@24) o_4@@27 f_5@@17))
))) (forall ((o_4@@28 T@Ref) (f_5@@18 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@18) o_4@@28 f_5@@18) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@24) o_4@@28 f_5@@18)))
 :qid |stdinbpl.5368:43|
 :skolemid |574|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@18) o_4@@28 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@24) o_4@@28 f_5@@18))
))) (state ExhaleHeap@12 QPMask@24)) (and (forall ((n$2_12 T@Ref) ) (!  (=> (and (select g_1 n$2_12) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$2_12 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$2_12 next)))
 :qid |stdinbpl.5374:34|
 :skolemid |575|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$2_12 next)))
 :pattern ( (select g_1 n$2_12) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) n$2_12 next))
)) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@12) node_i@1 next) null))) (and (=> (= (ControlFlow 0 172) 170) anon386_Then_correct) (=> (= (ControlFlow 0 172) 171) anon386_Else_correct))))))))))))))
(let ((anon209_correct  (=> (= Mask@17 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@16) node_i@1 next (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@16) node_i@1 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@16) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@16) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@16))) (and (=> (= (ControlFlow 0 175) (- 0 178)) (forall ((n_21 T@Ref) ) (!  (=> (and (and (select g_1 n_21) (not (= n_21 node_i@1))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n_21 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5270:31|
 :skolemid |560|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n_21 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@23) n_21 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n_21 next))
))) (=> (forall ((n_21@@0 T@Ref) ) (!  (=> (and (and (select g_1 n_21@@0) (not (= n_21@@0 node_i@1))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n_21@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5270:31|
 :skolemid |560|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n_21@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@23) n_21@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n_21@@0 next))
)) (and (=> (= (ControlFlow 0 175) (- 0 177)) (forall ((n_21@@1 T@Ref) (n_21_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_21@@1 n_21_1)) (and (select g_1 n_21@@1) (not (= n_21@@1 node_i@1)))) (and (select g_1 n_21_1) (not (= n_21_1 node_i@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_21@@1 n_21_1)))
 :qid |stdinbpl.5277:31|
 :skolemid |561|
 :pattern ( (neverTriggered65 n_21@@1) (neverTriggered65 n_21_1))
))) (=> (forall ((n_21@@2 T@Ref) (n_21_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_21@@2 n_21_1@@0)) (and (select g_1 n_21@@2) (not (= n_21@@2 node_i@1)))) (and (select g_1 n_21_1@@0) (not (= n_21_1@@0 node_i@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_21@@2 n_21_1@@0)))
 :qid |stdinbpl.5277:31|
 :skolemid |561|
 :pattern ( (neverTriggered65 n_21@@2) (neverTriggered65 n_21_1@@0))
)) (and (=> (= (ControlFlow 0 175) (- 0 176)) (forall ((n_21@@3 T@Ref) ) (!  (=> (and (select g_1 n_21@@3) (not (= n_21@@3 node_i@1))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@17) n_21@@3 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.5284:31|
 :skolemid |562|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n_21@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@23) n_21@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n_21@@3 next))
))) (=> (forall ((n_21@@4 T@Ref) ) (!  (=> (and (select g_1 n_21@@4) (not (= n_21@@4 node_i@1))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@17) n_21@@4 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.5284:31|
 :skolemid |562|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n_21@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@23) n_21@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n_21@@4 next))
)) (=> (forall ((n_21@@5 T@Ref) ) (!  (=> (and (and (select g_1 n_21@@5) (not (= n_21@@5 node_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange65 n_21@@5) (= (invRecv65 n_21@@5) n_21@@5)))
 :qid |stdinbpl.5290:36|
 :skolemid |563|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n_21@@5 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@23) n_21@@5 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@0) n_21@@5 next))
)) (=> (and (forall ((o_4@@29 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv65 o_4@@29)) (not (= (invRecv65 o_4@@29) node_i@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange65 o_4@@29))) (= (invRecv65 o_4@@29) o_4@@29))
 :qid |stdinbpl.5294:36|
 :skolemid |564|
 :pattern ( (invRecv65 o_4@@29))
)) (forall ((o_4@@30 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv65 o_4@@30)) (not (= (invRecv65 o_4@@30) node_i@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange65 o_4@@30))) (and (= (invRecv65 o_4@@30) o_4@@30) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@23) o_4@@30 next) (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@17) o_4@@30 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select g_1 (invRecv65 o_4@@30)) (not (= (invRecv65 o_4@@30) node_i@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange65 o_4@@30)))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@23) o_4@@30 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@17) o_4@@30 next))))
 :qid |stdinbpl.5300:36|
 :skolemid |565|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@23) o_4@@30 next))
))) (=> (and (and (and (forall ((o_4@@31 T@Ref) (f_5@@19 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@17) o_4@@31 f_5@@19) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@23) o_4@@31 f_5@@19)))
 :qid |stdinbpl.5306:43|
 :skolemid |566|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@23) o_4@@31 f_5@@19))
)) (forall ((o_4@@32 T@Ref) (f_5@@20 T@Field_58075_58076) ) (!  (=> (not (= f_5@@20 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@17) o_4@@32 f_5@@20) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@23) o_4@@32 f_5@@20)))
 :qid |stdinbpl.5306:43|
 :skolemid |566|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@23) o_4@@32 f_5@@20))
))) (forall ((o_4@@33 T@Ref) (f_5@@21 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@17) o_4@@33 f_5@@21) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@23) o_4@@33 f_5@@21)))
 :qid |stdinbpl.5306:43|
 :skolemid |566|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@23) o_4@@33 f_5@@21))
))) (forall ((o_4@@34 T@Ref) (f_5@@22 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@17) o_4@@34 f_5@@22) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@23) o_4@@34 f_5@@22)))
 :qid |stdinbpl.5306:43|
 :skolemid |566|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@23) o_4@@34 f_5@@22))
))) (and (and (=> (= (ControlFlow 0 175) 172) anon384_Else_correct) (=> (= (ControlFlow 0 175) 133) anon385_Then_correct)) (=> (= (ControlFlow 0 175) 135) anon385_Else_correct))))))))))))))
(let ((anon383_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 181) 175)) anon209_correct)))
(let ((anon383_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 179) (- 0 180)) (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@16) node_i@1 next))) (=> (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@16) node_i@1 next)) (=> (= (ControlFlow 0 179) 175) anon209_correct))))))
(let ((anon207_correct  (=> (state Heap@0 Mask@16) (and (=> (= (ControlFlow 0 182) (- 0 185)) (select g_1 node_i@1)) (=> (select g_1 node_i@1) (and (=> (= (ControlFlow 0 182) (- 0 184)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 182) (- 0 183)) (select g_1 node_i@1)) (=> (select g_1 node_i@1) (and (=> (= (ControlFlow 0 182) 179) anon383_Then_correct) (=> (= (ControlFlow 0 182) 181) anon383_Else_correct)))))))))))
(let ((anon179_correct  (=> (state ExhaleHeap@11 QPMask@22) (=> (and (and (state ExhaleHeap@11 QPMask@22) (= Mask@16 QPMask@22)) (and (= Heap@0 ExhaleHeap@11) (= (ControlFlow 0 248) 182))) anon207_correct))))
(let ((anon369_Else_correct  (=> (and (= node_i@1 null) (= (ControlFlow 0 250) 248)) anon179_correct)))
(let ((anon369_Then_correct  (=> (and (and (not (= node_i@1 null)) (state ExhaleHeap@11 QPMask@22)) (and (forall ((v1_11 T@Ref) (v2_11 T@Ref) ) (!  (=> (not (= v1_11 v2_11)) (= (exists_path ($$ ExhaleHeap@11 g_1) v1_11 v2_11)  (or (exists_path ($$ ExhaleHeap@10 g_1) v1_11 v2_11) (and (exists_path ($$ ExhaleHeap@10 g_1) v1_11 prev_node@0) (exists_path ($$ ExhaleHeap@10 g_1) node_i@1 v2_11)))))
 :qid |stdinbpl.4924:40|
 :skolemid |523|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@11 g_1)) g_1) v1_11 v2_11))
)) (= (ControlFlow 0 249) 248))) anon179_correct)))
(let ((anon368_Else_correct  (=> (= node_i@1 null) (and (=> (= (ControlFlow 0 252) 249) anon369_Then_correct) (=> (= (ControlFlow 0 252) 250) anon369_Else_correct)))))
(let ((anon368_Then_correct  (=> (not (= node_i@1 null)) (=> (and (state ExhaleHeap@11 QPMask@22) (forall ((v1_10 T@Ref) (v2_10 T@Ref) ) (! (= (edge ($$ ExhaleHeap@11 g_1) v1_10 v2_10)  (or (edge ($$ ExhaleHeap@10 g_1) v1_10 v2_10) (and (= v1_10 prev_node@0) (= v2_10 node_i@1))))
 :qid |stdinbpl.4917:40|
 :skolemid |522|
 :pattern ( (edge (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@10 g_1)) g_1) v1_10 v2_10))
))) (and (=> (= (ControlFlow 0 251) 249) anon369_Then_correct) (=> (= (ControlFlow 0 251) 250) anon369_Else_correct))))))
(let ((anon367_Else_correct  (=> (not (= node_i@1 null)) (and (=> (= (ControlFlow 0 254) 251) anon368_Then_correct) (=> (= (ControlFlow 0 254) 252) anon368_Else_correct)))))
(let ((anon367_Then_correct  (=> (= node_i@1 null) (=> (and (state ExhaleHeap@11 QPMask@22) (|Set#Equal_37937| ($$ ExhaleHeap@11 g_1) ($$ ExhaleHeap@10 g_1))) (and (=> (= (ControlFlow 0 253) 251) anon368_Then_correct) (=> (= (ControlFlow 0 253) 252) anon368_Else_correct))))))
(let ((anon365_Else_correct  (=> (forall ((n$0_13_1 T@Ref) ) (!  (=> (and (select g_1 n$0_13_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$0_13_1 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$0_13_1 next)))
 :qid |stdinbpl.4848:38|
 :skolemid |513|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$0_13_1 next)))
 :pattern ( (select g_1 n$0_13_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$0_13_1 next))
)) (and (=> (= (ControlFlow 0 255) (- 0 258)) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) prev_node@0 next) null)) (=> (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) prev_node@0 next) null) (=> (and (IdenticalOnKnownLocations ExhaleHeap@10 ExhaleHeap@11 QPMask@21) (not (select g_1 null))) (=> (and (and (select g_1 prev_node@0) (not (= prev_node@0 null))) (and (= Mask@15 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@21) prev_node@0 next (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@21) prev_node@0 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@21) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@21) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@21))) (state ExhaleHeap@11 Mask@15))) (and (=> (= (ControlFlow 0 255) (- 0 257)) (forall ((n$1_7 T@Ref) (n$1_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_7 n$1_7_1)) (and (select g_1 n$1_7) (not (= n$1_7 prev_node@0)))) (and (select g_1 n$1_7_1) (not (= n$1_7_1 prev_node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_7 n$1_7_1)))
 :qid |stdinbpl.4868:33|
 :skolemid |514|
))) (=> (forall ((n$1_7@@0 T@Ref) (n$1_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_7@@0 n$1_7_1@@0)) (and (select g_1 n$1_7@@0) (not (= n$1_7@@0 prev_node@0)))) (and (select g_1 n$1_7_1@@0) (not (= n$1_7_1@@0 prev_node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_7@@0 n$1_7_1@@0)))
 :qid |stdinbpl.4868:33|
 :skolemid |514|
)) (=> (and (forall ((n$1_7@@1 T@Ref) ) (!  (=> (and (and (select g_1 n$1_7@@1) (not (= n$1_7@@1 prev_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange60 n$1_7@@1) (= (invRecv60 n$1_7@@1) n$1_7@@1)))
 :qid |stdinbpl.4874:40|
 :skolemid |515|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@11) n$1_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@22) n$1_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@11) n$1_7@@1 next))
)) (forall ((o_4@@35 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv60 o_4@@35)) (not (= (invRecv60 o_4@@35) prev_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange60 o_4@@35)) (= (invRecv60 o_4@@35) o_4@@35))
 :qid |stdinbpl.4878:40|
 :skolemid |516|
 :pattern ( (invRecv60 o_4@@35))
))) (and (=> (= (ControlFlow 0 255) (- 0 256)) (forall ((n$1_7@@2 T@Ref) ) (!  (=> (and (select g_1 n$1_7@@2) (not (= n$1_7@@2 prev_node@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4884:33|
 :skolemid |517|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@11) n$1_7@@2 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@22) n$1_7@@2 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@11) n$1_7@@2 next))
))) (=> (forall ((n$1_7@@3 T@Ref) ) (!  (=> (and (select g_1 n$1_7@@3) (not (= n$1_7@@3 prev_node@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4884:33|
 :skolemid |517|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@11) n$1_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@22) n$1_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@11) n$1_7@@3 next))
)) (=> (and (forall ((n$1_7@@4 T@Ref) ) (!  (=> (and (and (select g_1 n$1_7@@4) (not (= n$1_7@@4 prev_node@0))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$1_7@@4 null)))
 :qid |stdinbpl.4890:40|
 :skolemid |518|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@11) n$1_7@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@22) n$1_7@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@11) n$1_7@@4 next))
)) (forall ((o_4@@36 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv60 o_4@@36)) (not (= (invRecv60 o_4@@36) prev_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange60 o_4@@36)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv60 o_4@@36) o_4@@36)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@22) o_4@@36 next) (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@15) o_4@@36 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv60 o_4@@36)) (not (= (invRecv60 o_4@@36) prev_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange60 o_4@@36))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@22) o_4@@36 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@15) o_4@@36 next))))
 :qid |stdinbpl.4896:40|
 :skolemid |519|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@22) o_4@@36 next))
))) (=> (and (and (and (and (and (forall ((o_4@@37 T@Ref) (f_5@@23 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@15) o_4@@37 f_5@@23) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@22) o_4@@37 f_5@@23)))
 :qid |stdinbpl.4900:47|
 :skolemid |520|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@15) o_4@@37 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@22) o_4@@37 f_5@@23))
)) (forall ((o_4@@38 T@Ref) (f_5@@24 T@Field_58075_58076) ) (!  (=> (not (= f_5@@24 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@15) o_4@@38 f_5@@24) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@22) o_4@@38 f_5@@24)))
 :qid |stdinbpl.4900:47|
 :skolemid |520|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@15) o_4@@38 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@22) o_4@@38 f_5@@24))
))) (forall ((o_4@@39 T@Ref) (f_5@@25 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@15) o_4@@39 f_5@@25) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@22) o_4@@39 f_5@@25)))
 :qid |stdinbpl.4900:47|
 :skolemid |520|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@15) o_4@@39 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@22) o_4@@39 f_5@@25))
))) (forall ((o_4@@40 T@Ref) (f_5@@26 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@15) o_4@@40 f_5@@26) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@22) o_4@@40 f_5@@26)))
 :qid |stdinbpl.4900:47|
 :skolemid |520|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@15) o_4@@40 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@22) o_4@@40 f_5@@26))
))) (state ExhaleHeap@11 QPMask@22)) (and (forall ((n$2_9 T@Ref) ) (!  (=> (and (select g_1 n$2_9) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@11) n$2_9 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@11) n$2_9 next)))
 :qid |stdinbpl.4906:38|
 :skolemid |521|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@11) n$2_9 next)))
 :pattern ( (select g_1 n$2_9) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@11) n$2_9 next))
)) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@11) prev_node@0 next) node_i@1))) (and (=> (= (ControlFlow 0 255) 253) anon367_Then_correct) (=> (= (ControlFlow 0 255) 254) anon367_Else_correct))))))))))))))))
(let ((anon169_correct  (=> (= Mask@14 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@20) prev_node@0 next (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@20) prev_node@0 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@20) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@20) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@20))) (and (=> (= (ControlFlow 0 259) (- 0 262)) (forall ((n_18 T@Ref) ) (!  (=> (and (and (select g_1 n_18) (not (= n_18 prev_node@0))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n_18 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4800:35|
 :skolemid |506|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n_18 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@21) n_18 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n_18 next))
))) (=> (forall ((n_18@@0 T@Ref) ) (!  (=> (and (and (select g_1 n_18@@0) (not (= n_18@@0 prev_node@0))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n_18@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4800:35|
 :skolemid |506|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n_18@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@21) n_18@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n_18@@0 next))
)) (and (=> (= (ControlFlow 0 259) (- 0 261)) (forall ((n_18@@1 T@Ref) (n_18_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_18@@1 n_18_1)) (and (select g_1 n_18@@1) (not (= n_18@@1 prev_node@0)))) (and (select g_1 n_18_1) (not (= n_18_1 prev_node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_18@@1 n_18_1)))
 :qid |stdinbpl.4807:35|
 :skolemid |507|
 :pattern ( (neverTriggered59 n_18@@1) (neverTriggered59 n_18_1))
))) (=> (forall ((n_18@@2 T@Ref) (n_18_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_18@@2 n_18_1@@0)) (and (select g_1 n_18@@2) (not (= n_18@@2 prev_node@0)))) (and (select g_1 n_18_1@@0) (not (= n_18_1@@0 prev_node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_18@@2 n_18_1@@0)))
 :qid |stdinbpl.4807:35|
 :skolemid |507|
 :pattern ( (neverTriggered59 n_18@@2) (neverTriggered59 n_18_1@@0))
)) (and (=> (= (ControlFlow 0 259) (- 0 260)) (forall ((n_18@@3 T@Ref) ) (!  (=> (and (select g_1 n_18@@3) (not (= n_18@@3 prev_node@0))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@14) n_18@@3 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4814:35|
 :skolemid |508|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n_18@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@21) n_18@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n_18@@3 next))
))) (=> (forall ((n_18@@4 T@Ref) ) (!  (=> (and (select g_1 n_18@@4) (not (= n_18@@4 prev_node@0))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@14) n_18@@4 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4814:35|
 :skolemid |508|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n_18@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@21) n_18@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n_18@@4 next))
)) (=> (forall ((n_18@@5 T@Ref) ) (!  (=> (and (and (select g_1 n_18@@5) (not (= n_18@@5 prev_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange59 n_18@@5) (= (invRecv59 n_18@@5) n_18@@5)))
 :qid |stdinbpl.4820:40|
 :skolemid |509|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n_18@@5 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@21) n_18@@5 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n_18@@5 next))
)) (=> (and (forall ((o_4@@41 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv59 o_4@@41)) (not (= (invRecv59 o_4@@41) prev_node@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange59 o_4@@41))) (= (invRecv59 o_4@@41) o_4@@41))
 :qid |stdinbpl.4824:40|
 :skolemid |510|
 :pattern ( (invRecv59 o_4@@41))
)) (forall ((o_4@@42 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv59 o_4@@42)) (not (= (invRecv59 o_4@@42) prev_node@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange59 o_4@@42))) (and (= (invRecv59 o_4@@42) o_4@@42) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@21) o_4@@42 next) (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@14) o_4@@42 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select g_1 (invRecv59 o_4@@42)) (not (= (invRecv59 o_4@@42) prev_node@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange59 o_4@@42)))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@21) o_4@@42 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@14) o_4@@42 next))))
 :qid |stdinbpl.4830:40|
 :skolemid |511|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@21) o_4@@42 next))
))) (=> (and (and (and (forall ((o_4@@43 T@Ref) (f_5@@27 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@14) o_4@@43 f_5@@27) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@21) o_4@@43 f_5@@27)))
 :qid |stdinbpl.4836:47|
 :skolemid |512|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@21) o_4@@43 f_5@@27))
)) (forall ((o_4@@44 T@Ref) (f_5@@28 T@Field_58075_58076) ) (!  (=> (not (= f_5@@28 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@14) o_4@@44 f_5@@28) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@21) o_4@@44 f_5@@28)))
 :qid |stdinbpl.4836:47|
 :skolemid |512|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@21) o_4@@44 f_5@@28))
))) (forall ((o_4@@45 T@Ref) (f_5@@29 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@14) o_4@@45 f_5@@29) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@21) o_4@@45 f_5@@29)))
 :qid |stdinbpl.4836:47|
 :skolemid |512|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@21) o_4@@45 f_5@@29))
))) (forall ((o_4@@46 T@Ref) (f_5@@30 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@14) o_4@@46 f_5@@30) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@21) o_4@@46 f_5@@30)))
 :qid |stdinbpl.4836:47|
 :skolemid |512|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@21) o_4@@46 f_5@@30))
))) (and (and (=> (= (ControlFlow 0 259) 255) anon365_Else_correct) (=> (= (ControlFlow 0 259) 245) anon366_Then_correct)) (=> (= (ControlFlow 0 259) 247) anon366_Else_correct))))))))))))))
(let ((anon364_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 265) 259)) anon169_correct)))
(let ((anon364_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 263) (- 0 264)) (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@20) prev_node@0 next))) (=> (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@20) prev_node@0 next)) (=> (= (ControlFlow 0 263) 259) anon169_correct))))))
(let ((anon167_correct  (and (=> (= (ControlFlow 0 266) (- 0 268)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 266) (- 0 267)) (select g_1 prev_node@0)) (=> (select g_1 prev_node@0) (and (=> (= (ControlFlow 0 266) 263) anon364_Then_correct) (=> (= (ControlFlow 0 266) 265) anon364_Else_correct))))))))
(let ((anon363_Else_correct  (=> (and (= node_i@1 null) (= (ControlFlow 0 271) 266)) anon167_correct)))
(let ((anon363_Then_correct  (=> (not (= node_i@1 null)) (and (=> (= (ControlFlow 0 269) (- 0 270)) (select g_1 node_i@1)) (=> (select g_1 node_i@1) (=> (= (ControlFlow 0 269) 266) anon167_correct))))))
(let ((anon165_correct  (=> (and (state ExhaleHeap@10 QPMask@20) (state ExhaleHeap@10 QPMask@20)) (and (=> (= (ControlFlow 0 272) (- 0 273)) (select g_1 prev_node@0)) (=> (select g_1 prev_node@0) (and (=> (= (ControlFlow 0 272) 269) anon363_Then_correct) (=> (= (ControlFlow 0 272) 271) anon363_Else_correct)))))))
(let ((anon362_Else_correct  (=> (and (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) prev_node@0 next) null) (= (ControlFlow 0 275) 272)) anon165_correct)))
(let ((anon362_Then_correct  (=> (and (and (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) prev_node@0 next) null)) (state ExhaleHeap@10 QPMask@20)) (and (forall ((v1_9 T@Ref) (v2_9 T@Ref) ) (!  (=> (not (= v1_9 v2_9)) (= (exists_path ($$ ExhaleHeap@10 g_1) v1_9 v2_9)  (and (exists_path ($$ ExhaleHeap@9 g_1) v1_9 v2_9) (not (and (exists_path ($$ ExhaleHeap@9 g_1) v1_9 prev_node@0) (exists_path ($$ ExhaleHeap@9 g_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) prev_node@0 next) v2_9))))))
 :qid |stdinbpl.4765:40|
 :skolemid |505|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@10 g_1)) g_1) v1_9 v2_9))
)) (= (ControlFlow 0 274) 272))) anon165_correct)))
(let ((anon361_Else_correct  (=> (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) prev_node@0 next) null) (and (=> (= (ControlFlow 0 277) 274) anon362_Then_correct) (=> (= (ControlFlow 0 277) 275) anon362_Else_correct)))))
(let ((anon361_Then_correct  (=> (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) prev_node@0 next) null)) (=> (and (state ExhaleHeap@10 QPMask@20) (forall ((v1_8 T@Ref) (v2_8 T@Ref) ) (! (= (edge ($$ ExhaleHeap@10 g_1) v1_8 v2_8)  (and (edge ($$ ExhaleHeap@9 g_1) v1_8 v2_8) (not (and (= v1_8 prev_node@0) (= v2_8 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) prev_node@0 next))))))
 :qid |stdinbpl.4758:40|
 :skolemid |504|
 :pattern ( (edge (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@10 g_1)) g_1) v1_8 v2_8))
))) (and (=> (= (ControlFlow 0 276) 274) anon362_Then_correct) (=> (= (ControlFlow 0 276) 275) anon362_Else_correct))))))
(let ((anon360_Else_correct  (=> (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) prev_node@0 next) null)) (and (=> (= (ControlFlow 0 279) 276) anon361_Then_correct) (=> (= (ControlFlow 0 279) 277) anon361_Else_correct)))))
(let ((anon360_Then_correct  (=> (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) prev_node@0 next) null) (=> (and (state ExhaleHeap@10 QPMask@20) (|Set#Equal_37937| ($$ ExhaleHeap@10 g_1) ($$ ExhaleHeap@9 g_1))) (and (=> (= (ControlFlow 0 278) 276) anon361_Then_correct) (=> (= (ControlFlow 0 278) 277) anon361_Else_correct))))))
(let ((anon358_Else_correct  (=> (forall ((n$0_11_1 T@Ref) ) (!  (=> (and (select g_1 n$0_11_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$0_11_1 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$0_11_1 next)))
 :qid |stdinbpl.4691:38|
 :skolemid |495|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$0_11_1 next)))
 :pattern ( (select g_1 n$0_11_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$0_11_1 next))
)) (=> (and (IdenticalOnKnownLocations ExhaleHeap@9 ExhaleHeap@10 QPMask@19) (not (select g_1 null))) (=> (and (and (select g_1 prev_node@0) (not (= prev_node@0 null))) (and (= Mask@13 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@19) prev_node@0 next (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@19) prev_node@0 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@19) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@19) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@19))) (state ExhaleHeap@10 Mask@13))) (and (=> (= (ControlFlow 0 280) (- 0 282)) (forall ((n$1_6 T@Ref) (n$1_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_6 n$1_6_1)) (and (select g_1 n$1_6) (not (= n$1_6 prev_node@0)))) (and (select g_1 n$1_6_1) (not (= n$1_6_1 prev_node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_6 n$1_6_1)))
 :qid |stdinbpl.4709:33|
 :skolemid |496|
))) (=> (forall ((n$1_6@@0 T@Ref) (n$1_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_6@@0 n$1_6_1@@0)) (and (select g_1 n$1_6@@0) (not (= n$1_6@@0 prev_node@0)))) (and (select g_1 n$1_6_1@@0) (not (= n$1_6_1@@0 prev_node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_6@@0 n$1_6_1@@0)))
 :qid |stdinbpl.4709:33|
 :skolemid |496|
)) (=> (and (forall ((n$1_6@@1 T@Ref) ) (!  (=> (and (and (select g_1 n$1_6@@1) (not (= n$1_6@@1 prev_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange58 n$1_6@@1) (= (invRecv58 n$1_6@@1) n$1_6@@1)))
 :qid |stdinbpl.4715:40|
 :skolemid |497|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$1_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@20) n$1_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$1_6@@1 next))
)) (forall ((o_4@@47 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv58 o_4@@47)) (not (= (invRecv58 o_4@@47) prev_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange58 o_4@@47)) (= (invRecv58 o_4@@47) o_4@@47))
 :qid |stdinbpl.4719:40|
 :skolemid |498|
 :pattern ( (invRecv58 o_4@@47))
))) (and (=> (= (ControlFlow 0 280) (- 0 281)) (forall ((n$1_6@@2 T@Ref) ) (!  (=> (and (select g_1 n$1_6@@2) (not (= n$1_6@@2 prev_node@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4725:33|
 :skolemid |499|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$1_6@@2 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@20) n$1_6@@2 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$1_6@@2 next))
))) (=> (forall ((n$1_6@@3 T@Ref) ) (!  (=> (and (select g_1 n$1_6@@3) (not (= n$1_6@@3 prev_node@0))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4725:33|
 :skolemid |499|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$1_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@20) n$1_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$1_6@@3 next))
)) (=> (and (forall ((n$1_6@@4 T@Ref) ) (!  (=> (and (and (select g_1 n$1_6@@4) (not (= n$1_6@@4 prev_node@0))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$1_6@@4 null)))
 :qid |stdinbpl.4731:40|
 :skolemid |500|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$1_6@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@20) n$1_6@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$1_6@@4 next))
)) (forall ((o_4@@48 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv58 o_4@@48)) (not (= (invRecv58 o_4@@48) prev_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange58 o_4@@48)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv58 o_4@@48) o_4@@48)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@20) o_4@@48 next) (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@13) o_4@@48 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv58 o_4@@48)) (not (= (invRecv58 o_4@@48) prev_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange58 o_4@@48))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@20) o_4@@48 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@13) o_4@@48 next))))
 :qid |stdinbpl.4737:40|
 :skolemid |501|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@20) o_4@@48 next))
))) (=> (and (and (and (and (and (forall ((o_4@@49 T@Ref) (f_5@@31 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@13) o_4@@49 f_5@@31) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@20) o_4@@49 f_5@@31)))
 :qid |stdinbpl.4741:47|
 :skolemid |502|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@13) o_4@@49 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@20) o_4@@49 f_5@@31))
)) (forall ((o_4@@50 T@Ref) (f_5@@32 T@Field_58075_58076) ) (!  (=> (not (= f_5@@32 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@13) o_4@@50 f_5@@32) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@20) o_4@@50 f_5@@32)))
 :qid |stdinbpl.4741:47|
 :skolemid |502|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@13) o_4@@50 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@20) o_4@@50 f_5@@32))
))) (forall ((o_4@@51 T@Ref) (f_5@@33 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@13) o_4@@51 f_5@@33) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@20) o_4@@51 f_5@@33)))
 :qid |stdinbpl.4741:47|
 :skolemid |502|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@13) o_4@@51 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@20) o_4@@51 f_5@@33))
))) (forall ((o_4@@52 T@Ref) (f_5@@34 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@13) o_4@@52 f_5@@34) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@20) o_4@@52 f_5@@34)))
 :qid |stdinbpl.4741:47|
 :skolemid |502|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@13) o_4@@52 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@20) o_4@@52 f_5@@34))
))) (state ExhaleHeap@10 QPMask@20)) (and (forall ((n$2_8 T@Ref) ) (!  (=> (and (select g_1 n$2_8) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$2_8 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$2_8 next)))
 :qid |stdinbpl.4747:38|
 :skolemid |503|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$2_8 next)))
 :pattern ( (select g_1 n$2_8) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) n$2_8 next))
)) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@10) prev_node@0 next) null))) (and (=> (= (ControlFlow 0 280) 278) anon360_Then_correct) (=> (= (ControlFlow 0 280) 279) anon360_Else_correct))))))))))))))
(let ((anon155_correct  (=> (= Mask@12 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@18) prev_node@0 next (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@18) prev_node@0 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@18) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@18) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@18))) (and (=> (= (ControlFlow 0 283) (- 0 286)) (forall ((n_17 T@Ref) ) (!  (=> (and (and (select g_1 n_17) (not (= n_17 prev_node@0))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n_17 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4643:35|
 :skolemid |488|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n_17 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@19) n_17 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n_17 next))
))) (=> (forall ((n_17@@0 T@Ref) ) (!  (=> (and (and (select g_1 n_17@@0) (not (= n_17@@0 prev_node@0))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n_17@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4643:35|
 :skolemid |488|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n_17@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@19) n_17@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n_17@@0 next))
)) (and (=> (= (ControlFlow 0 283) (- 0 285)) (forall ((n_17@@1 T@Ref) (n_17_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_17@@1 n_17_1)) (and (select g_1 n_17@@1) (not (= n_17@@1 prev_node@0)))) (and (select g_1 n_17_1) (not (= n_17_1 prev_node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_17@@1 n_17_1)))
 :qid |stdinbpl.4650:35|
 :skolemid |489|
 :pattern ( (neverTriggered57 n_17@@1) (neverTriggered57 n_17_1))
))) (=> (forall ((n_17@@2 T@Ref) (n_17_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_17@@2 n_17_1@@0)) (and (select g_1 n_17@@2) (not (= n_17@@2 prev_node@0)))) (and (select g_1 n_17_1@@0) (not (= n_17_1@@0 prev_node@0)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_17@@2 n_17_1@@0)))
 :qid |stdinbpl.4650:35|
 :skolemid |489|
 :pattern ( (neverTriggered57 n_17@@2) (neverTriggered57 n_17_1@@0))
)) (and (=> (= (ControlFlow 0 283) (- 0 284)) (forall ((n_17@@3 T@Ref) ) (!  (=> (and (select g_1 n_17@@3) (not (= n_17@@3 prev_node@0))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@12) n_17@@3 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4657:35|
 :skolemid |490|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n_17@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@19) n_17@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n_17@@3 next))
))) (=> (forall ((n_17@@4 T@Ref) ) (!  (=> (and (select g_1 n_17@@4) (not (= n_17@@4 prev_node@0))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@12) n_17@@4 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4657:35|
 :skolemid |490|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n_17@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@19) n_17@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n_17@@4 next))
)) (=> (forall ((n_17@@5 T@Ref) ) (!  (=> (and (and (select g_1 n_17@@5) (not (= n_17@@5 prev_node@0))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange57 n_17@@5) (= (invRecv57 n_17@@5) n_17@@5)))
 :qid |stdinbpl.4663:40|
 :skolemid |491|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n_17@@5 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@19) n_17@@5 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n_17@@5 next))
)) (=> (and (forall ((o_4@@53 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv57 o_4@@53)) (not (= (invRecv57 o_4@@53) prev_node@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange57 o_4@@53))) (= (invRecv57 o_4@@53) o_4@@53))
 :qid |stdinbpl.4667:40|
 :skolemid |492|
 :pattern ( (invRecv57 o_4@@53))
)) (forall ((o_4@@54 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv57 o_4@@54)) (not (= (invRecv57 o_4@@54) prev_node@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange57 o_4@@54))) (and (= (invRecv57 o_4@@54) o_4@@54) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@19) o_4@@54 next) (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@12) o_4@@54 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select g_1 (invRecv57 o_4@@54)) (not (= (invRecv57 o_4@@54) prev_node@0))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange57 o_4@@54)))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@19) o_4@@54 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@12) o_4@@54 next))))
 :qid |stdinbpl.4673:40|
 :skolemid |493|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@19) o_4@@54 next))
))) (=> (and (and (and (forall ((o_4@@55 T@Ref) (f_5@@35 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@12) o_4@@55 f_5@@35) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@19) o_4@@55 f_5@@35)))
 :qid |stdinbpl.4679:47|
 :skolemid |494|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@19) o_4@@55 f_5@@35))
)) (forall ((o_4@@56 T@Ref) (f_5@@36 T@Field_58075_58076) ) (!  (=> (not (= f_5@@36 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@12) o_4@@56 f_5@@36) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@19) o_4@@56 f_5@@36)))
 :qid |stdinbpl.4679:47|
 :skolemid |494|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@19) o_4@@56 f_5@@36))
))) (forall ((o_4@@57 T@Ref) (f_5@@37 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@12) o_4@@57 f_5@@37) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@19) o_4@@57 f_5@@37)))
 :qid |stdinbpl.4679:47|
 :skolemid |494|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@19) o_4@@57 f_5@@37))
))) (forall ((o_4@@58 T@Ref) (f_5@@38 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@12) o_4@@58 f_5@@38) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@19) o_4@@58 f_5@@38)))
 :qid |stdinbpl.4679:47|
 :skolemid |494|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@19) o_4@@58 f_5@@38))
))) (and (and (=> (= (ControlFlow 0 283) 280) anon358_Else_correct) (=> (= (ControlFlow 0 283) 241) anon359_Then_correct)) (=> (= (ControlFlow 0 283) 243) anon359_Else_correct))))))))))))))
(let ((anon357_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 289) 283)) anon155_correct)))
(let ((anon357_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 287) (- 0 288)) (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@18) prev_node@0 next))) (=> (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@18) prev_node@0 next)) (=> (= (ControlFlow 0 287) 283) anon155_correct))))))
(let ((anon153_correct  (=> (and (state ExhaleHeap@9 QPMask@18) (state ExhaleHeap@9 QPMask@18)) (and (=> (= (ControlFlow 0 290) (- 0 293)) (select g_1 prev_node@0)) (=> (select g_1 prev_node@0) (and (=> (= (ControlFlow 0 290) (- 0 292)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 290) (- 0 291)) (select g_1 prev_node@0)) (=> (select g_1 prev_node@0) (and (=> (= (ControlFlow 0 290) 287) anon357_Then_correct) (=> (= (ControlFlow 0 290) 289) anon357_Else_correct)))))))))))
(let ((anon356_Else_correct  (=> (and (= arg_y@0 null) (= (ControlFlow 0 295) 290)) anon153_correct)))
(let ((anon356_Then_correct  (=> (and (and (not (= arg_y@0 null)) (state ExhaleHeap@9 QPMask@18)) (and (forall ((v1_7_2 T@Ref) (v2_7_2 T@Ref) ) (!  (=> (not (= v1_7_2 v2_7_2)) (= (exists_path ($$ ExhaleHeap@9 g_1) v1_7_2 v2_7_2)  (or (exists_path ($$ ExhaleHeap@8 g_1) v1_7_2 v2_7_2) (and (exists_path ($$ ExhaleHeap@8 g_1) v1_7_2 node@1) (exists_path ($$ ExhaleHeap@8 g_1) arg_y@0 v2_7_2)))))
 :qid |stdinbpl.4612:40|
 :skolemid |487|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@9 g_1)) g_1) v1_7_2 v2_7_2))
)) (= (ControlFlow 0 294) 290))) anon153_correct)))
(let ((anon355_Else_correct  (=> (= arg_y@0 null) (and (=> (= (ControlFlow 0 297) 294) anon356_Then_correct) (=> (= (ControlFlow 0 297) 295) anon356_Else_correct)))))
(let ((anon355_Then_correct  (=> (not (= arg_y@0 null)) (=> (and (state ExhaleHeap@9 QPMask@18) (forall ((v1_6 T@Ref) (v2_6 T@Ref) ) (! (= (edge ($$ ExhaleHeap@9 g_1) v1_6 v2_6)  (or (edge ($$ ExhaleHeap@8 g_1) v1_6 v2_6) (and (= v1_6 node@1) (= v2_6 arg_y@0))))
 :qid |stdinbpl.4605:40|
 :skolemid |486|
 :pattern ( (edge (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@8 g_1)) g_1) v1_6 v2_6))
))) (and (=> (= (ControlFlow 0 296) 294) anon356_Then_correct) (=> (= (ControlFlow 0 296) 295) anon356_Else_correct))))))
(let ((anon354_Else_correct  (=> (not (= arg_y@0 null)) (and (=> (= (ControlFlow 0 299) 296) anon355_Then_correct) (=> (= (ControlFlow 0 299) 297) anon355_Else_correct)))))
(let ((anon354_Then_correct  (=> (= arg_y@0 null) (=> (and (state ExhaleHeap@9 QPMask@18) (|Set#Equal_37937| ($$ ExhaleHeap@9 g_1) ($$ ExhaleHeap@8 g_1))) (and (=> (= (ControlFlow 0 298) 296) anon355_Then_correct) (=> (= (ControlFlow 0 298) 297) anon355_Else_correct))))))
(let ((anon352_Else_correct  (=> (forall ((n$0_9_1 T@Ref) ) (!  (=> (and (select g_1 n$0_9_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$0_9_1 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$0_9_1 next)))
 :qid |stdinbpl.4536:38|
 :skolemid |477|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$0_9_1 next)))
 :pattern ( (select g_1 n$0_9_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$0_9_1 next))
)) (and (=> (= (ControlFlow 0 300) (- 0 303)) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) node@1 next) null)) (=> (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) node@1 next) null) (=> (and (IdenticalOnKnownLocations ExhaleHeap@8 ExhaleHeap@9 QPMask@17) (not (select g_1 null))) (=> (and (and (select g_1 node@1) (not (= node@1 null))) (and (= Mask@11 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@17) node@1 next (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@17) node@1 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@17) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@17) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@17))) (state ExhaleHeap@9 Mask@11))) (and (=> (= (ControlFlow 0 300) (- 0 302)) (forall ((n$1_5 T@Ref) (n$1_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_5 n$1_5_1)) (and (select g_1 n$1_5) (not (= n$1_5 node@1)))) (and (select g_1 n$1_5_1) (not (= n$1_5_1 node@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_5 n$1_5_1)))
 :qid |stdinbpl.4556:33|
 :skolemid |478|
))) (=> (forall ((n$1_5@@0 T@Ref) (n$1_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_5@@0 n$1_5_1@@0)) (and (select g_1 n$1_5@@0) (not (= n$1_5@@0 node@1)))) (and (select g_1 n$1_5_1@@0) (not (= n$1_5_1@@0 node@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_5@@0 n$1_5_1@@0)))
 :qid |stdinbpl.4556:33|
 :skolemid |478|
)) (=> (and (forall ((n$1_5@@1 T@Ref) ) (!  (=> (and (and (select g_1 n$1_5@@1) (not (= n$1_5@@1 node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange56 n$1_5@@1) (= (invRecv56 n$1_5@@1) n$1_5@@1)))
 :qid |stdinbpl.4562:40|
 :skolemid |479|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$1_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@18) n$1_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$1_5@@1 next))
)) (forall ((o_4@@59 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv56 o_4@@59)) (not (= (invRecv56 o_4@@59) node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange56 o_4@@59)) (= (invRecv56 o_4@@59) o_4@@59))
 :qid |stdinbpl.4566:40|
 :skolemid |480|
 :pattern ( (invRecv56 o_4@@59))
))) (and (=> (= (ControlFlow 0 300) (- 0 301)) (forall ((n$1_5@@2 T@Ref) ) (!  (=> (and (select g_1 n$1_5@@2) (not (= n$1_5@@2 node@1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4572:33|
 :skolemid |481|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$1_5@@2 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@18) n$1_5@@2 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$1_5@@2 next))
))) (=> (forall ((n$1_5@@3 T@Ref) ) (!  (=> (and (select g_1 n$1_5@@3) (not (= n$1_5@@3 node@1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4572:33|
 :skolemid |481|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$1_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@18) n$1_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$1_5@@3 next))
)) (=> (and (forall ((n$1_5@@4 T@Ref) ) (!  (=> (and (and (select g_1 n$1_5@@4) (not (= n$1_5@@4 node@1))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$1_5@@4 null)))
 :qid |stdinbpl.4578:40|
 :skolemid |482|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$1_5@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@18) n$1_5@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$1_5@@4 next))
)) (forall ((o_4@@60 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv56 o_4@@60)) (not (= (invRecv56 o_4@@60) node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange56 o_4@@60)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv56 o_4@@60) o_4@@60)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@18) o_4@@60 next) (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@11) o_4@@60 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv56 o_4@@60)) (not (= (invRecv56 o_4@@60) node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange56 o_4@@60))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@18) o_4@@60 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@11) o_4@@60 next))))
 :qid |stdinbpl.4584:40|
 :skolemid |483|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@18) o_4@@60 next))
))) (=> (and (and (and (and (and (forall ((o_4@@61 T@Ref) (f_5@@39 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@11) o_4@@61 f_5@@39) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@18) o_4@@61 f_5@@39)))
 :qid |stdinbpl.4588:47|
 :skolemid |484|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@11) o_4@@61 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@18) o_4@@61 f_5@@39))
)) (forall ((o_4@@62 T@Ref) (f_5@@40 T@Field_58075_58076) ) (!  (=> (not (= f_5@@40 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@11) o_4@@62 f_5@@40) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@18) o_4@@62 f_5@@40)))
 :qid |stdinbpl.4588:47|
 :skolemid |484|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@11) o_4@@62 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@18) o_4@@62 f_5@@40))
))) (forall ((o_4@@63 T@Ref) (f_5@@41 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@11) o_4@@63 f_5@@41) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@18) o_4@@63 f_5@@41)))
 :qid |stdinbpl.4588:47|
 :skolemid |484|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@11) o_4@@63 f_5@@41))
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@18) o_4@@63 f_5@@41))
))) (forall ((o_4@@64 T@Ref) (f_5@@42 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@11) o_4@@64 f_5@@42) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@18) o_4@@64 f_5@@42)))
 :qid |stdinbpl.4588:47|
 :skolemid |484|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@11) o_4@@64 f_5@@42))
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@18) o_4@@64 f_5@@42))
))) (state ExhaleHeap@9 QPMask@18)) (and (forall ((n$2_7 T@Ref) ) (!  (=> (and (select g_1 n$2_7) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$2_7 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$2_7 next)))
 :qid |stdinbpl.4594:38|
 :skolemid |485|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$2_7 next)))
 :pattern ( (select g_1 n$2_7) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) n$2_7 next))
)) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@9) node@1 next) arg_y@0))) (and (=> (= (ControlFlow 0 300) 298) anon354_Then_correct) (=> (= (ControlFlow 0 300) 299) anon354_Else_correct))))))))))))))))
(let ((anon143_correct  (=> (= Mask@10 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@16) node@1 next (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@16) node@1 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@16) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@16) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@16))) (and (=> (= (ControlFlow 0 304) (- 0 307)) (forall ((n_16 T@Ref) ) (!  (=> (and (and (select g_1 n_16) (not (= n_16 node@1))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n_16 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4488:35|
 :skolemid |470|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n_16 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@17) n_16 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n_16 next))
))) (=> (forall ((n_16@@0 T@Ref) ) (!  (=> (and (and (select g_1 n_16@@0) (not (= n_16@@0 node@1))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n_16@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4488:35|
 :skolemid |470|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n_16@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@17) n_16@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n_16@@0 next))
)) (and (=> (= (ControlFlow 0 304) (- 0 306)) (forall ((n_16@@1 T@Ref) (n_16_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_16@@1 n_16_1)) (and (select g_1 n_16@@1) (not (= n_16@@1 node@1)))) (and (select g_1 n_16_1) (not (= n_16_1 node@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_16@@1 n_16_1)))
 :qid |stdinbpl.4495:35|
 :skolemid |471|
 :pattern ( (neverTriggered55 n_16@@1) (neverTriggered55 n_16_1))
))) (=> (forall ((n_16@@2 T@Ref) (n_16_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_16@@2 n_16_1@@0)) (and (select g_1 n_16@@2) (not (= n_16@@2 node@1)))) (and (select g_1 n_16_1@@0) (not (= n_16_1@@0 node@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_16@@2 n_16_1@@0)))
 :qid |stdinbpl.4495:35|
 :skolemid |471|
 :pattern ( (neverTriggered55 n_16@@2) (neverTriggered55 n_16_1@@0))
)) (and (=> (= (ControlFlow 0 304) (- 0 305)) (forall ((n_16@@3 T@Ref) ) (!  (=> (and (select g_1 n_16@@3) (not (= n_16@@3 node@1))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@10) n_16@@3 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4502:35|
 :skolemid |472|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n_16@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@17) n_16@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n_16@@3 next))
))) (=> (forall ((n_16@@4 T@Ref) ) (!  (=> (and (select g_1 n_16@@4) (not (= n_16@@4 node@1))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@10) n_16@@4 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4502:35|
 :skolemid |472|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n_16@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@17) n_16@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n_16@@4 next))
)) (=> (forall ((n_16@@5 T@Ref) ) (!  (=> (and (and (select g_1 n_16@@5) (not (= n_16@@5 node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange55 n_16@@5) (= (invRecv55 n_16@@5) n_16@@5)))
 :qid |stdinbpl.4508:40|
 :skolemid |473|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n_16@@5 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@17) n_16@@5 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n_16@@5 next))
)) (=> (and (forall ((o_4@@65 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv55 o_4@@65)) (not (= (invRecv55 o_4@@65) node@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange55 o_4@@65))) (= (invRecv55 o_4@@65) o_4@@65))
 :qid |stdinbpl.4512:40|
 :skolemid |474|
 :pattern ( (invRecv55 o_4@@65))
)) (forall ((o_4@@66 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv55 o_4@@66)) (not (= (invRecv55 o_4@@66) node@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange55 o_4@@66))) (and (= (invRecv55 o_4@@66) o_4@@66) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@17) o_4@@66 next) (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@10) o_4@@66 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select g_1 (invRecv55 o_4@@66)) (not (= (invRecv55 o_4@@66) node@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange55 o_4@@66)))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@17) o_4@@66 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@10) o_4@@66 next))))
 :qid |stdinbpl.4518:40|
 :skolemid |475|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@17) o_4@@66 next))
))) (=> (and (and (and (forall ((o_4@@67 T@Ref) (f_5@@43 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@10) o_4@@67 f_5@@43) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@17) o_4@@67 f_5@@43)))
 :qid |stdinbpl.4524:47|
 :skolemid |476|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@17) o_4@@67 f_5@@43))
)) (forall ((o_4@@68 T@Ref) (f_5@@44 T@Field_58075_58076) ) (!  (=> (not (= f_5@@44 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@10) o_4@@68 f_5@@44) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@17) o_4@@68 f_5@@44)))
 :qid |stdinbpl.4524:47|
 :skolemid |476|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@17) o_4@@68 f_5@@44))
))) (forall ((o_4@@69 T@Ref) (f_5@@45 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@10) o_4@@69 f_5@@45) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@17) o_4@@69 f_5@@45)))
 :qid |stdinbpl.4524:47|
 :skolemid |476|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@17) o_4@@69 f_5@@45))
))) (forall ((o_4@@70 T@Ref) (f_5@@46 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@10) o_4@@70 f_5@@46) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@17) o_4@@70 f_5@@46)))
 :qid |stdinbpl.4524:47|
 :skolemid |476|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@17) o_4@@70 f_5@@46))
))) (and (and (=> (= (ControlFlow 0 304) 300) anon352_Else_correct) (=> (= (ControlFlow 0 304) 237) anon353_Then_correct)) (=> (= (ControlFlow 0 304) 239) anon353_Else_correct))))))))))))))
(let ((anon351_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 310) 304)) anon143_correct)))
(let ((anon351_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 308) (- 0 309)) (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@16) node@1 next))) (=> (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@16) node@1 next)) (=> (= (ControlFlow 0 308) 304) anon143_correct))))))
(let ((anon141_correct  (and (=> (= (ControlFlow 0 311) (- 0 313)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 311) (- 0 312)) (select g_1 node@1)) (=> (select g_1 node@1) (and (=> (= (ControlFlow 0 311) 308) anon351_Then_correct) (=> (= (ControlFlow 0 311) 310) anon351_Else_correct))))))))
(let ((anon350_Else_correct  (=> (and (= arg_y@0 null) (= (ControlFlow 0 316) 311)) anon141_correct)))
(let ((anon350_Then_correct  (=> (not (= arg_y@0 null)) (and (=> (= (ControlFlow 0 314) (- 0 315)) (select g_1 arg_y@0)) (=> (select g_1 arg_y@0) (=> (= (ControlFlow 0 314) 311) anon141_correct))))))
(let ((anon139_correct  (=> (and (state ExhaleHeap@8 QPMask@16) (state ExhaleHeap@8 QPMask@16)) (and (=> (= (ControlFlow 0 317) (- 0 319)) (HasDirectPerm_37930_37931 QPMask@16 node_i@1 next)) (=> (HasDirectPerm_37930_37931 QPMask@16 node_i@1 next) (=> (= arg_y@0 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) node_i@1 next)) (and (=> (= (ControlFlow 0 317) (- 0 318)) (select g_1 node@1)) (=> (select g_1 node@1) (and (=> (= (ControlFlow 0 317) 314) anon350_Then_correct) (=> (= (ControlFlow 0 317) 316) anon350_Else_correct))))))))))
(let ((anon349_Else_correct  (=> (and (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) node@1 next) null) (= (ControlFlow 0 321) 317)) anon139_correct)))
(let ((anon349_Then_correct  (=> (and (and (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) node@1 next) null)) (state ExhaleHeap@8 QPMask@16)) (and (forall ((v1_5_2 T@Ref) (v2_5_2 T@Ref) ) (!  (=> (not (= v1_5_2 v2_5_2)) (= (exists_path ($$ ExhaleHeap@8 g_1) v1_5_2 v2_5_2)  (and (exists_path ($$ ExhaleHeap@5 g_1) v1_5_2 v2_5_2) (not (and (exists_path ($$ ExhaleHeap@5 g_1) v1_5_2 node@1) (exists_path ($$ ExhaleHeap@5 g_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) node@1 next) v2_5_2))))))
 :qid |stdinbpl.4448:40|
 :skolemid |469|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@8 g_1)) g_1) v1_5_2 v2_5_2))
)) (= (ControlFlow 0 320) 317))) anon139_correct)))
(let ((anon348_Else_correct  (=> (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) node@1 next) null) (and (=> (= (ControlFlow 0 323) 320) anon349_Then_correct) (=> (= (ControlFlow 0 323) 321) anon349_Else_correct)))))
(let ((anon348_Then_correct  (=> (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) node@1 next) null)) (=> (and (state ExhaleHeap@8 QPMask@16) (forall ((v1_4 T@Ref) (v2_4 T@Ref) ) (! (= (edge ($$ ExhaleHeap@8 g_1) v1_4 v2_4)  (and (edge ($$ ExhaleHeap@5 g_1) v1_4 v2_4) (not (and (= v1_4 node@1) (= v2_4 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) node@1 next))))))
 :qid |stdinbpl.4441:40|
 :skolemid |468|
 :pattern ( (edge (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@8 g_1)) g_1) v1_4 v2_4))
))) (and (=> (= (ControlFlow 0 322) 320) anon349_Then_correct) (=> (= (ControlFlow 0 322) 321) anon349_Else_correct))))))
(let ((anon347_Else_correct  (=> (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) node@1 next) null)) (and (=> (= (ControlFlow 0 325) 322) anon348_Then_correct) (=> (= (ControlFlow 0 325) 323) anon348_Else_correct)))))
(let ((anon347_Then_correct  (=> (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) node@1 next) null) (=> (and (state ExhaleHeap@8 QPMask@16) (|Set#Equal_37937| ($$ ExhaleHeap@8 g_1) ($$ ExhaleHeap@5 g_1))) (and (=> (= (ControlFlow 0 324) 322) anon348_Then_correct) (=> (= (ControlFlow 0 324) 323) anon348_Else_correct))))))
(let ((anon345_Else_correct  (=> (forall ((n$0_7_1 T@Ref) ) (!  (=> (and (select g_1 n$0_7_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$0_7_1 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$0_7_1 next)))
 :qid |stdinbpl.4374:38|
 :skolemid |459|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$0_7_1 next)))
 :pattern ( (select g_1 n$0_7_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$0_7_1 next))
)) (=> (and (IdenticalOnKnownLocations ExhaleHeap@5 ExhaleHeap@8 QPMask@15) (not (select g_1 null))) (=> (and (and (select g_1 node@1) (not (= node@1 null))) (and (= Mask@9 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@15) node@1 next (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@15) node@1 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@15) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@15) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@15))) (state ExhaleHeap@8 Mask@9))) (and (=> (= (ControlFlow 0 326) (- 0 328)) (forall ((n$1_4 T@Ref) (n$1_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_4 n$1_4_1)) (and (select g_1 n$1_4) (not (= n$1_4 node@1)))) (and (select g_1 n$1_4_1) (not (= n$1_4_1 node@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_4 n$1_4_1)))
 :qid |stdinbpl.4392:33|
 :skolemid |460|
))) (=> (forall ((n$1_4@@0 T@Ref) (n$1_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_4@@0 n$1_4_1@@0)) (and (select g_1 n$1_4@@0) (not (= n$1_4@@0 node@1)))) (and (select g_1 n$1_4_1@@0) (not (= n$1_4_1@@0 node@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_4@@0 n$1_4_1@@0)))
 :qid |stdinbpl.4392:33|
 :skolemid |460|
)) (=> (and (forall ((n$1_4@@1 T@Ref) ) (!  (=> (and (and (select g_1 n$1_4@@1) (not (= n$1_4@@1 node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange54 n$1_4@@1) (= (invRecv54 n$1_4@@1) n$1_4@@1)))
 :qid |stdinbpl.4398:40|
 :skolemid |461|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$1_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@16) n$1_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$1_4@@1 next))
)) (forall ((o_4@@71 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv54 o_4@@71)) (not (= (invRecv54 o_4@@71) node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange54 o_4@@71)) (= (invRecv54 o_4@@71) o_4@@71))
 :qid |stdinbpl.4402:40|
 :skolemid |462|
 :pattern ( (invRecv54 o_4@@71))
))) (and (=> (= (ControlFlow 0 326) (- 0 327)) (forall ((n$1_4@@2 T@Ref) ) (!  (=> (and (select g_1 n$1_4@@2) (not (= n$1_4@@2 node@1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4408:33|
 :skolemid |463|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$1_4@@2 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@16) n$1_4@@2 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$1_4@@2 next))
))) (=> (forall ((n$1_4@@3 T@Ref) ) (!  (=> (and (select g_1 n$1_4@@3) (not (= n$1_4@@3 node@1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4408:33|
 :skolemid |463|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$1_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@16) n$1_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$1_4@@3 next))
)) (=> (and (forall ((n$1_4@@4 T@Ref) ) (!  (=> (and (and (select g_1 n$1_4@@4) (not (= n$1_4@@4 node@1))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$1_4@@4 null)))
 :qid |stdinbpl.4414:40|
 :skolemid |464|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$1_4@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@16) n$1_4@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$1_4@@4 next))
)) (forall ((o_4@@72 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv54 o_4@@72)) (not (= (invRecv54 o_4@@72) node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange54 o_4@@72)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv54 o_4@@72) o_4@@72)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@16) o_4@@72 next) (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@9) o_4@@72 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv54 o_4@@72)) (not (= (invRecv54 o_4@@72) node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange54 o_4@@72))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@16) o_4@@72 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@9) o_4@@72 next))))
 :qid |stdinbpl.4420:40|
 :skolemid |465|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@16) o_4@@72 next))
))) (=> (and (and (and (and (and (forall ((o_4@@73 T@Ref) (f_5@@47 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@9) o_4@@73 f_5@@47) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@16) o_4@@73 f_5@@47)))
 :qid |stdinbpl.4424:47|
 :skolemid |466|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@9) o_4@@73 f_5@@47))
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@16) o_4@@73 f_5@@47))
)) (forall ((o_4@@74 T@Ref) (f_5@@48 T@Field_58075_58076) ) (!  (=> (not (= f_5@@48 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@9) o_4@@74 f_5@@48) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@16) o_4@@74 f_5@@48)))
 :qid |stdinbpl.4424:47|
 :skolemid |466|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@9) o_4@@74 f_5@@48))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@16) o_4@@74 f_5@@48))
))) (forall ((o_4@@75 T@Ref) (f_5@@49 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@9) o_4@@75 f_5@@49) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@16) o_4@@75 f_5@@49)))
 :qid |stdinbpl.4424:47|
 :skolemid |466|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@9) o_4@@75 f_5@@49))
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@16) o_4@@75 f_5@@49))
))) (forall ((o_4@@76 T@Ref) (f_5@@50 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@9) o_4@@76 f_5@@50) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@16) o_4@@76 f_5@@50)))
 :qid |stdinbpl.4424:47|
 :skolemid |466|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@9) o_4@@76 f_5@@50))
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@16) o_4@@76 f_5@@50))
))) (state ExhaleHeap@8 QPMask@16)) (and (forall ((n$2_6 T@Ref) ) (!  (=> (and (select g_1 n$2_6) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$2_6 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$2_6 next)))
 :qid |stdinbpl.4430:38|
 :skolemid |467|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$2_6 next)))
 :pattern ( (select g_1 n$2_6) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) n$2_6 next))
)) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@8) node@1 next) null))) (and (=> (= (ControlFlow 0 326) 324) anon347_Then_correct) (=> (= (ControlFlow 0 326) 325) anon347_Else_correct))))))))))))))
(let ((anon129_correct  (=> (= Mask@8 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@10) node@1 next (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@10) node@1 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@10) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@10) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@10))) (and (=> (= (ControlFlow 0 329) (- 0 332)) (forall ((n_15 T@Ref) ) (!  (=> (and (and (select g_1 n_15) (not (= n_15 node@1))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_15 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4326:35|
 :skolemid |452|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_15 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@15) n_15 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_15 next))
))) (=> (forall ((n_15@@0 T@Ref) ) (!  (=> (and (and (select g_1 n_15@@0) (not (= n_15@@0 node@1))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_15@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4326:35|
 :skolemid |452|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_15@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@15) n_15@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_15@@0 next))
)) (and (=> (= (ControlFlow 0 329) (- 0 331)) (forall ((n_15@@1 T@Ref) (n_15_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15@@1 n_15_1)) (and (select g_1 n_15@@1) (not (= n_15@@1 node@1)))) (and (select g_1 n_15_1) (not (= n_15_1 node@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_15@@1 n_15_1)))
 :qid |stdinbpl.4333:35|
 :skolemid |453|
 :pattern ( (neverTriggered53 n_15@@1) (neverTriggered53 n_15_1))
))) (=> (forall ((n_15@@2 T@Ref) (n_15_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15@@2 n_15_1@@0)) (and (select g_1 n_15@@2) (not (= n_15@@2 node@1)))) (and (select g_1 n_15_1@@0) (not (= n_15_1@@0 node@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_15@@2 n_15_1@@0)))
 :qid |stdinbpl.4333:35|
 :skolemid |453|
 :pattern ( (neverTriggered53 n_15@@2) (neverTriggered53 n_15_1@@0))
)) (and (=> (= (ControlFlow 0 329) (- 0 330)) (forall ((n_15@@3 T@Ref) ) (!  (=> (and (select g_1 n_15@@3) (not (= n_15@@3 node@1))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@8) n_15@@3 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4340:35|
 :skolemid |454|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_15@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@15) n_15@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_15@@3 next))
))) (=> (forall ((n_15@@4 T@Ref) ) (!  (=> (and (select g_1 n_15@@4) (not (= n_15@@4 node@1))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@8) n_15@@4 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4340:35|
 :skolemid |454|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_15@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@15) n_15@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_15@@4 next))
)) (=> (forall ((n_15@@5 T@Ref) ) (!  (=> (and (and (select g_1 n_15@@5) (not (= n_15@@5 node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange53 n_15@@5) (= (invRecv53 n_15@@5) n_15@@5)))
 :qid |stdinbpl.4346:40|
 :skolemid |455|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_15@@5 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@15) n_15@@5 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_15@@5 next))
)) (=> (and (forall ((o_4@@77 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv53 o_4@@77)) (not (= (invRecv53 o_4@@77) node@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange53 o_4@@77))) (= (invRecv53 o_4@@77) o_4@@77))
 :qid |stdinbpl.4350:40|
 :skolemid |456|
 :pattern ( (invRecv53 o_4@@77))
)) (forall ((o_4@@78 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv53 o_4@@78)) (not (= (invRecv53 o_4@@78) node@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange53 o_4@@78))) (and (= (invRecv53 o_4@@78) o_4@@78) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@15) o_4@@78 next) (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@8) o_4@@78 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select g_1 (invRecv53 o_4@@78)) (not (= (invRecv53 o_4@@78) node@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange53 o_4@@78)))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@15) o_4@@78 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@8) o_4@@78 next))))
 :qid |stdinbpl.4356:40|
 :skolemid |457|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@15) o_4@@78 next))
))) (=> (and (and (and (forall ((o_4@@79 T@Ref) (f_5@@51 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@8) o_4@@79 f_5@@51) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@15) o_4@@79 f_5@@51)))
 :qid |stdinbpl.4362:47|
 :skolemid |458|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@15) o_4@@79 f_5@@51))
)) (forall ((o_4@@80 T@Ref) (f_5@@52 T@Field_58075_58076) ) (!  (=> (not (= f_5@@52 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@8) o_4@@80 f_5@@52) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@15) o_4@@80 f_5@@52)))
 :qid |stdinbpl.4362:47|
 :skolemid |458|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@15) o_4@@80 f_5@@52))
))) (forall ((o_4@@81 T@Ref) (f_5@@53 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@8) o_4@@81 f_5@@53) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@15) o_4@@81 f_5@@53)))
 :qid |stdinbpl.4362:47|
 :skolemid |458|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@15) o_4@@81 f_5@@53))
))) (forall ((o_4@@82 T@Ref) (f_5@@54 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@8) o_4@@82 f_5@@54) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@15) o_4@@82 f_5@@54)))
 :qid |stdinbpl.4362:47|
 :skolemid |458|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@15) o_4@@82 f_5@@54))
))) (and (and (=> (= (ControlFlow 0 329) 326) anon345_Else_correct) (=> (= (ControlFlow 0 329) 233) anon346_Then_correct)) (=> (= (ControlFlow 0 329) 235) anon346_Else_correct))))))))))))))
(let ((anon344_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 335) 329)) anon129_correct)))
(let ((anon344_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 333) (- 0 334)) (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@10) node@1 next))) (=> (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@10) node@1 next)) (=> (= (ControlFlow 0 333) 329) anon129_correct))))))
(let ((anon343_Then_correct  (=> (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) node_i@1 next) node@1)) (and (=> (= (ControlFlow 0 336) (- 0 339)) (select g_1 node@1)) (=> (select g_1 node@1) (and (=> (= (ControlFlow 0 336) (- 0 338)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 336) (- 0 337)) (select g_1 node@1)) (=> (select g_1 node@1) (and (=> (= (ControlFlow 0 336) 333) anon344_Then_correct) (=> (= (ControlFlow 0 336) 335) anon344_Else_correct)))))))))))
(let ((anon206_correct  (=> (state ExhaleHeap@7 QPMask@14) (=> (and (and (state ExhaleHeap@7 QPMask@14) (= Mask@16 QPMask@14)) (and (= Heap@0 ExhaleHeap@7) (= (ControlFlow 0 186) 182))) anon207_correct))))
(let ((anon382_Else_correct  (=> (and (= node_i@1 null) (= (ControlFlow 0 188) 186)) anon206_correct)))
(let ((anon382_Then_correct  (=> (and (and (not (= node_i@1 null)) (state ExhaleHeap@7 QPMask@14)) (and (forall ((v1_15 T@Ref) (v2_15 T@Ref) ) (!  (=> (not (= v1_15 v2_15)) (= (exists_path ($$ ExhaleHeap@7 g_1) v1_15 v2_15)  (or (exists_path ($$ ExhaleHeap@6 g_1) v1_15 v2_15) (and (exists_path ($$ ExhaleHeap@6 g_1) v1_15 node@1) (exists_path ($$ ExhaleHeap@6 g_1) node_i@1 v2_15)))))
 :qid |stdinbpl.5237:40|
 :skolemid |559|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@7 g_1)) g_1) v1_15 v2_15))
)) (= (ControlFlow 0 187) 186))) anon206_correct)))
(let ((anon381_Else_correct  (=> (= node_i@1 null) (and (=> (= (ControlFlow 0 190) 187) anon382_Then_correct) (=> (= (ControlFlow 0 190) 188) anon382_Else_correct)))))
(let ((anon381_Then_correct  (=> (not (= node_i@1 null)) (=> (and (state ExhaleHeap@7 QPMask@14) (forall ((v1_14 T@Ref) (v2_14 T@Ref) ) (! (= (edge ($$ ExhaleHeap@7 g_1) v1_14 v2_14)  (or (edge ($$ ExhaleHeap@6 g_1) v1_14 v2_14) (and (= v1_14 node@1) (= v2_14 node_i@1))))
 :qid |stdinbpl.5230:40|
 :skolemid |558|
 :pattern ( (edge (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@6 g_1)) g_1) v1_14 v2_14))
))) (and (=> (= (ControlFlow 0 189) 187) anon382_Then_correct) (=> (= (ControlFlow 0 189) 188) anon382_Else_correct))))))
(let ((anon380_Else_correct  (=> (not (= node_i@1 null)) (and (=> (= (ControlFlow 0 192) 189) anon381_Then_correct) (=> (= (ControlFlow 0 192) 190) anon381_Else_correct)))))
(let ((anon380_Then_correct  (=> (= node_i@1 null) (=> (and (state ExhaleHeap@7 QPMask@14) (|Set#Equal_37937| ($$ ExhaleHeap@7 g_1) ($$ ExhaleHeap@6 g_1))) (and (=> (= (ControlFlow 0 191) 189) anon381_Then_correct) (=> (= (ControlFlow 0 191) 190) anon381_Else_correct))))))
(let ((anon378_Else_correct  (=> (forall ((n$0_17_1 T@Ref) ) (!  (=> (and (select g_1 n$0_17_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$0_17_1 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$0_17_1 next)))
 :qid |stdinbpl.5161:38|
 :skolemid |549|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$0_17_1 next)))
 :pattern ( (select g_1 n$0_17_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$0_17_1 next))
)) (and (=> (= (ControlFlow 0 193) (- 0 196)) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) node@1 next) null)) (=> (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) node@1 next) null) (=> (and (IdenticalOnKnownLocations ExhaleHeap@6 ExhaleHeap@7 QPMask@13) (not (select g_1 null))) (=> (and (and (select g_1 node@1) (not (= node@1 null))) (and (= Mask@7 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@13) node@1 next (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@13) node@1 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@13) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@13) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@13))) (state ExhaleHeap@7 Mask@7))) (and (=> (= (ControlFlow 0 193) (- 0 195)) (forall ((n$1_9 T@Ref) (n$1_9_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_9 n$1_9_1)) (and (select g_1 n$1_9) (not (= n$1_9 node@1)))) (and (select g_1 n$1_9_1) (not (= n$1_9_1 node@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_9 n$1_9_1)))
 :qid |stdinbpl.5181:33|
 :skolemid |550|
))) (=> (forall ((n$1_9@@0 T@Ref) (n$1_9_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_9@@0 n$1_9_1@@0)) (and (select g_1 n$1_9@@0) (not (= n$1_9@@0 node@1)))) (and (select g_1 n$1_9_1@@0) (not (= n$1_9_1@@0 node@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_9@@0 n$1_9_1@@0)))
 :qid |stdinbpl.5181:33|
 :skolemid |550|
)) (=> (and (forall ((n$1_9@@1 T@Ref) ) (!  (=> (and (and (select g_1 n$1_9@@1) (not (= n$1_9@@1 node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange64 n$1_9@@1) (= (invRecv64 n$1_9@@1) n$1_9@@1)))
 :qid |stdinbpl.5187:40|
 :skolemid |551|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@7) n$1_9@@1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@14) n$1_9@@1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@7) n$1_9@@1 next))
)) (forall ((o_4@@83 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv64 o_4@@83)) (not (= (invRecv64 o_4@@83) node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange64 o_4@@83)) (= (invRecv64 o_4@@83) o_4@@83))
 :qid |stdinbpl.5191:40|
 :skolemid |552|
 :pattern ( (invRecv64 o_4@@83))
))) (and (=> (= (ControlFlow 0 193) (- 0 194)) (forall ((n$1_9@@2 T@Ref) ) (!  (=> (and (select g_1 n$1_9@@2) (not (= n$1_9@@2 node@1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5197:33|
 :skolemid |553|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@7) n$1_9@@2 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@14) n$1_9@@2 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@7) n$1_9@@2 next))
))) (=> (forall ((n$1_9@@3 T@Ref) ) (!  (=> (and (select g_1 n$1_9@@3) (not (= n$1_9@@3 node@1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5197:33|
 :skolemid |553|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@7) n$1_9@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@14) n$1_9@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@7) n$1_9@@3 next))
)) (=> (and (forall ((n$1_9@@4 T@Ref) ) (!  (=> (and (and (select g_1 n$1_9@@4) (not (= n$1_9@@4 node@1))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$1_9@@4 null)))
 :qid |stdinbpl.5203:40|
 :skolemid |554|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@7) n$1_9@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@14) n$1_9@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@7) n$1_9@@4 next))
)) (forall ((o_4@@84 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv64 o_4@@84)) (not (= (invRecv64 o_4@@84) node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange64 o_4@@84)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv64 o_4@@84) o_4@@84)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@14) o_4@@84 next) (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@7) o_4@@84 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv64 o_4@@84)) (not (= (invRecv64 o_4@@84) node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange64 o_4@@84))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@14) o_4@@84 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@7) o_4@@84 next))))
 :qid |stdinbpl.5209:40|
 :skolemid |555|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@14) o_4@@84 next))
))) (=> (and (and (and (and (and (forall ((o_4@@85 T@Ref) (f_5@@55 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@7) o_4@@85 f_5@@55) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@14) o_4@@85 f_5@@55)))
 :qid |stdinbpl.5213:47|
 :skolemid |556|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@7) o_4@@85 f_5@@55))
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@14) o_4@@85 f_5@@55))
)) (forall ((o_4@@86 T@Ref) (f_5@@56 T@Field_58075_58076) ) (!  (=> (not (= f_5@@56 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@7) o_4@@86 f_5@@56) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@14) o_4@@86 f_5@@56)))
 :qid |stdinbpl.5213:47|
 :skolemid |556|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@7) o_4@@86 f_5@@56))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@14) o_4@@86 f_5@@56))
))) (forall ((o_4@@87 T@Ref) (f_5@@57 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@7) o_4@@87 f_5@@57) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@14) o_4@@87 f_5@@57)))
 :qid |stdinbpl.5213:47|
 :skolemid |556|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@7) o_4@@87 f_5@@57))
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@14) o_4@@87 f_5@@57))
))) (forall ((o_4@@88 T@Ref) (f_5@@58 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@7) o_4@@88 f_5@@58) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@14) o_4@@88 f_5@@58)))
 :qid |stdinbpl.5213:47|
 :skolemid |556|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@7) o_4@@88 f_5@@58))
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@14) o_4@@88 f_5@@58))
))) (state ExhaleHeap@7 QPMask@14)) (and (forall ((n$2_11 T@Ref) ) (!  (=> (and (select g_1 n$2_11) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@7) n$2_11 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@7) n$2_11 next)))
 :qid |stdinbpl.5219:38|
 :skolemid |557|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@7) n$2_11 next)))
 :pattern ( (select g_1 n$2_11) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@7) n$2_11 next))
)) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@7) node@1 next) node_i@1))) (and (=> (= (ControlFlow 0 193) 191) anon380_Then_correct) (=> (= (ControlFlow 0 193) 192) anon380_Else_correct))))))))))))))))
(let ((anon196_correct  (=> (= Mask@6 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@12) node@1 next (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@12) node@1 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@12) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@12) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@12))) (and (=> (= (ControlFlow 0 197) (- 0 200)) (forall ((n_20 T@Ref) ) (!  (=> (and (and (select g_1 n_20) (not (= n_20 node@1))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n_20 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5113:35|
 :skolemid |542|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n_20 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@13) n_20 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n_20 next))
))) (=> (forall ((n_20@@0 T@Ref) ) (!  (=> (and (and (select g_1 n_20@@0) (not (= n_20@@0 node@1))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n_20@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5113:35|
 :skolemid |542|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n_20@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@13) n_20@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n_20@@0 next))
)) (and (=> (= (ControlFlow 0 197) (- 0 199)) (forall ((n_20@@1 T@Ref) (n_20_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_20@@1 n_20_1)) (and (select g_1 n_20@@1) (not (= n_20@@1 node@1)))) (and (select g_1 n_20_1) (not (= n_20_1 node@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_20@@1 n_20_1)))
 :qid |stdinbpl.5120:35|
 :skolemid |543|
 :pattern ( (neverTriggered63 n_20@@1) (neverTriggered63 n_20_1))
))) (=> (forall ((n_20@@2 T@Ref) (n_20_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_20@@2 n_20_1@@0)) (and (select g_1 n_20@@2) (not (= n_20@@2 node@1)))) (and (select g_1 n_20_1@@0) (not (= n_20_1@@0 node@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_20@@2 n_20_1@@0)))
 :qid |stdinbpl.5120:35|
 :skolemid |543|
 :pattern ( (neverTriggered63 n_20@@2) (neverTriggered63 n_20_1@@0))
)) (and (=> (= (ControlFlow 0 197) (- 0 198)) (forall ((n_20@@3 T@Ref) ) (!  (=> (and (select g_1 n_20@@3) (not (= n_20@@3 node@1))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@6) n_20@@3 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.5127:35|
 :skolemid |544|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n_20@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@13) n_20@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n_20@@3 next))
))) (=> (forall ((n_20@@4 T@Ref) ) (!  (=> (and (select g_1 n_20@@4) (not (= n_20@@4 node@1))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@6) n_20@@4 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.5127:35|
 :skolemid |544|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n_20@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@13) n_20@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n_20@@4 next))
)) (=> (forall ((n_20@@5 T@Ref) ) (!  (=> (and (and (select g_1 n_20@@5) (not (= n_20@@5 node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange63 n_20@@5) (= (invRecv63 n_20@@5) n_20@@5)))
 :qid |stdinbpl.5133:40|
 :skolemid |545|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n_20@@5 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@13) n_20@@5 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n_20@@5 next))
)) (=> (and (forall ((o_4@@89 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv63 o_4@@89)) (not (= (invRecv63 o_4@@89) node@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange63 o_4@@89))) (= (invRecv63 o_4@@89) o_4@@89))
 :qid |stdinbpl.5137:40|
 :skolemid |546|
 :pattern ( (invRecv63 o_4@@89))
)) (forall ((o_4@@90 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv63 o_4@@90)) (not (= (invRecv63 o_4@@90) node@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange63 o_4@@90))) (and (= (invRecv63 o_4@@90) o_4@@90) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@13) o_4@@90 next) (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@6) o_4@@90 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select g_1 (invRecv63 o_4@@90)) (not (= (invRecv63 o_4@@90) node@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange63 o_4@@90)))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@13) o_4@@90 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@6) o_4@@90 next))))
 :qid |stdinbpl.5143:40|
 :skolemid |547|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@13) o_4@@90 next))
))) (=> (and (and (and (forall ((o_4@@91 T@Ref) (f_5@@59 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@6) o_4@@91 f_5@@59) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@13) o_4@@91 f_5@@59)))
 :qid |stdinbpl.5149:47|
 :skolemid |548|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@13) o_4@@91 f_5@@59))
)) (forall ((o_4@@92 T@Ref) (f_5@@60 T@Field_58075_58076) ) (!  (=> (not (= f_5@@60 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@6) o_4@@92 f_5@@60) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@13) o_4@@92 f_5@@60)))
 :qid |stdinbpl.5149:47|
 :skolemid |548|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@13) o_4@@92 f_5@@60))
))) (forall ((o_4@@93 T@Ref) (f_5@@61 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@6) o_4@@93 f_5@@61) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@13) o_4@@93 f_5@@61)))
 :qid |stdinbpl.5149:47|
 :skolemid |548|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@13) o_4@@93 f_5@@61))
))) (forall ((o_4@@94 T@Ref) (f_5@@62 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@6) o_4@@94 f_5@@62) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@13) o_4@@94 f_5@@62)))
 :qid |stdinbpl.5149:47|
 :skolemid |548|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@13) o_4@@94 f_5@@62))
))) (and (and (=> (= (ControlFlow 0 197) 193) anon378_Else_correct) (=> (= (ControlFlow 0 197) 129) anon379_Then_correct)) (=> (= (ControlFlow 0 197) 131) anon379_Else_correct))))))))))))))
(let ((anon377_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 203) 197)) anon196_correct)))
(let ((anon377_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 201) (- 0 202)) (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@12) node@1 next))) (=> (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@12) node@1 next)) (=> (= (ControlFlow 0 201) 197) anon196_correct))))))
(let ((anon194_correct  (and (=> (= (ControlFlow 0 204) (- 0 206)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 204) (- 0 205)) (select g_1 node@1)) (=> (select g_1 node@1) (and (=> (= (ControlFlow 0 204) 201) anon377_Then_correct) (=> (= (ControlFlow 0 204) 203) anon377_Else_correct))))))))
(let ((anon376_Else_correct  (=> (and (= node_i@1 null) (= (ControlFlow 0 209) 204)) anon194_correct)))
(let ((anon376_Then_correct  (=> (not (= node_i@1 null)) (and (=> (= (ControlFlow 0 207) (- 0 208)) (select g_1 node_i@1)) (=> (select g_1 node_i@1) (=> (= (ControlFlow 0 207) 204) anon194_correct))))))
(let ((anon192_correct  (=> (and (state ExhaleHeap@6 QPMask@12) (state ExhaleHeap@6 QPMask@12)) (and (=> (= (ControlFlow 0 210) (- 0 211)) (select g_1 node@1)) (=> (select g_1 node@1) (and (=> (= (ControlFlow 0 210) 207) anon376_Then_correct) (=> (= (ControlFlow 0 210) 209) anon376_Else_correct)))))))
(let ((anon375_Else_correct  (=> (and (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) node@1 next) null) (= (ControlFlow 0 213) 210)) anon192_correct)))
(let ((anon375_Then_correct  (=> (and (and (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) node@1 next) null)) (state ExhaleHeap@6 QPMask@12)) (and (forall ((v1_13 T@Ref) (v2_13 T@Ref) ) (!  (=> (not (= v1_13 v2_13)) (= (exists_path ($$ ExhaleHeap@6 g_1) v1_13 v2_13)  (and (exists_path ($$ ExhaleHeap@5 g_1) v1_13 v2_13) (not (and (exists_path ($$ ExhaleHeap@5 g_1) v1_13 node@1) (exists_path ($$ ExhaleHeap@5 g_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) node@1 next) v2_13))))))
 :qid |stdinbpl.5078:40|
 :skolemid |541|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@6 g_1)) g_1) v1_13 v2_13))
)) (= (ControlFlow 0 212) 210))) anon192_correct)))
(let ((anon374_Else_correct  (=> (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) node@1 next) null) (and (=> (= (ControlFlow 0 215) 212) anon375_Then_correct) (=> (= (ControlFlow 0 215) 213) anon375_Else_correct)))))
(let ((anon374_Then_correct  (=> (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) node@1 next) null)) (=> (and (state ExhaleHeap@6 QPMask@12) (forall ((v1_12 T@Ref) (v2_12 T@Ref) ) (! (= (edge ($$ ExhaleHeap@6 g_1) v1_12 v2_12)  (and (edge ($$ ExhaleHeap@5 g_1) v1_12 v2_12) (not (and (= v1_12 node@1) (= v2_12 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) node@1 next))))))
 :qid |stdinbpl.5071:40|
 :skolemid |540|
 :pattern ( (edge (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@6 g_1)) g_1) v1_12 v2_12))
))) (and (=> (= (ControlFlow 0 214) 212) anon375_Then_correct) (=> (= (ControlFlow 0 214) 213) anon375_Else_correct))))))
(let ((anon373_Else_correct  (=> (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) node@1 next) null)) (and (=> (= (ControlFlow 0 217) 214) anon374_Then_correct) (=> (= (ControlFlow 0 217) 215) anon374_Else_correct)))))
(let ((anon373_Then_correct  (=> (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) node@1 next) null) (=> (and (state ExhaleHeap@6 QPMask@12) (|Set#Equal_37937| ($$ ExhaleHeap@6 g_1) ($$ ExhaleHeap@5 g_1))) (and (=> (= (ControlFlow 0 216) 214) anon374_Then_correct) (=> (= (ControlFlow 0 216) 215) anon374_Else_correct))))))
(let ((anon371_Else_correct  (=> (forall ((n$0_15_1 T@Ref) ) (!  (=> (and (select g_1 n$0_15_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$0_15_1 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$0_15_1 next)))
 :qid |stdinbpl.5004:38|
 :skolemid |531|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$0_15_1 next)))
 :pattern ( (select g_1 n$0_15_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$0_15_1 next))
)) (=> (and (IdenticalOnKnownLocations ExhaleHeap@5 ExhaleHeap@6 QPMask@11) (not (select g_1 null))) (=> (and (and (select g_1 node@1) (not (= node@1 null))) (and (= Mask@5 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@11) node@1 next (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@11) node@1 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@11) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@11) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@11))) (state ExhaleHeap@6 Mask@5))) (and (=> (= (ControlFlow 0 218) (- 0 220)) (forall ((n$1_8 T@Ref) (n$1_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_8 n$1_8_1)) (and (select g_1 n$1_8) (not (= n$1_8 node@1)))) (and (select g_1 n$1_8_1) (not (= n$1_8_1 node@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_8 n$1_8_1)))
 :qid |stdinbpl.5022:33|
 :skolemid |532|
))) (=> (forall ((n$1_8@@0 T@Ref) (n$1_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_8@@0 n$1_8_1@@0)) (and (select g_1 n$1_8@@0) (not (= n$1_8@@0 node@1)))) (and (select g_1 n$1_8_1@@0) (not (= n$1_8_1@@0 node@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_8@@0 n$1_8_1@@0)))
 :qid |stdinbpl.5022:33|
 :skolemid |532|
)) (=> (and (forall ((n$1_8@@1 T@Ref) ) (!  (=> (and (and (select g_1 n$1_8@@1) (not (= n$1_8@@1 node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange62 n$1_8@@1) (= (invRecv62 n$1_8@@1) n$1_8@@1)))
 :qid |stdinbpl.5028:40|
 :skolemid |533|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$1_8@@1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@12) n$1_8@@1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$1_8@@1 next))
)) (forall ((o_4@@95 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv62 o_4@@95)) (not (= (invRecv62 o_4@@95) node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange62 o_4@@95)) (= (invRecv62 o_4@@95) o_4@@95))
 :qid |stdinbpl.5032:40|
 :skolemid |534|
 :pattern ( (invRecv62 o_4@@95))
))) (and (=> (= (ControlFlow 0 218) (- 0 219)) (forall ((n$1_8@@2 T@Ref) ) (!  (=> (and (select g_1 n$1_8@@2) (not (= n$1_8@@2 node@1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5038:33|
 :skolemid |535|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$1_8@@2 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@12) n$1_8@@2 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$1_8@@2 next))
))) (=> (forall ((n$1_8@@3 T@Ref) ) (!  (=> (and (select g_1 n$1_8@@3) (not (= n$1_8@@3 node@1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.5038:33|
 :skolemid |535|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$1_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@12) n$1_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$1_8@@3 next))
)) (=> (and (forall ((n$1_8@@4 T@Ref) ) (!  (=> (and (and (select g_1 n$1_8@@4) (not (= n$1_8@@4 node@1))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$1_8@@4 null)))
 :qid |stdinbpl.5044:40|
 :skolemid |536|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$1_8@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@12) n$1_8@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$1_8@@4 next))
)) (forall ((o_4@@96 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv62 o_4@@96)) (not (= (invRecv62 o_4@@96) node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange62 o_4@@96)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv62 o_4@@96) o_4@@96)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@12) o_4@@96 next) (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@5) o_4@@96 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv62 o_4@@96)) (not (= (invRecv62 o_4@@96) node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange62 o_4@@96))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@12) o_4@@96 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@5) o_4@@96 next))))
 :qid |stdinbpl.5050:40|
 :skolemid |537|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@12) o_4@@96 next))
))) (=> (and (and (and (and (and (forall ((o_4@@97 T@Ref) (f_5@@63 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@5) o_4@@97 f_5@@63) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@12) o_4@@97 f_5@@63)))
 :qid |stdinbpl.5054:47|
 :skolemid |538|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@5) o_4@@97 f_5@@63))
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@12) o_4@@97 f_5@@63))
)) (forall ((o_4@@98 T@Ref) (f_5@@64 T@Field_58075_58076) ) (!  (=> (not (= f_5@@64 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@5) o_4@@98 f_5@@64) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@12) o_4@@98 f_5@@64)))
 :qid |stdinbpl.5054:47|
 :skolemid |538|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@5) o_4@@98 f_5@@64))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@12) o_4@@98 f_5@@64))
))) (forall ((o_4@@99 T@Ref) (f_5@@65 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@5) o_4@@99 f_5@@65) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@12) o_4@@99 f_5@@65)))
 :qid |stdinbpl.5054:47|
 :skolemid |538|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@5) o_4@@99 f_5@@65))
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@12) o_4@@99 f_5@@65))
))) (forall ((o_4@@100 T@Ref) (f_5@@66 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@5) o_4@@100 f_5@@66) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@12) o_4@@100 f_5@@66)))
 :qid |stdinbpl.5054:47|
 :skolemid |538|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@5) o_4@@100 f_5@@66))
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@12) o_4@@100 f_5@@66))
))) (state ExhaleHeap@6 QPMask@12)) (and (forall ((n$2_10 T@Ref) ) (!  (=> (and (select g_1 n$2_10) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$2_10 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$2_10 next)))
 :qid |stdinbpl.5060:38|
 :skolemid |539|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$2_10 next)))
 :pattern ( (select g_1 n$2_10) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) n$2_10 next))
)) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@6) node@1 next) null))) (and (=> (= (ControlFlow 0 218) 216) anon373_Then_correct) (=> (= (ControlFlow 0 218) 217) anon373_Else_correct))))))))))))))
(let ((anon182_correct  (=> (= Mask@4 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@10) node@1 next (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@10) node@1 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@10) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@10) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@10))) (and (=> (= (ControlFlow 0 221) (- 0 224)) (forall ((n_19 T@Ref) ) (!  (=> (and (and (select g_1 n_19) (not (= n_19 node@1))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_19 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4956:35|
 :skolemid |524|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_19 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@11) n_19 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_19 next))
))) (=> (forall ((n_19@@0 T@Ref) ) (!  (=> (and (and (select g_1 n_19@@0) (not (= n_19@@0 node@1))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_19@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4956:35|
 :skolemid |524|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_19@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@11) n_19@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_19@@0 next))
)) (and (=> (= (ControlFlow 0 221) (- 0 223)) (forall ((n_19@@1 T@Ref) (n_19_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_19@@1 n_19_1)) (and (select g_1 n_19@@1) (not (= n_19@@1 node@1)))) (and (select g_1 n_19_1) (not (= n_19_1 node@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_19@@1 n_19_1)))
 :qid |stdinbpl.4963:35|
 :skolemid |525|
 :pattern ( (neverTriggered61 n_19@@1) (neverTriggered61 n_19_1))
))) (=> (forall ((n_19@@2 T@Ref) (n_19_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_19@@2 n_19_1@@0)) (and (select g_1 n_19@@2) (not (= n_19@@2 node@1)))) (and (select g_1 n_19_1@@0) (not (= n_19_1@@0 node@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_19@@2 n_19_1@@0)))
 :qid |stdinbpl.4963:35|
 :skolemid |525|
 :pattern ( (neverTriggered61 n_19@@2) (neverTriggered61 n_19_1@@0))
)) (and (=> (= (ControlFlow 0 221) (- 0 222)) (forall ((n_19@@3 T@Ref) ) (!  (=> (and (select g_1 n_19@@3) (not (= n_19@@3 node@1))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@4) n_19@@3 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4970:35|
 :skolemid |526|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_19@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@11) n_19@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_19@@3 next))
))) (=> (forall ((n_19@@4 T@Ref) ) (!  (=> (and (select g_1 n_19@@4) (not (= n_19@@4 node@1))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@4) n_19@@4 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4970:35|
 :skolemid |526|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_19@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@11) n_19@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_19@@4 next))
)) (=> (forall ((n_19@@5 T@Ref) ) (!  (=> (and (and (select g_1 n_19@@5) (not (= n_19@@5 node@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange61 n_19@@5) (= (invRecv61 n_19@@5) n_19@@5)))
 :qid |stdinbpl.4976:40|
 :skolemid |527|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_19@@5 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@11) n_19@@5 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n_19@@5 next))
)) (=> (and (forall ((o_4@@101 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv61 o_4@@101)) (not (= (invRecv61 o_4@@101) node@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange61 o_4@@101))) (= (invRecv61 o_4@@101) o_4@@101))
 :qid |stdinbpl.4980:40|
 :skolemid |528|
 :pattern ( (invRecv61 o_4@@101))
)) (forall ((o_4@@102 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv61 o_4@@102)) (not (= (invRecv61 o_4@@102) node@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange61 o_4@@102))) (and (= (invRecv61 o_4@@102) o_4@@102) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@11) o_4@@102 next) (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@4) o_4@@102 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select g_1 (invRecv61 o_4@@102)) (not (= (invRecv61 o_4@@102) node@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange61 o_4@@102)))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@11) o_4@@102 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@4) o_4@@102 next))))
 :qid |stdinbpl.4986:40|
 :skolemid |529|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@11) o_4@@102 next))
))) (=> (and (and (and (forall ((o_4@@103 T@Ref) (f_5@@67 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@4) o_4@@103 f_5@@67) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@11) o_4@@103 f_5@@67)))
 :qid |stdinbpl.4992:47|
 :skolemid |530|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@11) o_4@@103 f_5@@67))
)) (forall ((o_4@@104 T@Ref) (f_5@@68 T@Field_58075_58076) ) (!  (=> (not (= f_5@@68 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@4) o_4@@104 f_5@@68) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@11) o_4@@104 f_5@@68)))
 :qid |stdinbpl.4992:47|
 :skolemid |530|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@11) o_4@@104 f_5@@68))
))) (forall ((o_4@@105 T@Ref) (f_5@@69 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@4) o_4@@105 f_5@@69) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@11) o_4@@105 f_5@@69)))
 :qid |stdinbpl.4992:47|
 :skolemid |530|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@11) o_4@@105 f_5@@69))
))) (forall ((o_4@@106 T@Ref) (f_5@@70 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@4) o_4@@106 f_5@@70) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@11) o_4@@106 f_5@@70)))
 :qid |stdinbpl.4992:47|
 :skolemid |530|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@11) o_4@@106 f_5@@70))
))) (and (and (=> (= (ControlFlow 0 221) 218) anon371_Else_correct) (=> (= (ControlFlow 0 221) 125) anon372_Then_correct)) (=> (= (ControlFlow 0 221) 127) anon372_Else_correct))))))))))))))
(let ((anon370_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 227) 221)) anon182_correct)))
(let ((anon370_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 225) (- 0 226)) (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@10) node@1 next))) (=> (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@10) node@1 next)) (=> (= (ControlFlow 0 225) 221) anon182_correct))))))
(let ((anon343_Else_correct  (=> (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) node_i@1 next) node@1) (and (=> (= (ControlFlow 0 228) (- 0 231)) (select g_1 node@1)) (=> (select g_1 node@1) (and (=> (= (ControlFlow 0 228) (- 0 230)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 228) (- 0 229)) (select g_1 node@1)) (=> (select g_1 node@1) (and (=> (= (ControlFlow 0 228) 225) anon370_Then_correct) (=> (= (ControlFlow 0 228) 227) anon370_Else_correct)))))))))))
(let ((anon126_correct  (=> (and (state ExhaleHeap@5 QPMask@10) (state ExhaleHeap@5 QPMask@10)) (and (=> (= (ControlFlow 0 340) (- 0 341)) (HasDirectPerm_37930_37931 QPMask@10 node_i@1 next)) (=> (HasDirectPerm_37930_37931 QPMask@10 node_i@1 next) (and (=> (= (ControlFlow 0 340) 336) anon343_Then_correct) (=> (= (ControlFlow 0 340) 228) anon343_Else_correct)))))))
(let ((anon342_Else_correct  (=> (and (= node@1 null) (= (ControlFlow 0 343) 340)) anon126_correct)))
(let ((anon342_Then_correct  (=> (and (and (not (= node@1 null)) (state ExhaleHeap@5 QPMask@10)) (and (forall ((v1_3 T@Ref) (v2_3 T@Ref) ) (!  (=> (not (= v1_3 v2_3)) (= (exists_path ($$ ExhaleHeap@5 g_1) v1_3 v2_3)  (or (exists_path ($$ ExhaleHeap@4 g_1) v1_3 v2_3) (and (exists_path ($$ ExhaleHeap@4 g_1) v1_3 prev_i@1) (exists_path ($$ ExhaleHeap@4 g_1) node@1 v2_3)))))
 :qid |stdinbpl.4288:36|
 :skolemid |451|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@5 g_1)) g_1) v1_3 v2_3))
)) (= (ControlFlow 0 342) 340))) anon126_correct)))
(let ((anon341_Else_correct  (=> (= node@1 null) (and (=> (= (ControlFlow 0 345) 342) anon342_Then_correct) (=> (= (ControlFlow 0 345) 343) anon342_Else_correct)))))
(let ((anon341_Then_correct  (=> (not (= node@1 null)) (=> (and (state ExhaleHeap@5 QPMask@10) (forall ((v1_2_1 T@Ref) (v2_2_1 T@Ref) ) (! (= (edge ($$ ExhaleHeap@5 g_1) v1_2_1 v2_2_1)  (or (edge ($$ ExhaleHeap@4 g_1) v1_2_1 v2_2_1) (and (= v1_2_1 prev_i@1) (= v2_2_1 node@1))))
 :qid |stdinbpl.4281:36|
 :skolemid |450|
 :pattern ( (edge (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) v1_2_1 v2_2_1))
))) (and (=> (= (ControlFlow 0 344) 342) anon342_Then_correct) (=> (= (ControlFlow 0 344) 343) anon342_Else_correct))))))
(let ((anon340_Else_correct  (=> (not (= node@1 null)) (and (=> (= (ControlFlow 0 347) 344) anon341_Then_correct) (=> (= (ControlFlow 0 347) 345) anon341_Else_correct)))))
(let ((anon340_Then_correct  (=> (= node@1 null) (=> (and (state ExhaleHeap@5 QPMask@10) (|Set#Equal_37937| ($$ ExhaleHeap@5 g_1) ($$ ExhaleHeap@4 g_1))) (and (=> (= (ControlFlow 0 346) 344) anon341_Then_correct) (=> (= (ControlFlow 0 346) 345) anon341_Else_correct))))))
(let ((anon338_Else_correct  (=> (forall ((n$0_5_1 T@Ref) ) (!  (=> (and (select g_1 n$0_5_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$0_5_1 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$0_5_1 next)))
 :qid |stdinbpl.4212:34|
 :skolemid |441|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$0_5_1 next)))
 :pattern ( (select g_1 n$0_5_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$0_5_1 next))
)) (and (=> (= (ControlFlow 0 348) (- 0 351)) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) prev_i@1 next) null)) (=> (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) prev_i@1 next) null) (=> (and (IdenticalOnKnownLocations ExhaleHeap@4 ExhaleHeap@5 QPMask@9) (not (select g_1 null))) (=> (and (and (select g_1 prev_i@1) (not (= prev_i@1 null))) (and (= Mask@3 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@9) prev_i@1 next (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@9) prev_i@1 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@9) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@9) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@9))) (state ExhaleHeap@5 Mask@3))) (and (=> (= (ControlFlow 0 348) (- 0 350)) (forall ((n$1_3 T@Ref) (n$1_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_3 n$1_3_1)) (and (select g_1 n$1_3) (not (= n$1_3 prev_i@1)))) (and (select g_1 n$1_3_1) (not (= n$1_3_1 prev_i@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_3 n$1_3_1)))
 :qid |stdinbpl.4232:29|
 :skolemid |442|
))) (=> (forall ((n$1_3@@0 T@Ref) (n$1_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_3@@0 n$1_3_1@@0)) (and (select g_1 n$1_3@@0) (not (= n$1_3@@0 prev_i@1)))) (and (select g_1 n$1_3_1@@0) (not (= n$1_3_1@@0 prev_i@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_3@@0 n$1_3_1@@0)))
 :qid |stdinbpl.4232:29|
 :skolemid |442|
)) (=> (and (forall ((n$1_3@@1 T@Ref) ) (!  (=> (and (and (select g_1 n$1_3@@1) (not (= n$1_3@@1 prev_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange52 n$1_3@@1) (= (invRecv52 n$1_3@@1) n$1_3@@1)))
 :qid |stdinbpl.4238:36|
 :skolemid |443|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$1_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@10) n$1_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$1_3@@1 next))
)) (forall ((o_4@@107 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv52 o_4@@107)) (not (= (invRecv52 o_4@@107) prev_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange52 o_4@@107)) (= (invRecv52 o_4@@107) o_4@@107))
 :qid |stdinbpl.4242:36|
 :skolemid |444|
 :pattern ( (invRecv52 o_4@@107))
))) (and (=> (= (ControlFlow 0 348) (- 0 349)) (forall ((n$1_3@@2 T@Ref) ) (!  (=> (and (select g_1 n$1_3@@2) (not (= n$1_3@@2 prev_i@1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4248:29|
 :skolemid |445|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$1_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@10) n$1_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$1_3@@2 next))
))) (=> (forall ((n$1_3@@3 T@Ref) ) (!  (=> (and (select g_1 n$1_3@@3) (not (= n$1_3@@3 prev_i@1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4248:29|
 :skolemid |445|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$1_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@10) n$1_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$1_3@@3 next))
)) (=> (and (forall ((n$1_3@@4 T@Ref) ) (!  (=> (and (and (select g_1 n$1_3@@4) (not (= n$1_3@@4 prev_i@1))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$1_3@@4 null)))
 :qid |stdinbpl.4254:36|
 :skolemid |446|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$1_3@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@10) n$1_3@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$1_3@@4 next))
)) (forall ((o_4@@108 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv52 o_4@@108)) (not (= (invRecv52 o_4@@108) prev_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange52 o_4@@108)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv52 o_4@@108) o_4@@108)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@10) o_4@@108 next) (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@3) o_4@@108 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv52 o_4@@108)) (not (= (invRecv52 o_4@@108) prev_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange52 o_4@@108))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@10) o_4@@108 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@3) o_4@@108 next))))
 :qid |stdinbpl.4260:36|
 :skolemid |447|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@10) o_4@@108 next))
))) (=> (and (and (and (and (and (forall ((o_4@@109 T@Ref) (f_5@@71 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@3) o_4@@109 f_5@@71) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@10) o_4@@109 f_5@@71)))
 :qid |stdinbpl.4264:43|
 :skolemid |448|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@3) o_4@@109 f_5@@71))
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@10) o_4@@109 f_5@@71))
)) (forall ((o_4@@110 T@Ref) (f_5@@72 T@Field_58075_58076) ) (!  (=> (not (= f_5@@72 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@3) o_4@@110 f_5@@72) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@10) o_4@@110 f_5@@72)))
 :qid |stdinbpl.4264:43|
 :skolemid |448|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@3) o_4@@110 f_5@@72))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@10) o_4@@110 f_5@@72))
))) (forall ((o_4@@111 T@Ref) (f_5@@73 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@3) o_4@@111 f_5@@73) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@10) o_4@@111 f_5@@73)))
 :qid |stdinbpl.4264:43|
 :skolemid |448|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@3) o_4@@111 f_5@@73))
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@10) o_4@@111 f_5@@73))
))) (forall ((o_4@@112 T@Ref) (f_5@@74 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@3) o_4@@112 f_5@@74) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@10) o_4@@112 f_5@@74)))
 :qid |stdinbpl.4264:43|
 :skolemid |448|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@3) o_4@@112 f_5@@74))
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@10) o_4@@112 f_5@@74))
))) (state ExhaleHeap@5 QPMask@10)) (and (forall ((n$2_5_1 T@Ref) ) (!  (=> (and (select g_1 n$2_5_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$2_5_1 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$2_5_1 next)))
 :qid |stdinbpl.4270:34|
 :skolemid |449|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$2_5_1 next)))
 :pattern ( (select g_1 n$2_5_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) n$2_5_1 next))
)) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@5) prev_i@1 next) node@1))) (and (=> (= (ControlFlow 0 348) 346) anon340_Then_correct) (=> (= (ControlFlow 0 348) 347) anon340_Else_correct))))))))))))))))
(let ((anon116_correct  (=> (= Mask@2 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@8) prev_i@1 next (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@8) prev_i@1 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@8) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@8) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@8))) (and (=> (= (ControlFlow 0 352) (- 0 355)) (forall ((n_14 T@Ref) ) (!  (=> (and (and (select g_1 n_14) (not (= n_14 prev_i@1))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n_14 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4164:31|
 :skolemid |434|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n_14 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@9) n_14 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n_14 next))
))) (=> (forall ((n_14@@0 T@Ref) ) (!  (=> (and (and (select g_1 n_14@@0) (not (= n_14@@0 prev_i@1))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n_14@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4164:31|
 :skolemid |434|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n_14@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@9) n_14@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n_14@@0 next))
)) (and (=> (= (ControlFlow 0 352) (- 0 354)) (forall ((n_14@@1 T@Ref) (n_14_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14@@1 n_14_1)) (and (select g_1 n_14@@1) (not (= n_14@@1 prev_i@1)))) (and (select g_1 n_14_1) (not (= n_14_1 prev_i@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_14@@1 n_14_1)))
 :qid |stdinbpl.4171:31|
 :skolemid |435|
 :pattern ( (neverTriggered51 n_14@@1) (neverTriggered51 n_14_1))
))) (=> (forall ((n_14@@2 T@Ref) (n_14_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14@@2 n_14_1@@0)) (and (select g_1 n_14@@2) (not (= n_14@@2 prev_i@1)))) (and (select g_1 n_14_1@@0) (not (= n_14_1@@0 prev_i@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_14@@2 n_14_1@@0)))
 :qid |stdinbpl.4171:31|
 :skolemid |435|
 :pattern ( (neverTriggered51 n_14@@2) (neverTriggered51 n_14_1@@0))
)) (and (=> (= (ControlFlow 0 352) (- 0 353)) (forall ((n_14@@3 T@Ref) ) (!  (=> (and (select g_1 n_14@@3) (not (= n_14@@3 prev_i@1))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@2) n_14@@3 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4178:31|
 :skolemid |436|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n_14@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@9) n_14@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n_14@@3 next))
))) (=> (forall ((n_14@@4 T@Ref) ) (!  (=> (and (select g_1 n_14@@4) (not (= n_14@@4 prev_i@1))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@2) n_14@@4 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4178:31|
 :skolemid |436|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n_14@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@9) n_14@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n_14@@4 next))
)) (=> (forall ((n_14@@5 T@Ref) ) (!  (=> (and (and (select g_1 n_14@@5) (not (= n_14@@5 prev_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange51 n_14@@5) (= (invRecv51 n_14@@5) n_14@@5)))
 :qid |stdinbpl.4184:36|
 :skolemid |437|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n_14@@5 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@9) n_14@@5 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n_14@@5 next))
)) (=> (and (forall ((o_4@@113 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv51 o_4@@113)) (not (= (invRecv51 o_4@@113) prev_i@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange51 o_4@@113))) (= (invRecv51 o_4@@113) o_4@@113))
 :qid |stdinbpl.4188:36|
 :skolemid |438|
 :pattern ( (invRecv51 o_4@@113))
)) (forall ((o_4@@114 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv51 o_4@@114)) (not (= (invRecv51 o_4@@114) prev_i@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange51 o_4@@114))) (and (= (invRecv51 o_4@@114) o_4@@114) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@9) o_4@@114 next) (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@2) o_4@@114 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select g_1 (invRecv51 o_4@@114)) (not (= (invRecv51 o_4@@114) prev_i@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange51 o_4@@114)))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@9) o_4@@114 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@2) o_4@@114 next))))
 :qid |stdinbpl.4194:36|
 :skolemid |439|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@9) o_4@@114 next))
))) (=> (and (and (and (forall ((o_4@@115 T@Ref) (f_5@@75 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@2) o_4@@115 f_5@@75) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@9) o_4@@115 f_5@@75)))
 :qid |stdinbpl.4200:43|
 :skolemid |440|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@9) o_4@@115 f_5@@75))
)) (forall ((o_4@@116 T@Ref) (f_5@@76 T@Field_58075_58076) ) (!  (=> (not (= f_5@@76 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@2) o_4@@116 f_5@@76) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@9) o_4@@116 f_5@@76)))
 :qid |stdinbpl.4200:43|
 :skolemid |440|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@9) o_4@@116 f_5@@76))
))) (forall ((o_4@@117 T@Ref) (f_5@@77 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@2) o_4@@117 f_5@@77) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@9) o_4@@117 f_5@@77)))
 :qid |stdinbpl.4200:43|
 :skolemid |440|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@9) o_4@@117 f_5@@77))
))) (forall ((o_4@@118 T@Ref) (f_5@@78 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@2) o_4@@118 f_5@@78) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@9) o_4@@118 f_5@@78)))
 :qid |stdinbpl.4200:43|
 :skolemid |440|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@9) o_4@@118 f_5@@78))
))) (and (and (=> (= (ControlFlow 0 352) 348) anon338_Else_correct) (=> (= (ControlFlow 0 352) 121) anon339_Then_correct)) (=> (= (ControlFlow 0 352) 123) anon339_Else_correct))))))))))))))
(let ((anon337_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 358) 352)) anon116_correct)))
(let ((anon337_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 356) (- 0 357)) (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@8) prev_i@1 next))) (=> (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@8) prev_i@1 next)) (=> (= (ControlFlow 0 356) 352) anon116_correct))))))
(let ((anon114_correct  (and (=> (= (ControlFlow 0 359) (- 0 361)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 359) (- 0 360)) (select g_1 prev_i@1)) (=> (select g_1 prev_i@1) (and (=> (= (ControlFlow 0 359) 356) anon337_Then_correct) (=> (= (ControlFlow 0 359) 358) anon337_Else_correct))))))))
(let ((anon336_Else_correct  (=> (and (= node@1 null) (= (ControlFlow 0 364) 359)) anon114_correct)))
(let ((anon336_Then_correct  (=> (not (= node@1 null)) (and (=> (= (ControlFlow 0 362) (- 0 363)) (select g_1 node@1)) (=> (select g_1 node@1) (=> (= (ControlFlow 0 362) 359) anon114_correct))))))
(let ((anon112_correct  (=> (and (state ExhaleHeap@4 QPMask@8) (state ExhaleHeap@4 QPMask@8)) (and (=> (= (ControlFlow 0 365) (- 0 366)) (select g_1 prev_i@1)) (=> (select g_1 prev_i@1) (and (=> (= (ControlFlow 0 365) 362) anon336_Then_correct) (=> (= (ControlFlow 0 365) 364) anon336_Else_correct)))))))
(let ((anon335_Else_correct  (=> (and (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) prev_i@1 next) null) (= (ControlFlow 0 368) 365)) anon112_correct)))
(let ((anon335_Then_correct  (=> (and (and (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) prev_i@1 next) null)) (state ExhaleHeap@4 QPMask@8)) (and (forall ((v1_1 T@Ref) (v2_1 T@Ref) ) (!  (=> (not (= v1_1 v2_1)) (= (exists_path ($$ ExhaleHeap@4 g_1) v1_1 v2_1)  (and (exists_path ($$ ExhaleHeap@3 g_1) v1_1 v2_1) (not (and (exists_path ($$ ExhaleHeap@3 g_1) v1_1 prev_i@1) (exists_path ($$ ExhaleHeap@3 g_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) prev_i@1 next) v2_1))))))
 :qid |stdinbpl.4129:36|
 :skolemid |433|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) v1_1 v2_1))
)) (= (ControlFlow 0 367) 365))) anon112_correct)))
(let ((anon334_Else_correct  (=> (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) prev_i@1 next) null) (and (=> (= (ControlFlow 0 370) 367) anon335_Then_correct) (=> (= (ControlFlow 0 370) 368) anon335_Else_correct)))))
(let ((anon334_Then_correct  (=> (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) prev_i@1 next) null)) (=> (and (state ExhaleHeap@4 QPMask@8) (forall ((v1@@2 T@Ref) (v2@@2 T@Ref) ) (! (= (edge ($$ ExhaleHeap@4 g_1) v1@@2 v2@@2)  (and (edge ($$ ExhaleHeap@3 g_1) v1@@2 v2@@2) (not (and (= v1@@2 prev_i@1) (= v2@@2 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) prev_i@1 next))))))
 :qid |stdinbpl.4122:36|
 :skolemid |432|
 :pattern ( (edge (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@4 g_1)) g_1) v1@@2 v2@@2))
))) (and (=> (= (ControlFlow 0 369) 367) anon335_Then_correct) (=> (= (ControlFlow 0 369) 368) anon335_Else_correct))))))
(let ((anon333_Else_correct  (=> (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) prev_i@1 next) null)) (and (=> (= (ControlFlow 0 372) 369) anon334_Then_correct) (=> (= (ControlFlow 0 372) 370) anon334_Else_correct)))))
(let ((anon333_Then_correct  (=> (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) prev_i@1 next) null) (=> (and (state ExhaleHeap@4 QPMask@8) (|Set#Equal_37937| ($$ ExhaleHeap@4 g_1) ($$ ExhaleHeap@3 g_1))) (and (=> (= (ControlFlow 0 371) 369) anon334_Then_correct) (=> (= (ControlFlow 0 371) 370) anon334_Else_correct))))))
(let ((anon331_Else_correct  (=> (forall ((n$0_3_1 T@Ref) ) (!  (=> (and (select g_1 n$0_3_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$0_3_1 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$0_3_1 next)))
 :qid |stdinbpl.4055:34|
 :skolemid |423|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$0_3_1 next)))
 :pattern ( (select g_1 n$0_3_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$0_3_1 next))
)) (=> (and (IdenticalOnKnownLocations ExhaleHeap@3 ExhaleHeap@4 QPMask@7) (not (select g_1 null))) (=> (and (and (select g_1 prev_i@1) (not (= prev_i@1 null))) (and (= Mask@1 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@7) prev_i@1 next (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@7) prev_i@1 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@7) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@7) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@7))) (state ExhaleHeap@4 Mask@1))) (and (=> (= (ControlFlow 0 373) (- 0 375)) (forall ((n$1_2 T@Ref) (n$1_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_2 n$1_2_1)) (and (select g_1 n$1_2) (not (= n$1_2 prev_i@1)))) (and (select g_1 n$1_2_1) (not (= n$1_2_1 prev_i@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_2 n$1_2_1)))
 :qid |stdinbpl.4073:29|
 :skolemid |424|
))) (=> (forall ((n$1_2@@0 T@Ref) (n$1_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_2@@0 n$1_2_1@@0)) (and (select g_1 n$1_2@@0) (not (= n$1_2@@0 prev_i@1)))) (and (select g_1 n$1_2_1@@0) (not (= n$1_2_1@@0 prev_i@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n$1_2@@0 n$1_2_1@@0)))
 :qid |stdinbpl.4073:29|
 :skolemid |424|
)) (=> (and (forall ((n$1_2@@1 T@Ref) ) (!  (=> (and (and (select g_1 n$1_2@@1) (not (= n$1_2@@1 prev_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange50 n$1_2@@1) (= (invRecv50 n$1_2@@1) n$1_2@@1)))
 :qid |stdinbpl.4079:36|
 :skolemid |425|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$1_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@8) n$1_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$1_2@@1 next))
)) (forall ((o_4@@119 T@Ref) ) (!  (=> (and (and (and (select g_1 (invRecv50 o_4@@119)) (not (= (invRecv50 o_4@@119) prev_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange50 o_4@@119)) (= (invRecv50 o_4@@119) o_4@@119))
 :qid |stdinbpl.4083:36|
 :skolemid |426|
 :pattern ( (invRecv50 o_4@@119))
))) (and (=> (= (ControlFlow 0 373) (- 0 374)) (forall ((n$1_2@@2 T@Ref) ) (!  (=> (and (select g_1 n$1_2@@2) (not (= n$1_2@@2 prev_i@1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4089:29|
 :skolemid |427|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$1_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@8) n$1_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$1_2@@2 next))
))) (=> (forall ((n$1_2@@3 T@Ref) ) (!  (=> (and (select g_1 n$1_2@@3) (not (= n$1_2@@3 prev_i@1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4089:29|
 :skolemid |427|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$1_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@8) n$1_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$1_2@@3 next))
)) (=> (and (forall ((n$1_2@@4 T@Ref) ) (!  (=> (and (and (select g_1 n$1_2@@4) (not (= n$1_2@@4 prev_i@1))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= n$1_2@@4 null)))
 :qid |stdinbpl.4095:36|
 :skolemid |428|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$1_2@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@8) n$1_2@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$1_2@@4 next))
)) (forall ((o_4@@120 T@Ref) ) (!  (and (=> (and (and (and (select g_1 (invRecv50 o_4@@120)) (not (= (invRecv50 o_4@@120) prev_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange50 o_4@@120)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv50 o_4@@120) o_4@@120)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@8) o_4@@120 next) (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@1) o_4@@120 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (select g_1 (invRecv50 o_4@@120)) (not (= (invRecv50 o_4@@120) prev_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange50 o_4@@120))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@8) o_4@@120 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@1) o_4@@120 next))))
 :qid |stdinbpl.4101:36|
 :skolemid |429|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@8) o_4@@120 next))
))) (=> (and (and (and (and (and (forall ((o_4@@121 T@Ref) (f_5@@79 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@1) o_4@@121 f_5@@79) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@8) o_4@@121 f_5@@79)))
 :qid |stdinbpl.4105:43|
 :skolemid |430|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@1) o_4@@121 f_5@@79))
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@8) o_4@@121 f_5@@79))
)) (forall ((o_4@@122 T@Ref) (f_5@@80 T@Field_58075_58076) ) (!  (=> (not (= f_5@@80 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@1) o_4@@122 f_5@@80) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@8) o_4@@122 f_5@@80)))
 :qid |stdinbpl.4105:43|
 :skolemid |430|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@1) o_4@@122 f_5@@80))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@8) o_4@@122 f_5@@80))
))) (forall ((o_4@@123 T@Ref) (f_5@@81 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@1) o_4@@123 f_5@@81) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@8) o_4@@123 f_5@@81)))
 :qid |stdinbpl.4105:43|
 :skolemid |430|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@1) o_4@@123 f_5@@81))
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@8) o_4@@123 f_5@@81))
))) (forall ((o_4@@124 T@Ref) (f_5@@82 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@1) o_4@@124 f_5@@82) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@8) o_4@@124 f_5@@82)))
 :qid |stdinbpl.4105:43|
 :skolemid |430|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@1) o_4@@124 f_5@@82))
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@8) o_4@@124 f_5@@82))
))) (state ExhaleHeap@4 QPMask@8)) (and (forall ((n$2_4_1 T@Ref) ) (!  (=> (and (select g_1 n$2_4_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$2_4_1 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$2_4_1 next)))
 :qid |stdinbpl.4111:34|
 :skolemid |431|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$2_4_1 next)))
 :pattern ( (select g_1 n$2_4_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) n$2_4_1 next))
)) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@4) prev_i@1 next) null))) (and (=> (= (ControlFlow 0 373) 371) anon333_Then_correct) (=> (= (ControlFlow 0 373) 372) anon333_Else_correct))))))))))))))
(let ((anon102_correct  (=> (= Mask@0 (PolymorphicMapType_58023 (store (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@5) prev_i@1 next (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@5) prev_i@1 next) FullPerm)) (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@5) (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@5) (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@5))) (and (=> (= (ControlFlow 0 376) (- 0 379)) (forall ((n_13 T@Ref) ) (!  (=> (and (and (select g_1 n_13) (not (= n_13 prev_i@1))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_13 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4007:31|
 :skolemid |416|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_13 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@7) n_13 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_13 next))
))) (=> (forall ((n_13@@0 T@Ref) ) (!  (=> (and (and (select g_1 n_13@@0) (not (= n_13@@0 prev_i@1))) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_13@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.4007:31|
 :skolemid |416|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_13@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@7) n_13@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_13@@0 next))
)) (and (=> (= (ControlFlow 0 376) (- 0 378)) (forall ((n_13@@1 T@Ref) (n_13_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13@@1 n_13_1)) (and (select g_1 n_13@@1) (not (= n_13@@1 prev_i@1)))) (and (select g_1 n_13_1) (not (= n_13_1 prev_i@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_13@@1 n_13_1)))
 :qid |stdinbpl.4014:31|
 :skolemid |417|
 :pattern ( (neverTriggered49 n_13@@1) (neverTriggered49 n_13_1))
))) (=> (forall ((n_13@@2 T@Ref) (n_13_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13@@2 n_13_1@@0)) (and (select g_1 n_13@@2) (not (= n_13@@2 prev_i@1)))) (and (select g_1 n_13_1@@0) (not (= n_13_1@@0 prev_i@1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_13@@2 n_13_1@@0)))
 :qid |stdinbpl.4014:31|
 :skolemid |417|
 :pattern ( (neverTriggered49 n_13@@2) (neverTriggered49 n_13_1@@0))
)) (and (=> (= (ControlFlow 0 376) (- 0 377)) (forall ((n_13@@3 T@Ref) ) (!  (=> (and (select g_1 n_13@@3) (not (= n_13@@3 prev_i@1))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@0) n_13@@3 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4021:31|
 :skolemid |418|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_13@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@7) n_13@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_13@@3 next))
))) (=> (forall ((n_13@@4 T@Ref) ) (!  (=> (and (select g_1 n_13@@4) (not (= n_13@@4 prev_i@1))) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@0) n_13@@4 next) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.4021:31|
 :skolemid |418|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_13@@4 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@7) n_13@@4 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_13@@4 next))
)) (=> (forall ((n_13@@5 T@Ref) ) (!  (=> (and (and (select g_1 n_13@@5) (not (= n_13@@5 prev_i@1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange49 n_13@@5) (= (invRecv49 n_13@@5) n_13@@5)))
 :qid |stdinbpl.4027:36|
 :skolemid |419|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_13@@5 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@7) n_13@@5 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n_13@@5 next))
)) (=> (and (forall ((o_4@@125 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv49 o_4@@125)) (not (= (invRecv49 o_4@@125) prev_i@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange49 o_4@@125))) (= (invRecv49 o_4@@125) o_4@@125))
 :qid |stdinbpl.4031:36|
 :skolemid |420|
 :pattern ( (invRecv49 o_4@@125))
)) (forall ((o_4@@126 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv49 o_4@@126)) (not (= (invRecv49 o_4@@126) prev_i@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange49 o_4@@126))) (and (= (invRecv49 o_4@@126) o_4@@126) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@7) o_4@@126 next) (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@0) o_4@@126 next) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select g_1 (invRecv49 o_4@@126)) (not (= (invRecv49 o_4@@126) prev_i@1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange49 o_4@@126)))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@7) o_4@@126 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@0) o_4@@126 next))))
 :qid |stdinbpl.4037:36|
 :skolemid |421|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@7) o_4@@126 next))
))) (=> (and (and (and (forall ((o_4@@127 T@Ref) (f_5@@83 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| Mask@0) o_4@@127 f_5@@83) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@7) o_4@@127 f_5@@83)))
 :qid |stdinbpl.4043:43|
 :skolemid |422|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@7) o_4@@127 f_5@@83))
)) (forall ((o_4@@128 T@Ref) (f_5@@84 T@Field_58075_58076) ) (!  (=> (not (= f_5@@84 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| Mask@0) o_4@@128 f_5@@84) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@7) o_4@@128 f_5@@84)))
 :qid |stdinbpl.4043:43|
 :skolemid |422|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@7) o_4@@128 f_5@@84))
))) (forall ((o_4@@129 T@Ref) (f_5@@85 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| Mask@0) o_4@@129 f_5@@85) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@7) o_4@@129 f_5@@85)))
 :qid |stdinbpl.4043:43|
 :skolemid |422|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@7) o_4@@129 f_5@@85))
))) (forall ((o_4@@130 T@Ref) (f_5@@86 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| Mask@0) o_4@@130 f_5@@86) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@7) o_4@@130 f_5@@86)))
 :qid |stdinbpl.4043:43|
 :skolemid |422|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@7) o_4@@130 f_5@@86))
))) (and (and (=> (= (ControlFlow 0 376) 373) anon331_Else_correct) (=> (= (ControlFlow 0 376) 117) anon332_Then_correct)) (=> (= (ControlFlow 0 376) 119) anon332_Else_correct))))))))))))))
(let ((anon330_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 382) 376)) anon102_correct)))
(let ((anon330_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 380) (- 0 381)) (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@5) prev_i@1 next))) (=> (<= FullPerm (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@5) prev_i@1 next)) (=> (= (ControlFlow 0 380) 376) anon102_correct))))))
(let ((anon329_Then_correct  (=> (and (= count_1@0 j_9) (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| ExhaleHeap@3) node_j $allocated)) (=> (and (and (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| ExhaleHeap@3) prev_j $allocated) (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| ExhaleHeap@3) vexit $allocated)) (and (state ExhaleHeap@3 QPMask@5) (state ExhaleHeap@3 QPMask@5))) (and (=> (= (ControlFlow 0 383) (- 0 387)) (HasDirectPerm_37930_37931 QPMask@5 node@1 next)) (=> (HasDirectPerm_37930_37931 QPMask@5 node@1 next) (=> (and (= vexit@0 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) node@1 next)) (state ExhaleHeap@3 QPMask@5)) (and (=> (= (ControlFlow 0 383) (- 0 386)) (select g_1 prev_i@1)) (=> (select g_1 prev_i@1) (and (=> (= (ControlFlow 0 383) (- 0 385)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 383) (- 0 384)) (select g_1 prev_i@1)) (=> (select g_1 prev_i@1) (and (=> (= (ControlFlow 0 383) 380) anon330_Then_correct) (=> (= (ControlFlow 0 383) 382) anon330_Else_correct)))))))))))))))
(let ((anon329_Else_correct  (=> (and (and (not (= count_1@0 j_9)) (= Heap@1 ExhaleHeap@3)) (and (= Mask@21 QPMask@5) (= (ControlFlow 0 115) 113))) anon234_correct)))
(let ((anon99_correct  (=> (state ExhaleHeap@3 QPMask@5) (and (=> (= (ControlFlow 0 388) 383) anon329_Then_correct) (=> (= (ControlFlow 0 388) 115) anon329_Else_correct)))))
(let ((anon328_Else_correct  (=> (and (and (not (= count_1@0 i)) (= prev_i@1 prev_i@0)) (and (= node_i@1 node_i@0) (= (ControlFlow 0 390) 388))) anon99_correct)))
(let ((anon328_Then_correct  (=> (and (= count_1@0 i) (state ExhaleHeap@3 QPMask@5)) (=> (and (and (state ExhaleHeap@3 QPMask@5) (= prev_i@1 prev_node@0)) (and (= node_i@1 node@1) (= (ControlFlow 0 389) 388))) anon99_correct))))
(let ((anon97_correct  (=> (state ExhaleHeap@3 QPMask@5) (=> (and (and (not (= node@1 null)) (<= count_1@0 j_9)) (state ExhaleHeap@3 QPMask@5)) (and (=> (= (ControlFlow 0 391) 389) anon328_Then_correct) (=> (= (ControlFlow 0 391) 390) anon328_Else_correct))))))
(let ((anon327_Else_correct  (=> (and (= node@1 null) (= (ControlFlow 0 393) 391)) anon97_correct)))
(let ((anon327_Then_correct  (=> (and (and (not (= node@1 null)) (state ExhaleHeap@3 QPMask@5)) (and (exists_path ($$ ExhaleHeap@3 g_1) prev_node@0 node@1) (= (ControlFlow 0 392) 391))) anon97_correct)))
(let ((anon326_Else_correct  (=> (= node_i@0 null) (and (=> (= (ControlFlow 0 395) 392) anon327_Then_correct) (=> (= (ControlFlow 0 395) 393) anon327_Else_correct)))))
(let ((anon326_Then_correct  (=> (not (= node_i@0 null)) (=> (and (state ExhaleHeap@3 QPMask@5) (exists_path ($$ ExhaleHeap@3 g_1) node_i@0 prev_node@0)) (and (=> (= (ControlFlow 0 394) 392) anon327_Then_correct) (=> (= (ControlFlow 0 394) 393) anon327_Else_correct))))))
(let ((anon325_Else_correct  (=> (= node_i@0 null) (and (=> (= (ControlFlow 0 397) 394) anon326_Then_correct) (=> (= (ControlFlow 0 397) 395) anon326_Else_correct)))))
(let ((anon325_Then_correct  (=> (not (= node_i@0 null)) (=> (and (state ExhaleHeap@3 QPMask@5) (exists_path ($$ ExhaleHeap@3 g_1) prev_i@0 node_i@0)) (and (=> (= (ControlFlow 0 396) 394) anon326_Then_correct) (=> (= (ControlFlow 0 396) 395) anon326_Else_correct))))))
(let ((anon91_correct  (=> (and (and (and (state ExhaleHeap@3 QPMask@5) (acyclic_graph ($$ ExhaleHeap@3 g_1))) (and (state ExhaleHeap@3 QPMask@5) (func_graph ($$ ExhaleHeap@3 g_1)))) (and (and (state ExhaleHeap@3 QPMask@5) (unshared_graph ($$ ExhaleHeap@3 g_1))) (and (state ExhaleHeap@3 QPMask@5) (forall ((n$4_4 T@Ref) ) (!  (=> (select g_1 n$4_4) (exists_path ($$ ExhaleHeap@3 g_1) x@@6 n$4_4))
 :qid |stdinbpl.3924:24|
 :skolemid |415|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@3 g_1)) g_1) x@@6 n$4_4))
))))) (and (=> (= (ControlFlow 0 398) 396) anon325_Then_correct) (=> (= (ControlFlow 0 398) 397) anon325_Else_correct)))))
(let ((anon324_Else_correct  (=> (and (< j_9 count_1@0) (= (ControlFlow 0 400) 398)) anon91_correct)))
(let ((anon324_Then_correct  (=> (<= count_1@0 j_9) (=> (and (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) prev_node@0 next) node@1) (= (ControlFlow 0 399) 398)) anon91_correct))))
(let ((anon323_Else_correct  (=> (<= count_1@0 i) (and (=> (= (ControlFlow 0 402) 399) anon324_Then_correct) (=> (= (ControlFlow 0 402) 400) anon324_Else_correct)))))
(let ((anon323_Then_correct  (=> (< i count_1@0) (=> (and (select g_1 node_i@0) (select g_1 prev_i@0)) (and (=> (= (ControlFlow 0 401) 399) anon324_Then_correct) (=> (= (ControlFlow 0 401) 400) anon324_Else_correct))))))
(let ((anon322_Else_correct  (=> (< j_9 count_1@0) (and (=> (= (ControlFlow 0 404) 401) anon323_Then_correct) (=> (= (ControlFlow 0 404) 402) anon323_Else_correct)))))
(let ((anon322_Then_correct  (=> (and (<= count_1@0 j_9) (select g_1 prev_node@0)) (and (=> (= (ControlFlow 0 403) 401) anon323_Then_correct) (=> (= (ControlFlow 0 403) 402) anon323_Else_correct)))))
(let ((anon321_Else_correct  (=> (= node@1 null) (and (=> (= (ControlFlow 0 406) 403) anon322_Then_correct) (=> (= (ControlFlow 0 406) 404) anon322_Else_correct)))))
(let ((anon321_Then_correct  (=> (and (not (= node@1 null)) (select g_1 node@1)) (and (=> (= (ControlFlow 0 405) 403) anon322_Then_correct) (=> (= (ControlFlow 0 405) 404) anon322_Else_correct)))))
(let ((anon320_Then_correct  (=> (and (state ExhaleHeap@3 ZeroMask) (<= 0 i)) (=> (and (and (< i j_9) (<= 0 count_1@0)) (and (select g_1 x@@6) (not (select g_1 null)))) (and (=> (= (ControlFlow 0 407) (- 0 408)) (forall ((n$2_3 T@Ref) (n$2_3_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$2_3 n$2_3_2)) (select g_1 n$2_3)) (select g_1 n$2_3_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$2_3 n$2_3_2)))
 :qid |stdinbpl.3868:19|
 :skolemid |408|
))) (=> (forall ((n$2_3@@0 T@Ref) (n$2_3_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$2_3@@0 n$2_3_2@@0)) (select g_1 n$2_3@@0)) (select g_1 n$2_3_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$2_3@@0 n$2_3_2@@0)))
 :qid |stdinbpl.3868:19|
 :skolemid |408|
)) (=> (and (and (forall ((n$2_3@@1 T@Ref) ) (!  (=> (and (select g_1 n$2_3@@1) (< NoPerm FullPerm)) (and (qpRange48 n$2_3@@1) (= (invRecv48 n$2_3@@1) n$2_3@@1)))
 :qid |stdinbpl.3874:26|
 :skolemid |409|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$2_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@5) n$2_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$2_3@@1 next))
)) (forall ((o_4@@131 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv48 o_4@@131)) (< NoPerm FullPerm)) (qpRange48 o_4@@131)) (= (invRecv48 o_4@@131) o_4@@131))
 :qid |stdinbpl.3878:26|
 :skolemid |410|
 :pattern ( (invRecv48 o_4@@131))
))) (and (forall ((n$2_3@@2 T@Ref) ) (!  (=> (select g_1 n$2_3@@2) (not (= n$2_3@@2 null)))
 :qid |stdinbpl.3884:26|
 :skolemid |411|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$2_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@5) n$2_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$2_3@@2 next))
)) (forall ((o_4@@132 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv48 o_4@@132)) (< NoPerm FullPerm)) (qpRange48 o_4@@132)) (and (=> (< NoPerm FullPerm) (= (invRecv48 o_4@@132) o_4@@132)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@5) o_4@@132 next) (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| ZeroMask) o_4@@132 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv48 o_4@@132)) (< NoPerm FullPerm)) (qpRange48 o_4@@132))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@5) o_4@@132 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| ZeroMask) o_4@@132 next))))
 :qid |stdinbpl.3890:26|
 :skolemid |412|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@5) o_4@@132 next))
)))) (=> (and (and (and (and (forall ((o_4@@133 T@Ref) (f_5@@87 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| ZeroMask) o_4@@133 f_5@@87) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@5) o_4@@133 f_5@@87)))
 :qid |stdinbpl.3894:33|
 :skolemid |413|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| ZeroMask) o_4@@133 f_5@@87))
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@5) o_4@@133 f_5@@87))
)) (forall ((o_4@@134 T@Ref) (f_5@@88 T@Field_58075_58076) ) (!  (=> (not (= f_5@@88 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| ZeroMask) o_4@@134 f_5@@88) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@5) o_4@@134 f_5@@88)))
 :qid |stdinbpl.3894:33|
 :skolemid |413|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| ZeroMask) o_4@@134 f_5@@88))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@5) o_4@@134 f_5@@88))
))) (forall ((o_4@@135 T@Ref) (f_5@@89 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| ZeroMask) o_4@@135 f_5@@89) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@5) o_4@@135 f_5@@89)))
 :qid |stdinbpl.3894:33|
 :skolemid |413|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| ZeroMask) o_4@@135 f_5@@89))
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@5) o_4@@135 f_5@@89))
))) (forall ((o_4@@136 T@Ref) (f_5@@90 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| ZeroMask) o_4@@136 f_5@@90) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@5) o_4@@136 f_5@@90)))
 :qid |stdinbpl.3894:33|
 :skolemid |413|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| ZeroMask) o_4@@136 f_5@@90))
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@5) o_4@@136 f_5@@90))
))) (and (state ExhaleHeap@3 QPMask@5) (forall ((n$3_4 T@Ref) ) (!  (=> (and (select g_1 n$3_4) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$3_4 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$3_4 next)))
 :qid |stdinbpl.3900:24|
 :skolemid |414|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$3_4 next)))
 :pattern ( (select g_1 n$3_4) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$3_4 next))
)))) (and (=> (= (ControlFlow 0 407) 405) anon321_Then_correct) (=> (= (ControlFlow 0 407) 406) anon321_Else_correct))))))))))
(let ((anon277_correct true))
(let ((anon416_Else_correct  (=> (and (= node@1 null) (= (ControlFlow 0 38) 36)) anon277_correct)))
(let ((anon416_Then_correct  (=> (and (and (not (= node@1 null)) (state ExhaleHeap@3 QPMask@6)) (and (exists_path ($$ ExhaleHeap@3 g_1) prev_node@0 node@1) (= (ControlFlow 0 37) 36))) anon277_correct)))
(let ((anon415_Else_correct  (=> (= node_i@0 null) (and (=> (= (ControlFlow 0 40) 37) anon416_Then_correct) (=> (= (ControlFlow 0 40) 38) anon416_Else_correct)))))
(let ((anon415_Then_correct  (=> (not (= node_i@0 null)) (=> (and (state ExhaleHeap@3 QPMask@6) (exists_path ($$ ExhaleHeap@3 g_1) node_i@0 prev_node@0)) (and (=> (= (ControlFlow 0 39) 37) anon416_Then_correct) (=> (= (ControlFlow 0 39) 38) anon416_Else_correct))))))
(let ((anon414_Else_correct  (=> (= node_i@0 null) (and (=> (= (ControlFlow 0 42) 39) anon415_Then_correct) (=> (= (ControlFlow 0 42) 40) anon415_Else_correct)))))
(let ((anon414_Then_correct  (=> (not (= node_i@0 null)) (=> (and (state ExhaleHeap@3 QPMask@6) (exists_path ($$ ExhaleHeap@3 g_1) prev_i@0 node_i@0)) (and (=> (= (ControlFlow 0 41) 39) anon415_Then_correct) (=> (= (ControlFlow 0 41) 40) anon415_Else_correct))))))
(let ((anon271_correct  (=> (and (and (and (state ExhaleHeap@3 QPMask@6) (acyclic_graph ($$ ExhaleHeap@3 g_1))) (and (state ExhaleHeap@3 QPMask@6) (func_graph ($$ ExhaleHeap@3 g_1)))) (and (and (state ExhaleHeap@3 QPMask@6) (unshared_graph ($$ ExhaleHeap@3 g_1))) (and (state ExhaleHeap@3 QPMask@6) (forall ((n$4_7 T@Ref) ) (!  (=> (select g_1 n$4_7) (exists_path ($$ ExhaleHeap@3 g_1) x@@6 n$4_7))
 :qid |stdinbpl.5864:22|
 :skolemid |621|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| ExhaleHeap@3 g_1)) g_1) x@@6 n$4_7))
))))) (and (=> (= (ControlFlow 0 43) 41) anon414_Then_correct) (=> (= (ControlFlow 0 43) 42) anon414_Else_correct)))))
(let ((anon413_Else_correct  (=> (and (< j_9 count_1@0) (= (ControlFlow 0 45) 43)) anon271_correct)))
(let ((anon413_Then_correct  (=> (<= count_1@0 j_9) (=> (and (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) prev_node@0 next) node@1) (= (ControlFlow 0 44) 43)) anon271_correct))))
(let ((anon412_Else_correct  (=> (<= count_1@0 i) (and (=> (= (ControlFlow 0 47) 44) anon413_Then_correct) (=> (= (ControlFlow 0 47) 45) anon413_Else_correct)))))
(let ((anon412_Then_correct  (=> (< i count_1@0) (=> (and (select g_1 node_i@0) (select g_1 prev_i@0)) (and (=> (= (ControlFlow 0 46) 44) anon413_Then_correct) (=> (= (ControlFlow 0 46) 45) anon413_Else_correct))))))
(let ((anon411_Else_correct  (=> (< j_9 count_1@0) (and (=> (= (ControlFlow 0 49) 46) anon412_Then_correct) (=> (= (ControlFlow 0 49) 47) anon412_Else_correct)))))
(let ((anon411_Then_correct  (=> (and (<= count_1@0 j_9) (select g_1 prev_node@0)) (and (=> (= (ControlFlow 0 48) 46) anon412_Then_correct) (=> (= (ControlFlow 0 48) 47) anon412_Else_correct)))))
(let ((anon410_Else_correct  (=> (= node@1 null) (and (=> (= (ControlFlow 0 51) 48) anon411_Then_correct) (=> (= (ControlFlow 0 51) 49) anon411_Else_correct)))))
(let ((anon410_Then_correct  (=> (and (not (= node@1 null)) (select g_1 node@1)) (and (=> (= (ControlFlow 0 50) 48) anon411_Then_correct) (=> (= (ControlFlow 0 50) 49) anon411_Else_correct)))))
(let ((anon320_Else_correct  (=> (not (and (not (= node@1 null)) (<= count_1@0 j_9))) (=> (and (state ExhaleHeap@3 QPMask@4) (<= 0 i)) (=> (and (and (< i j_9) (<= 0 count_1@0)) (and (select g_1 x@@6) (not (select g_1 null)))) (and (=> (= (ControlFlow 0 52) (- 0 53)) (forall ((n$2_15 T@Ref) (n$2_15_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$2_15 n$2_15_1)) (select g_1 n$2_15)) (select g_1 n$2_15_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$2_15 n$2_15_1)))
 :qid |stdinbpl.5808:17|
 :skolemid |614|
))) (=> (forall ((n$2_15@@0 T@Ref) (n$2_15_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$2_15@@0 n$2_15_1@@0)) (select g_1 n$2_15@@0)) (select g_1 n$2_15_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$2_15@@0 n$2_15_1@@0)))
 :qid |stdinbpl.5808:17|
 :skolemid |614|
)) (=> (and (and (forall ((n$2_15@@1 T@Ref) ) (!  (=> (and (select g_1 n$2_15@@1) (< NoPerm FullPerm)) (and (qpRange72 n$2_15@@1) (= (invRecv72 n$2_15@@1) n$2_15@@1)))
 :qid |stdinbpl.5814:24|
 :skolemid |615|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$2_15@@1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@6) n$2_15@@1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$2_15@@1 next))
)) (forall ((o_4@@137 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv72 o_4@@137)) (< NoPerm FullPerm)) (qpRange72 o_4@@137)) (= (invRecv72 o_4@@137) o_4@@137))
 :qid |stdinbpl.5818:24|
 :skolemid |616|
 :pattern ( (invRecv72 o_4@@137))
))) (and (forall ((n$2_15@@2 T@Ref) ) (!  (=> (select g_1 n$2_15@@2) (not (= n$2_15@@2 null)))
 :qid |stdinbpl.5824:24|
 :skolemid |617|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$2_15@@2 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@6) n$2_15@@2 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$2_15@@2 next))
)) (forall ((o_4@@138 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv72 o_4@@138)) (< NoPerm FullPerm)) (qpRange72 o_4@@138)) (and (=> (< NoPerm FullPerm) (= (invRecv72 o_4@@138) o_4@@138)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@6) o_4@@138 next) (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@4) o_4@@138 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv72 o_4@@138)) (< NoPerm FullPerm)) (qpRange72 o_4@@138))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@6) o_4@@138 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@4) o_4@@138 next))))
 :qid |stdinbpl.5830:24|
 :skolemid |618|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@6) o_4@@138 next))
)))) (=> (and (and (and (and (forall ((o_4@@139 T@Ref) (f_5@@91 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@4) o_4@@139 f_5@@91) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@6) o_4@@139 f_5@@91)))
 :qid |stdinbpl.5834:31|
 :skolemid |619|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@4) o_4@@139 f_5@@91))
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@6) o_4@@139 f_5@@91))
)) (forall ((o_4@@140 T@Ref) (f_5@@92 T@Field_58075_58076) ) (!  (=> (not (= f_5@@92 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@4) o_4@@140 f_5@@92) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@6) o_4@@140 f_5@@92)))
 :qid |stdinbpl.5834:31|
 :skolemid |619|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@4) o_4@@140 f_5@@92))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@6) o_4@@140 f_5@@92))
))) (forall ((o_4@@141 T@Ref) (f_5@@93 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@4) o_4@@141 f_5@@93) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@6) o_4@@141 f_5@@93)))
 :qid |stdinbpl.5834:31|
 :skolemid |619|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@4) o_4@@141 f_5@@93))
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@6) o_4@@141 f_5@@93))
))) (forall ((o_4@@142 T@Ref) (f_5@@94 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@4) o_4@@142 f_5@@94) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@6) o_4@@142 f_5@@94)))
 :qid |stdinbpl.5834:31|
 :skolemid |619|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@4) o_4@@142 f_5@@94))
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@6) o_4@@142 f_5@@94))
))) (and (state ExhaleHeap@3 QPMask@6) (forall ((n$3_7 T@Ref) ) (!  (=> (and (select g_1 n$3_7) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$3_7 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$3_7 next)))
 :qid |stdinbpl.5840:22|
 :skolemid |620|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$3_7 next)))
 :pattern ( (select g_1 n$3_7) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| ExhaleHeap@3) n$3_7 next))
)))) (and (=> (= (ControlFlow 0 52) 50) anon410_Then_correct) (=> (= (ControlFlow 0 52) 51) anon410_Else_correct)))))))))))
(let ((anon41_correct  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@3 QPMask@4) (=> (and (and (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| ExhaleHeap@3) node@1 $allocated) (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| ExhaleHeap@3) prev_node@0 $allocated)) (and (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| ExhaleHeap@3) prev_i@0 $allocated) (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| ExhaleHeap@3) node_i@0 $allocated))) (and (and (=> (= (ControlFlow 0 481) 480) anon299_Then_correct) (=> (= (ControlFlow 0 481) 407) anon320_Then_correct)) (=> (= (ControlFlow 0 481) 52) anon320_Else_correct))))))
(let ((anon298_Else_correct  (=> (and (= node@0 null) (= (ControlFlow 0 484) 481)) anon41_correct)))
(let ((anon298_Then_correct  (=> (not (= node@0 null)) (and (=> (= (ControlFlow 0 482) (- 0 483)) (exists_path ($$ Heap@@29 g_1) x@@6 node@0)) (=> (exists_path ($$ Heap@@29 g_1) x@@6 node@0) (=> (= (ControlFlow 0 482) 481) anon41_correct))))))
(let ((anon297_Else_correct  (=> (= null null) (and (=> (= (ControlFlow 0 487) 482) anon298_Then_correct) (=> (= (ControlFlow 0 487) 484) anon298_Else_correct)))))
(let ((anon297_Then_correct  (=> (not (= null null)) (and (=> (= (ControlFlow 0 485) (- 0 486)) (exists_path ($$ Heap@@29 g_1) null x@@6)) (=> (exists_path ($$ Heap@@29 g_1) null x@@6) (and (=> (= (ControlFlow 0 485) 482) anon298_Then_correct) (=> (= (ControlFlow 0 485) 484) anon298_Else_correct)))))))
(let ((anon296_Else_correct  (=> (= null null) (and (=> (= (ControlFlow 0 490) 485) anon297_Then_correct) (=> (= (ControlFlow 0 490) 487) anon297_Else_correct)))))
(let ((anon296_Then_correct  (=> (not (= null null)) (and (=> (= (ControlFlow 0 488) (- 0 489)) (exists_path ($$ Heap@@29 g_1) null null)) (=> (exists_path ($$ Heap@@29 g_1) null null) (and (=> (= (ControlFlow 0 488) 485) anon297_Then_correct) (=> (= (ControlFlow 0 488) 487) anon297_Else_correct)))))))
(let ((anon294_Else_correct  (=> (forall ((n$4_1_1 T@Ref) ) (!  (=> (select g_1 n$4_1_1) (exists_path ($$ Heap@@29 g_1) x@@6 n$4_1_1))
 :qid |stdinbpl.3386:24|
 :skolemid |364|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| Heap@@29 g_1)) g_1) x@@6 n$4_1_1))
)) (and (=> (= (ControlFlow 0 491) 488) anon296_Then_correct) (=> (= (ControlFlow 0 491) 490) anon296_Else_correct)))))
(let ((anon34_correct true))
(let ((anon295_Else_correct  (=> (and (not (select g_1 n$4)) (= (ControlFlow 0 35) 32)) anon34_correct)))
(let ((anon295_Then_correct  (=> (select g_1 n$4) (and (=> (= (ControlFlow 0 33) (- 0 34)) (exists_path ($$ Heap@@29 g_1) x@@6 n$4)) (=> (exists_path ($$ Heap@@29 g_1) x@@6 n$4) (=> (= (ControlFlow 0 33) 32) anon34_correct))))))
(let ((anon31_correct  (and (=> (= (ControlFlow 0 492) (- 0 495)) (acyclic_graph ($$ Heap@@29 g_1))) (=> (acyclic_graph ($$ Heap@@29 g_1)) (and (=> (= (ControlFlow 0 492) (- 0 494)) (func_graph ($$ Heap@@29 g_1))) (=> (func_graph ($$ Heap@@29 g_1)) (and (=> (= (ControlFlow 0 492) (- 0 493)) (unshared_graph ($$ Heap@@29 g_1))) (=> (unshared_graph ($$ Heap@@29 g_1)) (and (and (=> (= (ControlFlow 0 492) 491) anon294_Else_correct) (=> (= (ControlFlow 0 492) 33) anon295_Then_correct)) (=> (= (ControlFlow 0 492) 35) anon295_Else_correct))))))))))
(let ((anon293_Else_correct  (=> (and (< j_9 0) (= (ControlFlow 0 498) 492)) anon31_correct)))
(let ((anon293_Then_correct  (=> (<= 0 j_9) (and (=> (= (ControlFlow 0 496) (- 0 497)) (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) x@@6 next) node@0)) (=> (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) x@@6 next) node@0) (=> (= (ControlFlow 0 496) 492) anon31_correct))))))
(let ((anon292_Else_correct  (=> (<= 0 i) (and (=> (= (ControlFlow 0 502) 496) anon293_Then_correct) (=> (= (ControlFlow 0 502) 498) anon293_Else_correct)))))
(let ((anon292_Then_correct  (=> (< i 0) (and (=> (= (ControlFlow 0 499) (- 0 501)) (select g_1 null)) (=> (select g_1 null) (and (=> (= (ControlFlow 0 499) (- 0 500)) (select g_1 null)) (=> (select g_1 null) (and (=> (= (ControlFlow 0 499) 496) anon293_Then_correct) (=> (= (ControlFlow 0 499) 498) anon293_Else_correct)))))))))
(let ((anon291_Else_correct  (=> (< j_9 0) (and (=> (= (ControlFlow 0 505) 499) anon292_Then_correct) (=> (= (ControlFlow 0 505) 502) anon292_Else_correct)))))
(let ((anon291_Then_correct  (=> (<= 0 j_9) (and (=> (= (ControlFlow 0 503) (- 0 504)) (select g_1 x@@6)) (=> (select g_1 x@@6) (and (=> (= (ControlFlow 0 503) 499) anon292_Then_correct) (=> (= (ControlFlow 0 503) 502) anon292_Else_correct)))))))
(let ((anon290_Else_correct  (=> (= node@0 null) (and (=> (= (ControlFlow 0 508) 503) anon291_Then_correct) (=> (= (ControlFlow 0 508) 505) anon291_Else_correct)))))
(let ((anon290_Then_correct  (=> (not (= node@0 null)) (and (=> (= (ControlFlow 0 506) (- 0 507)) (select g_1 node@0)) (=> (select g_1 node@0) (and (=> (= (ControlFlow 0 506) 503) anon291_Then_correct) (=> (= (ControlFlow 0 506) 505) anon291_Else_correct)))))))
(let ((anon288_Else_correct  (=> (forall ((n$3_1_1 T@Ref) ) (!  (=> (and (select g_1 n$3_1_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$3_1_1 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$3_1_1 next)))
 :qid |stdinbpl.3351:24|
 :skolemid |363|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$3_1_1 next)))
 :pattern ( (select g_1 n$3_1_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$3_1_1 next))
)) (and (=> (= (ControlFlow 0 509) 506) anon290_Then_correct) (=> (= (ControlFlow 0 509) 508) anon290_Else_correct)))))
(let ((anon22_correct true))
(let ((anon289_Else_correct  (=> (and (not (and (select g_1 n$3) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$3 next) null)))) (= (ControlFlow 0 31) 28)) anon22_correct)))
(let ((anon289_Then_correct  (=> (and (select g_1 n$3) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$3 next) null))) (and (=> (= (ControlFlow 0 29) (- 0 30)) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$3 next))) (=> (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$3 next)) (=> (= (ControlFlow 0 29) 28) anon22_correct))))))
(let ((anon285_Else_correct  (=> (and (and (and (forall ((n$1_1 T@Ref) ) (!  (=> (select g_1 n$1_1) (exists_path ($$ Heap@@29 g_1) x@@6 n$1_1))
 :qid |stdinbpl.3244:20|
 :skolemid |356|
 :pattern ( (exists_path (|$$#frame| (FrameFragment_6002 (|$$#condqp1| Heap@@29 g_1)) g_1) x@@6 n$1_1))
)) (state Heap@@29 QPMask@0)) (and (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@29) prev_node $allocated) (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@29) node $allocated))) (and (and (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@29) prev_i $allocated) (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@29) node_i $allocated)) (and (state Heap@@29 QPMask@0) (state Heap@@29 QPMask@0)))) (and (=> (= (ControlFlow 0 510) (- 0 518)) (HasDirectPerm_37930_37931 QPMask@0 x@@6 next)) (=> (HasDirectPerm_37930_37931 QPMask@0 x@@6 next) (=> (and (and (= node@0 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) x@@6 next)) (state Heap@@29 QPMask@0)) (and (state Heap@@29 QPMask@0) (state Heap@@29 QPMask@0))) (and (=> (= (ControlFlow 0 510) (- 0 517)) (<= 0 i)) (=> (<= 0 i) (and (=> (= (ControlFlow 0 510) (- 0 516)) (< i j_9)) (=> (< i j_9) (and (=> (= (ControlFlow 0 510) (- 0 515)) (<= 0 0)) (=> (<= 0 0) (and (=> (= (ControlFlow 0 510) (- 0 514)) (select g_1 x@@6)) (=> (select g_1 x@@6) (and (=> (= (ControlFlow 0 510) (- 0 513)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 510) (- 0 512)) (forall ((n$2 T@Ref) (n$2_5 T@Ref) ) (!  (=> (and (and (and (and (not (= n$2 n$2_5)) (select g_1 n$2)) (select g_1 n$2_5)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$2 n$2_5)))
 :qid |stdinbpl.3310:21|
 :skolemid |357|
 :pattern ( (neverTriggered39 n$2) (neverTriggered39 n$2_5))
))) (=> (forall ((n$2@@0 T@Ref) (n$2_5@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$2@@0 n$2_5@@0)) (select g_1 n$2@@0)) (select g_1 n$2_5@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$2@@0 n$2_5@@0)))
 :qid |stdinbpl.3310:21|
 :skolemid |357|
 :pattern ( (neverTriggered39 n$2@@0) (neverTriggered39 n$2_5@@0))
)) (and (=> (= (ControlFlow 0 510) (- 0 511)) (forall ((n$2@@1 T@Ref) ) (!  (=> (select g_1 n$2@@1) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) n$2@@1 next) FullPerm))
 :qid |stdinbpl.3317:21|
 :skolemid |358|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$2@@1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@4) n$2@@1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$2@@1 next))
))) (=> (forall ((n$2@@2 T@Ref) ) (!  (=> (select g_1 n$2@@2) (>= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) n$2@@2 next) FullPerm))
 :qid |stdinbpl.3317:21|
 :skolemid |358|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$2@@2 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@4) n$2@@2 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$2@@2 next))
)) (=> (forall ((n$2@@3 T@Ref) ) (!  (=> (and (select g_1 n$2@@3) (< NoPerm FullPerm)) (and (qpRange39 n$2@@3) (= (invRecv39 n$2@@3) n$2@@3)))
 :qid |stdinbpl.3323:26|
 :skolemid |359|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$2@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@4) n$2@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$2@@3 next))
)) (=> (and (forall ((o_4@@143 T@Ref) ) (!  (=> (and (select g_1 (invRecv39 o_4@@143)) (and (< NoPerm FullPerm) (qpRange39 o_4@@143))) (= (invRecv39 o_4@@143) o_4@@143))
 :qid |stdinbpl.3327:26|
 :skolemid |360|
 :pattern ( (invRecv39 o_4@@143))
)) (forall ((o_4@@144 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv39 o_4@@144)) (and (< NoPerm FullPerm) (qpRange39 o_4@@144))) (and (= (invRecv39 o_4@@144) o_4@@144) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@4) o_4@@144 next) (- (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) o_4@@144 next) FullPerm)))) (=> (not (and (select g_1 (invRecv39 o_4@@144)) (and (< NoPerm FullPerm) (qpRange39 o_4@@144)))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@4) o_4@@144 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) o_4@@144 next))))
 :qid |stdinbpl.3333:26|
 :skolemid |361|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@4) o_4@@144 next))
))) (=> (and (and (and (forall ((o_4@@145 T@Ref) (f_5@@95 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@0) o_4@@145 f_5@@95) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@4) o_4@@145 f_5@@95)))
 :qid |stdinbpl.3339:33|
 :skolemid |362|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@4) o_4@@145 f_5@@95))
)) (forall ((o_4@@146 T@Ref) (f_5@@96 T@Field_58075_58076) ) (!  (=> (not (= f_5@@96 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) o_4@@146 f_5@@96) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@4) o_4@@146 f_5@@96)))
 :qid |stdinbpl.3339:33|
 :skolemid |362|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@4) o_4@@146 f_5@@96))
))) (forall ((o_4@@147 T@Ref) (f_5@@97 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@0) o_4@@147 f_5@@97) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@4) o_4@@147 f_5@@97)))
 :qid |stdinbpl.3339:33|
 :skolemid |362|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@4) o_4@@147 f_5@@97))
))) (forall ((o_4@@148 T@Ref) (f_5@@98 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@0) o_4@@148 f_5@@98) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@4) o_4@@148 f_5@@98)))
 :qid |stdinbpl.3339:33|
 :skolemid |362|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@4) o_4@@148 f_5@@98))
))) (and (and (=> (= (ControlFlow 0 510) 509) anon288_Else_correct) (=> (= (ControlFlow 0 510) 29) anon289_Then_correct)) (=> (= (ControlFlow 0 510) 31) anon289_Else_correct)))))))))))))))))))))))))
(let ((anon287_Then_correct  (and (=> (= (ControlFlow 0 24) (- 0 26)) (forall ((n_5 T@Ref) ) (!  (=> (and (select g_1 n_5) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_5 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3206:25|
 :skolemid |351|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_5 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@38) n_5 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_5 next))
))) (=> (forall ((n_5@@0 T@Ref) ) (!  (=> (and (select g_1 n_5@@0) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_5@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3206:25|
 :skolemid |351|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_5@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@38) n_5@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_5@@0 next))
)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (forall ((n_5@@1 T@Ref) (n_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@1 n_5_1)) (select g_1 n_5@@1)) (select g_1 n_5_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_5@@1 n_5_1)))
 :qid |stdinbpl.3213:25|
 :skolemid |352|
 :pattern ( (neverTriggered38 n_5@@1) (neverTriggered38 n_5_1))
))) (=> (forall ((n_5@@2 T@Ref) (n_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@2 n_5_1@@0)) (select g_1 n_5@@2)) (select g_1 n_5_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_5@@2 n_5_1@@0)))
 :qid |stdinbpl.3213:25|
 :skolemid |352|
 :pattern ( (neverTriggered38 n_5@@2) (neverTriggered38 n_5_1@@0))
)) (=> (= (ControlFlow 0 24) (- 0 23)) (forall ((n_5@@3 T@Ref) ) (!  (=> (select g_1 n_5@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) n_5@@3 next) NoPerm)))
 :qid |stdinbpl.3220:25|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@38) n_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_5@@3 next))
)))))))))
(let ((anon18_correct true))
(let ((anon286_Then_correct  (=> (select g_1 n$1) (and (=> (= (ControlFlow 0 27) 24) anon287_Then_correct) (=> (= (ControlFlow 0 27) 21) anon18_correct)))))
(let ((anon286_Else_correct  (=> (and (not (select g_1 n$1)) (= (ControlFlow 0 22) 21)) anon18_correct)))
(let ((anon284_Else_correct  (=> (unshared_graph ($$ Heap@@29 g_1)) (=> (and (state Heap@@29 QPMask@0) (state Heap@@29 QPMask@0)) (and (and (=> (= (ControlFlow 0 519) 510) anon285_Else_correct) (=> (= (ControlFlow 0 519) 27) anon286_Then_correct)) (=> (= (ControlFlow 0 519) 22) anon286_Else_correct))))))
(let ((anon284_Then_correct  (and (=> (= (ControlFlow 0 18) (- 0 20)) (forall ((n_4_1 T@Ref) ) (!  (=> (and (select g_1 n_4_1) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_4_1 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3156:21|
 :skolemid |346|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_4_1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@3) n_4_1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_4_1 next))
))) (=> (forall ((n_4_1@@0 T@Ref) ) (!  (=> (and (select g_1 n_4_1@@0) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_4_1@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3156:21|
 :skolemid |346|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_4_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@3) n_4_1@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_4_1@@0 next))
)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (forall ((n_4_1@@1 T@Ref) (n_4_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4_1@@1 n_4_2)) (select g_1 n_4_1@@1)) (select g_1 n_4_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_4_1@@1 n_4_2)))
 :qid |stdinbpl.3163:21|
 :skolemid |347|
 :pattern ( (neverTriggered37 n_4_1@@1) (neverTriggered37 n_4_2))
))) (=> (forall ((n_4_1@@2 T@Ref) (n_4_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4_1@@2 n_4_2@@0)) (select g_1 n_4_1@@2)) (select g_1 n_4_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_4_1@@2 n_4_2@@0)))
 :qid |stdinbpl.3163:21|
 :skolemid |347|
 :pattern ( (neverTriggered37 n_4_1@@2) (neverTriggered37 n_4_2@@0))
)) (=> (= (ControlFlow 0 18) (- 0 17)) (forall ((n_4_1@@3 T@Ref) ) (!  (=> (select g_1 n_4_1@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) n_4_1@@3 next) NoPerm)))
 :qid |stdinbpl.3170:21|
 :skolemid |348|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_4_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@3) n_4_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_4_1@@3 next))
)))))))))
(let ((anon283_Else_correct  (=> (and (func_graph ($$ Heap@@29 g_1)) (state Heap@@29 QPMask@0)) (and (=> (= (ControlFlow 0 520) 18) anon284_Then_correct) (=> (= (ControlFlow 0 520) 519) anon284_Else_correct)))))
(let ((anon283_Then_correct  (and (=> (= (ControlFlow 0 14) (- 0 16)) (forall ((n_3 T@Ref) ) (!  (=> (and (select g_1 n_3) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_3 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3109:21|
 :skolemid |341|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@2) n_3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_3 next))
))) (=> (forall ((n_3@@0 T@Ref) ) (!  (=> (and (select g_1 n_3@@0) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_3@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3109:21|
 :skolemid |341|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_3@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@2) n_3@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_3@@0 next))
)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (forall ((n_3@@1 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@1 n_3_1)) (select g_1 n_3@@1)) (select g_1 n_3_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_3@@1 n_3_1)))
 :qid |stdinbpl.3116:21|
 :skolemid |342|
 :pattern ( (neverTriggered36 n_3@@1) (neverTriggered36 n_3_1))
))) (=> (forall ((n_3@@2 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@2 n_3_1@@0)) (select g_1 n_3@@2)) (select g_1 n_3_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_3@@2 n_3_1@@0)))
 :qid |stdinbpl.3116:21|
 :skolemid |342|
 :pattern ( (neverTriggered36 n_3@@2) (neverTriggered36 n_3_1@@0))
)) (=> (= (ControlFlow 0 14) (- 0 13)) (forall ((n_3@@3 T@Ref) ) (!  (=> (select g_1 n_3@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) n_3@@3 next) NoPerm)))
 :qid |stdinbpl.3123:21|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@2) n_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_3@@3 next))
)))))))))
(let ((anon282_Else_correct  (=> (and (acyclic_graph ($$ Heap@@29 g_1)) (state Heap@@29 QPMask@0)) (and (=> (= (ControlFlow 0 521) 14) anon283_Then_correct) (=> (= (ControlFlow 0 521) 520) anon283_Else_correct)))))
(let ((anon282_Then_correct  (and (=> (= (ControlFlow 0 10) (- 0 12)) (forall ((n_2 T@Ref) ) (!  (=> (and (select g_1 n_2) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_2 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3062:21|
 :skolemid |336|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_2 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@1) n_2 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_2 next))
))) (=> (forall ((n_2@@0 T@Ref) ) (!  (=> (and (select g_1 n_2@@0) (dummyFunction_37931 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_2@@0 next))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.3062:21|
 :skolemid |336|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@1) n_2@@0 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_2@@0 next))
)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (forall ((n_2@@1 T@Ref) (n_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@1 n_2_1)) (select g_1 n_2@@1)) (select g_1 n_2_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_2@@1 n_2_1)))
 :qid |stdinbpl.3069:21|
 :skolemid |337|
 :pattern ( (neverTriggered35 n_2@@1) (neverTriggered35 n_2_1))
))) (=> (forall ((n_2@@2 T@Ref) (n_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@2 n_2_1@@0)) (select g_1 n_2@@2)) (select g_1 n_2_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= n_2@@2 n_2_1@@0)))
 :qid |stdinbpl.3069:21|
 :skolemid |337|
 :pattern ( (neverTriggered35 n_2@@2) (neverTriggered35 n_2_1@@0))
)) (=> (= (ControlFlow 0 10) (- 0 9)) (forall ((n_2@@3 T@Ref) ) (!  (=> (select g_1 n_2@@3) (=> (> (/ (to_real 1) (to_real 2)) NoPerm) (> (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) n_2@@3 next) NoPerm)))
 :qid |stdinbpl.3076:21|
 :skolemid |338|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@1) n_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_2@@3 next))
)))))))))
(let ((anon279_Else_correct  (=> (forall ((n$0_1 T@Ref) ) (!  (=> (and (select g_1 n$0_1) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$0_1 next) null))) (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$0_1 next)))
 :qid |stdinbpl.3046:20|
 :skolemid |335|
 :pattern ( (select g_1 (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$0_1 next)))
 :pattern ( (select g_1 n$0_1) (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$0_1 next))
)) (=> (and (state Heap@@29 QPMask@0) (state Heap@@29 QPMask@0)) (and (=> (= (ControlFlow 0 522) 10) anon282_Then_correct) (=> (= (ControlFlow 0 522) 521) anon282_Else_correct))))))
(let ((anon7_correct true))
(let ((anon281_Else_correct  (=> (and (not (and (select g_1 n$0_3) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$0_3 next) null)))) (= (ControlFlow 0 5) 2)) anon7_correct)))
(let ((anon281_Then_correct  (=> (and (select g_1 n$0_3) (not (= (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n$0_3 next) null))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_37930_37931 QPMask@0 n$0_3 next)) (=> (HasDirectPerm_37930_37931 QPMask@0 n$0_3 next) (=> (= (ControlFlow 0 3) 2) anon7_correct))))))
(let ((anon280_Else_correct  (=> (not (select g_1 n$0_3)) (and (=> (= (ControlFlow 0 8) 3) anon281_Then_correct) (=> (= (ControlFlow 0 8) 5) anon281_Else_correct)))))
(let ((anon280_Then_correct  (=> (select g_1 n$0_3) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_37930_37931 QPMask@0 n$0_3 next)) (=> (HasDirectPerm_37930_37931 QPMask@0 n$0_3 next) (and (=> (= (ControlFlow 0 6) 3) anon281_Then_correct) (=> (= (ControlFlow 0 6) 5) anon281_Else_correct)))))))
(let ((anon278_Else_correct  (and (=> (= (ControlFlow 0 523) (- 0 524)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select g_1 n_1)) (select g_1 n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.3001:15|
 :skolemid |329|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select g_1 n_1@@0)) (select g_1 n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.3001:15|
 :skolemid |329|
)) (=> (and (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select g_1 n_1@@1) (< NoPerm FullPerm)) (and (qpRange34 n_1@@1) (= (invRecv34 n_1@@1) n_1@@1)))
 :qid |stdinbpl.3007:22|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_1@@1 next))
)) (forall ((o_4@@149 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv34 o_4@@149)) (< NoPerm FullPerm)) (qpRange34 o_4@@149)) (= (invRecv34 o_4@@149) o_4@@149))
 :qid |stdinbpl.3011:22|
 :skolemid |331|
 :pattern ( (invRecv34 o_4@@149))
))) (and (forall ((n_1@@2 T@Ref) ) (!  (=> (select g_1 n_1@@2) (not (= n_1@@2 null)))
 :qid |stdinbpl.3017:22|
 :skolemid |332|
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_58002_37181_37182#PolymorphicMapType_58002| Heap@@29) n_1@@2 next))
)) (forall ((o_4@@150 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv34 o_4@@150)) (< NoPerm FullPerm)) (qpRange34 o_4@@150)) (and (=> (< NoPerm FullPerm) (= (invRecv34 o_4@@150) o_4@@150)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) o_4@@150 next) (+ (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| ZeroMask) o_4@@150 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv34 o_4@@150)) (< NoPerm FullPerm)) (qpRange34 o_4@@150))) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) o_4@@150 next) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| ZeroMask) o_4@@150 next))))
 :qid |stdinbpl.3023:22|
 :skolemid |333|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) o_4@@150 next))
)))) (=> (and (and (and (and (forall ((o_4@@151 T@Ref) (f_5@@99 T@Field_58062_53) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| ZeroMask) o_4@@151 f_5@@99) (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@0) o_4@@151 f_5@@99)))
 :qid |stdinbpl.3027:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| ZeroMask) o_4@@151 f_5@@99))
 :pattern ( (select (|PolymorphicMapType_58023_37930_53#PolymorphicMapType_58023| QPMask@0) o_4@@151 f_5@@99))
)) (forall ((o_4@@152 T@Ref) (f_5@@100 T@Field_58075_58076) ) (!  (=> (not (= f_5@@100 next)) (= (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| ZeroMask) o_4@@152 f_5@@100) (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) o_4@@152 f_5@@100)))
 :qid |stdinbpl.3027:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| ZeroMask) o_4@@152 f_5@@100))
 :pattern ( (select (|PolymorphicMapType_58023_37930_37931#PolymorphicMapType_58023| QPMask@0) o_4@@152 f_5@@100))
))) (forall ((o_4@@153 T@Ref) (f_5@@101 T@Field_37930_191398) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| ZeroMask) o_4@@153 f_5@@101) (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@0) o_4@@153 f_5@@101)))
 :qid |stdinbpl.3027:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| ZeroMask) o_4@@153 f_5@@101))
 :pattern ( (select (|PolymorphicMapType_58023_37930_191398#PolymorphicMapType_58023| QPMask@0) o_4@@153 f_5@@101))
))) (forall ((o_4@@154 T@Ref) (f_5@@102 T@Field_37930_191531) ) (!  (=> true (= (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| ZeroMask) o_4@@154 f_5@@102) (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@0) o_4@@154 f_5@@102)))
 :qid |stdinbpl.3027:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| ZeroMask) o_4@@154 f_5@@102))
 :pattern ( (select (|PolymorphicMapType_58023_37930_195077#PolymorphicMapType_58023| QPMask@0) o_4@@154 f_5@@102))
))) (state Heap@@29 QPMask@0)) (and (and (=> (= (ControlFlow 0 523) 522) anon279_Else_correct) (=> (= (ControlFlow 0 523) 6) anon280_Then_correct)) (=> (= (ControlFlow 0 523) 8) anon280_Else_correct))))))))
(let ((anon278_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@29 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_58002_37178_53#PolymorphicMapType_58002| Heap@@29) x@@6 $allocated)) (and (<= 0 i) (< i j_9))) (and (and (state Heap@@29 ZeroMask) (select g_1 x@@6)) (and (state Heap@@29 ZeroMask) (not (select g_1 null))))) (and (=> (= (ControlFlow 0 525) 1) anon278_Then_correct) (=> (= (ControlFlow 0 525) 523) anon278_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 526) 525) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
