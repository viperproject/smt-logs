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
(declare-sort T@Field_6148_53 0)
(declare-sort T@Field_6161_6162 0)
(declare-sort T@Field_9589_9590 0)
(declare-sort T@ArrayDomainType 0)
(declare-sort T@Field_10055_10056 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_13685_13690 0)
(declare-sort T@Field_3624_10056 0)
(declare-sort T@Field_3624_13690 0)
(declare-sort T@Field_10055_3625 0)
(declare-sort T@Field_10055_53 0)
(declare-sort T@Field_10055_6162 0)
(declare-datatypes ((T@PolymorphicMapType_6109 0)) (((PolymorphicMapType_6109 (|PolymorphicMapType_6109_3679_3680#PolymorphicMapType_6109| (Array T@Ref T@Field_10055_10056 Real)) (|PolymorphicMapType_6109_3624_3625#PolymorphicMapType_6109| (Array T@Ref T@Field_9589_9590 Real)) (|PolymorphicMapType_6109_3679_3625#PolymorphicMapType_6109| (Array T@Ref T@Field_10055_3625 Real)) (|PolymorphicMapType_6109_3679_53#PolymorphicMapType_6109| (Array T@Ref T@Field_10055_53 Real)) (|PolymorphicMapType_6109_3679_6162#PolymorphicMapType_6109| (Array T@Ref T@Field_10055_6162 Real)) (|PolymorphicMapType_6109_3679_28043#PolymorphicMapType_6109| (Array T@Ref T@Field_13685_13690 Real)) (|PolymorphicMapType_6109_3624_3680#PolymorphicMapType_6109| (Array T@Ref T@Field_3624_10056 Real)) (|PolymorphicMapType_6109_3624_53#PolymorphicMapType_6109| (Array T@Ref T@Field_6148_53 Real)) (|PolymorphicMapType_6109_3624_6162#PolymorphicMapType_6109| (Array T@Ref T@Field_6161_6162 Real)) (|PolymorphicMapType_6109_3624_28457#PolymorphicMapType_6109| (Array T@Ref T@Field_3624_13690 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6637 0)) (((PolymorphicMapType_6637 (|PolymorphicMapType_6637_3624_3625#PolymorphicMapType_6637| (Array T@Ref T@Field_9589_9590 Bool)) (|PolymorphicMapType_6637_3624_53#PolymorphicMapType_6637| (Array T@Ref T@Field_6148_53 Bool)) (|PolymorphicMapType_6637_3624_6162#PolymorphicMapType_6637| (Array T@Ref T@Field_6161_6162 Bool)) (|PolymorphicMapType_6637_3624_10056#PolymorphicMapType_6637| (Array T@Ref T@Field_3624_10056 Bool)) (|PolymorphicMapType_6637_3624_21585#PolymorphicMapType_6637| (Array T@Ref T@Field_3624_13690 Bool)) (|PolymorphicMapType_6637_10055_3625#PolymorphicMapType_6637| (Array T@Ref T@Field_10055_3625 Bool)) (|PolymorphicMapType_6637_10055_53#PolymorphicMapType_6637| (Array T@Ref T@Field_10055_53 Bool)) (|PolymorphicMapType_6637_10055_6162#PolymorphicMapType_6637| (Array T@Ref T@Field_10055_6162 Bool)) (|PolymorphicMapType_6637_10055_10056#PolymorphicMapType_6637| (Array T@Ref T@Field_10055_10056 Bool)) (|PolymorphicMapType_6637_10055_22639#PolymorphicMapType_6637| (Array T@Ref T@Field_13685_13690 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6088 0)) (((PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| (Array T@Ref T@Field_6148_53 Bool)) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| (Array T@Ref T@Field_6161_6162 T@Ref)) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| (Array T@Ref T@Field_9589_9590 T@ArrayDomainType)) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| (Array T@Ref T@Field_10055_10056 T@FrameType)) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| (Array T@Ref T@Field_13685_13690 T@PolymorphicMapType_6637)) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| (Array T@Ref T@Field_3624_10056 T@FrameType)) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| (Array T@Ref T@Field_3624_13690 T@PolymorphicMapType_6637)) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| (Array T@Ref T@Field_10055_3625 T@ArrayDomainType)) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| (Array T@Ref T@Field_10055_53 Bool)) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| (Array T@Ref T@Field_10055_6162 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_6148_53)
(declare-fun elements_1 () T@Field_9589_9590)
(declare-fun succHeap (T@PolymorphicMapType_6088 T@PolymorphicMapType_6088) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6088 T@PolymorphicMapType_6088) Bool)
(declare-fun state (T@PolymorphicMapType_6088 T@PolymorphicMapType_6109) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6109) Bool)
(declare-fun foo_2 (T@PolymorphicMapType_6088 T@Ref) Bool)
(declare-fun |foo#triggerStateless| (T@Ref) Bool)
(declare-fun |P#trigger_3679| (T@PolymorphicMapType_6088 T@Field_10055_10056) Bool)
(declare-fun P (T@Ref) T@Field_10055_10056)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun len_1 (T@ArrayDomainType) Int)
(declare-fun |foo'| (T@PolymorphicMapType_6088 T@Ref) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6637)
(declare-fun IsPredicateField_3679_3680 (T@Field_10055_10056) Bool)
(declare-fun dummyFunction_1586 (Bool) Bool)
(declare-fun |P#everUsed_3679| (T@Field_10055_10056) Bool)
(declare-fun |P#condqp1| (T@PolymorphicMapType_6088 T@Ref) Int)
(declare-fun |sk_P#condqp1| (Int Int) Int)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun null () T@Ref)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6088 T@PolymorphicMapType_6088 T@PolymorphicMapType_6109) Bool)
(declare-fun PredicateMaskField_3679 (T@Field_10055_10056) T@Field_13685_13690)
(declare-fun HasDirectPerm_10055_10056 (T@PolymorphicMapType_6109 T@Ref T@Field_10055_10056) Bool)
(declare-fun IsPredicateField_3624_20110 (T@Field_3624_10056) Bool)
(declare-fun PredicateMaskField_3624 (T@Field_3624_10056) T@Field_3624_13690)
(declare-fun HasDirectPerm_3624_10056 (T@PolymorphicMapType_6109 T@Ref T@Field_3624_10056) Bool)
(declare-fun IsWandField_10055_23804 (T@Field_10055_10056) Bool)
(declare-fun WandMaskField_10055 (T@Field_10055_10056) T@Field_13685_13690)
(declare-fun IsWandField_3624_23447 (T@Field_3624_10056) Bool)
(declare-fun WandMaskField_3624 (T@Field_3624_10056) T@Field_3624_13690)
(declare-fun |P#sm| (T@Ref) T@Field_13685_13690)
(declare-fun dummyHeap () T@PolymorphicMapType_6088)
(declare-fun ZeroMask () T@PolymorphicMapType_6109)
(declare-fun InsidePredicate_10055_10055 (T@Field_10055_10056 T@FrameType T@Field_10055_10056 T@FrameType) Bool)
(declare-fun InsidePredicate_6148_6148 (T@Field_3624_10056 T@FrameType T@Field_3624_10056 T@FrameType) Bool)
(declare-fun IsPredicateField_3624_3625 (T@Field_9589_9590) Bool)
(declare-fun IsWandField_3624_3625 (T@Field_9589_9590) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3624_30749 (T@Field_3624_13690) Bool)
(declare-fun IsWandField_3624_30765 (T@Field_3624_13690) Bool)
(declare-fun IsPredicateField_3624_6162 (T@Field_6161_6162) Bool)
(declare-fun IsWandField_3624_6162 (T@Field_6161_6162) Bool)
(declare-fun IsPredicateField_3624_53 (T@Field_6148_53) Bool)
(declare-fun IsWandField_3624_53 (T@Field_6148_53) Bool)
(declare-fun IsPredicateField_3679_29932 (T@Field_13685_13690) Bool)
(declare-fun IsWandField_3679_29948 (T@Field_13685_13690) Bool)
(declare-fun IsPredicateField_3679_6162 (T@Field_10055_6162) Bool)
(declare-fun IsWandField_3679_6162 (T@Field_10055_6162) Bool)
(declare-fun IsPredicateField_3679_53 (T@Field_10055_53) Bool)
(declare-fun IsWandField_3679_53 (T@Field_10055_53) Bool)
(declare-fun IsPredicateField_3679_3625 (T@Field_10055_3625) Bool)
(declare-fun IsWandField_3679_3625 (T@Field_10055_3625) Bool)
(declare-fun HasDirectPerm_10055_19865 (T@PolymorphicMapType_6109 T@Ref T@Field_13685_13690) Bool)
(declare-fun HasDirectPerm_10055_6162 (T@PolymorphicMapType_6109 T@Ref T@Field_10055_6162) Bool)
(declare-fun HasDirectPerm_10055_53 (T@PolymorphicMapType_6109 T@Ref T@Field_10055_53) Bool)
(declare-fun HasDirectPerm_10055_3625 (T@PolymorphicMapType_6109 T@Ref T@Field_10055_3625) Bool)
(declare-fun HasDirectPerm_3624_18696 (T@PolymorphicMapType_6109 T@Ref T@Field_3624_13690) Bool)
(declare-fun HasDirectPerm_3624_6162 (T@PolymorphicMapType_6109 T@Ref T@Field_6161_6162) Bool)
(declare-fun HasDirectPerm_3624_53 (T@PolymorphicMapType_6109 T@Ref T@Field_6148_53) Bool)
(declare-fun HasDirectPerm_3624_3625 (T@PolymorphicMapType_6109 T@Ref T@Field_9589_9590) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6109 T@PolymorphicMapType_6109 T@PolymorphicMapType_6109) Bool)
(declare-fun |foo#frame| (T@FrameType T@Ref) Bool)
(declare-fun getPredWandId_3679_3680 (T@Field_10055_10056) Int)
(declare-fun first (T@Ref) T@ArrayDomainType)
(declare-fun second (T@Ref) Int)
(declare-fun InsidePredicate_10055_6148 (T@Field_10055_10056 T@FrameType T@Field_3624_10056 T@FrameType) Bool)
(declare-fun InsidePredicate_6148_10055 (T@Field_3624_10056 T@FrameType T@Field_10055_10056 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6088) (Heap1 T@PolymorphicMapType_6088) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6088) (Mask T@PolymorphicMapType_6109) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6088) (Heap1@@0 T@PolymorphicMapType_6088) (Heap2 T@PolymorphicMapType_6088) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6088) (Mask@@0 T@PolymorphicMapType_6109) (self T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 0)) (= (foo_2 Heap@@0 self) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (len_1 (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@0) self elements_1)))) (|foo'| Heap@@0 (loc (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@0) self elements_1) i)))
 :qid |stdinbpl.255:82|
 :skolemid |26|
 :pattern ( (loc (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@0) self elements_1) i))
))))
 :qid |stdinbpl.253:15|
 :skolemid |27|
 :pattern ( (state Heap@@0 Mask@@0) (foo_2 Heap@@0 self))
 :pattern ( (state Heap@@0 Mask@@0) (|foo#triggerStateless| self) (|P#trigger_3679| Heap@@0 (P self)))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_13685_13690) ) (!  (not (select (|PolymorphicMapType_6637_10055_22639#PolymorphicMapType_6637| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6637_10055_22639#PolymorphicMapType_6637| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10055_10056) ) (!  (not (select (|PolymorphicMapType_6637_10055_10056#PolymorphicMapType_6637| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6637_10055_10056#PolymorphicMapType_6637| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10055_6162) ) (!  (not (select (|PolymorphicMapType_6637_10055_6162#PolymorphicMapType_6637| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6637_10055_6162#PolymorphicMapType_6637| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10055_53) ) (!  (not (select (|PolymorphicMapType_6637_10055_53#PolymorphicMapType_6637| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6637_10055_53#PolymorphicMapType_6637| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10055_3625) ) (!  (not (select (|PolymorphicMapType_6637_10055_3625#PolymorphicMapType_6637| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6637_10055_3625#PolymorphicMapType_6637| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3624_13690) ) (!  (not (select (|PolymorphicMapType_6637_3624_21585#PolymorphicMapType_6637| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6637_3624_21585#PolymorphicMapType_6637| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3624_10056) ) (!  (not (select (|PolymorphicMapType_6637_3624_10056#PolymorphicMapType_6637| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6637_3624_10056#PolymorphicMapType_6637| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_6161_6162) ) (!  (not (select (|PolymorphicMapType_6637_3624_6162#PolymorphicMapType_6637| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6637_3624_6162#PolymorphicMapType_6637| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_6148_53) ) (!  (not (select (|PolymorphicMapType_6637_3624_53#PolymorphicMapType_6637| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6637_3624_53#PolymorphicMapType_6637| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_9589_9590) ) (!  (not (select (|PolymorphicMapType_6637_3624_3625#PolymorphicMapType_6637| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6637_3624_3625#PolymorphicMapType_6637| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((self@@0 T@Ref) ) (! (IsPredicateField_3679_3680 (P self@@0))
 :qid |stdinbpl.413:15|
 :skolemid |38|
 :pattern ( (P self@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6088) (self@@1 T@Ref) ) (! (dummyFunction_1586 (|foo#triggerStateless| self@@1))
 :qid |stdinbpl.247:15|
 :skolemid |25|
 :pattern ( (|foo'| Heap@@1 self@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6088) (self@@2 T@Ref) ) (! (|P#everUsed_3679| (P self@@2))
 :qid |stdinbpl.432:15|
 :skolemid |42|
 :pattern ( (|P#trigger_3679| Heap@@2 (P self@@2)))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_6088) (Heap1Heap T@PolymorphicMapType_6088) (self@@3 T@Ref) ) (!  (=> (and (=  (and (and (<= 0 (|sk_P#condqp1| (|P#condqp1| Heap2Heap self@@3) (|P#condqp1| Heap1Heap self@@3))) (< (|sk_P#condqp1| (|P#condqp1| Heap2Heap self@@3) (|P#condqp1| Heap1Heap self@@3)) (len_1 (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap2Heap) self@@3 elements_1)))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_P#condqp1| (|P#condqp1| Heap2Heap self@@3) (|P#condqp1| Heap1Heap self@@3))) (< (|sk_P#condqp1| (|P#condqp1| Heap2Heap self@@3) (|P#condqp1| Heap1Heap self@@3)) (len_1 (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap1Heap) self@@3 elements_1)))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_P#condqp1| (|P#condqp1| Heap2Heap self@@3) (|P#condqp1| Heap1Heap self@@3))) (< (|sk_P#condqp1| (|P#condqp1| Heap2Heap self@@3) (|P#condqp1| Heap1Heap self@@3)) (len_1 (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap2Heap) self@@3 elements_1)))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap2Heap) null (P (loc (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap2Heap) self@@3 elements_1) (|sk_P#condqp1| (|P#condqp1| Heap2Heap self@@3) (|P#condqp1| Heap1Heap self@@3))))) (select (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap1Heap) null (P (loc (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap1Heap) self@@3 elements_1) (|sk_P#condqp1| (|P#condqp1| Heap2Heap self@@3) (|P#condqp1| Heap1Heap self@@3)))))))) (= (|P#condqp1| Heap2Heap self@@3) (|P#condqp1| Heap1Heap self@@3)))
 :qid |stdinbpl.443:15|
 :skolemid |43|
 :pattern ( (|P#condqp1| Heap2Heap self@@3) (|P#condqp1| Heap1Heap self@@3) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6088) (ExhaleHeap T@PolymorphicMapType_6088) (Mask@@1 T@PolymorphicMapType_6109) (pm_f_9 T@Field_10055_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_10055_10056 Mask@@1 null pm_f_9) (IsPredicateField_3679_3680 pm_f_9)) (= (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@3) null (PredicateMaskField_3679 pm_f_9)) (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| ExhaleHeap) null (PredicateMaskField_3679 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (IsPredicateField_3679_3680 pm_f_9) (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| ExhaleHeap) null (PredicateMaskField_3679 pm_f_9)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6088) (ExhaleHeap@@0 T@PolymorphicMapType_6088) (Mask@@2 T@PolymorphicMapType_6109) (pm_f_9@@0 T@Field_3624_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_3624_10056 Mask@@2 null pm_f_9@@0) (IsPredicateField_3624_20110 pm_f_9@@0)) (= (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@4) null (PredicateMaskField_3624 pm_f_9@@0)) (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| ExhaleHeap@@0) null (PredicateMaskField_3624 pm_f_9@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (IsPredicateField_3624_20110 pm_f_9@@0) (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| ExhaleHeap@@0) null (PredicateMaskField_3624 pm_f_9@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6088) (ExhaleHeap@@1 T@PolymorphicMapType_6088) (Mask@@3 T@PolymorphicMapType_6109) (pm_f_9@@1 T@Field_10055_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_10055_10056 Mask@@3 null pm_f_9@@1) (IsWandField_10055_23804 pm_f_9@@1)) (= (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@5) null (WandMaskField_10055 pm_f_9@@1)) (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| ExhaleHeap@@1) null (WandMaskField_10055 pm_f_9@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (IsWandField_10055_23804 pm_f_9@@1) (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| ExhaleHeap@@1) null (WandMaskField_10055 pm_f_9@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6088) (ExhaleHeap@@2 T@PolymorphicMapType_6088) (Mask@@4 T@PolymorphicMapType_6109) (pm_f_9@@2 T@Field_3624_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_3624_10056 Mask@@4 null pm_f_9@@2) (IsWandField_3624_23447 pm_f_9@@2)) (= (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@6) null (WandMaskField_3624 pm_f_9@@2)) (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| ExhaleHeap@@2) null (WandMaskField_3624 pm_f_9@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (IsWandField_3624_23447 pm_f_9@@2) (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| ExhaleHeap@@2) null (WandMaskField_3624 pm_f_9@@2)))
)))
(assert (forall ((self@@4 T@Ref) (self2 T@Ref) ) (!  (=> (= (P self@@4) (P self2)) (= self@@4 self2))
 :qid |stdinbpl.423:15|
 :skolemid |40|
 :pattern ( (P self@@4) (P self2))
)))
(assert (forall ((self@@5 T@Ref) (self2@@0 T@Ref) ) (!  (=> (= (|P#sm| self@@5) (|P#sm| self2@@0)) (= self@@5 self2@@0))
 :qid |stdinbpl.427:15|
 :skolemid |41|
 :pattern ( (|P#sm| self@@5) (|P#sm| self2@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6088) (ExhaleHeap@@3 T@PolymorphicMapType_6088) (Mask@@5 T@PolymorphicMapType_6109) (pm_f_9@@3 T@Field_10055_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_10055_10056 Mask@@5 null pm_f_9@@3) (IsPredicateField_3679_3680 pm_f_9@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_9589_9590) ) (!  (=> (select (|PolymorphicMapType_6637_3624_3625#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@7) null (PredicateMaskField_3679 pm_f_9@@3))) o2_9 f_24) (= (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@7) o2_9 f_24) (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_6148_53) ) (!  (=> (select (|PolymorphicMapType_6637_3624_53#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@7) null (PredicateMaskField_3679 pm_f_9@@3))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@7) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_6161_6162) ) (!  (=> (select (|PolymorphicMapType_6637_3624_6162#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@7) null (PredicateMaskField_3679 pm_f_9@@3))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@7) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_3624_10056) ) (!  (=> (select (|PolymorphicMapType_6637_3624_10056#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@7) null (PredicateMaskField_3679 pm_f_9@@3))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@7) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9@@2 f_24@@2))
))) (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_3624_13690) ) (!  (=> (select (|PolymorphicMapType_6637_3624_21585#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@7) null (PredicateMaskField_3679 pm_f_9@@3))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@7) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9@@3 f_24@@3))
))) (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_10055_3625) ) (!  (=> (select (|PolymorphicMapType_6637_10055_3625#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@7) null (PredicateMaskField_3679 pm_f_9@@3))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@7) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9@@4 f_24@@4))
))) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_10055_53) ) (!  (=> (select (|PolymorphicMapType_6637_10055_53#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@7) null (PredicateMaskField_3679 pm_f_9@@3))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@7) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_10055_6162) ) (!  (=> (select (|PolymorphicMapType_6637_10055_6162#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@7) null (PredicateMaskField_3679 pm_f_9@@3))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@7) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9@@6 f_24@@6))
))) (forall ((o2_9@@7 T@Ref) (f_24@@7 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_6637_10055_10056#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@7) null (PredicateMaskField_3679 pm_f_9@@3))) o2_9@@7 f_24@@7) (= (select (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@7) o2_9@@7 f_24@@7) (select (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9@@7 f_24@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9@@7 f_24@@7))
))) (forall ((o2_9@@8 T@Ref) (f_24@@8 T@Field_13685_13690) ) (!  (=> (select (|PolymorphicMapType_6637_10055_22639#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@7) null (PredicateMaskField_3679 pm_f_9@@3))) o2_9@@8 f_24@@8) (= (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@7) o2_9@@8 f_24@@8) (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9@@8 f_24@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| ExhaleHeap@@3) o2_9@@8 f_24@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (IsPredicateField_3679_3680 pm_f_9@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6088) (ExhaleHeap@@4 T@PolymorphicMapType_6088) (Mask@@6 T@PolymorphicMapType_6109) (pm_f_9@@4 T@Field_3624_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_3624_10056 Mask@@6 null pm_f_9@@4) (IsPredicateField_3624_20110 pm_f_9@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_9@@9 T@Ref) (f_24@@9 T@Field_9589_9590) ) (!  (=> (select (|PolymorphicMapType_6637_3624_3625#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@8) null (PredicateMaskField_3624 pm_f_9@@4))) o2_9@@9 f_24@@9) (= (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@8) o2_9@@9 f_24@@9) (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@9 f_24@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@9 f_24@@9))
)) (forall ((o2_9@@10 T@Ref) (f_24@@10 T@Field_6148_53) ) (!  (=> (select (|PolymorphicMapType_6637_3624_53#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@8) null (PredicateMaskField_3624 pm_f_9@@4))) o2_9@@10 f_24@@10) (= (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@8) o2_9@@10 f_24@@10) (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@10 f_24@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@10 f_24@@10))
))) (forall ((o2_9@@11 T@Ref) (f_24@@11 T@Field_6161_6162) ) (!  (=> (select (|PolymorphicMapType_6637_3624_6162#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@8) null (PredicateMaskField_3624 pm_f_9@@4))) o2_9@@11 f_24@@11) (= (select (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@8) o2_9@@11 f_24@@11) (select (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@11 f_24@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@11 f_24@@11))
))) (forall ((o2_9@@12 T@Ref) (f_24@@12 T@Field_3624_10056) ) (!  (=> (select (|PolymorphicMapType_6637_3624_10056#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@8) null (PredicateMaskField_3624 pm_f_9@@4))) o2_9@@12 f_24@@12) (= (select (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@8) o2_9@@12 f_24@@12) (select (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@12 f_24@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@12 f_24@@12))
))) (forall ((o2_9@@13 T@Ref) (f_24@@13 T@Field_3624_13690) ) (!  (=> (select (|PolymorphicMapType_6637_3624_21585#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@8) null (PredicateMaskField_3624 pm_f_9@@4))) o2_9@@13 f_24@@13) (= (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@8) o2_9@@13 f_24@@13) (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@13 f_24@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@13 f_24@@13))
))) (forall ((o2_9@@14 T@Ref) (f_24@@14 T@Field_10055_3625) ) (!  (=> (select (|PolymorphicMapType_6637_10055_3625#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@8) null (PredicateMaskField_3624 pm_f_9@@4))) o2_9@@14 f_24@@14) (= (select (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@8) o2_9@@14 f_24@@14) (select (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@14 f_24@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@14 f_24@@14))
))) (forall ((o2_9@@15 T@Ref) (f_24@@15 T@Field_10055_53) ) (!  (=> (select (|PolymorphicMapType_6637_10055_53#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@8) null (PredicateMaskField_3624 pm_f_9@@4))) o2_9@@15 f_24@@15) (= (select (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@8) o2_9@@15 f_24@@15) (select (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@15 f_24@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@15 f_24@@15))
))) (forall ((o2_9@@16 T@Ref) (f_24@@16 T@Field_10055_6162) ) (!  (=> (select (|PolymorphicMapType_6637_10055_6162#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@8) null (PredicateMaskField_3624 pm_f_9@@4))) o2_9@@16 f_24@@16) (= (select (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@8) o2_9@@16 f_24@@16) (select (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@16 f_24@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@16 f_24@@16))
))) (forall ((o2_9@@17 T@Ref) (f_24@@17 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_6637_10055_10056#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@8) null (PredicateMaskField_3624 pm_f_9@@4))) o2_9@@17 f_24@@17) (= (select (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@8) o2_9@@17 f_24@@17) (select (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@17 f_24@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@17 f_24@@17))
))) (forall ((o2_9@@18 T@Ref) (f_24@@18 T@Field_13685_13690) ) (!  (=> (select (|PolymorphicMapType_6637_10055_22639#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@8) null (PredicateMaskField_3624 pm_f_9@@4))) o2_9@@18 f_24@@18) (= (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@8) o2_9@@18 f_24@@18) (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@18 f_24@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| ExhaleHeap@@4) o2_9@@18 f_24@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (IsPredicateField_3624_20110 pm_f_9@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6088) (ExhaleHeap@@5 T@PolymorphicMapType_6088) (Mask@@7 T@PolymorphicMapType_6109) (pm_f_9@@5 T@Field_10055_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_10055_10056 Mask@@7 null pm_f_9@@5) (IsWandField_10055_23804 pm_f_9@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_9@@19 T@Ref) (f_24@@19 T@Field_9589_9590) ) (!  (=> (select (|PolymorphicMapType_6637_3624_3625#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@9) null (WandMaskField_10055 pm_f_9@@5))) o2_9@@19 f_24@@19) (= (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@9) o2_9@@19 f_24@@19) (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@19 f_24@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@19 f_24@@19))
)) (forall ((o2_9@@20 T@Ref) (f_24@@20 T@Field_6148_53) ) (!  (=> (select (|PolymorphicMapType_6637_3624_53#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@9) null (WandMaskField_10055 pm_f_9@@5))) o2_9@@20 f_24@@20) (= (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@9) o2_9@@20 f_24@@20) (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@20 f_24@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@20 f_24@@20))
))) (forall ((o2_9@@21 T@Ref) (f_24@@21 T@Field_6161_6162) ) (!  (=> (select (|PolymorphicMapType_6637_3624_6162#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@9) null (WandMaskField_10055 pm_f_9@@5))) o2_9@@21 f_24@@21) (= (select (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@9) o2_9@@21 f_24@@21) (select (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@21 f_24@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@21 f_24@@21))
))) (forall ((o2_9@@22 T@Ref) (f_24@@22 T@Field_3624_10056) ) (!  (=> (select (|PolymorphicMapType_6637_3624_10056#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@9) null (WandMaskField_10055 pm_f_9@@5))) o2_9@@22 f_24@@22) (= (select (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@9) o2_9@@22 f_24@@22) (select (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@22 f_24@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@22 f_24@@22))
))) (forall ((o2_9@@23 T@Ref) (f_24@@23 T@Field_3624_13690) ) (!  (=> (select (|PolymorphicMapType_6637_3624_21585#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@9) null (WandMaskField_10055 pm_f_9@@5))) o2_9@@23 f_24@@23) (= (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@9) o2_9@@23 f_24@@23) (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@23 f_24@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@23 f_24@@23))
))) (forall ((o2_9@@24 T@Ref) (f_24@@24 T@Field_10055_3625) ) (!  (=> (select (|PolymorphicMapType_6637_10055_3625#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@9) null (WandMaskField_10055 pm_f_9@@5))) o2_9@@24 f_24@@24) (= (select (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@9) o2_9@@24 f_24@@24) (select (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@24 f_24@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@24 f_24@@24))
))) (forall ((o2_9@@25 T@Ref) (f_24@@25 T@Field_10055_53) ) (!  (=> (select (|PolymorphicMapType_6637_10055_53#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@9) null (WandMaskField_10055 pm_f_9@@5))) o2_9@@25 f_24@@25) (= (select (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@9) o2_9@@25 f_24@@25) (select (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@25 f_24@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@25 f_24@@25))
))) (forall ((o2_9@@26 T@Ref) (f_24@@26 T@Field_10055_6162) ) (!  (=> (select (|PolymorphicMapType_6637_10055_6162#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@9) null (WandMaskField_10055 pm_f_9@@5))) o2_9@@26 f_24@@26) (= (select (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@9) o2_9@@26 f_24@@26) (select (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@26 f_24@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@26 f_24@@26))
))) (forall ((o2_9@@27 T@Ref) (f_24@@27 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_6637_10055_10056#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@9) null (WandMaskField_10055 pm_f_9@@5))) o2_9@@27 f_24@@27) (= (select (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@9) o2_9@@27 f_24@@27) (select (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@27 f_24@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@27 f_24@@27))
))) (forall ((o2_9@@28 T@Ref) (f_24@@28 T@Field_13685_13690) ) (!  (=> (select (|PolymorphicMapType_6637_10055_22639#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@9) null (WandMaskField_10055 pm_f_9@@5))) o2_9@@28 f_24@@28) (= (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@9) o2_9@@28 f_24@@28) (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@28 f_24@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| ExhaleHeap@@5) o2_9@@28 f_24@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (IsWandField_10055_23804 pm_f_9@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6088) (ExhaleHeap@@6 T@PolymorphicMapType_6088) (Mask@@8 T@PolymorphicMapType_6109) (pm_f_9@@6 T@Field_3624_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_3624_10056 Mask@@8 null pm_f_9@@6) (IsWandField_3624_23447 pm_f_9@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_9@@29 T@Ref) (f_24@@29 T@Field_9589_9590) ) (!  (=> (select (|PolymorphicMapType_6637_3624_3625#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@10) null (WandMaskField_3624 pm_f_9@@6))) o2_9@@29 f_24@@29) (= (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@10) o2_9@@29 f_24@@29) (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@29 f_24@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@29 f_24@@29))
)) (forall ((o2_9@@30 T@Ref) (f_24@@30 T@Field_6148_53) ) (!  (=> (select (|PolymorphicMapType_6637_3624_53#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@10) null (WandMaskField_3624 pm_f_9@@6))) o2_9@@30 f_24@@30) (= (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@10) o2_9@@30 f_24@@30) (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@30 f_24@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@30 f_24@@30))
))) (forall ((o2_9@@31 T@Ref) (f_24@@31 T@Field_6161_6162) ) (!  (=> (select (|PolymorphicMapType_6637_3624_6162#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@10) null (WandMaskField_3624 pm_f_9@@6))) o2_9@@31 f_24@@31) (= (select (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@10) o2_9@@31 f_24@@31) (select (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@31 f_24@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@31 f_24@@31))
))) (forall ((o2_9@@32 T@Ref) (f_24@@32 T@Field_3624_10056) ) (!  (=> (select (|PolymorphicMapType_6637_3624_10056#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@10) null (WandMaskField_3624 pm_f_9@@6))) o2_9@@32 f_24@@32) (= (select (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@10) o2_9@@32 f_24@@32) (select (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@32 f_24@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@32 f_24@@32))
))) (forall ((o2_9@@33 T@Ref) (f_24@@33 T@Field_3624_13690) ) (!  (=> (select (|PolymorphicMapType_6637_3624_21585#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@10) null (WandMaskField_3624 pm_f_9@@6))) o2_9@@33 f_24@@33) (= (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@10) o2_9@@33 f_24@@33) (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@33 f_24@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@33 f_24@@33))
))) (forall ((o2_9@@34 T@Ref) (f_24@@34 T@Field_10055_3625) ) (!  (=> (select (|PolymorphicMapType_6637_10055_3625#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@10) null (WandMaskField_3624 pm_f_9@@6))) o2_9@@34 f_24@@34) (= (select (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@10) o2_9@@34 f_24@@34) (select (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@34 f_24@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@34 f_24@@34))
))) (forall ((o2_9@@35 T@Ref) (f_24@@35 T@Field_10055_53) ) (!  (=> (select (|PolymorphicMapType_6637_10055_53#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@10) null (WandMaskField_3624 pm_f_9@@6))) o2_9@@35 f_24@@35) (= (select (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@10) o2_9@@35 f_24@@35) (select (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@35 f_24@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@35 f_24@@35))
))) (forall ((o2_9@@36 T@Ref) (f_24@@36 T@Field_10055_6162) ) (!  (=> (select (|PolymorphicMapType_6637_10055_6162#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@10) null (WandMaskField_3624 pm_f_9@@6))) o2_9@@36 f_24@@36) (= (select (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@10) o2_9@@36 f_24@@36) (select (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@36 f_24@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@36 f_24@@36))
))) (forall ((o2_9@@37 T@Ref) (f_24@@37 T@Field_10055_10056) ) (!  (=> (select (|PolymorphicMapType_6637_10055_10056#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@10) null (WandMaskField_3624 pm_f_9@@6))) o2_9@@37 f_24@@37) (= (select (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@10) o2_9@@37 f_24@@37) (select (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@37 f_24@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@37 f_24@@37))
))) (forall ((o2_9@@38 T@Ref) (f_24@@38 T@Field_13685_13690) ) (!  (=> (select (|PolymorphicMapType_6637_10055_22639#PolymorphicMapType_6637| (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@10) null (WandMaskField_3624 pm_f_9@@6))) o2_9@@38 f_24@@38) (= (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@10) o2_9@@38 f_24@@38) (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@38 f_24@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| ExhaleHeap@@6) o2_9@@38 f_24@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (IsWandField_3624_23447 pm_f_9@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6088) (ExhaleHeap@@7 T@PolymorphicMapType_6088) (Mask@@9 T@PolymorphicMapType_6109) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@11) o_27 $allocated) (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| ExhaleHeap@@7) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| ExhaleHeap@@7) o_27 $allocated))
)))
(assert (forall ((p T@Field_10055_10056) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10055_10055 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10055_10055 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_3624_10056) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_6148_6148 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6148_6148 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3624_3625 elements_1)))
(assert  (not (IsWandField_3624_3625 elements_1)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6088) (ExhaleHeap@@8 T@PolymorphicMapType_6088) (Mask@@10 T@PolymorphicMapType_6109) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6109) (o_2@@9 T@Ref) (f_4@@9 T@Field_3624_13690) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6109_3624_28457#PolymorphicMapType_6109| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3624_30749 f_4@@9))) (not (IsWandField_3624_30765 f_4@@9))) (<= (select (|PolymorphicMapType_6109_3624_28457#PolymorphicMapType_6109| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6109_3624_28457#PolymorphicMapType_6109| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6109) (o_2@@10 T@Ref) (f_4@@10 T@Field_6161_6162) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6109_3624_6162#PolymorphicMapType_6109| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3624_6162 f_4@@10))) (not (IsWandField_3624_6162 f_4@@10))) (<= (select (|PolymorphicMapType_6109_3624_6162#PolymorphicMapType_6109| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6109_3624_6162#PolymorphicMapType_6109| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6109) (o_2@@11 T@Ref) (f_4@@11 T@Field_6148_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6109_3624_53#PolymorphicMapType_6109| Mask@@13) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3624_53 f_4@@11))) (not (IsWandField_3624_53 f_4@@11))) (<= (select (|PolymorphicMapType_6109_3624_53#PolymorphicMapType_6109| Mask@@13) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6109_3624_53#PolymorphicMapType_6109| Mask@@13) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6109) (o_2@@12 T@Ref) (f_4@@12 T@Field_9589_9590) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6109_3624_3625#PolymorphicMapType_6109| Mask@@14) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3624_3625 f_4@@12))) (not (IsWandField_3624_3625 f_4@@12))) (<= (select (|PolymorphicMapType_6109_3624_3625#PolymorphicMapType_6109| Mask@@14) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6109_3624_3625#PolymorphicMapType_6109| Mask@@14) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6109) (o_2@@13 T@Ref) (f_4@@13 T@Field_3624_10056) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6109_3624_3680#PolymorphicMapType_6109| Mask@@15) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3624_20110 f_4@@13))) (not (IsWandField_3624_23447 f_4@@13))) (<= (select (|PolymorphicMapType_6109_3624_3680#PolymorphicMapType_6109| Mask@@15) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6109_3624_3680#PolymorphicMapType_6109| Mask@@15) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6109) (o_2@@14 T@Ref) (f_4@@14 T@Field_13685_13690) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_6109_3679_28043#PolymorphicMapType_6109| Mask@@16) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3679_29932 f_4@@14))) (not (IsWandField_3679_29948 f_4@@14))) (<= (select (|PolymorphicMapType_6109_3679_28043#PolymorphicMapType_6109| Mask@@16) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_6109_3679_28043#PolymorphicMapType_6109| Mask@@16) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6109) (o_2@@15 T@Ref) (f_4@@15 T@Field_10055_6162) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_6109_3679_6162#PolymorphicMapType_6109| Mask@@17) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3679_6162 f_4@@15))) (not (IsWandField_3679_6162 f_4@@15))) (<= (select (|PolymorphicMapType_6109_3679_6162#PolymorphicMapType_6109| Mask@@17) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_6109_3679_6162#PolymorphicMapType_6109| Mask@@17) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6109) (o_2@@16 T@Ref) (f_4@@16 T@Field_10055_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_6109_3679_53#PolymorphicMapType_6109| Mask@@18) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3679_53 f_4@@16))) (not (IsWandField_3679_53 f_4@@16))) (<= (select (|PolymorphicMapType_6109_3679_53#PolymorphicMapType_6109| Mask@@18) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_6109_3679_53#PolymorphicMapType_6109| Mask@@18) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6109) (o_2@@17 T@Ref) (f_4@@17 T@Field_10055_3625) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_6109_3679_3625#PolymorphicMapType_6109| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3679_3625 f_4@@17))) (not (IsWandField_3679_3625 f_4@@17))) (<= (select (|PolymorphicMapType_6109_3679_3625#PolymorphicMapType_6109| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_6109_3679_3625#PolymorphicMapType_6109| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6109) (o_2@@18 T@Ref) (f_4@@18 T@Field_10055_10056) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_6109_3679_3680#PolymorphicMapType_6109| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_3679_3680 f_4@@18))) (not (IsWandField_10055_23804 f_4@@18))) (<= (select (|PolymorphicMapType_6109_3679_3680#PolymorphicMapType_6109| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_6109_3679_3680#PolymorphicMapType_6109| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_6109) (o_2@@19 T@Ref) (f_4@@19 T@Field_13685_13690) ) (! (= (HasDirectPerm_10055_19865 Mask@@21 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_6109_3679_28043#PolymorphicMapType_6109| Mask@@21) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10055_19865 Mask@@21 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_6109) (o_2@@20 T@Ref) (f_4@@20 T@Field_10055_10056) ) (! (= (HasDirectPerm_10055_10056 Mask@@22 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_6109_3679_3680#PolymorphicMapType_6109| Mask@@22) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10055_10056 Mask@@22 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_6109) (o_2@@21 T@Ref) (f_4@@21 T@Field_10055_6162) ) (! (= (HasDirectPerm_10055_6162 Mask@@23 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_6109_3679_6162#PolymorphicMapType_6109| Mask@@23) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10055_6162 Mask@@23 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_6109) (o_2@@22 T@Ref) (f_4@@22 T@Field_10055_53) ) (! (= (HasDirectPerm_10055_53 Mask@@24 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_6109_3679_53#PolymorphicMapType_6109| Mask@@24) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10055_53 Mask@@24 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_6109) (o_2@@23 T@Ref) (f_4@@23 T@Field_10055_3625) ) (! (= (HasDirectPerm_10055_3625 Mask@@25 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_6109_3679_3625#PolymorphicMapType_6109| Mask@@25) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10055_3625 Mask@@25 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_6109) (o_2@@24 T@Ref) (f_4@@24 T@Field_3624_13690) ) (! (= (HasDirectPerm_3624_18696 Mask@@26 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_6109_3624_28457#PolymorphicMapType_6109| Mask@@26) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3624_18696 Mask@@26 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_6109) (o_2@@25 T@Ref) (f_4@@25 T@Field_3624_10056) ) (! (= (HasDirectPerm_3624_10056 Mask@@27 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_6109_3624_3680#PolymorphicMapType_6109| Mask@@27) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3624_10056 Mask@@27 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_6109) (o_2@@26 T@Ref) (f_4@@26 T@Field_6161_6162) ) (! (= (HasDirectPerm_3624_6162 Mask@@28 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_6109_3624_6162#PolymorphicMapType_6109| Mask@@28) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3624_6162 Mask@@28 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_6109) (o_2@@27 T@Ref) (f_4@@27 T@Field_6148_53) ) (! (= (HasDirectPerm_3624_53 Mask@@29 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_6109_3624_53#PolymorphicMapType_6109| Mask@@29) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3624_53 Mask@@29 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_6109) (o_2@@28 T@Ref) (f_4@@28 T@Field_9589_9590) ) (! (= (HasDirectPerm_3624_3625 Mask@@30 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_6109_3624_3625#PolymorphicMapType_6109| Mask@@30) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3624_3625 Mask@@30 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6088) (ExhaleHeap@@9 T@PolymorphicMapType_6088) (Mask@@31 T@PolymorphicMapType_6109) (o_27@@0 T@Ref) (f_24@@39 T@Field_13685_13690) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_10055_19865 Mask@@31 o_27@@0 f_24@@39) (= (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@13) o_27@@0 f_24@@39) (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| ExhaleHeap@@9) o_27@@0 f_24@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| ExhaleHeap@@9) o_27@@0 f_24@@39))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6088) (ExhaleHeap@@10 T@PolymorphicMapType_6088) (Mask@@32 T@PolymorphicMapType_6109) (o_27@@1 T@Ref) (f_24@@40 T@Field_10055_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_10055_10056 Mask@@32 o_27@@1 f_24@@40) (= (select (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@14) o_27@@1 f_24@@40) (select (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| ExhaleHeap@@10) o_27@@1 f_24@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| ExhaleHeap@@10) o_27@@1 f_24@@40))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6088) (ExhaleHeap@@11 T@PolymorphicMapType_6088) (Mask@@33 T@PolymorphicMapType_6109) (o_27@@2 T@Ref) (f_24@@41 T@Field_10055_6162) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_10055_6162 Mask@@33 o_27@@2 f_24@@41) (= (select (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@15) o_27@@2 f_24@@41) (select (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| ExhaleHeap@@11) o_27@@2 f_24@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| ExhaleHeap@@11) o_27@@2 f_24@@41))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6088) (ExhaleHeap@@12 T@PolymorphicMapType_6088) (Mask@@34 T@PolymorphicMapType_6109) (o_27@@3 T@Ref) (f_24@@42 T@Field_10055_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_10055_53 Mask@@34 o_27@@3 f_24@@42) (= (select (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@16) o_27@@3 f_24@@42) (select (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| ExhaleHeap@@12) o_27@@3 f_24@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| ExhaleHeap@@12) o_27@@3 f_24@@42))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6088) (ExhaleHeap@@13 T@PolymorphicMapType_6088) (Mask@@35 T@PolymorphicMapType_6109) (o_27@@4 T@Ref) (f_24@@43 T@Field_10055_3625) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_10055_3625 Mask@@35 o_27@@4 f_24@@43) (= (select (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@17) o_27@@4 f_24@@43) (select (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| ExhaleHeap@@13) o_27@@4 f_24@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| ExhaleHeap@@13) o_27@@4 f_24@@43))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6088) (ExhaleHeap@@14 T@PolymorphicMapType_6088) (Mask@@36 T@PolymorphicMapType_6109) (o_27@@5 T@Ref) (f_24@@44 T@Field_3624_13690) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_3624_18696 Mask@@36 o_27@@5 f_24@@44) (= (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@18) o_27@@5 f_24@@44) (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| ExhaleHeap@@14) o_27@@5 f_24@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| ExhaleHeap@@14) o_27@@5 f_24@@44))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6088) (ExhaleHeap@@15 T@PolymorphicMapType_6088) (Mask@@37 T@PolymorphicMapType_6109) (o_27@@6 T@Ref) (f_24@@45 T@Field_3624_10056) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_3624_10056 Mask@@37 o_27@@6 f_24@@45) (= (select (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@19) o_27@@6 f_24@@45) (select (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| ExhaleHeap@@15) o_27@@6 f_24@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| ExhaleHeap@@15) o_27@@6 f_24@@45))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6088) (ExhaleHeap@@16 T@PolymorphicMapType_6088) (Mask@@38 T@PolymorphicMapType_6109) (o_27@@7 T@Ref) (f_24@@46 T@Field_6161_6162) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_3624_6162 Mask@@38 o_27@@7 f_24@@46) (= (select (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@20) o_27@@7 f_24@@46) (select (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| ExhaleHeap@@16) o_27@@7 f_24@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| ExhaleHeap@@16) o_27@@7 f_24@@46))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6088) (ExhaleHeap@@17 T@PolymorphicMapType_6088) (Mask@@39 T@PolymorphicMapType_6109) (o_27@@8 T@Ref) (f_24@@47 T@Field_6148_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_3624_53 Mask@@39 o_27@@8 f_24@@47) (= (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@21) o_27@@8 f_24@@47) (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| ExhaleHeap@@17) o_27@@8 f_24@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| ExhaleHeap@@17) o_27@@8 f_24@@47))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6088) (ExhaleHeap@@18 T@PolymorphicMapType_6088) (Mask@@40 T@PolymorphicMapType_6109) (o_27@@9 T@Ref) (f_24@@48 T@Field_9589_9590) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_3624_3625 Mask@@40 o_27@@9 f_24@@48) (= (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@22) o_27@@9 f_24@@48) (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| ExhaleHeap@@18) o_27@@9 f_24@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| ExhaleHeap@@18) o_27@@9 f_24@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_3624_13690) ) (! (= (select (|PolymorphicMapType_6109_3624_28457#PolymorphicMapType_6109| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6109_3624_28457#PolymorphicMapType_6109| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_6161_6162) ) (! (= (select (|PolymorphicMapType_6109_3624_6162#PolymorphicMapType_6109| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6109_3624_6162#PolymorphicMapType_6109| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_6148_53) ) (! (= (select (|PolymorphicMapType_6109_3624_53#PolymorphicMapType_6109| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6109_3624_53#PolymorphicMapType_6109| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_9589_9590) ) (! (= (select (|PolymorphicMapType_6109_3624_3625#PolymorphicMapType_6109| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6109_3624_3625#PolymorphicMapType_6109| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_3624_10056) ) (! (= (select (|PolymorphicMapType_6109_3624_3680#PolymorphicMapType_6109| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6109_3624_3680#PolymorphicMapType_6109| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_13685_13690) ) (! (= (select (|PolymorphicMapType_6109_3679_28043#PolymorphicMapType_6109| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6109_3679_28043#PolymorphicMapType_6109| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_10055_6162) ) (! (= (select (|PolymorphicMapType_6109_3679_6162#PolymorphicMapType_6109| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6109_3679_6162#PolymorphicMapType_6109| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_10055_53) ) (! (= (select (|PolymorphicMapType_6109_3679_53#PolymorphicMapType_6109| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6109_3679_53#PolymorphicMapType_6109| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_10055_3625) ) (! (= (select (|PolymorphicMapType_6109_3679_3625#PolymorphicMapType_6109| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6109_3679_3625#PolymorphicMapType_6109| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_10055_10056) ) (! (= (select (|PolymorphicMapType_6109_3679_3680#PolymorphicMapType_6109| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6109_3679_3680#PolymorphicMapType_6109| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6109) (SummandMask1 T@PolymorphicMapType_6109) (SummandMask2 T@PolymorphicMapType_6109) (o_2@@39 T@Ref) (f_4@@39 T@Field_3624_13690) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6109_3624_28457#PolymorphicMapType_6109| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_6109_3624_28457#PolymorphicMapType_6109| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_6109_3624_28457#PolymorphicMapType_6109| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6109_3624_28457#PolymorphicMapType_6109| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6109_3624_28457#PolymorphicMapType_6109| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6109_3624_28457#PolymorphicMapType_6109| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6109) (SummandMask1@@0 T@PolymorphicMapType_6109) (SummandMask2@@0 T@PolymorphicMapType_6109) (o_2@@40 T@Ref) (f_4@@40 T@Field_6161_6162) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6109_3624_6162#PolymorphicMapType_6109| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_6109_3624_6162#PolymorphicMapType_6109| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_6109_3624_6162#PolymorphicMapType_6109| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6109_3624_6162#PolymorphicMapType_6109| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6109_3624_6162#PolymorphicMapType_6109| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6109_3624_6162#PolymorphicMapType_6109| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6109) (SummandMask1@@1 T@PolymorphicMapType_6109) (SummandMask2@@1 T@PolymorphicMapType_6109) (o_2@@41 T@Ref) (f_4@@41 T@Field_6148_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6109_3624_53#PolymorphicMapType_6109| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_6109_3624_53#PolymorphicMapType_6109| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_6109_3624_53#PolymorphicMapType_6109| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6109_3624_53#PolymorphicMapType_6109| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6109_3624_53#PolymorphicMapType_6109| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6109_3624_53#PolymorphicMapType_6109| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6109) (SummandMask1@@2 T@PolymorphicMapType_6109) (SummandMask2@@2 T@PolymorphicMapType_6109) (o_2@@42 T@Ref) (f_4@@42 T@Field_9589_9590) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6109_3624_3625#PolymorphicMapType_6109| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_6109_3624_3625#PolymorphicMapType_6109| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_6109_3624_3625#PolymorphicMapType_6109| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6109_3624_3625#PolymorphicMapType_6109| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6109_3624_3625#PolymorphicMapType_6109| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6109_3624_3625#PolymorphicMapType_6109| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6109) (SummandMask1@@3 T@PolymorphicMapType_6109) (SummandMask2@@3 T@PolymorphicMapType_6109) (o_2@@43 T@Ref) (f_4@@43 T@Field_3624_10056) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6109_3624_3680#PolymorphicMapType_6109| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_6109_3624_3680#PolymorphicMapType_6109| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_6109_3624_3680#PolymorphicMapType_6109| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6109_3624_3680#PolymorphicMapType_6109| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6109_3624_3680#PolymorphicMapType_6109| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6109_3624_3680#PolymorphicMapType_6109| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_6109) (SummandMask1@@4 T@PolymorphicMapType_6109) (SummandMask2@@4 T@PolymorphicMapType_6109) (o_2@@44 T@Ref) (f_4@@44 T@Field_13685_13690) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_6109_3679_28043#PolymorphicMapType_6109| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_6109_3679_28043#PolymorphicMapType_6109| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_6109_3679_28043#PolymorphicMapType_6109| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6109_3679_28043#PolymorphicMapType_6109| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6109_3679_28043#PolymorphicMapType_6109| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6109_3679_28043#PolymorphicMapType_6109| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_6109) (SummandMask1@@5 T@PolymorphicMapType_6109) (SummandMask2@@5 T@PolymorphicMapType_6109) (o_2@@45 T@Ref) (f_4@@45 T@Field_10055_6162) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_6109_3679_6162#PolymorphicMapType_6109| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_6109_3679_6162#PolymorphicMapType_6109| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_6109_3679_6162#PolymorphicMapType_6109| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6109_3679_6162#PolymorphicMapType_6109| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6109_3679_6162#PolymorphicMapType_6109| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6109_3679_6162#PolymorphicMapType_6109| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_6109) (SummandMask1@@6 T@PolymorphicMapType_6109) (SummandMask2@@6 T@PolymorphicMapType_6109) (o_2@@46 T@Ref) (f_4@@46 T@Field_10055_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_6109_3679_53#PolymorphicMapType_6109| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_6109_3679_53#PolymorphicMapType_6109| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_6109_3679_53#PolymorphicMapType_6109| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6109_3679_53#PolymorphicMapType_6109| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6109_3679_53#PolymorphicMapType_6109| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6109_3679_53#PolymorphicMapType_6109| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_6109) (SummandMask1@@7 T@PolymorphicMapType_6109) (SummandMask2@@7 T@PolymorphicMapType_6109) (o_2@@47 T@Ref) (f_4@@47 T@Field_10055_3625) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_6109_3679_3625#PolymorphicMapType_6109| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_6109_3679_3625#PolymorphicMapType_6109| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_6109_3679_3625#PolymorphicMapType_6109| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6109_3679_3625#PolymorphicMapType_6109| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6109_3679_3625#PolymorphicMapType_6109| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6109_3679_3625#PolymorphicMapType_6109| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_6109) (SummandMask1@@8 T@PolymorphicMapType_6109) (SummandMask2@@8 T@PolymorphicMapType_6109) (o_2@@48 T@Ref) (f_4@@48 T@Field_10055_10056) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_6109_3679_3680#PolymorphicMapType_6109| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_6109_3679_3680#PolymorphicMapType_6109| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_6109_3679_3680#PolymorphicMapType_6109| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6109_3679_3680#PolymorphicMapType_6109| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6109_3679_3680#PolymorphicMapType_6109| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6109_3679_3680#PolymorphicMapType_6109| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6088) (Mask@@41 T@PolymorphicMapType_6109) (self@@6 T@Ref) ) (!  (=> (state Heap@@23 Mask@@41) (= (|foo'| Heap@@23 self@@6) (|foo#frame| (select (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@23) null (P self@@6)) self@@6)))
 :qid |stdinbpl.263:15|
 :skolemid |28|
 :pattern ( (state Heap@@23 Mask@@41) (|foo'| Heap@@23 self@@6))
 :pattern ( (state Heap@@23 Mask@@41) (|foo#triggerStateless| self@@6) (|P#trigger_3679| Heap@@23 (P self@@6)))
)))
(assert (forall ((a_2 T@ArrayDomainType) ) (! (>= (len_1 a_2) 0)
 :qid |stdinbpl.223:15|
 :skolemid |23|
 :pattern ( (len_1 a_2))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6088) (self@@7 T@Ref) ) (!  (and (= (foo_2 Heap@@24 self@@7) (|foo'| Heap@@24 self@@7)) (dummyFunction_1586 (|foo#triggerStateless| self@@7)))
 :qid |stdinbpl.243:15|
 :skolemid |24|
 :pattern ( (foo_2 Heap@@24 self@@7))
)))
(assert (forall ((self@@8 T@Ref) ) (! (= (getPredWandId_3679_3680 (P self@@8)) 0)
 :qid |stdinbpl.417:15|
 :skolemid |39|
 :pattern ( (P self@@8))
)))
(assert (forall ((a_2@@0 T@ArrayDomainType) (i@@0 Int) ) (!  (and (= (first (loc a_2@@0 i@@0)) a_2@@0) (= (second (loc a_2@@0 i@@0)) i@@0))
 :qid |stdinbpl.217:15|
 :skolemid |22|
 :pattern ( (loc a_2@@0 i@@0))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6088) (o_20 T@Ref) (f_31 T@Field_13685_13690) (v T@PolymorphicMapType_6637) ) (! (succHeap Heap@@25 (PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@25) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@25) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@25) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@25) (store (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@25) o_20 f_31 v) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@25) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@25) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@25) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@25) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@25) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@25) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@25) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@25) (store (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@25) o_20 f_31 v) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@25) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@25) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@25) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@25) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6088) (o_20@@0 T@Ref) (f_31@@0 T@Field_10055_10056) (v@@0 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@26) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@26) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@26) (store (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@26) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@26) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@26) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@26) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@26) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@26) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@26) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@26) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@26) (store (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@26) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@26) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@26) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@26) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@26) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@26) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6088) (o_20@@1 T@Ref) (f_31@@1 T@Field_10055_3625) (v@@1 T@ArrayDomainType) ) (! (succHeap Heap@@27 (PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@27) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@27) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@27) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@27) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@27) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@27) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@27) (store (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@27) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@27) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@27) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@27) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@27) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@27) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@27) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@27) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@27) (store (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@27) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@27) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6088) (o_20@@2 T@Ref) (f_31@@2 T@Field_10055_6162) (v@@2 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@28) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@28) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@28) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@28) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@28) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@28) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@28) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@28) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@28) (store (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@28) o_20@@2 f_31@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@28) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@28) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@28) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@28) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@28) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@28) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@28) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@28) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@28) (store (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@28) o_20@@2 f_31@@2 v@@2)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6088) (o_20@@3 T@Ref) (f_31@@3 T@Field_10055_53) (v@@3 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@29) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@29) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@29) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@29) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@29) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@29) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@29) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@29) (store (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@29) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@29) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@29) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@29) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@29) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@29) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@29) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@29) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@29) (store (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@29) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6088) (o_20@@4 T@Ref) (f_31@@4 T@Field_3624_13690) (v@@4 T@PolymorphicMapType_6637) ) (! (succHeap Heap@@30 (PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@30) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@30) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@30) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@30) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@30) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@30) (store (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@30) o_20@@4 f_31@@4 v@@4) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@30) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@30) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@30) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@30) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@30) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@30) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@30) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@30) (store (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@30) o_20@@4 f_31@@4 v@@4) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@30) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@30) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6088) (o_20@@5 T@Ref) (f_31@@5 T@Field_3624_10056) (v@@5 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@31) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@31) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@31) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@31) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@31) (store (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@31) o_20@@5 f_31@@5 v@@5) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@31) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@31) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@31) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@31) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@31) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@31) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@31) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@31) (store (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@31) o_20@@5 f_31@@5 v@@5) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@31) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@31) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@31) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6088) (o_20@@6 T@Ref) (f_31@@6 T@Field_9589_9590) (v@@6 T@ArrayDomainType) ) (! (succHeap Heap@@32 (PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@32) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@32) (store (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@32) o_20@@6 f_31@@6 v@@6) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@32) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@32) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@32) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@32) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@32) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@32) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@32) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@32) (store (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@32) o_20@@6 f_31@@6 v@@6) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@32) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@32) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@32) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@32) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@32) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@32) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6088) (o_20@@7 T@Ref) (f_31@@7 T@Field_6161_6162) (v@@7 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@33) (store (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@33) o_20@@7 f_31@@7 v@@7) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@33) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@33) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@33) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@33) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@33) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@33) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@33) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6088 (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@33) (store (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@33) o_20@@7 f_31@@7 v@@7) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@33) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@33) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@33) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@33) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@33) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@33) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@33) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6088) (o_20@@8 T@Ref) (f_31@@8 T@Field_6148_53) (v@@8 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_6088 (store (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@34) o_20@@8 f_31@@8 v@@8) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@34) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@34) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@34) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@34) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@34) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@34) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@34) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@34) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6088 (store (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@34) o_20@@8 f_31@@8 v@@8) (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@34) (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@34) (|PolymorphicMapType_6088_3679_3680#PolymorphicMapType_6088| Heap@@34) (|PolymorphicMapType_6088_3683_13777#PolymorphicMapType_6088| Heap@@34) (|PolymorphicMapType_6088_3624_10056#PolymorphicMapType_6088| Heap@@34) (|PolymorphicMapType_6088_3624_18738#PolymorphicMapType_6088| Heap@@34) (|PolymorphicMapType_6088_10055_3625#PolymorphicMapType_6088| Heap@@34) (|PolymorphicMapType_6088_10055_53#PolymorphicMapType_6088| Heap@@34) (|PolymorphicMapType_6088_10055_6162#PolymorphicMapType_6088| Heap@@34)))
)))
(assert (forall ((self@@9 T@Ref) ) (! (= (PredicateMaskField_3679 (P self@@9)) (|P#sm| self@@9))
 :qid |stdinbpl.409:15|
 :skolemid |37|
 :pattern ( (PredicateMaskField_3679 (P self@@9)))
)))
(assert (forall ((o_20@@9 T@Ref) (f_17 T@Field_6161_6162) (Heap@@35 T@PolymorphicMapType_6088) ) (!  (=> (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@35) o_20@@9 $allocated) (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@35) (select (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@35) o_20@@9 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6088_3483_3484#PolymorphicMapType_6088| Heap@@35) o_20@@9 f_17))
)))
(assert (forall ((p@@2 T@Field_10055_10056) (v_1@@1 T@FrameType) (q T@Field_10055_10056) (w@@1 T@FrameType) (r T@Field_10055_10056) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10055_10055 p@@2 v_1@@1 q w@@1) (InsidePredicate_10055_10055 q w@@1 r u)) (InsidePredicate_10055_10055 p@@2 v_1@@1 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10055_10055 p@@2 v_1@@1 q w@@1) (InsidePredicate_10055_10055 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_10055_10056) (v_1@@2 T@FrameType) (q@@0 T@Field_10055_10056) (w@@2 T@FrameType) (r@@0 T@Field_3624_10056) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_10055_10055 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_10055_6148 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_10055_6148 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10055_10055 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_10055_6148 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_10055_10056) (v_1@@3 T@FrameType) (q@@1 T@Field_3624_10056) (w@@3 T@FrameType) (r@@1 T@Field_10055_10056) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_10055_6148 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6148_10055 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_10055_10055 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10055_6148 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6148_10055 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_10055_10056) (v_1@@4 T@FrameType) (q@@2 T@Field_3624_10056) (w@@4 T@FrameType) (r@@2 T@Field_3624_10056) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_10055_6148 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6148_6148 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_10055_6148 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10055_6148 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6148_6148 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_3624_10056) (v_1@@5 T@FrameType) (q@@3 T@Field_10055_10056) (w@@5 T@FrameType) (r@@3 T@Field_10055_10056) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_6148_10055 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_10055_10055 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_6148_10055 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6148_10055 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_10055_10055 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_3624_10056) (v_1@@6 T@FrameType) (q@@4 T@Field_10055_10056) (w@@6 T@FrameType) (r@@4 T@Field_3624_10056) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_6148_10055 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_10055_6148 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_6148_6148 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6148_10055 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_10055_6148 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_3624_10056) (v_1@@7 T@FrameType) (q@@5 T@Field_3624_10056) (w@@7 T@FrameType) (r@@5 T@Field_10055_10056) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_6148_6148 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6148_10055 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_6148_10055 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6148_6148 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6148_10055 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_3624_10056) (v_1@@8 T@FrameType) (q@@6 T@Field_3624_10056) (w@@8 T@FrameType) (r@@6 T@Field_3624_10056) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_6148_6148 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6148_6148 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_6148_6148 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6148_6148 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6148_6148 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x_31 () Int)
(declare-fun Heap@@36 () T@PolymorphicMapType_6088)
(declare-fun self@@10 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_6109)
(declare-fun neverTriggered2 (Int) Bool)
(declare-fun x_10 () Int)
(set-info :boogie-vc-id |P#definedness|)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon11_correct true))
(let ((anon18_Else_correct  (=> (and (not (and (<= 0 x_31) (< x_31 (len_1 (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@36) self@@10 elements_1))))) (= (ControlFlow 0 13) 10)) anon11_correct)))
(let ((anon18_Then_correct  (=> (and (<= 0 x_31) (< x_31 (len_1 (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@36) self@@10 elements_1)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_3624_3625 Mask@0 self@@10 elements_1)) (=> (HasDirectPerm_3624_3625 Mask@0 self@@10 elements_1) (=> (= (ControlFlow 0 11) 10) anon11_correct))))))
(let ((anon17_Else_correct  (=> (< x_31 0) (and (=> (= (ControlFlow 0 16) 11) anon18_Then_correct) (=> (= (ControlFlow 0 16) 13) anon18_Else_correct)))))
(let ((anon17_Then_correct  (=> (<= 0 x_31) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_3624_3625 Mask@0 self@@10 elements_1)) (=> (HasDirectPerm_3624_3625 Mask@0 self@@10 elements_1) (and (=> (= (ControlFlow 0 14) 11) anon18_Then_correct) (=> (= (ControlFlow 0 14) 13) anon18_Else_correct)))))))
(let ((anon16_Else_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (forall ((x_4 Int) (x_4_1 Int) ) (!  (=> (and (and (and (and (not (= x_4 x_4_1)) (and (<= 0 x_4) (< x_4 (len_1 (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@36) self@@10 elements_1))))) (and (<= 0 x_4_1) (< x_4_1 (len_1 (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@36) self@@10 elements_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@36) self@@10 elements_1) x_4) (loc (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@36) self@@10 elements_1) x_4_1))))
 :qid |stdinbpl.503:17|
 :skolemid |45|
 :pattern ( (neverTriggered2 x_4) (neverTriggered2 x_4_1))
)))))
(let ((anon13_Else_correct  (=> (forall ((x_2_2 Int) ) (!  (=> (and (<= 0 x_2_2) (< x_2_2 (len_1 (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@36) self@@10 elements_1)))) (not (= (loc (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@36) self@@10 elements_1) x_2_2) null)))
 :qid |stdinbpl.482:20|
 :skolemid |44|
 :pattern ( (loc (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@36) self@@10 elements_1) x_2_2))
)) (and (and (=> (= (ControlFlow 0 17) 9) anon16_Else_correct) (=> (= (ControlFlow 0 17) 14) anon17_Then_correct)) (=> (= (ControlFlow 0 17) 16) anon17_Else_correct)))))
(let ((anon5_correct true))
(let ((anon15_Else_correct  (=> (and (not (and (<= 0 x_10) (< x_10 (len_1 (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@36) self@@10 elements_1))))) (= (ControlFlow 0 4) 1)) anon5_correct)))
(let ((anon15_Then_correct  (=> (and (<= 0 x_10) (< x_10 (len_1 (select (|PolymorphicMapType_6088_3624_3625#PolymorphicMapType_6088| Heap@@36) self@@10 elements_1)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_3624_3625 Mask@0 self@@10 elements_1)) (=> (HasDirectPerm_3624_3625 Mask@0 self@@10 elements_1) (=> (= (ControlFlow 0 2) 1) anon5_correct))))))
(let ((anon14_Else_correct  (=> (< x_10 0) (and (=> (= (ControlFlow 0 7) 2) anon15_Then_correct) (=> (= (ControlFlow 0 7) 4) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (<= 0 x_10) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_3624_3625 Mask@0 self@@10 elements_1)) (=> (HasDirectPerm_3624_3625 Mask@0 self@@10 elements_1) (and (=> (= (ControlFlow 0 5) 2) anon15_Then_correct) (=> (= (ControlFlow 0 5) 4) anon15_Else_correct)))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@36 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_6088_3480_53#PolymorphicMapType_6088| Heap@@36) self@@10 $allocated))) (and (and (not (= self@@10 null)) (not (= self@@10 null))) (and (= Mask@0 (PolymorphicMapType_6109 (|PolymorphicMapType_6109_3679_3680#PolymorphicMapType_6109| ZeroMask) (store (|PolymorphicMapType_6109_3624_3625#PolymorphicMapType_6109| ZeroMask) self@@10 elements_1 (+ (select (|PolymorphicMapType_6109_3624_3625#PolymorphicMapType_6109| ZeroMask) self@@10 elements_1) FullPerm)) (|PolymorphicMapType_6109_3679_3625#PolymorphicMapType_6109| ZeroMask) (|PolymorphicMapType_6109_3679_53#PolymorphicMapType_6109| ZeroMask) (|PolymorphicMapType_6109_3679_6162#PolymorphicMapType_6109| ZeroMask) (|PolymorphicMapType_6109_3679_28043#PolymorphicMapType_6109| ZeroMask) (|PolymorphicMapType_6109_3624_3680#PolymorphicMapType_6109| ZeroMask) (|PolymorphicMapType_6109_3624_53#PolymorphicMapType_6109| ZeroMask) (|PolymorphicMapType_6109_3624_6162#PolymorphicMapType_6109| ZeroMask) (|PolymorphicMapType_6109_3624_28457#PolymorphicMapType_6109| ZeroMask))) (state Heap@@36 Mask@0)))) (and (and (=> (= (ControlFlow 0 18) 17) anon13_Else_correct) (=> (= (ControlFlow 0 18) 5) anon14_Then_correct)) (=> (= (ControlFlow 0 18) 7) anon14_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19) 18) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
