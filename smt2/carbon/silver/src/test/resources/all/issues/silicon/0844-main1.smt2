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
(declare-sort T@Field_9229_53 0)
(declare-sort T@Field_9242_9243 0)
(declare-sort T@Field_13912_13913 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_15182_15183 0)
(declare-sort T@Field_12669_1364 0)
(declare-sort T@Field_13925_13930 0)
(declare-sort T@Field_15195_15200 0)
(declare-sort T@Field_5490_5560 0)
(declare-sort T@Field_5490_13930 0)
(declare-sort T@Field_5559_1364 0)
(declare-sort T@Field_5559_53 0)
(declare-sort T@Field_5559_9243 0)
(declare-sort T@Field_13912_1364 0)
(declare-sort T@Field_13912_53 0)
(declare-sort T@Field_13912_9243 0)
(declare-datatypes ((T@PolymorphicMapType_9190 0)) (((PolymorphicMapType_9190 (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| (Array T@Ref T@Field_12669_1364 Real)) (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| (Array T@Ref T@Field_13912_13913 Real)) (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| (Array T@Ref T@Field_15182_15183 Real)) (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| (Array T@Ref T@Field_5490_5560 Real)) (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| (Array T@Ref T@Field_9229_53 Real)) (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| (Array T@Ref T@Field_9242_9243 Real)) (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| (Array T@Ref T@Field_5490_13930 Real)) (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| (Array T@Ref T@Field_13912_1364 Real)) (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| (Array T@Ref T@Field_13912_53 Real)) (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| (Array T@Ref T@Field_13912_9243 Real)) (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| (Array T@Ref T@Field_13925_13930 Real)) (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| (Array T@Ref T@Field_5559_1364 Real)) (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| (Array T@Ref T@Field_5559_53 Real)) (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| (Array T@Ref T@Field_5559_9243 Real)) (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| (Array T@Ref T@Field_15195_15200 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9718 0)) (((PolymorphicMapType_9718 (|PolymorphicMapType_9718_5490_1364#PolymorphicMapType_9718| (Array T@Ref T@Field_12669_1364 Bool)) (|PolymorphicMapType_9718_5490_53#PolymorphicMapType_9718| (Array T@Ref T@Field_9229_53 Bool)) (|PolymorphicMapType_9718_5490_9243#PolymorphicMapType_9718| (Array T@Ref T@Field_9242_9243 Bool)) (|PolymorphicMapType_9718_5490_13913#PolymorphicMapType_9718| (Array T@Ref T@Field_5490_5560 Bool)) (|PolymorphicMapType_9718_5490_32880#PolymorphicMapType_9718| (Array T@Ref T@Field_5490_13930 Bool)) (|PolymorphicMapType_9718_13912_1364#PolymorphicMapType_9718| (Array T@Ref T@Field_13912_1364 Bool)) (|PolymorphicMapType_9718_13912_53#PolymorphicMapType_9718| (Array T@Ref T@Field_13912_53 Bool)) (|PolymorphicMapType_9718_13912_9243#PolymorphicMapType_9718| (Array T@Ref T@Field_13912_9243 Bool)) (|PolymorphicMapType_9718_13912_13913#PolymorphicMapType_9718| (Array T@Ref T@Field_13912_13913 Bool)) (|PolymorphicMapType_9718_13912_33928#PolymorphicMapType_9718| (Array T@Ref T@Field_13925_13930 Bool)) (|PolymorphicMapType_9718_15182_1364#PolymorphicMapType_9718| (Array T@Ref T@Field_5559_1364 Bool)) (|PolymorphicMapType_9718_15182_53#PolymorphicMapType_9718| (Array T@Ref T@Field_5559_53 Bool)) (|PolymorphicMapType_9718_15182_9243#PolymorphicMapType_9718| (Array T@Ref T@Field_5559_9243 Bool)) (|PolymorphicMapType_9718_15182_13913#PolymorphicMapType_9718| (Array T@Ref T@Field_15182_15183 Bool)) (|PolymorphicMapType_9718_15182_34976#PolymorphicMapType_9718| (Array T@Ref T@Field_15195_15200 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9169 0)) (((PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| (Array T@Ref T@Field_9229_53 Bool)) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| (Array T@Ref T@Field_9242_9243 T@Ref)) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| (Array T@Ref T@Field_13912_13913 T@FrameType)) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| (Array T@Ref T@Field_15182_15183 T@FrameType)) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| (Array T@Ref T@Field_12669_1364 Int)) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| (Array T@Ref T@Field_13925_13930 T@PolymorphicMapType_9718)) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| (Array T@Ref T@Field_15195_15200 T@PolymorphicMapType_9718)) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| (Array T@Ref T@Field_5490_5560 T@FrameType)) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| (Array T@Ref T@Field_5490_13930 T@PolymorphicMapType_9718)) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| (Array T@Ref T@Field_5559_1364 Int)) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| (Array T@Ref T@Field_5559_53 Bool)) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| (Array T@Ref T@Field_5559_9243 T@Ref)) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| (Array T@Ref T@Field_13912_1364 Int)) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| (Array T@Ref T@Field_13912_53 Bool)) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| (Array T@Ref T@Field_13912_9243 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_9229_53)
(declare-fun vint_1 () T@Field_12669_1364)
(declare-fun succHeap (T@PolymorphicMapType_9169 T@PolymorphicMapType_9169) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9169 T@PolymorphicMapType_9169) Bool)
(declare-fun state (T@PolymorphicMapType_9169 T@PolymorphicMapType_9190) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9190) Bool)
(declare-sort T@ArrayDomainType 0)
(declare-fun hide0 (T@ArrayDomainType Int Int) T@Field_13912_13913)
(declare-fun IsPredicateField_5532_5533 (T@Field_13912_13913) Bool)
(declare-fun hide1 (T@ArrayDomainType Int Int) T@Field_15182_15183)
(declare-fun IsPredicateField_5559_5560 (T@Field_15182_15183) Bool)
(declare-fun |hide0#trigger_5532| (T@PolymorphicMapType_9169 T@Field_13912_13913) Bool)
(declare-fun |hide0#everUsed_5532| (T@Field_13912_13913) Bool)
(declare-fun |hide1#trigger_5559| (T@PolymorphicMapType_9169 T@Field_15182_15183) Bool)
(declare-fun |hide1#everUsed_5559| (T@Field_15182_15183) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9718)
(declare-fun getPredWandId_5532_5533 (T@Field_13912_13913) Int)
(declare-fun getPredWandId_5559_5560 (T@Field_15182_15183) Int)
(declare-fun |aloc'| (T@PolymorphicMapType_9169 T@ArrayDomainType Int) T@Ref)
(declare-fun dummyFunction_5522 (T@Ref) Bool)
(declare-fun |aloc#triggerStateless| (T@ArrayDomainType Int) T@Ref)
(declare-fun |aloc#frame| (T@FrameType T@ArrayDomainType Int) T@Ref)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun PredicateMaskField_5532 (T@Field_13912_13913) T@Field_13925_13930)
(declare-fun |hide0#sm| (T@ArrayDomainType Int Int) T@Field_13925_13930)
(declare-fun PredicateMaskField_5559 (T@Field_15182_15183) T@Field_15195_15200)
(declare-fun |hide1#sm| (T@ArrayDomainType Int Int) T@Field_15195_15200)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9169 T@PolymorphicMapType_9169 T@PolymorphicMapType_9190) Bool)
(declare-fun null () T@Ref)
(declare-fun HasDirectPerm_13912_5560 (T@PolymorphicMapType_9190 T@Ref T@Field_13912_13913) Bool)
(declare-fun HasDirectPerm_5559_5560 (T@PolymorphicMapType_9190 T@Ref T@Field_15182_15183) Bool)
(declare-fun IsPredicateField_5490_31083 (T@Field_5490_5560) Bool)
(declare-fun PredicateMaskField_5490 (T@Field_5490_5560) T@Field_5490_13930)
(declare-fun HasDirectPerm_5490_5560 (T@PolymorphicMapType_9190 T@Ref T@Field_5490_5560) Bool)
(declare-fun IsWandField_13912_36779 (T@Field_13912_13913) Bool)
(declare-fun WandMaskField_13912 (T@Field_13912_13913) T@Field_13925_13930)
(declare-fun IsWandField_5559_36422 (T@Field_15182_15183) Bool)
(declare-fun WandMaskField_5559 (T@Field_15182_15183) T@Field_15195_15200)
(declare-fun IsWandField_5490_36065 (T@Field_5490_5560) Bool)
(declare-fun WandMaskField_5490 (T@Field_5490_5560) T@Field_5490_13930)
(declare-fun dummyHeap () T@PolymorphicMapType_9169)
(declare-fun ZeroMask () T@PolymorphicMapType_9190)
(declare-fun InsidePredicate_15182_15182 (T@Field_15182_15183 T@FrameType T@Field_15182_15183 T@FrameType) Bool)
(declare-fun InsidePredicate_13912_13912 (T@Field_13912_13913 T@FrameType T@Field_13912_13913 T@FrameType) Bool)
(declare-fun InsidePredicate_9229_9229 (T@Field_5490_5560 T@FrameType T@Field_5490_5560 T@FrameType) Bool)
(declare-fun IsPredicateField_5490_1364 (T@Field_12669_1364) Bool)
(declare-fun IsWandField_5490_1364 (T@Field_12669_1364) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5559_47097 (T@Field_15195_15200) Bool)
(declare-fun IsWandField_5559_47113 (T@Field_15195_15200) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5559_9243 (T@Field_5559_9243) Bool)
(declare-fun IsWandField_5559_9243 (T@Field_5559_9243) Bool)
(declare-fun IsPredicateField_5559_53 (T@Field_5559_53) Bool)
(declare-fun IsWandField_5559_53 (T@Field_5559_53) Bool)
(declare-fun IsPredicateField_5559_1364 (T@Field_5559_1364) Bool)
(declare-fun IsWandField_5559_1364 (T@Field_5559_1364) Bool)
(declare-fun IsPredicateField_5532_46266 (T@Field_13925_13930) Bool)
(declare-fun IsWandField_5532_46282 (T@Field_13925_13930) Bool)
(declare-fun IsPredicateField_5532_9243 (T@Field_13912_9243) Bool)
(declare-fun IsWandField_5532_9243 (T@Field_13912_9243) Bool)
(declare-fun IsPredicateField_5532_53 (T@Field_13912_53) Bool)
(declare-fun IsWandField_5532_53 (T@Field_13912_53) Bool)
(declare-fun IsPredicateField_5532_1364 (T@Field_13912_1364) Bool)
(declare-fun IsWandField_5532_1364 (T@Field_13912_1364) Bool)
(declare-fun IsPredicateField_5490_45435 (T@Field_5490_13930) Bool)
(declare-fun IsWandField_5490_45451 (T@Field_5490_13930) Bool)
(declare-fun IsPredicateField_5490_9243 (T@Field_9242_9243) Bool)
(declare-fun IsWandField_5490_9243 (T@Field_9242_9243) Bool)
(declare-fun IsPredicateField_5490_53 (T@Field_9229_53) Bool)
(declare-fun IsWandField_5490_53 (T@Field_9229_53) Bool)
(declare-fun HasDirectPerm_13912_30838 (T@PolymorphicMapType_9190 T@Ref T@Field_13925_13930) Bool)
(declare-fun HasDirectPerm_13912_9243 (T@PolymorphicMapType_9190 T@Ref T@Field_13912_9243) Bool)
(declare-fun HasDirectPerm_13912_53 (T@PolymorphicMapType_9190 T@Ref T@Field_13912_53) Bool)
(declare-fun HasDirectPerm_13912_1364 (T@PolymorphicMapType_9190 T@Ref T@Field_13912_1364) Bool)
(declare-fun HasDirectPerm_5559_29720 (T@PolymorphicMapType_9190 T@Ref T@Field_15195_15200) Bool)
(declare-fun HasDirectPerm_5559_9243 (T@PolymorphicMapType_9190 T@Ref T@Field_5559_9243) Bool)
(declare-fun HasDirectPerm_5559_53 (T@PolymorphicMapType_9190 T@Ref T@Field_5559_53) Bool)
(declare-fun HasDirectPerm_5559_1364 (T@PolymorphicMapType_9190 T@Ref T@Field_5559_1364) Bool)
(declare-fun HasDirectPerm_5490_28579 (T@PolymorphicMapType_9190 T@Ref T@Field_5490_13930) Bool)
(declare-fun HasDirectPerm_5490_9243 (T@PolymorphicMapType_9190 T@Ref T@Field_9242_9243) Bool)
(declare-fun HasDirectPerm_5490_53 (T@PolymorphicMapType_9190 T@Ref T@Field_9229_53) Bool)
(declare-fun HasDirectPerm_5490_1364 (T@PolymorphicMapType_9190 T@Ref T@Field_12669_1364) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun aloc_1 (T@PolymorphicMapType_9169 T@ArrayDomainType Int) T@Ref)
(declare-fun sumMask (T@PolymorphicMapType_9190 T@PolymorphicMapType_9190 T@PolymorphicMapType_9190) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |aloc#trigger| (T@FrameType T@ArrayDomainType Int) Bool)
(declare-fun alen (T@ArrayDomainType) Int)
(declare-fun loc_inv_1 (T@Ref) T@ArrayDomainType)
(declare-fun loc_inv_2 (T@Ref) Int)
(declare-fun array_loc (T@ArrayDomainType Int) T@Ref)
(declare-fun InsidePredicate_15182_13912 (T@Field_15182_15183 T@FrameType T@Field_13912_13913 T@FrameType) Bool)
(declare-fun InsidePredicate_15182_9229 (T@Field_15182_15183 T@FrameType T@Field_5490_5560 T@FrameType) Bool)
(declare-fun InsidePredicate_13912_15182 (T@Field_13912_13913 T@FrameType T@Field_15182_15183 T@FrameType) Bool)
(declare-fun InsidePredicate_13912_9229 (T@Field_13912_13913 T@FrameType T@Field_5490_5560 T@FrameType) Bool)
(declare-fun InsidePredicate_9229_15182 (T@Field_5490_5560 T@FrameType T@Field_15182_15183 T@FrameType) Bool)
(declare-fun InsidePredicate_9229_13912 (T@Field_5490_5560 T@FrameType T@Field_13912_13913 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_9169) (Heap1 T@PolymorphicMapType_9169) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9169) (Mask T@PolymorphicMapType_9190) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9169) (Heap1@@0 T@PolymorphicMapType_9169) (Heap2 T@PolymorphicMapType_9169) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((x T@ArrayDomainType) (n Int) (i Int) ) (! (IsPredicateField_5532_5533 (hide0 x n i))
 :qid |stdinbpl.323:15|
 :skolemid |31|
 :pattern ( (hide0 x n i))
)))
(assert (forall ((x@@0 T@ArrayDomainType) (n@@0 Int) (i@@0 Int) ) (! (IsPredicateField_5559_5560 (hide1 x@@0 n@@0 i@@0))
 :qid |stdinbpl.397:15|
 :skolemid |37|
 :pattern ( (hide1 x@@0 n@@0 i@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9169) (x@@1 T@ArrayDomainType) (n@@1 Int) (i@@1 Int) ) (! (|hide0#everUsed_5532| (hide0 x@@1 n@@1 i@@1))
 :qid |stdinbpl.342:15|
 :skolemid |35|
 :pattern ( (|hide0#trigger_5532| Heap@@0 (hide0 x@@1 n@@1 i@@1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9169) (x@@2 T@ArrayDomainType) (n@@2 Int) (i@@2 Int) ) (! (|hide1#everUsed_5559| (hide1 x@@2 n@@2 i@@2))
 :qid |stdinbpl.416:15|
 :skolemid |41|
 :pattern ( (|hide1#trigger_5559| Heap@@1 (hide1 x@@2 n@@2 i@@2)))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_15195_15200) ) (!  (not (select (|PolymorphicMapType_9718_15182_34976#PolymorphicMapType_9718| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9718_15182_34976#PolymorphicMapType_9718| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_15182_15183) ) (!  (not (select (|PolymorphicMapType_9718_15182_13913#PolymorphicMapType_9718| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9718_15182_13913#PolymorphicMapType_9718| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5559_9243) ) (!  (not (select (|PolymorphicMapType_9718_15182_9243#PolymorphicMapType_9718| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9718_15182_9243#PolymorphicMapType_9718| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5559_53) ) (!  (not (select (|PolymorphicMapType_9718_15182_53#PolymorphicMapType_9718| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9718_15182_53#PolymorphicMapType_9718| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5559_1364) ) (!  (not (select (|PolymorphicMapType_9718_15182_1364#PolymorphicMapType_9718| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9718_15182_1364#PolymorphicMapType_9718| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_13925_13930) ) (!  (not (select (|PolymorphicMapType_9718_13912_33928#PolymorphicMapType_9718| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9718_13912_33928#PolymorphicMapType_9718| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_13912_13913) ) (!  (not (select (|PolymorphicMapType_9718_13912_13913#PolymorphicMapType_9718| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9718_13912_13913#PolymorphicMapType_9718| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_13912_9243) ) (!  (not (select (|PolymorphicMapType_9718_13912_9243#PolymorphicMapType_9718| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9718_13912_9243#PolymorphicMapType_9718| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_13912_53) ) (!  (not (select (|PolymorphicMapType_9718_13912_53#PolymorphicMapType_9718| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9718_13912_53#PolymorphicMapType_9718| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_13912_1364) ) (!  (not (select (|PolymorphicMapType_9718_13912_1364#PolymorphicMapType_9718| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9718_13912_1364#PolymorphicMapType_9718| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_5490_13930) ) (!  (not (select (|PolymorphicMapType_9718_5490_32880#PolymorphicMapType_9718| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9718_5490_32880#PolymorphicMapType_9718| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_5490_5560) ) (!  (not (select (|PolymorphicMapType_9718_5490_13913#PolymorphicMapType_9718| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9718_5490_13913#PolymorphicMapType_9718| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_9242_9243) ) (!  (not (select (|PolymorphicMapType_9718_5490_9243#PolymorphicMapType_9718| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9718_5490_9243#PolymorphicMapType_9718| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_9229_53) ) (!  (not (select (|PolymorphicMapType_9718_5490_53#PolymorphicMapType_9718| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9718_5490_53#PolymorphicMapType_9718| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_12669_1364) ) (!  (not (select (|PolymorphicMapType_9718_5490_1364#PolymorphicMapType_9718| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9718_5490_1364#PolymorphicMapType_9718| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((x@@3 T@ArrayDomainType) (n@@3 Int) (i@@3 Int) ) (! (= (getPredWandId_5532_5533 (hide0 x@@3 n@@3 i@@3)) 0)
 :qid |stdinbpl.327:15|
 :skolemid |32|
 :pattern ( (hide0 x@@3 n@@3 i@@3))
)))
(assert (forall ((x@@4 T@ArrayDomainType) (n@@4 Int) (i@@4 Int) ) (! (= (getPredWandId_5559_5560 (hide1 x@@4 n@@4 i@@4)) 1)
 :qid |stdinbpl.401:15|
 :skolemid |38|
 :pattern ( (hide1 x@@4 n@@4 i@@4))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9169) (a_2 T@ArrayDomainType) (i@@5 Int) ) (! (dummyFunction_5522 (|aloc#triggerStateless| a_2 i@@5))
 :qid |stdinbpl.247:15|
 :skolemid |25|
 :pattern ( (|aloc'| Heap@@2 a_2 i@@5))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9169) (Mask@@0 T@PolymorphicMapType_9190) (a_2@@0 T@ArrayDomainType) (i@@6 Int) ) (!  (=> (state Heap@@3 Mask@@0) (= (|aloc'| Heap@@3 a_2@@0 i@@6) (|aloc#frame| EmptyFrame a_2@@0 i@@6)))
 :qid |stdinbpl.260:15|
 :skolemid |27|
 :pattern ( (state Heap@@3 Mask@@0) (|aloc'| Heap@@3 a_2@@0 i@@6))
)))
(assert (forall ((x@@5 T@ArrayDomainType) (n@@5 Int) (i@@7 Int) ) (! (= (PredicateMaskField_5532 (hide0 x@@5 n@@5 i@@7)) (|hide0#sm| x@@5 n@@5 i@@7))
 :qid |stdinbpl.319:15|
 :skolemid |30|
 :pattern ( (PredicateMaskField_5532 (hide0 x@@5 n@@5 i@@7)))
)))
(assert (forall ((x@@6 T@ArrayDomainType) (n@@6 Int) (i@@8 Int) ) (! (= (PredicateMaskField_5559 (hide1 x@@6 n@@6 i@@8)) (|hide1#sm| x@@6 n@@6 i@@8))
 :qid |stdinbpl.393:15|
 :skolemid |36|
 :pattern ( (PredicateMaskField_5559 (hide1 x@@6 n@@6 i@@8)))
)))
(assert (forall ((x@@7 T@ArrayDomainType) (n@@7 Int) (i@@9 Int) (x2 T@ArrayDomainType) (n2 Int) (i2 Int) ) (!  (=> (= (hide0 x@@7 n@@7 i@@9) (hide0 x2 n2 i2)) (and (= x@@7 x2) (and (= n@@7 n2) (= i@@9 i2))))
 :qid |stdinbpl.333:15|
 :skolemid |33|
 :pattern ( (hide0 x@@7 n@@7 i@@9) (hide0 x2 n2 i2))
)))
(assert (forall ((x@@8 T@ArrayDomainType) (n@@8 Int) (i@@10 Int) (x2@@0 T@ArrayDomainType) (n2@@0 Int) (i2@@0 Int) ) (!  (=> (= (|hide0#sm| x@@8 n@@8 i@@10) (|hide0#sm| x2@@0 n2@@0 i2@@0)) (and (= x@@8 x2@@0) (and (= n@@8 n2@@0) (= i@@10 i2@@0))))
 :qid |stdinbpl.337:15|
 :skolemid |34|
 :pattern ( (|hide0#sm| x@@8 n@@8 i@@10) (|hide0#sm| x2@@0 n2@@0 i2@@0))
)))
(assert (forall ((x@@9 T@ArrayDomainType) (n@@9 Int) (i@@11 Int) (x2@@1 T@ArrayDomainType) (n2@@1 Int) (i2@@1 Int) ) (!  (=> (= (hide1 x@@9 n@@9 i@@11) (hide1 x2@@1 n2@@1 i2@@1)) (and (= x@@9 x2@@1) (and (= n@@9 n2@@1) (= i@@11 i2@@1))))
 :qid |stdinbpl.407:15|
 :skolemid |39|
 :pattern ( (hide1 x@@9 n@@9 i@@11) (hide1 x2@@1 n2@@1 i2@@1))
)))
(assert (forall ((x@@10 T@ArrayDomainType) (n@@10 Int) (i@@12 Int) (x2@@2 T@ArrayDomainType) (n2@@2 Int) (i2@@2 Int) ) (!  (=> (= (|hide1#sm| x@@10 n@@10 i@@12) (|hide1#sm| x2@@2 n2@@2 i2@@2)) (and (= x@@10 x2@@2) (and (= n@@10 n2@@2) (= i@@12 i2@@2))))
 :qid |stdinbpl.411:15|
 :skolemid |40|
 :pattern ( (|hide1#sm| x@@10 n@@10 i@@12) (|hide1#sm| x2@@2 n2@@2 i2@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9169) (ExhaleHeap T@PolymorphicMapType_9169) (Mask@@1 T@PolymorphicMapType_9190) (pm_f_6 T@Field_13912_13913) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_13912_5560 Mask@@1 null pm_f_6) (IsPredicateField_5532_5533 pm_f_6)) (= (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@4) null (PredicateMaskField_5532 pm_f_6)) (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| ExhaleHeap) null (PredicateMaskField_5532 pm_f_6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_5532_5533 pm_f_6) (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| ExhaleHeap) null (PredicateMaskField_5532 pm_f_6)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9169) (ExhaleHeap@@0 T@PolymorphicMapType_9169) (Mask@@2 T@PolymorphicMapType_9190) (pm_f_6@@0 T@Field_15182_15183) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_5559_5560 Mask@@2 null pm_f_6@@0) (IsPredicateField_5559_5560 pm_f_6@@0)) (= (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@5) null (PredicateMaskField_5559 pm_f_6@@0)) (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| ExhaleHeap@@0) null (PredicateMaskField_5559 pm_f_6@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsPredicateField_5559_5560 pm_f_6@@0) (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| ExhaleHeap@@0) null (PredicateMaskField_5559 pm_f_6@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9169) (ExhaleHeap@@1 T@PolymorphicMapType_9169) (Mask@@3 T@PolymorphicMapType_9190) (pm_f_6@@1 T@Field_5490_5560) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_5490_5560 Mask@@3 null pm_f_6@@1) (IsPredicateField_5490_31083 pm_f_6@@1)) (= (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@6) null (PredicateMaskField_5490 pm_f_6@@1)) (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| ExhaleHeap@@1) null (PredicateMaskField_5490 pm_f_6@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (IsPredicateField_5490_31083 pm_f_6@@1) (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| ExhaleHeap@@1) null (PredicateMaskField_5490 pm_f_6@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9169) (ExhaleHeap@@2 T@PolymorphicMapType_9169) (Mask@@4 T@PolymorphicMapType_9190) (pm_f_6@@2 T@Field_13912_13913) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_13912_5560 Mask@@4 null pm_f_6@@2) (IsWandField_13912_36779 pm_f_6@@2)) (= (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@7) null (WandMaskField_13912 pm_f_6@@2)) (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| ExhaleHeap@@2) null (WandMaskField_13912 pm_f_6@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (IsWandField_13912_36779 pm_f_6@@2) (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| ExhaleHeap@@2) null (WandMaskField_13912 pm_f_6@@2)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9169) (ExhaleHeap@@3 T@PolymorphicMapType_9169) (Mask@@5 T@PolymorphicMapType_9190) (pm_f_6@@3 T@Field_15182_15183) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_5559_5560 Mask@@5 null pm_f_6@@3) (IsWandField_5559_36422 pm_f_6@@3)) (= (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@8) null (WandMaskField_5559 pm_f_6@@3)) (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| ExhaleHeap@@3) null (WandMaskField_5559 pm_f_6@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (IsWandField_5559_36422 pm_f_6@@3) (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| ExhaleHeap@@3) null (WandMaskField_5559 pm_f_6@@3)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9169) (ExhaleHeap@@4 T@PolymorphicMapType_9169) (Mask@@6 T@PolymorphicMapType_9190) (pm_f_6@@4 T@Field_5490_5560) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_5490_5560 Mask@@6 null pm_f_6@@4) (IsWandField_5490_36065 pm_f_6@@4)) (= (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@9) null (WandMaskField_5490 pm_f_6@@4)) (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| ExhaleHeap@@4) null (WandMaskField_5490 pm_f_6@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (IsWandField_5490_36065 pm_f_6@@4) (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| ExhaleHeap@@4) null (WandMaskField_5490 pm_f_6@@4)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9169) (ExhaleHeap@@5 T@PolymorphicMapType_9169) (Mask@@7 T@PolymorphicMapType_9190) (o_17 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (=> (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@10) o_17 $allocated) (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| ExhaleHeap@@5) o_17 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| ExhaleHeap@@5) o_17 $allocated))
)))
(assert (forall ((p T@Field_15182_15183) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_15182_15182 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15182_15182 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_13912_13913) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_13912_13912 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13912_13912 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_5490_5560) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_9229_9229 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9229_9229 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_5490_1364 vint_1)))
(assert  (not (IsWandField_5490_1364 vint_1)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9169) (ExhaleHeap@@6 T@PolymorphicMapType_9169) (Mask@@8 T@PolymorphicMapType_9190) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (succHeap Heap@@11 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9190) (o_2@@14 T@Ref) (f_4@@14 T@Field_15195_15200) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| Mask@@9) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5559_47097 f_4@@14))) (not (IsWandField_5559_47113 f_4@@14))) (<= (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| Mask@@9) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| Mask@@9) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9190) (o_2@@15 T@Ref) (f_4@@15 T@Field_5559_9243) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| Mask@@10) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5559_9243 f_4@@15))) (not (IsWandField_5559_9243 f_4@@15))) (<= (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| Mask@@10) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| Mask@@10) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9190) (o_2@@16 T@Ref) (f_4@@16 T@Field_5559_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| Mask@@11) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5559_53 f_4@@16))) (not (IsWandField_5559_53 f_4@@16))) (<= (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| Mask@@11) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| Mask@@11) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9190) (o_2@@17 T@Ref) (f_4@@17 T@Field_15182_15183) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| Mask@@12) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5559_5560 f_4@@17))) (not (IsWandField_5559_36422 f_4@@17))) (<= (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| Mask@@12) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| Mask@@12) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9190) (o_2@@18 T@Ref) (f_4@@18 T@Field_5559_1364) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| Mask@@13) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5559_1364 f_4@@18))) (not (IsWandField_5559_1364 f_4@@18))) (<= (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| Mask@@13) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| Mask@@13) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9190) (o_2@@19 T@Ref) (f_4@@19 T@Field_13925_13930) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| Mask@@14) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5532_46266 f_4@@19))) (not (IsWandField_5532_46282 f_4@@19))) (<= (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| Mask@@14) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| Mask@@14) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9190) (o_2@@20 T@Ref) (f_4@@20 T@Field_13912_9243) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| Mask@@15) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5532_9243 f_4@@20))) (not (IsWandField_5532_9243 f_4@@20))) (<= (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| Mask@@15) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| Mask@@15) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9190) (o_2@@21 T@Ref) (f_4@@21 T@Field_13912_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| Mask@@16) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5532_53 f_4@@21))) (not (IsWandField_5532_53 f_4@@21))) (<= (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| Mask@@16) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| Mask@@16) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9190) (o_2@@22 T@Ref) (f_4@@22 T@Field_13912_13913) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| Mask@@17) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5532_5533 f_4@@22))) (not (IsWandField_13912_36779 f_4@@22))) (<= (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| Mask@@17) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| Mask@@17) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9190) (o_2@@23 T@Ref) (f_4@@23 T@Field_13912_1364) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| Mask@@18) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5532_1364 f_4@@23))) (not (IsWandField_5532_1364 f_4@@23))) (<= (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| Mask@@18) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| Mask@@18) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9190) (o_2@@24 T@Ref) (f_4@@24 T@Field_5490_13930) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| Mask@@19) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5490_45435 f_4@@24))) (not (IsWandField_5490_45451 f_4@@24))) (<= (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| Mask@@19) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| Mask@@19) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9190) (o_2@@25 T@Ref) (f_4@@25 T@Field_9242_9243) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| Mask@@20) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5490_9243 f_4@@25))) (not (IsWandField_5490_9243 f_4@@25))) (<= (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| Mask@@20) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| Mask@@20) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9190) (o_2@@26 T@Ref) (f_4@@26 T@Field_9229_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| Mask@@21) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5490_53 f_4@@26))) (not (IsWandField_5490_53 f_4@@26))) (<= (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| Mask@@21) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| Mask@@21) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9190) (o_2@@27 T@Ref) (f_4@@27 T@Field_5490_5560) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| Mask@@22) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5490_31083 f_4@@27))) (not (IsWandField_5490_36065 f_4@@27))) (<= (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| Mask@@22) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| Mask@@22) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9190) (o_2@@28 T@Ref) (f_4@@28 T@Field_12669_1364) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| Mask@@23) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_5490_1364 f_4@@28))) (not (IsWandField_5490_1364 f_4@@28))) (<= (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| Mask@@23) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| Mask@@23) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9190) (o_2@@29 T@Ref) (f_4@@29 T@Field_13925_13930) ) (! (= (HasDirectPerm_13912_30838 Mask@@24 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| Mask@@24) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13912_30838 Mask@@24 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9190) (o_2@@30 T@Ref) (f_4@@30 T@Field_13912_9243) ) (! (= (HasDirectPerm_13912_9243 Mask@@25 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| Mask@@25) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13912_9243 Mask@@25 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9190) (o_2@@31 T@Ref) (f_4@@31 T@Field_13912_53) ) (! (= (HasDirectPerm_13912_53 Mask@@26 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| Mask@@26) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13912_53 Mask@@26 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9190) (o_2@@32 T@Ref) (f_4@@32 T@Field_13912_13913) ) (! (= (HasDirectPerm_13912_5560 Mask@@27 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| Mask@@27) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13912_5560 Mask@@27 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9190) (o_2@@33 T@Ref) (f_4@@33 T@Field_13912_1364) ) (! (= (HasDirectPerm_13912_1364 Mask@@28 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| Mask@@28) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13912_1364 Mask@@28 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9190) (o_2@@34 T@Ref) (f_4@@34 T@Field_15195_15200) ) (! (= (HasDirectPerm_5559_29720 Mask@@29 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| Mask@@29) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5559_29720 Mask@@29 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_9190) (o_2@@35 T@Ref) (f_4@@35 T@Field_5559_9243) ) (! (= (HasDirectPerm_5559_9243 Mask@@30 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| Mask@@30) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5559_9243 Mask@@30 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_9190) (o_2@@36 T@Ref) (f_4@@36 T@Field_5559_53) ) (! (= (HasDirectPerm_5559_53 Mask@@31 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| Mask@@31) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5559_53 Mask@@31 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_9190) (o_2@@37 T@Ref) (f_4@@37 T@Field_15182_15183) ) (! (= (HasDirectPerm_5559_5560 Mask@@32 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| Mask@@32) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5559_5560 Mask@@32 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_9190) (o_2@@38 T@Ref) (f_4@@38 T@Field_5559_1364) ) (! (= (HasDirectPerm_5559_1364 Mask@@33 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| Mask@@33) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5559_1364 Mask@@33 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_9190) (o_2@@39 T@Ref) (f_4@@39 T@Field_5490_13930) ) (! (= (HasDirectPerm_5490_28579 Mask@@34 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| Mask@@34) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5490_28579 Mask@@34 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_9190) (o_2@@40 T@Ref) (f_4@@40 T@Field_9242_9243) ) (! (= (HasDirectPerm_5490_9243 Mask@@35 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| Mask@@35) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5490_9243 Mask@@35 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_9190) (o_2@@41 T@Ref) (f_4@@41 T@Field_9229_53) ) (! (= (HasDirectPerm_5490_53 Mask@@36 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| Mask@@36) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5490_53 Mask@@36 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_9190) (o_2@@42 T@Ref) (f_4@@42 T@Field_5490_5560) ) (! (= (HasDirectPerm_5490_5560 Mask@@37 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| Mask@@37) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5490_5560 Mask@@37 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_9190) (o_2@@43 T@Ref) (f_4@@43 T@Field_12669_1364) ) (! (= (HasDirectPerm_5490_1364 Mask@@38 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| Mask@@38) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5490_1364 Mask@@38 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9169) (ExhaleHeap@@7 T@PolymorphicMapType_9169) (Mask@@39 T@PolymorphicMapType_9190) (o_17@@0 T@Ref) (f_25 T@Field_13925_13930) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@39) (=> (HasDirectPerm_13912_30838 Mask@@39 o_17@@0 f_25) (= (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@12) o_17@@0 f_25) (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| ExhaleHeap@@7) o_17@@0 f_25))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@39) (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| ExhaleHeap@@7) o_17@@0 f_25))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9169) (ExhaleHeap@@8 T@PolymorphicMapType_9169) (Mask@@40 T@PolymorphicMapType_9190) (o_17@@1 T@Ref) (f_25@@0 T@Field_13912_9243) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@40) (=> (HasDirectPerm_13912_9243 Mask@@40 o_17@@1 f_25@@0) (= (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@13) o_17@@1 f_25@@0) (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| ExhaleHeap@@8) o_17@@1 f_25@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@40) (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| ExhaleHeap@@8) o_17@@1 f_25@@0))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9169) (ExhaleHeap@@9 T@PolymorphicMapType_9169) (Mask@@41 T@PolymorphicMapType_9190) (o_17@@2 T@Ref) (f_25@@1 T@Field_13912_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@41) (=> (HasDirectPerm_13912_53 Mask@@41 o_17@@2 f_25@@1) (= (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@14) o_17@@2 f_25@@1) (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| ExhaleHeap@@9) o_17@@2 f_25@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@41) (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| ExhaleHeap@@9) o_17@@2 f_25@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9169) (ExhaleHeap@@10 T@PolymorphicMapType_9169) (Mask@@42 T@PolymorphicMapType_9190) (o_17@@3 T@Ref) (f_25@@2 T@Field_13912_13913) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@42) (=> (HasDirectPerm_13912_5560 Mask@@42 o_17@@3 f_25@@2) (= (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@15) o_17@@3 f_25@@2) (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| ExhaleHeap@@10) o_17@@3 f_25@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@42) (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| ExhaleHeap@@10) o_17@@3 f_25@@2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9169) (ExhaleHeap@@11 T@PolymorphicMapType_9169) (Mask@@43 T@PolymorphicMapType_9190) (o_17@@4 T@Ref) (f_25@@3 T@Field_13912_1364) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@43) (=> (HasDirectPerm_13912_1364 Mask@@43 o_17@@4 f_25@@3) (= (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@16) o_17@@4 f_25@@3) (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| ExhaleHeap@@11) o_17@@4 f_25@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@43) (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| ExhaleHeap@@11) o_17@@4 f_25@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9169) (ExhaleHeap@@12 T@PolymorphicMapType_9169) (Mask@@44 T@PolymorphicMapType_9190) (o_17@@5 T@Ref) (f_25@@4 T@Field_15195_15200) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@44) (=> (HasDirectPerm_5559_29720 Mask@@44 o_17@@5 f_25@@4) (= (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@17) o_17@@5 f_25@@4) (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| ExhaleHeap@@12) o_17@@5 f_25@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@44) (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| ExhaleHeap@@12) o_17@@5 f_25@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9169) (ExhaleHeap@@13 T@PolymorphicMapType_9169) (Mask@@45 T@PolymorphicMapType_9190) (o_17@@6 T@Ref) (f_25@@5 T@Field_5559_9243) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@45) (=> (HasDirectPerm_5559_9243 Mask@@45 o_17@@6 f_25@@5) (= (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@18) o_17@@6 f_25@@5) (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| ExhaleHeap@@13) o_17@@6 f_25@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@45) (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| ExhaleHeap@@13) o_17@@6 f_25@@5))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9169) (ExhaleHeap@@14 T@PolymorphicMapType_9169) (Mask@@46 T@PolymorphicMapType_9190) (o_17@@7 T@Ref) (f_25@@6 T@Field_5559_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@46) (=> (HasDirectPerm_5559_53 Mask@@46 o_17@@7 f_25@@6) (= (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@19) o_17@@7 f_25@@6) (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| ExhaleHeap@@14) o_17@@7 f_25@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@46) (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| ExhaleHeap@@14) o_17@@7 f_25@@6))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9169) (ExhaleHeap@@15 T@PolymorphicMapType_9169) (Mask@@47 T@PolymorphicMapType_9190) (o_17@@8 T@Ref) (f_25@@7 T@Field_15182_15183) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@47) (=> (HasDirectPerm_5559_5560 Mask@@47 o_17@@8 f_25@@7) (= (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@20) o_17@@8 f_25@@7) (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| ExhaleHeap@@15) o_17@@8 f_25@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@47) (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| ExhaleHeap@@15) o_17@@8 f_25@@7))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9169) (ExhaleHeap@@16 T@PolymorphicMapType_9169) (Mask@@48 T@PolymorphicMapType_9190) (o_17@@9 T@Ref) (f_25@@8 T@Field_5559_1364) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@48) (=> (HasDirectPerm_5559_1364 Mask@@48 o_17@@9 f_25@@8) (= (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@21) o_17@@9 f_25@@8) (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| ExhaleHeap@@16) o_17@@9 f_25@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@48) (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| ExhaleHeap@@16) o_17@@9 f_25@@8))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9169) (ExhaleHeap@@17 T@PolymorphicMapType_9169) (Mask@@49 T@PolymorphicMapType_9190) (o_17@@10 T@Ref) (f_25@@9 T@Field_5490_13930) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@49) (=> (HasDirectPerm_5490_28579 Mask@@49 o_17@@10 f_25@@9) (= (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@22) o_17@@10 f_25@@9) (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| ExhaleHeap@@17) o_17@@10 f_25@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@49) (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| ExhaleHeap@@17) o_17@@10 f_25@@9))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9169) (ExhaleHeap@@18 T@PolymorphicMapType_9169) (Mask@@50 T@PolymorphicMapType_9190) (o_17@@11 T@Ref) (f_25@@10 T@Field_9242_9243) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@50) (=> (HasDirectPerm_5490_9243 Mask@@50 o_17@@11 f_25@@10) (= (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@23) o_17@@11 f_25@@10) (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| ExhaleHeap@@18) o_17@@11 f_25@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@50) (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| ExhaleHeap@@18) o_17@@11 f_25@@10))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9169) (ExhaleHeap@@19 T@PolymorphicMapType_9169) (Mask@@51 T@PolymorphicMapType_9190) (o_17@@12 T@Ref) (f_25@@11 T@Field_9229_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@51) (=> (HasDirectPerm_5490_53 Mask@@51 o_17@@12 f_25@@11) (= (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@24) o_17@@12 f_25@@11) (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| ExhaleHeap@@19) o_17@@12 f_25@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@51) (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| ExhaleHeap@@19) o_17@@12 f_25@@11))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9169) (ExhaleHeap@@20 T@PolymorphicMapType_9169) (Mask@@52 T@PolymorphicMapType_9190) (o_17@@13 T@Ref) (f_25@@12 T@Field_5490_5560) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@52) (=> (HasDirectPerm_5490_5560 Mask@@52 o_17@@13 f_25@@12) (= (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@25) o_17@@13 f_25@@12) (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| ExhaleHeap@@20) o_17@@13 f_25@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@52) (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| ExhaleHeap@@20) o_17@@13 f_25@@12))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9169) (ExhaleHeap@@21 T@PolymorphicMapType_9169) (Mask@@53 T@PolymorphicMapType_9190) (o_17@@14 T@Ref) (f_25@@13 T@Field_12669_1364) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@53) (=> (HasDirectPerm_5490_1364 Mask@@53 o_17@@14 f_25@@13) (= (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@26) o_17@@14 f_25@@13) (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| ExhaleHeap@@21) o_17@@14 f_25@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@53) (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| ExhaleHeap@@21) o_17@@14 f_25@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_15195_15200) ) (! (= (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_5559_9243) ) (! (= (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_5559_53) ) (! (= (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_15182_15183) ) (! (= (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_5559_1364) ) (! (= (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_13925_13930) ) (! (= (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_13912_9243) ) (! (= (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_13912_53) ) (! (= (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_13912_13913) ) (! (= (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_13912_1364) ) (! (= (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_5490_13930) ) (! (= (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_9242_9243) ) (! (= (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_9229_53) ) (! (= (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_5490_5560) ) (! (= (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_12669_1364) ) (! (= (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9169) (a_2@@1 T@ArrayDomainType) (i@@13 Int) ) (!  (and (= (aloc_1 Heap@@27 a_2@@1 i@@13) (|aloc'| Heap@@27 a_2@@1 i@@13)) (dummyFunction_5522 (|aloc#triggerStateless| a_2@@1 i@@13)))
 :qid |stdinbpl.243:15|
 :skolemid |24|
 :pattern ( (aloc_1 Heap@@27 a_2@@1 i@@13))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9190) (SummandMask1 T@PolymorphicMapType_9190) (SummandMask2 T@PolymorphicMapType_9190) (o_2@@59 T@Ref) (f_4@@59 T@Field_15195_15200) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9190) (SummandMask1@@0 T@PolymorphicMapType_9190) (SummandMask2@@0 T@PolymorphicMapType_9190) (o_2@@60 T@Ref) (f_4@@60 T@Field_5559_9243) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9190) (SummandMask1@@1 T@PolymorphicMapType_9190) (SummandMask2@@1 T@PolymorphicMapType_9190) (o_2@@61 T@Ref) (f_4@@61 T@Field_5559_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9190) (SummandMask1@@2 T@PolymorphicMapType_9190) (SummandMask2@@2 T@PolymorphicMapType_9190) (o_2@@62 T@Ref) (f_4@@62 T@Field_15182_15183) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9190) (SummandMask1@@3 T@PolymorphicMapType_9190) (SummandMask2@@3 T@PolymorphicMapType_9190) (o_2@@63 T@Ref) (f_4@@63 T@Field_5559_1364) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9190) (SummandMask1@@4 T@PolymorphicMapType_9190) (SummandMask2@@4 T@PolymorphicMapType_9190) (o_2@@64 T@Ref) (f_4@@64 T@Field_13925_13930) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9190) (SummandMask1@@5 T@PolymorphicMapType_9190) (SummandMask2@@5 T@PolymorphicMapType_9190) (o_2@@65 T@Ref) (f_4@@65 T@Field_13912_9243) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9190) (SummandMask1@@6 T@PolymorphicMapType_9190) (SummandMask2@@6 T@PolymorphicMapType_9190) (o_2@@66 T@Ref) (f_4@@66 T@Field_13912_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9190) (SummandMask1@@7 T@PolymorphicMapType_9190) (SummandMask2@@7 T@PolymorphicMapType_9190) (o_2@@67 T@Ref) (f_4@@67 T@Field_13912_13913) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9190) (SummandMask1@@8 T@PolymorphicMapType_9190) (SummandMask2@@8 T@PolymorphicMapType_9190) (o_2@@68 T@Ref) (f_4@@68 T@Field_13912_1364) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_9190) (SummandMask1@@9 T@PolymorphicMapType_9190) (SummandMask2@@9 T@PolymorphicMapType_9190) (o_2@@69 T@Ref) (f_4@@69 T@Field_5490_13930) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_9190) (SummandMask1@@10 T@PolymorphicMapType_9190) (SummandMask2@@10 T@PolymorphicMapType_9190) (o_2@@70 T@Ref) (f_4@@70 T@Field_9242_9243) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_9190) (SummandMask1@@11 T@PolymorphicMapType_9190) (SummandMask2@@11 T@PolymorphicMapType_9190) (o_2@@71 T@Ref) (f_4@@71 T@Field_9229_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_9190) (SummandMask1@@12 T@PolymorphicMapType_9190) (SummandMask2@@12 T@PolymorphicMapType_9190) (o_2@@72 T@Ref) (f_4@@72 T@Field_5490_5560) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_9190) (SummandMask1@@13 T@PolymorphicMapType_9190) (SummandMask2@@13 T@PolymorphicMapType_9190) (o_2@@73 T@Ref) (f_4@@73 T@Field_12669_1364) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9169) (ExhaleHeap@@22 T@PolymorphicMapType_9169) (Mask@@54 T@PolymorphicMapType_9190) (pm_f_6@@5 T@Field_13912_13913) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@54) (=> (and (HasDirectPerm_13912_5560 Mask@@54 null pm_f_6@@5) (IsPredicateField_5532_5533 pm_f_6@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6 T@Ref) (f_25@@14 T@Field_12669_1364) ) (!  (=> (select (|PolymorphicMapType_9718_5490_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@28) null (PredicateMaskField_5532 pm_f_6@@5))) o2_6 f_25@@14) (= (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@28) o2_6 f_25@@14) (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6 f_25@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6 f_25@@14))
)) (forall ((o2_6@@0 T@Ref) (f_25@@15 T@Field_9229_53) ) (!  (=> (select (|PolymorphicMapType_9718_5490_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@28) null (PredicateMaskField_5532 pm_f_6@@5))) o2_6@@0 f_25@@15) (= (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@28) o2_6@@0 f_25@@15) (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@0 f_25@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@0 f_25@@15))
))) (forall ((o2_6@@1 T@Ref) (f_25@@16 T@Field_9242_9243) ) (!  (=> (select (|PolymorphicMapType_9718_5490_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@28) null (PredicateMaskField_5532 pm_f_6@@5))) o2_6@@1 f_25@@16) (= (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@28) o2_6@@1 f_25@@16) (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@1 f_25@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@1 f_25@@16))
))) (forall ((o2_6@@2 T@Ref) (f_25@@17 T@Field_5490_5560) ) (!  (=> (select (|PolymorphicMapType_9718_5490_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@28) null (PredicateMaskField_5532 pm_f_6@@5))) o2_6@@2 f_25@@17) (= (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@28) o2_6@@2 f_25@@17) (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@2 f_25@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@2 f_25@@17))
))) (forall ((o2_6@@3 T@Ref) (f_25@@18 T@Field_5490_13930) ) (!  (=> (select (|PolymorphicMapType_9718_5490_32880#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@28) null (PredicateMaskField_5532 pm_f_6@@5))) o2_6@@3 f_25@@18) (= (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@28) o2_6@@3 f_25@@18) (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@3 f_25@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@3 f_25@@18))
))) (forall ((o2_6@@4 T@Ref) (f_25@@19 T@Field_13912_1364) ) (!  (=> (select (|PolymorphicMapType_9718_13912_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@28) null (PredicateMaskField_5532 pm_f_6@@5))) o2_6@@4 f_25@@19) (= (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@28) o2_6@@4 f_25@@19) (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@4 f_25@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@4 f_25@@19))
))) (forall ((o2_6@@5 T@Ref) (f_25@@20 T@Field_13912_53) ) (!  (=> (select (|PolymorphicMapType_9718_13912_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@28) null (PredicateMaskField_5532 pm_f_6@@5))) o2_6@@5 f_25@@20) (= (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@28) o2_6@@5 f_25@@20) (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@5 f_25@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@5 f_25@@20))
))) (forall ((o2_6@@6 T@Ref) (f_25@@21 T@Field_13912_9243) ) (!  (=> (select (|PolymorphicMapType_9718_13912_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@28) null (PredicateMaskField_5532 pm_f_6@@5))) o2_6@@6 f_25@@21) (= (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@28) o2_6@@6 f_25@@21) (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@6 f_25@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@6 f_25@@21))
))) (forall ((o2_6@@7 T@Ref) (f_25@@22 T@Field_13912_13913) ) (!  (=> (select (|PolymorphicMapType_9718_13912_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@28) null (PredicateMaskField_5532 pm_f_6@@5))) o2_6@@7 f_25@@22) (= (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@28) o2_6@@7 f_25@@22) (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@7 f_25@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@7 f_25@@22))
))) (forall ((o2_6@@8 T@Ref) (f_25@@23 T@Field_13925_13930) ) (!  (=> (select (|PolymorphicMapType_9718_13912_33928#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@28) null (PredicateMaskField_5532 pm_f_6@@5))) o2_6@@8 f_25@@23) (= (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@28) o2_6@@8 f_25@@23) (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@8 f_25@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@8 f_25@@23))
))) (forall ((o2_6@@9 T@Ref) (f_25@@24 T@Field_5559_1364) ) (!  (=> (select (|PolymorphicMapType_9718_15182_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@28) null (PredicateMaskField_5532 pm_f_6@@5))) o2_6@@9 f_25@@24) (= (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@28) o2_6@@9 f_25@@24) (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@9 f_25@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@9 f_25@@24))
))) (forall ((o2_6@@10 T@Ref) (f_25@@25 T@Field_5559_53) ) (!  (=> (select (|PolymorphicMapType_9718_15182_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@28) null (PredicateMaskField_5532 pm_f_6@@5))) o2_6@@10 f_25@@25) (= (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@28) o2_6@@10 f_25@@25) (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@10 f_25@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@10 f_25@@25))
))) (forall ((o2_6@@11 T@Ref) (f_25@@26 T@Field_5559_9243) ) (!  (=> (select (|PolymorphicMapType_9718_15182_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@28) null (PredicateMaskField_5532 pm_f_6@@5))) o2_6@@11 f_25@@26) (= (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@28) o2_6@@11 f_25@@26) (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@11 f_25@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@11 f_25@@26))
))) (forall ((o2_6@@12 T@Ref) (f_25@@27 T@Field_15182_15183) ) (!  (=> (select (|PolymorphicMapType_9718_15182_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@28) null (PredicateMaskField_5532 pm_f_6@@5))) o2_6@@12 f_25@@27) (= (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@28) o2_6@@12 f_25@@27) (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@12 f_25@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@12 f_25@@27))
))) (forall ((o2_6@@13 T@Ref) (f_25@@28 T@Field_15195_15200) ) (!  (=> (select (|PolymorphicMapType_9718_15182_34976#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@28) null (PredicateMaskField_5532 pm_f_6@@5))) o2_6@@13 f_25@@28) (= (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@28) o2_6@@13 f_25@@28) (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@13 f_25@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| ExhaleHeap@@22) o2_6@@13 f_25@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@54) (IsPredicateField_5532_5533 pm_f_6@@5))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9169) (ExhaleHeap@@23 T@PolymorphicMapType_9169) (Mask@@55 T@PolymorphicMapType_9190) (pm_f_6@@6 T@Field_15182_15183) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@55) (=> (and (HasDirectPerm_5559_5560 Mask@@55 null pm_f_6@@6) (IsPredicateField_5559_5560 pm_f_6@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@14 T@Ref) (f_25@@29 T@Field_12669_1364) ) (!  (=> (select (|PolymorphicMapType_9718_5490_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@29) null (PredicateMaskField_5559 pm_f_6@@6))) o2_6@@14 f_25@@29) (= (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@29) o2_6@@14 f_25@@29) (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@14 f_25@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@14 f_25@@29))
)) (forall ((o2_6@@15 T@Ref) (f_25@@30 T@Field_9229_53) ) (!  (=> (select (|PolymorphicMapType_9718_5490_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@29) null (PredicateMaskField_5559 pm_f_6@@6))) o2_6@@15 f_25@@30) (= (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@29) o2_6@@15 f_25@@30) (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@15 f_25@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@15 f_25@@30))
))) (forall ((o2_6@@16 T@Ref) (f_25@@31 T@Field_9242_9243) ) (!  (=> (select (|PolymorphicMapType_9718_5490_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@29) null (PredicateMaskField_5559 pm_f_6@@6))) o2_6@@16 f_25@@31) (= (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@29) o2_6@@16 f_25@@31) (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@16 f_25@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@16 f_25@@31))
))) (forall ((o2_6@@17 T@Ref) (f_25@@32 T@Field_5490_5560) ) (!  (=> (select (|PolymorphicMapType_9718_5490_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@29) null (PredicateMaskField_5559 pm_f_6@@6))) o2_6@@17 f_25@@32) (= (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@29) o2_6@@17 f_25@@32) (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@17 f_25@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@17 f_25@@32))
))) (forall ((o2_6@@18 T@Ref) (f_25@@33 T@Field_5490_13930) ) (!  (=> (select (|PolymorphicMapType_9718_5490_32880#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@29) null (PredicateMaskField_5559 pm_f_6@@6))) o2_6@@18 f_25@@33) (= (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@29) o2_6@@18 f_25@@33) (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@18 f_25@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@18 f_25@@33))
))) (forall ((o2_6@@19 T@Ref) (f_25@@34 T@Field_13912_1364) ) (!  (=> (select (|PolymorphicMapType_9718_13912_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@29) null (PredicateMaskField_5559 pm_f_6@@6))) o2_6@@19 f_25@@34) (= (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@29) o2_6@@19 f_25@@34) (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@19 f_25@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@19 f_25@@34))
))) (forall ((o2_6@@20 T@Ref) (f_25@@35 T@Field_13912_53) ) (!  (=> (select (|PolymorphicMapType_9718_13912_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@29) null (PredicateMaskField_5559 pm_f_6@@6))) o2_6@@20 f_25@@35) (= (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@29) o2_6@@20 f_25@@35) (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@20 f_25@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@20 f_25@@35))
))) (forall ((o2_6@@21 T@Ref) (f_25@@36 T@Field_13912_9243) ) (!  (=> (select (|PolymorphicMapType_9718_13912_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@29) null (PredicateMaskField_5559 pm_f_6@@6))) o2_6@@21 f_25@@36) (= (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@29) o2_6@@21 f_25@@36) (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@21 f_25@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@21 f_25@@36))
))) (forall ((o2_6@@22 T@Ref) (f_25@@37 T@Field_13912_13913) ) (!  (=> (select (|PolymorphicMapType_9718_13912_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@29) null (PredicateMaskField_5559 pm_f_6@@6))) o2_6@@22 f_25@@37) (= (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@29) o2_6@@22 f_25@@37) (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@22 f_25@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@22 f_25@@37))
))) (forall ((o2_6@@23 T@Ref) (f_25@@38 T@Field_13925_13930) ) (!  (=> (select (|PolymorphicMapType_9718_13912_33928#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@29) null (PredicateMaskField_5559 pm_f_6@@6))) o2_6@@23 f_25@@38) (= (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@29) o2_6@@23 f_25@@38) (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@23 f_25@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@23 f_25@@38))
))) (forall ((o2_6@@24 T@Ref) (f_25@@39 T@Field_5559_1364) ) (!  (=> (select (|PolymorphicMapType_9718_15182_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@29) null (PredicateMaskField_5559 pm_f_6@@6))) o2_6@@24 f_25@@39) (= (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@29) o2_6@@24 f_25@@39) (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@24 f_25@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@24 f_25@@39))
))) (forall ((o2_6@@25 T@Ref) (f_25@@40 T@Field_5559_53) ) (!  (=> (select (|PolymorphicMapType_9718_15182_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@29) null (PredicateMaskField_5559 pm_f_6@@6))) o2_6@@25 f_25@@40) (= (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@29) o2_6@@25 f_25@@40) (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@25 f_25@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@25 f_25@@40))
))) (forall ((o2_6@@26 T@Ref) (f_25@@41 T@Field_5559_9243) ) (!  (=> (select (|PolymorphicMapType_9718_15182_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@29) null (PredicateMaskField_5559 pm_f_6@@6))) o2_6@@26 f_25@@41) (= (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@29) o2_6@@26 f_25@@41) (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@26 f_25@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@26 f_25@@41))
))) (forall ((o2_6@@27 T@Ref) (f_25@@42 T@Field_15182_15183) ) (!  (=> (select (|PolymorphicMapType_9718_15182_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@29) null (PredicateMaskField_5559 pm_f_6@@6))) o2_6@@27 f_25@@42) (= (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@29) o2_6@@27 f_25@@42) (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@27 f_25@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@27 f_25@@42))
))) (forall ((o2_6@@28 T@Ref) (f_25@@43 T@Field_15195_15200) ) (!  (=> (select (|PolymorphicMapType_9718_15182_34976#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@29) null (PredicateMaskField_5559 pm_f_6@@6))) o2_6@@28 f_25@@43) (= (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@29) o2_6@@28 f_25@@43) (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@28 f_25@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| ExhaleHeap@@23) o2_6@@28 f_25@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@55) (IsPredicateField_5559_5560 pm_f_6@@6))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9169) (ExhaleHeap@@24 T@PolymorphicMapType_9169) (Mask@@56 T@PolymorphicMapType_9190) (pm_f_6@@7 T@Field_5490_5560) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@56) (=> (and (HasDirectPerm_5490_5560 Mask@@56 null pm_f_6@@7) (IsPredicateField_5490_31083 pm_f_6@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@29 T@Ref) (f_25@@44 T@Field_12669_1364) ) (!  (=> (select (|PolymorphicMapType_9718_5490_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@30) null (PredicateMaskField_5490 pm_f_6@@7))) o2_6@@29 f_25@@44) (= (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@30) o2_6@@29 f_25@@44) (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@29 f_25@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@29 f_25@@44))
)) (forall ((o2_6@@30 T@Ref) (f_25@@45 T@Field_9229_53) ) (!  (=> (select (|PolymorphicMapType_9718_5490_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@30) null (PredicateMaskField_5490 pm_f_6@@7))) o2_6@@30 f_25@@45) (= (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@30) o2_6@@30 f_25@@45) (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@30 f_25@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@30 f_25@@45))
))) (forall ((o2_6@@31 T@Ref) (f_25@@46 T@Field_9242_9243) ) (!  (=> (select (|PolymorphicMapType_9718_5490_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@30) null (PredicateMaskField_5490 pm_f_6@@7))) o2_6@@31 f_25@@46) (= (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@30) o2_6@@31 f_25@@46) (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@31 f_25@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@31 f_25@@46))
))) (forall ((o2_6@@32 T@Ref) (f_25@@47 T@Field_5490_5560) ) (!  (=> (select (|PolymorphicMapType_9718_5490_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@30) null (PredicateMaskField_5490 pm_f_6@@7))) o2_6@@32 f_25@@47) (= (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@30) o2_6@@32 f_25@@47) (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@32 f_25@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@32 f_25@@47))
))) (forall ((o2_6@@33 T@Ref) (f_25@@48 T@Field_5490_13930) ) (!  (=> (select (|PolymorphicMapType_9718_5490_32880#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@30) null (PredicateMaskField_5490 pm_f_6@@7))) o2_6@@33 f_25@@48) (= (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@30) o2_6@@33 f_25@@48) (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@33 f_25@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@33 f_25@@48))
))) (forall ((o2_6@@34 T@Ref) (f_25@@49 T@Field_13912_1364) ) (!  (=> (select (|PolymorphicMapType_9718_13912_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@30) null (PredicateMaskField_5490 pm_f_6@@7))) o2_6@@34 f_25@@49) (= (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@30) o2_6@@34 f_25@@49) (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@34 f_25@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@34 f_25@@49))
))) (forall ((o2_6@@35 T@Ref) (f_25@@50 T@Field_13912_53) ) (!  (=> (select (|PolymorphicMapType_9718_13912_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@30) null (PredicateMaskField_5490 pm_f_6@@7))) o2_6@@35 f_25@@50) (= (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@30) o2_6@@35 f_25@@50) (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@35 f_25@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@35 f_25@@50))
))) (forall ((o2_6@@36 T@Ref) (f_25@@51 T@Field_13912_9243) ) (!  (=> (select (|PolymorphicMapType_9718_13912_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@30) null (PredicateMaskField_5490 pm_f_6@@7))) o2_6@@36 f_25@@51) (= (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@30) o2_6@@36 f_25@@51) (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@36 f_25@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@36 f_25@@51))
))) (forall ((o2_6@@37 T@Ref) (f_25@@52 T@Field_13912_13913) ) (!  (=> (select (|PolymorphicMapType_9718_13912_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@30) null (PredicateMaskField_5490 pm_f_6@@7))) o2_6@@37 f_25@@52) (= (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@30) o2_6@@37 f_25@@52) (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@37 f_25@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@37 f_25@@52))
))) (forall ((o2_6@@38 T@Ref) (f_25@@53 T@Field_13925_13930) ) (!  (=> (select (|PolymorphicMapType_9718_13912_33928#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@30) null (PredicateMaskField_5490 pm_f_6@@7))) o2_6@@38 f_25@@53) (= (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@30) o2_6@@38 f_25@@53) (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@38 f_25@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@38 f_25@@53))
))) (forall ((o2_6@@39 T@Ref) (f_25@@54 T@Field_5559_1364) ) (!  (=> (select (|PolymorphicMapType_9718_15182_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@30) null (PredicateMaskField_5490 pm_f_6@@7))) o2_6@@39 f_25@@54) (= (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@30) o2_6@@39 f_25@@54) (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@39 f_25@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@39 f_25@@54))
))) (forall ((o2_6@@40 T@Ref) (f_25@@55 T@Field_5559_53) ) (!  (=> (select (|PolymorphicMapType_9718_15182_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@30) null (PredicateMaskField_5490 pm_f_6@@7))) o2_6@@40 f_25@@55) (= (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@30) o2_6@@40 f_25@@55) (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@40 f_25@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@40 f_25@@55))
))) (forall ((o2_6@@41 T@Ref) (f_25@@56 T@Field_5559_9243) ) (!  (=> (select (|PolymorphicMapType_9718_15182_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@30) null (PredicateMaskField_5490 pm_f_6@@7))) o2_6@@41 f_25@@56) (= (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@30) o2_6@@41 f_25@@56) (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@41 f_25@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@41 f_25@@56))
))) (forall ((o2_6@@42 T@Ref) (f_25@@57 T@Field_15182_15183) ) (!  (=> (select (|PolymorphicMapType_9718_15182_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@30) null (PredicateMaskField_5490 pm_f_6@@7))) o2_6@@42 f_25@@57) (= (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@30) o2_6@@42 f_25@@57) (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@42 f_25@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@42 f_25@@57))
))) (forall ((o2_6@@43 T@Ref) (f_25@@58 T@Field_15195_15200) ) (!  (=> (select (|PolymorphicMapType_9718_15182_34976#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@30) null (PredicateMaskField_5490 pm_f_6@@7))) o2_6@@43 f_25@@58) (= (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@30) o2_6@@43 f_25@@58) (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@43 f_25@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| ExhaleHeap@@24) o2_6@@43 f_25@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@56) (IsPredicateField_5490_31083 pm_f_6@@7))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9169) (ExhaleHeap@@25 T@PolymorphicMapType_9169) (Mask@@57 T@PolymorphicMapType_9190) (pm_f_6@@8 T@Field_13912_13913) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@57) (=> (and (HasDirectPerm_13912_5560 Mask@@57 null pm_f_6@@8) (IsWandField_13912_36779 pm_f_6@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@44 T@Ref) (f_25@@59 T@Field_12669_1364) ) (!  (=> (select (|PolymorphicMapType_9718_5490_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@31) null (WandMaskField_13912 pm_f_6@@8))) o2_6@@44 f_25@@59) (= (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@31) o2_6@@44 f_25@@59) (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@44 f_25@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@44 f_25@@59))
)) (forall ((o2_6@@45 T@Ref) (f_25@@60 T@Field_9229_53) ) (!  (=> (select (|PolymorphicMapType_9718_5490_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@31) null (WandMaskField_13912 pm_f_6@@8))) o2_6@@45 f_25@@60) (= (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@31) o2_6@@45 f_25@@60) (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@45 f_25@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@45 f_25@@60))
))) (forall ((o2_6@@46 T@Ref) (f_25@@61 T@Field_9242_9243) ) (!  (=> (select (|PolymorphicMapType_9718_5490_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@31) null (WandMaskField_13912 pm_f_6@@8))) o2_6@@46 f_25@@61) (= (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@31) o2_6@@46 f_25@@61) (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@46 f_25@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@46 f_25@@61))
))) (forall ((o2_6@@47 T@Ref) (f_25@@62 T@Field_5490_5560) ) (!  (=> (select (|PolymorphicMapType_9718_5490_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@31) null (WandMaskField_13912 pm_f_6@@8))) o2_6@@47 f_25@@62) (= (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@31) o2_6@@47 f_25@@62) (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@47 f_25@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@47 f_25@@62))
))) (forall ((o2_6@@48 T@Ref) (f_25@@63 T@Field_5490_13930) ) (!  (=> (select (|PolymorphicMapType_9718_5490_32880#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@31) null (WandMaskField_13912 pm_f_6@@8))) o2_6@@48 f_25@@63) (= (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@31) o2_6@@48 f_25@@63) (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@48 f_25@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@48 f_25@@63))
))) (forall ((o2_6@@49 T@Ref) (f_25@@64 T@Field_13912_1364) ) (!  (=> (select (|PolymorphicMapType_9718_13912_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@31) null (WandMaskField_13912 pm_f_6@@8))) o2_6@@49 f_25@@64) (= (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@31) o2_6@@49 f_25@@64) (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@49 f_25@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@49 f_25@@64))
))) (forall ((o2_6@@50 T@Ref) (f_25@@65 T@Field_13912_53) ) (!  (=> (select (|PolymorphicMapType_9718_13912_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@31) null (WandMaskField_13912 pm_f_6@@8))) o2_6@@50 f_25@@65) (= (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@31) o2_6@@50 f_25@@65) (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@50 f_25@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@50 f_25@@65))
))) (forall ((o2_6@@51 T@Ref) (f_25@@66 T@Field_13912_9243) ) (!  (=> (select (|PolymorphicMapType_9718_13912_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@31) null (WandMaskField_13912 pm_f_6@@8))) o2_6@@51 f_25@@66) (= (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@31) o2_6@@51 f_25@@66) (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@51 f_25@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@51 f_25@@66))
))) (forall ((o2_6@@52 T@Ref) (f_25@@67 T@Field_13912_13913) ) (!  (=> (select (|PolymorphicMapType_9718_13912_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@31) null (WandMaskField_13912 pm_f_6@@8))) o2_6@@52 f_25@@67) (= (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@31) o2_6@@52 f_25@@67) (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@52 f_25@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@52 f_25@@67))
))) (forall ((o2_6@@53 T@Ref) (f_25@@68 T@Field_13925_13930) ) (!  (=> (select (|PolymorphicMapType_9718_13912_33928#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@31) null (WandMaskField_13912 pm_f_6@@8))) o2_6@@53 f_25@@68) (= (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@31) o2_6@@53 f_25@@68) (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@53 f_25@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@53 f_25@@68))
))) (forall ((o2_6@@54 T@Ref) (f_25@@69 T@Field_5559_1364) ) (!  (=> (select (|PolymorphicMapType_9718_15182_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@31) null (WandMaskField_13912 pm_f_6@@8))) o2_6@@54 f_25@@69) (= (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@31) o2_6@@54 f_25@@69) (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@54 f_25@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@54 f_25@@69))
))) (forall ((o2_6@@55 T@Ref) (f_25@@70 T@Field_5559_53) ) (!  (=> (select (|PolymorphicMapType_9718_15182_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@31) null (WandMaskField_13912 pm_f_6@@8))) o2_6@@55 f_25@@70) (= (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@31) o2_6@@55 f_25@@70) (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@55 f_25@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@55 f_25@@70))
))) (forall ((o2_6@@56 T@Ref) (f_25@@71 T@Field_5559_9243) ) (!  (=> (select (|PolymorphicMapType_9718_15182_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@31) null (WandMaskField_13912 pm_f_6@@8))) o2_6@@56 f_25@@71) (= (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@31) o2_6@@56 f_25@@71) (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@56 f_25@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@56 f_25@@71))
))) (forall ((o2_6@@57 T@Ref) (f_25@@72 T@Field_15182_15183) ) (!  (=> (select (|PolymorphicMapType_9718_15182_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@31) null (WandMaskField_13912 pm_f_6@@8))) o2_6@@57 f_25@@72) (= (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@31) o2_6@@57 f_25@@72) (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@57 f_25@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@57 f_25@@72))
))) (forall ((o2_6@@58 T@Ref) (f_25@@73 T@Field_15195_15200) ) (!  (=> (select (|PolymorphicMapType_9718_15182_34976#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@31) null (WandMaskField_13912 pm_f_6@@8))) o2_6@@58 f_25@@73) (= (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@31) o2_6@@58 f_25@@73) (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@58 f_25@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| ExhaleHeap@@25) o2_6@@58 f_25@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@57) (IsWandField_13912_36779 pm_f_6@@8))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9169) (ExhaleHeap@@26 T@PolymorphicMapType_9169) (Mask@@58 T@PolymorphicMapType_9190) (pm_f_6@@9 T@Field_15182_15183) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@58) (=> (and (HasDirectPerm_5559_5560 Mask@@58 null pm_f_6@@9) (IsWandField_5559_36422 pm_f_6@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@59 T@Ref) (f_25@@74 T@Field_12669_1364) ) (!  (=> (select (|PolymorphicMapType_9718_5490_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@32) null (WandMaskField_5559 pm_f_6@@9))) o2_6@@59 f_25@@74) (= (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@32) o2_6@@59 f_25@@74) (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@59 f_25@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@59 f_25@@74))
)) (forall ((o2_6@@60 T@Ref) (f_25@@75 T@Field_9229_53) ) (!  (=> (select (|PolymorphicMapType_9718_5490_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@32) null (WandMaskField_5559 pm_f_6@@9))) o2_6@@60 f_25@@75) (= (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@32) o2_6@@60 f_25@@75) (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@60 f_25@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@60 f_25@@75))
))) (forall ((o2_6@@61 T@Ref) (f_25@@76 T@Field_9242_9243) ) (!  (=> (select (|PolymorphicMapType_9718_5490_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@32) null (WandMaskField_5559 pm_f_6@@9))) o2_6@@61 f_25@@76) (= (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@32) o2_6@@61 f_25@@76) (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@61 f_25@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@61 f_25@@76))
))) (forall ((o2_6@@62 T@Ref) (f_25@@77 T@Field_5490_5560) ) (!  (=> (select (|PolymorphicMapType_9718_5490_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@32) null (WandMaskField_5559 pm_f_6@@9))) o2_6@@62 f_25@@77) (= (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@32) o2_6@@62 f_25@@77) (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@62 f_25@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@62 f_25@@77))
))) (forall ((o2_6@@63 T@Ref) (f_25@@78 T@Field_5490_13930) ) (!  (=> (select (|PolymorphicMapType_9718_5490_32880#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@32) null (WandMaskField_5559 pm_f_6@@9))) o2_6@@63 f_25@@78) (= (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@32) o2_6@@63 f_25@@78) (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@63 f_25@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@63 f_25@@78))
))) (forall ((o2_6@@64 T@Ref) (f_25@@79 T@Field_13912_1364) ) (!  (=> (select (|PolymorphicMapType_9718_13912_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@32) null (WandMaskField_5559 pm_f_6@@9))) o2_6@@64 f_25@@79) (= (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@32) o2_6@@64 f_25@@79) (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@64 f_25@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@64 f_25@@79))
))) (forall ((o2_6@@65 T@Ref) (f_25@@80 T@Field_13912_53) ) (!  (=> (select (|PolymorphicMapType_9718_13912_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@32) null (WandMaskField_5559 pm_f_6@@9))) o2_6@@65 f_25@@80) (= (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@32) o2_6@@65 f_25@@80) (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@65 f_25@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@65 f_25@@80))
))) (forall ((o2_6@@66 T@Ref) (f_25@@81 T@Field_13912_9243) ) (!  (=> (select (|PolymorphicMapType_9718_13912_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@32) null (WandMaskField_5559 pm_f_6@@9))) o2_6@@66 f_25@@81) (= (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@32) o2_6@@66 f_25@@81) (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@66 f_25@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@66 f_25@@81))
))) (forall ((o2_6@@67 T@Ref) (f_25@@82 T@Field_13912_13913) ) (!  (=> (select (|PolymorphicMapType_9718_13912_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@32) null (WandMaskField_5559 pm_f_6@@9))) o2_6@@67 f_25@@82) (= (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@32) o2_6@@67 f_25@@82) (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@67 f_25@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@67 f_25@@82))
))) (forall ((o2_6@@68 T@Ref) (f_25@@83 T@Field_13925_13930) ) (!  (=> (select (|PolymorphicMapType_9718_13912_33928#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@32) null (WandMaskField_5559 pm_f_6@@9))) o2_6@@68 f_25@@83) (= (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@32) o2_6@@68 f_25@@83) (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@68 f_25@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@68 f_25@@83))
))) (forall ((o2_6@@69 T@Ref) (f_25@@84 T@Field_5559_1364) ) (!  (=> (select (|PolymorphicMapType_9718_15182_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@32) null (WandMaskField_5559 pm_f_6@@9))) o2_6@@69 f_25@@84) (= (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@32) o2_6@@69 f_25@@84) (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@69 f_25@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@69 f_25@@84))
))) (forall ((o2_6@@70 T@Ref) (f_25@@85 T@Field_5559_53) ) (!  (=> (select (|PolymorphicMapType_9718_15182_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@32) null (WandMaskField_5559 pm_f_6@@9))) o2_6@@70 f_25@@85) (= (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@32) o2_6@@70 f_25@@85) (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@70 f_25@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@70 f_25@@85))
))) (forall ((o2_6@@71 T@Ref) (f_25@@86 T@Field_5559_9243) ) (!  (=> (select (|PolymorphicMapType_9718_15182_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@32) null (WandMaskField_5559 pm_f_6@@9))) o2_6@@71 f_25@@86) (= (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@32) o2_6@@71 f_25@@86) (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@71 f_25@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@71 f_25@@86))
))) (forall ((o2_6@@72 T@Ref) (f_25@@87 T@Field_15182_15183) ) (!  (=> (select (|PolymorphicMapType_9718_15182_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@32) null (WandMaskField_5559 pm_f_6@@9))) o2_6@@72 f_25@@87) (= (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@32) o2_6@@72 f_25@@87) (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@72 f_25@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@72 f_25@@87))
))) (forall ((o2_6@@73 T@Ref) (f_25@@88 T@Field_15195_15200) ) (!  (=> (select (|PolymorphicMapType_9718_15182_34976#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@32) null (WandMaskField_5559 pm_f_6@@9))) o2_6@@73 f_25@@88) (= (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@32) o2_6@@73 f_25@@88) (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@73 f_25@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| ExhaleHeap@@26) o2_6@@73 f_25@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@58) (IsWandField_5559_36422 pm_f_6@@9))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9169) (ExhaleHeap@@27 T@PolymorphicMapType_9169) (Mask@@59 T@PolymorphicMapType_9190) (pm_f_6@@10 T@Field_5490_5560) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@59) (=> (and (HasDirectPerm_5490_5560 Mask@@59 null pm_f_6@@10) (IsWandField_5490_36065 pm_f_6@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_6@@74 T@Ref) (f_25@@89 T@Field_12669_1364) ) (!  (=> (select (|PolymorphicMapType_9718_5490_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@33) null (WandMaskField_5490 pm_f_6@@10))) o2_6@@74 f_25@@89) (= (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@33) o2_6@@74 f_25@@89) (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@74 f_25@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@74 f_25@@89))
)) (forall ((o2_6@@75 T@Ref) (f_25@@90 T@Field_9229_53) ) (!  (=> (select (|PolymorphicMapType_9718_5490_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@33) null (WandMaskField_5490 pm_f_6@@10))) o2_6@@75 f_25@@90) (= (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@33) o2_6@@75 f_25@@90) (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@75 f_25@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@75 f_25@@90))
))) (forall ((o2_6@@76 T@Ref) (f_25@@91 T@Field_9242_9243) ) (!  (=> (select (|PolymorphicMapType_9718_5490_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@33) null (WandMaskField_5490 pm_f_6@@10))) o2_6@@76 f_25@@91) (= (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@33) o2_6@@76 f_25@@91) (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@76 f_25@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@76 f_25@@91))
))) (forall ((o2_6@@77 T@Ref) (f_25@@92 T@Field_5490_5560) ) (!  (=> (select (|PolymorphicMapType_9718_5490_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@33) null (WandMaskField_5490 pm_f_6@@10))) o2_6@@77 f_25@@92) (= (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@33) o2_6@@77 f_25@@92) (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@77 f_25@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@77 f_25@@92))
))) (forall ((o2_6@@78 T@Ref) (f_25@@93 T@Field_5490_13930) ) (!  (=> (select (|PolymorphicMapType_9718_5490_32880#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@33) null (WandMaskField_5490 pm_f_6@@10))) o2_6@@78 f_25@@93) (= (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@33) o2_6@@78 f_25@@93) (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@78 f_25@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@78 f_25@@93))
))) (forall ((o2_6@@79 T@Ref) (f_25@@94 T@Field_13912_1364) ) (!  (=> (select (|PolymorphicMapType_9718_13912_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@33) null (WandMaskField_5490 pm_f_6@@10))) o2_6@@79 f_25@@94) (= (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@33) o2_6@@79 f_25@@94) (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@79 f_25@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@79 f_25@@94))
))) (forall ((o2_6@@80 T@Ref) (f_25@@95 T@Field_13912_53) ) (!  (=> (select (|PolymorphicMapType_9718_13912_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@33) null (WandMaskField_5490 pm_f_6@@10))) o2_6@@80 f_25@@95) (= (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@33) o2_6@@80 f_25@@95) (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@80 f_25@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@80 f_25@@95))
))) (forall ((o2_6@@81 T@Ref) (f_25@@96 T@Field_13912_9243) ) (!  (=> (select (|PolymorphicMapType_9718_13912_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@33) null (WandMaskField_5490 pm_f_6@@10))) o2_6@@81 f_25@@96) (= (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@33) o2_6@@81 f_25@@96) (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@81 f_25@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@81 f_25@@96))
))) (forall ((o2_6@@82 T@Ref) (f_25@@97 T@Field_13912_13913) ) (!  (=> (select (|PolymorphicMapType_9718_13912_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@33) null (WandMaskField_5490 pm_f_6@@10))) o2_6@@82 f_25@@97) (= (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@33) o2_6@@82 f_25@@97) (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@82 f_25@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@82 f_25@@97))
))) (forall ((o2_6@@83 T@Ref) (f_25@@98 T@Field_13925_13930) ) (!  (=> (select (|PolymorphicMapType_9718_13912_33928#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@33) null (WandMaskField_5490 pm_f_6@@10))) o2_6@@83 f_25@@98) (= (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@33) o2_6@@83 f_25@@98) (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@83 f_25@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@83 f_25@@98))
))) (forall ((o2_6@@84 T@Ref) (f_25@@99 T@Field_5559_1364) ) (!  (=> (select (|PolymorphicMapType_9718_15182_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@33) null (WandMaskField_5490 pm_f_6@@10))) o2_6@@84 f_25@@99) (= (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@33) o2_6@@84 f_25@@99) (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@84 f_25@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@84 f_25@@99))
))) (forall ((o2_6@@85 T@Ref) (f_25@@100 T@Field_5559_53) ) (!  (=> (select (|PolymorphicMapType_9718_15182_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@33) null (WandMaskField_5490 pm_f_6@@10))) o2_6@@85 f_25@@100) (= (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@33) o2_6@@85 f_25@@100) (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@85 f_25@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@85 f_25@@100))
))) (forall ((o2_6@@86 T@Ref) (f_25@@101 T@Field_5559_9243) ) (!  (=> (select (|PolymorphicMapType_9718_15182_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@33) null (WandMaskField_5490 pm_f_6@@10))) o2_6@@86 f_25@@101) (= (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@33) o2_6@@86 f_25@@101) (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@86 f_25@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@86 f_25@@101))
))) (forall ((o2_6@@87 T@Ref) (f_25@@102 T@Field_15182_15183) ) (!  (=> (select (|PolymorphicMapType_9718_15182_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@33) null (WandMaskField_5490 pm_f_6@@10))) o2_6@@87 f_25@@102) (= (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@33) o2_6@@87 f_25@@102) (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@87 f_25@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@87 f_25@@102))
))) (forall ((o2_6@@88 T@Ref) (f_25@@103 T@Field_15195_15200) ) (!  (=> (select (|PolymorphicMapType_9718_15182_34976#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@33) null (WandMaskField_5490 pm_f_6@@10))) o2_6@@88 f_25@@103) (= (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@33) o2_6@@88 f_25@@103) (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@88 f_25@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| ExhaleHeap@@27) o2_6@@88 f_25@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@59) (IsWandField_5490_36065 pm_f_6@@10))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_9169) (Mask@@60 T@PolymorphicMapType_9190) (a_2@@2 T@ArrayDomainType) (i@@14 Int) ) (!  (=> (and (state Heap@@34 Mask@@60) (or (< AssumeFunctionsAbove 0) (|aloc#trigger| EmptyFrame a_2@@2 i@@14))) (=> (and (<= 0 i@@14) (< i@@14 (alen a_2@@2))) (= (loc_inv_1 (|aloc'| Heap@@34 a_2@@2 i@@14)) a_2@@2)))
 :qid |stdinbpl.266:15|
 :skolemid |28|
 :pattern ( (state Heap@@34 Mask@@60) (|aloc'| Heap@@34 a_2@@2 i@@14))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_9169) (Mask@@61 T@PolymorphicMapType_9190) (a_2@@3 T@ArrayDomainType) (i@@15 Int) ) (!  (=> (and (state Heap@@35 Mask@@61) (or (< AssumeFunctionsAbove 0) (|aloc#trigger| EmptyFrame a_2@@3 i@@15))) (=> (and (<= 0 i@@15) (< i@@15 (alen a_2@@3))) (= (loc_inv_2 (|aloc'| Heap@@35 a_2@@3 i@@15)) i@@15)))
 :qid |stdinbpl.270:15|
 :skolemid |29|
 :pattern ( (state Heap@@35 Mask@@61) (|aloc'| Heap@@35 a_2@@3 i@@15))
)))
(assert (forall ((a_2@@4 T@ArrayDomainType) ) (! (>= (alen a_2@@4) 0)
 :qid |stdinbpl.223:15|
 :skolemid |23|
 :pattern ( (alen a_2@@4))
)))
(assert (forall ((a_2@@5 T@ArrayDomainType) (i@@16 Int) ) (!  (and (= (loc_inv_1 (array_loc a_2@@5 i@@16)) a_2@@5) (= (loc_inv_2 (array_loc a_2@@5 i@@16)) i@@16))
 :qid |stdinbpl.217:15|
 :skolemid |22|
 :pattern ( (array_loc a_2@@5 i@@16))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_9169) (o_16 T@Ref) (f_2 T@Field_15195_15200) (v T@PolymorphicMapType_9718) ) (! (succHeap Heap@@36 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@36) (store (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@36) o_16 f_2 v) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@36) (store (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@36) o_16 f_2 v) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@36) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_9169) (o_16@@0 T@Ref) (f_2@@0 T@Field_5559_1364) (v@@0 Int) ) (! (succHeap Heap@@37 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@37) (store (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@37) o_16@@0 f_2@@0 v@@0) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@37) (store (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@37) o_16@@0 f_2@@0 v@@0) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@37) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_9169) (o_16@@1 T@Ref) (f_2@@1 T@Field_15182_15183) (v@@1 T@FrameType) ) (! (succHeap Heap@@38 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@38) (store (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@38) o_16@@1 f_2@@1 v@@1) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@38) (store (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@38) o_16@@1 f_2@@1 v@@1) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@38) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_9169) (o_16@@2 T@Ref) (f_2@@2 T@Field_5559_9243) (v@@2 T@Ref) ) (! (succHeap Heap@@39 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@39) (store (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@39) o_16@@2 f_2@@2 v@@2) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@39) (store (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@39) o_16@@2 f_2@@2 v@@2) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@39) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_9169) (o_16@@3 T@Ref) (f_2@@3 T@Field_5559_53) (v@@3 Bool) ) (! (succHeap Heap@@40 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@40) (store (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@40) o_16@@3 f_2@@3 v@@3) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@40) (store (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@40) o_16@@3 f_2@@3 v@@3) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@40) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_9169) (o_16@@4 T@Ref) (f_2@@4 T@Field_13925_13930) (v@@4 T@PolymorphicMapType_9718) ) (! (succHeap Heap@@41 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@41) (store (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@41) o_16@@4 f_2@@4 v@@4) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@41) (store (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@41) o_16@@4 f_2@@4 v@@4) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@41) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_9169) (o_16@@5 T@Ref) (f_2@@5 T@Field_13912_1364) (v@@5 Int) ) (! (succHeap Heap@@42 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@42) (store (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@42) o_16@@5 f_2@@5 v@@5) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@42) (store (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@42) o_16@@5 f_2@@5 v@@5) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@42) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_9169) (o_16@@6 T@Ref) (f_2@@6 T@Field_13912_13913) (v@@6 T@FrameType) ) (! (succHeap Heap@@43 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@43) (store (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@43) o_16@@6 f_2@@6 v@@6) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@43) (store (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@43) o_16@@6 f_2@@6 v@@6) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@43) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_9169) (o_16@@7 T@Ref) (f_2@@7 T@Field_13912_9243) (v@@7 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@44) (store (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@44) o_16@@7 f_2@@7 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@44) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@44) (store (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@44) o_16@@7 f_2@@7 v@@7)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_9169) (o_16@@8 T@Ref) (f_2@@8 T@Field_13912_53) (v@@8 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@45) (store (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@45) o_16@@8 f_2@@8 v@@8) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@45) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@45) (store (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@45) o_16@@8 f_2@@8 v@@8) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_9169) (o_16@@9 T@Ref) (f_2@@9 T@Field_5490_13930) (v@@9 T@PolymorphicMapType_9718) ) (! (succHeap Heap@@46 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@46) (store (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@46) o_16@@9 f_2@@9 v@@9) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@46) (store (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@46) o_16@@9 f_2@@9 v@@9) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@46) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_9169) (o_16@@10 T@Ref) (f_2@@10 T@Field_12669_1364) (v@@10 Int) ) (! (succHeap Heap@@47 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@47) (store (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@47) o_16@@10 f_2@@10 v@@10) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@47) (store (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@47) o_16@@10 f_2@@10 v@@10) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@47) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_9169) (o_16@@11 T@Ref) (f_2@@11 T@Field_5490_5560) (v@@11 T@FrameType) ) (! (succHeap Heap@@48 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@48) (store (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@48) o_16@@11 f_2@@11 v@@11) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@48) (store (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@48) o_16@@11 f_2@@11 v@@11) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@48) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_9169) (o_16@@12 T@Ref) (f_2@@12 T@Field_9242_9243) (v@@12 T@Ref) ) (! (succHeap Heap@@49 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@49) (store (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@49) o_16@@12 f_2@@12 v@@12) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@49) (store (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@49) o_16@@12 f_2@@12 v@@12) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@49) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_9169) (o_16@@13 T@Ref) (f_2@@13 T@Field_9229_53) (v@@13 Bool) ) (! (succHeap Heap@@50 (PolymorphicMapType_9169 (store (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@50) o_16@@13 f_2@@13 v@@13) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9169 (store (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@50) o_16@@13 f_2@@13 v@@13) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@50) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@50)))
)))
(assert (forall ((o_16@@14 T@Ref) (f_10 T@Field_9242_9243) (Heap@@51 T@PolymorphicMapType_9169) ) (!  (=> (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@51) o_16@@14 $allocated) (select (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@51) (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@51) o_16@@14 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@51) o_16@@14 f_10))
)))
(assert (forall ((p@@3 T@Field_15182_15183) (v_1@@2 T@FrameType) (q T@Field_15182_15183) (w@@2 T@FrameType) (r T@Field_15182_15183) (u T@FrameType) ) (!  (=> (and (InsidePredicate_15182_15182 p@@3 v_1@@2 q w@@2) (InsidePredicate_15182_15182 q w@@2 r u)) (InsidePredicate_15182_15182 p@@3 v_1@@2 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15182_15182 p@@3 v_1@@2 q w@@2) (InsidePredicate_15182_15182 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_15182_15183) (v_1@@3 T@FrameType) (q@@0 T@Field_15182_15183) (w@@3 T@FrameType) (r@@0 T@Field_13912_13913) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_15182_15182 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_15182_13912 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_15182_13912 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15182_15182 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_15182_13912 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_15182_15183) (v_1@@4 T@FrameType) (q@@1 T@Field_15182_15183) (w@@4 T@FrameType) (r@@1 T@Field_5490_5560) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_15182_15182 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_15182_9229 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_15182_9229 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15182_15182 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_15182_9229 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_15182_15183) (v_1@@5 T@FrameType) (q@@2 T@Field_13912_13913) (w@@5 T@FrameType) (r@@2 T@Field_15182_15183) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_15182_13912 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_13912_15182 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_15182_15182 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15182_13912 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_13912_15182 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_15182_15183) (v_1@@6 T@FrameType) (q@@3 T@Field_13912_13913) (w@@6 T@FrameType) (r@@3 T@Field_13912_13913) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_15182_13912 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_13912_13912 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_15182_13912 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15182_13912 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_13912_13912 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_15182_15183) (v_1@@7 T@FrameType) (q@@4 T@Field_13912_13913) (w@@7 T@FrameType) (r@@4 T@Field_5490_5560) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_15182_13912 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_13912_9229 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_15182_9229 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15182_13912 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_13912_9229 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_15182_15183) (v_1@@8 T@FrameType) (q@@5 T@Field_5490_5560) (w@@8 T@FrameType) (r@@5 T@Field_15182_15183) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_15182_9229 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9229_15182 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_15182_15182 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15182_9229 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9229_15182 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_15182_15183) (v_1@@9 T@FrameType) (q@@6 T@Field_5490_5560) (w@@9 T@FrameType) (r@@6 T@Field_13912_13913) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_15182_9229 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9229_13912 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_15182_13912 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15182_9229 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9229_13912 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_15182_15183) (v_1@@10 T@FrameType) (q@@7 T@Field_5490_5560) (w@@10 T@FrameType) (r@@7 T@Field_5490_5560) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_15182_9229 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9229_9229 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_15182_9229 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15182_9229 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9229_9229 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_13912_13913) (v_1@@11 T@FrameType) (q@@8 T@Field_15182_15183) (w@@11 T@FrameType) (r@@8 T@Field_15182_15183) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_13912_15182 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_15182_15182 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_13912_15182 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13912_15182 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_15182_15182 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_13912_13913) (v_1@@12 T@FrameType) (q@@9 T@Field_15182_15183) (w@@12 T@FrameType) (r@@9 T@Field_13912_13913) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_13912_15182 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_15182_13912 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_13912_13912 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13912_15182 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_15182_13912 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_13912_13913) (v_1@@13 T@FrameType) (q@@10 T@Field_15182_15183) (w@@13 T@FrameType) (r@@10 T@Field_5490_5560) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_13912_15182 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_15182_9229 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_13912_9229 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13912_15182 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_15182_9229 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_13912_13913) (v_1@@14 T@FrameType) (q@@11 T@Field_13912_13913) (w@@14 T@FrameType) (r@@11 T@Field_15182_15183) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_13912_13912 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_13912_15182 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_13912_15182 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13912_13912 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_13912_15182 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_13912_13913) (v_1@@15 T@FrameType) (q@@12 T@Field_13912_13913) (w@@15 T@FrameType) (r@@12 T@Field_13912_13913) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_13912_13912 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_13912_13912 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_13912_13912 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13912_13912 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_13912_13912 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_13912_13913) (v_1@@16 T@FrameType) (q@@13 T@Field_13912_13913) (w@@16 T@FrameType) (r@@13 T@Field_5490_5560) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_13912_13912 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_13912_9229 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_13912_9229 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13912_13912 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_13912_9229 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_13912_13913) (v_1@@17 T@FrameType) (q@@14 T@Field_5490_5560) (w@@17 T@FrameType) (r@@14 T@Field_15182_15183) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_13912_9229 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9229_15182 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_13912_15182 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13912_9229 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9229_15182 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_13912_13913) (v_1@@18 T@FrameType) (q@@15 T@Field_5490_5560) (w@@18 T@FrameType) (r@@15 T@Field_13912_13913) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_13912_9229 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9229_13912 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_13912_13912 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13912_9229 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9229_13912 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_13912_13913) (v_1@@19 T@FrameType) (q@@16 T@Field_5490_5560) (w@@19 T@FrameType) (r@@16 T@Field_5490_5560) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_13912_9229 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9229_9229 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_13912_9229 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13912_9229 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9229_9229 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_5490_5560) (v_1@@20 T@FrameType) (q@@17 T@Field_15182_15183) (w@@20 T@FrameType) (r@@17 T@Field_15182_15183) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_9229_15182 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_15182_15182 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_9229_15182 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9229_15182 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_15182_15182 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_5490_5560) (v_1@@21 T@FrameType) (q@@18 T@Field_15182_15183) (w@@21 T@FrameType) (r@@18 T@Field_13912_13913) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_9229_15182 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_15182_13912 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_9229_13912 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9229_15182 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_15182_13912 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_5490_5560) (v_1@@22 T@FrameType) (q@@19 T@Field_15182_15183) (w@@22 T@FrameType) (r@@19 T@Field_5490_5560) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_9229_15182 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_15182_9229 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_9229_9229 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9229_15182 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_15182_9229 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_5490_5560) (v_1@@23 T@FrameType) (q@@20 T@Field_13912_13913) (w@@23 T@FrameType) (r@@20 T@Field_15182_15183) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_9229_13912 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_13912_15182 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_9229_15182 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9229_13912 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_13912_15182 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_5490_5560) (v_1@@24 T@FrameType) (q@@21 T@Field_13912_13913) (w@@24 T@FrameType) (r@@21 T@Field_13912_13913) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_9229_13912 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_13912_13912 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_9229_13912 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9229_13912 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_13912_13912 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_5490_5560) (v_1@@25 T@FrameType) (q@@22 T@Field_13912_13913) (w@@25 T@FrameType) (r@@22 T@Field_5490_5560) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_9229_13912 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_13912_9229 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_9229_9229 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9229_13912 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_13912_9229 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_5490_5560) (v_1@@26 T@FrameType) (q@@23 T@Field_5490_5560) (w@@26 T@FrameType) (r@@23 T@Field_15182_15183) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_9229_9229 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9229_15182 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_9229_15182 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9229_9229 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9229_15182 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_5490_5560) (v_1@@27 T@FrameType) (q@@24 T@Field_5490_5560) (w@@27 T@FrameType) (r@@24 T@Field_13912_13913) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_9229_9229 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9229_13912 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_9229_13912 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9229_9229 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9229_13912 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_5490_5560) (v_1@@28 T@FrameType) (q@@25 T@Field_5490_5560) (w@@28 T@FrameType) (r@@25 T@Field_5490_5560) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_9229_9229 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9229_9229 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_9229_9229 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9229_9229 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9229_9229 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@52 T@PolymorphicMapType_9169) (Mask@@62 T@PolymorphicMapType_9190) (a_2@@6 T@ArrayDomainType) (i@@17 Int) ) (!  (=> (and (state Heap@@52 Mask@@62) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 i@@17) (< i@@17 (alen a_2@@6))) (= (aloc_1 Heap@@52 a_2@@6 i@@17) (array_loc a_2@@6 i@@17))))
 :qid |stdinbpl.253:15|
 :skolemid |26|
 :pattern ( (state Heap@@52 Mask@@62) (aloc_1 Heap@@52 a_2@@6 i@@17))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun j_12_2 () Int)
