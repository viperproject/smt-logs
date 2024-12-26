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
(declare-sort T@Field_22196_53 0)
(declare-sort T@Field_22209_22210 0)
(declare-sort T@Field_25573_1204 0)
(declare-sort T@Field_26066_26067 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_29321_29326 0)
(declare-sort T@Field_11243_11334 0)
(declare-sort T@Field_11243_29326 0)
(declare-sort T@Field_11333_1204 0)
(declare-sort T@Field_11333_11241 0)
(declare-sort T@Field_11333_53 0)
(declare-datatypes ((T@PolymorphicMapType_22157 0)) (((PolymorphicMapType_22157 (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| (Array T@Ref T@Field_26066_26067 Real)) (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| (Array T@Ref T@Field_25573_1204 Real)) (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| (Array T@Ref T@Field_22209_22210 Real)) (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| (Array T@Ref T@Field_11333_1204 Real)) (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| (Array T@Ref T@Field_11333_11241 Real)) (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| (Array T@Ref T@Field_11333_53 Real)) (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| (Array T@Ref T@Field_29321_29326 Real)) (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| (Array T@Ref T@Field_11243_11334 Real)) (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| (Array T@Ref T@Field_22196_53 Real)) (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| (Array T@Ref T@Field_11243_29326 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22685 0)) (((PolymorphicMapType_22685 (|PolymorphicMapType_22685_11243_1204#PolymorphicMapType_22685| (Array T@Ref T@Field_25573_1204 Bool)) (|PolymorphicMapType_22685_11240_11241#PolymorphicMapType_22685| (Array T@Ref T@Field_22209_22210 Bool)) (|PolymorphicMapType_22685_11243_53#PolymorphicMapType_22685| (Array T@Ref T@Field_22196_53 Bool)) (|PolymorphicMapType_22685_11243_26067#PolymorphicMapType_22685| (Array T@Ref T@Field_11243_11334 Bool)) (|PolymorphicMapType_22685_11243_82935#PolymorphicMapType_22685| (Array T@Ref T@Field_11243_29326 Bool)) (|PolymorphicMapType_22685_26066_1204#PolymorphicMapType_22685| (Array T@Ref T@Field_11333_1204 Bool)) (|PolymorphicMapType_22685_26066_11241#PolymorphicMapType_22685| (Array T@Ref T@Field_11333_11241 Bool)) (|PolymorphicMapType_22685_26066_53#PolymorphicMapType_22685| (Array T@Ref T@Field_11333_53 Bool)) (|PolymorphicMapType_22685_26066_26067#PolymorphicMapType_22685| (Array T@Ref T@Field_26066_26067 Bool)) (|PolymorphicMapType_22685_26066_83983#PolymorphicMapType_22685| (Array T@Ref T@Field_29321_29326 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22136 0)) (((PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| (Array T@Ref T@Field_22196_53 Bool)) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| (Array T@Ref T@Field_22209_22210 T@Ref)) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| (Array T@Ref T@Field_25573_1204 Int)) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| (Array T@Ref T@Field_26066_26067 T@FrameType)) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| (Array T@Ref T@Field_29321_29326 T@PolymorphicMapType_22685)) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| (Array T@Ref T@Field_11243_11334 T@FrameType)) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| (Array T@Ref T@Field_11243_29326 T@PolymorphicMapType_22685)) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| (Array T@Ref T@Field_11333_1204 Int)) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| (Array T@Ref T@Field_11333_11241 T@Ref)) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| (Array T@Ref T@Field_11333_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_22196_53)
(declare-fun next () T@Field_22209_22210)
(declare-fun value () T@Field_25573_1204)
(declare-fun succHeap (T@PolymorphicMapType_22136 T@PolymorphicMapType_22136) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_22136 T@PolymorphicMapType_22136) Bool)
(declare-fun state (T@PolymorphicMapType_22136 T@PolymorphicMapType_22157) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_22157) Bool)
(declare-fun |get'| (T@PolymorphicMapType_22136 T@Ref Int T@Ref) Int)
(declare-fun dummyFunction_1541 (Int) Bool)
(declare-fun |get#triggerStateless| (T@Ref Int T@Ref) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_22685)
(declare-fun |length'| (T@PolymorphicMapType_22136 T@Ref T@Ref) Int)
(declare-fun |length#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |lseg#trigger_11333| (T@PolymorphicMapType_22136 T@Field_26066_26067) Bool)
(declare-fun lseg (T@Ref T@Ref) T@Field_26066_26067)
(declare-fun |length#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun null () T@Ref)
(declare-fun IsPredicateField_11333_11334 (T@Field_26066_26067) Bool)
(declare-fun |lseg#everUsed_11333| (T@Field_26066_26067) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |length#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_22136 T@PolymorphicMapType_22136 T@PolymorphicMapType_22157) Bool)
(declare-fun PredicateMaskField_11333 (T@Field_26066_26067) T@Field_29321_29326)
(declare-fun HasDirectPerm_11333_11334 (T@PolymorphicMapType_22157 T@Ref T@Field_26066_26067) Bool)
(declare-fun IsPredicateField_11243_81478 (T@Field_11243_11334) Bool)
(declare-fun PredicateMaskField_11243 (T@Field_11243_11334) T@Field_11243_29326)
(declare-fun HasDirectPerm_11243_11334 (T@PolymorphicMapType_22157 T@Ref T@Field_11243_11334) Bool)
(declare-fun IsWandField_11333_85148 (T@Field_26066_26067) Bool)
(declare-fun WandMaskField_11333 (T@Field_26066_26067) T@Field_29321_29326)
(declare-fun IsWandField_11243_84791 (T@Field_11243_11334) Bool)
(declare-fun WandMaskField_11243 (T@Field_11243_11334) T@Field_11243_29326)
(declare-fun |lseg#sm| (T@Ref T@Ref) T@Field_29321_29326)
(declare-fun dummyHeap () T@PolymorphicMapType_22136)
(declare-fun ZeroMask () T@PolymorphicMapType_22157)
(declare-fun InsidePredicate_22196_22196 (T@Field_11243_11334 T@FrameType T@Field_11243_11334 T@FrameType) Bool)
(declare-fun InsidePredicate_11333_11333 (T@Field_26066_26067 T@FrameType T@Field_26066_26067 T@FrameType) Bool)
(declare-fun IsPredicateField_11240_11241 (T@Field_22209_22210) Bool)
(declare-fun IsWandField_11240_11241 (T@Field_22209_22210) Bool)
(declare-fun IsPredicateField_11243_1204 (T@Field_25573_1204) Bool)
(declare-fun IsWandField_11243_1204 (T@Field_25573_1204) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11243_92051 (T@Field_11243_29326) Bool)
(declare-fun IsWandField_11243_92067 (T@Field_11243_29326) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11243_53 (T@Field_22196_53) Bool)
(declare-fun IsWandField_11243_53 (T@Field_22196_53) Bool)
(declare-fun IsPredicateField_11333_91248 (T@Field_29321_29326) Bool)
(declare-fun IsWandField_11333_91264 (T@Field_29321_29326) Bool)
(declare-fun IsPredicateField_11333_53 (T@Field_11333_53) Bool)
(declare-fun IsWandField_11333_53 (T@Field_11333_53) Bool)
(declare-fun IsPredicateField_11333_11241 (T@Field_11333_11241) Bool)
(declare-fun IsWandField_11333_11241 (T@Field_11333_11241) Bool)
(declare-fun IsPredicateField_11333_1204 (T@Field_11333_1204) Bool)
(declare-fun IsWandField_11333_1204 (T@Field_11333_1204) Bool)
(declare-fun HasDirectPerm_11333_81233 (T@PolymorphicMapType_22157 T@Ref T@Field_29321_29326) Bool)
(declare-fun HasDirectPerm_11333_53 (T@PolymorphicMapType_22157 T@Ref T@Field_11333_53) Bool)
(declare-fun HasDirectPerm_11333_11241 (T@PolymorphicMapType_22157 T@Ref T@Field_11333_11241) Bool)
(declare-fun HasDirectPerm_11333_1204 (T@PolymorphicMapType_22157 T@Ref T@Field_11333_1204) Bool)
(declare-fun HasDirectPerm_11243_80092 (T@PolymorphicMapType_22157 T@Ref T@Field_11243_29326) Bool)
(declare-fun HasDirectPerm_11243_53 (T@PolymorphicMapType_22157 T@Ref T@Field_22196_53) Bool)
(declare-fun HasDirectPerm_11240_11241 (T@PolymorphicMapType_22157 T@Ref T@Field_22209_22210) Bool)
(declare-fun HasDirectPerm_11243_1204 (T@PolymorphicMapType_22157 T@Ref T@Field_25573_1204) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun length (T@PolymorphicMapType_22136 T@Ref T@Ref) Int)
(declare-fun get (T@PolymorphicMapType_22136 T@Ref Int T@Ref) Int)
(declare-fun sumMask (T@PolymorphicMapType_22157 T@PolymorphicMapType_22157 T@PolymorphicMapType_22157) Bool)
(declare-fun |get#frame| (T@FrameType T@Ref Int T@Ref) Int)
(declare-fun getPredWandId_11333_11334 (T@Field_26066_26067) Int)
(declare-fun InsidePredicate_22196_11333 (T@Field_11243_11334 T@FrameType T@Field_26066_26067 T@FrameType) Bool)
(declare-fun InsidePredicate_11333_22196 (T@Field_26066_26067 T@FrameType T@Field_11243_11334 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_22136) (Heap1 T@PolymorphicMapType_22136) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_22136) (Mask T@PolymorphicMapType_22157) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_22136) (Heap1@@0 T@PolymorphicMapType_22136) (Heap2 T@PolymorphicMapType_22136) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_22136) (this T@Ref) (i Int) (end T@Ref) ) (! (dummyFunction_1541 (|get#triggerStateless| this i end))
 :qid |stdinbpl.202:15|
 :skolemid |23|
 :pattern ( (|get'| Heap@@0 this i end))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_29321_29326) ) (!  (not (select (|PolymorphicMapType_22685_26066_83983#PolymorphicMapType_22685| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_26066_83983#PolymorphicMapType_22685| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_26066_26067) ) (!  (not (select (|PolymorphicMapType_22685_26066_26067#PolymorphicMapType_22685| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_26066_26067#PolymorphicMapType_22685| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11333_53) ) (!  (not (select (|PolymorphicMapType_22685_26066_53#PolymorphicMapType_22685| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_26066_53#PolymorphicMapType_22685| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11333_11241) ) (!  (not (select (|PolymorphicMapType_22685_26066_11241#PolymorphicMapType_22685| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_26066_11241#PolymorphicMapType_22685| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11333_1204) ) (!  (not (select (|PolymorphicMapType_22685_26066_1204#PolymorphicMapType_22685| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_26066_1204#PolymorphicMapType_22685| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_11243_29326) ) (!  (not (select (|PolymorphicMapType_22685_11243_82935#PolymorphicMapType_22685| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_11243_82935#PolymorphicMapType_22685| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_11243_11334) ) (!  (not (select (|PolymorphicMapType_22685_11243_26067#PolymorphicMapType_22685| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_11243_26067#PolymorphicMapType_22685| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_22196_53) ) (!  (not (select (|PolymorphicMapType_22685_11243_53#PolymorphicMapType_22685| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_11243_53#PolymorphicMapType_22685| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_22209_22210) ) (!  (not (select (|PolymorphicMapType_22685_11240_11241#PolymorphicMapType_22685| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_11240_11241#PolymorphicMapType_22685| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_25573_1204) ) (!  (not (select (|PolymorphicMapType_22685_11243_1204#PolymorphicMapType_22685| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_11243_1204#PolymorphicMapType_22685| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_22136) (Mask@@0 T@PolymorphicMapType_22157) (this@@0 T@Ref) (end@@0 T@Ref) ) (!  (=> (state Heap@@1 Mask@@0) (= (|length'| Heap@@1 this@@0 end@@0) (|length#frame| (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@1) null (lseg this@@0 end@@0)) this@@0 end@@0)))
 :qid |stdinbpl.372:15|
 :skolemid |30|
 :pattern ( (state Heap@@1 Mask@@0) (|length'| Heap@@1 this@@0 end@@0))
 :pattern ( (state Heap@@1 Mask@@0) (|length#triggerStateless| this@@0 end@@0) (|lseg#trigger_11333| Heap@@1 (lseg this@@0 end@@0)))
)))
(assert (forall ((this@@1 T@Ref) (end@@1 T@Ref) ) (! (IsPredicateField_11333_11334 (lseg this@@1 end@@1))
 :qid |stdinbpl.504:15|
 :skolemid |34|
 :pattern ( (lseg this@@1 end@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_22136) (this@@2 T@Ref) (end@@2 T@Ref) ) (! (dummyFunction_1541 (|length#triggerStateless| this@@2 end@@2))
 :qid |stdinbpl.359:15|
 :skolemid |28|
 :pattern ( (|length'| Heap@@2 this@@2 end@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_22136) (this@@3 T@Ref) (end@@3 T@Ref) ) (! (|lseg#everUsed_11333| (lseg this@@3 end@@3))
 :qid |stdinbpl.523:15|
 :skolemid |38|
 :pattern ( (|lseg#trigger_11333| Heap@@3 (lseg this@@3 end@@3)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_22136) (Mask@@1 T@PolymorphicMapType_22157) (this@@4 T@Ref) (end@@4 T@Ref) ) (!  (=> (and (state Heap@@4 Mask@@1) (or (< AssumeFunctionsAbove 1) (|length#trigger| (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@4) null (lseg this@@4 end@@4)) this@@4 end@@4))) (> (|length'| Heap@@4 this@@4 end@@4) 0))
 :qid |stdinbpl.378:15|
 :skolemid |31|
 :pattern ( (state Heap@@4 Mask@@1) (|length'| Heap@@4 this@@4 end@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_22136) (ExhaleHeap T@PolymorphicMapType_22136) (Mask@@2 T@PolymorphicMapType_22157) (pm_f_32 T@Field_26066_26067) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_11333_11334 Mask@@2 null pm_f_32) (IsPredicateField_11333_11334 pm_f_32)) (= (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@5) null (PredicateMaskField_11333 pm_f_32)) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap) null (PredicateMaskField_11333 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@2) (IsPredicateField_11333_11334 pm_f_32) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap) null (PredicateMaskField_11333 pm_f_32)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_22136) (ExhaleHeap@@0 T@PolymorphicMapType_22136) (Mask@@3 T@PolymorphicMapType_22157) (pm_f_32@@0 T@Field_11243_11334) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_11243_11334 Mask@@3 null pm_f_32@@0) (IsPredicateField_11243_81478 pm_f_32@@0)) (= (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@6) null (PredicateMaskField_11243 pm_f_32@@0)) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@0) null (PredicateMaskField_11243 pm_f_32@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@3) (IsPredicateField_11243_81478 pm_f_32@@0) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@0) null (PredicateMaskField_11243 pm_f_32@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_22136) (ExhaleHeap@@1 T@PolymorphicMapType_22136) (Mask@@4 T@PolymorphicMapType_22157) (pm_f_32@@1 T@Field_26066_26067) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_11333_11334 Mask@@4 null pm_f_32@@1) (IsWandField_11333_85148 pm_f_32@@1)) (= (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@7) null (WandMaskField_11333 pm_f_32@@1)) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@1) null (WandMaskField_11333 pm_f_32@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@4) (IsWandField_11333_85148 pm_f_32@@1) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@1) null (WandMaskField_11333 pm_f_32@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_22136) (ExhaleHeap@@2 T@PolymorphicMapType_22136) (Mask@@5 T@PolymorphicMapType_22157) (pm_f_32@@2 T@Field_11243_11334) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_11243_11334 Mask@@5 null pm_f_32@@2) (IsWandField_11243_84791 pm_f_32@@2)) (= (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@8) null (WandMaskField_11243 pm_f_32@@2)) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@2) null (WandMaskField_11243 pm_f_32@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@5) (IsWandField_11243_84791 pm_f_32@@2) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@2) null (WandMaskField_11243 pm_f_32@@2)))
)))
(assert (forall ((this@@5 T@Ref) (end@@5 T@Ref) (this2 T@Ref) (end2 T@Ref) ) (!  (=> (= (lseg this@@5 end@@5) (lseg this2 end2)) (and (= this@@5 this2) (= end@@5 end2)))
 :qid |stdinbpl.514:15|
 :skolemid |36|
 :pattern ( (lseg this@@5 end@@5) (lseg this2 end2))
)))
(assert (forall ((this@@6 T@Ref) (end@@6 T@Ref) (this2@@0 T@Ref) (end2@@0 T@Ref) ) (!  (=> (= (|lseg#sm| this@@6 end@@6) (|lseg#sm| this2@@0 end2@@0)) (and (= this@@6 this2@@0) (= end@@6 end2@@0)))
 :qid |stdinbpl.518:15|
 :skolemid |37|
 :pattern ( (|lseg#sm| this@@6 end@@6) (|lseg#sm| this2@@0 end2@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_22136) (ExhaleHeap@@3 T@PolymorphicMapType_22136) (Mask@@6 T@PolymorphicMapType_22157) (pm_f_32@@3 T@Field_26066_26067) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@6) (=> (and (HasDirectPerm_11333_11334 Mask@@6 null pm_f_32@@3) (IsPredicateField_11333_11334 pm_f_32@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_32 T@Ref) (f_41 T@Field_25573_1204) ) (!  (=> (select (|PolymorphicMapType_22685_11243_1204#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32 f_41) (= (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@9) o2_32 f_41) (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32 f_41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32 f_41))
)) (forall ((o2_32@@0 T@Ref) (f_41@@0 T@Field_22209_22210) ) (!  (=> (select (|PolymorphicMapType_22685_11240_11241#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32@@0 f_41@@0) (= (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@9) o2_32@@0 f_41@@0) (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@0 f_41@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@0 f_41@@0))
))) (forall ((o2_32@@1 T@Ref) (f_41@@1 T@Field_22196_53) ) (!  (=> (select (|PolymorphicMapType_22685_11243_53#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32@@1 f_41@@1) (= (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@9) o2_32@@1 f_41@@1) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@1 f_41@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@1 f_41@@1))
))) (forall ((o2_32@@2 T@Ref) (f_41@@2 T@Field_11243_11334) ) (!  (=> (select (|PolymorphicMapType_22685_11243_26067#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32@@2 f_41@@2) (= (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@9) o2_32@@2 f_41@@2) (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@2 f_41@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@2 f_41@@2))
))) (forall ((o2_32@@3 T@Ref) (f_41@@3 T@Field_11243_29326) ) (!  (=> (select (|PolymorphicMapType_22685_11243_82935#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32@@3 f_41@@3) (= (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@9) o2_32@@3 f_41@@3) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@3 f_41@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@3 f_41@@3))
))) (forall ((o2_32@@4 T@Ref) (f_41@@4 T@Field_11333_1204) ) (!  (=> (select (|PolymorphicMapType_22685_26066_1204#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32@@4 f_41@@4) (= (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@9) o2_32@@4 f_41@@4) (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@4 f_41@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@4 f_41@@4))
))) (forall ((o2_32@@5 T@Ref) (f_41@@5 T@Field_11333_11241) ) (!  (=> (select (|PolymorphicMapType_22685_26066_11241#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32@@5 f_41@@5) (= (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@9) o2_32@@5 f_41@@5) (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@5 f_41@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@5 f_41@@5))
))) (forall ((o2_32@@6 T@Ref) (f_41@@6 T@Field_11333_53) ) (!  (=> (select (|PolymorphicMapType_22685_26066_53#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32@@6 f_41@@6) (= (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@9) o2_32@@6 f_41@@6) (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@6 f_41@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@6 f_41@@6))
))) (forall ((o2_32@@7 T@Ref) (f_41@@7 T@Field_26066_26067) ) (!  (=> (select (|PolymorphicMapType_22685_26066_26067#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32@@7 f_41@@7) (= (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@9) o2_32@@7 f_41@@7) (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@7 f_41@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@7 f_41@@7))
))) (forall ((o2_32@@8 T@Ref) (f_41@@8 T@Field_29321_29326) ) (!  (=> (select (|PolymorphicMapType_22685_26066_83983#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32@@8 f_41@@8) (= (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) o2_32@@8 f_41@@8) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@8 f_41@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@8 f_41@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@6) (IsPredicateField_11333_11334 pm_f_32@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_22136) (ExhaleHeap@@4 T@PolymorphicMapType_22136) (Mask@@7 T@PolymorphicMapType_22157) (pm_f_32@@4 T@Field_11243_11334) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@7) (=> (and (HasDirectPerm_11243_11334 Mask@@7 null pm_f_32@@4) (IsPredicateField_11243_81478 pm_f_32@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_32@@9 T@Ref) (f_41@@9 T@Field_25573_1204) ) (!  (=> (select (|PolymorphicMapType_22685_11243_1204#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@9 f_41@@9) (= (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@10) o2_32@@9 f_41@@9) (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@9 f_41@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@9 f_41@@9))
)) (forall ((o2_32@@10 T@Ref) (f_41@@10 T@Field_22209_22210) ) (!  (=> (select (|PolymorphicMapType_22685_11240_11241#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@10 f_41@@10) (= (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@10) o2_32@@10 f_41@@10) (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@10 f_41@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@10 f_41@@10))
))) (forall ((o2_32@@11 T@Ref) (f_41@@11 T@Field_22196_53) ) (!  (=> (select (|PolymorphicMapType_22685_11243_53#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@11 f_41@@11) (= (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@10) o2_32@@11 f_41@@11) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@11 f_41@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@11 f_41@@11))
))) (forall ((o2_32@@12 T@Ref) (f_41@@12 T@Field_11243_11334) ) (!  (=> (select (|PolymorphicMapType_22685_11243_26067#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@12 f_41@@12) (= (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@10) o2_32@@12 f_41@@12) (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@12 f_41@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@12 f_41@@12))
))) (forall ((o2_32@@13 T@Ref) (f_41@@13 T@Field_11243_29326) ) (!  (=> (select (|PolymorphicMapType_22685_11243_82935#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@13 f_41@@13) (= (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) o2_32@@13 f_41@@13) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@13 f_41@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@13 f_41@@13))
))) (forall ((o2_32@@14 T@Ref) (f_41@@14 T@Field_11333_1204) ) (!  (=> (select (|PolymorphicMapType_22685_26066_1204#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@14 f_41@@14) (= (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@10) o2_32@@14 f_41@@14) (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@14 f_41@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@14 f_41@@14))
))) (forall ((o2_32@@15 T@Ref) (f_41@@15 T@Field_11333_11241) ) (!  (=> (select (|PolymorphicMapType_22685_26066_11241#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@15 f_41@@15) (= (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@10) o2_32@@15 f_41@@15) (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@15 f_41@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@15 f_41@@15))
))) (forall ((o2_32@@16 T@Ref) (f_41@@16 T@Field_11333_53) ) (!  (=> (select (|PolymorphicMapType_22685_26066_53#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@16 f_41@@16) (= (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@10) o2_32@@16 f_41@@16) (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@16 f_41@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@16 f_41@@16))
))) (forall ((o2_32@@17 T@Ref) (f_41@@17 T@Field_26066_26067) ) (!  (=> (select (|PolymorphicMapType_22685_26066_26067#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@17 f_41@@17) (= (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@10) o2_32@@17 f_41@@17) (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@17 f_41@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@17 f_41@@17))
))) (forall ((o2_32@@18 T@Ref) (f_41@@18 T@Field_29321_29326) ) (!  (=> (select (|PolymorphicMapType_22685_26066_83983#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@18 f_41@@18) (= (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@10) o2_32@@18 f_41@@18) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@18 f_41@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@18 f_41@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@7) (IsPredicateField_11243_81478 pm_f_32@@4))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_22136) (ExhaleHeap@@5 T@PolymorphicMapType_22136) (Mask@@8 T@PolymorphicMapType_22157) (pm_f_32@@5 T@Field_26066_26067) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@8) (=> (and (HasDirectPerm_11333_11334 Mask@@8 null pm_f_32@@5) (IsWandField_11333_85148 pm_f_32@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_32@@19 T@Ref) (f_41@@19 T@Field_25573_1204) ) (!  (=> (select (|PolymorphicMapType_22685_11243_1204#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@19 f_41@@19) (= (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@11) o2_32@@19 f_41@@19) (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@19 f_41@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@19 f_41@@19))
)) (forall ((o2_32@@20 T@Ref) (f_41@@20 T@Field_22209_22210) ) (!  (=> (select (|PolymorphicMapType_22685_11240_11241#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@20 f_41@@20) (= (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@11) o2_32@@20 f_41@@20) (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@20 f_41@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@20 f_41@@20))
))) (forall ((o2_32@@21 T@Ref) (f_41@@21 T@Field_22196_53) ) (!  (=> (select (|PolymorphicMapType_22685_11243_53#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@21 f_41@@21) (= (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@11) o2_32@@21 f_41@@21) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@21 f_41@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@21 f_41@@21))
))) (forall ((o2_32@@22 T@Ref) (f_41@@22 T@Field_11243_11334) ) (!  (=> (select (|PolymorphicMapType_22685_11243_26067#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@22 f_41@@22) (= (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@11) o2_32@@22 f_41@@22) (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@22 f_41@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@22 f_41@@22))
))) (forall ((o2_32@@23 T@Ref) (f_41@@23 T@Field_11243_29326) ) (!  (=> (select (|PolymorphicMapType_22685_11243_82935#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@23 f_41@@23) (= (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@11) o2_32@@23 f_41@@23) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@23 f_41@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@23 f_41@@23))
))) (forall ((o2_32@@24 T@Ref) (f_41@@24 T@Field_11333_1204) ) (!  (=> (select (|PolymorphicMapType_22685_26066_1204#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@24 f_41@@24) (= (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@11) o2_32@@24 f_41@@24) (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@24 f_41@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@24 f_41@@24))
))) (forall ((o2_32@@25 T@Ref) (f_41@@25 T@Field_11333_11241) ) (!  (=> (select (|PolymorphicMapType_22685_26066_11241#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@25 f_41@@25) (= (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@11) o2_32@@25 f_41@@25) (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@25 f_41@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@25 f_41@@25))
))) (forall ((o2_32@@26 T@Ref) (f_41@@26 T@Field_11333_53) ) (!  (=> (select (|PolymorphicMapType_22685_26066_53#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@26 f_41@@26) (= (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@11) o2_32@@26 f_41@@26) (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@26 f_41@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@26 f_41@@26))
))) (forall ((o2_32@@27 T@Ref) (f_41@@27 T@Field_26066_26067) ) (!  (=> (select (|PolymorphicMapType_22685_26066_26067#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@27 f_41@@27) (= (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@11) o2_32@@27 f_41@@27) (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@27 f_41@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@27 f_41@@27))
))) (forall ((o2_32@@28 T@Ref) (f_41@@28 T@Field_29321_29326) ) (!  (=> (select (|PolymorphicMapType_22685_26066_83983#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@28 f_41@@28) (= (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) o2_32@@28 f_41@@28) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@28 f_41@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@28 f_41@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@8) (IsWandField_11333_85148 pm_f_32@@5))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_22136) (ExhaleHeap@@6 T@PolymorphicMapType_22136) (Mask@@9 T@PolymorphicMapType_22157) (pm_f_32@@6 T@Field_11243_11334) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@9) (=> (and (HasDirectPerm_11243_11334 Mask@@9 null pm_f_32@@6) (IsWandField_11243_84791 pm_f_32@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_32@@29 T@Ref) (f_41@@29 T@Field_25573_1204) ) (!  (=> (select (|PolymorphicMapType_22685_11243_1204#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@29 f_41@@29) (= (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@12) o2_32@@29 f_41@@29) (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@29 f_41@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@29 f_41@@29))
)) (forall ((o2_32@@30 T@Ref) (f_41@@30 T@Field_22209_22210) ) (!  (=> (select (|PolymorphicMapType_22685_11240_11241#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@30 f_41@@30) (= (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@12) o2_32@@30 f_41@@30) (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@30 f_41@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@30 f_41@@30))
))) (forall ((o2_32@@31 T@Ref) (f_41@@31 T@Field_22196_53) ) (!  (=> (select (|PolymorphicMapType_22685_11243_53#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@31 f_41@@31) (= (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@12) o2_32@@31 f_41@@31) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@31 f_41@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@31 f_41@@31))
))) (forall ((o2_32@@32 T@Ref) (f_41@@32 T@Field_11243_11334) ) (!  (=> (select (|PolymorphicMapType_22685_11243_26067#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@32 f_41@@32) (= (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@12) o2_32@@32 f_41@@32) (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@32 f_41@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@32 f_41@@32))
))) (forall ((o2_32@@33 T@Ref) (f_41@@33 T@Field_11243_29326) ) (!  (=> (select (|PolymorphicMapType_22685_11243_82935#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@33 f_41@@33) (= (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) o2_32@@33 f_41@@33) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@33 f_41@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@33 f_41@@33))
))) (forall ((o2_32@@34 T@Ref) (f_41@@34 T@Field_11333_1204) ) (!  (=> (select (|PolymorphicMapType_22685_26066_1204#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@34 f_41@@34) (= (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@12) o2_32@@34 f_41@@34) (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@34 f_41@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@34 f_41@@34))
))) (forall ((o2_32@@35 T@Ref) (f_41@@35 T@Field_11333_11241) ) (!  (=> (select (|PolymorphicMapType_22685_26066_11241#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@35 f_41@@35) (= (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@12) o2_32@@35 f_41@@35) (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@35 f_41@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@35 f_41@@35))
))) (forall ((o2_32@@36 T@Ref) (f_41@@36 T@Field_11333_53) ) (!  (=> (select (|PolymorphicMapType_22685_26066_53#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@36 f_41@@36) (= (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@12) o2_32@@36 f_41@@36) (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@36 f_41@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@36 f_41@@36))
))) (forall ((o2_32@@37 T@Ref) (f_41@@37 T@Field_26066_26067) ) (!  (=> (select (|PolymorphicMapType_22685_26066_26067#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@37 f_41@@37) (= (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@12) o2_32@@37 f_41@@37) (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@37 f_41@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@37 f_41@@37))
))) (forall ((o2_32@@38 T@Ref) (f_41@@38 T@Field_29321_29326) ) (!  (=> (select (|PolymorphicMapType_22685_26066_83983#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@38 f_41@@38) (= (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@12) o2_32@@38 f_41@@38) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@38 f_41@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@38 f_41@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@9) (IsWandField_11243_84791 pm_f_32@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_22136) (ExhaleHeap@@7 T@PolymorphicMapType_22136) (Mask@@10 T@PolymorphicMapType_22157) (o_36 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@13) o_36 $allocated) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@7) o_36 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@7) o_36 $allocated))
)))
(assert (forall ((p T@Field_11243_11334) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_22196_22196 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22196_22196 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_26066_26067) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_11333_11333 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11333_11333 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_11240_11241 next)))
(assert  (not (IsWandField_11240_11241 next)))
(assert  (not (IsPredicateField_11243_1204 value)))
(assert  (not (IsWandField_11243_1204 value)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_22136) (ExhaleHeap@@8 T@PolymorphicMapType_22136) (Mask@@11 T@PolymorphicMapType_22157) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@14 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_22157) (o_2@@9 T@Ref) (f_4@@9 T@Field_11243_29326) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_11243_92051 f_4@@9))) (not (IsWandField_11243_92067 f_4@@9))) (<= (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_22157) (o_2@@10 T@Ref) (f_4@@10 T@Field_22196_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_11243_53 f_4@@10))) (not (IsWandField_11243_53 f_4@@10))) (<= (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_22157) (o_2@@11 T@Ref) (f_4@@11 T@Field_22209_22210) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_11240_11241 f_4@@11))) (not (IsWandField_11240_11241 f_4@@11))) (<= (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_22157) (o_2@@12 T@Ref) (f_4@@12 T@Field_25573_1204) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_11243_1204 f_4@@12))) (not (IsWandField_11243_1204 f_4@@12))) (<= (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_22157) (o_2@@13 T@Ref) (f_4@@13 T@Field_11243_11334) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_11243_81478 f_4@@13))) (not (IsWandField_11243_84791 f_4@@13))) (<= (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_22157) (o_2@@14 T@Ref) (f_4@@14 T@Field_29321_29326) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_11333_91248 f_4@@14))) (not (IsWandField_11333_91264 f_4@@14))) (<= (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_22157) (o_2@@15 T@Ref) (f_4@@15 T@Field_11333_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| Mask@@18) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_11333_53 f_4@@15))) (not (IsWandField_11333_53 f_4@@15))) (<= (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| Mask@@18) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| Mask@@18) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_22157) (o_2@@16 T@Ref) (f_4@@16 T@Field_11333_11241) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| Mask@@19) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_11333_11241 f_4@@16))) (not (IsWandField_11333_11241 f_4@@16))) (<= (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| Mask@@19) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| Mask@@19) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_22157) (o_2@@17 T@Ref) (f_4@@17 T@Field_11333_1204) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| Mask@@20) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_11333_1204 f_4@@17))) (not (IsWandField_11333_1204 f_4@@17))) (<= (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| Mask@@20) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| Mask@@20) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_22157) (o_2@@18 T@Ref) (f_4@@18 T@Field_26066_26067) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| Mask@@21) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_11333_11334 f_4@@18))) (not (IsWandField_11333_85148 f_4@@18))) (<= (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| Mask@@21) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| Mask@@21) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_22157) (o_2@@19 T@Ref) (f_4@@19 T@Field_29321_29326) ) (! (= (HasDirectPerm_11333_81233 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11333_81233 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_22157) (o_2@@20 T@Ref) (f_4@@20 T@Field_11333_53) ) (! (= (HasDirectPerm_11333_53 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11333_53 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_22157) (o_2@@21 T@Ref) (f_4@@21 T@Field_26066_26067) ) (! (= (HasDirectPerm_11333_11334 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11333_11334 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_22157) (o_2@@22 T@Ref) (f_4@@22 T@Field_11333_11241) ) (! (= (HasDirectPerm_11333_11241 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11333_11241 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_22157) (o_2@@23 T@Ref) (f_4@@23 T@Field_11333_1204) ) (! (= (HasDirectPerm_11333_1204 Mask@@26 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| Mask@@26) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11333_1204 Mask@@26 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_22157) (o_2@@24 T@Ref) (f_4@@24 T@Field_11243_29326) ) (! (= (HasDirectPerm_11243_80092 Mask@@27 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| Mask@@27) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11243_80092 Mask@@27 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_22157) (o_2@@25 T@Ref) (f_4@@25 T@Field_22196_53) ) (! (= (HasDirectPerm_11243_53 Mask@@28 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| Mask@@28) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11243_53 Mask@@28 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_22157) (o_2@@26 T@Ref) (f_4@@26 T@Field_11243_11334) ) (! (= (HasDirectPerm_11243_11334 Mask@@29 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| Mask@@29) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11243_11334 Mask@@29 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_22157) (o_2@@27 T@Ref) (f_4@@27 T@Field_22209_22210) ) (! (= (HasDirectPerm_11240_11241 Mask@@30 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| Mask@@30) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11240_11241 Mask@@30 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_22157) (o_2@@28 T@Ref) (f_4@@28 T@Field_25573_1204) ) (! (= (HasDirectPerm_11243_1204 Mask@@31 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| Mask@@31) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11243_1204 Mask@@31 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_22136) (ExhaleHeap@@9 T@PolymorphicMapType_22136) (Mask@@32 T@PolymorphicMapType_22157) (o_36@@0 T@Ref) (f_41@@39 T@Field_29321_29326) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@32) (=> (HasDirectPerm_11333_81233 Mask@@32 o_36@@0 f_41@@39) (= (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@15) o_36@@0 f_41@@39) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@9) o_36@@0 f_41@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@32) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@9) o_36@@0 f_41@@39))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_22136) (ExhaleHeap@@10 T@PolymorphicMapType_22136) (Mask@@33 T@PolymorphicMapType_22157) (o_36@@1 T@Ref) (f_41@@40 T@Field_11333_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@33) (=> (HasDirectPerm_11333_53 Mask@@33 o_36@@1 f_41@@40) (= (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@16) o_36@@1 f_41@@40) (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@10) o_36@@1 f_41@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@33) (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@10) o_36@@1 f_41@@40))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_22136) (ExhaleHeap@@11 T@PolymorphicMapType_22136) (Mask@@34 T@PolymorphicMapType_22157) (o_36@@2 T@Ref) (f_41@@41 T@Field_26066_26067) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@34) (=> (HasDirectPerm_11333_11334 Mask@@34 o_36@@2 f_41@@41) (= (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@17) o_36@@2 f_41@@41) (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@11) o_36@@2 f_41@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@34) (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@11) o_36@@2 f_41@@41))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_22136) (ExhaleHeap@@12 T@PolymorphicMapType_22136) (Mask@@35 T@PolymorphicMapType_22157) (o_36@@3 T@Ref) (f_41@@42 T@Field_11333_11241) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@35) (=> (HasDirectPerm_11333_11241 Mask@@35 o_36@@3 f_41@@42) (= (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@18) o_36@@3 f_41@@42) (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@12) o_36@@3 f_41@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@35) (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@12) o_36@@3 f_41@@42))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_22136) (ExhaleHeap@@13 T@PolymorphicMapType_22136) (Mask@@36 T@PolymorphicMapType_22157) (o_36@@4 T@Ref) (f_41@@43 T@Field_11333_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@36) (=> (HasDirectPerm_11333_1204 Mask@@36 o_36@@4 f_41@@43) (= (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@19) o_36@@4 f_41@@43) (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@13) o_36@@4 f_41@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@36) (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@13) o_36@@4 f_41@@43))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_22136) (ExhaleHeap@@14 T@PolymorphicMapType_22136) (Mask@@37 T@PolymorphicMapType_22157) (o_36@@5 T@Ref) (f_41@@44 T@Field_11243_29326) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@37) (=> (HasDirectPerm_11243_80092 Mask@@37 o_36@@5 f_41@@44) (= (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@20) o_36@@5 f_41@@44) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@14) o_36@@5 f_41@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@37) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@14) o_36@@5 f_41@@44))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_22136) (ExhaleHeap@@15 T@PolymorphicMapType_22136) (Mask@@38 T@PolymorphicMapType_22157) (o_36@@6 T@Ref) (f_41@@45 T@Field_22196_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@38) (=> (HasDirectPerm_11243_53 Mask@@38 o_36@@6 f_41@@45) (= (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@21) o_36@@6 f_41@@45) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@15) o_36@@6 f_41@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@38) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@15) o_36@@6 f_41@@45))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_22136) (ExhaleHeap@@16 T@PolymorphicMapType_22136) (Mask@@39 T@PolymorphicMapType_22157) (o_36@@7 T@Ref) (f_41@@46 T@Field_11243_11334) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@39) (=> (HasDirectPerm_11243_11334 Mask@@39 o_36@@7 f_41@@46) (= (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@22) o_36@@7 f_41@@46) (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@16) o_36@@7 f_41@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@39) (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@16) o_36@@7 f_41@@46))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_22136) (ExhaleHeap@@17 T@PolymorphicMapType_22136) (Mask@@40 T@PolymorphicMapType_22157) (o_36@@8 T@Ref) (f_41@@47 T@Field_22209_22210) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@40) (=> (HasDirectPerm_11240_11241 Mask@@40 o_36@@8 f_41@@47) (= (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@23) o_36@@8 f_41@@47) (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@17) o_36@@8 f_41@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@40) (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@17) o_36@@8 f_41@@47))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_22136) (ExhaleHeap@@18 T@PolymorphicMapType_22136) (Mask@@41 T@PolymorphicMapType_22157) (o_36@@9 T@Ref) (f_41@@48 T@Field_25573_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@41) (=> (HasDirectPerm_11243_1204 Mask@@41 o_36@@9 f_41@@48) (= (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@24) o_36@@9 f_41@@48) (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@18) o_36@@9 f_41@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@41) (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@18) o_36@@9 f_41@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_11243_29326) ) (! (= (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_22196_53) ) (! (= (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_22209_22210) ) (! (= (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_25573_1204) ) (! (= (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_11243_11334) ) (! (= (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_29321_29326) ) (! (= (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_11333_53) ) (! (= (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_11333_11241) ) (! (= (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_11333_1204) ) (! (= (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_26066_26067) ) (! (= (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_22136) (this@@7 T@Ref) (end@@7 T@Ref) ) (!  (and (= (length Heap@@25 this@@7 end@@7) (|length'| Heap@@25 this@@7 end@@7)) (dummyFunction_1541 (|length#triggerStateless| this@@7 end@@7)))
 :qid |stdinbpl.355:15|
 :skolemid |27|
 :pattern ( (length Heap@@25 this@@7 end@@7))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_22136) (Mask@@42 T@PolymorphicMapType_22157) (this@@8 T@Ref) (i@@0 Int) (end@@8 T@Ref) ) (!  (=> (and (state Heap@@26 Mask@@42) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 i@@0) (< i@@0 (length Heap@@26 this@@8 end@@8))) (= (get Heap@@26 this@@8 i@@0 end@@8) (ite (= i@@0 0) (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@26) this@@8 value) (|get'| Heap@@26 (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@26) this@@8 next) (- i@@0 1) end@@8)))))
 :qid |stdinbpl.208:15|
 :skolemid |24|
 :pattern ( (state Heap@@26 Mask@@42) (get Heap@@26 this@@8 i@@0 end@@8))
 :pattern ( (state Heap@@26 Mask@@42) (|get#triggerStateless| this@@8 i@@0 end@@8) (|lseg#trigger_11333| Heap@@26 (lseg this@@8 end@@8)))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_22157) (SummandMask1 T@PolymorphicMapType_22157) (SummandMask2 T@PolymorphicMapType_22157) (o_2@@39 T@Ref) (f_4@@39 T@Field_11243_29326) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_22157) (SummandMask1@@0 T@PolymorphicMapType_22157) (SummandMask2@@0 T@PolymorphicMapType_22157) (o_2@@40 T@Ref) (f_4@@40 T@Field_22196_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_22157) (SummandMask1@@1 T@PolymorphicMapType_22157) (SummandMask2@@1 T@PolymorphicMapType_22157) (o_2@@41 T@Ref) (f_4@@41 T@Field_22209_22210) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_22157) (SummandMask1@@2 T@PolymorphicMapType_22157) (SummandMask2@@2 T@PolymorphicMapType_22157) (o_2@@42 T@Ref) (f_4@@42 T@Field_25573_1204) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_22157) (SummandMask1@@3 T@PolymorphicMapType_22157) (SummandMask2@@3 T@PolymorphicMapType_22157) (o_2@@43 T@Ref) (f_4@@43 T@Field_11243_11334) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_22157) (SummandMask1@@4 T@PolymorphicMapType_22157) (SummandMask2@@4 T@PolymorphicMapType_22157) (o_2@@44 T@Ref) (f_4@@44 T@Field_29321_29326) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_22157) (SummandMask1@@5 T@PolymorphicMapType_22157) (SummandMask2@@5 T@PolymorphicMapType_22157) (o_2@@45 T@Ref) (f_4@@45 T@Field_11333_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_22157) (SummandMask1@@6 T@PolymorphicMapType_22157) (SummandMask2@@6 T@PolymorphicMapType_22157) (o_2@@46 T@Ref) (f_4@@46 T@Field_11333_11241) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_22157) (SummandMask1@@7 T@PolymorphicMapType_22157) (SummandMask2@@7 T@PolymorphicMapType_22157) (o_2@@47 T@Ref) (f_4@@47 T@Field_11333_1204) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_22157) (SummandMask1@@8 T@PolymorphicMapType_22157) (SummandMask2@@8 T@PolymorphicMapType_22157) (o_2@@48 T@Ref) (f_4@@48 T@Field_26066_26067) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_22136) (this@@9 T@Ref) (i@@1 Int) (end@@9 T@Ref) ) (!  (and (= (get Heap@@27 this@@9 i@@1 end@@9) (|get'| Heap@@27 this@@9 i@@1 end@@9)) (dummyFunction_1541 (|get#triggerStateless| this@@9 i@@1 end@@9)))
 :qid |stdinbpl.198:15|
 :skolemid |22|
 :pattern ( (get Heap@@27 this@@9 i@@1 end@@9))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_22136) (Mask@@43 T@PolymorphicMapType_22157) (this@@10 T@Ref) (i@@2 Int) (end@@10 T@Ref) ) (!  (=> (state Heap@@28 Mask@@43) (= (|get'| Heap@@28 this@@10 i@@2 end@@10) (|get#frame| (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@28) null (lseg this@@10 end@@10)) this@@10 i@@2 end@@10)))
 :qid |stdinbpl.215:15|
 :skolemid |25|
 :pattern ( (state Heap@@28 Mask@@43) (|get'| Heap@@28 this@@10 i@@2 end@@10))
 :pattern ( (state Heap@@28 Mask@@43) (|get#triggerStateless| this@@10 i@@2 end@@10) (|lseg#trigger_11333| Heap@@28 (lseg this@@10 end@@10)))
)))
(assert (forall ((this@@11 T@Ref) (end@@11 T@Ref) ) (! (= (getPredWandId_11333_11334 (lseg this@@11 end@@11)) 0)
 :qid |stdinbpl.508:15|
 :skolemid |35|
 :pattern ( (lseg this@@11 end@@11))
)))
(assert (forall ((this@@12 T@Ref) (end@@12 T@Ref) ) (! (= (PredicateMaskField_11333 (lseg this@@12 end@@12)) (|lseg#sm| this@@12 end@@12))
 :qid |stdinbpl.500:15|
 :skolemid |33|
 :pattern ( (PredicateMaskField_11333 (lseg this@@12 end@@12)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_22136) (o_24 T@Ref) (f_48 T@Field_29321_29326) (v T@PolymorphicMapType_22685) ) (! (succHeap Heap@@29 (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@29) (store (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@29) o_24 f_48 v) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@29) (store (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@29) o_24 f_48 v) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_22136) (o_24@@0 T@Ref) (f_48@@0 T@Field_26066_26067) (v@@0 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@30) (store (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@30) o_24@@0 f_48@@0 v@@0) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@30) (store (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@30) o_24@@0 f_48@@0 v@@0) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_22136) (o_24@@1 T@Ref) (f_48@@1 T@Field_11333_1204) (v@@1 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@31) (store (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@31) o_24@@1 f_48@@1 v@@1) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@31) (store (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@31) o_24@@1 f_48@@1 v@@1) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_22136) (o_24@@2 T@Ref) (f_48@@2 T@Field_11333_11241) (v@@2 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@32) (store (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@32) o_24@@2 f_48@@2 v@@2) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@32) (store (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@32) o_24@@2 f_48@@2 v@@2) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_22136) (o_24@@3 T@Ref) (f_48@@3 T@Field_11333_53) (v@@3 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@33) (store (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@33) o_24@@3 f_48@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@33) (store (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@33) o_24@@3 f_48@@3 v@@3)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_22136) (o_24@@4 T@Ref) (f_48@@4 T@Field_11243_29326) (v@@4 T@PolymorphicMapType_22685) ) (! (succHeap Heap@@34 (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@34) (store (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@34) o_24@@4 f_48@@4 v@@4) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@34) (store (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@34) o_24@@4 f_48@@4 v@@4) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_22136) (o_24@@5 T@Ref) (f_48@@5 T@Field_11243_11334) (v@@5 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@35) (store (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@35) o_24@@5 f_48@@5 v@@5) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@35) (store (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@35) o_24@@5 f_48@@5 v@@5) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_22136) (o_24@@6 T@Ref) (f_48@@6 T@Field_25573_1204) (v@@6 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@36) (store (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@36) o_24@@6 f_48@@6 v@@6) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@36) (store (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@36) o_24@@6 f_48@@6 v@@6) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_22136) (o_24@@7 T@Ref) (f_48@@7 T@Field_22209_22210) (v@@7 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@37) (store (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@37) o_24@@7 f_48@@7 v@@7) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@37) (store (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@37) o_24@@7 f_48@@7 v@@7) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_22136) (o_24@@8 T@Ref) (f_48@@8 T@Field_22196_53) (v@@8 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_22136 (store (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@38) o_24@@8 f_48@@8 v@@8) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (store (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@38) o_24@@8 f_48@@8 v@@8) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_22136) (Mask@@44 T@PolymorphicMapType_22157) (this@@13 T@Ref) (end@@13 T@Ref) ) (!  (=> (and (state Heap@@39 Mask@@44) (< AssumeFunctionsAbove 1)) (= (length Heap@@39 this@@13 end@@13) (ite (= (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@39) this@@13 next) end@@13) 1 (+ 1 (|length'| Heap@@39 (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@39) this@@13 next) end@@13)))))
 :qid |stdinbpl.365:15|
 :skolemid |29|
 :pattern ( (state Heap@@39 Mask@@44) (length Heap@@39 this@@13 end@@13))
 :pattern ( (state Heap@@39 Mask@@44) (|length#triggerStateless| this@@13 end@@13) (|lseg#trigger_11333| Heap@@39 (lseg this@@13 end@@13)))
)))
(assert (forall ((o_24@@9 T@Ref) (f_26 T@Field_22209_22210) (Heap@@40 T@PolymorphicMapType_22136) ) (!  (=> (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@40) o_24@@9 $allocated) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@40) (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@40) o_24@@9 f_26) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@40) o_24@@9 f_26))
)))
(assert (forall ((p@@2 T@Field_11243_11334) (v_1@@1 T@FrameType) (q T@Field_11243_11334) (w@@1 T@FrameType) (r T@Field_11243_11334) (u T@FrameType) ) (!  (=> (and (InsidePredicate_22196_22196 p@@2 v_1@@1 q w@@1) (InsidePredicate_22196_22196 q w@@1 r u)) (InsidePredicate_22196_22196 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22196_22196 p@@2 v_1@@1 q w@@1) (InsidePredicate_22196_22196 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_11243_11334) (v_1@@2 T@FrameType) (q@@0 T@Field_11243_11334) (w@@2 T@FrameType) (r@@0 T@Field_26066_26067) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_22196_22196 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_22196_11333 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_22196_11333 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22196_22196 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_22196_11333 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_11243_11334) (v_1@@3 T@FrameType) (q@@1 T@Field_26066_26067) (w@@3 T@FrameType) (r@@1 T@Field_11243_11334) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_22196_11333 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_11333_22196 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_22196_22196 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22196_11333 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_11333_22196 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_11243_11334) (v_1@@4 T@FrameType) (q@@2 T@Field_26066_26067) (w@@4 T@FrameType) (r@@2 T@Field_26066_26067) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_22196_11333 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_11333_11333 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_22196_11333 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22196_11333 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_11333_11333 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_26066_26067) (v_1@@5 T@FrameType) (q@@3 T@Field_11243_11334) (w@@5 T@FrameType) (r@@3 T@Field_11243_11334) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_11333_22196 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_22196_22196 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_11333_22196 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11333_22196 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_22196_22196 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_26066_26067) (v_1@@6 T@FrameType) (q@@4 T@Field_11243_11334) (w@@6 T@FrameType) (r@@4 T@Field_26066_26067) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_11333_22196 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_22196_11333 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_11333_11333 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11333_22196 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_22196_11333 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_26066_26067) (v_1@@7 T@FrameType) (q@@5 T@Field_26066_26067) (w@@7 T@FrameType) (r@@5 T@Field_11243_11334) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_11333_11333 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_11333_22196 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_11333_22196 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11333_11333 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_11333_22196 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_26066_26067) (v_1@@8 T@FrameType) (q@@6 T@Field_26066_26067) (w@@8 T@FrameType) (r@@6 T@Field_26066_26067) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_11333_11333 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_11333_11333 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_11333_11333 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11333_11333 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_11333_11333 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@41 () T@PolymorphicMapType_22136)
(declare-fun this@@14 () T@Ref)
(declare-fun end@@14 () T@Ref)
(declare-fun Mask@3 () T@PolymorphicMapType_22157)
(declare-fun Mask@1 () T@PolymorphicMapType_22157)
(declare-fun Mask@2 () T@PolymorphicMapType_22157)
(declare-fun Mask@0 () T@PolymorphicMapType_22157)
(set-info :boogie-vc-id |lseg#definedness|)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon2_correct true))
(let ((anon3_Else_correct  (=> (= (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@41) this@@14 next) end@@14) (=> (and (= Mask@3 Mask@1) (= (ControlFlow 0 5) 1)) anon2_correct))))
(let ((anon3_Then_correct  (=> (not (= (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@41) this@@14 next) end@@14)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (HasDirectPerm_11240_11241 Mask@1 this@@14 next)) (=> (HasDirectPerm_11240_11241 Mask@1 this@@14 next) (=> (not (= (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@41) this@@14 next) null)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_11240_11241 Mask@1 this@@14 next)) (=> (HasDirectPerm_11240_11241 Mask@1 this@@14 next) (=> (and (and (= Mask@2 (PolymorphicMapType_22157 (store (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| Mask@1) null (lseg (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@41) this@@14 next) end@@14) (+ (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| Mask@1) null (lseg (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@41) this@@14 next) end@@14)) FullPerm)) (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| Mask@1) (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| Mask@1) (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| Mask@1) (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| Mask@1) (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| Mask@1) (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| Mask@1) (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| Mask@1) (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| Mask@1) (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| Mask@1))) (state Heap@@41 Mask@2)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 2) 1))) anon2_correct)))))))))
(let ((anon0_correct  (=> (state Heap@@41 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (and (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@41) this@@14 $allocated) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@41) end@@14 $allocated)) (and (not (= this@@14 null)) (= Mask@0 (PolymorphicMapType_22157 (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| ZeroMask) (store (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| ZeroMask) this@@14 value (+ (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| ZeroMask) this@@14 value) FullPerm)) (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| ZeroMask) (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| ZeroMask) (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| ZeroMask) (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| ZeroMask) (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| ZeroMask) (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| ZeroMask) (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| ZeroMask) (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| ZeroMask))))) (and (and (state Heap@@41 Mask@0) (not (= this@@14 null))) (and (= Mask@1 (PolymorphicMapType_22157 (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| Mask@0) (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| Mask@0) (store (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| Mask@0) this@@14 next (+ (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| Mask@0) this@@14 next) FullPerm)) (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| Mask@0) (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| Mask@0) (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| Mask@0) (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| Mask@0) (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| Mask@0) (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| Mask@0) (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| Mask@0))) (state Heap@@41 Mask@1)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_11240_11241 Mask@1 this@@14 next)) (=> (HasDirectPerm_11240_11241 Mask@1 this@@14 next) (and (=> (= (ControlFlow 0 6) 2) anon3_Then_correct) (=> (= (ControlFlow 0 6) 5) anon3_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 6) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
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
(declare-sort T@Field_22196_53 0)
(declare-sort T@Field_22209_22210 0)
(declare-sort T@Field_25573_1204 0)
(declare-sort T@Field_26066_26067 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_29321_29326 0)
(declare-sort T@Field_11243_11334 0)
(declare-sort T@Field_11243_29326 0)
(declare-sort T@Field_11333_1204 0)
(declare-sort T@Field_11333_11241 0)
(declare-sort T@Field_11333_53 0)
(declare-datatypes ((T@PolymorphicMapType_22157 0)) (((PolymorphicMapType_22157 (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| (Array T@Ref T@Field_26066_26067 Real)) (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| (Array T@Ref T@Field_25573_1204 Real)) (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| (Array T@Ref T@Field_22209_22210 Real)) (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| (Array T@Ref T@Field_11333_1204 Real)) (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| (Array T@Ref T@Field_11333_11241 Real)) (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| (Array T@Ref T@Field_11333_53 Real)) (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| (Array T@Ref T@Field_29321_29326 Real)) (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| (Array T@Ref T@Field_11243_11334 Real)) (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| (Array T@Ref T@Field_22196_53 Real)) (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| (Array T@Ref T@Field_11243_29326 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22685 0)) (((PolymorphicMapType_22685 (|PolymorphicMapType_22685_11243_1204#PolymorphicMapType_22685| (Array T@Ref T@Field_25573_1204 Bool)) (|PolymorphicMapType_22685_11240_11241#PolymorphicMapType_22685| (Array T@Ref T@Field_22209_22210 Bool)) (|PolymorphicMapType_22685_11243_53#PolymorphicMapType_22685| (Array T@Ref T@Field_22196_53 Bool)) (|PolymorphicMapType_22685_11243_26067#PolymorphicMapType_22685| (Array T@Ref T@Field_11243_11334 Bool)) (|PolymorphicMapType_22685_11243_82935#PolymorphicMapType_22685| (Array T@Ref T@Field_11243_29326 Bool)) (|PolymorphicMapType_22685_26066_1204#PolymorphicMapType_22685| (Array T@Ref T@Field_11333_1204 Bool)) (|PolymorphicMapType_22685_26066_11241#PolymorphicMapType_22685| (Array T@Ref T@Field_11333_11241 Bool)) (|PolymorphicMapType_22685_26066_53#PolymorphicMapType_22685| (Array T@Ref T@Field_11333_53 Bool)) (|PolymorphicMapType_22685_26066_26067#PolymorphicMapType_22685| (Array T@Ref T@Field_26066_26067 Bool)) (|PolymorphicMapType_22685_26066_83983#PolymorphicMapType_22685| (Array T@Ref T@Field_29321_29326 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22136 0)) (((PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| (Array T@Ref T@Field_22196_53 Bool)) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| (Array T@Ref T@Field_22209_22210 T@Ref)) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| (Array T@Ref T@Field_25573_1204 Int)) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| (Array T@Ref T@Field_26066_26067 T@FrameType)) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| (Array T@Ref T@Field_29321_29326 T@PolymorphicMapType_22685)) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| (Array T@Ref T@Field_11243_11334 T@FrameType)) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| (Array T@Ref T@Field_11243_29326 T@PolymorphicMapType_22685)) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| (Array T@Ref T@Field_11333_1204 Int)) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| (Array T@Ref T@Field_11333_11241 T@Ref)) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| (Array T@Ref T@Field_11333_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_22196_53)
(declare-fun next () T@Field_22209_22210)
(declare-fun value () T@Field_25573_1204)
(declare-fun succHeap (T@PolymorphicMapType_22136 T@PolymorphicMapType_22136) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_22136 T@PolymorphicMapType_22136) Bool)
(declare-fun state (T@PolymorphicMapType_22136 T@PolymorphicMapType_22157) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_22157) Bool)
(declare-fun |get'| (T@PolymorphicMapType_22136 T@Ref Int T@Ref) Int)
(declare-fun dummyFunction_1541 (Int) Bool)
(declare-fun |get#triggerStateless| (T@Ref Int T@Ref) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_22685)
(declare-fun |length'| (T@PolymorphicMapType_22136 T@Ref T@Ref) Int)
(declare-fun |length#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |lseg#trigger_11333| (T@PolymorphicMapType_22136 T@Field_26066_26067) Bool)
(declare-fun lseg (T@Ref T@Ref) T@Field_26066_26067)
(declare-fun |length#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun null () T@Ref)
(declare-fun IsPredicateField_11333_11334 (T@Field_26066_26067) Bool)
(declare-fun |lseg#everUsed_11333| (T@Field_26066_26067) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |length#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_22136 T@PolymorphicMapType_22136 T@PolymorphicMapType_22157) Bool)
(declare-fun PredicateMaskField_11333 (T@Field_26066_26067) T@Field_29321_29326)
(declare-fun HasDirectPerm_11333_11334 (T@PolymorphicMapType_22157 T@Ref T@Field_26066_26067) Bool)
(declare-fun IsPredicateField_11243_81478 (T@Field_11243_11334) Bool)
(declare-fun PredicateMaskField_11243 (T@Field_11243_11334) T@Field_11243_29326)
(declare-fun HasDirectPerm_11243_11334 (T@PolymorphicMapType_22157 T@Ref T@Field_11243_11334) Bool)
(declare-fun IsWandField_11333_85148 (T@Field_26066_26067) Bool)
(declare-fun WandMaskField_11333 (T@Field_26066_26067) T@Field_29321_29326)
(declare-fun IsWandField_11243_84791 (T@Field_11243_11334) Bool)
(declare-fun WandMaskField_11243 (T@Field_11243_11334) T@Field_11243_29326)
(declare-fun |lseg#sm| (T@Ref T@Ref) T@Field_29321_29326)
(declare-fun dummyHeap () T@PolymorphicMapType_22136)
(declare-fun ZeroMask () T@PolymorphicMapType_22157)
(declare-fun InsidePredicate_22196_22196 (T@Field_11243_11334 T@FrameType T@Field_11243_11334 T@FrameType) Bool)
(declare-fun InsidePredicate_11333_11333 (T@Field_26066_26067 T@FrameType T@Field_26066_26067 T@FrameType) Bool)
(declare-fun IsPredicateField_11240_11241 (T@Field_22209_22210) Bool)
(declare-fun IsWandField_11240_11241 (T@Field_22209_22210) Bool)
(declare-fun IsPredicateField_11243_1204 (T@Field_25573_1204) Bool)
(declare-fun IsWandField_11243_1204 (T@Field_25573_1204) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11243_92051 (T@Field_11243_29326) Bool)
(declare-fun IsWandField_11243_92067 (T@Field_11243_29326) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11243_53 (T@Field_22196_53) Bool)
(declare-fun IsWandField_11243_53 (T@Field_22196_53) Bool)
(declare-fun IsPredicateField_11333_91248 (T@Field_29321_29326) Bool)
(declare-fun IsWandField_11333_91264 (T@Field_29321_29326) Bool)
(declare-fun IsPredicateField_11333_53 (T@Field_11333_53) Bool)
(declare-fun IsWandField_11333_53 (T@Field_11333_53) Bool)
(declare-fun IsPredicateField_11333_11241 (T@Field_11333_11241) Bool)
(declare-fun IsWandField_11333_11241 (T@Field_11333_11241) Bool)
(declare-fun IsPredicateField_11333_1204 (T@Field_11333_1204) Bool)
(declare-fun IsWandField_11333_1204 (T@Field_11333_1204) Bool)
(declare-fun HasDirectPerm_11333_81233 (T@PolymorphicMapType_22157 T@Ref T@Field_29321_29326) Bool)
(declare-fun HasDirectPerm_11333_53 (T@PolymorphicMapType_22157 T@Ref T@Field_11333_53) Bool)
(declare-fun HasDirectPerm_11333_11241 (T@PolymorphicMapType_22157 T@Ref T@Field_11333_11241) Bool)
(declare-fun HasDirectPerm_11333_1204 (T@PolymorphicMapType_22157 T@Ref T@Field_11333_1204) Bool)
(declare-fun HasDirectPerm_11243_80092 (T@PolymorphicMapType_22157 T@Ref T@Field_11243_29326) Bool)
(declare-fun HasDirectPerm_11243_53 (T@PolymorphicMapType_22157 T@Ref T@Field_22196_53) Bool)
(declare-fun HasDirectPerm_11240_11241 (T@PolymorphicMapType_22157 T@Ref T@Field_22209_22210) Bool)
(declare-fun HasDirectPerm_11243_1204 (T@PolymorphicMapType_22157 T@Ref T@Field_25573_1204) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun length (T@PolymorphicMapType_22136 T@Ref T@Ref) Int)
(declare-fun get (T@PolymorphicMapType_22136 T@Ref Int T@Ref) Int)
(declare-fun sumMask (T@PolymorphicMapType_22157 T@PolymorphicMapType_22157 T@PolymorphicMapType_22157) Bool)
(declare-fun |get#frame| (T@FrameType T@Ref Int T@Ref) Int)
(declare-fun getPredWandId_11333_11334 (T@Field_26066_26067) Int)
(declare-fun InsidePredicate_22196_11333 (T@Field_11243_11334 T@FrameType T@Field_26066_26067 T@FrameType) Bool)
(declare-fun InsidePredicate_11333_22196 (T@Field_26066_26067 T@FrameType T@Field_11243_11334 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_22136) (Heap1 T@PolymorphicMapType_22136) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_22136) (Mask T@PolymorphicMapType_22157) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_22136) (Heap1@@0 T@PolymorphicMapType_22136) (Heap2 T@PolymorphicMapType_22136) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_22136) (this T@Ref) (i Int) (end T@Ref) ) (! (dummyFunction_1541 (|get#triggerStateless| this i end))
 :qid |stdinbpl.202:15|
 :skolemid |23|
 :pattern ( (|get'| Heap@@0 this i end))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_29321_29326) ) (!  (not (select (|PolymorphicMapType_22685_26066_83983#PolymorphicMapType_22685| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_26066_83983#PolymorphicMapType_22685| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_26066_26067) ) (!  (not (select (|PolymorphicMapType_22685_26066_26067#PolymorphicMapType_22685| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_26066_26067#PolymorphicMapType_22685| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11333_53) ) (!  (not (select (|PolymorphicMapType_22685_26066_53#PolymorphicMapType_22685| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_26066_53#PolymorphicMapType_22685| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11333_11241) ) (!  (not (select (|PolymorphicMapType_22685_26066_11241#PolymorphicMapType_22685| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_26066_11241#PolymorphicMapType_22685| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11333_1204) ) (!  (not (select (|PolymorphicMapType_22685_26066_1204#PolymorphicMapType_22685| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_26066_1204#PolymorphicMapType_22685| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_11243_29326) ) (!  (not (select (|PolymorphicMapType_22685_11243_82935#PolymorphicMapType_22685| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_11243_82935#PolymorphicMapType_22685| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_11243_11334) ) (!  (not (select (|PolymorphicMapType_22685_11243_26067#PolymorphicMapType_22685| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_11243_26067#PolymorphicMapType_22685| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_22196_53) ) (!  (not (select (|PolymorphicMapType_22685_11243_53#PolymorphicMapType_22685| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_11243_53#PolymorphicMapType_22685| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_22209_22210) ) (!  (not (select (|PolymorphicMapType_22685_11240_11241#PolymorphicMapType_22685| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_11240_11241#PolymorphicMapType_22685| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_25573_1204) ) (!  (not (select (|PolymorphicMapType_22685_11243_1204#PolymorphicMapType_22685| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22685_11243_1204#PolymorphicMapType_22685| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_22136) (Mask@@0 T@PolymorphicMapType_22157) (this@@0 T@Ref) (end@@0 T@Ref) ) (!  (=> (state Heap@@1 Mask@@0) (= (|length'| Heap@@1 this@@0 end@@0) (|length#frame| (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@1) null (lseg this@@0 end@@0)) this@@0 end@@0)))
 :qid |stdinbpl.372:15|
 :skolemid |30|
 :pattern ( (state Heap@@1 Mask@@0) (|length'| Heap@@1 this@@0 end@@0))
 :pattern ( (state Heap@@1 Mask@@0) (|length#triggerStateless| this@@0 end@@0) (|lseg#trigger_11333| Heap@@1 (lseg this@@0 end@@0)))
)))
(assert (forall ((this@@1 T@Ref) (end@@1 T@Ref) ) (! (IsPredicateField_11333_11334 (lseg this@@1 end@@1))
 :qid |stdinbpl.504:15|
 :skolemid |34|
 :pattern ( (lseg this@@1 end@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_22136) (this@@2 T@Ref) (end@@2 T@Ref) ) (! (dummyFunction_1541 (|length#triggerStateless| this@@2 end@@2))
 :qid |stdinbpl.359:15|
 :skolemid |28|
 :pattern ( (|length'| Heap@@2 this@@2 end@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_22136) (this@@3 T@Ref) (end@@3 T@Ref) ) (! (|lseg#everUsed_11333| (lseg this@@3 end@@3))
 :qid |stdinbpl.523:15|
 :skolemid |38|
 :pattern ( (|lseg#trigger_11333| Heap@@3 (lseg this@@3 end@@3)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_22136) (Mask@@1 T@PolymorphicMapType_22157) (this@@4 T@Ref) (end@@4 T@Ref) ) (!  (=> (and (state Heap@@4 Mask@@1) (or (< AssumeFunctionsAbove 1) (|length#trigger| (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@4) null (lseg this@@4 end@@4)) this@@4 end@@4))) (> (|length'| Heap@@4 this@@4 end@@4) 0))
 :qid |stdinbpl.378:15|
 :skolemid |31|
 :pattern ( (state Heap@@4 Mask@@1) (|length'| Heap@@4 this@@4 end@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_22136) (ExhaleHeap T@PolymorphicMapType_22136) (Mask@@2 T@PolymorphicMapType_22157) (pm_f_32 T@Field_26066_26067) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_11333_11334 Mask@@2 null pm_f_32) (IsPredicateField_11333_11334 pm_f_32)) (= (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@5) null (PredicateMaskField_11333 pm_f_32)) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap) null (PredicateMaskField_11333 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@2) (IsPredicateField_11333_11334 pm_f_32) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap) null (PredicateMaskField_11333 pm_f_32)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_22136) (ExhaleHeap@@0 T@PolymorphicMapType_22136) (Mask@@3 T@PolymorphicMapType_22157) (pm_f_32@@0 T@Field_11243_11334) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_11243_11334 Mask@@3 null pm_f_32@@0) (IsPredicateField_11243_81478 pm_f_32@@0)) (= (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@6) null (PredicateMaskField_11243 pm_f_32@@0)) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@0) null (PredicateMaskField_11243 pm_f_32@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@3) (IsPredicateField_11243_81478 pm_f_32@@0) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@0) null (PredicateMaskField_11243 pm_f_32@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_22136) (ExhaleHeap@@1 T@PolymorphicMapType_22136) (Mask@@4 T@PolymorphicMapType_22157) (pm_f_32@@1 T@Field_26066_26067) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_11333_11334 Mask@@4 null pm_f_32@@1) (IsWandField_11333_85148 pm_f_32@@1)) (= (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@7) null (WandMaskField_11333 pm_f_32@@1)) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@1) null (WandMaskField_11333 pm_f_32@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@4) (IsWandField_11333_85148 pm_f_32@@1) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@1) null (WandMaskField_11333 pm_f_32@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_22136) (ExhaleHeap@@2 T@PolymorphicMapType_22136) (Mask@@5 T@PolymorphicMapType_22157) (pm_f_32@@2 T@Field_11243_11334) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_11243_11334 Mask@@5 null pm_f_32@@2) (IsWandField_11243_84791 pm_f_32@@2)) (= (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@8) null (WandMaskField_11243 pm_f_32@@2)) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@2) null (WandMaskField_11243 pm_f_32@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@5) (IsWandField_11243_84791 pm_f_32@@2) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@2) null (WandMaskField_11243 pm_f_32@@2)))
)))
(assert (forall ((this@@5 T@Ref) (end@@5 T@Ref) (this2 T@Ref) (end2 T@Ref) ) (!  (=> (= (lseg this@@5 end@@5) (lseg this2 end2)) (and (= this@@5 this2) (= end@@5 end2)))
 :qid |stdinbpl.514:15|
 :skolemid |36|
 :pattern ( (lseg this@@5 end@@5) (lseg this2 end2))
)))
(assert (forall ((this@@6 T@Ref) (end@@6 T@Ref) (this2@@0 T@Ref) (end2@@0 T@Ref) ) (!  (=> (= (|lseg#sm| this@@6 end@@6) (|lseg#sm| this2@@0 end2@@0)) (and (= this@@6 this2@@0) (= end@@6 end2@@0)))
 :qid |stdinbpl.518:15|
 :skolemid |37|
 :pattern ( (|lseg#sm| this@@6 end@@6) (|lseg#sm| this2@@0 end2@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_22136) (ExhaleHeap@@3 T@PolymorphicMapType_22136) (Mask@@6 T@PolymorphicMapType_22157) (pm_f_32@@3 T@Field_26066_26067) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@6) (=> (and (HasDirectPerm_11333_11334 Mask@@6 null pm_f_32@@3) (IsPredicateField_11333_11334 pm_f_32@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_32 T@Ref) (f_41 T@Field_25573_1204) ) (!  (=> (select (|PolymorphicMapType_22685_11243_1204#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32 f_41) (= (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@9) o2_32 f_41) (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32 f_41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32 f_41))
)) (forall ((o2_32@@0 T@Ref) (f_41@@0 T@Field_22209_22210) ) (!  (=> (select (|PolymorphicMapType_22685_11240_11241#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32@@0 f_41@@0) (= (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@9) o2_32@@0 f_41@@0) (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@0 f_41@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@0 f_41@@0))
))) (forall ((o2_32@@1 T@Ref) (f_41@@1 T@Field_22196_53) ) (!  (=> (select (|PolymorphicMapType_22685_11243_53#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32@@1 f_41@@1) (= (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@9) o2_32@@1 f_41@@1) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@1 f_41@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@1 f_41@@1))
))) (forall ((o2_32@@2 T@Ref) (f_41@@2 T@Field_11243_11334) ) (!  (=> (select (|PolymorphicMapType_22685_11243_26067#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32@@2 f_41@@2) (= (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@9) o2_32@@2 f_41@@2) (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@2 f_41@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@2 f_41@@2))
))) (forall ((o2_32@@3 T@Ref) (f_41@@3 T@Field_11243_29326) ) (!  (=> (select (|PolymorphicMapType_22685_11243_82935#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32@@3 f_41@@3) (= (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@9) o2_32@@3 f_41@@3) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@3 f_41@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@3 f_41@@3))
))) (forall ((o2_32@@4 T@Ref) (f_41@@4 T@Field_11333_1204) ) (!  (=> (select (|PolymorphicMapType_22685_26066_1204#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32@@4 f_41@@4) (= (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@9) o2_32@@4 f_41@@4) (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@4 f_41@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@4 f_41@@4))
))) (forall ((o2_32@@5 T@Ref) (f_41@@5 T@Field_11333_11241) ) (!  (=> (select (|PolymorphicMapType_22685_26066_11241#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32@@5 f_41@@5) (= (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@9) o2_32@@5 f_41@@5) (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@5 f_41@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@5 f_41@@5))
))) (forall ((o2_32@@6 T@Ref) (f_41@@6 T@Field_11333_53) ) (!  (=> (select (|PolymorphicMapType_22685_26066_53#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32@@6 f_41@@6) (= (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@9) o2_32@@6 f_41@@6) (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@6 f_41@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@6 f_41@@6))
))) (forall ((o2_32@@7 T@Ref) (f_41@@7 T@Field_26066_26067) ) (!  (=> (select (|PolymorphicMapType_22685_26066_26067#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32@@7 f_41@@7) (= (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@9) o2_32@@7 f_41@@7) (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@7 f_41@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@7 f_41@@7))
))) (forall ((o2_32@@8 T@Ref) (f_41@@8 T@Field_29321_29326) ) (!  (=> (select (|PolymorphicMapType_22685_26066_83983#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) null (PredicateMaskField_11333 pm_f_32@@3))) o2_32@@8 f_41@@8) (= (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@9) o2_32@@8 f_41@@8) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@8 f_41@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@3) o2_32@@8 f_41@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@6) (IsPredicateField_11333_11334 pm_f_32@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_22136) (ExhaleHeap@@4 T@PolymorphicMapType_22136) (Mask@@7 T@PolymorphicMapType_22157) (pm_f_32@@4 T@Field_11243_11334) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@7) (=> (and (HasDirectPerm_11243_11334 Mask@@7 null pm_f_32@@4) (IsPredicateField_11243_81478 pm_f_32@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_32@@9 T@Ref) (f_41@@9 T@Field_25573_1204) ) (!  (=> (select (|PolymorphicMapType_22685_11243_1204#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@9 f_41@@9) (= (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@10) o2_32@@9 f_41@@9) (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@9 f_41@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@9 f_41@@9))
)) (forall ((o2_32@@10 T@Ref) (f_41@@10 T@Field_22209_22210) ) (!  (=> (select (|PolymorphicMapType_22685_11240_11241#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@10 f_41@@10) (= (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@10) o2_32@@10 f_41@@10) (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@10 f_41@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@10 f_41@@10))
))) (forall ((o2_32@@11 T@Ref) (f_41@@11 T@Field_22196_53) ) (!  (=> (select (|PolymorphicMapType_22685_11243_53#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@11 f_41@@11) (= (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@10) o2_32@@11 f_41@@11) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@11 f_41@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@11 f_41@@11))
))) (forall ((o2_32@@12 T@Ref) (f_41@@12 T@Field_11243_11334) ) (!  (=> (select (|PolymorphicMapType_22685_11243_26067#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@12 f_41@@12) (= (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@10) o2_32@@12 f_41@@12) (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@12 f_41@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@12 f_41@@12))
))) (forall ((o2_32@@13 T@Ref) (f_41@@13 T@Field_11243_29326) ) (!  (=> (select (|PolymorphicMapType_22685_11243_82935#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@13 f_41@@13) (= (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) o2_32@@13 f_41@@13) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@13 f_41@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@13 f_41@@13))
))) (forall ((o2_32@@14 T@Ref) (f_41@@14 T@Field_11333_1204) ) (!  (=> (select (|PolymorphicMapType_22685_26066_1204#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@14 f_41@@14) (= (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@10) o2_32@@14 f_41@@14) (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@14 f_41@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@14 f_41@@14))
))) (forall ((o2_32@@15 T@Ref) (f_41@@15 T@Field_11333_11241) ) (!  (=> (select (|PolymorphicMapType_22685_26066_11241#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@15 f_41@@15) (= (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@10) o2_32@@15 f_41@@15) (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@15 f_41@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@15 f_41@@15))
))) (forall ((o2_32@@16 T@Ref) (f_41@@16 T@Field_11333_53) ) (!  (=> (select (|PolymorphicMapType_22685_26066_53#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@16 f_41@@16) (= (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@10) o2_32@@16 f_41@@16) (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@16 f_41@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@16 f_41@@16))
))) (forall ((o2_32@@17 T@Ref) (f_41@@17 T@Field_26066_26067) ) (!  (=> (select (|PolymorphicMapType_22685_26066_26067#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@17 f_41@@17) (= (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@10) o2_32@@17 f_41@@17) (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@17 f_41@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@17 f_41@@17))
))) (forall ((o2_32@@18 T@Ref) (f_41@@18 T@Field_29321_29326) ) (!  (=> (select (|PolymorphicMapType_22685_26066_83983#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@10) null (PredicateMaskField_11243 pm_f_32@@4))) o2_32@@18 f_41@@18) (= (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@10) o2_32@@18 f_41@@18) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@18 f_41@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@4) o2_32@@18 f_41@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@7) (IsPredicateField_11243_81478 pm_f_32@@4))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_22136) (ExhaleHeap@@5 T@PolymorphicMapType_22136) (Mask@@8 T@PolymorphicMapType_22157) (pm_f_32@@5 T@Field_26066_26067) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@8) (=> (and (HasDirectPerm_11333_11334 Mask@@8 null pm_f_32@@5) (IsWandField_11333_85148 pm_f_32@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_32@@19 T@Ref) (f_41@@19 T@Field_25573_1204) ) (!  (=> (select (|PolymorphicMapType_22685_11243_1204#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@19 f_41@@19) (= (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@11) o2_32@@19 f_41@@19) (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@19 f_41@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@19 f_41@@19))
)) (forall ((o2_32@@20 T@Ref) (f_41@@20 T@Field_22209_22210) ) (!  (=> (select (|PolymorphicMapType_22685_11240_11241#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@20 f_41@@20) (= (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@11) o2_32@@20 f_41@@20) (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@20 f_41@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@20 f_41@@20))
))) (forall ((o2_32@@21 T@Ref) (f_41@@21 T@Field_22196_53) ) (!  (=> (select (|PolymorphicMapType_22685_11243_53#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@21 f_41@@21) (= (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@11) o2_32@@21 f_41@@21) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@21 f_41@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@21 f_41@@21))
))) (forall ((o2_32@@22 T@Ref) (f_41@@22 T@Field_11243_11334) ) (!  (=> (select (|PolymorphicMapType_22685_11243_26067#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@22 f_41@@22) (= (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@11) o2_32@@22 f_41@@22) (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@22 f_41@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@22 f_41@@22))
))) (forall ((o2_32@@23 T@Ref) (f_41@@23 T@Field_11243_29326) ) (!  (=> (select (|PolymorphicMapType_22685_11243_82935#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@23 f_41@@23) (= (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@11) o2_32@@23 f_41@@23) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@23 f_41@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@23 f_41@@23))
))) (forall ((o2_32@@24 T@Ref) (f_41@@24 T@Field_11333_1204) ) (!  (=> (select (|PolymorphicMapType_22685_26066_1204#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@24 f_41@@24) (= (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@11) o2_32@@24 f_41@@24) (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@24 f_41@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@24 f_41@@24))
))) (forall ((o2_32@@25 T@Ref) (f_41@@25 T@Field_11333_11241) ) (!  (=> (select (|PolymorphicMapType_22685_26066_11241#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@25 f_41@@25) (= (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@11) o2_32@@25 f_41@@25) (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@25 f_41@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@25 f_41@@25))
))) (forall ((o2_32@@26 T@Ref) (f_41@@26 T@Field_11333_53) ) (!  (=> (select (|PolymorphicMapType_22685_26066_53#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@26 f_41@@26) (= (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@11) o2_32@@26 f_41@@26) (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@26 f_41@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@26 f_41@@26))
))) (forall ((o2_32@@27 T@Ref) (f_41@@27 T@Field_26066_26067) ) (!  (=> (select (|PolymorphicMapType_22685_26066_26067#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@27 f_41@@27) (= (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@11) o2_32@@27 f_41@@27) (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@27 f_41@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@27 f_41@@27))
))) (forall ((o2_32@@28 T@Ref) (f_41@@28 T@Field_29321_29326) ) (!  (=> (select (|PolymorphicMapType_22685_26066_83983#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) null (WandMaskField_11333 pm_f_32@@5))) o2_32@@28 f_41@@28) (= (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@11) o2_32@@28 f_41@@28) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@28 f_41@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@5) o2_32@@28 f_41@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@8) (IsWandField_11333_85148 pm_f_32@@5))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_22136) (ExhaleHeap@@6 T@PolymorphicMapType_22136) (Mask@@9 T@PolymorphicMapType_22157) (pm_f_32@@6 T@Field_11243_11334) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@9) (=> (and (HasDirectPerm_11243_11334 Mask@@9 null pm_f_32@@6) (IsWandField_11243_84791 pm_f_32@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_32@@29 T@Ref) (f_41@@29 T@Field_25573_1204) ) (!  (=> (select (|PolymorphicMapType_22685_11243_1204#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@29 f_41@@29) (= (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@12) o2_32@@29 f_41@@29) (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@29 f_41@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@29 f_41@@29))
)) (forall ((o2_32@@30 T@Ref) (f_41@@30 T@Field_22209_22210) ) (!  (=> (select (|PolymorphicMapType_22685_11240_11241#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@30 f_41@@30) (= (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@12) o2_32@@30 f_41@@30) (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@30 f_41@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@30 f_41@@30))
))) (forall ((o2_32@@31 T@Ref) (f_41@@31 T@Field_22196_53) ) (!  (=> (select (|PolymorphicMapType_22685_11243_53#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@31 f_41@@31) (= (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@12) o2_32@@31 f_41@@31) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@31 f_41@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@31 f_41@@31))
))) (forall ((o2_32@@32 T@Ref) (f_41@@32 T@Field_11243_11334) ) (!  (=> (select (|PolymorphicMapType_22685_11243_26067#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@32 f_41@@32) (= (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@12) o2_32@@32 f_41@@32) (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@32 f_41@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@32 f_41@@32))
))) (forall ((o2_32@@33 T@Ref) (f_41@@33 T@Field_11243_29326) ) (!  (=> (select (|PolymorphicMapType_22685_11243_82935#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@33 f_41@@33) (= (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) o2_32@@33 f_41@@33) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@33 f_41@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@33 f_41@@33))
))) (forall ((o2_32@@34 T@Ref) (f_41@@34 T@Field_11333_1204) ) (!  (=> (select (|PolymorphicMapType_22685_26066_1204#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@34 f_41@@34) (= (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@12) o2_32@@34 f_41@@34) (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@34 f_41@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@34 f_41@@34))
))) (forall ((o2_32@@35 T@Ref) (f_41@@35 T@Field_11333_11241) ) (!  (=> (select (|PolymorphicMapType_22685_26066_11241#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@35 f_41@@35) (= (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@12) o2_32@@35 f_41@@35) (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@35 f_41@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@35 f_41@@35))
))) (forall ((o2_32@@36 T@Ref) (f_41@@36 T@Field_11333_53) ) (!  (=> (select (|PolymorphicMapType_22685_26066_53#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@36 f_41@@36) (= (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@12) o2_32@@36 f_41@@36) (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@36 f_41@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@36 f_41@@36))
))) (forall ((o2_32@@37 T@Ref) (f_41@@37 T@Field_26066_26067) ) (!  (=> (select (|PolymorphicMapType_22685_26066_26067#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@37 f_41@@37) (= (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@12) o2_32@@37 f_41@@37) (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@37 f_41@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@37 f_41@@37))
))) (forall ((o2_32@@38 T@Ref) (f_41@@38 T@Field_29321_29326) ) (!  (=> (select (|PolymorphicMapType_22685_26066_83983#PolymorphicMapType_22685| (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@12) null (WandMaskField_11243 pm_f_32@@6))) o2_32@@38 f_41@@38) (= (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@12) o2_32@@38 f_41@@38) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@38 f_41@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@6) o2_32@@38 f_41@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@9) (IsWandField_11243_84791 pm_f_32@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_22136) (ExhaleHeap@@7 T@PolymorphicMapType_22136) (Mask@@10 T@PolymorphicMapType_22157) (o_36 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@13) o_36 $allocated) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@7) o_36 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@7) o_36 $allocated))
)))
(assert (forall ((p T@Field_11243_11334) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_22196_22196 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22196_22196 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_26066_26067) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_11333_11333 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11333_11333 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_11240_11241 next)))
(assert  (not (IsWandField_11240_11241 next)))
(assert  (not (IsPredicateField_11243_1204 value)))
(assert  (not (IsWandField_11243_1204 value)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_22136) (ExhaleHeap@@8 T@PolymorphicMapType_22136) (Mask@@11 T@PolymorphicMapType_22157) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@14 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_22157) (o_2@@9 T@Ref) (f_4@@9 T@Field_11243_29326) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_11243_92051 f_4@@9))) (not (IsWandField_11243_92067 f_4@@9))) (<= (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_22157) (o_2@@10 T@Ref) (f_4@@10 T@Field_22196_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_11243_53 f_4@@10))) (not (IsWandField_11243_53 f_4@@10))) (<= (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_22157) (o_2@@11 T@Ref) (f_4@@11 T@Field_22209_22210) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_11240_11241 f_4@@11))) (not (IsWandField_11240_11241 f_4@@11))) (<= (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_22157) (o_2@@12 T@Ref) (f_4@@12 T@Field_25573_1204) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_11243_1204 f_4@@12))) (not (IsWandField_11243_1204 f_4@@12))) (<= (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_22157) (o_2@@13 T@Ref) (f_4@@13 T@Field_11243_11334) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_11243_81478 f_4@@13))) (not (IsWandField_11243_84791 f_4@@13))) (<= (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_22157) (o_2@@14 T@Ref) (f_4@@14 T@Field_29321_29326) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_11333_91248 f_4@@14))) (not (IsWandField_11333_91264 f_4@@14))) (<= (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_22157) (o_2@@15 T@Ref) (f_4@@15 T@Field_11333_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| Mask@@18) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_11333_53 f_4@@15))) (not (IsWandField_11333_53 f_4@@15))) (<= (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| Mask@@18) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| Mask@@18) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_22157) (o_2@@16 T@Ref) (f_4@@16 T@Field_11333_11241) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| Mask@@19) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_11333_11241 f_4@@16))) (not (IsWandField_11333_11241 f_4@@16))) (<= (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| Mask@@19) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| Mask@@19) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_22157) (o_2@@17 T@Ref) (f_4@@17 T@Field_11333_1204) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| Mask@@20) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_11333_1204 f_4@@17))) (not (IsWandField_11333_1204 f_4@@17))) (<= (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| Mask@@20) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| Mask@@20) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_22157) (o_2@@18 T@Ref) (f_4@@18 T@Field_26066_26067) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| Mask@@21) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_11333_11334 f_4@@18))) (not (IsWandField_11333_85148 f_4@@18))) (<= (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| Mask@@21) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| Mask@@21) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_22157) (o_2@@19 T@Ref) (f_4@@19 T@Field_29321_29326) ) (! (= (HasDirectPerm_11333_81233 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11333_81233 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_22157) (o_2@@20 T@Ref) (f_4@@20 T@Field_11333_53) ) (! (= (HasDirectPerm_11333_53 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11333_53 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_22157) (o_2@@21 T@Ref) (f_4@@21 T@Field_26066_26067) ) (! (= (HasDirectPerm_11333_11334 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11333_11334 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_22157) (o_2@@22 T@Ref) (f_4@@22 T@Field_11333_11241) ) (! (= (HasDirectPerm_11333_11241 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11333_11241 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_22157) (o_2@@23 T@Ref) (f_4@@23 T@Field_11333_1204) ) (! (= (HasDirectPerm_11333_1204 Mask@@26 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| Mask@@26) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11333_1204 Mask@@26 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_22157) (o_2@@24 T@Ref) (f_4@@24 T@Field_11243_29326) ) (! (= (HasDirectPerm_11243_80092 Mask@@27 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| Mask@@27) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11243_80092 Mask@@27 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_22157) (o_2@@25 T@Ref) (f_4@@25 T@Field_22196_53) ) (! (= (HasDirectPerm_11243_53 Mask@@28 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| Mask@@28) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11243_53 Mask@@28 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_22157) (o_2@@26 T@Ref) (f_4@@26 T@Field_11243_11334) ) (! (= (HasDirectPerm_11243_11334 Mask@@29 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| Mask@@29) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11243_11334 Mask@@29 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_22157) (o_2@@27 T@Ref) (f_4@@27 T@Field_22209_22210) ) (! (= (HasDirectPerm_11240_11241 Mask@@30 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| Mask@@30) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11240_11241 Mask@@30 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_22157) (o_2@@28 T@Ref) (f_4@@28 T@Field_25573_1204) ) (! (= (HasDirectPerm_11243_1204 Mask@@31 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| Mask@@31) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11243_1204 Mask@@31 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_22136) (ExhaleHeap@@9 T@PolymorphicMapType_22136) (Mask@@32 T@PolymorphicMapType_22157) (o_36@@0 T@Ref) (f_41@@39 T@Field_29321_29326) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@32) (=> (HasDirectPerm_11333_81233 Mask@@32 o_36@@0 f_41@@39) (= (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@15) o_36@@0 f_41@@39) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@9) o_36@@0 f_41@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@32) (select (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| ExhaleHeap@@9) o_36@@0 f_41@@39))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_22136) (ExhaleHeap@@10 T@PolymorphicMapType_22136) (Mask@@33 T@PolymorphicMapType_22157) (o_36@@1 T@Ref) (f_41@@40 T@Field_11333_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@33) (=> (HasDirectPerm_11333_53 Mask@@33 o_36@@1 f_41@@40) (= (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@16) o_36@@1 f_41@@40) (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@10) o_36@@1 f_41@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@33) (select (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| ExhaleHeap@@10) o_36@@1 f_41@@40))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_22136) (ExhaleHeap@@11 T@PolymorphicMapType_22136) (Mask@@34 T@PolymorphicMapType_22157) (o_36@@2 T@Ref) (f_41@@41 T@Field_26066_26067) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@34) (=> (HasDirectPerm_11333_11334 Mask@@34 o_36@@2 f_41@@41) (= (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@17) o_36@@2 f_41@@41) (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@11) o_36@@2 f_41@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@34) (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| ExhaleHeap@@11) o_36@@2 f_41@@41))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_22136) (ExhaleHeap@@12 T@PolymorphicMapType_22136) (Mask@@35 T@PolymorphicMapType_22157) (o_36@@3 T@Ref) (f_41@@42 T@Field_11333_11241) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@35) (=> (HasDirectPerm_11333_11241 Mask@@35 o_36@@3 f_41@@42) (= (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@18) o_36@@3 f_41@@42) (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@12) o_36@@3 f_41@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@35) (select (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| ExhaleHeap@@12) o_36@@3 f_41@@42))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_22136) (ExhaleHeap@@13 T@PolymorphicMapType_22136) (Mask@@36 T@PolymorphicMapType_22157) (o_36@@4 T@Ref) (f_41@@43 T@Field_11333_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@36) (=> (HasDirectPerm_11333_1204 Mask@@36 o_36@@4 f_41@@43) (= (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@19) o_36@@4 f_41@@43) (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@13) o_36@@4 f_41@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@36) (select (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| ExhaleHeap@@13) o_36@@4 f_41@@43))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_22136) (ExhaleHeap@@14 T@PolymorphicMapType_22136) (Mask@@37 T@PolymorphicMapType_22157) (o_36@@5 T@Ref) (f_41@@44 T@Field_11243_29326) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@37) (=> (HasDirectPerm_11243_80092 Mask@@37 o_36@@5 f_41@@44) (= (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@20) o_36@@5 f_41@@44) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@14) o_36@@5 f_41@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@37) (select (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| ExhaleHeap@@14) o_36@@5 f_41@@44))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_22136) (ExhaleHeap@@15 T@PolymorphicMapType_22136) (Mask@@38 T@PolymorphicMapType_22157) (o_36@@6 T@Ref) (f_41@@45 T@Field_22196_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@38) (=> (HasDirectPerm_11243_53 Mask@@38 o_36@@6 f_41@@45) (= (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@21) o_36@@6 f_41@@45) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@15) o_36@@6 f_41@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@38) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| ExhaleHeap@@15) o_36@@6 f_41@@45))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_22136) (ExhaleHeap@@16 T@PolymorphicMapType_22136) (Mask@@39 T@PolymorphicMapType_22157) (o_36@@7 T@Ref) (f_41@@46 T@Field_11243_11334) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@39) (=> (HasDirectPerm_11243_11334 Mask@@39 o_36@@7 f_41@@46) (= (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@22) o_36@@7 f_41@@46) (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@16) o_36@@7 f_41@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@39) (select (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| ExhaleHeap@@16) o_36@@7 f_41@@46))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_22136) (ExhaleHeap@@17 T@PolymorphicMapType_22136) (Mask@@40 T@PolymorphicMapType_22157) (o_36@@8 T@Ref) (f_41@@47 T@Field_22209_22210) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@40) (=> (HasDirectPerm_11240_11241 Mask@@40 o_36@@8 f_41@@47) (= (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@23) o_36@@8 f_41@@47) (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@17) o_36@@8 f_41@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@40) (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| ExhaleHeap@@17) o_36@@8 f_41@@47))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_22136) (ExhaleHeap@@18 T@PolymorphicMapType_22136) (Mask@@41 T@PolymorphicMapType_22157) (o_36@@9 T@Ref) (f_41@@48 T@Field_25573_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@41) (=> (HasDirectPerm_11243_1204 Mask@@41 o_36@@9 f_41@@48) (= (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@24) o_36@@9 f_41@@48) (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@18) o_36@@9 f_41@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@41) (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| ExhaleHeap@@18) o_36@@9 f_41@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_11243_29326) ) (! (= (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_22196_53) ) (! (= (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_22209_22210) ) (! (= (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_25573_1204) ) (! (= (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_11243_11334) ) (! (= (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_29321_29326) ) (! (= (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_11333_53) ) (! (= (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_11333_11241) ) (! (= (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_11333_1204) ) (! (= (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_26066_26067) ) (! (= (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_22136) (this@@7 T@Ref) (end@@7 T@Ref) ) (!  (and (= (length Heap@@25 this@@7 end@@7) (|length'| Heap@@25 this@@7 end@@7)) (dummyFunction_1541 (|length#triggerStateless| this@@7 end@@7)))
 :qid |stdinbpl.355:15|
 :skolemid |27|
 :pattern ( (length Heap@@25 this@@7 end@@7))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_22136) (Mask@@42 T@PolymorphicMapType_22157) (this@@8 T@Ref) (i@@0 Int) (end@@8 T@Ref) ) (!  (=> (and (state Heap@@26 Mask@@42) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 i@@0) (< i@@0 (length Heap@@26 this@@8 end@@8))) (= (get Heap@@26 this@@8 i@@0 end@@8) (ite (= i@@0 0) (select (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@26) this@@8 value) (|get'| Heap@@26 (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@26) this@@8 next) (- i@@0 1) end@@8)))))
 :qid |stdinbpl.208:15|
 :skolemid |24|
 :pattern ( (state Heap@@26 Mask@@42) (get Heap@@26 this@@8 i@@0 end@@8))
 :pattern ( (state Heap@@26 Mask@@42) (|get#triggerStateless| this@@8 i@@0 end@@8) (|lseg#trigger_11333| Heap@@26 (lseg this@@8 end@@8)))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_22157) (SummandMask1 T@PolymorphicMapType_22157) (SummandMask2 T@PolymorphicMapType_22157) (o_2@@39 T@Ref) (f_4@@39 T@Field_11243_29326) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22157_11243_89773#PolymorphicMapType_22157| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_22157) (SummandMask1@@0 T@PolymorphicMapType_22157) (SummandMask2@@0 T@PolymorphicMapType_22157) (o_2@@40 T@Ref) (f_4@@40 T@Field_22196_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22157_11243_53#PolymorphicMapType_22157| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_22157) (SummandMask1@@1 T@PolymorphicMapType_22157) (SummandMask2@@1 T@PolymorphicMapType_22157) (o_2@@41 T@Ref) (f_4@@41 T@Field_22209_22210) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22157_11240_11241#PolymorphicMapType_22157| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_22157) (SummandMask1@@2 T@PolymorphicMapType_22157) (SummandMask2@@2 T@PolymorphicMapType_22157) (o_2@@42 T@Ref) (f_4@@42 T@Field_25573_1204) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22157_11243_1204#PolymorphicMapType_22157| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_22157) (SummandMask1@@3 T@PolymorphicMapType_22157) (SummandMask2@@3 T@PolymorphicMapType_22157) (o_2@@43 T@Ref) (f_4@@43 T@Field_11243_11334) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22157_11243_11334#PolymorphicMapType_22157| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_22157) (SummandMask1@@4 T@PolymorphicMapType_22157) (SummandMask2@@4 T@PolymorphicMapType_22157) (o_2@@44 T@Ref) (f_4@@44 T@Field_29321_29326) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22157_11333_89374#PolymorphicMapType_22157| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_22157) (SummandMask1@@5 T@PolymorphicMapType_22157) (SummandMask2@@5 T@PolymorphicMapType_22157) (o_2@@45 T@Ref) (f_4@@45 T@Field_11333_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22157_11333_53#PolymorphicMapType_22157| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_22157) (SummandMask1@@6 T@PolymorphicMapType_22157) (SummandMask2@@6 T@PolymorphicMapType_22157) (o_2@@46 T@Ref) (f_4@@46 T@Field_11333_11241) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22157_11333_11241#PolymorphicMapType_22157| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_22157) (SummandMask1@@7 T@PolymorphicMapType_22157) (SummandMask2@@7 T@PolymorphicMapType_22157) (o_2@@47 T@Ref) (f_4@@47 T@Field_11333_1204) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22157_11333_1204#PolymorphicMapType_22157| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_22157) (SummandMask1@@8 T@PolymorphicMapType_22157) (SummandMask2@@8 T@PolymorphicMapType_22157) (o_2@@48 T@Ref) (f_4@@48 T@Field_26066_26067) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22157_11333_11334#PolymorphicMapType_22157| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_22136) (this@@9 T@Ref) (i@@1 Int) (end@@9 T@Ref) ) (!  (and (= (get Heap@@27 this@@9 i@@1 end@@9) (|get'| Heap@@27 this@@9 i@@1 end@@9)) (dummyFunction_1541 (|get#triggerStateless| this@@9 i@@1 end@@9)))
 :qid |stdinbpl.198:15|
 :skolemid |22|
 :pattern ( (get Heap@@27 this@@9 i@@1 end@@9))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_22136) (Mask@@43 T@PolymorphicMapType_22157) (this@@10 T@Ref) (i@@2 Int) (end@@10 T@Ref) ) (!  (=> (state Heap@@28 Mask@@43) (= (|get'| Heap@@28 this@@10 i@@2 end@@10) (|get#frame| (select (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@28) null (lseg this@@10 end@@10)) this@@10 i@@2 end@@10)))
 :qid |stdinbpl.215:15|
 :skolemid |25|
 :pattern ( (state Heap@@28 Mask@@43) (|get'| Heap@@28 this@@10 i@@2 end@@10))
 :pattern ( (state Heap@@28 Mask@@43) (|get#triggerStateless| this@@10 i@@2 end@@10) (|lseg#trigger_11333| Heap@@28 (lseg this@@10 end@@10)))
)))
(assert (forall ((this@@11 T@Ref) (end@@11 T@Ref) ) (! (= (getPredWandId_11333_11334 (lseg this@@11 end@@11)) 0)
 :qid |stdinbpl.508:15|
 :skolemid |35|
 :pattern ( (lseg this@@11 end@@11))
)))
(assert (forall ((this@@12 T@Ref) (end@@12 T@Ref) ) (! (= (PredicateMaskField_11333 (lseg this@@12 end@@12)) (|lseg#sm| this@@12 end@@12))
 :qid |stdinbpl.500:15|
 :skolemid |33|
 :pattern ( (PredicateMaskField_11333 (lseg this@@12 end@@12)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_22136) (o_24 T@Ref) (f_48 T@Field_29321_29326) (v T@PolymorphicMapType_22685) ) (! (succHeap Heap@@29 (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@29) (store (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@29) o_24 f_48 v) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@29) (store (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@29) o_24 f_48 v) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@29) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_22136) (o_24@@0 T@Ref) (f_48@@0 T@Field_26066_26067) (v@@0 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@30) (store (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@30) o_24@@0 f_48@@0 v@@0) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@30) (store (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@30) o_24@@0 f_48@@0 v@@0) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@30) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_22136) (o_24@@1 T@Ref) (f_48@@1 T@Field_11333_1204) (v@@1 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@31) (store (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@31) o_24@@1 f_48@@1 v@@1) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@31) (store (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@31) o_24@@1 f_48@@1 v@@1) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@31) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_22136) (o_24@@2 T@Ref) (f_48@@2 T@Field_11333_11241) (v@@2 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@32) (store (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@32) o_24@@2 f_48@@2 v@@2) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@32) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@32) (store (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@32) o_24@@2 f_48@@2 v@@2) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_22136) (o_24@@3 T@Ref) (f_48@@3 T@Field_11333_53) (v@@3 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@33) (store (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@33) o_24@@3 f_48@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@33) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@33) (store (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@33) o_24@@3 f_48@@3 v@@3)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_22136) (o_24@@4 T@Ref) (f_48@@4 T@Field_11243_29326) (v@@4 T@PolymorphicMapType_22685) ) (! (succHeap Heap@@34 (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@34) (store (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@34) o_24@@4 f_48@@4 v@@4) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@34) (store (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@34) o_24@@4 f_48@@4 v@@4) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@34) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_22136) (o_24@@5 T@Ref) (f_48@@5 T@Field_11243_11334) (v@@5 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@35) (store (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@35) o_24@@5 f_48@@5 v@@5) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@35) (store (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@35) o_24@@5 f_48@@5 v@@5) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@35) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_22136) (o_24@@6 T@Ref) (f_48@@6 T@Field_25573_1204) (v@@6 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@36) (store (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@36) o_24@@6 f_48@@6 v@@6) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@36) (store (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@36) o_24@@6 f_48@@6 v@@6) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@36) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_22136) (o_24@@7 T@Ref) (f_48@@7 T@Field_22209_22210) (v@@7 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@37) (store (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@37) o_24@@7 f_48@@7 v@@7) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@37) (store (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@37) o_24@@7 f_48@@7 v@@7) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@37) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_22136) (o_24@@8 T@Ref) (f_48@@8 T@Field_22196_53) (v@@8 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_22136 (store (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@38) o_24@@8 f_48@@8 v@@8) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22136 (store (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@38) o_24@@8 f_48@@8 v@@8) (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11243_1204#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11333_11334#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11338_29418#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11243_11334#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11243_80134#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11333_1204#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11333_11241#PolymorphicMapType_22136| Heap@@38) (|PolymorphicMapType_22136_11333_53#PolymorphicMapType_22136| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_22136) (Mask@@44 T@PolymorphicMapType_22157) (this@@13 T@Ref) (end@@13 T@Ref) ) (!  (=> (and (state Heap@@39 Mask@@44) (< AssumeFunctionsAbove 1)) (= (length Heap@@39 this@@13 end@@13) (ite (= (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@39) this@@13 next) end@@13) 1 (+ 1 (|length'| Heap@@39 (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@39) this@@13 next) end@@13)))))
 :qid |stdinbpl.365:15|
 :skolemid |29|
 :pattern ( (state Heap@@39 Mask@@44) (length Heap@@39 this@@13 end@@13))
 :pattern ( (state Heap@@39 Mask@@44) (|length#triggerStateless| this@@13 end@@13) (|lseg#trigger_11333| Heap@@39 (lseg this@@13 end@@13)))
)))
(assert (forall ((o_24@@9 T@Ref) (f_26 T@Field_22209_22210) (Heap@@40 T@PolymorphicMapType_22136) ) (!  (=> (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@40) o_24@@9 $allocated) (select (|PolymorphicMapType_22136_11112_53#PolymorphicMapType_22136| Heap@@40) (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@40) o_24@@9 f_26) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_22136_11115_11116#PolymorphicMapType_22136| Heap@@40) o_24@@9 f_26))
)))
(assert (forall ((p@@2 T@Field_11243_11334) (v_1@@1 T@FrameType) (q T@Field_11243_11334) (w@@1 T@FrameType) (r T@Field_11243_11334) (u T@FrameType) ) (!  (=> (and (InsidePredicate_22196_22196 p@@2 v_1@@1 q w@@1) (InsidePredicate_22196_22196 q w@@1 r u)) (InsidePredicate_22196_22196 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22196_22196 p@@2 v_1@@1 q w@@1) (InsidePredicate_22196_22196 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_11243_11334) (v_1@@2 T@FrameType) (q@@0 T@Field_11243_11334) (w@@2 T@FrameType) (r@@0 T@Field_26066_26067) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_22196_22196 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_22196_11333 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_22196_11333 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22196_22196 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_22196_11333 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_11243_11334) (v_1@@3 T@FrameType) (q@@1 T@Field_26066_26067) (w@@3 T@FrameType) (r@@1 T@Field_11243_11334) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_22196_11333 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_11333_22196 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_22196_22196 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22196_11333 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_11333_22196 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_11243_11334) (v_1@@4 T@FrameType) (q@@2 T@Field_26066_26067) (w@@4 T@FrameType) (r@@2 T@Field_26066_26067) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_22196_11333 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_11333_11333 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_22196_11333 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22196_11333 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_11333_11333 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_26066_26067) (v_1@@5 T@FrameType) (q@@3 T@Field_11243_11334) (w@@5 T@FrameType) (r@@3 T@Field_11243_11334) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_11333_22196 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_22196_22196 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_11333_22196 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11333_22196 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_22196_22196 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_26066_26067) (v_1@@6 T@FrameType) (q@@4 T@Field_11243_11334) (w@@6 T@FrameType) (r@@4 T@Field_26066_26067) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_11333_22196 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_22196_11333 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_11333_11333 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11333_22196 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_22196_11333 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_26066_26067) (v_1@@7 T@FrameType) (q@@5 T@Field_26066_26067) (w@@7 T@FrameType) (r@@5 T@Field_11243_11334) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_11333_11333 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_11333_22196 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_11333_22196 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11333_11333 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_11333_22196 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_26066_26067) (v_1@@8 T@FrameType) (q@@6 T@Field_26066_26067) (w@@8 T@FrameType) (r@@6 T@Field_26066_26067) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_11333_11333 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_11333_11333 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_11333_11333 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11333_11333 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_11333_11333 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

