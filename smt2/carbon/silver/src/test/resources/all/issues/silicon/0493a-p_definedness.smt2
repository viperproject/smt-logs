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
(declare-sort T@Field_8166_53 0)
(declare-sort T@Field_8179_8180 0)
(declare-sort T@Field_14973_14974 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14351_3286 0)
(declare-sort T@Field_8166_14974 0)
(declare-sort T@Field_8166_16323 0)
(declare-sort T@Field_14973_53 0)
(declare-sort T@Field_14973_8180 0)
(declare-sort T@Field_14973_3286 0)
(declare-sort T@Field_16318_16323 0)
(declare-datatypes ((T@PolymorphicMapType_8127 0)) (((PolymorphicMapType_8127 (|PolymorphicMapType_8127_5249_5250#PolymorphicMapType_8127| (Array T@Ref T@Field_14973_14974 Real)) (|PolymorphicMapType_8127_5189_3286#PolymorphicMapType_8127| (Array T@Ref T@Field_14351_3286 Real)) (|PolymorphicMapType_8127_5249_3286#PolymorphicMapType_8127| (Array T@Ref T@Field_14973_3286 Real)) (|PolymorphicMapType_8127_5249_53#PolymorphicMapType_8127| (Array T@Ref T@Field_14973_53 Real)) (|PolymorphicMapType_8127_5249_8180#PolymorphicMapType_8127| (Array T@Ref T@Field_14973_8180 Real)) (|PolymorphicMapType_8127_5249_30423#PolymorphicMapType_8127| (Array T@Ref T@Field_16318_16323 Real)) (|PolymorphicMapType_8127_5189_5250#PolymorphicMapType_8127| (Array T@Ref T@Field_8166_14974 Real)) (|PolymorphicMapType_8127_5189_53#PolymorphicMapType_8127| (Array T@Ref T@Field_8166_53 Real)) (|PolymorphicMapType_8127_5189_8180#PolymorphicMapType_8127| (Array T@Ref T@Field_8179_8180 Real)) (|PolymorphicMapType_8127_5189_30837#PolymorphicMapType_8127| (Array T@Ref T@Field_8166_16323 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8655 0)) (((PolymorphicMapType_8655 (|PolymorphicMapType_8655_8166_53#PolymorphicMapType_8655| (Array T@Ref T@Field_8166_53 Bool)) (|PolymorphicMapType_8655_8166_8180#PolymorphicMapType_8655| (Array T@Ref T@Field_8179_8180 Bool)) (|PolymorphicMapType_8655_8166_3286#PolymorphicMapType_8655| (Array T@Ref T@Field_14351_3286 Bool)) (|PolymorphicMapType_8655_8166_14974#PolymorphicMapType_8655| (Array T@Ref T@Field_8166_14974 Bool)) (|PolymorphicMapType_8655_8166_23984#PolymorphicMapType_8655| (Array T@Ref T@Field_8166_16323 Bool)) (|PolymorphicMapType_8655_14973_53#PolymorphicMapType_8655| (Array T@Ref T@Field_14973_53 Bool)) (|PolymorphicMapType_8655_14973_8180#PolymorphicMapType_8655| (Array T@Ref T@Field_14973_8180 Bool)) (|PolymorphicMapType_8655_14973_3286#PolymorphicMapType_8655| (Array T@Ref T@Field_14973_3286 Bool)) (|PolymorphicMapType_8655_14973_14974#PolymorphicMapType_8655| (Array T@Ref T@Field_14973_14974 Bool)) (|PolymorphicMapType_8655_14973_25032#PolymorphicMapType_8655| (Array T@Ref T@Field_16318_16323 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8106 0)) (((PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| (Array T@Ref T@Field_8166_53 Bool)) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| (Array T@Ref T@Field_8179_8180 T@Ref)) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| (Array T@Ref T@Field_14973_14974 T@FrameType)) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| (Array T@Ref T@Field_14351_3286 Int)) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| (Array T@Ref T@Field_8166_14974 T@FrameType)) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| (Array T@Ref T@Field_8166_16323 T@PolymorphicMapType_8655)) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| (Array T@Ref T@Field_14973_53 Bool)) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| (Array T@Ref T@Field_14973_8180 T@Ref)) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| (Array T@Ref T@Field_14973_3286 Int)) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| (Array T@Ref T@Field_16318_16323 T@PolymorphicMapType_8655)) ) ) ))
(declare-fun $allocated () T@Field_8166_53)
(declare-fun val () T@Field_14351_3286)
(declare-fun succHeap (T@PolymorphicMapType_8106 T@PolymorphicMapType_8106) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8106 T@PolymorphicMapType_8106) Bool)
(declare-fun state (T@PolymorphicMapType_8106 T@PolymorphicMapType_8127) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8127) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8655)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun p_2 (T@Ref) T@Field_14973_14974)
(declare-fun IsPredicateField_5249_5250 (T@Field_14973_14974) Bool)
(declare-fun |foo'| (T@PolymorphicMapType_8106 (Array T@Ref Bool)) Int)
(declare-fun dummyFunction_3587 (Int) Bool)
(declare-fun |foo#triggerStateless| ((Array T@Ref Bool)) Int)
(declare-fun |p#trigger_5249| (T@PolymorphicMapType_8106 T@Field_14973_14974) Bool)
(declare-fun |p#everUsed_5249| (T@Field_14973_14974) Bool)
(declare-fun |foo#condqp1| (T@PolymorphicMapType_8106 (Array T@Ref Bool)) Int)
(declare-fun |sk_foo#condqp1| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun null () T@Ref)
(declare-fun foo_1 (T@PolymorphicMapType_8106 (Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8106 T@PolymorphicMapType_8106 T@PolymorphicMapType_8127) Bool)
(declare-fun PredicateMaskField_5249 (T@Field_14973_14974) T@Field_16318_16323)
(declare-fun HasDirectPerm_14973_14974 (T@PolymorphicMapType_8127 T@Ref T@Field_14973_14974) Bool)
(declare-fun IsPredicateField_8166_22500 (T@Field_8166_14974) Bool)
(declare-fun PredicateMaskField_8166 (T@Field_8166_14974) T@Field_8166_16323)
(declare-fun HasDirectPerm_8166_14974 (T@PolymorphicMapType_8127 T@Ref T@Field_8166_14974) Bool)
(declare-fun IsWandField_14973_26197 (T@Field_14973_14974) Bool)
(declare-fun WandMaskField_14973 (T@Field_14973_14974) T@Field_16318_16323)
(declare-fun IsWandField_8166_25840 (T@Field_8166_14974) Bool)
(declare-fun WandMaskField_8166 (T@Field_8166_14974) T@Field_8166_16323)
(declare-fun |p#sm| (T@Ref) T@Field_16318_16323)
(declare-fun dummyHeap () T@PolymorphicMapType_8106)
(declare-fun ZeroMask () T@PolymorphicMapType_8127)
(declare-fun InsidePredicate_14973_14973 (T@Field_14973_14974 T@FrameType T@Field_14973_14974 T@FrameType) Bool)
(declare-fun InsidePredicate_8166_8166 (T@Field_8166_14974 T@FrameType T@Field_8166_14974 T@FrameType) Bool)
(declare-fun IsPredicateField_5189_3286 (T@Field_14351_3286) Bool)
(declare-fun IsWandField_5189_3286 (T@Field_14351_3286) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5189_33129 (T@Field_8166_16323) Bool)
(declare-fun IsWandField_5189_33145 (T@Field_8166_16323) Bool)
(declare-fun IsPredicateField_5189_8180 (T@Field_8179_8180) Bool)
(declare-fun IsWandField_5189_8180 (T@Field_8179_8180) Bool)
(declare-fun IsPredicateField_5189_53 (T@Field_8166_53) Bool)
(declare-fun IsWandField_5189_53 (T@Field_8166_53) Bool)
(declare-fun IsPredicateField_5249_32312 (T@Field_16318_16323) Bool)
(declare-fun IsWandField_5249_32328 (T@Field_16318_16323) Bool)
(declare-fun IsPredicateField_5249_8180 (T@Field_14973_8180) Bool)
(declare-fun IsWandField_5249_8180 (T@Field_14973_8180) Bool)
(declare-fun IsPredicateField_5249_53 (T@Field_14973_53) Bool)
(declare-fun IsWandField_5249_53 (T@Field_14973_53) Bool)
(declare-fun IsPredicateField_5249_3286 (T@Field_14973_3286) Bool)
(declare-fun IsWandField_5249_3286 (T@Field_14973_3286) Bool)
(declare-fun HasDirectPerm_14973_22212 (T@PolymorphicMapType_8127 T@Ref T@Field_16318_16323) Bool)
(declare-fun HasDirectPerm_14973_3286 (T@PolymorphicMapType_8127 T@Ref T@Field_14973_3286) Bool)
(declare-fun HasDirectPerm_14973_8180 (T@PolymorphicMapType_8127 T@Ref T@Field_14973_8180) Bool)
(declare-fun HasDirectPerm_14973_53 (T@PolymorphicMapType_8127 T@Ref T@Field_14973_53) Bool)
(declare-fun HasDirectPerm_8166_21051 (T@PolymorphicMapType_8127 T@Ref T@Field_8166_16323) Bool)
(declare-fun HasDirectPerm_8166_3286 (T@PolymorphicMapType_8127 T@Ref T@Field_14351_3286) Bool)
(declare-fun HasDirectPerm_8166_8180 (T@PolymorphicMapType_8127 T@Ref T@Field_8179_8180) Bool)
(declare-fun HasDirectPerm_8166_53 (T@PolymorphicMapType_8127 T@Ref T@Field_8166_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8127 T@PolymorphicMapType_8127 T@PolymorphicMapType_8127) Bool)
(declare-fun getPredWandId_5249_5250 (T@Field_14973_14974) Int)
(declare-fun |foo#frame| (T@FrameType (Array T@Ref Bool)) Int)
(declare-fun FrameFragment_3436 (Int) T@FrameType)
(declare-fun InsidePredicate_14973_8166 (T@Field_14973_14974 T@FrameType T@Field_8166_14974 T@FrameType) Bool)
(declare-fun InsidePredicate_8166_14973 (T@Field_8166_14974 T@FrameType T@Field_14973_14974 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_8106) (Heap1 T@PolymorphicMapType_8106) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8106) (Mask T@PolymorphicMapType_8127) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8106) (Heap1@@0 T@PolymorphicMapType_8106) (Heap2 T@PolymorphicMapType_8106) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16318_16323) ) (!  (not (select (|PolymorphicMapType_8655_14973_25032#PolymorphicMapType_8655| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8655_14973_25032#PolymorphicMapType_8655| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_14973_14974) ) (!  (not (select (|PolymorphicMapType_8655_14973_14974#PolymorphicMapType_8655| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8655_14973_14974#PolymorphicMapType_8655| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14973_3286) ) (!  (not (select (|PolymorphicMapType_8655_14973_3286#PolymorphicMapType_8655| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8655_14973_3286#PolymorphicMapType_8655| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14973_8180) ) (!  (not (select (|PolymorphicMapType_8655_14973_8180#PolymorphicMapType_8655| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8655_14973_8180#PolymorphicMapType_8655| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_14973_53) ) (!  (not (select (|PolymorphicMapType_8655_14973_53#PolymorphicMapType_8655| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8655_14973_53#PolymorphicMapType_8655| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_8166_16323) ) (!  (not (select (|PolymorphicMapType_8655_8166_23984#PolymorphicMapType_8655| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8655_8166_23984#PolymorphicMapType_8655| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_8166_14974) ) (!  (not (select (|PolymorphicMapType_8655_8166_14974#PolymorphicMapType_8655| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8655_8166_14974#PolymorphicMapType_8655| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_14351_3286) ) (!  (not (select (|PolymorphicMapType_8655_8166_3286#PolymorphicMapType_8655| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8655_8166_3286#PolymorphicMapType_8655| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8179_8180) ) (!  (not (select (|PolymorphicMapType_8655_8166_8180#PolymorphicMapType_8655| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8655_8166_8180#PolymorphicMapType_8655| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_8166_53) ) (!  (not (select (|PolymorphicMapType_8655_8166_53#PolymorphicMapType_8655| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8655_8166_53#PolymorphicMapType_8655| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.300:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a_2 T@Ref) ) (! (IsPredicateField_5249_5250 (p_2 a_2))
 :qid |stdinbpl.509:15|
 :skolemid |93|
 :pattern ( (p_2 a_2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8106) (set_1 (Array T@Ref Bool)) ) (! (dummyFunction_3587 (|foo#triggerStateless| set_1))
 :qid |stdinbpl.413:15|
 :skolemid |83|
 :pattern ( (|foo'| Heap@@0 set_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8106) (a_2@@0 T@Ref) ) (! (|p#everUsed_5249| (p_2 a_2@@0))
 :qid |stdinbpl.528:15|
 :skolemid |97|
 :pattern ( (|p#trigger_5249| Heap@@1 (p_2 a_2@@0)))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_8106) (Heap1Heap T@PolymorphicMapType_8106) (set_1@@0 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select set_1@@0 (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap set_1@@0) (|foo#condqp1| Heap1Heap set_1@@0))) (< NoPerm FullPerm))  (and (select set_1@@0 (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap set_1@@0) (|foo#condqp1| Heap1Heap set_1@@0))) (< NoPerm FullPerm))) (=> (and (select set_1@@0 (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap set_1@@0) (|foo#condqp1| Heap1Heap set_1@@0))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap2Heap) null (p_2 (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap set_1@@0) (|foo#condqp1| Heap1Heap set_1@@0)))) (select (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap1Heap) null (p_2 (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap set_1@@0) (|foo#condqp1| Heap1Heap set_1@@0))))))) (= (|foo#condqp1| Heap2Heap set_1@@0) (|foo#condqp1| Heap1Heap set_1@@0)))
 :qid |stdinbpl.430:15|
 :skolemid |85|
 :pattern ( (|foo#condqp1| Heap2Heap set_1@@0) (|foo#condqp1| Heap1Heap set_1@@0) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8106) (set_1@@1 (Array T@Ref Bool)) ) (!  (and (= (foo_1 Heap@@2 set_1@@1) (|foo'| Heap@@2 set_1@@1)) (dummyFunction_3587 (|foo#triggerStateless| set_1@@1)))
 :qid |stdinbpl.409:15|
 :skolemid |82|
 :pattern ( (foo_1 Heap@@2 set_1@@1))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.303:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8106) (ExhaleHeap T@PolymorphicMapType_8106) (Mask@@0 T@PolymorphicMapType_8127) (pm_f_5 T@Field_14973_14974) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_14973_14974 Mask@@0 null pm_f_5) (IsPredicateField_5249_5250 pm_f_5)) (= (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@3) null (PredicateMaskField_5249 pm_f_5)) (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| ExhaleHeap) null (PredicateMaskField_5249 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_5249_5250 pm_f_5) (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| ExhaleHeap) null (PredicateMaskField_5249 pm_f_5)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8106) (ExhaleHeap@@0 T@PolymorphicMapType_8106) (Mask@@1 T@PolymorphicMapType_8127) (pm_f_5@@0 T@Field_8166_14974) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8166_14974 Mask@@1 null pm_f_5@@0) (IsPredicateField_8166_22500 pm_f_5@@0)) (= (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@4) null (PredicateMaskField_8166 pm_f_5@@0)) (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| ExhaleHeap@@0) null (PredicateMaskField_8166 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_8166_22500 pm_f_5@@0) (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| ExhaleHeap@@0) null (PredicateMaskField_8166 pm_f_5@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8106) (ExhaleHeap@@1 T@PolymorphicMapType_8106) (Mask@@2 T@PolymorphicMapType_8127) (pm_f_5@@1 T@Field_14973_14974) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_14973_14974 Mask@@2 null pm_f_5@@1) (IsWandField_14973_26197 pm_f_5@@1)) (= (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@5) null (WandMaskField_14973 pm_f_5@@1)) (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| ExhaleHeap@@1) null (WandMaskField_14973 pm_f_5@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsWandField_14973_26197 pm_f_5@@1) (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| ExhaleHeap@@1) null (WandMaskField_14973 pm_f_5@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8106) (ExhaleHeap@@2 T@PolymorphicMapType_8106) (Mask@@3 T@PolymorphicMapType_8127) (pm_f_5@@2 T@Field_8166_14974) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_8166_14974 Mask@@3 null pm_f_5@@2) (IsWandField_8166_25840 pm_f_5@@2)) (= (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@6) null (WandMaskField_8166 pm_f_5@@2)) (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| ExhaleHeap@@2) null (WandMaskField_8166 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_8166_25840 pm_f_5@@2) (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| ExhaleHeap@@2) null (WandMaskField_8166 pm_f_5@@2)))
)))
(assert (forall ((a_2@@1 T@Ref) (a2 T@Ref) ) (!  (=> (= (p_2 a_2@@1) (p_2 a2)) (= a_2@@1 a2))
 :qid |stdinbpl.519:15|
 :skolemid |95|
 :pattern ( (p_2 a_2@@1) (p_2 a2))
)))
(assert (forall ((a_2@@2 T@Ref) (a2@@0 T@Ref) ) (!  (=> (= (|p#sm| a_2@@2) (|p#sm| a2@@0)) (= a_2@@2 a2@@0))
 :qid |stdinbpl.523:15|
 :skolemid |96|
 :pattern ( (|p#sm| a_2@@2) (|p#sm| a2@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8106) (ExhaleHeap@@3 T@PolymorphicMapType_8106) (Mask@@4 T@PolymorphicMapType_8127) (pm_f_5@@3 T@Field_14973_14974) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_14973_14974 Mask@@4 null pm_f_5@@3) (IsPredicateField_5249_5250 pm_f_5@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_8166_53) ) (!  (=> (select (|PolymorphicMapType_8655_8166_53#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@7) null (PredicateMaskField_5249 pm_f_5@@3))) o2_5 f_23) (= (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@7) o2_5 f_23) (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_8179_8180) ) (!  (=> (select (|PolymorphicMapType_8655_8166_8180#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@7) null (PredicateMaskField_5249 pm_f_5@@3))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@7) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_14351_3286) ) (!  (=> (select (|PolymorphicMapType_8655_8166_3286#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@7) null (PredicateMaskField_5249 pm_f_5@@3))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@7) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_8166_14974) ) (!  (=> (select (|PolymorphicMapType_8655_8166_14974#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@7) null (PredicateMaskField_5249 pm_f_5@@3))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@7) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5@@2 f_23@@2))
))) (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_8166_16323) ) (!  (=> (select (|PolymorphicMapType_8655_8166_23984#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@7) null (PredicateMaskField_5249 pm_f_5@@3))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@7) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5@@3 f_23@@3))
))) (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_14973_53) ) (!  (=> (select (|PolymorphicMapType_8655_14973_53#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@7) null (PredicateMaskField_5249 pm_f_5@@3))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@7) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5@@4 f_23@@4))
))) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_14973_8180) ) (!  (=> (select (|PolymorphicMapType_8655_14973_8180#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@7) null (PredicateMaskField_5249 pm_f_5@@3))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@7) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_14973_3286) ) (!  (=> (select (|PolymorphicMapType_8655_14973_3286#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@7) null (PredicateMaskField_5249 pm_f_5@@3))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@7) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5@@6 f_23@@6))
))) (forall ((o2_5@@7 T@Ref) (f_23@@7 T@Field_14973_14974) ) (!  (=> (select (|PolymorphicMapType_8655_14973_14974#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@7) null (PredicateMaskField_5249 pm_f_5@@3))) o2_5@@7 f_23@@7) (= (select (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@7) o2_5@@7 f_23@@7) (select (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5@@7 f_23@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5@@7 f_23@@7))
))) (forall ((o2_5@@8 T@Ref) (f_23@@8 T@Field_16318_16323) ) (!  (=> (select (|PolymorphicMapType_8655_14973_25032#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@7) null (PredicateMaskField_5249 pm_f_5@@3))) o2_5@@8 f_23@@8) (= (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@7) o2_5@@8 f_23@@8) (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5@@8 f_23@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| ExhaleHeap@@3) o2_5@@8 f_23@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_5249_5250 pm_f_5@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8106) (ExhaleHeap@@4 T@PolymorphicMapType_8106) (Mask@@5 T@PolymorphicMapType_8127) (pm_f_5@@4 T@Field_8166_14974) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_8166_14974 Mask@@5 null pm_f_5@@4) (IsPredicateField_8166_22500 pm_f_5@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@9 T@Ref) (f_23@@9 T@Field_8166_53) ) (!  (=> (select (|PolymorphicMapType_8655_8166_53#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@8) null (PredicateMaskField_8166 pm_f_5@@4))) o2_5@@9 f_23@@9) (= (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@8) o2_5@@9 f_23@@9) (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@9 f_23@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@9 f_23@@9))
)) (forall ((o2_5@@10 T@Ref) (f_23@@10 T@Field_8179_8180) ) (!  (=> (select (|PolymorphicMapType_8655_8166_8180#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@8) null (PredicateMaskField_8166 pm_f_5@@4))) o2_5@@10 f_23@@10) (= (select (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@8) o2_5@@10 f_23@@10) (select (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@10 f_23@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@10 f_23@@10))
))) (forall ((o2_5@@11 T@Ref) (f_23@@11 T@Field_14351_3286) ) (!  (=> (select (|PolymorphicMapType_8655_8166_3286#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@8) null (PredicateMaskField_8166 pm_f_5@@4))) o2_5@@11 f_23@@11) (= (select (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@8) o2_5@@11 f_23@@11) (select (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@11 f_23@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@11 f_23@@11))
))) (forall ((o2_5@@12 T@Ref) (f_23@@12 T@Field_8166_14974) ) (!  (=> (select (|PolymorphicMapType_8655_8166_14974#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@8) null (PredicateMaskField_8166 pm_f_5@@4))) o2_5@@12 f_23@@12) (= (select (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@8) o2_5@@12 f_23@@12) (select (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@12 f_23@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@12 f_23@@12))
))) (forall ((o2_5@@13 T@Ref) (f_23@@13 T@Field_8166_16323) ) (!  (=> (select (|PolymorphicMapType_8655_8166_23984#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@8) null (PredicateMaskField_8166 pm_f_5@@4))) o2_5@@13 f_23@@13) (= (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@8) o2_5@@13 f_23@@13) (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@13 f_23@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@13 f_23@@13))
))) (forall ((o2_5@@14 T@Ref) (f_23@@14 T@Field_14973_53) ) (!  (=> (select (|PolymorphicMapType_8655_14973_53#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@8) null (PredicateMaskField_8166 pm_f_5@@4))) o2_5@@14 f_23@@14) (= (select (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@8) o2_5@@14 f_23@@14) (select (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@14 f_23@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@14 f_23@@14))
))) (forall ((o2_5@@15 T@Ref) (f_23@@15 T@Field_14973_8180) ) (!  (=> (select (|PolymorphicMapType_8655_14973_8180#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@8) null (PredicateMaskField_8166 pm_f_5@@4))) o2_5@@15 f_23@@15) (= (select (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@8) o2_5@@15 f_23@@15) (select (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@15 f_23@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@15 f_23@@15))
))) (forall ((o2_5@@16 T@Ref) (f_23@@16 T@Field_14973_3286) ) (!  (=> (select (|PolymorphicMapType_8655_14973_3286#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@8) null (PredicateMaskField_8166 pm_f_5@@4))) o2_5@@16 f_23@@16) (= (select (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@8) o2_5@@16 f_23@@16) (select (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@16 f_23@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@16 f_23@@16))
))) (forall ((o2_5@@17 T@Ref) (f_23@@17 T@Field_14973_14974) ) (!  (=> (select (|PolymorphicMapType_8655_14973_14974#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@8) null (PredicateMaskField_8166 pm_f_5@@4))) o2_5@@17 f_23@@17) (= (select (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@8) o2_5@@17 f_23@@17) (select (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@17 f_23@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@17 f_23@@17))
))) (forall ((o2_5@@18 T@Ref) (f_23@@18 T@Field_16318_16323) ) (!  (=> (select (|PolymorphicMapType_8655_14973_25032#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@8) null (PredicateMaskField_8166 pm_f_5@@4))) o2_5@@18 f_23@@18) (= (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@8) o2_5@@18 f_23@@18) (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@18 f_23@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| ExhaleHeap@@4) o2_5@@18 f_23@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_8166_22500 pm_f_5@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8106) (ExhaleHeap@@5 T@PolymorphicMapType_8106) (Mask@@6 T@PolymorphicMapType_8127) (pm_f_5@@5 T@Field_14973_14974) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_14973_14974 Mask@@6 null pm_f_5@@5) (IsWandField_14973_26197 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@19 T@Ref) (f_23@@19 T@Field_8166_53) ) (!  (=> (select (|PolymorphicMapType_8655_8166_53#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@9) null (WandMaskField_14973 pm_f_5@@5))) o2_5@@19 f_23@@19) (= (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@9) o2_5@@19 f_23@@19) (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@19 f_23@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@19 f_23@@19))
)) (forall ((o2_5@@20 T@Ref) (f_23@@20 T@Field_8179_8180) ) (!  (=> (select (|PolymorphicMapType_8655_8166_8180#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@9) null (WandMaskField_14973 pm_f_5@@5))) o2_5@@20 f_23@@20) (= (select (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@9) o2_5@@20 f_23@@20) (select (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@20 f_23@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@20 f_23@@20))
))) (forall ((o2_5@@21 T@Ref) (f_23@@21 T@Field_14351_3286) ) (!  (=> (select (|PolymorphicMapType_8655_8166_3286#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@9) null (WandMaskField_14973 pm_f_5@@5))) o2_5@@21 f_23@@21) (= (select (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@9) o2_5@@21 f_23@@21) (select (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@21 f_23@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@21 f_23@@21))
))) (forall ((o2_5@@22 T@Ref) (f_23@@22 T@Field_8166_14974) ) (!  (=> (select (|PolymorphicMapType_8655_8166_14974#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@9) null (WandMaskField_14973 pm_f_5@@5))) o2_5@@22 f_23@@22) (= (select (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@9) o2_5@@22 f_23@@22) (select (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@22 f_23@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@22 f_23@@22))
))) (forall ((o2_5@@23 T@Ref) (f_23@@23 T@Field_8166_16323) ) (!  (=> (select (|PolymorphicMapType_8655_8166_23984#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@9) null (WandMaskField_14973 pm_f_5@@5))) o2_5@@23 f_23@@23) (= (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@9) o2_5@@23 f_23@@23) (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@23 f_23@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@23 f_23@@23))
))) (forall ((o2_5@@24 T@Ref) (f_23@@24 T@Field_14973_53) ) (!  (=> (select (|PolymorphicMapType_8655_14973_53#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@9) null (WandMaskField_14973 pm_f_5@@5))) o2_5@@24 f_23@@24) (= (select (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@9) o2_5@@24 f_23@@24) (select (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@24 f_23@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@24 f_23@@24))
))) (forall ((o2_5@@25 T@Ref) (f_23@@25 T@Field_14973_8180) ) (!  (=> (select (|PolymorphicMapType_8655_14973_8180#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@9) null (WandMaskField_14973 pm_f_5@@5))) o2_5@@25 f_23@@25) (= (select (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@9) o2_5@@25 f_23@@25) (select (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@25 f_23@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@25 f_23@@25))
))) (forall ((o2_5@@26 T@Ref) (f_23@@26 T@Field_14973_3286) ) (!  (=> (select (|PolymorphicMapType_8655_14973_3286#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@9) null (WandMaskField_14973 pm_f_5@@5))) o2_5@@26 f_23@@26) (= (select (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@9) o2_5@@26 f_23@@26) (select (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@26 f_23@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@26 f_23@@26))
))) (forall ((o2_5@@27 T@Ref) (f_23@@27 T@Field_14973_14974) ) (!  (=> (select (|PolymorphicMapType_8655_14973_14974#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@9) null (WandMaskField_14973 pm_f_5@@5))) o2_5@@27 f_23@@27) (= (select (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@9) o2_5@@27 f_23@@27) (select (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@27 f_23@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@27 f_23@@27))
))) (forall ((o2_5@@28 T@Ref) (f_23@@28 T@Field_16318_16323) ) (!  (=> (select (|PolymorphicMapType_8655_14973_25032#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@9) null (WandMaskField_14973 pm_f_5@@5))) o2_5@@28 f_23@@28) (= (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@9) o2_5@@28 f_23@@28) (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@28 f_23@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| ExhaleHeap@@5) o2_5@@28 f_23@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_14973_26197 pm_f_5@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8106) (ExhaleHeap@@6 T@PolymorphicMapType_8106) (Mask@@7 T@PolymorphicMapType_8127) (pm_f_5@@6 T@Field_8166_14974) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_8166_14974 Mask@@7 null pm_f_5@@6) (IsWandField_8166_25840 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_23@@29 T@Field_8166_53) ) (!  (=> (select (|PolymorphicMapType_8655_8166_53#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@10) null (WandMaskField_8166 pm_f_5@@6))) o2_5@@29 f_23@@29) (= (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@10) o2_5@@29 f_23@@29) (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@29 f_23@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@29 f_23@@29))
)) (forall ((o2_5@@30 T@Ref) (f_23@@30 T@Field_8179_8180) ) (!  (=> (select (|PolymorphicMapType_8655_8166_8180#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@10) null (WandMaskField_8166 pm_f_5@@6))) o2_5@@30 f_23@@30) (= (select (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@10) o2_5@@30 f_23@@30) (select (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@30 f_23@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@30 f_23@@30))
))) (forall ((o2_5@@31 T@Ref) (f_23@@31 T@Field_14351_3286) ) (!  (=> (select (|PolymorphicMapType_8655_8166_3286#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@10) null (WandMaskField_8166 pm_f_5@@6))) o2_5@@31 f_23@@31) (= (select (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@10) o2_5@@31 f_23@@31) (select (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@31 f_23@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@31 f_23@@31))
))) (forall ((o2_5@@32 T@Ref) (f_23@@32 T@Field_8166_14974) ) (!  (=> (select (|PolymorphicMapType_8655_8166_14974#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@10) null (WandMaskField_8166 pm_f_5@@6))) o2_5@@32 f_23@@32) (= (select (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@10) o2_5@@32 f_23@@32) (select (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@32 f_23@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@32 f_23@@32))
))) (forall ((o2_5@@33 T@Ref) (f_23@@33 T@Field_8166_16323) ) (!  (=> (select (|PolymorphicMapType_8655_8166_23984#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@10) null (WandMaskField_8166 pm_f_5@@6))) o2_5@@33 f_23@@33) (= (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@10) o2_5@@33 f_23@@33) (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@33 f_23@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@33 f_23@@33))
))) (forall ((o2_5@@34 T@Ref) (f_23@@34 T@Field_14973_53) ) (!  (=> (select (|PolymorphicMapType_8655_14973_53#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@10) null (WandMaskField_8166 pm_f_5@@6))) o2_5@@34 f_23@@34) (= (select (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@10) o2_5@@34 f_23@@34) (select (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@34 f_23@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@34 f_23@@34))
))) (forall ((o2_5@@35 T@Ref) (f_23@@35 T@Field_14973_8180) ) (!  (=> (select (|PolymorphicMapType_8655_14973_8180#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@10) null (WandMaskField_8166 pm_f_5@@6))) o2_5@@35 f_23@@35) (= (select (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@10) o2_5@@35 f_23@@35) (select (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@35 f_23@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@35 f_23@@35))
))) (forall ((o2_5@@36 T@Ref) (f_23@@36 T@Field_14973_3286) ) (!  (=> (select (|PolymorphicMapType_8655_14973_3286#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@10) null (WandMaskField_8166 pm_f_5@@6))) o2_5@@36 f_23@@36) (= (select (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@10) o2_5@@36 f_23@@36) (select (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@36 f_23@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@36 f_23@@36))
))) (forall ((o2_5@@37 T@Ref) (f_23@@37 T@Field_14973_14974) ) (!  (=> (select (|PolymorphicMapType_8655_14973_14974#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@10) null (WandMaskField_8166 pm_f_5@@6))) o2_5@@37 f_23@@37) (= (select (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@10) o2_5@@37 f_23@@37) (select (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@37 f_23@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@37 f_23@@37))
))) (forall ((o2_5@@38 T@Ref) (f_23@@38 T@Field_16318_16323) ) (!  (=> (select (|PolymorphicMapType_8655_14973_25032#PolymorphicMapType_8655| (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@10) null (WandMaskField_8166 pm_f_5@@6))) o2_5@@38 f_23@@38) (= (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@10) o2_5@@38 f_23@@38) (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@38 f_23@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| ExhaleHeap@@6) o2_5@@38 f_23@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_8166_25840 pm_f_5@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8106) (ExhaleHeap@@7 T@PolymorphicMapType_8106) (Mask@@8 T@PolymorphicMapType_8127) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@11) o_15 $allocated) (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| ExhaleHeap@@7) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| ExhaleHeap@@7) o_15 $allocated))
)))
(assert (forall ((p T@Field_14973_14974) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14973_14973 p v_1 p w))
 :qid |stdinbpl.198:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14973_14973 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_8166_14974) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8166_8166 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.198:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8166_8166 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_5189_3286 val)))
(assert  (not (IsWandField_5189_3286 val)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8106) (ExhaleHeap@@8 T@PolymorphicMapType_8106) (Mask@@9 T@PolymorphicMapType_8127) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8127) (o_2@@9 T@Ref) (f_4@@9 T@Field_8166_16323) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8127_5189_30837#PolymorphicMapType_8127| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5189_33129 f_4@@9))) (not (IsWandField_5189_33145 f_4@@9))) (<= (select (|PolymorphicMapType_8127_5189_30837#PolymorphicMapType_8127| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8127_5189_30837#PolymorphicMapType_8127| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8127) (o_2@@10 T@Ref) (f_4@@10 T@Field_8179_8180) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8127_5189_8180#PolymorphicMapType_8127| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5189_8180 f_4@@10))) (not (IsWandField_5189_8180 f_4@@10))) (<= (select (|PolymorphicMapType_8127_5189_8180#PolymorphicMapType_8127| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8127_5189_8180#PolymorphicMapType_8127| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8127) (o_2@@11 T@Ref) (f_4@@11 T@Field_8166_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8127_5189_53#PolymorphicMapType_8127| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5189_53 f_4@@11))) (not (IsWandField_5189_53 f_4@@11))) (<= (select (|PolymorphicMapType_8127_5189_53#PolymorphicMapType_8127| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8127_5189_53#PolymorphicMapType_8127| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8127) (o_2@@12 T@Ref) (f_4@@12 T@Field_14351_3286) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8127_5189_3286#PolymorphicMapType_8127| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5189_3286 f_4@@12))) (not (IsWandField_5189_3286 f_4@@12))) (<= (select (|PolymorphicMapType_8127_5189_3286#PolymorphicMapType_8127| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8127_5189_3286#PolymorphicMapType_8127| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8127) (o_2@@13 T@Ref) (f_4@@13 T@Field_8166_14974) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8127_5189_5250#PolymorphicMapType_8127| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_8166_22500 f_4@@13))) (not (IsWandField_8166_25840 f_4@@13))) (<= (select (|PolymorphicMapType_8127_5189_5250#PolymorphicMapType_8127| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8127_5189_5250#PolymorphicMapType_8127| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8127) (o_2@@14 T@Ref) (f_4@@14 T@Field_16318_16323) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8127_5249_30423#PolymorphicMapType_8127| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5249_32312 f_4@@14))) (not (IsWandField_5249_32328 f_4@@14))) (<= (select (|PolymorphicMapType_8127_5249_30423#PolymorphicMapType_8127| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8127_5249_30423#PolymorphicMapType_8127| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8127) (o_2@@15 T@Ref) (f_4@@15 T@Field_14973_8180) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8127_5249_8180#PolymorphicMapType_8127| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5249_8180 f_4@@15))) (not (IsWandField_5249_8180 f_4@@15))) (<= (select (|PolymorphicMapType_8127_5249_8180#PolymorphicMapType_8127| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8127_5249_8180#PolymorphicMapType_8127| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8127) (o_2@@16 T@Ref) (f_4@@16 T@Field_14973_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8127_5249_53#PolymorphicMapType_8127| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5249_53 f_4@@16))) (not (IsWandField_5249_53 f_4@@16))) (<= (select (|PolymorphicMapType_8127_5249_53#PolymorphicMapType_8127| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8127_5249_53#PolymorphicMapType_8127| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8127) (o_2@@17 T@Ref) (f_4@@17 T@Field_14973_3286) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8127_5249_3286#PolymorphicMapType_8127| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5249_3286 f_4@@17))) (not (IsWandField_5249_3286 f_4@@17))) (<= (select (|PolymorphicMapType_8127_5249_3286#PolymorphicMapType_8127| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8127_5249_3286#PolymorphicMapType_8127| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8127) (o_2@@18 T@Ref) (f_4@@18 T@Field_14973_14974) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8127_5249_5250#PolymorphicMapType_8127| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5249_5250 f_4@@18))) (not (IsWandField_14973_26197 f_4@@18))) (<= (select (|PolymorphicMapType_8127_5249_5250#PolymorphicMapType_8127| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8127_5249_5250#PolymorphicMapType_8127| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8127) (o_2@@19 T@Ref) (f_4@@19 T@Field_16318_16323) ) (! (= (HasDirectPerm_14973_22212 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_8127_5249_30423#PolymorphicMapType_8127| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14973_22212 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8127) (o_2@@20 T@Ref) (f_4@@20 T@Field_14973_14974) ) (! (= (HasDirectPerm_14973_14974 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_8127_5249_5250#PolymorphicMapType_8127| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14973_14974 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8127) (o_2@@21 T@Ref) (f_4@@21 T@Field_14973_3286) ) (! (= (HasDirectPerm_14973_3286 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_8127_5249_3286#PolymorphicMapType_8127| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14973_3286 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8127) (o_2@@22 T@Ref) (f_4@@22 T@Field_14973_8180) ) (! (= (HasDirectPerm_14973_8180 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_8127_5249_8180#PolymorphicMapType_8127| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14973_8180 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8127) (o_2@@23 T@Ref) (f_4@@23 T@Field_14973_53) ) (! (= (HasDirectPerm_14973_53 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_8127_5249_53#PolymorphicMapType_8127| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14973_53 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8127) (o_2@@24 T@Ref) (f_4@@24 T@Field_8166_16323) ) (! (= (HasDirectPerm_8166_21051 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_8127_5189_30837#PolymorphicMapType_8127| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8166_21051 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8127) (o_2@@25 T@Ref) (f_4@@25 T@Field_8166_14974) ) (! (= (HasDirectPerm_8166_14974 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_8127_5189_5250#PolymorphicMapType_8127| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8166_14974 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8127) (o_2@@26 T@Ref) (f_4@@26 T@Field_14351_3286) ) (! (= (HasDirectPerm_8166_3286 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_8127_5189_3286#PolymorphicMapType_8127| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8166_3286 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8127) (o_2@@27 T@Ref) (f_4@@27 T@Field_8179_8180) ) (! (= (HasDirectPerm_8166_8180 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_8127_5189_8180#PolymorphicMapType_8127| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8166_8180 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8127) (o_2@@28 T@Ref) (f_4@@28 T@Field_8166_53) ) (! (= (HasDirectPerm_8166_53 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_8127_5189_53#PolymorphicMapType_8127| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8166_53 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.186:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8106) (ExhaleHeap@@9 T@PolymorphicMapType_8106) (Mask@@30 T@PolymorphicMapType_8127) (o_15@@0 T@Ref) (f_23@@39 T@Field_16318_16323) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_14973_22212 Mask@@30 o_15@@0 f_23@@39) (= (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@13) o_15@@0 f_23@@39) (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| ExhaleHeap@@9) o_15@@0 f_23@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| ExhaleHeap@@9) o_15@@0 f_23@@39))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8106) (ExhaleHeap@@10 T@PolymorphicMapType_8106) (Mask@@31 T@PolymorphicMapType_8127) (o_15@@1 T@Ref) (f_23@@40 T@Field_14973_14974) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_14973_14974 Mask@@31 o_15@@1 f_23@@40) (= (select (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@14) o_15@@1 f_23@@40) (select (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| ExhaleHeap@@10) o_15@@1 f_23@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| ExhaleHeap@@10) o_15@@1 f_23@@40))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8106) (ExhaleHeap@@11 T@PolymorphicMapType_8106) (Mask@@32 T@PolymorphicMapType_8127) (o_15@@2 T@Ref) (f_23@@41 T@Field_14973_3286) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_14973_3286 Mask@@32 o_15@@2 f_23@@41) (= (select (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@15) o_15@@2 f_23@@41) (select (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| ExhaleHeap@@11) o_15@@2 f_23@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| ExhaleHeap@@11) o_15@@2 f_23@@41))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8106) (ExhaleHeap@@12 T@PolymorphicMapType_8106) (Mask@@33 T@PolymorphicMapType_8127) (o_15@@3 T@Ref) (f_23@@42 T@Field_14973_8180) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_14973_8180 Mask@@33 o_15@@3 f_23@@42) (= (select (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@16) o_15@@3 f_23@@42) (select (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| ExhaleHeap@@12) o_15@@3 f_23@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| ExhaleHeap@@12) o_15@@3 f_23@@42))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8106) (ExhaleHeap@@13 T@PolymorphicMapType_8106) (Mask@@34 T@PolymorphicMapType_8127) (o_15@@4 T@Ref) (f_23@@43 T@Field_14973_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_14973_53 Mask@@34 o_15@@4 f_23@@43) (= (select (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@17) o_15@@4 f_23@@43) (select (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| ExhaleHeap@@13) o_15@@4 f_23@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| ExhaleHeap@@13) o_15@@4 f_23@@43))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8106) (ExhaleHeap@@14 T@PolymorphicMapType_8106) (Mask@@35 T@PolymorphicMapType_8127) (o_15@@5 T@Ref) (f_23@@44 T@Field_8166_16323) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_8166_21051 Mask@@35 o_15@@5 f_23@@44) (= (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@18) o_15@@5 f_23@@44) (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| ExhaleHeap@@14) o_15@@5 f_23@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| ExhaleHeap@@14) o_15@@5 f_23@@44))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8106) (ExhaleHeap@@15 T@PolymorphicMapType_8106) (Mask@@36 T@PolymorphicMapType_8127) (o_15@@6 T@Ref) (f_23@@45 T@Field_8166_14974) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_8166_14974 Mask@@36 o_15@@6 f_23@@45) (= (select (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@19) o_15@@6 f_23@@45) (select (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| ExhaleHeap@@15) o_15@@6 f_23@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| ExhaleHeap@@15) o_15@@6 f_23@@45))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8106) (ExhaleHeap@@16 T@PolymorphicMapType_8106) (Mask@@37 T@PolymorphicMapType_8127) (o_15@@7 T@Ref) (f_23@@46 T@Field_14351_3286) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_8166_3286 Mask@@37 o_15@@7 f_23@@46) (= (select (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@20) o_15@@7 f_23@@46) (select (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| ExhaleHeap@@16) o_15@@7 f_23@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| ExhaleHeap@@16) o_15@@7 f_23@@46))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8106) (ExhaleHeap@@17 T@PolymorphicMapType_8106) (Mask@@38 T@PolymorphicMapType_8127) (o_15@@8 T@Ref) (f_23@@47 T@Field_8179_8180) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_8166_8180 Mask@@38 o_15@@8 f_23@@47) (= (select (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@21) o_15@@8 f_23@@47) (select (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| ExhaleHeap@@17) o_15@@8 f_23@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| ExhaleHeap@@17) o_15@@8 f_23@@47))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8106) (ExhaleHeap@@18 T@PolymorphicMapType_8106) (Mask@@39 T@PolymorphicMapType_8127) (o_15@@9 T@Ref) (f_23@@48 T@Field_8166_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_8166_53 Mask@@39 o_15@@9 f_23@@48) (= (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@22) o_15@@9 f_23@@48) (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| ExhaleHeap@@18) o_15@@9 f_23@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| ExhaleHeap@@18) o_15@@9 f_23@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_8166_16323) ) (! (= (select (|PolymorphicMapType_8127_5189_30837#PolymorphicMapType_8127| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8127_5189_30837#PolymorphicMapType_8127| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_8179_8180) ) (! (= (select (|PolymorphicMapType_8127_5189_8180#PolymorphicMapType_8127| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8127_5189_8180#PolymorphicMapType_8127| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_8166_53) ) (! (= (select (|PolymorphicMapType_8127_5189_53#PolymorphicMapType_8127| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8127_5189_53#PolymorphicMapType_8127| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_14351_3286) ) (! (= (select (|PolymorphicMapType_8127_5189_3286#PolymorphicMapType_8127| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8127_5189_3286#PolymorphicMapType_8127| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_8166_14974) ) (! (= (select (|PolymorphicMapType_8127_5189_5250#PolymorphicMapType_8127| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8127_5189_5250#PolymorphicMapType_8127| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_16318_16323) ) (! (= (select (|PolymorphicMapType_8127_5249_30423#PolymorphicMapType_8127| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8127_5249_30423#PolymorphicMapType_8127| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_14973_8180) ) (! (= (select (|PolymorphicMapType_8127_5249_8180#PolymorphicMapType_8127| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8127_5249_8180#PolymorphicMapType_8127| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_14973_53) ) (! (= (select (|PolymorphicMapType_8127_5249_53#PolymorphicMapType_8127| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8127_5249_53#PolymorphicMapType_8127| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_14973_3286) ) (! (= (select (|PolymorphicMapType_8127_5249_3286#PolymorphicMapType_8127| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8127_5249_3286#PolymorphicMapType_8127| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_14973_14974) ) (! (= (select (|PolymorphicMapType_8127_5249_5250#PolymorphicMapType_8127| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8127_5249_5250#PolymorphicMapType_8127| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8127) (SummandMask1 T@PolymorphicMapType_8127) (SummandMask2 T@PolymorphicMapType_8127) (o_2@@39 T@Ref) (f_4@@39 T@Field_8166_16323) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8127_5189_30837#PolymorphicMapType_8127| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_8127_5189_30837#PolymorphicMapType_8127| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_8127_5189_30837#PolymorphicMapType_8127| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8127_5189_30837#PolymorphicMapType_8127| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8127_5189_30837#PolymorphicMapType_8127| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8127_5189_30837#PolymorphicMapType_8127| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8127) (SummandMask1@@0 T@PolymorphicMapType_8127) (SummandMask2@@0 T@PolymorphicMapType_8127) (o_2@@40 T@Ref) (f_4@@40 T@Field_8179_8180) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8127_5189_8180#PolymorphicMapType_8127| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_8127_5189_8180#PolymorphicMapType_8127| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_8127_5189_8180#PolymorphicMapType_8127| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8127_5189_8180#PolymorphicMapType_8127| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8127_5189_8180#PolymorphicMapType_8127| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8127_5189_8180#PolymorphicMapType_8127| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8127) (SummandMask1@@1 T@PolymorphicMapType_8127) (SummandMask2@@1 T@PolymorphicMapType_8127) (o_2@@41 T@Ref) (f_4@@41 T@Field_8166_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8127_5189_53#PolymorphicMapType_8127| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_8127_5189_53#PolymorphicMapType_8127| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_8127_5189_53#PolymorphicMapType_8127| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8127_5189_53#PolymorphicMapType_8127| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8127_5189_53#PolymorphicMapType_8127| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8127_5189_53#PolymorphicMapType_8127| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8127) (SummandMask1@@2 T@PolymorphicMapType_8127) (SummandMask2@@2 T@PolymorphicMapType_8127) (o_2@@42 T@Ref) (f_4@@42 T@Field_14351_3286) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8127_5189_3286#PolymorphicMapType_8127| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_8127_5189_3286#PolymorphicMapType_8127| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_8127_5189_3286#PolymorphicMapType_8127| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8127_5189_3286#PolymorphicMapType_8127| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8127_5189_3286#PolymorphicMapType_8127| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8127_5189_3286#PolymorphicMapType_8127| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8127) (SummandMask1@@3 T@PolymorphicMapType_8127) (SummandMask2@@3 T@PolymorphicMapType_8127) (o_2@@43 T@Ref) (f_4@@43 T@Field_8166_14974) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8127_5189_5250#PolymorphicMapType_8127| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_8127_5189_5250#PolymorphicMapType_8127| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_8127_5189_5250#PolymorphicMapType_8127| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8127_5189_5250#PolymorphicMapType_8127| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8127_5189_5250#PolymorphicMapType_8127| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8127_5189_5250#PolymorphicMapType_8127| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8127) (SummandMask1@@4 T@PolymorphicMapType_8127) (SummandMask2@@4 T@PolymorphicMapType_8127) (o_2@@44 T@Ref) (f_4@@44 T@Field_16318_16323) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8127_5249_30423#PolymorphicMapType_8127| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_8127_5249_30423#PolymorphicMapType_8127| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_8127_5249_30423#PolymorphicMapType_8127| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8127_5249_30423#PolymorphicMapType_8127| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8127_5249_30423#PolymorphicMapType_8127| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8127_5249_30423#PolymorphicMapType_8127| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8127) (SummandMask1@@5 T@PolymorphicMapType_8127) (SummandMask2@@5 T@PolymorphicMapType_8127) (o_2@@45 T@Ref) (f_4@@45 T@Field_14973_8180) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8127_5249_8180#PolymorphicMapType_8127| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_8127_5249_8180#PolymorphicMapType_8127| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_8127_5249_8180#PolymorphicMapType_8127| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8127_5249_8180#PolymorphicMapType_8127| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8127_5249_8180#PolymorphicMapType_8127| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8127_5249_8180#PolymorphicMapType_8127| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8127) (SummandMask1@@6 T@PolymorphicMapType_8127) (SummandMask2@@6 T@PolymorphicMapType_8127) (o_2@@46 T@Ref) (f_4@@46 T@Field_14973_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8127_5249_53#PolymorphicMapType_8127| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_8127_5249_53#PolymorphicMapType_8127| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_8127_5249_53#PolymorphicMapType_8127| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8127_5249_53#PolymorphicMapType_8127| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8127_5249_53#PolymorphicMapType_8127| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8127_5249_53#PolymorphicMapType_8127| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8127) (SummandMask1@@7 T@PolymorphicMapType_8127) (SummandMask2@@7 T@PolymorphicMapType_8127) (o_2@@47 T@Ref) (f_4@@47 T@Field_14973_3286) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8127_5249_3286#PolymorphicMapType_8127| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_8127_5249_3286#PolymorphicMapType_8127| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_8127_5249_3286#PolymorphicMapType_8127| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8127_5249_3286#PolymorphicMapType_8127| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8127_5249_3286#PolymorphicMapType_8127| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8127_5249_3286#PolymorphicMapType_8127| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8127) (SummandMask1@@8 T@PolymorphicMapType_8127) (SummandMask2@@8 T@PolymorphicMapType_8127) (o_2@@48 T@Ref) (f_4@@48 T@Field_14973_14974) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8127_5249_5250#PolymorphicMapType_8127| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_8127_5249_5250#PolymorphicMapType_8127| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_8127_5249_5250#PolymorphicMapType_8127| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8127_5249_5250#PolymorphicMapType_8127| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8127_5249_5250#PolymorphicMapType_8127| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8127_5249_5250#PolymorphicMapType_8127| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a_2@@3 T@Ref) ) (! (= (getPredWandId_5249_5250 (p_2 a_2@@3)) 0)
 :qid |stdinbpl.513:15|
 :skolemid |94|
 :pattern ( (p_2 a_2@@3))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8106) (o_14 T@Ref) (f_24 T@Field_16318_16323) (v T@PolymorphicMapType_8655) ) (! (succHeap Heap@@23 (PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@23) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@23) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@23) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@23) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@23) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@23) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@23) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@23) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@23) (store (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@23) o_14 f_24 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@23) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@23) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@23) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@23) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@23) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@23) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@23) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@23) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@23) (store (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@23) o_14 f_24 v)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8106) (o_14@@0 T@Ref) (f_24@@0 T@Field_14973_3286) (v@@0 Int) ) (! (succHeap Heap@@24 (PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@24) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@24) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@24) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@24) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@24) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@24) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@24) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@24) (store (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@24) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@24) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@24) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@24) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@24) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@24) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@24) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@24) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@24) (store (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@24) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8106) (o_14@@1 T@Ref) (f_24@@1 T@Field_14973_14974) (v@@1 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@25) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@25) (store (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@25) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@25) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@25) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@25) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@25) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@25) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@25) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@25) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@25) (store (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@25) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@25) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@25) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@25) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@25) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@25) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@25) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8106) (o_14@@2 T@Ref) (f_24@@2 T@Field_14973_8180) (v@@2 T@Ref) ) (! (succHeap Heap@@26 (PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@26) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@26) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@26) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@26) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@26) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@26) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@26) (store (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@26) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@26) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@26) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@26) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@26) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@26) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@26) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@26) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@26) (store (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@26) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@26) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8106) (o_14@@3 T@Ref) (f_24@@3 T@Field_14973_53) (v@@3 Bool) ) (! (succHeap Heap@@27 (PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@27) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@27) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@27) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@27) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@27) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@27) (store (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@27) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@27) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@27) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@27) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@27) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@27) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@27) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@27) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@27) (store (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@27) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@27) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@27) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8106) (o_14@@4 T@Ref) (f_24@@4 T@Field_8166_16323) (v@@4 T@PolymorphicMapType_8655) ) (! (succHeap Heap@@28 (PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@28) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@28) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@28) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@28) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@28) (store (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@28) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@28) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@28) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@28) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@28) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@28) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@28) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@28) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@28) (store (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@28) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@28) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@28) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@28) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8106) (o_14@@5 T@Ref) (f_24@@5 T@Field_14351_3286) (v@@5 Int) ) (! (succHeap Heap@@29 (PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@29) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@29) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@29) (store (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@29) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@29) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@29) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@29) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@29) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@29) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@29) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@29) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@29) (store (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@29) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@29) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@29) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@29) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@29) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@29) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8106) (o_14@@6 T@Ref) (f_24@@6 T@Field_8166_14974) (v@@6 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@30) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@30) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@30) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@30) (store (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@30) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@30) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@30) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@30) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@30) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@30) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@30) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@30) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@30) (store (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@30) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@30) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@30) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@30) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@30) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8106) (o_14@@7 T@Ref) (f_24@@7 T@Field_8179_8180) (v@@7 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@31) (store (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@31) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@31) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@31) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@31) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@31) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@31) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@31) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@31) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8106 (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@31) (store (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@31) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@31) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@31) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@31) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@31) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@31) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@31) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@31) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8106) (o_14@@8 T@Ref) (f_24@@8 T@Field_8166_53) (v@@8 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_8106 (store (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@32) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@32) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@32) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@32) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@32) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@32) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@32) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@32) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@32) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8106 (store (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@32) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@32) (|PolymorphicMapType_8106_5249_5250#PolymorphicMapType_8106| Heap@@32) (|PolymorphicMapType_8106_8166_3286#PolymorphicMapType_8106| Heap@@32) (|PolymorphicMapType_8106_8166_14974#PolymorphicMapType_8106| Heap@@32) (|PolymorphicMapType_8106_8166_21093#PolymorphicMapType_8106| Heap@@32) (|PolymorphicMapType_8106_14973_53#PolymorphicMapType_8106| Heap@@32) (|PolymorphicMapType_8106_14973_8180#PolymorphicMapType_8106| Heap@@32) (|PolymorphicMapType_8106_14973_3286#PolymorphicMapType_8106| Heap@@32) (|PolymorphicMapType_8106_14973_22254#PolymorphicMapType_8106| Heap@@32)))
)))
(assert (forall ((a_2@@4 T@Ref) ) (! (= (PredicateMaskField_5249 (p_2 a_2@@4)) (|p#sm| a_2@@4))
 :qid |stdinbpl.505:15|
 :skolemid |92|
 :pattern ( (PredicateMaskField_5249 (p_2 a_2@@4)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.298:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.299:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8106) (Mask@@40 T@PolymorphicMapType_8127) (set_1@@2 (Array T@Ref Bool)) ) (!  (=> (state Heap@@33 Mask@@40) (= (|foo'| Heap@@33 set_1@@2) (|foo#frame| (FrameFragment_3436 (|foo#condqp1| Heap@@33 set_1@@2)) set_1@@2)))
 :qid |stdinbpl.420:15|
 :skolemid |84|
 :pattern ( (state Heap@@33 Mask@@40) (|foo'| Heap@@33 set_1@@2))
)))
(assert (forall ((o_14@@9 T@Ref) (f_22 T@Field_8179_8180) (Heap@@34 T@PolymorphicMapType_8106) ) (!  (=> (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@34) o_14@@9 $allocated) (select (|PolymorphicMapType_8106_4884_53#PolymorphicMapType_8106| Heap@@34) (select (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@34) o_14@@9 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8106_4887_4888#PolymorphicMapType_8106| Heap@@34) o_14@@9 f_22))
)))
(assert (forall ((p@@2 T@Field_14973_14974) (v_1@@1 T@FrameType) (q T@Field_14973_14974) (w@@1 T@FrameType) (r T@Field_14973_14974) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14973_14973 p@@2 v_1@@1 q w@@1) (InsidePredicate_14973_14973 q w@@1 r u)) (InsidePredicate_14973_14973 p@@2 v_1@@1 r u))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14973_14973 p@@2 v_1@@1 q w@@1) (InsidePredicate_14973_14973 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_14973_14974) (v_1@@2 T@FrameType) (q@@0 T@Field_14973_14974) (w@@2 T@FrameType) (r@@0 T@Field_8166_14974) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_14973_14973 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14973_8166 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_14973_8166 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14973_14973 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14973_8166 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_14973_14974) (v_1@@3 T@FrameType) (q@@1 T@Field_8166_14974) (w@@3 T@FrameType) (r@@1 T@Field_14973_14974) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_14973_8166 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8166_14973 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_14973_14973 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14973_8166 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8166_14973 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_14973_14974) (v_1@@4 T@FrameType) (q@@2 T@Field_8166_14974) (w@@4 T@FrameType) (r@@2 T@Field_8166_14974) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_14973_8166 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8166_8166 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_14973_8166 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14973_8166 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8166_8166 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_8166_14974) (v_1@@5 T@FrameType) (q@@3 T@Field_14973_14974) (w@@5 T@FrameType) (r@@3 T@Field_14973_14974) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8166_14973 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14973_14973 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_8166_14973 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8166_14973 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14973_14973 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_8166_14974) (v_1@@6 T@FrameType) (q@@4 T@Field_14973_14974) (w@@6 T@FrameType) (r@@4 T@Field_8166_14974) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8166_14973 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14973_8166 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_8166_8166 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8166_14973 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14973_8166 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_8166_14974) (v_1@@7 T@FrameType) (q@@5 T@Field_8166_14974) (w@@7 T@FrameType) (r@@5 T@Field_14973_14974) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8166_8166 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8166_14973 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_8166_14973 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8166_8166 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8166_14973 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_8166_14974) (v_1@@8 T@FrameType) (q@@6 T@Field_8166_14974) (w@@8 T@FrameType) (r@@6 T@Field_8166_14974) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8166_8166 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8166_8166 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_8166_8166 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8166_8166 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8166_8166 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.304:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |p#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