(declare-fun n@@11 () Int)
(declare-fun Heap@5 () T@PolymorphicMapType_9169)
(declare-fun x0 () T@ArrayDomainType)
(declare-fun j_2 () Int)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_9190)
(declare-fun Heap@6 () T@PolymorphicMapType_9169)
(declare-fun Mask@3 () T@PolymorphicMapType_9190)
(declare-fun Heap@7 () T@PolymorphicMapType_9169)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_9190)
(declare-fun FrameFragment_1364 (Int) T@FrameType)
(declare-fun Heap@4 () T@PolymorphicMapType_9169)
(declare-fun x1 () T@ArrayDomainType)
(declare-fun i@@18 () Int)
(declare-fun Heap@1 () T@PolymorphicMapType_9169)
(declare-fun Heap@2 () T@PolymorphicMapType_9169)
(declare-fun Heap@3 () T@PolymorphicMapType_9169)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@2 () T@PolymorphicMapType_9190)
(declare-fun Mask@1 () T@PolymorphicMapType_9190)
(declare-fun perm@2 () Real)
(declare-fun perm@3 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_9190)
(declare-fun perm@1 () Real)
(declare-fun Heap@@53 () T@PolymorphicMapType_9169)
(declare-fun Heap@0 () T@PolymorphicMapType_9169)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun QPMask@1 () T@PolymorphicMapType_9190)
(declare-fun perm@0 () Real)
(declare-fun j_9_1 () Int)
(declare-fun j_13 () Int)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_9190)
(declare-fun Heap@8 () T@PolymorphicMapType_9169)
(declare-fun Heap@9 () T@PolymorphicMapType_9169)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_9190)
(declare-fun j_12 () Int)
(declare-fun UnfoldingMask@5 () T@PolymorphicMapType_9190)
(declare-fun Heap@10 () T@PolymorphicMapType_9169)
(declare-fun Heap@11 () T@PolymorphicMapType_9169)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_9190)
(declare-fun neverTriggered2 (Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_9190)
(declare-fun invRecv2 (T@ArrayDomainType Int Int) Int)
(declare-fun qpRange2 (T@ArrayDomainType Int Int) Bool)
(declare-fun getPredWandId_5490_1364 (T@Field_12669_1364) Int)
(declare-fun getPredWandId_5490_5533 (T@Field_5490_5560) Int)
(declare-fun getPredWandId_5490_53 (T@Field_9229_53) Int)
(declare-fun getPredWandId_5490_9243 (T@Field_9242_9243) Int)
(declare-fun getPredWandId_5490_56853 (T@Field_5490_13930) Int)
(declare-fun getPredWandId_5532_1364 (T@Field_13912_1364) Int)
(declare-fun getPredWandId_5532_53 (T@Field_13912_53) Int)
(declare-fun getPredWandId_5532_9243 (T@Field_13912_9243) Int)
(declare-fun getPredWandId_5532_57662 (T@Field_13925_13930) Int)
(declare-fun getPredWandId_5559_1364 (T@Field_5559_1364) Int)
(declare-fun getPredWandId_5559_53 (T@Field_5559_53) Int)
(declare-fun getPredWandId_5559_9243 (T@Field_5559_9243) Int)
(declare-fun getPredWandId_5559_58471 (T@Field_15195_15200) Int)
(declare-fun neverTriggered1 (Int) Bool)
(declare-fun invRecv1 (T@ArrayDomainType Int Int) Int)
(declare-fun qpRange1 (T@ArrayDomainType Int Int) Bool)
(set-info :boogie-vc-id main1)
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
 (=> (= (ControlFlow 0 0) 78) (let ((anon43_correct true))
(let ((anon66_Else_correct  (=> (and (not (and (<= 0 j_12_2) (< j_12_2 n@@11))) (= (ControlFlow 0 47) 44)) anon43_correct)))
(let ((anon66_Then_correct  (=> (and (<= 0 j_12_2) (< j_12_2 n@@11)) (and (=> (= (ControlFlow 0 45) (- 0 46)) (= (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@5) (aloc_1 Heap@5 x0 j_12_2) vint_1) 0)) (=> (= (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@5) (aloc_1 Heap@5 x0 j_12_2) vint_1) 0) (=> (= (ControlFlow 0 45) 44) anon43_correct))))))
(let ((anon64_Then_correct  (and (=> (= (ControlFlow 0 35) (- 0 36)) (<= 0 j_2)) (=> (<= 0 j_2) (=> (= (ControlFlow 0 35) (- 0 34)) (< j_2 (alen x0)))))))
(let ((anon39_correct true))
(let ((anon64_Else_correct  (and (=> (= (ControlFlow 0 37) (- 0 38)) (HasDirectPerm_5490_1364 UnfoldingMask@1 (aloc_1 Heap@5 x0 j_2) vint_1)) (=> (HasDirectPerm_5490_1364 UnfoldingMask@1 (aloc_1 Heap@5 x0 j_2) vint_1) (=> (= Heap@6 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@5) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@5) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@5) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@5) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@5) (store (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@5) null (|hide0#sm| x0 n@@11 j_2) (PolymorphicMapType_9718 (store (|PolymorphicMapType_9718_5490_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@5) null (|hide0#sm| x0 n@@11 j_2))) (aloc_1 Heap@5 x0 j_2) vint_1 true) (|PolymorphicMapType_9718_5490_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@5) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_5490_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@5) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_5490_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@5) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_5490_32880#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@5) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_13912_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@5) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_13912_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@5) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_13912_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@5) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_13912_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@5) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_13912_33928#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@5) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_15182_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@5) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_15182_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@5) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_15182_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@5) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_15182_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@5) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_15182_34976#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@5) null (|hide0#sm| x0 n@@11 j_2))))) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@5) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@5) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@5) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@5) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@5) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@5) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@5) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@5) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@5))) (=> (and (and (state Heap@6 Mask@3) (= Heap@7 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@6) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@6) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@6) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@6) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@6) (store (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@6) null (|hide0#sm| x0 n@@11 j_2) (PolymorphicMapType_9718 (store (|PolymorphicMapType_9718_5490_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@6) null (|hide0#sm| x0 n@@11 j_2))) (aloc_1 Heap@6 x0 j_2) vint_1 true) (|PolymorphicMapType_9718_5490_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@6) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_5490_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@6) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_5490_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@6) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_5490_32880#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@6) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_13912_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@6) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_13912_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@6) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_13912_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@6) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_13912_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@6) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_13912_33928#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@6) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_15182_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@6) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_15182_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@6) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_15182_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@6) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_15182_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@6) null (|hide0#sm| x0 n@@11 j_2))) (|PolymorphicMapType_9718_15182_34976#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@6) null (|hide0#sm| x0 n@@11 j_2))))) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@6) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@6) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@6) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@6) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@6) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@6) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@6) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@6) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@6)))) (and (state Heap@7 Mask@3) (= (ControlFlow 0 37) 32))) anon39_correct))))))
(let ((anon36_correct  (=> (and (= UnfoldingMask@0 (PolymorphicMapType_9190 (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| Mask@3) (store (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| Mask@3) null (hide0 x0 n@@11 j_2) (- (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| Mask@3) null (hide0 x0 n@@11 j_2)) FullPerm)) (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| Mask@3) (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| Mask@3) (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| Mask@3) (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| Mask@3) (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| Mask@3) (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| Mask@3) (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| Mask@3) (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| Mask@3) (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| Mask@3) (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| Mask@3) (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| Mask@3) (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| Mask@3) (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| Mask@3))) (> n@@11 0)) (=> (and (and (and (>= j_2 0) (< j_2 n@@11)) (and (= (alen x0) n@@11) (state Heap@5 UnfoldingMask@0))) (and (and (not (= (aloc_1 Heap@5 x0 j_2) null)) (= UnfoldingMask@1 (PolymorphicMapType_9190 (store (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| UnfoldingMask@0) (aloc_1 Heap@5 x0 j_2) vint_1 (+ (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| UnfoldingMask@0) (aloc_1 Heap@5 x0 j_2) vint_1) FullPerm)) (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| UnfoldingMask@0) (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| UnfoldingMask@0) (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| UnfoldingMask@0) (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| UnfoldingMask@0) (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| UnfoldingMask@0) (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| UnfoldingMask@0) (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| UnfoldingMask@0) (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| UnfoldingMask@0) (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| UnfoldingMask@0) (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| UnfoldingMask@0) (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| UnfoldingMask@0) (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| UnfoldingMask@0) (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| UnfoldingMask@0) (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| UnfoldingMask@0)))) (and (state Heap@5 UnfoldingMask@1) (state Heap@5 UnfoldingMask@1)))) (and (=> (= (ControlFlow 0 39) 35) anon64_Then_correct) (=> (= (ControlFlow 0 39) 37) anon64_Else_correct))))))
(let ((anon63_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 42) 39)) anon36_correct)))
(let ((anon63_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (<= FullPerm (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| Mask@3) null (hide0 x0 n@@11 j_2)))) (=> (<= FullPerm (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| Mask@3) null (hide0 x0 n@@11 j_2))) (=> (= (ControlFlow 0 40) 39) anon36_correct))))))
(let ((anon62_Then_correct  (=> (and (and (<= 0 j_2) (< j_2 n@@11)) (and (|hide0#trigger_5532| Heap@5 (hide0 x0 n@@11 j_2)) (= (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@5) null (hide0 x0 n@@11 j_2)) (FrameFragment_1364 (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@5) (aloc_1 Heap@5 x0 j_2) vint_1))))) (and (=> (= (ControlFlow 0 43) 40) anon63_Then_correct) (=> (= (ControlFlow 0 43) 42) anon63_Else_correct)))))
(let ((anon62_Else_correct  (=> (and (not (and (<= 0 j_2) (< j_2 n@@11))) (= (ControlFlow 0 33) 32)) anon39_correct)))
(let ((anon65_Else_correct true))
(let ((anon32_correct  (=> (= Heap@5 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@4) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@4) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@4) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@4) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@4) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@4) (store (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@4) null (|hide1#sm| x1 n@@11 i@@18) (PolymorphicMapType_9718 (store (|PolymorphicMapType_9718_5490_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@4) null (|hide1#sm| x1 n@@11 i@@18))) (aloc_1 Heap@4 x1 i@@18) vint_1 true) (|PolymorphicMapType_9718_5490_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@4) null (|hide1#sm| x1 n@@11 i@@18))) (|PolymorphicMapType_9718_5490_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@4) null (|hide1#sm| x1 n@@11 i@@18))) (|PolymorphicMapType_9718_5490_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@4) null (|hide1#sm| x1 n@@11 i@@18))) (|PolymorphicMapType_9718_5490_32880#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@4) null (|hide1#sm| x1 n@@11 i@@18))) (|PolymorphicMapType_9718_13912_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@4) null (|hide1#sm| x1 n@@11 i@@18))) (|PolymorphicMapType_9718_13912_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@4) null (|hide1#sm| x1 n@@11 i@@18))) (|PolymorphicMapType_9718_13912_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@4) null (|hide1#sm| x1 n@@11 i@@18))) (|PolymorphicMapType_9718_13912_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@4) null (|hide1#sm| x1 n@@11 i@@18))) (|PolymorphicMapType_9718_13912_33928#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@4) null (|hide1#sm| x1 n@@11 i@@18))) (|PolymorphicMapType_9718_15182_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@4) null (|hide1#sm| x1 n@@11 i@@18))) (|PolymorphicMapType_9718_15182_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@4) null (|hide1#sm| x1 n@@11 i@@18))) (|PolymorphicMapType_9718_15182_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@4) null (|hide1#sm| x1 n@@11 i@@18))) (|PolymorphicMapType_9718_15182_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@4) null (|hide1#sm| x1 n@@11 i@@18))) (|PolymorphicMapType_9718_15182_34976#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@4) null (|hide1#sm| x1 n@@11 i@@18))))) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@4) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@4) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@4) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@4) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@4) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@4) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@4) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@4))) (=> (and (state Heap@5 Mask@3) (state Heap@5 Mask@3)) (and (and (and (and (=> (= (ControlFlow 0 48) 31) anon65_Else_correct) (=> (= (ControlFlow 0 48) 45) anon66_Then_correct)) (=> (= (ControlFlow 0 48) 47) anon66_Else_correct)) (=> (= (ControlFlow 0 48) 43) anon62_Then_correct)) (=> (= (ControlFlow 0 48) 33) anon62_Else_correct))))))
(let ((anon60_Else_correct  (=> (HasDirectPerm_5559_5560 Mask@3 null (hide1 x1 n@@11 i@@18)) (=> (and (= Heap@4 Heap@1) (= (ControlFlow 0 50) 48)) anon32_correct))))
(let ((anon60_Then_correct  (=> (not (HasDirectPerm_5559_5560 Mask@3 null (hide1 x1 n@@11 i@@18))) (=> (and (and (= Heap@2 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@1) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@1) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@1) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@1) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@1) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@1) (store (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@1) null (|hide1#sm| x1 n@@11 i@@18) ZeroPMask) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@1) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@1) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@1) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@1) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@1) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@1) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@1) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@1))) (= Heap@3 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@2) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@2) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@2) (store (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@2) null (hide1 x1 n@@11 i@@18) freshVersion@0) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@2) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@2) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@2) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@2) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@2) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@2) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@2) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@2) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@2) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@2) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@2)))) (and (= Heap@4 Heap@3) (= (ControlFlow 0 49) 48))) anon32_correct))))
(let ((anon30_correct  (=> (and (= Mask@2 (PolymorphicMapType_9190 (store (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| Mask@1) (aloc_1 Heap@1 x1 i@@18) vint_1 (- (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| Mask@1) (aloc_1 Heap@1 x1 i@@18) vint_1) perm@2)) (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| Mask@1) (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| Mask@1) (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| Mask@1) (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| Mask@1) (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| Mask@1) (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| Mask@1) (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| Mask@1) (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| Mask@1) (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| Mask@1) (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| Mask@1) (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| Mask@1) (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| Mask@1) (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| Mask@1) (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| Mask@1))) (= perm@3 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 51) (- 0 52)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (=> (= Mask@3 (PolymorphicMapType_9190 (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| Mask@2) (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| Mask@2) (store (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| Mask@2) null (hide1 x1 n@@11 i@@18) (+ (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| Mask@2) null (hide1 x1 n@@11 i@@18)) perm@3)) (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| Mask@2) (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| Mask@2) (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| Mask@2) (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| Mask@2) (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| Mask@2) (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| Mask@2) (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| Mask@2) (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| Mask@2) (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| Mask@2) (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| Mask@2) (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| Mask@2) (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| Mask@2))) (=> (and (and (state Heap@1 Mask@3) (state Heap@1 Mask@3)) (and (|hide1#trigger_5559| Heap@1 (hide1 x1 n@@11 i@@18)) (= (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@1) null (hide1 x1 n@@11 i@@18)) (FrameFragment_1364 (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@1) (aloc_1 Heap@1 x1 i@@18) vint_1))))) (and (=> (= (ControlFlow 0 51) 49) anon60_Then_correct) (=> (= (ControlFlow 0 51) 50) anon60_Else_correct)))))))))
(let ((anon59_Else_correct  (=> (and (= perm@2 NoPerm) (= (ControlFlow 0 55) 51)) anon30_correct)))
(let ((anon59_Then_correct  (=> (not (= perm@2 NoPerm)) (and (=> (= (ControlFlow 0 53) (- 0 54)) (<= perm@2 (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| Mask@1) (aloc_1 Heap@1 x1 i@@18) vint_1))) (=> (<= perm@2 (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| Mask@1) (aloc_1 Heap@1 x1 i@@18) vint_1)) (=> (= (ControlFlow 0 53) 51) anon30_correct))))))
(let ((anon28_correct  (=> (and (> n@@11 0) (>= i@@18 0)) (=> (and (and (< i@@18 n@@11) (= (alen x1) n@@11)) (and (state Heap@1 Mask@0) (= perm@1 (* FullPerm (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 56) (- 0 62)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (=> (> perm@1 NoPerm) (not (= (aloc_1 Heap@1 x1 i@@18) null))) (=> (and (and (= Mask@1 (PolymorphicMapType_9190 (store (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| Mask@0) (aloc_1 Heap@1 x1 i@@18) vint_1 (+ (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| Mask@0) (aloc_1 Heap@1 x1 i@@18) vint_1) perm@1)) (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| Mask@0) (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| Mask@0) (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| Mask@0) (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| Mask@0) (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| Mask@0) (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| Mask@0) (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| Mask@0) (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| Mask@0) (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| Mask@0) (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| Mask@0) (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| Mask@0) (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| Mask@0) (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| Mask@0) (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| Mask@0))) (state Heap@1 Mask@1)) (and (state Heap@1 Mask@1) (state Heap@1 Mask@1))) (and (=> (= (ControlFlow 0 56) (- 0 61)) (> n@@11 0)) (=> (> n@@11 0) (and (=> (= (ControlFlow 0 56) (- 0 60)) (>= i@@18 0)) (=> (>= i@@18 0) (and (=> (= (ControlFlow 0 56) (- 0 59)) (< i@@18 n@@11)) (=> (< i@@18 n@@11) (and (=> (= (ControlFlow 0 56) (- 0 58)) (= (alen x1) n@@11)) (=> (= (alen x1) n@@11) (=> (= perm@2 (* FullPerm (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 56) (- 0 57)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (and (=> (= (ControlFlow 0 56) 53) anon59_Then_correct) (=> (= (ControlFlow 0 56) 55) anon59_Else_correct)))))))))))))))))))))
(let ((anon58_Else_correct  (=> (HasDirectPerm_5559_5560 Mask@0 null (hide1 x1 n@@11 i@@18)) (=> (and (= Heap@1 Heap@@53) (= (ControlFlow 0 64) 56)) anon28_correct))))
(let ((anon58_Then_correct  (=> (and (and (not (HasDirectPerm_5559_5560 Mask@0 null (hide1 x1 n@@11 i@@18))) (= Heap@0 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@53) (store (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@53) null (hide1 x1 n@@11 i@@18) newVersion@0) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@53)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 63) 56))) anon28_correct)))
(let ((anon26_correct  (=> (= Mask@0 (PolymorphicMapType_9190 (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@1) (store (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@1) null (hide1 x1 n@@11 i@@18) (- (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@1) null (hide1 x1 n@@11 i@@18)) perm@0)) (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| QPMask@1))) (and (=> (= (ControlFlow 0 65) 63) anon58_Then_correct) (=> (= (ControlFlow 0 65) 64) anon58_Else_correct)))))
(let ((anon57_Else_correct  (=> (and (= perm@0 NoPerm) (= (ControlFlow 0 68) 65)) anon26_correct)))
(let ((anon57_Then_correct  (=> (not (= perm@0 NoPerm)) (and (=> (= (ControlFlow 0 66) (- 0 67)) (<= perm@0 (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@1) null (hide1 x1 n@@11 i@@18)))) (=> (<= perm@0 (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@1) null (hide1 x1 n@@11 i@@18))) (=> (= (ControlFlow 0 66) 65) anon26_correct))))))
(let ((anon55_Else_correct  (=> (forall ((j_10_1 Int) ) (!  (=> (and (<= 0 j_10_1) (< j_10_1 n@@11)) (= (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@53) (aloc_1 Heap@@53 x0 j_10_1) vint_1) 0))
 :qid |stdinbpl.716:20|
 :skolemid |56|
 :pattern ( (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@53) null (hide0 x0 n@@11 j_10_1)))
)) (=> (and (and (state Heap@@53 QPMask@1) (|hide1#trigger_5559| Heap@@53 (hide1 x1 n@@11 i@@18))) (and (= (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@53) null (hide1 x1 n@@11 i@@18)) (FrameFragment_1364 (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@53) (aloc_1 Heap@@53 x1 i@@18) vint_1))) (= perm@0 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 69) (- 0 70)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (and (=> (= (ControlFlow 0 69) 66) anon57_Then_correct) (=> (= (ControlFlow 0 69) 68) anon57_Else_correct))))))))
(let ((anon23_correct true))
(let ((anon56_Else_correct  (=> (and (not (and (<= 0 j_9_1) (< j_9_1 n@@11))) (= (ControlFlow 0 30) 27)) anon23_correct)))
(let ((anon56_Then_correct  (=> (and (<= 0 j_9_1) (< j_9_1 n@@11)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (= (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@53) (aloc_1 Heap@@53 x0 j_9_1) vint_1) 0)) (=> (= (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@53) (aloc_1 Heap@@53 x0 j_9_1) vint_1) 0) (=> (= (ControlFlow 0 28) 27) anon23_correct))))))
(let ((anon54_Then_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) (<= 0 j_13)) (=> (<= 0 j_13) (=> (= (ControlFlow 0 18) (- 0 17)) (< j_13 (alen x0)))))))
(let ((anon19_correct true))
(let ((anon54_Else_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) (HasDirectPerm_5490_1364 UnfoldingMask@3 (aloc_1 Heap@@53 x0 j_13) vint_1)) (=> (HasDirectPerm_5490_1364 UnfoldingMask@3 (aloc_1 Heap@@53 x0 j_13) vint_1) (=> (= Heap@8 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@53) (store (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_13) (PolymorphicMapType_9718 (store (|PolymorphicMapType_9718_5490_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_13))) (aloc_1 Heap@@53 x0 j_13) vint_1 true) (|PolymorphicMapType_9718_5490_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_5490_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_5490_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_5490_32880#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_13912_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_13912_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_13912_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_13912_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_13912_33928#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_15182_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_15182_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_15182_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_15182_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_15182_34976#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_13))))) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@53))) (=> (and (and (state Heap@8 QPMask@1) (= Heap@9 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@8) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@8) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@8) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@8) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@8) (store (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@8) null (|hide0#sm| x0 n@@11 j_13) (PolymorphicMapType_9718 (store (|PolymorphicMapType_9718_5490_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@8) null (|hide0#sm| x0 n@@11 j_13))) (aloc_1 Heap@8 x0 j_13) vint_1 true) (|PolymorphicMapType_9718_5490_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@8) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_5490_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@8) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_5490_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@8) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_5490_32880#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@8) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_13912_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@8) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_13912_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@8) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_13912_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@8) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_13912_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@8) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_13912_33928#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@8) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_15182_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@8) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_15182_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@8) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_15182_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@8) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_15182_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@8) null (|hide0#sm| x0 n@@11 j_13))) (|PolymorphicMapType_9718_15182_34976#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@8) null (|hide0#sm| x0 n@@11 j_13))))) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@8) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@8) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@8) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@8) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@8) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@8) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@8) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@8) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@8)))) (and (state Heap@9 QPMask@1) (= (ControlFlow 0 20) 15))) anon19_correct))))))
(let ((anon16_correct  (=> (and (= UnfoldingMask@2 (PolymorphicMapType_9190 (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| QPMask@1) (store (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@1) null (hide0 x0 n@@11 j_13) (- (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@1) null (hide0 x0 n@@11 j_13)) FullPerm)) (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| QPMask@1))) (> n@@11 0)) (=> (and (and (and (>= j_13 0) (< j_13 n@@11)) (and (= (alen x0) n@@11) (state Heap@@53 UnfoldingMask@2))) (and (and (not (= (aloc_1 Heap@@53 x0 j_13) null)) (= UnfoldingMask@3 (PolymorphicMapType_9190 (store (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| UnfoldingMask@2) (aloc_1 Heap@@53 x0 j_13) vint_1 (+ (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| UnfoldingMask@2) (aloc_1 Heap@@53 x0 j_13) vint_1) FullPerm)) (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| UnfoldingMask@2) (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| UnfoldingMask@2) (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| UnfoldingMask@2) (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| UnfoldingMask@2) (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| UnfoldingMask@2) (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| UnfoldingMask@2) (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| UnfoldingMask@2) (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| UnfoldingMask@2) (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| UnfoldingMask@2) (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| UnfoldingMask@2) (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| UnfoldingMask@2) (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| UnfoldingMask@2) (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| UnfoldingMask@2) (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| UnfoldingMask@2)))) (and (state Heap@@53 UnfoldingMask@3) (state Heap@@53 UnfoldingMask@3)))) (and (=> (= (ControlFlow 0 22) 18) anon54_Then_correct) (=> (= (ControlFlow 0 22) 20) anon54_Else_correct))))))
(let ((anon53_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 25) 22)) anon16_correct)))
(let ((anon53_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (<= FullPerm (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@1) null (hide0 x0 n@@11 j_13)))) (=> (<= FullPerm (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@1) null (hide0 x0 n@@11 j_13))) (=> (= (ControlFlow 0 23) 22) anon16_correct))))))
(let ((anon52_Then_correct  (=> (and (and (<= 0 j_13) (< j_13 n@@11)) (and (|hide0#trigger_5532| Heap@@53 (hide0 x0 n@@11 j_13)) (= (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@53) null (hide0 x0 n@@11 j_13)) (FrameFragment_1364 (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@53) (aloc_1 Heap@@53 x0 j_13) vint_1))))) (and (=> (= (ControlFlow 0 26) 23) anon53_Then_correct) (=> (= (ControlFlow 0 26) 25) anon53_Else_correct)))))
(let ((anon52_Else_correct  (=> (and (not (and (<= 0 j_13) (< j_13 n@@11))) (= (ControlFlow 0 16) 15)) anon19_correct)))
(let ((anon47_Else_correct  (=> (forall ((j_7_1 Int) ) (!  (=> (and (<= 0 j_7_1) (< j_7_1 n@@11)) (= (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@53) (aloc_1 Heap@@53 x0 j_7_1) vint_1) 0))
 :qid |stdinbpl.638:20|
 :skolemid |55|
 :pattern ( (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@53) null (hide0 x0 n@@11 j_7_1)))
)) (=> (and (and (state Heap@@53 QPMask@1) (>= i@@18 0)) (and (< i@@18 n@@11) (state Heap@@53 QPMask@1))) (and (and (and (and (=> (= (ControlFlow 0 71) 69) anon55_Else_correct) (=> (= (ControlFlow 0 71) 28) anon56_Then_correct)) (=> (= (ControlFlow 0 71) 30) anon56_Else_correct)) (=> (= (ControlFlow 0 71) 26) anon52_Then_correct)) (=> (= (ControlFlow 0 71) 16) anon52_Else_correct))))))
(let ((anon50_Then_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (<= 0 j_12)) (=> (<= 0 j_12) (=> (= (ControlFlow 0 6) (- 0 5)) (< j_12 (alen x0)))))))
(let ((anon11_correct true))
(let ((anon50_Else_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_5490_1364 UnfoldingMask@5 (aloc_1 Heap@@53 x0 j_12) vint_1)) (=> (HasDirectPerm_5490_1364 UnfoldingMask@5 (aloc_1 Heap@@53 x0 j_12) vint_1) (=> (= Heap@10 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@53) (store (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_12) (PolymorphicMapType_9718 (store (|PolymorphicMapType_9718_5490_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_12))) (aloc_1 Heap@@53 x0 j_12) vint_1 true) (|PolymorphicMapType_9718_5490_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_5490_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_5490_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_5490_32880#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_13912_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_13912_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_13912_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_13912_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_13912_33928#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_15182_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_15182_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_15182_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_15182_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_15182_34976#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@@53) null (|hide0#sm| x0 n@@11 j_12))))) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@@53) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@@53))) (=> (and (and (state Heap@10 QPMask@1) (= Heap@11 (PolymorphicMapType_9169 (|PolymorphicMapType_9169_5346_53#PolymorphicMapType_9169| Heap@10) (|PolymorphicMapType_9169_5349_5350#PolymorphicMapType_9169| Heap@10) (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@10) (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@10) (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@10) (store (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@10) null (|hide0#sm| x0 n@@11 j_12) (PolymorphicMapType_9718 (store (|PolymorphicMapType_9718_5490_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@10) null (|hide0#sm| x0 n@@11 j_12))) (aloc_1 Heap@10 x0 j_12) vint_1 true) (|PolymorphicMapType_9718_5490_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@10) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_5490_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@10) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_5490_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@10) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_5490_32880#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@10) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_13912_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@10) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_13912_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@10) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_13912_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@10) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_13912_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@10) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_13912_33928#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@10) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_15182_1364#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@10) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_15182_53#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@10) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_15182_9243#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@10) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_15182_13913#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@10) null (|hide0#sm| x0 n@@11 j_12))) (|PolymorphicMapType_9718_15182_34976#PolymorphicMapType_9718| (select (|PolymorphicMapType_9169_5536_20383#PolymorphicMapType_9169| Heap@10) null (|hide0#sm| x0 n@@11 j_12))))) (|PolymorphicMapType_9169_5563_24837#PolymorphicMapType_9169| Heap@10) (|PolymorphicMapType_9169_5490_5560#PolymorphicMapType_9169| Heap@10) (|PolymorphicMapType_9169_5490_28621#PolymorphicMapType_9169| Heap@10) (|PolymorphicMapType_9169_5559_1364#PolymorphicMapType_9169| Heap@10) (|PolymorphicMapType_9169_5559_53#PolymorphicMapType_9169| Heap@10) (|PolymorphicMapType_9169_5559_9243#PolymorphicMapType_9169| Heap@10) (|PolymorphicMapType_9169_13912_1364#PolymorphicMapType_9169| Heap@10) (|PolymorphicMapType_9169_13912_53#PolymorphicMapType_9169| Heap@10) (|PolymorphicMapType_9169_13912_9243#PolymorphicMapType_9169| Heap@10)))) (and (state Heap@11 QPMask@1) (= (ControlFlow 0 8) 3))) anon11_correct))))))
(let ((anon8_correct  (=> (and (= UnfoldingMask@4 (PolymorphicMapType_9190 (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| QPMask@1) (store (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@1) null (hide0 x0 n@@11 j_12) (- (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@1) null (hide0 x0 n@@11 j_12)) FullPerm)) (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| QPMask@1) (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| QPMask@1))) (> n@@11 0)) (=> (and (and (and (>= j_12 0) (< j_12 n@@11)) (and (= (alen x0) n@@11) (state Heap@@53 UnfoldingMask@4))) (and (and (not (= (aloc_1 Heap@@53 x0 j_12) null)) (= UnfoldingMask@5 (PolymorphicMapType_9190 (store (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| UnfoldingMask@4) (aloc_1 Heap@@53 x0 j_12) vint_1 (+ (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| UnfoldingMask@4) (aloc_1 Heap@@53 x0 j_12) vint_1) FullPerm)) (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| UnfoldingMask@4) (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| UnfoldingMask@4) (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| UnfoldingMask@4) (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| UnfoldingMask@4) (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| UnfoldingMask@4) (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| UnfoldingMask@4) (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| UnfoldingMask@4) (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| UnfoldingMask@4) (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| UnfoldingMask@4) (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| UnfoldingMask@4) (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| UnfoldingMask@4) (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| UnfoldingMask@4) (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| UnfoldingMask@4) (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| UnfoldingMask@4)))) (and (state Heap@@53 UnfoldingMask@5) (state Heap@@53 UnfoldingMask@5)))) (and (=> (= (ControlFlow 0 10) 6) anon50_Then_correct) (=> (= (ControlFlow 0 10) 8) anon50_Else_correct))))))
(let ((anon49_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 13) 10)) anon8_correct)))
(let ((anon49_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (<= FullPerm (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@1) null (hide0 x0 n@@11 j_12)))) (=> (<= FullPerm (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@1) null (hide0 x0 n@@11 j_12))) (=> (= (ControlFlow 0 11) 10) anon8_correct))))))
(let ((anon48_Then_correct  (=> (and (and (<= 0 j_12) (< j_12 n@@11)) (and (|hide0#trigger_5532| Heap@@53 (hide0 x0 n@@11 j_12)) (= (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@53) null (hide0 x0 n@@11 j_12)) (FrameFragment_1364 (select (|PolymorphicMapType_9169_5490_1364#PolymorphicMapType_9169| Heap@@53) (aloc_1 Heap@@53 x0 j_12) vint_1))))) (and (=> (= (ControlFlow 0 14) 11) anon49_Then_correct) (=> (= (ControlFlow 0 14) 13) anon49_Else_correct)))))
(let ((anon48_Else_correct  (=> (and (not (and (<= 0 j_12) (< j_12 n@@11))) (= (ControlFlow 0 4) 3)) anon11_correct)))
(let ((anon46_Else_correct  (and (=> (= (ControlFlow 0 72) (- 0 74)) (forall ((j_4_1 Int) (j_4_2 Int) ) (!  (=> (and (and (and (and (not (= j_4_1 j_4_2)) (and (<= 0 j_4_1) (< j_4_1 n@@11))) (and (<= 0 j_4_2) (< j_4_2 n@@11))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (or (or (not (= x1 x1)) (not (= n@@11 n@@11))) (not (= j_4_1 j_4_2))))
 :qid |stdinbpl.548:17|
 :skolemid |48|
 :pattern ( (neverTriggered2 j_4_1) (neverTriggered2 j_4_2))
))) (=> (forall ((j_4_1@@0 Int) (j_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= j_4_1@@0 j_4_2@@0)) (and (<= 0 j_4_1@@0) (< j_4_1@@0 n@@11))) (and (<= 0 j_4_2@@0) (< j_4_2@@0 n@@11))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (or (or (not (= x1 x1)) (not (= n@@11 n@@11))) (not (= j_4_1@@0 j_4_2@@0))))
 :qid |stdinbpl.548:17|
 :skolemid |48|
 :pattern ( (neverTriggered2 j_4_1@@0) (neverTriggered2 j_4_2@@0))
)) (=> (and (forall ((j_4_1@@1 Int) ) (!  (=> (and (and (<= 0 j_4_1@@1) (< j_4_1@@1 n@@11)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (= (invRecv2 x1 n@@11 j_4_1@@1) j_4_1@@1) (qpRange2 x1 n@@11 j_4_1@@1)))
 :qid |stdinbpl.554:22|
 :skolemid |49|
 :pattern ( (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@53) null (hide1 x1 n@@11 j_4_1@@1)))
 :pattern ( (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@0) null (hide1 x1 n@@11 j_4_1@@1)))
 :pattern ( (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@53) null (hide1 x1 n@@11 j_4_1@@1)))
)) (forall ((x_1 T@ArrayDomainType) (n_2_1_1 Int) (i_2_1 Int) ) (!  (=> (and (and (and (<= 0 (invRecv2 x_1 n_2_1_1 i_2_1)) (< (invRecv2 x_1 n_2_1_1 i_2_1) n@@11)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 x_1 n_2_1_1 i_2_1)) (and (and (= x1 x_1) (= n@@11 n_2_1_1)) (= (invRecv2 x_1 n_2_1_1 i_2_1) i_2_1)))
 :qid |stdinbpl.558:22|
 :skolemid |50|
 :pattern ( (invRecv2 x_1 n_2_1_1 i_2_1))
))) (and (=> (= (ControlFlow 0 72) (- 0 73)) (forall ((j_4_1@@2 Int) ) (!  (=> (and (<= 0 j_4_1@@2) (< j_4_1@@2 n@@11)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.564:15|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@53) null (hide1 x1 n@@11 j_4_1@@2)))
 :pattern ( (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@0) null (hide1 x1 n@@11 j_4_1@@2)))
 :pattern ( (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@53) null (hide1 x1 n@@11 j_4_1@@2)))
))) (=> (forall ((j_4_1@@3 Int) ) (!  (=> (and (<= 0 j_4_1@@3) (< j_4_1@@3 n@@11)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.564:15|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@53) null (hide1 x1 n@@11 j_4_1@@3)))
 :pattern ( (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@0) null (hide1 x1 n@@11 j_4_1@@3)))
 :pattern ( (select (|PolymorphicMapType_9169_5559_5560#PolymorphicMapType_9169| Heap@@53) null (hide1 x1 n@@11 j_4_1@@3)))
)) (=> (forall ((x_1@@0 T@ArrayDomainType) (n_2_1_1@@0 Int) (i_2_1@@0 Int) ) (!  (=> (and (and (and (<= 0 (invRecv2 x_1@@0 n_2_1_1@@0 i_2_1@@0)) (< (invRecv2 x_1@@0 n_2_1_1@@0 i_2_1@@0) n@@11)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 x_1@@0 n_2_1_1@@0 i_2_1@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (and (and (= x1 x_1@@0) (= n@@11 n_2_1_1@@0)) (= (invRecv2 x_1@@0 n_2_1_1@@0 i_2_1@@0) i_2_1@@0))) (= (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@1) null (hide1 x_1@@0 n_2_1_1@@0 i_2_1@@0)) (+ (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@0) null (hide1 x_1@@0 n_2_1_1@@0 i_2_1@@0)) (/ (to_real 1) (to_real 2))))))
 :qid |stdinbpl.570:22|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@1) null (hide1 x_1@@0 n_2_1_1@@0 i_2_1@@0)))
)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9 T@Ref) (f_5 T@Field_12669_1364) ) (!  (=> (or (or (not (= o_9 null)) (not (IsPredicateField_5490_1364 f_5))) (not (= (getPredWandId_5490_1364 f_5) 1))) (= (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| QPMask@0) o_9 f_5) (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| QPMask@1) o_9 f_5)))
 :qid |stdinbpl.576:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| QPMask@0) o_9 f_5))
 :pattern ( (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| QPMask@1) o_9 f_5))
)) (forall ((o_9@@0 T@Ref) (f_5@@0 T@Field_5490_5560) ) (!  (=> (or (or (not (= o_9@@0 null)) (not (IsPredicateField_5490_31083 f_5@@0))) (not (= (getPredWandId_5490_5533 f_5@@0) 1))) (= (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| QPMask@0) o_9@@0 f_5@@0) (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| QPMask@1) o_9@@0 f_5@@0)))
 :qid |stdinbpl.576:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| QPMask@0) o_9@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| QPMask@1) o_9@@0 f_5@@0))
))) (forall ((o_9@@1 T@Ref) (f_5@@1 T@Field_9229_53) ) (!  (=> (or (or (not (= o_9@@1 null)) (not (IsPredicateField_5490_53 f_5@@1))) (not (= (getPredWandId_5490_53 f_5@@1) 1))) (= (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| QPMask@0) o_9@@1 f_5@@1) (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| QPMask@1) o_9@@1 f_5@@1)))
 :qid |stdinbpl.576:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| QPMask@0) o_9@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| QPMask@1) o_9@@1 f_5@@1))
))) (forall ((o_9@@2 T@Ref) (f_5@@2 T@Field_9242_9243) ) (!  (=> (or (or (not (= o_9@@2 null)) (not (IsPredicateField_5490_9243 f_5@@2))) (not (= (getPredWandId_5490_9243 f_5@@2) 1))) (= (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| QPMask@0) o_9@@2 f_5@@2) (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| QPMask@1) o_9@@2 f_5@@2)))
 :qid |stdinbpl.576:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| QPMask@0) o_9@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| QPMask@1) o_9@@2 f_5@@2))
))) (forall ((o_9@@3 T@Ref) (f_5@@3 T@Field_5490_13930) ) (!  (=> (or (or (not (= o_9@@3 null)) (not (IsPredicateField_5490_45435 f_5@@3))) (not (= (getPredWandId_5490_56853 f_5@@3) 1))) (= (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| QPMask@0) o_9@@3 f_5@@3) (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| QPMask@1) o_9@@3 f_5@@3)))
 :qid |stdinbpl.576:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| QPMask@0) o_9@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| QPMask@1) o_9@@3 f_5@@3))
))) (forall ((o_9@@4 T@Ref) (f_5@@4 T@Field_13912_1364) ) (!  (=> (or (or (not (= o_9@@4 null)) (not (IsPredicateField_5532_1364 f_5@@4))) (not (= (getPredWandId_5532_1364 f_5@@4) 1))) (= (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| QPMask@0) o_9@@4 f_5@@4) (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| QPMask@1) o_9@@4 f_5@@4)))
 :qid |stdinbpl.576:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| QPMask@0) o_9@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| QPMask@1) o_9@@4 f_5@@4))
))) (forall ((o_9@@5 T@Ref) (f_5@@5 T@Field_13912_13913) ) (!  (=> (or (or (not (= o_9@@5 null)) (not (IsPredicateField_5532_5533 f_5@@5))) (not (= (getPredWandId_5532_5533 f_5@@5) 1))) (= (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@0) o_9@@5 f_5@@5) (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@1) o_9@@5 f_5@@5)))
 :qid |stdinbpl.576:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@0) o_9@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@1) o_9@@5 f_5@@5))
))) (forall ((o_9@@6 T@Ref) (f_5@@6 T@Field_13912_53) ) (!  (=> (or (or (not (= o_9@@6 null)) (not (IsPredicateField_5532_53 f_5@@6))) (not (= (getPredWandId_5532_53 f_5@@6) 1))) (= (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| QPMask@0) o_9@@6 f_5@@6) (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| QPMask@1) o_9@@6 f_5@@6)))
 :qid |stdinbpl.576:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| QPMask@0) o_9@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| QPMask@1) o_9@@6 f_5@@6))
))) (forall ((o_9@@7 T@Ref) (f_5@@7 T@Field_13912_9243) ) (!  (=> (or (or (not (= o_9@@7 null)) (not (IsPredicateField_5532_9243 f_5@@7))) (not (= (getPredWandId_5532_9243 f_5@@7) 1))) (= (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| QPMask@0) o_9@@7 f_5@@7) (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| QPMask@1) o_9@@7 f_5@@7)))
 :qid |stdinbpl.576:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| QPMask@0) o_9@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| QPMask@1) o_9@@7 f_5@@7))
))) (forall ((o_9@@8 T@Ref) (f_5@@8 T@Field_13925_13930) ) (!  (=> (or (or (not (= o_9@@8 null)) (not (IsPredicateField_5532_46266 f_5@@8))) (not (= (getPredWandId_5532_57662 f_5@@8) 1))) (= (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| QPMask@0) o_9@@8 f_5@@8) (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| QPMask@1) o_9@@8 f_5@@8)))
 :qid |stdinbpl.576:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| QPMask@0) o_9@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| QPMask@1) o_9@@8 f_5@@8))
))) (forall ((o_9@@9 T@Ref) (f_5@@9 T@Field_5559_1364) ) (!  (=> (or (or (not (= o_9@@9 null)) (not (IsPredicateField_5559_1364 f_5@@9))) (not (= (getPredWandId_5559_1364 f_5@@9) 1))) (= (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| QPMask@0) o_9@@9 f_5@@9) (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| QPMask@1) o_9@@9 f_5@@9)))
 :qid |stdinbpl.576:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| QPMask@0) o_9@@9 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| QPMask@1) o_9@@9 f_5@@9))
))) (forall ((o_9@@10 T@Ref) (f_5@@10 T@Field_15182_15183) ) (!  (=> (or (or (not (= o_9@@10 null)) (not (IsPredicateField_5559_5560 f_5@@10))) (not (= (getPredWandId_5559_5560 f_5@@10) 1))) (= (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@0) o_9@@10 f_5@@10) (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@1) o_9@@10 f_5@@10)))
 :qid |stdinbpl.576:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@0) o_9@@10 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@1) o_9@@10 f_5@@10))
))) (forall ((o_9@@11 T@Ref) (f_5@@11 T@Field_5559_53) ) (!  (=> (or (or (not (= o_9@@11 null)) (not (IsPredicateField_5559_53 f_5@@11))) (not (= (getPredWandId_5559_53 f_5@@11) 1))) (= (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| QPMask@0) o_9@@11 f_5@@11) (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| QPMask@1) o_9@@11 f_5@@11)))
 :qid |stdinbpl.576:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| QPMask@0) o_9@@11 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| QPMask@1) o_9@@11 f_5@@11))
))) (forall ((o_9@@12 T@Ref) (f_5@@12 T@Field_5559_9243) ) (!  (=> (or (or (not (= o_9@@12 null)) (not (IsPredicateField_5559_9243 f_5@@12))) (not (= (getPredWandId_5559_9243 f_5@@12) 1))) (= (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| QPMask@0) o_9@@12 f_5@@12) (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| QPMask@1) o_9@@12 f_5@@12)))
 :qid |stdinbpl.576:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| QPMask@0) o_9@@12 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| QPMask@1) o_9@@12 f_5@@12))
))) (forall ((o_9@@13 T@Ref) (f_5@@13 T@Field_15195_15200) ) (!  (=> (or (or (not (= o_9@@13 null)) (not (IsPredicateField_5559_47097 f_5@@13))) (not (= (getPredWandId_5559_58471 f_5@@13) 1))) (= (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| QPMask@0) o_9@@13 f_5@@13) (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| QPMask@1) o_9@@13 f_5@@13)))
 :qid |stdinbpl.576:29|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| QPMask@0) o_9@@13 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| QPMask@1) o_9@@13 f_5@@13))
))) (and (and (forall ((x_1@@1 T@ArrayDomainType) (n_2_1_1@@1 Int) (i_2_1@@1 Int) ) (!  (=> (not (and (and (and (<= 0 (invRecv2 x_1@@1 n_2_1_1@@1 i_2_1@@1)) (< (invRecv2 x_1@@1 n_2_1_1@@1 i_2_1@@1) n@@11)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 x_1@@1 n_2_1_1@@1 i_2_1@@1))) (= (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@1) null (hide1 x_1@@1 n_2_1_1@@1 i_2_1@@1)) (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@0) null (hide1 x_1@@1 n_2_1_1@@1 i_2_1@@1))))
 :qid |stdinbpl.580:22|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@1) null (hide1 x_1@@1 n_2_1_1@@1 i_2_1@@1)))
)) (state Heap@@53 QPMask@1)) (and (state Heap@@53 QPMask@1) (state Heap@@53 QPMask@1)))) (and (and (=> (= (ControlFlow 0 72) 71) anon47_Else_correct) (=> (= (ControlFlow 0 72) 14) anon48_Then_correct)) (=> (= (ControlFlow 0 72) 4) anon48_Else_correct)))))))))))
(let ((anon46_Then_correct true))
(let ((anon45_Else_correct  (and (=> (= (ControlFlow 0 75) (- 0 76)) (forall ((j_1 Int) (j_1_1 Int) ) (!  (=> (and (and (and (and (not (= j_1 j_1_1)) (and (<= 0 j_1) (< j_1 n@@11))) (and (<= 0 j_1_1) (< j_1_1 n@@11))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (or (not (= x0 x0)) (not (= n@@11 n@@11))) (not (= j_1 j_1_1))))
 :qid |stdinbpl.506:17|
 :skolemid |42|
 :pattern ( (neverTriggered1 j_1) (neverTriggered1 j_1_1))
))) (=> (forall ((j_1@@0 Int) (j_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_1@@0 j_1_1@@0)) (and (<= 0 j_1@@0) (< j_1@@0 n@@11))) (and (<= 0 j_1_1@@0) (< j_1_1@@0 n@@11))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (or (not (= x0 x0)) (not (= n@@11 n@@11))) (not (= j_1@@0 j_1_1@@0))))
 :qid |stdinbpl.506:17|
 :skolemid |42|
 :pattern ( (neverTriggered1 j_1@@0) (neverTriggered1 j_1_1@@0))
)) (=> (forall ((j_1@@1 Int) ) (!  (=> (and (and (<= 0 j_1@@1) (< j_1@@1 n@@11)) (< NoPerm FullPerm)) (and (= (invRecv1 x0 n@@11 j_1@@1) j_1@@1) (qpRange1 x0 n@@11 j_1@@1)))
 :qid |stdinbpl.512:22|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@53) null (hide0 x0 n@@11 j_1@@1)))
 :pattern ( (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| ZeroMask) null (hide0 x0 n@@11 j_1@@1)))
 :pattern ( (select (|PolymorphicMapType_9169_5532_5533#PolymorphicMapType_9169| Heap@@53) null (hide0 x0 n@@11 j_1@@1)))
)) (=> (and (forall ((x@@11 T@ArrayDomainType) (n_1_1_1 Int) (i_1_1_1 Int) ) (!  (=> (and (and (and (<= 0 (invRecv1 x@@11 n_1_1_1 i_1_1_1)) (< (invRecv1 x@@11 n_1_1_1 i_1_1_1) n@@11)) (< NoPerm FullPerm)) (qpRange1 x@@11 n_1_1_1 i_1_1_1)) (and (and (= x0 x@@11) (= n@@11 n_1_1_1)) (= (invRecv1 x@@11 n_1_1_1 i_1_1_1) i_1_1_1)))
 :qid |stdinbpl.516:22|
 :skolemid |44|
 :pattern ( (invRecv1 x@@11 n_1_1_1 i_1_1_1))
)) (forall ((x@@12 T@ArrayDomainType) (n_1_1_1@@0 Int) (i_1_1_1@@0 Int) ) (!  (=> (and (and (and (<= 0 (invRecv1 x@@12 n_1_1_1@@0 i_1_1_1@@0)) (< (invRecv1 x@@12 n_1_1_1@@0 i_1_1_1@@0) n@@11)) (< NoPerm FullPerm)) (qpRange1 x@@12 n_1_1_1@@0 i_1_1_1@@0)) (and (=> (< NoPerm FullPerm) (and (and (= x0 x@@12) (= n@@11 n_1_1_1@@0)) (= (invRecv1 x@@12 n_1_1_1@@0 i_1_1_1@@0) i_1_1_1@@0))) (= (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@0) null (hide0 x@@12 n_1_1_1@@0 i_1_1_1@@0)) (+ (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| ZeroMask) null (hide0 x@@12 n_1_1_1@@0 i_1_1_1@@0)) FullPerm))))
 :qid |stdinbpl.522:22|
 :skolemid |45|
 :pattern ( (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@0) null (hide0 x@@12 n_1_1_1@@0 i_1_1_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@14 T@Ref) (f_5@@14 T@Field_12669_1364) ) (!  (=> (or (or (not (= o_9@@14 null)) (not (IsPredicateField_5490_1364 f_5@@14))) (not (= (getPredWandId_5490_1364 f_5@@14) 0))) (= (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| ZeroMask) o_9@@14 f_5@@14) (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| QPMask@0) o_9@@14 f_5@@14)))
 :qid |stdinbpl.528:29|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| ZeroMask) o_9@@14 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_9190_5490_1364#PolymorphicMapType_9190| QPMask@0) o_9@@14 f_5@@14))
)) (forall ((o_9@@15 T@Ref) (f_5@@15 T@Field_5490_5560) ) (!  (=> (or (or (not (= o_9@@15 null)) (not (IsPredicateField_5490_31083 f_5@@15))) (not (= (getPredWandId_5490_5533 f_5@@15) 0))) (= (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| ZeroMask) o_9@@15 f_5@@15) (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| QPMask@0) o_9@@15 f_5@@15)))
 :qid |stdinbpl.528:29|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| ZeroMask) o_9@@15 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_9190_5490_5533#PolymorphicMapType_9190| QPMask@0) o_9@@15 f_5@@15))
))) (forall ((o_9@@16 T@Ref) (f_5@@16 T@Field_9229_53) ) (!  (=> (or (or (not (= o_9@@16 null)) (not (IsPredicateField_5490_53 f_5@@16))) (not (= (getPredWandId_5490_53 f_5@@16) 0))) (= (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| ZeroMask) o_9@@16 f_5@@16) (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| QPMask@0) o_9@@16 f_5@@16)))
 :qid |stdinbpl.528:29|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| ZeroMask) o_9@@16 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_9190_5490_53#PolymorphicMapType_9190| QPMask@0) o_9@@16 f_5@@16))
))) (forall ((o_9@@17 T@Ref) (f_5@@17 T@Field_9242_9243) ) (!  (=> (or (or (not (= o_9@@17 null)) (not (IsPredicateField_5490_9243 f_5@@17))) (not (= (getPredWandId_5490_9243 f_5@@17) 0))) (= (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| ZeroMask) o_9@@17 f_5@@17) (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| QPMask@0) o_9@@17 f_5@@17)))
 :qid |stdinbpl.528:29|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| ZeroMask) o_9@@17 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_9190_5490_9243#PolymorphicMapType_9190| QPMask@0) o_9@@17 f_5@@17))
))) (forall ((o_9@@18 T@Ref) (f_5@@18 T@Field_5490_13930) ) (!  (=> (or (or (not (= o_9@@18 null)) (not (IsPredicateField_5490_45435 f_5@@18))) (not (= (getPredWandId_5490_56853 f_5@@18) 0))) (= (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| ZeroMask) o_9@@18 f_5@@18) (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| QPMask@0) o_9@@18 f_5@@18)))
 :qid |stdinbpl.528:29|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| ZeroMask) o_9@@18 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_9190_5490_42820#PolymorphicMapType_9190| QPMask@0) o_9@@18 f_5@@18))
))) (forall ((o_9@@19 T@Ref) (f_5@@19 T@Field_13912_1364) ) (!  (=> (or (or (not (= o_9@@19 null)) (not (IsPredicateField_5532_1364 f_5@@19))) (not (= (getPredWandId_5532_1364 f_5@@19) 0))) (= (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| ZeroMask) o_9@@19 f_5@@19) (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| QPMask@0) o_9@@19 f_5@@19)))
 :qid |stdinbpl.528:29|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| ZeroMask) o_9@@19 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_9190_5532_1364#PolymorphicMapType_9190| QPMask@0) o_9@@19 f_5@@19))
))) (forall ((o_9@@20 T@Ref) (f_5@@20 T@Field_13912_13913) ) (!  (=> (or (or (not (= o_9@@20 null)) (not (IsPredicateField_5532_5533 f_5@@20))) (not (= (getPredWandId_5532_5533 f_5@@20) 0))) (= (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| ZeroMask) o_9@@20 f_5@@20) (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@0) o_9@@20 f_5@@20)))
 :qid |stdinbpl.528:29|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| ZeroMask) o_9@@20 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@0) o_9@@20 f_5@@20))
))) (forall ((o_9@@21 T@Ref) (f_5@@21 T@Field_13912_53) ) (!  (=> (or (or (not (= o_9@@21 null)) (not (IsPredicateField_5532_53 f_5@@21))) (not (= (getPredWandId_5532_53 f_5@@21) 0))) (= (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| ZeroMask) o_9@@21 f_5@@21) (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| QPMask@0) o_9@@21 f_5@@21)))
 :qid |stdinbpl.528:29|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| ZeroMask) o_9@@21 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_9190_5532_53#PolymorphicMapType_9190| QPMask@0) o_9@@21 f_5@@21))
))) (forall ((o_9@@22 T@Ref) (f_5@@22 T@Field_13912_9243) ) (!  (=> (or (or (not (= o_9@@22 null)) (not (IsPredicateField_5532_9243 f_5@@22))) (not (= (getPredWandId_5532_9243 f_5@@22) 0))) (= (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| ZeroMask) o_9@@22 f_5@@22) (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| QPMask@0) o_9@@22 f_5@@22)))
 :qid |stdinbpl.528:29|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| ZeroMask) o_9@@22 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_9190_5532_9243#PolymorphicMapType_9190| QPMask@0) o_9@@22 f_5@@22))
))) (forall ((o_9@@23 T@Ref) (f_5@@23 T@Field_13925_13930) ) (!  (=> (or (or (not (= o_9@@23 null)) (not (IsPredicateField_5532_46266 f_5@@23))) (not (= (getPredWandId_5532_57662 f_5@@23) 0))) (= (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| ZeroMask) o_9@@23 f_5@@23) (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| QPMask@0) o_9@@23 f_5@@23)))
 :qid |stdinbpl.528:29|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| ZeroMask) o_9@@23 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_9190_5532_43231#PolymorphicMapType_9190| QPMask@0) o_9@@23 f_5@@23))
))) (forall ((o_9@@24 T@Ref) (f_5@@24 T@Field_5559_1364) ) (!  (=> (or (or (not (= o_9@@24 null)) (not (IsPredicateField_5559_1364 f_5@@24))) (not (= (getPredWandId_5559_1364 f_5@@24) 0))) (= (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| ZeroMask) o_9@@24 f_5@@24) (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| QPMask@0) o_9@@24 f_5@@24)))
 :qid |stdinbpl.528:29|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| ZeroMask) o_9@@24 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_9190_5559_1364#PolymorphicMapType_9190| QPMask@0) o_9@@24 f_5@@24))
))) (forall ((o_9@@25 T@Ref) (f_5@@25 T@Field_15182_15183) ) (!  (=> (or (or (not (= o_9@@25 null)) (not (IsPredicateField_5559_5560 f_5@@25))) (not (= (getPredWandId_5559_5560 f_5@@25) 0))) (= (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| ZeroMask) o_9@@25 f_5@@25) (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@0) o_9@@25 f_5@@25)))
 :qid |stdinbpl.528:29|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| ZeroMask) o_9@@25 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_9190_5559_5560#PolymorphicMapType_9190| QPMask@0) o_9@@25 f_5@@25))
))) (forall ((o_9@@26 T@Ref) (f_5@@26 T@Field_5559_53) ) (!  (=> (or (or (not (= o_9@@26 null)) (not (IsPredicateField_5559_53 f_5@@26))) (not (= (getPredWandId_5559_53 f_5@@26) 0))) (= (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| ZeroMask) o_9@@26 f_5@@26) (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| QPMask@0) o_9@@26 f_5@@26)))
 :qid |stdinbpl.528:29|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| ZeroMask) o_9@@26 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_9190_5559_53#PolymorphicMapType_9190| QPMask@0) o_9@@26 f_5@@26))
))) (forall ((o_9@@27 T@Ref) (f_5@@27 T@Field_5559_9243) ) (!  (=> (or (or (not (= o_9@@27 null)) (not (IsPredicateField_5559_9243 f_5@@27))) (not (= (getPredWandId_5559_9243 f_5@@27) 0))) (= (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| ZeroMask) o_9@@27 f_5@@27) (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| QPMask@0) o_9@@27 f_5@@27)))
 :qid |stdinbpl.528:29|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| ZeroMask) o_9@@27 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_9190_5559_9243#PolymorphicMapType_9190| QPMask@0) o_9@@27 f_5@@27))
))) (forall ((o_9@@28 T@Ref) (f_5@@28 T@Field_15195_15200) ) (!  (=> (or (or (not (= o_9@@28 null)) (not (IsPredicateField_5559_47097 f_5@@28))) (not (= (getPredWandId_5559_58471 f_5@@28) 0))) (= (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| ZeroMask) o_9@@28 f_5@@28) (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| QPMask@0) o_9@@28 f_5@@28)))
 :qid |stdinbpl.528:29|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| ZeroMask) o_9@@28 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_9190_5559_43642#PolymorphicMapType_9190| QPMask@0) o_9@@28 f_5@@28))
))) (forall ((x@@13 T@ArrayDomainType) (n_1_1_1@@1 Int) (i_1_1_1@@1 Int) ) (!  (=> (not (and (and (and (<= 0 (invRecv1 x@@13 n_1_1_1@@1 i_1_1_1@@1)) (< (invRecv1 x@@13 n_1_1_1@@1 i_1_1_1@@1) n@@11)) (< NoPerm FullPerm)) (qpRange1 x@@13 n_1_1_1@@1 i_1_1_1@@1))) (= (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@0) null (hide0 x@@13 n_1_1_1@@1 i_1_1_1@@1)) (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| ZeroMask) null (hide0 x@@13 n_1_1_1@@1 i_1_1_1@@1))))
 :qid |stdinbpl.532:22|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_9190_5532_5533#PolymorphicMapType_9190| QPMask@0) null (hide0 x@@13 n_1_1_1@@1 i_1_1_1@@1)))
))) (and (state Heap@@53 QPMask@0) (state Heap@@53 QPMask@0))) (and (=> (= (ControlFlow 0 75) 2) anon46_Then_correct) (=> (= (ControlFlow 0 75) 72) anon46_Else_correct)))))))))
(let ((anon45_Then_correct true))
(let ((anon0_correct  (=> (and (and (and (state Heap@@53 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (not (= x0 x1)))) (and (and (state Heap@@53 ZeroMask) (= (alen x0) n@@11)) (and (= (alen x1) n@@11) (state Heap@@53 ZeroMask)))) (and (=> (= (ControlFlow 0 77) 1) anon45_Then_correct) (=> (= (ControlFlow 0 77) 75) anon45_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 78) 77) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
