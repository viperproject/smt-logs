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
(declare-sort T@Field_9767_53 0)
(declare-sort T@Field_9780_9781 0)
(declare-sort T@Field_13205_1324 0)
(declare-sort T@Field_13628_13629 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_15535_15540 0)
(declare-sort T@Field_18011_18012 0)
(declare-sort T@Field_19890_19895 0)
(declare-sort T@Field_5627_13629 0)
(declare-sort T@Field_5627_15540 0)
(declare-sort T@Field_13628_1324 0)
(declare-sort T@Field_13628_53 0)
(declare-sort T@Field_13628_9781 0)
(declare-sort T@Field_18011_1324 0)
(declare-sort T@Field_18011_53 0)
(declare-sort T@Field_18011_9781 0)
(declare-datatypes ((T@PolymorphicMapType_9728 0)) (((PolymorphicMapType_9728 (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| (Array T@Ref T@Field_13628_13629 Real)) (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| (Array T@Ref T@Field_13205_1324 Real)) (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| (Array T@Ref T@Field_18011_18012 Real)) (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| (Array T@Ref T@Field_13628_1324 Real)) (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| (Array T@Ref T@Field_13628_53 Real)) (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| (Array T@Ref T@Field_13628_9781 Real)) (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| (Array T@Ref T@Field_15535_15540 Real)) (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| (Array T@Ref T@Field_5627_13629 Real)) (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| (Array T@Ref T@Field_9767_53 Real)) (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| (Array T@Ref T@Field_9780_9781 Real)) (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| (Array T@Ref T@Field_5627_15540 Real)) (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| (Array T@Ref T@Field_18011_1324 Real)) (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| (Array T@Ref T@Field_18011_53 Real)) (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| (Array T@Ref T@Field_18011_9781 Real)) (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| (Array T@Ref T@Field_19890_19895 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10256 0)) (((PolymorphicMapType_10256 (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| (Array T@Ref T@Field_13205_1324 Bool)) (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| (Array T@Ref T@Field_9767_53 Bool)) (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| (Array T@Ref T@Field_9780_9781 Bool)) (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| (Array T@Ref T@Field_5627_13629 Bool)) (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| (Array T@Ref T@Field_5627_15540 Bool)) (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| (Array T@Ref T@Field_13628_1324 Bool)) (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| (Array T@Ref T@Field_13628_53 Bool)) (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| (Array T@Ref T@Field_13628_9781 Bool)) (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| (Array T@Ref T@Field_13628_13629 Bool)) (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| (Array T@Ref T@Field_15535_15540 Bool)) (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| (Array T@Ref T@Field_18011_1324 Bool)) (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| (Array T@Ref T@Field_18011_53 Bool)) (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| (Array T@Ref T@Field_18011_9781 Bool)) (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| (Array T@Ref T@Field_18011_18012 Bool)) (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| (Array T@Ref T@Field_19890_19895 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9707 0)) (((PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| (Array T@Ref T@Field_9767_53 Bool)) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| (Array T@Ref T@Field_9780_9781 T@Ref)) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| (Array T@Ref T@Field_13205_1324 Int)) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| (Array T@Ref T@Field_13628_13629 T@FrameType)) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| (Array T@Ref T@Field_15535_15540 T@PolymorphicMapType_10256)) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| (Array T@Ref T@Field_18011_18012 T@FrameType)) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| (Array T@Ref T@Field_19890_19895 T@PolymorphicMapType_10256)) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| (Array T@Ref T@Field_5627_13629 T@FrameType)) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| (Array T@Ref T@Field_5627_15540 T@PolymorphicMapType_10256)) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| (Array T@Ref T@Field_13628_1324 Int)) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| (Array T@Ref T@Field_13628_53 Bool)) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| (Array T@Ref T@Field_13628_9781 T@Ref)) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| (Array T@Ref T@Field_18011_1324 Int)) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| (Array T@Ref T@Field_18011_53 Bool)) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| (Array T@Ref T@Field_18011_9781 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_9767_53)
(declare-fun vint_1 () T@Field_13205_1324)
(declare-fun succHeap (T@PolymorphicMapType_9707 T@PolymorphicMapType_9707) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9707 T@PolymorphicMapType_9707) Bool)
(declare-fun state (T@PolymorphicMapType_9707 T@PolymorphicMapType_9728) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9728) Bool)
(declare-sort T@ArrayDomainType 0)
(declare-fun hide0 (T@ArrayDomainType Int Int) T@Field_13628_13629)
(declare-fun IsPredicateField_5731_5732 (T@Field_13628_13629) Bool)
(declare-fun hide1 (T@ArrayDomainType Int Int) T@Field_18011_18012)
(declare-fun IsPredicateField_5758_5759 (T@Field_18011_18012) Bool)
(declare-fun |get0'| (T@PolymorphicMapType_9707 T@ArrayDomainType Int Int) Int)
(declare-fun dummyFunction_1723 (Int) Bool)
(declare-fun |get0#triggerStateless| (T@ArrayDomainType Int Int) Int)
(declare-fun |get1'| (T@PolymorphicMapType_9707 T@ArrayDomainType Int Int) Int)
(declare-fun |get1#triggerStateless| (T@ArrayDomainType Int Int) Int)
(declare-fun |hide0#trigger_5731| (T@PolymorphicMapType_9707 T@Field_13628_13629) Bool)
(declare-fun |hide0#everUsed_5731| (T@Field_13628_13629) Bool)
(declare-fun |hide1#trigger_5758| (T@PolymorphicMapType_9707 T@Field_18011_18012) Bool)
(declare-fun |hide1#everUsed_5758| (T@Field_18011_18012) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10256)
(declare-fun getPredWandId_5731_5732 (T@Field_13628_13629) Int)
(declare-fun getPredWandId_5758_5759 (T@Field_18011_18012) Int)
(declare-fun |aloc'| (T@PolymorphicMapType_9707 T@ArrayDomainType Int) T@Ref)
(declare-fun dummyFunction_5721 (T@Ref) Bool)
(declare-fun |aloc#triggerStateless| (T@ArrayDomainType Int) T@Ref)
(declare-fun |aloc#frame| (T@FrameType T@ArrayDomainType Int) T@Ref)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun PredicateMaskField_5731 (T@Field_13628_13629) T@Field_15535_15540)
(declare-fun |hide0#sm| (T@ArrayDomainType Int Int) T@Field_15535_15540)
(declare-fun PredicateMaskField_5758 (T@Field_18011_18012) T@Field_19890_19895)
(declare-fun |hide1#sm| (T@ArrayDomainType Int Int) T@Field_19890_19895)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |get1#trigger| (T@FrameType T@ArrayDomainType Int Int) Bool)
(declare-fun null () T@Ref)
(declare-fun aloc_1 (T@PolymorphicMapType_9707 T@ArrayDomainType Int) T@Ref)
(declare-fun |get0#trigger| (T@FrameType T@ArrayDomainType Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9707 T@PolymorphicMapType_9707 T@PolymorphicMapType_9728) Bool)
(declare-fun HasDirectPerm_18011_13629 (T@PolymorphicMapType_9728 T@Ref T@Field_18011_18012) Bool)
(declare-fun HasDirectPerm_13628_13629 (T@PolymorphicMapType_9728 T@Ref T@Field_13628_13629) Bool)
(declare-fun IsPredicateField_5627_31845 (T@Field_5627_13629) Bool)
(declare-fun PredicateMaskField_5627 (T@Field_5627_13629) T@Field_5627_15540)
(declare-fun HasDirectPerm_5627_13629 (T@PolymorphicMapType_9728 T@Ref T@Field_5627_13629) Bool)
(declare-fun IsWandField_18011_37541 (T@Field_18011_18012) Bool)
(declare-fun WandMaskField_18011 (T@Field_18011_18012) T@Field_19890_19895)
(declare-fun IsWandField_13628_37184 (T@Field_13628_13629) Bool)
(declare-fun WandMaskField_13628 (T@Field_13628_13629) T@Field_15535_15540)
(declare-fun IsWandField_5627_36827 (T@Field_5627_13629) Bool)
(declare-fun WandMaskField_5627 (T@Field_5627_13629) T@Field_5627_15540)
(declare-fun get1 (T@PolymorphicMapType_9707 T@ArrayDomainType Int Int) Int)
(declare-fun get0 (T@PolymorphicMapType_9707 T@ArrayDomainType Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_9707)
(declare-fun ZeroMask () T@PolymorphicMapType_9728)
(declare-fun InsidePredicate_18011_18011 (T@Field_18011_18012 T@FrameType T@Field_18011_18012 T@FrameType) Bool)
(declare-fun InsidePredicate_13628_13628 (T@Field_13628_13629 T@FrameType T@Field_13628_13629 T@FrameType) Bool)
(declare-fun InsidePredicate_9767_9767 (T@Field_5627_13629 T@FrameType T@Field_5627_13629 T@FrameType) Bool)
(declare-fun IsPredicateField_5627_1324 (T@Field_13205_1324) Bool)
(declare-fun IsWandField_5627_1324 (T@Field_13205_1324) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5758_47859 (T@Field_19890_19895) Bool)
(declare-fun IsWandField_5758_47875 (T@Field_19890_19895) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5758_9781 (T@Field_18011_9781) Bool)
(declare-fun IsWandField_5758_9781 (T@Field_18011_9781) Bool)
(declare-fun IsPredicateField_5758_53 (T@Field_18011_53) Bool)
(declare-fun IsWandField_5758_53 (T@Field_18011_53) Bool)
(declare-fun IsPredicateField_5758_1324 (T@Field_18011_1324) Bool)
(declare-fun IsWandField_5758_1324 (T@Field_18011_1324) Bool)
(declare-fun IsPredicateField_5627_47028 (T@Field_5627_15540) Bool)
(declare-fun IsWandField_5627_47044 (T@Field_5627_15540) Bool)
(declare-fun IsPredicateField_5627_9781 (T@Field_9780_9781) Bool)
(declare-fun IsWandField_5627_9781 (T@Field_9780_9781) Bool)
(declare-fun IsPredicateField_5627_53 (T@Field_9767_53) Bool)
(declare-fun IsWandField_5627_53 (T@Field_9767_53) Bool)
(declare-fun IsPredicateField_5731_46211 (T@Field_15535_15540) Bool)
(declare-fun IsWandField_5731_46227 (T@Field_15535_15540) Bool)
(declare-fun IsPredicateField_5731_9781 (T@Field_13628_9781) Bool)
(declare-fun IsWandField_5731_9781 (T@Field_13628_9781) Bool)
(declare-fun IsPredicateField_5731_53 (T@Field_13628_53) Bool)
(declare-fun IsWandField_5731_53 (T@Field_13628_53) Bool)
(declare-fun IsPredicateField_5731_1324 (T@Field_13628_1324) Bool)
(declare-fun IsWandField_5731_1324 (T@Field_13628_1324) Bool)
(declare-fun HasDirectPerm_18011_31600 (T@PolymorphicMapType_9728 T@Ref T@Field_19890_19895) Bool)
(declare-fun HasDirectPerm_18011_9781 (T@PolymorphicMapType_9728 T@Ref T@Field_18011_9781) Bool)
(declare-fun HasDirectPerm_18011_53 (T@PolymorphicMapType_9728 T@Ref T@Field_18011_53) Bool)
(declare-fun HasDirectPerm_18011_1324 (T@PolymorphicMapType_9728 T@Ref T@Field_18011_1324) Bool)
(declare-fun HasDirectPerm_13628_30482 (T@PolymorphicMapType_9728 T@Ref T@Field_15535_15540) Bool)
(declare-fun HasDirectPerm_13628_9781 (T@PolymorphicMapType_9728 T@Ref T@Field_13628_9781) Bool)
(declare-fun HasDirectPerm_13628_53 (T@PolymorphicMapType_9728 T@Ref T@Field_13628_53) Bool)
(declare-fun HasDirectPerm_13628_1324 (T@PolymorphicMapType_9728 T@Ref T@Field_13628_1324) Bool)
(declare-fun HasDirectPerm_5627_29321 (T@PolymorphicMapType_9728 T@Ref T@Field_5627_15540) Bool)
(declare-fun HasDirectPerm_5627_9781 (T@PolymorphicMapType_9728 T@Ref T@Field_9780_9781) Bool)
(declare-fun HasDirectPerm_5627_53 (T@PolymorphicMapType_9728 T@Ref T@Field_9767_53) Bool)
(declare-fun HasDirectPerm_5627_1324 (T@PolymorphicMapType_9728 T@Ref T@Field_13205_1324) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9728 T@PolymorphicMapType_9728 T@PolymorphicMapType_9728) Bool)
(declare-fun |aloc#trigger| (T@FrameType T@ArrayDomainType Int) Bool)
(declare-fun alen (T@ArrayDomainType) Int)
(declare-fun loc_inv_1 (T@Ref) T@ArrayDomainType)
(declare-fun loc_inv_2 (T@Ref) Int)
(declare-fun array_loc (T@ArrayDomainType Int) T@Ref)
(declare-fun |get0#frame| (T@FrameType T@ArrayDomainType Int Int) Int)
(declare-fun |get1#frame| (T@FrameType T@ArrayDomainType Int Int) Int)
(declare-fun InsidePredicate_18011_13628 (T@Field_18011_18012 T@FrameType T@Field_13628_13629 T@FrameType) Bool)
(declare-fun InsidePredicate_18011_9767 (T@Field_18011_18012 T@FrameType T@Field_5627_13629 T@FrameType) Bool)
(declare-fun InsidePredicate_13628_18011 (T@Field_13628_13629 T@FrameType T@Field_18011_18012 T@FrameType) Bool)
(declare-fun InsidePredicate_13628_9767 (T@Field_13628_13629 T@FrameType T@Field_5627_13629 T@FrameType) Bool)
(declare-fun InsidePredicate_9767_18011 (T@Field_5627_13629 T@FrameType T@Field_18011_18012 T@FrameType) Bool)
(declare-fun InsidePredicate_9767_13628 (T@Field_5627_13629 T@FrameType T@Field_13628_13629 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_9707) (Heap1 T@PolymorphicMapType_9707) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9707) (Mask T@PolymorphicMapType_9728) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9707) (Heap1@@0 T@PolymorphicMapType_9707) (Heap2 T@PolymorphicMapType_9707) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((x T@ArrayDomainType) (n Int) (i Int) ) (! (IsPredicateField_5731_5732 (hide0 x n i))
 :qid |stdinbpl.654:15|
 :skolemid |41|
 :pattern ( (hide0 x n i))
)))
(assert (forall ((x@@0 T@ArrayDomainType) (n@@0 Int) (i@@0 Int) ) (! (IsPredicateField_5758_5759 (hide1 x@@0 n@@0 i@@0))
 :qid |stdinbpl.728:15|
 :skolemid |47|
 :pattern ( (hide1 x@@0 n@@0 i@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9707) (x@@1 T@ArrayDomainType) (n@@1 Int) (i@@1 Int) ) (! (dummyFunction_1723 (|get0#triggerStateless| x@@1 n@@1 i@@1))
 :qid |stdinbpl.246:15|
 :skolemid |25|
 :pattern ( (|get0'| Heap@@0 x@@1 n@@1 i@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9707) (x@@2 T@ArrayDomainType) (n@@2 Int) (i@@2 Int) ) (! (dummyFunction_1723 (|get1#triggerStateless| x@@2 n@@2 i@@2))
 :qid |stdinbpl.410:15|
 :skolemid |30|
 :pattern ( (|get1'| Heap@@1 x@@2 n@@2 i@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9707) (x@@3 T@ArrayDomainType) (n@@3 Int) (i@@3 Int) ) (! (|hide0#everUsed_5731| (hide0 x@@3 n@@3 i@@3))
 :qid |stdinbpl.673:15|
 :skolemid |45|
 :pattern ( (|hide0#trigger_5731| Heap@@2 (hide0 x@@3 n@@3 i@@3)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9707) (x@@4 T@ArrayDomainType) (n@@4 Int) (i@@4 Int) ) (! (|hide1#everUsed_5758| (hide1 x@@4 n@@4 i@@4))
 :qid |stdinbpl.747:15|
 :skolemid |51|
 :pattern ( (|hide1#trigger_5758| Heap@@3 (hide1 x@@4 n@@4 i@@4)))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_19890_19895) ) (!  (not (select (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_18011_18012) ) (!  (not (select (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18011_9781) ) (!  (not (select (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_18011_53) ) (!  (not (select (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_18011_1324) ) (!  (not (select (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_15535_15540) ) (!  (not (select (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_13628_13629) ) (!  (not (select (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_13628_9781) ) (!  (not (select (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_13628_53) ) (!  (not (select (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_13628_1324) ) (!  (not (select (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_5627_15540) ) (!  (not (select (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_5627_13629) ) (!  (not (select (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_9780_9781) ) (!  (not (select (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_9767_53) ) (!  (not (select (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_13205_1324) ) (!  (not (select (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((x@@5 T@ArrayDomainType) (n@@5 Int) (i@@5 Int) ) (! (= (getPredWandId_5731_5732 (hide0 x@@5 n@@5 i@@5)) 0)
 :qid |stdinbpl.658:15|
 :skolemid |42|
 :pattern ( (hide0 x@@5 n@@5 i@@5))
)))
(assert (forall ((x@@6 T@ArrayDomainType) (n@@6 Int) (i@@6 Int) ) (! (= (getPredWandId_5758_5759 (hide1 x@@6 n@@6 i@@6)) 1)
 :qid |stdinbpl.732:15|
 :skolemid |48|
 :pattern ( (hide1 x@@6 n@@6 i@@6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9707) (a_2 T@ArrayDomainType) (i@@7 Int) ) (! (dummyFunction_5721 (|aloc#triggerStateless| a_2 i@@7))
 :qid |stdinbpl.578:15|
 :skolemid |35|
 :pattern ( (|aloc'| Heap@@4 a_2 i@@7))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9707) (Mask@@0 T@PolymorphicMapType_9728) (a_2@@0 T@ArrayDomainType) (i@@8 Int) ) (!  (=> (state Heap@@5 Mask@@0) (= (|aloc'| Heap@@5 a_2@@0 i@@8) (|aloc#frame| EmptyFrame a_2@@0 i@@8)))
 :qid |stdinbpl.591:15|
 :skolemid |37|
 :pattern ( (state Heap@@5 Mask@@0) (|aloc'| Heap@@5 a_2@@0 i@@8))
)))
(assert (forall ((x@@7 T@ArrayDomainType) (n@@7 Int) (i@@9 Int) ) (! (= (PredicateMaskField_5731 (hide0 x@@7 n@@7 i@@9)) (|hide0#sm| x@@7 n@@7 i@@9))
 :qid |stdinbpl.650:15|
 :skolemid |40|
 :pattern ( (PredicateMaskField_5731 (hide0 x@@7 n@@7 i@@9)))
)))
(assert (forall ((x@@8 T@ArrayDomainType) (n@@8 Int) (i@@10 Int) ) (! (= (PredicateMaskField_5758 (hide1 x@@8 n@@8 i@@10)) (|hide1#sm| x@@8 n@@8 i@@10))
 :qid |stdinbpl.724:15|
 :skolemid |46|
 :pattern ( (PredicateMaskField_5758 (hide1 x@@8 n@@8 i@@10)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9707) (Mask@@1 T@PolymorphicMapType_9728) (x@@9 T@ArrayDomainType) (n@@9 Int) (i@@11 Int) ) (!  (=> (and (state Heap@@6 Mask@@1) (or (< AssumeFunctionsAbove 0) (|get1#trigger| (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@6) null (hide1 x@@9 n@@9 i@@11)) x@@9 n@@9 i@@11))) (=> (and (<= 0 i@@11) (< i@@11 n@@9)) (= (|get1'| Heap@@6 x@@9 n@@9 i@@11) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@6) (aloc_1 Heap@@6 x@@9 i@@11) vint_1))))
 :qid |stdinbpl.429:15|
 :skolemid |33|
 :pattern ( (state Heap@@6 Mask@@1) (|get1'| Heap@@6 x@@9 n@@9 i@@11))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9707) (Mask@@2 T@PolymorphicMapType_9728) (x@@10 T@ArrayDomainType) (n@@10 Int) (i@@12 Int) ) (!  (=> (and (state Heap@@7 Mask@@2) (or (< AssumeFunctionsAbove 1) (|get0#trigger| (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@7) null (hide0 x@@10 n@@10 i@@12)) x@@10 n@@10 i@@12))) (=> (and (<= 0 i@@12) (< i@@12 n@@10)) (= (|get0'| Heap@@7 x@@10 n@@10 i@@12) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@7) (aloc_1 Heap@@7 x@@10 i@@12) vint_1))))
 :qid |stdinbpl.265:15|
 :skolemid |28|
 :pattern ( (state Heap@@7 Mask@@2) (|get0'| Heap@@7 x@@10 n@@10 i@@12))
)))
(assert (forall ((x@@11 T@ArrayDomainType) (n@@11 Int) (i@@13 Int) (x2 T@ArrayDomainType) (n2 Int) (i2 Int) ) (!  (=> (= (hide0 x@@11 n@@11 i@@13) (hide0 x2 n2 i2)) (and (= x@@11 x2) (and (= n@@11 n2) (= i@@13 i2))))
 :qid |stdinbpl.664:15|
 :skolemid |43|
 :pattern ( (hide0 x@@11 n@@11 i@@13) (hide0 x2 n2 i2))
)))
(assert (forall ((x@@12 T@ArrayDomainType) (n@@12 Int) (i@@14 Int) (x2@@0 T@ArrayDomainType) (n2@@0 Int) (i2@@0 Int) ) (!  (=> (= (|hide0#sm| x@@12 n@@12 i@@14) (|hide0#sm| x2@@0 n2@@0 i2@@0)) (and (= x@@12 x2@@0) (and (= n@@12 n2@@0) (= i@@14 i2@@0))))
 :qid |stdinbpl.668:15|
 :skolemid |44|
 :pattern ( (|hide0#sm| x@@12 n@@12 i@@14) (|hide0#sm| x2@@0 n2@@0 i2@@0))
)))
(assert (forall ((x@@13 T@ArrayDomainType) (n@@13 Int) (i@@15 Int) (x2@@1 T@ArrayDomainType) (n2@@1 Int) (i2@@1 Int) ) (!  (=> (= (hide1 x@@13 n@@13 i@@15) (hide1 x2@@1 n2@@1 i2@@1)) (and (= x@@13 x2@@1) (and (= n@@13 n2@@1) (= i@@15 i2@@1))))
 :qid |stdinbpl.738:15|
 :skolemid |49|
 :pattern ( (hide1 x@@13 n@@13 i@@15) (hide1 x2@@1 n2@@1 i2@@1))
)))
(assert (forall ((x@@14 T@ArrayDomainType) (n@@14 Int) (i@@16 Int) (x2@@2 T@ArrayDomainType) (n2@@2 Int) (i2@@2 Int) ) (!  (=> (= (|hide1#sm| x@@14 n@@14 i@@16) (|hide1#sm| x2@@2 n2@@2 i2@@2)) (and (= x@@14 x2@@2) (and (= n@@14 n2@@2) (= i@@16 i2@@2))))
 :qid |stdinbpl.742:15|
 :skolemid |50|
 :pattern ( (|hide1#sm| x@@14 n@@14 i@@16) (|hide1#sm| x2@@2 n2@@2 i2@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9707) (ExhaleHeap T@PolymorphicMapType_9707) (Mask@@3 T@PolymorphicMapType_9728) (pm_f_5 T@Field_18011_18012) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_18011_13629 Mask@@3 null pm_f_5) (IsPredicateField_5758_5759 pm_f_5)) (= (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@8) null (PredicateMaskField_5758 pm_f_5)) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap) null (PredicateMaskField_5758 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@3) (IsPredicateField_5758_5759 pm_f_5) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap) null (PredicateMaskField_5758 pm_f_5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9707) (ExhaleHeap@@0 T@PolymorphicMapType_9707) (Mask@@4 T@PolymorphicMapType_9728) (pm_f_5@@0 T@Field_13628_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_13628_13629 Mask@@4 null pm_f_5@@0) (IsPredicateField_5731_5732 pm_f_5@@0)) (= (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@9) null (PredicateMaskField_5731 pm_f_5@@0)) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@0) null (PredicateMaskField_5731 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@4) (IsPredicateField_5731_5732 pm_f_5@@0) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@0) null (PredicateMaskField_5731 pm_f_5@@0)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9707) (ExhaleHeap@@1 T@PolymorphicMapType_9707) (Mask@@5 T@PolymorphicMapType_9728) (pm_f_5@@1 T@Field_5627_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@5) (=> (and (HasDirectPerm_5627_13629 Mask@@5 null pm_f_5@@1) (IsPredicateField_5627_31845 pm_f_5@@1)) (= (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@10) null (PredicateMaskField_5627 pm_f_5@@1)) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@1) null (PredicateMaskField_5627 pm_f_5@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@5) (IsPredicateField_5627_31845 pm_f_5@@1) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@1) null (PredicateMaskField_5627 pm_f_5@@1)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9707) (ExhaleHeap@@2 T@PolymorphicMapType_9707) (Mask@@6 T@PolymorphicMapType_9728) (pm_f_5@@2 T@Field_18011_18012) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@6) (=> (and (HasDirectPerm_18011_13629 Mask@@6 null pm_f_5@@2) (IsWandField_18011_37541 pm_f_5@@2)) (= (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@11) null (WandMaskField_18011 pm_f_5@@2)) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@2) null (WandMaskField_18011 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@6) (IsWandField_18011_37541 pm_f_5@@2) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@2) null (WandMaskField_18011 pm_f_5@@2)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9707) (ExhaleHeap@@3 T@PolymorphicMapType_9707) (Mask@@7 T@PolymorphicMapType_9728) (pm_f_5@@3 T@Field_13628_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@7) (=> (and (HasDirectPerm_13628_13629 Mask@@7 null pm_f_5@@3) (IsWandField_13628_37184 pm_f_5@@3)) (= (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@12) null (WandMaskField_13628 pm_f_5@@3)) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@3) null (WandMaskField_13628 pm_f_5@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@7) (IsWandField_13628_37184 pm_f_5@@3) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@3) null (WandMaskField_13628 pm_f_5@@3)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9707) (ExhaleHeap@@4 T@PolymorphicMapType_9707) (Mask@@8 T@PolymorphicMapType_9728) (pm_f_5@@4 T@Field_5627_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@8) (=> (and (HasDirectPerm_5627_13629 Mask@@8 null pm_f_5@@4) (IsWandField_5627_36827 pm_f_5@@4)) (= (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@13) null (WandMaskField_5627 pm_f_5@@4)) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@4) null (WandMaskField_5627 pm_f_5@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@8) (IsWandField_5627_36827 pm_f_5@@4) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@4) null (WandMaskField_5627 pm_f_5@@4)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9707) (Mask@@9 T@PolymorphicMapType_9728) (x@@15 T@ArrayDomainType) (n@@15 Int) (i@@17 Int) ) (!  (=> (and (state Heap@@14 Mask@@9) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 i@@17) (< i@@17 n@@15)) (= (get1 Heap@@14 x@@15 n@@15 i@@17) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@14) (aloc_1 Heap@@14 x@@15 i@@17) vint_1))))
 :qid |stdinbpl.416:15|
 :skolemid |31|
 :pattern ( (state Heap@@14 Mask@@9) (get1 Heap@@14 x@@15 n@@15 i@@17))
 :pattern ( (state Heap@@14 Mask@@9) (|get1#triggerStateless| x@@15 n@@15 i@@17) (|hide1#trigger_5758| Heap@@14 (hide1 x@@15 n@@15 i@@17)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9707) (Mask@@10 T@PolymorphicMapType_9728) (x@@16 T@ArrayDomainType) (n@@16 Int) (i@@18 Int) ) (!  (=> (and (state Heap@@15 Mask@@10) (< AssumeFunctionsAbove 1)) (=> (and (<= 0 i@@18) (< i@@18 n@@16)) (= (get0 Heap@@15 x@@16 n@@16 i@@18) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@15) (aloc_1 Heap@@15 x@@16 i@@18) vint_1))))
 :qid |stdinbpl.252:15|
 :skolemid |26|
 :pattern ( (state Heap@@15 Mask@@10) (get0 Heap@@15 x@@16 n@@16 i@@18))
 :pattern ( (state Heap@@15 Mask@@10) (|get0#triggerStateless| x@@16 n@@16 i@@18) (|hide0#trigger_5731| Heap@@15 (hide0 x@@16 n@@16 i@@18)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9707) (ExhaleHeap@@5 T@PolymorphicMapType_9707) (Mask@@11 T@PolymorphicMapType_9728) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@11) (=> (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@16) o_15 $allocated) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@5) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@11) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@5) o_15 $allocated))
)))
(assert (forall ((p T@Field_18011_18012) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18011_18011 p v_1 p w))
 :qid |stdinbpl.191:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18011_18011 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_13628_13629) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_13628_13628 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.191:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13628_13628 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_5627_13629) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_9767_9767 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.191:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9767_9767 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_5627_1324 vint_1)))
(assert  (not (IsWandField_5627_1324 vint_1)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9707) (ExhaleHeap@@6 T@PolymorphicMapType_9707) (Mask@@12 T@PolymorphicMapType_9728) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@12) (succHeap Heap@@17 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9728) (o_2@@14 T@Ref) (f_4@@14 T@Field_19890_19895) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| Mask@@13) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5758_47859 f_4@@14))) (not (IsWandField_5758_47875 f_4@@14))) (<= (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| Mask@@13) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| Mask@@13) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9728) (o_2@@15 T@Ref) (f_4@@15 T@Field_18011_9781) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| Mask@@14) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5758_9781 f_4@@15))) (not (IsWandField_5758_9781 f_4@@15))) (<= (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| Mask@@14) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| Mask@@14) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9728) (o_2@@16 T@Ref) (f_4@@16 T@Field_18011_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| Mask@@15) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5758_53 f_4@@16))) (not (IsWandField_5758_53 f_4@@16))) (<= (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| Mask@@15) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| Mask@@15) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9728) (o_2@@17 T@Ref) (f_4@@17 T@Field_18011_1324) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| Mask@@16) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5758_1324 f_4@@17))) (not (IsWandField_5758_1324 f_4@@17))) (<= (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| Mask@@16) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| Mask@@16) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9728) (o_2@@18 T@Ref) (f_4@@18 T@Field_18011_18012) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| Mask@@17) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5758_5759 f_4@@18))) (not (IsWandField_18011_37541 f_4@@18))) (<= (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| Mask@@17) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| Mask@@17) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9728) (o_2@@19 T@Ref) (f_4@@19 T@Field_5627_15540) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5627_47028 f_4@@19))) (not (IsWandField_5627_47044 f_4@@19))) (<= (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9728) (o_2@@20 T@Ref) (f_4@@20 T@Field_9780_9781) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5627_9781 f_4@@20))) (not (IsWandField_5627_9781 f_4@@20))) (<= (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9728) (o_2@@21 T@Ref) (f_4@@21 T@Field_9767_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5627_53 f_4@@21))) (not (IsWandField_5627_53 f_4@@21))) (<= (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9728) (o_2@@22 T@Ref) (f_4@@22 T@Field_13205_1324) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5627_1324 f_4@@22))) (not (IsWandField_5627_1324 f_4@@22))) (<= (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9728) (o_2@@23 T@Ref) (f_4@@23 T@Field_5627_13629) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5627_31845 f_4@@23))) (not (IsWandField_5627_36827 f_4@@23))) (<= (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9728) (o_2@@24 T@Ref) (f_4@@24 T@Field_15535_15540) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_5731_46211 f_4@@24))) (not (IsWandField_5731_46227 f_4@@24))) (<= (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9728) (o_2@@25 T@Ref) (f_4@@25 T@Field_13628_9781) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_5731_9781 f_4@@25))) (not (IsWandField_5731_9781 f_4@@25))) (<= (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9728) (o_2@@26 T@Ref) (f_4@@26 T@Field_13628_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_5731_53 f_4@@26))) (not (IsWandField_5731_53 f_4@@26))) (<= (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9728) (o_2@@27 T@Ref) (f_4@@27 T@Field_13628_1324) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_5731_1324 f_4@@27))) (not (IsWandField_5731_1324 f_4@@27))) (<= (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9728) (o_2@@28 T@Ref) (f_4@@28 T@Field_13628_13629) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_5731_5732 f_4@@28))) (not (IsWandField_13628_37184 f_4@@28))) (<= (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9728) (o_2@@29 T@Ref) (f_4@@29 T@Field_19890_19895) ) (! (= (HasDirectPerm_18011_31600 Mask@@28 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| Mask@@28) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18011_31600 Mask@@28 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9728) (o_2@@30 T@Ref) (f_4@@30 T@Field_18011_18012) ) (! (= (HasDirectPerm_18011_13629 Mask@@29 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| Mask@@29) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18011_13629 Mask@@29 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_9728) (o_2@@31 T@Ref) (f_4@@31 T@Field_18011_9781) ) (! (= (HasDirectPerm_18011_9781 Mask@@30 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| Mask@@30) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18011_9781 Mask@@30 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_9728) (o_2@@32 T@Ref) (f_4@@32 T@Field_18011_53) ) (! (= (HasDirectPerm_18011_53 Mask@@31 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| Mask@@31) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18011_53 Mask@@31 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_9728) (o_2@@33 T@Ref) (f_4@@33 T@Field_18011_1324) ) (! (= (HasDirectPerm_18011_1324 Mask@@32 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| Mask@@32) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18011_1324 Mask@@32 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_9728) (o_2@@34 T@Ref) (f_4@@34 T@Field_15535_15540) ) (! (= (HasDirectPerm_13628_30482 Mask@@33 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| Mask@@33) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13628_30482 Mask@@33 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_9728) (o_2@@35 T@Ref) (f_4@@35 T@Field_13628_13629) ) (! (= (HasDirectPerm_13628_13629 Mask@@34 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| Mask@@34) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13628_13629 Mask@@34 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_9728) (o_2@@36 T@Ref) (f_4@@36 T@Field_13628_9781) ) (! (= (HasDirectPerm_13628_9781 Mask@@35 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| Mask@@35) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13628_9781 Mask@@35 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_9728) (o_2@@37 T@Ref) (f_4@@37 T@Field_13628_53) ) (! (= (HasDirectPerm_13628_53 Mask@@36 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| Mask@@36) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13628_53 Mask@@36 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_9728) (o_2@@38 T@Ref) (f_4@@38 T@Field_13628_1324) ) (! (= (HasDirectPerm_13628_1324 Mask@@37 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| Mask@@37) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13628_1324 Mask@@37 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_9728) (o_2@@39 T@Ref) (f_4@@39 T@Field_5627_15540) ) (! (= (HasDirectPerm_5627_29321 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5627_29321 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_9728) (o_2@@40 T@Ref) (f_4@@40 T@Field_5627_13629) ) (! (= (HasDirectPerm_5627_13629 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5627_13629 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_9728) (o_2@@41 T@Ref) (f_4@@41 T@Field_9780_9781) ) (! (= (HasDirectPerm_5627_9781 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5627_9781 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_9728) (o_2@@42 T@Ref) (f_4@@42 T@Field_9767_53) ) (! (= (HasDirectPerm_5627_53 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5627_53 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_9728) (o_2@@43 T@Ref) (f_4@@43 T@Field_13205_1324) ) (! (= (HasDirectPerm_5627_1324 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5627_1324 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.179:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9707) (ExhaleHeap@@7 T@PolymorphicMapType_9707) (Mask@@43 T@PolymorphicMapType_9728) (o_15@@0 T@Ref) (f_23 T@Field_19890_19895) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@43) (=> (HasDirectPerm_18011_31600 Mask@@43 o_15@@0 f_23) (= (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@18) o_15@@0 f_23) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@7) o_15@@0 f_23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@43) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@7) o_15@@0 f_23))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9707) (ExhaleHeap@@8 T@PolymorphicMapType_9707) (Mask@@44 T@PolymorphicMapType_9728) (o_15@@1 T@Ref) (f_23@@0 T@Field_18011_18012) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@44) (=> (HasDirectPerm_18011_13629 Mask@@44 o_15@@1 f_23@@0) (= (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@19) o_15@@1 f_23@@0) (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@8) o_15@@1 f_23@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@44) (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@8) o_15@@1 f_23@@0))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9707) (ExhaleHeap@@9 T@PolymorphicMapType_9707) (Mask@@45 T@PolymorphicMapType_9728) (o_15@@2 T@Ref) (f_23@@1 T@Field_18011_9781) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@45) (=> (HasDirectPerm_18011_9781 Mask@@45 o_15@@2 f_23@@1) (= (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@20) o_15@@2 f_23@@1) (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@9) o_15@@2 f_23@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@45) (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@9) o_15@@2 f_23@@1))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9707) (ExhaleHeap@@10 T@PolymorphicMapType_9707) (Mask@@46 T@PolymorphicMapType_9728) (o_15@@3 T@Ref) (f_23@@2 T@Field_18011_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@10 Mask@@46) (=> (HasDirectPerm_18011_53 Mask@@46 o_15@@3 f_23@@2) (= (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@21) o_15@@3 f_23@@2) (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@10) o_15@@3 f_23@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@10 Mask@@46) (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@10) o_15@@3 f_23@@2))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9707) (ExhaleHeap@@11 T@PolymorphicMapType_9707) (Mask@@47 T@PolymorphicMapType_9728) (o_15@@4 T@Ref) (f_23@@3 T@Field_18011_1324) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@11 Mask@@47) (=> (HasDirectPerm_18011_1324 Mask@@47 o_15@@4 f_23@@3) (= (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@22) o_15@@4 f_23@@3) (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@11) o_15@@4 f_23@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@11 Mask@@47) (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@11) o_15@@4 f_23@@3))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9707) (ExhaleHeap@@12 T@PolymorphicMapType_9707) (Mask@@48 T@PolymorphicMapType_9728) (o_15@@5 T@Ref) (f_23@@4 T@Field_15535_15540) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@12 Mask@@48) (=> (HasDirectPerm_13628_30482 Mask@@48 o_15@@5 f_23@@4) (= (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@23) o_15@@5 f_23@@4) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@12) o_15@@5 f_23@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@12 Mask@@48) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@12) o_15@@5 f_23@@4))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9707) (ExhaleHeap@@13 T@PolymorphicMapType_9707) (Mask@@49 T@PolymorphicMapType_9728) (o_15@@6 T@Ref) (f_23@@5 T@Field_13628_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@13 Mask@@49) (=> (HasDirectPerm_13628_13629 Mask@@49 o_15@@6 f_23@@5) (= (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@24) o_15@@6 f_23@@5) (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@13) o_15@@6 f_23@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@13 Mask@@49) (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@13) o_15@@6 f_23@@5))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9707) (ExhaleHeap@@14 T@PolymorphicMapType_9707) (Mask@@50 T@PolymorphicMapType_9728) (o_15@@7 T@Ref) (f_23@@6 T@Field_13628_9781) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@14 Mask@@50) (=> (HasDirectPerm_13628_9781 Mask@@50 o_15@@7 f_23@@6) (= (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@25) o_15@@7 f_23@@6) (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@14) o_15@@7 f_23@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@14 Mask@@50) (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@14) o_15@@7 f_23@@6))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9707) (ExhaleHeap@@15 T@PolymorphicMapType_9707) (Mask@@51 T@PolymorphicMapType_9728) (o_15@@8 T@Ref) (f_23@@7 T@Field_13628_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@15 Mask@@51) (=> (HasDirectPerm_13628_53 Mask@@51 o_15@@8 f_23@@7) (= (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@26) o_15@@8 f_23@@7) (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@15) o_15@@8 f_23@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@15 Mask@@51) (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@15) o_15@@8 f_23@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9707) (ExhaleHeap@@16 T@PolymorphicMapType_9707) (Mask@@52 T@PolymorphicMapType_9728) (o_15@@9 T@Ref) (f_23@@8 T@Field_13628_1324) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@16 Mask@@52) (=> (HasDirectPerm_13628_1324 Mask@@52 o_15@@9 f_23@@8) (= (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@27) o_15@@9 f_23@@8) (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@16) o_15@@9 f_23@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@16 Mask@@52) (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@16) o_15@@9 f_23@@8))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9707) (ExhaleHeap@@17 T@PolymorphicMapType_9707) (Mask@@53 T@PolymorphicMapType_9728) (o_15@@10 T@Ref) (f_23@@9 T@Field_5627_15540) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@17 Mask@@53) (=> (HasDirectPerm_5627_29321 Mask@@53 o_15@@10 f_23@@9) (= (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@28) o_15@@10 f_23@@9) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@17) o_15@@10 f_23@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@17 Mask@@53) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@17) o_15@@10 f_23@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9707) (ExhaleHeap@@18 T@PolymorphicMapType_9707) (Mask@@54 T@PolymorphicMapType_9728) (o_15@@11 T@Ref) (f_23@@10 T@Field_5627_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@18 Mask@@54) (=> (HasDirectPerm_5627_13629 Mask@@54 o_15@@11 f_23@@10) (= (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@29) o_15@@11 f_23@@10) (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@18) o_15@@11 f_23@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@18 Mask@@54) (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@18) o_15@@11 f_23@@10))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9707) (ExhaleHeap@@19 T@PolymorphicMapType_9707) (Mask@@55 T@PolymorphicMapType_9728) (o_15@@12 T@Ref) (f_23@@11 T@Field_9780_9781) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@19 Mask@@55) (=> (HasDirectPerm_5627_9781 Mask@@55 o_15@@12 f_23@@11) (= (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@30) o_15@@12 f_23@@11) (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@19) o_15@@12 f_23@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@19 Mask@@55) (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@19) o_15@@12 f_23@@11))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9707) (ExhaleHeap@@20 T@PolymorphicMapType_9707) (Mask@@56 T@PolymorphicMapType_9728) (o_15@@13 T@Ref) (f_23@@12 T@Field_9767_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@20 Mask@@56) (=> (HasDirectPerm_5627_53 Mask@@56 o_15@@13 f_23@@12) (= (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@31) o_15@@13 f_23@@12) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@20) o_15@@13 f_23@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@20 Mask@@56) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@20) o_15@@13 f_23@@12))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9707) (ExhaleHeap@@21 T@PolymorphicMapType_9707) (Mask@@57 T@PolymorphicMapType_9728) (o_15@@14 T@Ref) (f_23@@13 T@Field_13205_1324) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@21 Mask@@57) (=> (HasDirectPerm_5627_1324 Mask@@57 o_15@@14 f_23@@13) (= (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@32) o_15@@14 f_23@@13) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@21) o_15@@14 f_23@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@21 Mask@@57) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@21) o_15@@14 f_23@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_19890_19895) ) (! (= (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_18011_9781) ) (! (= (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_18011_53) ) (! (= (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_18011_1324) ) (! (= (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_18011_18012) ) (! (= (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_5627_15540) ) (! (= (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_9780_9781) ) (! (= (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_9767_53) ) (! (= (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_13205_1324) ) (! (= (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_5627_13629) ) (! (= (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_15535_15540) ) (! (= (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_13628_9781) ) (! (= (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_13628_53) ) (! (= (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_13628_1324) ) (! (= (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_13628_13629) ) (! (= (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9707) (a_2@@1 T@ArrayDomainType) (i@@19 Int) ) (!  (and (= (aloc_1 Heap@@33 a_2@@1 i@@19) (|aloc'| Heap@@33 a_2@@1 i@@19)) (dummyFunction_5721 (|aloc#triggerStateless| a_2@@1 i@@19)))
 :qid |stdinbpl.574:15|
 :skolemid |34|
 :pattern ( (aloc_1 Heap@@33 a_2@@1 i@@19))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9728) (SummandMask1 T@PolymorphicMapType_9728) (SummandMask2 T@PolymorphicMapType_9728) (o_2@@59 T@Ref) (f_4@@59 T@Field_19890_19895) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9728) (SummandMask1@@0 T@PolymorphicMapType_9728) (SummandMask2@@0 T@PolymorphicMapType_9728) (o_2@@60 T@Ref) (f_4@@60 T@Field_18011_9781) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9728) (SummandMask1@@1 T@PolymorphicMapType_9728) (SummandMask2@@1 T@PolymorphicMapType_9728) (o_2@@61 T@Ref) (f_4@@61 T@Field_18011_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9728) (SummandMask1@@2 T@PolymorphicMapType_9728) (SummandMask2@@2 T@PolymorphicMapType_9728) (o_2@@62 T@Ref) (f_4@@62 T@Field_18011_1324) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9728) (SummandMask1@@3 T@PolymorphicMapType_9728) (SummandMask2@@3 T@PolymorphicMapType_9728) (o_2@@63 T@Ref) (f_4@@63 T@Field_18011_18012) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9728) (SummandMask1@@4 T@PolymorphicMapType_9728) (SummandMask2@@4 T@PolymorphicMapType_9728) (o_2@@64 T@Ref) (f_4@@64 T@Field_5627_15540) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9728) (SummandMask1@@5 T@PolymorphicMapType_9728) (SummandMask2@@5 T@PolymorphicMapType_9728) (o_2@@65 T@Ref) (f_4@@65 T@Field_9780_9781) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9728) (SummandMask1@@6 T@PolymorphicMapType_9728) (SummandMask2@@6 T@PolymorphicMapType_9728) (o_2@@66 T@Ref) (f_4@@66 T@Field_9767_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9728) (SummandMask1@@7 T@PolymorphicMapType_9728) (SummandMask2@@7 T@PolymorphicMapType_9728) (o_2@@67 T@Ref) (f_4@@67 T@Field_13205_1324) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9728) (SummandMask1@@8 T@PolymorphicMapType_9728) (SummandMask2@@8 T@PolymorphicMapType_9728) (o_2@@68 T@Ref) (f_4@@68 T@Field_5627_13629) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_9728) (SummandMask1@@9 T@PolymorphicMapType_9728) (SummandMask2@@9 T@PolymorphicMapType_9728) (o_2@@69 T@Ref) (f_4@@69 T@Field_15535_15540) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_9728) (SummandMask1@@10 T@PolymorphicMapType_9728) (SummandMask2@@10 T@PolymorphicMapType_9728) (o_2@@70 T@Ref) (f_4@@70 T@Field_13628_9781) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_9728) (SummandMask1@@11 T@PolymorphicMapType_9728) (SummandMask2@@11 T@PolymorphicMapType_9728) (o_2@@71 T@Ref) (f_4@@71 T@Field_13628_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_9728) (SummandMask1@@12 T@PolymorphicMapType_9728) (SummandMask2@@12 T@PolymorphicMapType_9728) (o_2@@72 T@Ref) (f_4@@72 T@Field_13628_1324) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_9728) (SummandMask1@@13 T@PolymorphicMapType_9728) (SummandMask2@@13 T@PolymorphicMapType_9728) (o_2@@73 T@Ref) (f_4@@73 T@Field_13628_13629) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_9707) (ExhaleHeap@@22 T@PolymorphicMapType_9707) (Mask@@58 T@PolymorphicMapType_9728) (pm_f_5@@5 T@Field_18011_18012) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@22 Mask@@58) (=> (and (HasDirectPerm_18011_13629 Mask@@58 null pm_f_5@@5) (IsPredicateField_5758_5759 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_23@@14 T@Field_13205_1324) ) (!  (=> (select (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5 f_23@@14) (= (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@34) o2_5 f_23@@14) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5 f_23@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5 f_23@@14))
)) (forall ((o2_5@@0 T@Ref) (f_23@@15 T@Field_9767_53) ) (!  (=> (select (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@0 f_23@@15) (= (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@34) o2_5@@0 f_23@@15) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@0 f_23@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@0 f_23@@15))
))) (forall ((o2_5@@1 T@Ref) (f_23@@16 T@Field_9780_9781) ) (!  (=> (select (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@1 f_23@@16) (= (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@34) o2_5@@1 f_23@@16) (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@1 f_23@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@1 f_23@@16))
))) (forall ((o2_5@@2 T@Ref) (f_23@@17 T@Field_5627_13629) ) (!  (=> (select (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@2 f_23@@17) (= (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@34) o2_5@@2 f_23@@17) (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@2 f_23@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@2 f_23@@17))
))) (forall ((o2_5@@3 T@Ref) (f_23@@18 T@Field_5627_15540) ) (!  (=> (select (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@3 f_23@@18) (= (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@34) o2_5@@3 f_23@@18) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@3 f_23@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@3 f_23@@18))
))) (forall ((o2_5@@4 T@Ref) (f_23@@19 T@Field_13628_1324) ) (!  (=> (select (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@4 f_23@@19) (= (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@34) o2_5@@4 f_23@@19) (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@4 f_23@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@4 f_23@@19))
))) (forall ((o2_5@@5 T@Ref) (f_23@@20 T@Field_13628_53) ) (!  (=> (select (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@5 f_23@@20) (= (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@34) o2_5@@5 f_23@@20) (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@5 f_23@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@5 f_23@@20))
))) (forall ((o2_5@@6 T@Ref) (f_23@@21 T@Field_13628_9781) ) (!  (=> (select (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@6 f_23@@21) (= (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@34) o2_5@@6 f_23@@21) (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@6 f_23@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@6 f_23@@21))
))) (forall ((o2_5@@7 T@Ref) (f_23@@22 T@Field_13628_13629) ) (!  (=> (select (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@7 f_23@@22) (= (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@34) o2_5@@7 f_23@@22) (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@7 f_23@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@7 f_23@@22))
))) (forall ((o2_5@@8 T@Ref) (f_23@@23 T@Field_15535_15540) ) (!  (=> (select (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@8 f_23@@23) (= (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@34) o2_5@@8 f_23@@23) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@8 f_23@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@8 f_23@@23))
))) (forall ((o2_5@@9 T@Ref) (f_23@@24 T@Field_18011_1324) ) (!  (=> (select (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@9 f_23@@24) (= (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@34) o2_5@@9 f_23@@24) (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@9 f_23@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@9 f_23@@24))
))) (forall ((o2_5@@10 T@Ref) (f_23@@25 T@Field_18011_53) ) (!  (=> (select (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@10 f_23@@25) (= (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@34) o2_5@@10 f_23@@25) (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@10 f_23@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@10 f_23@@25))
))) (forall ((o2_5@@11 T@Ref) (f_23@@26 T@Field_18011_9781) ) (!  (=> (select (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@11 f_23@@26) (= (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@34) o2_5@@11 f_23@@26) (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@11 f_23@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@11 f_23@@26))
))) (forall ((o2_5@@12 T@Ref) (f_23@@27 T@Field_18011_18012) ) (!  (=> (select (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@12 f_23@@27) (= (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@34) o2_5@@12 f_23@@27) (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@12 f_23@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@12 f_23@@27))
))) (forall ((o2_5@@13 T@Ref) (f_23@@28 T@Field_19890_19895) ) (!  (=> (select (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@13 f_23@@28) (= (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) o2_5@@13 f_23@@28) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@13 f_23@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@13 f_23@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@22 Mask@@58) (IsPredicateField_5758_5759 pm_f_5@@5))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_9707) (ExhaleHeap@@23 T@PolymorphicMapType_9707) (Mask@@59 T@PolymorphicMapType_9728) (pm_f_5@@6 T@Field_13628_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@23 Mask@@59) (=> (and (HasDirectPerm_13628_13629 Mask@@59 null pm_f_5@@6) (IsPredicateField_5731_5732 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@14 T@Ref) (f_23@@29 T@Field_13205_1324) ) (!  (=> (select (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@14 f_23@@29) (= (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@35) o2_5@@14 f_23@@29) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@14 f_23@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@14 f_23@@29))
)) (forall ((o2_5@@15 T@Ref) (f_23@@30 T@Field_9767_53) ) (!  (=> (select (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@15 f_23@@30) (= (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@35) o2_5@@15 f_23@@30) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@15 f_23@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@15 f_23@@30))
))) (forall ((o2_5@@16 T@Ref) (f_23@@31 T@Field_9780_9781) ) (!  (=> (select (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@16 f_23@@31) (= (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@35) o2_5@@16 f_23@@31) (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@16 f_23@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@16 f_23@@31))
))) (forall ((o2_5@@17 T@Ref) (f_23@@32 T@Field_5627_13629) ) (!  (=> (select (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@17 f_23@@32) (= (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@35) o2_5@@17 f_23@@32) (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@17 f_23@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@17 f_23@@32))
))) (forall ((o2_5@@18 T@Ref) (f_23@@33 T@Field_5627_15540) ) (!  (=> (select (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@18 f_23@@33) (= (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@35) o2_5@@18 f_23@@33) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@18 f_23@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@18 f_23@@33))
))) (forall ((o2_5@@19 T@Ref) (f_23@@34 T@Field_13628_1324) ) (!  (=> (select (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@19 f_23@@34) (= (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@35) o2_5@@19 f_23@@34) (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@19 f_23@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@19 f_23@@34))
))) (forall ((o2_5@@20 T@Ref) (f_23@@35 T@Field_13628_53) ) (!  (=> (select (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@20 f_23@@35) (= (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@35) o2_5@@20 f_23@@35) (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@20 f_23@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@20 f_23@@35))
))) (forall ((o2_5@@21 T@Ref) (f_23@@36 T@Field_13628_9781) ) (!  (=> (select (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@21 f_23@@36) (= (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@35) o2_5@@21 f_23@@36) (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@21 f_23@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@21 f_23@@36))
))) (forall ((o2_5@@22 T@Ref) (f_23@@37 T@Field_13628_13629) ) (!  (=> (select (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@22 f_23@@37) (= (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@35) o2_5@@22 f_23@@37) (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@22 f_23@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@22 f_23@@37))
))) (forall ((o2_5@@23 T@Ref) (f_23@@38 T@Field_15535_15540) ) (!  (=> (select (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@23 f_23@@38) (= (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) o2_5@@23 f_23@@38) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@23 f_23@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@23 f_23@@38))
))) (forall ((o2_5@@24 T@Ref) (f_23@@39 T@Field_18011_1324) ) (!  (=> (select (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@24 f_23@@39) (= (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@35) o2_5@@24 f_23@@39) (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@24 f_23@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@24 f_23@@39))
))) (forall ((o2_5@@25 T@Ref) (f_23@@40 T@Field_18011_53) ) (!  (=> (select (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@25 f_23@@40) (= (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@35) o2_5@@25 f_23@@40) (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@25 f_23@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@25 f_23@@40))
))) (forall ((o2_5@@26 T@Ref) (f_23@@41 T@Field_18011_9781) ) (!  (=> (select (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@26 f_23@@41) (= (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@35) o2_5@@26 f_23@@41) (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@26 f_23@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@26 f_23@@41))
))) (forall ((o2_5@@27 T@Ref) (f_23@@42 T@Field_18011_18012) ) (!  (=> (select (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@27 f_23@@42) (= (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@35) o2_5@@27 f_23@@42) (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@27 f_23@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@27 f_23@@42))
))) (forall ((o2_5@@28 T@Ref) (f_23@@43 T@Field_19890_19895) ) (!  (=> (select (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@28 f_23@@43) (= (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@35) o2_5@@28 f_23@@43) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@28 f_23@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@28 f_23@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@23 Mask@@59) (IsPredicateField_5731_5732 pm_f_5@@6))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_9707) (ExhaleHeap@@24 T@PolymorphicMapType_9707) (Mask@@60 T@PolymorphicMapType_9728) (pm_f_5@@7 T@Field_5627_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@24 Mask@@60) (=> (and (HasDirectPerm_5627_13629 Mask@@60 null pm_f_5@@7) (IsPredicateField_5627_31845 pm_f_5@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_23@@44 T@Field_13205_1324) ) (!  (=> (select (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@29 f_23@@44) (= (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@36) o2_5@@29 f_23@@44) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@29 f_23@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@29 f_23@@44))
)) (forall ((o2_5@@30 T@Ref) (f_23@@45 T@Field_9767_53) ) (!  (=> (select (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@30 f_23@@45) (= (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@36) o2_5@@30 f_23@@45) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@30 f_23@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@30 f_23@@45))
))) (forall ((o2_5@@31 T@Ref) (f_23@@46 T@Field_9780_9781) ) (!  (=> (select (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@31 f_23@@46) (= (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@36) o2_5@@31 f_23@@46) (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@31 f_23@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@31 f_23@@46))
))) (forall ((o2_5@@32 T@Ref) (f_23@@47 T@Field_5627_13629) ) (!  (=> (select (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@32 f_23@@47) (= (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@36) o2_5@@32 f_23@@47) (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@32 f_23@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@32 f_23@@47))
))) (forall ((o2_5@@33 T@Ref) (f_23@@48 T@Field_5627_15540) ) (!  (=> (select (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@33 f_23@@48) (= (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) o2_5@@33 f_23@@48) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@33 f_23@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@33 f_23@@48))
))) (forall ((o2_5@@34 T@Ref) (f_23@@49 T@Field_13628_1324) ) (!  (=> (select (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@34 f_23@@49) (= (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@36) o2_5@@34 f_23@@49) (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@34 f_23@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@34 f_23@@49))
))) (forall ((o2_5@@35 T@Ref) (f_23@@50 T@Field_13628_53) ) (!  (=> (select (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@35 f_23@@50) (= (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@36) o2_5@@35 f_23@@50) (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@35 f_23@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@35 f_23@@50))
))) (forall ((o2_5@@36 T@Ref) (f_23@@51 T@Field_13628_9781) ) (!  (=> (select (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@36 f_23@@51) (= (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@36) o2_5@@36 f_23@@51) (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@36 f_23@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@36 f_23@@51))
))) (forall ((o2_5@@37 T@Ref) (f_23@@52 T@Field_13628_13629) ) (!  (=> (select (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@37 f_23@@52) (= (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@36) o2_5@@37 f_23@@52) (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@37 f_23@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@37 f_23@@52))
))) (forall ((o2_5@@38 T@Ref) (f_23@@53 T@Field_15535_15540) ) (!  (=> (select (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@38 f_23@@53) (= (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@36) o2_5@@38 f_23@@53) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@38 f_23@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@38 f_23@@53))
))) (forall ((o2_5@@39 T@Ref) (f_23@@54 T@Field_18011_1324) ) (!  (=> (select (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@39 f_23@@54) (= (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@36) o2_5@@39 f_23@@54) (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@39 f_23@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@39 f_23@@54))
))) (forall ((o2_5@@40 T@Ref) (f_23@@55 T@Field_18011_53) ) (!  (=> (select (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@40 f_23@@55) (= (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@36) o2_5@@40 f_23@@55) (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@40 f_23@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@40 f_23@@55))
))) (forall ((o2_5@@41 T@Ref) (f_23@@56 T@Field_18011_9781) ) (!  (=> (select (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@41 f_23@@56) (= (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@36) o2_5@@41 f_23@@56) (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@41 f_23@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@41 f_23@@56))
))) (forall ((o2_5@@42 T@Ref) (f_23@@57 T@Field_18011_18012) ) (!  (=> (select (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@42 f_23@@57) (= (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@36) o2_5@@42 f_23@@57) (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@42 f_23@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@42 f_23@@57))
))) (forall ((o2_5@@43 T@Ref) (f_23@@58 T@Field_19890_19895) ) (!  (=> (select (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@43 f_23@@58) (= (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@36) o2_5@@43 f_23@@58) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@43 f_23@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@43 f_23@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@24 Mask@@60) (IsPredicateField_5627_31845 pm_f_5@@7))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_9707) (ExhaleHeap@@25 T@PolymorphicMapType_9707) (Mask@@61 T@PolymorphicMapType_9728) (pm_f_5@@8 T@Field_18011_18012) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@25 Mask@@61) (=> (and (HasDirectPerm_18011_13629 Mask@@61 null pm_f_5@@8) (IsWandField_18011_37541 pm_f_5@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@44 T@Ref) (f_23@@59 T@Field_13205_1324) ) (!  (=> (select (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@44 f_23@@59) (= (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@37) o2_5@@44 f_23@@59) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@44 f_23@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@44 f_23@@59))
)) (forall ((o2_5@@45 T@Ref) (f_23@@60 T@Field_9767_53) ) (!  (=> (select (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@45 f_23@@60) (= (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@37) o2_5@@45 f_23@@60) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@45 f_23@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@45 f_23@@60))
))) (forall ((o2_5@@46 T@Ref) (f_23@@61 T@Field_9780_9781) ) (!  (=> (select (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@46 f_23@@61) (= (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@37) o2_5@@46 f_23@@61) (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@46 f_23@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@46 f_23@@61))
))) (forall ((o2_5@@47 T@Ref) (f_23@@62 T@Field_5627_13629) ) (!  (=> (select (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@47 f_23@@62) (= (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@37) o2_5@@47 f_23@@62) (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@47 f_23@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@47 f_23@@62))
))) (forall ((o2_5@@48 T@Ref) (f_23@@63 T@Field_5627_15540) ) (!  (=> (select (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@48 f_23@@63) (= (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@37) o2_5@@48 f_23@@63) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@48 f_23@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@48 f_23@@63))
))) (forall ((o2_5@@49 T@Ref) (f_23@@64 T@Field_13628_1324) ) (!  (=> (select (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@49 f_23@@64) (= (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@37) o2_5@@49 f_23@@64) (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@49 f_23@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@49 f_23@@64))
))) (forall ((o2_5@@50 T@Ref) (f_23@@65 T@Field_13628_53) ) (!  (=> (select (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@50 f_23@@65) (= (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@37) o2_5@@50 f_23@@65) (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@50 f_23@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@50 f_23@@65))
))) (forall ((o2_5@@51 T@Ref) (f_23@@66 T@Field_13628_9781) ) (!  (=> (select (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@51 f_23@@66) (= (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@37) o2_5@@51 f_23@@66) (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@51 f_23@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@51 f_23@@66))
))) (forall ((o2_5@@52 T@Ref) (f_23@@67 T@Field_13628_13629) ) (!  (=> (select (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@52 f_23@@67) (= (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@37) o2_5@@52 f_23@@67) (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@52 f_23@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@52 f_23@@67))
))) (forall ((o2_5@@53 T@Ref) (f_23@@68 T@Field_15535_15540) ) (!  (=> (select (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@53 f_23@@68) (= (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@37) o2_5@@53 f_23@@68) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@53 f_23@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@53 f_23@@68))
))) (forall ((o2_5@@54 T@Ref) (f_23@@69 T@Field_18011_1324) ) (!  (=> (select (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@54 f_23@@69) (= (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@37) o2_5@@54 f_23@@69) (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@54 f_23@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@54 f_23@@69))
))) (forall ((o2_5@@55 T@Ref) (f_23@@70 T@Field_18011_53) ) (!  (=> (select (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@55 f_23@@70) (= (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@37) o2_5@@55 f_23@@70) (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@55 f_23@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@55 f_23@@70))
))) (forall ((o2_5@@56 T@Ref) (f_23@@71 T@Field_18011_9781) ) (!  (=> (select (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@56 f_23@@71) (= (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@37) o2_5@@56 f_23@@71) (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@56 f_23@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@56 f_23@@71))
))) (forall ((o2_5@@57 T@Ref) (f_23@@72 T@Field_18011_18012) ) (!  (=> (select (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@57 f_23@@72) (= (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@37) o2_5@@57 f_23@@72) (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@57 f_23@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@57 f_23@@72))
))) (forall ((o2_5@@58 T@Ref) (f_23@@73 T@Field_19890_19895) ) (!  (=> (select (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@58 f_23@@73) (= (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) o2_5@@58 f_23@@73) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@58 f_23@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@58 f_23@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@25 Mask@@61) (IsWandField_18011_37541 pm_f_5@@8))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_9707) (ExhaleHeap@@26 T@PolymorphicMapType_9707) (Mask@@62 T@PolymorphicMapType_9728) (pm_f_5@@9 T@Field_13628_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@26 Mask@@62) (=> (and (HasDirectPerm_13628_13629 Mask@@62 null pm_f_5@@9) (IsWandField_13628_37184 pm_f_5@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@59 T@Ref) (f_23@@74 T@Field_13205_1324) ) (!  (=> (select (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@59 f_23@@74) (= (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@38) o2_5@@59 f_23@@74) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@59 f_23@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@59 f_23@@74))
)) (forall ((o2_5@@60 T@Ref) (f_23@@75 T@Field_9767_53) ) (!  (=> (select (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@60 f_23@@75) (= (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@38) o2_5@@60 f_23@@75) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@60 f_23@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@60 f_23@@75))
))) (forall ((o2_5@@61 T@Ref) (f_23@@76 T@Field_9780_9781) ) (!  (=> (select (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@61 f_23@@76) (= (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@38) o2_5@@61 f_23@@76) (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@61 f_23@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@61 f_23@@76))
))) (forall ((o2_5@@62 T@Ref) (f_23@@77 T@Field_5627_13629) ) (!  (=> (select (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@62 f_23@@77) (= (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@38) o2_5@@62 f_23@@77) (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@62 f_23@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@62 f_23@@77))
))) (forall ((o2_5@@63 T@Ref) (f_23@@78 T@Field_5627_15540) ) (!  (=> (select (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@63 f_23@@78) (= (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@38) o2_5@@63 f_23@@78) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@63 f_23@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@63 f_23@@78))
))) (forall ((o2_5@@64 T@Ref) (f_23@@79 T@Field_13628_1324) ) (!  (=> (select (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@64 f_23@@79) (= (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@38) o2_5@@64 f_23@@79) (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@64 f_23@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@64 f_23@@79))
))) (forall ((o2_5@@65 T@Ref) (f_23@@80 T@Field_13628_53) ) (!  (=> (select (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@65 f_23@@80) (= (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@38) o2_5@@65 f_23@@80) (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@65 f_23@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@65 f_23@@80))
))) (forall ((o2_5@@66 T@Ref) (f_23@@81 T@Field_13628_9781) ) (!  (=> (select (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@66 f_23@@81) (= (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@38) o2_5@@66 f_23@@81) (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@66 f_23@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@66 f_23@@81))
))) (forall ((o2_5@@67 T@Ref) (f_23@@82 T@Field_13628_13629) ) (!  (=> (select (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@67 f_23@@82) (= (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@38) o2_5@@67 f_23@@82) (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@67 f_23@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@67 f_23@@82))
))) (forall ((o2_5@@68 T@Ref) (f_23@@83 T@Field_15535_15540) ) (!  (=> (select (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@68 f_23@@83) (= (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) o2_5@@68 f_23@@83) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@68 f_23@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@68 f_23@@83))
))) (forall ((o2_5@@69 T@Ref) (f_23@@84 T@Field_18011_1324) ) (!  (=> (select (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@69 f_23@@84) (= (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@38) o2_5@@69 f_23@@84) (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@69 f_23@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@69 f_23@@84))
))) (forall ((o2_5@@70 T@Ref) (f_23@@85 T@Field_18011_53) ) (!  (=> (select (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@70 f_23@@85) (= (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@38) o2_5@@70 f_23@@85) (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@70 f_23@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@70 f_23@@85))
))) (forall ((o2_5@@71 T@Ref) (f_23@@86 T@Field_18011_9781) ) (!  (=> (select (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@71 f_23@@86) (= (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@38) o2_5@@71 f_23@@86) (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@71 f_23@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@71 f_23@@86))
))) (forall ((o2_5@@72 T@Ref) (f_23@@87 T@Field_18011_18012) ) (!  (=> (select (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@72 f_23@@87) (= (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@38) o2_5@@72 f_23@@87) (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@72 f_23@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@72 f_23@@87))
))) (forall ((o2_5@@73 T@Ref) (f_23@@88 T@Field_19890_19895) ) (!  (=> (select (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@73 f_23@@88) (= (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@38) o2_5@@73 f_23@@88) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@73 f_23@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@73 f_23@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@26 Mask@@62) (IsWandField_13628_37184 pm_f_5@@9))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_9707) (ExhaleHeap@@27 T@PolymorphicMapType_9707) (Mask@@63 T@PolymorphicMapType_9728) (pm_f_5@@10 T@Field_5627_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@27 Mask@@63) (=> (and (HasDirectPerm_5627_13629 Mask@@63 null pm_f_5@@10) (IsWandField_5627_36827 pm_f_5@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@74 T@Ref) (f_23@@89 T@Field_13205_1324) ) (!  (=> (select (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@74 f_23@@89) (= (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@39) o2_5@@74 f_23@@89) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@74 f_23@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@74 f_23@@89))
)) (forall ((o2_5@@75 T@Ref) (f_23@@90 T@Field_9767_53) ) (!  (=> (select (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@75 f_23@@90) (= (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@39) o2_5@@75 f_23@@90) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@75 f_23@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@75 f_23@@90))
))) (forall ((o2_5@@76 T@Ref) (f_23@@91 T@Field_9780_9781) ) (!  (=> (select (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@76 f_23@@91) (= (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@39) o2_5@@76 f_23@@91) (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@76 f_23@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@76 f_23@@91))
))) (forall ((o2_5@@77 T@Ref) (f_23@@92 T@Field_5627_13629) ) (!  (=> (select (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@77 f_23@@92) (= (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@39) o2_5@@77 f_23@@92) (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@77 f_23@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@77 f_23@@92))
))) (forall ((o2_5@@78 T@Ref) (f_23@@93 T@Field_5627_15540) ) (!  (=> (select (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@78 f_23@@93) (= (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) o2_5@@78 f_23@@93) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@78 f_23@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@78 f_23@@93))
))) (forall ((o2_5@@79 T@Ref) (f_23@@94 T@Field_13628_1324) ) (!  (=> (select (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@79 f_23@@94) (= (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@39) o2_5@@79 f_23@@94) (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@79 f_23@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@79 f_23@@94))
))) (forall ((o2_5@@80 T@Ref) (f_23@@95 T@Field_13628_53) ) (!  (=> (select (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@80 f_23@@95) (= (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@39) o2_5@@80 f_23@@95) (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@80 f_23@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@80 f_23@@95))
))) (forall ((o2_5@@81 T@Ref) (f_23@@96 T@Field_13628_9781) ) (!  (=> (select (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@81 f_23@@96) (= (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@39) o2_5@@81 f_23@@96) (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@81 f_23@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@81 f_23@@96))
))) (forall ((o2_5@@82 T@Ref) (f_23@@97 T@Field_13628_13629) ) (!  (=> (select (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@82 f_23@@97) (= (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@39) o2_5@@82 f_23@@97) (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@82 f_23@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@82 f_23@@97))
))) (forall ((o2_5@@83 T@Ref) (f_23@@98 T@Field_15535_15540) ) (!  (=> (select (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@83 f_23@@98) (= (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@39) o2_5@@83 f_23@@98) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@83 f_23@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@83 f_23@@98))
))) (forall ((o2_5@@84 T@Ref) (f_23@@99 T@Field_18011_1324) ) (!  (=> (select (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@84 f_23@@99) (= (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@39) o2_5@@84 f_23@@99) (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@84 f_23@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@84 f_23@@99))
))) (forall ((o2_5@@85 T@Ref) (f_23@@100 T@Field_18011_53) ) (!  (=> (select (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@85 f_23@@100) (= (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@39) o2_5@@85 f_23@@100) (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@85 f_23@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@85 f_23@@100))
))) (forall ((o2_5@@86 T@Ref) (f_23@@101 T@Field_18011_9781) ) (!  (=> (select (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@86 f_23@@101) (= (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@39) o2_5@@86 f_23@@101) (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@86 f_23@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@86 f_23@@101))
))) (forall ((o2_5@@87 T@Ref) (f_23@@102 T@Field_18011_18012) ) (!  (=> (select (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@87 f_23@@102) (= (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@39) o2_5@@87 f_23@@102) (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@87 f_23@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@87 f_23@@102))
))) (forall ((o2_5@@88 T@Ref) (f_23@@103 T@Field_19890_19895) ) (!  (=> (select (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@88 f_23@@103) (= (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@39) o2_5@@88 f_23@@103) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@88 f_23@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@88 f_23@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@27 Mask@@63) (IsWandField_5627_36827 pm_f_5@@10))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_9707) (x@@17 T@ArrayDomainType) (n@@17 Int) (i@@20 Int) ) (!  (and (= (get0 Heap@@40 x@@17 n@@17 i@@20) (|get0'| Heap@@40 x@@17 n@@17 i@@20)) (dummyFunction_1723 (|get0#triggerStateless| x@@17 n@@17 i@@20)))
 :qid |stdinbpl.242:15|
 :skolemid |24|
 :pattern ( (get0 Heap@@40 x@@17 n@@17 i@@20))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_9707) (x@@18 T@ArrayDomainType) (n@@18 Int) (i@@21 Int) ) (!  (and (= (get1 Heap@@41 x@@18 n@@18 i@@21) (|get1'| Heap@@41 x@@18 n@@18 i@@21)) (dummyFunction_1723 (|get1#triggerStateless| x@@18 n@@18 i@@21)))
 :qid |stdinbpl.406:15|
 :skolemid |29|
 :pattern ( (get1 Heap@@41 x@@18 n@@18 i@@21))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_9707) (Mask@@64 T@PolymorphicMapType_9728) (a_2@@2 T@ArrayDomainType) (i@@22 Int) ) (!  (=> (and (state Heap@@42 Mask@@64) (or (< AssumeFunctionsAbove 2) (|aloc#trigger| EmptyFrame a_2@@2 i@@22))) (=> (and (<= 0 i@@22) (< i@@22 (alen a_2@@2))) (= (loc_inv_1 (|aloc'| Heap@@42 a_2@@2 i@@22)) a_2@@2)))
 :qid |stdinbpl.597:15|
 :skolemid |38|
 :pattern ( (state Heap@@42 Mask@@64) (|aloc'| Heap@@42 a_2@@2 i@@22))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_9707) (Mask@@65 T@PolymorphicMapType_9728) (a_2@@3 T@ArrayDomainType) (i@@23 Int) ) (!  (=> (and (state Heap@@43 Mask@@65) (or (< AssumeFunctionsAbove 2) (|aloc#trigger| EmptyFrame a_2@@3 i@@23))) (=> (and (<= 0 i@@23) (< i@@23 (alen a_2@@3))) (= (loc_inv_2 (|aloc'| Heap@@43 a_2@@3 i@@23)) i@@23)))
 :qid |stdinbpl.601:15|
 :skolemid |39|
 :pattern ( (state Heap@@43 Mask@@65) (|aloc'| Heap@@43 a_2@@3 i@@23))
)))
(assert (forall ((a_2@@4 T@ArrayDomainType) ) (! (>= (alen a_2@@4) 0)
 :qid |stdinbpl.222:15|
 :skolemid |23|
 :pattern ( (alen a_2@@4))
)))
(assert (forall ((a_2@@5 T@ArrayDomainType) (i@@24 Int) ) (!  (and (= (loc_inv_1 (array_loc a_2@@5 i@@24)) a_2@@5) (= (loc_inv_2 (array_loc a_2@@5 i@@24)) i@@24))
 :qid |stdinbpl.216:15|
 :skolemid |22|
 :pattern ( (array_loc a_2@@5 i@@24))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_9707) (o_14 T@Ref) (f_24 T@Field_19890_19895) (v T@PolymorphicMapType_10256) ) (! (succHeap Heap@@44 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@44) (store (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@44) o_14 f_24 v) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@44) (store (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@44) o_14 f_24 v) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_9707) (o_14@@0 T@Ref) (f_24@@0 T@Field_18011_18012) (v@@0 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@45) (store (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@45) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@45) (store (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@45) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_9707) (o_14@@1 T@Ref) (f_24@@1 T@Field_18011_1324) (v@@1 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@46) (store (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@46) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@46) (store (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@46) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_9707) (o_14@@2 T@Ref) (f_24@@2 T@Field_18011_9781) (v@@2 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@47) (store (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@47) o_14@@2 f_24@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@47) (store (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@47) o_14@@2 f_24@@2 v@@2)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_9707) (o_14@@3 T@Ref) (f_24@@3 T@Field_18011_53) (v@@3 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@48) (store (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@48) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@48) (store (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@48) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_9707) (o_14@@4 T@Ref) (f_24@@4 T@Field_15535_15540) (v@@4 T@PolymorphicMapType_10256) ) (! (succHeap Heap@@49 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@49) (store (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@49) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@49) (store (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@49) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_9707) (o_14@@5 T@Ref) (f_24@@5 T@Field_13628_13629) (v@@5 T@FrameType) ) (! (succHeap Heap@@50 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@50) (store (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@50) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@50) (store (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@50) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_9707) (o_14@@6 T@Ref) (f_24@@6 T@Field_13628_1324) (v@@6 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@51) (store (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@51) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@51) (store (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@51) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_9707) (o_14@@7 T@Ref) (f_24@@7 T@Field_13628_9781) (v@@7 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@52) (store (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@52) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@52) (store (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@52) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_9707) (o_14@@8 T@Ref) (f_24@@8 T@Field_13628_53) (v@@8 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@53) (store (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@53) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@53) (store (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@53) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_9707) (o_14@@9 T@Ref) (f_24@@9 T@Field_5627_15540) (v@@9 T@PolymorphicMapType_10256) ) (! (succHeap Heap@@54 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@54) (store (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@54) o_14@@9 f_24@@9 v@@9) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@54) (store (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@54) o_14@@9 f_24@@9 v@@9) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_9707) (o_14@@10 T@Ref) (f_24@@10 T@Field_5627_13629) (v@@10 T@FrameType) ) (! (succHeap Heap@@55 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@55) (store (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@55) o_14@@10 f_24@@10 v@@10) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@55) (store (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@55) o_14@@10 f_24@@10 v@@10) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_9707) (o_14@@11 T@Ref) (f_24@@11 T@Field_13205_1324) (v@@11 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@56) (store (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@56) o_14@@11 f_24@@11 v@@11) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@56) (store (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@56) o_14@@11 f_24@@11 v@@11) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_9707) (o_14@@12 T@Ref) (f_24@@12 T@Field_9780_9781) (v@@12 T@Ref) ) (! (succHeap Heap@@57 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@57) (store (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@57) o_14@@12 f_24@@12 v@@12) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@57) (store (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@57) o_14@@12 f_24@@12 v@@12) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_9707) (o_14@@13 T@Ref) (f_24@@13 T@Field_9767_53) (v@@13 Bool) ) (! (succHeap Heap@@58 (PolymorphicMapType_9707 (store (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@58) o_14@@13 f_24@@13 v@@13) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (store (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@58) o_14@@13 f_24@@13 v@@13) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_9707) (Mask@@66 T@PolymorphicMapType_9728) (x@@19 T@ArrayDomainType) (n@@19 Int) (i@@25 Int) ) (!  (=> (state Heap@@59 Mask@@66) (= (|get0'| Heap@@59 x@@19 n@@19 i@@25) (|get0#frame| (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@59) null (hide0 x@@19 n@@19 i@@25)) x@@19 n@@19 i@@25)))
 :qid |stdinbpl.259:15|
 :skolemid |27|
 :pattern ( (state Heap@@59 Mask@@66) (|get0'| Heap@@59 x@@19 n@@19 i@@25))
 :pattern ( (state Heap@@59 Mask@@66) (|get0#triggerStateless| x@@19 n@@19 i@@25) (|hide0#trigger_5731| Heap@@59 (hide0 x@@19 n@@19 i@@25)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_9707) (Mask@@67 T@PolymorphicMapType_9728) (x@@20 T@ArrayDomainType) (n@@20 Int) (i@@26 Int) ) (!  (=> (state Heap@@60 Mask@@67) (= (|get1'| Heap@@60 x@@20 n@@20 i@@26) (|get1#frame| (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@60) null (hide1 x@@20 n@@20 i@@26)) x@@20 n@@20 i@@26)))
 :qid |stdinbpl.423:15|
 :skolemid |32|
 :pattern ( (state Heap@@60 Mask@@67) (|get1'| Heap@@60 x@@20 n@@20 i@@26))
 :pattern ( (state Heap@@60 Mask@@67) (|get1#triggerStateless| x@@20 n@@20 i@@26) (|hide1#trigger_5758| Heap@@60 (hide1 x@@20 n@@20 i@@26)))
)))
(assert (forall ((o_14@@14 T@Ref) (f_22 T@Field_9780_9781) (Heap@@61 T@PolymorphicMapType_9707) ) (!  (=> (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@61) o_14@@14 $allocated) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@61) (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@61) o_14@@14 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@61) o_14@@14 f_22))
)))
(assert (forall ((p@@3 T@Field_18011_18012) (v_1@@2 T@FrameType) (q T@Field_18011_18012) (w@@2 T@FrameType) (r T@Field_18011_18012) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18011_18011 p@@3 v_1@@2 q w@@2) (InsidePredicate_18011_18011 q w@@2 r u)) (InsidePredicate_18011_18011 p@@3 v_1@@2 r u))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18011_18011 p@@3 v_1@@2 q w@@2) (InsidePredicate_18011_18011 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_18011_18012) (v_1@@3 T@FrameType) (q@@0 T@Field_18011_18012) (w@@3 T@FrameType) (r@@0 T@Field_13628_13629) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_18011_18011 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_18011_13628 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_18011_13628 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18011_18011 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_18011_13628 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_18011_18012) (v_1@@4 T@FrameType) (q@@1 T@Field_18011_18012) (w@@4 T@FrameType) (r@@1 T@Field_5627_13629) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_18011_18011 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_18011_9767 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_18011_9767 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18011_18011 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_18011_9767 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_18011_18012) (v_1@@5 T@FrameType) (q@@2 T@Field_13628_13629) (w@@5 T@FrameType) (r@@2 T@Field_18011_18012) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_18011_13628 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_13628_18011 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_18011_18011 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18011_13628 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_13628_18011 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_18011_18012) (v_1@@6 T@FrameType) (q@@3 T@Field_13628_13629) (w@@6 T@FrameType) (r@@3 T@Field_13628_13629) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_18011_13628 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_13628_13628 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_18011_13628 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18011_13628 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_13628_13628 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_18011_18012) (v_1@@7 T@FrameType) (q@@4 T@Field_13628_13629) (w@@7 T@FrameType) (r@@4 T@Field_5627_13629) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_18011_13628 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_13628_9767 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_18011_9767 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18011_13628 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_13628_9767 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_18011_18012) (v_1@@8 T@FrameType) (q@@5 T@Field_5627_13629) (w@@8 T@FrameType) (r@@5 T@Field_18011_18012) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_18011_9767 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9767_18011 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_18011_18011 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18011_9767 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9767_18011 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_18011_18012) (v_1@@9 T@FrameType) (q@@6 T@Field_5627_13629) (w@@9 T@FrameType) (r@@6 T@Field_13628_13629) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_18011_9767 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9767_13628 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_18011_13628 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18011_9767 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9767_13628 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_18011_18012) (v_1@@10 T@FrameType) (q@@7 T@Field_5627_13629) (w@@10 T@FrameType) (r@@7 T@Field_5627_13629) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_18011_9767 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9767_9767 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_18011_9767 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18011_9767 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9767_9767 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_13628_13629) (v_1@@11 T@FrameType) (q@@8 T@Field_18011_18012) (w@@11 T@FrameType) (r@@8 T@Field_18011_18012) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_13628_18011 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_18011_18011 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_13628_18011 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13628_18011 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_18011_18011 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_13628_13629) (v_1@@12 T@FrameType) (q@@9 T@Field_18011_18012) (w@@12 T@FrameType) (r@@9 T@Field_13628_13629) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_13628_18011 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_18011_13628 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_13628_13628 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13628_18011 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_18011_13628 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_13628_13629) (v_1@@13 T@FrameType) (q@@10 T@Field_18011_18012) (w@@13 T@FrameType) (r@@10 T@Field_5627_13629) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_13628_18011 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_18011_9767 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_13628_9767 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13628_18011 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_18011_9767 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_13628_13629) (v_1@@14 T@FrameType) (q@@11 T@Field_13628_13629) (w@@14 T@FrameType) (r@@11 T@Field_18011_18012) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_13628_13628 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_13628_18011 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_13628_18011 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13628_13628 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_13628_18011 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_13628_13629) (v_1@@15 T@FrameType) (q@@12 T@Field_13628_13629) (w@@15 T@FrameType) (r@@12 T@Field_13628_13629) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_13628_13628 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_13628_13628 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_13628_13628 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13628_13628 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_13628_13628 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_13628_13629) (v_1@@16 T@FrameType) (q@@13 T@Field_13628_13629) (w@@16 T@FrameType) (r@@13 T@Field_5627_13629) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_13628_13628 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_13628_9767 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_13628_9767 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13628_13628 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_13628_9767 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_13628_13629) (v_1@@17 T@FrameType) (q@@14 T@Field_5627_13629) (w@@17 T@FrameType) (r@@14 T@Field_18011_18012) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_13628_9767 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9767_18011 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_13628_18011 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13628_9767 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9767_18011 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_13628_13629) (v_1@@18 T@FrameType) (q@@15 T@Field_5627_13629) (w@@18 T@FrameType) (r@@15 T@Field_13628_13629) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_13628_9767 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9767_13628 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_13628_13628 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13628_9767 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9767_13628 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_13628_13629) (v_1@@19 T@FrameType) (q@@16 T@Field_5627_13629) (w@@19 T@FrameType) (r@@16 T@Field_5627_13629) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_13628_9767 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9767_9767 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_13628_9767 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13628_9767 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9767_9767 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_5627_13629) (v_1@@20 T@FrameType) (q@@17 T@Field_18011_18012) (w@@20 T@FrameType) (r@@17 T@Field_18011_18012) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_9767_18011 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_18011_18011 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_9767_18011 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9767_18011 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_18011_18011 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_5627_13629) (v_1@@21 T@FrameType) (q@@18 T@Field_18011_18012) (w@@21 T@FrameType) (r@@18 T@Field_13628_13629) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_9767_18011 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_18011_13628 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_9767_13628 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9767_18011 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_18011_13628 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_5627_13629) (v_1@@22 T@FrameType) (q@@19 T@Field_18011_18012) (w@@22 T@FrameType) (r@@19 T@Field_5627_13629) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_9767_18011 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_18011_9767 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_9767_9767 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9767_18011 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_18011_9767 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_5627_13629) (v_1@@23 T@FrameType) (q@@20 T@Field_13628_13629) (w@@23 T@FrameType) (r@@20 T@Field_18011_18012) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_9767_13628 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_13628_18011 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_9767_18011 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9767_13628 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_13628_18011 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_5627_13629) (v_1@@24 T@FrameType) (q@@21 T@Field_13628_13629) (w@@24 T@FrameType) (r@@21 T@Field_13628_13629) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_9767_13628 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_13628_13628 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_9767_13628 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9767_13628 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_13628_13628 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_5627_13629) (v_1@@25 T@FrameType) (q@@22 T@Field_13628_13629) (w@@25 T@FrameType) (r@@22 T@Field_5627_13629) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_9767_13628 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_13628_9767 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_9767_9767 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9767_13628 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_13628_9767 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_5627_13629) (v_1@@26 T@FrameType) (q@@23 T@Field_5627_13629) (w@@26 T@FrameType) (r@@23 T@Field_18011_18012) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_9767_9767 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9767_18011 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_9767_18011 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9767_9767 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9767_18011 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_5627_13629) (v_1@@27 T@FrameType) (q@@24 T@Field_5627_13629) (w@@27 T@FrameType) (r@@24 T@Field_13628_13629) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_9767_9767 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9767_13628 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_9767_13628 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9767_9767 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9767_13628 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_5627_13629) (v_1@@28 T@FrameType) (q@@25 T@Field_5627_13629) (w@@28 T@FrameType) (r@@25 T@Field_5627_13629) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_9767_9767 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9767_9767 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_9767_9767 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9767_9767 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9767_9767 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@62 T@PolymorphicMapType_9707) (Mask@@68 T@PolymorphicMapType_9728) (a_2@@6 T@ArrayDomainType) (i@@27 Int) ) (!  (=> (and (state Heap@@62 Mask@@68) (< AssumeFunctionsAbove 2)) (=> (and (<= 0 i@@27) (< i@@27 (alen a_2@@6))) (= (aloc_1 Heap@@62 a_2@@6 i@@27) (array_loc a_2@@6 i@@27))))
 :qid |stdinbpl.584:15|
 :skolemid |36|
 :pattern ( (state Heap@@62 Mask@@68) (aloc_1 Heap@@62 a_2@@6 i@@27))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_9728)
(declare-fun Heap@0 () T@PolymorphicMapType_9707)
(declare-fun x@@21 () T@ArrayDomainType)
(declare-fun i@@28 () Int)
(declare-fun Heap@1 () T@PolymorphicMapType_9707)
(declare-fun n@@21 () Int)
(declare-fun Mask@0 () T@PolymorphicMapType_9728)
(declare-fun Heap@2 () T@PolymorphicMapType_9707)
(declare-fun Result@0 () Int)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_9728)
(declare-fun Heap@@63 () T@PolymorphicMapType_9707)
(declare-fun FrameFragment_1324 (Int) T@FrameType)
(declare-fun wildcard@2 () Real)
(declare-fun wildcard@0 () Real)
(declare-fun wildcard@1 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id |get1#definedness|)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon6_Else_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_5627_1324 UnfoldingMask@1 (aloc_1 Heap@0 x@@21 i@@28) vint_1)) (=> (HasDirectPerm_5627_1324 UnfoldingMask@1 (aloc_1 Heap@0 x@@21 i@@28) vint_1) (=> (= Heap@1 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@0) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@0) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@0) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@0) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@0) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@0) (store (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@0) null (|hide1#sm| x@@21 n@@21 i@@28) (PolymorphicMapType_10256 (store (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@0) null (|hide1#sm| x@@21 n@@21 i@@28))) (aloc_1 Heap@0 x@@21 i@@28) vint_1 true) (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@0) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@0) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@0) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@0) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@0) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@0) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@0) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@0) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@0) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@0) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@0) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@0) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@0) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@0) null (|hide1#sm| x@@21 n@@21 i@@28))))) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@0) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@0) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@0) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@0) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@0) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@0) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@0) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@0))) (=> (and (and (state Heap@1 Mask@0) (= Heap@2 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@1) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@1) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@1) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@1) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@1) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@1) (store (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@1) null (|hide1#sm| x@@21 n@@21 i@@28) (PolymorphicMapType_10256 (store (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@1) null (|hide1#sm| x@@21 n@@21 i@@28))) (aloc_1 Heap@1 x@@21 i@@28) vint_1 true) (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@1) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@1) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@1) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@1) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@1) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@1) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@1) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@1) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@1) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@1) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@1) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@1) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@1) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@1) null (|hide1#sm| x@@21 n@@21 i@@28))))) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@1) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@1) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@1) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@1) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@1) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@1) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@1) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@1)))) (and (state Heap@2 Mask@0) (= (ControlFlow 0 8) (- 0 7)))) (= Result@0 (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@2) (aloc_1 Heap@2 x@@21 i@@28) vint_1))))))))
(let ((anon6_Then_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= 0 i@@28)) (=> (<= 0 i@@28) (=> (= (ControlFlow 0 5) (- 0 4)) (< i@@28 (alen x@@21)))))))
(let ((anon5_Else_correct  (and (=> (= (ControlFlow 0 10) (- 0 12)) (HasDirectPerm_5627_1324 UnfoldingMask@0 (aloc_1 Heap@@63 x@@21 i@@28) vint_1)) (=> (HasDirectPerm_5627_1324 UnfoldingMask@0 (aloc_1 Heap@@63 x@@21 i@@28) vint_1) (=> (= Heap@0 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@63) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@63) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@63) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@63) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@63) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@63) (store (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@63) null (|hide1#sm| x@@21 n@@21 i@@28) (PolymorphicMapType_10256 (store (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@63) null (|hide1#sm| x@@21 n@@21 i@@28))) (aloc_1 Heap@@63 x@@21 i@@28) vint_1 true) (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@63) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@63) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@63) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@63) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@63) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@63) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@63) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@63) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@63) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@63) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@63) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@63) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@63) null (|hide1#sm| x@@21 n@@21 i@@28))) (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@63) null (|hide1#sm| x@@21 n@@21 i@@28))))) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@63) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@63) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@63) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@63) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@63) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@63) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@63) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@63))) (=> (and (and (state Heap@0 Mask@0) (= Result@0 (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@0) (aloc_1 Heap@0 x@@21 i@@28) vint_1))) (and (|hide1#trigger_5758| Heap@0 (hide1 x@@21 n@@21 i@@28)) (= (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@0) null (hide1 x@@21 n@@21 i@@28)) (FrameFragment_1324 (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@0) (aloc_1 Heap@0 x@@21 i@@28) vint_1))))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| Mask@0) null (hide1 x@@21 n@@21 i@@28))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| Mask@0) null (hide1 x@@21 n@@21 i@@28)))) (=> (and (> n@@21 0) (>= i@@28 0)) (=> (and (and (and (< i@@28 n@@21) (= (alen x@@21) n@@21)) (and (state Heap@0 Mask@0) (> wildcard@2 NoPerm))) (and (and (not (= (aloc_1 Heap@0 x@@21 i@@28) null)) (= UnfoldingMask@1 (PolymorphicMapType_9728 (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| Mask@0) (store (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| Mask@0) (aloc_1 Heap@0 x@@21 i@@28) vint_1 (+ (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| Mask@0) (aloc_1 Heap@0 x@@21 i@@28) vint_1) wildcard@2)) (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| Mask@0)))) (and (state Heap@0 UnfoldingMask@1) (state Heap@0 UnfoldingMask@1)))) (and (=> (= (ControlFlow 0 10) 5) anon6_Then_correct) (=> (= (ControlFlow 0 10) 8) anon6_Else_correct))))))))))))
(let ((anon5_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (<= 0 i@@28)) (=> (<= 0 i@@28) (=> (= (ControlFlow 0 2) (- 0 1)) (< i@@28 (alen x@@21)))))))
(let ((anon0_correct  (=> (and (and (state Heap@@63 ZeroMask) (not AssumePermUpperBound)) (and (= AssumeFunctionsAbove 0) (<= 0 i@@28))) (=> (and (and (and (< i@@28 n@@21) (state Heap@@63 ZeroMask)) (and (> wildcard@0 NoPerm) (= Mask@0 (PolymorphicMapType_9728 (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| ZeroMask) (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| ZeroMask) (store (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| ZeroMask) null (hide1 x@@21 n@@21 i@@28) (+ (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| ZeroMask) null (hide1 x@@21 n@@21 i@@28)) wildcard@0)) (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| ZeroMask) (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| ZeroMask) (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| ZeroMask) (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| ZeroMask) (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| ZeroMask) (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| ZeroMask) (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| ZeroMask) (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| ZeroMask) (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| ZeroMask) (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| ZeroMask) (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| ZeroMask) (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| ZeroMask))))) (and (and (state Heap@@63 Mask@0) (state Heap@@63 Mask@0)) (and (|hide1#trigger_5758| Heap@@63 (hide1 x@@21 n@@21 i@@28)) (= (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@63) null (hide1 x@@21 n@@21 i@@28)) (FrameFragment_1324 (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@63) (aloc_1 Heap@@63 x@@21 i@@28) vint_1)))))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| Mask@0) null (hide1 x@@21 n@@21 i@@28))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| Mask@0) null (hide1 x@@21 n@@21 i@@28)))) (=> (and (> n@@21 0) (>= i@@28 0)) (=> (and (and (and (< i@@28 n@@21) (= (alen x@@21) n@@21)) (and (state Heap@@63 Mask@0) (> wildcard@1 NoPerm))) (and (and (not (= (aloc_1 Heap@@63 x@@21 i@@28) null)) (= UnfoldingMask@0 (PolymorphicMapType_9728 (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| Mask@0) (store (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| Mask@0) (aloc_1 Heap@@63 x@@21 i@@28) vint_1 (+ (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| Mask@0) (aloc_1 Heap@@63 x@@21 i@@28) vint_1) wildcard@1)) (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| Mask@0) (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| Mask@0)))) (and (state Heap@@63 UnfoldingMask@0) (state Heap@@63 UnfoldingMask@0)))) (and (=> (= (ControlFlow 0 13) 2) anon5_Then_correct) (=> (= (ControlFlow 0 13) 10) anon5_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 15) 13)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
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
(declare-sort T@Field_9767_53 0)
(declare-sort T@Field_9780_9781 0)
(declare-sort T@Field_13205_1324 0)
(declare-sort T@Field_13628_13629 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_15535_15540 0)
(declare-sort T@Field_18011_18012 0)
(declare-sort T@Field_19890_19895 0)
(declare-sort T@Field_5627_13629 0)
(declare-sort T@Field_5627_15540 0)
(declare-sort T@Field_13628_1324 0)
(declare-sort T@Field_13628_53 0)
(declare-sort T@Field_13628_9781 0)
(declare-sort T@Field_18011_1324 0)
(declare-sort T@Field_18011_53 0)
(declare-sort T@Field_18011_9781 0)
(declare-datatypes ((T@PolymorphicMapType_9728 0)) (((PolymorphicMapType_9728 (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| (Array T@Ref T@Field_13628_13629 Real)) (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| (Array T@Ref T@Field_13205_1324 Real)) (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| (Array T@Ref T@Field_18011_18012 Real)) (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| (Array T@Ref T@Field_13628_1324 Real)) (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| (Array T@Ref T@Field_13628_53 Real)) (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| (Array T@Ref T@Field_13628_9781 Real)) (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| (Array T@Ref T@Field_15535_15540 Real)) (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| (Array T@Ref T@Field_5627_13629 Real)) (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| (Array T@Ref T@Field_9767_53 Real)) (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| (Array T@Ref T@Field_9780_9781 Real)) (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| (Array T@Ref T@Field_5627_15540 Real)) (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| (Array T@Ref T@Field_18011_1324 Real)) (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| (Array T@Ref T@Field_18011_53 Real)) (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| (Array T@Ref T@Field_18011_9781 Real)) (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| (Array T@Ref T@Field_19890_19895 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10256 0)) (((PolymorphicMapType_10256 (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| (Array T@Ref T@Field_13205_1324 Bool)) (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| (Array T@Ref T@Field_9767_53 Bool)) (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| (Array T@Ref T@Field_9780_9781 Bool)) (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| (Array T@Ref T@Field_5627_13629 Bool)) (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| (Array T@Ref T@Field_5627_15540 Bool)) (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| (Array T@Ref T@Field_13628_1324 Bool)) (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| (Array T@Ref T@Field_13628_53 Bool)) (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| (Array T@Ref T@Field_13628_9781 Bool)) (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| (Array T@Ref T@Field_13628_13629 Bool)) (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| (Array T@Ref T@Field_15535_15540 Bool)) (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| (Array T@Ref T@Field_18011_1324 Bool)) (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| (Array T@Ref T@Field_18011_53 Bool)) (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| (Array T@Ref T@Field_18011_9781 Bool)) (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| (Array T@Ref T@Field_18011_18012 Bool)) (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| (Array T@Ref T@Field_19890_19895 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9707 0)) (((PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| (Array T@Ref T@Field_9767_53 Bool)) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| (Array T@Ref T@Field_9780_9781 T@Ref)) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| (Array T@Ref T@Field_13205_1324 Int)) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| (Array T@Ref T@Field_13628_13629 T@FrameType)) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| (Array T@Ref T@Field_15535_15540 T@PolymorphicMapType_10256)) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| (Array T@Ref T@Field_18011_18012 T@FrameType)) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| (Array T@Ref T@Field_19890_19895 T@PolymorphicMapType_10256)) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| (Array T@Ref T@Field_5627_13629 T@FrameType)) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| (Array T@Ref T@Field_5627_15540 T@PolymorphicMapType_10256)) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| (Array T@Ref T@Field_13628_1324 Int)) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| (Array T@Ref T@Field_13628_53 Bool)) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| (Array T@Ref T@Field_13628_9781 T@Ref)) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| (Array T@Ref T@Field_18011_1324 Int)) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| (Array T@Ref T@Field_18011_53 Bool)) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| (Array T@Ref T@Field_18011_9781 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_9767_53)
(declare-fun vint_1 () T@Field_13205_1324)
(declare-fun succHeap (T@PolymorphicMapType_9707 T@PolymorphicMapType_9707) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9707 T@PolymorphicMapType_9707) Bool)
(declare-fun state (T@PolymorphicMapType_9707 T@PolymorphicMapType_9728) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9728) Bool)
(declare-sort T@ArrayDomainType 0)
(declare-fun hide0 (T@ArrayDomainType Int Int) T@Field_13628_13629)
(declare-fun IsPredicateField_5731_5732 (T@Field_13628_13629) Bool)
(declare-fun hide1 (T@ArrayDomainType Int Int) T@Field_18011_18012)
(declare-fun IsPredicateField_5758_5759 (T@Field_18011_18012) Bool)
(declare-fun |get0'| (T@PolymorphicMapType_9707 T@ArrayDomainType Int Int) Int)
(declare-fun dummyFunction_1723 (Int) Bool)
(declare-fun |get0#triggerStateless| (T@ArrayDomainType Int Int) Int)
(declare-fun |get1'| (T@PolymorphicMapType_9707 T@ArrayDomainType Int Int) Int)
(declare-fun |get1#triggerStateless| (T@ArrayDomainType Int Int) Int)
(declare-fun |hide0#trigger_5731| (T@PolymorphicMapType_9707 T@Field_13628_13629) Bool)
(declare-fun |hide0#everUsed_5731| (T@Field_13628_13629) Bool)
(declare-fun |hide1#trigger_5758| (T@PolymorphicMapType_9707 T@Field_18011_18012) Bool)
(declare-fun |hide1#everUsed_5758| (T@Field_18011_18012) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10256)
(declare-fun getPredWandId_5731_5732 (T@Field_13628_13629) Int)
(declare-fun getPredWandId_5758_5759 (T@Field_18011_18012) Int)
(declare-fun |aloc'| (T@PolymorphicMapType_9707 T@ArrayDomainType Int) T@Ref)
(declare-fun dummyFunction_5721 (T@Ref) Bool)
(declare-fun |aloc#triggerStateless| (T@ArrayDomainType Int) T@Ref)
(declare-fun |aloc#frame| (T@FrameType T@ArrayDomainType Int) T@Ref)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun PredicateMaskField_5731 (T@Field_13628_13629) T@Field_15535_15540)
(declare-fun |hide0#sm| (T@ArrayDomainType Int Int) T@Field_15535_15540)
(declare-fun PredicateMaskField_5758 (T@Field_18011_18012) T@Field_19890_19895)
(declare-fun |hide1#sm| (T@ArrayDomainType Int Int) T@Field_19890_19895)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |get1#trigger| (T@FrameType T@ArrayDomainType Int Int) Bool)
(declare-fun null () T@Ref)
(declare-fun aloc_1 (T@PolymorphicMapType_9707 T@ArrayDomainType Int) T@Ref)
(declare-fun |get0#trigger| (T@FrameType T@ArrayDomainType Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9707 T@PolymorphicMapType_9707 T@PolymorphicMapType_9728) Bool)
(declare-fun HasDirectPerm_18011_13629 (T@PolymorphicMapType_9728 T@Ref T@Field_18011_18012) Bool)
(declare-fun HasDirectPerm_13628_13629 (T@PolymorphicMapType_9728 T@Ref T@Field_13628_13629) Bool)
(declare-fun IsPredicateField_5627_31845 (T@Field_5627_13629) Bool)
(declare-fun PredicateMaskField_5627 (T@Field_5627_13629) T@Field_5627_15540)
(declare-fun HasDirectPerm_5627_13629 (T@PolymorphicMapType_9728 T@Ref T@Field_5627_13629) Bool)
(declare-fun IsWandField_18011_37541 (T@Field_18011_18012) Bool)
(declare-fun WandMaskField_18011 (T@Field_18011_18012) T@Field_19890_19895)
(declare-fun IsWandField_13628_37184 (T@Field_13628_13629) Bool)
(declare-fun WandMaskField_13628 (T@Field_13628_13629) T@Field_15535_15540)
(declare-fun IsWandField_5627_36827 (T@Field_5627_13629) Bool)
(declare-fun WandMaskField_5627 (T@Field_5627_13629) T@Field_5627_15540)
(declare-fun get1 (T@PolymorphicMapType_9707 T@ArrayDomainType Int Int) Int)
(declare-fun get0 (T@PolymorphicMapType_9707 T@ArrayDomainType Int Int) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_9707)
(declare-fun ZeroMask () T@PolymorphicMapType_9728)
(declare-fun InsidePredicate_18011_18011 (T@Field_18011_18012 T@FrameType T@Field_18011_18012 T@FrameType) Bool)
(declare-fun InsidePredicate_13628_13628 (T@Field_13628_13629 T@FrameType T@Field_13628_13629 T@FrameType) Bool)
(declare-fun InsidePredicate_9767_9767 (T@Field_5627_13629 T@FrameType T@Field_5627_13629 T@FrameType) Bool)
(declare-fun IsPredicateField_5627_1324 (T@Field_13205_1324) Bool)
(declare-fun IsWandField_5627_1324 (T@Field_13205_1324) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5758_47859 (T@Field_19890_19895) Bool)
(declare-fun IsWandField_5758_47875 (T@Field_19890_19895) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5758_9781 (T@Field_18011_9781) Bool)
(declare-fun IsWandField_5758_9781 (T@Field_18011_9781) Bool)
(declare-fun IsPredicateField_5758_53 (T@Field_18011_53) Bool)
(declare-fun IsWandField_5758_53 (T@Field_18011_53) Bool)
(declare-fun IsPredicateField_5758_1324 (T@Field_18011_1324) Bool)
(declare-fun IsWandField_5758_1324 (T@Field_18011_1324) Bool)
(declare-fun IsPredicateField_5627_47028 (T@Field_5627_15540) Bool)
(declare-fun IsWandField_5627_47044 (T@Field_5627_15540) Bool)
(declare-fun IsPredicateField_5627_9781 (T@Field_9780_9781) Bool)
(declare-fun IsWandField_5627_9781 (T@Field_9780_9781) Bool)
(declare-fun IsPredicateField_5627_53 (T@Field_9767_53) Bool)
(declare-fun IsWandField_5627_53 (T@Field_9767_53) Bool)
(declare-fun IsPredicateField_5731_46211 (T@Field_15535_15540) Bool)
(declare-fun IsWandField_5731_46227 (T@Field_15535_15540) Bool)
(declare-fun IsPredicateField_5731_9781 (T@Field_13628_9781) Bool)
(declare-fun IsWandField_5731_9781 (T@Field_13628_9781) Bool)
(declare-fun IsPredicateField_5731_53 (T@Field_13628_53) Bool)
(declare-fun IsWandField_5731_53 (T@Field_13628_53) Bool)
(declare-fun IsPredicateField_5731_1324 (T@Field_13628_1324) Bool)
(declare-fun IsWandField_5731_1324 (T@Field_13628_1324) Bool)
(declare-fun HasDirectPerm_18011_31600 (T@PolymorphicMapType_9728 T@Ref T@Field_19890_19895) Bool)
(declare-fun HasDirectPerm_18011_9781 (T@PolymorphicMapType_9728 T@Ref T@Field_18011_9781) Bool)
(declare-fun HasDirectPerm_18011_53 (T@PolymorphicMapType_9728 T@Ref T@Field_18011_53) Bool)
(declare-fun HasDirectPerm_18011_1324 (T@PolymorphicMapType_9728 T@Ref T@Field_18011_1324) Bool)
(declare-fun HasDirectPerm_13628_30482 (T@PolymorphicMapType_9728 T@Ref T@Field_15535_15540) Bool)
(declare-fun HasDirectPerm_13628_9781 (T@PolymorphicMapType_9728 T@Ref T@Field_13628_9781) Bool)
(declare-fun HasDirectPerm_13628_53 (T@PolymorphicMapType_9728 T@Ref T@Field_13628_53) Bool)
(declare-fun HasDirectPerm_13628_1324 (T@PolymorphicMapType_9728 T@Ref T@Field_13628_1324) Bool)
(declare-fun HasDirectPerm_5627_29321 (T@PolymorphicMapType_9728 T@Ref T@Field_5627_15540) Bool)
(declare-fun HasDirectPerm_5627_9781 (T@PolymorphicMapType_9728 T@Ref T@Field_9780_9781) Bool)
(declare-fun HasDirectPerm_5627_53 (T@PolymorphicMapType_9728 T@Ref T@Field_9767_53) Bool)
(declare-fun HasDirectPerm_5627_1324 (T@PolymorphicMapType_9728 T@Ref T@Field_13205_1324) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9728 T@PolymorphicMapType_9728 T@PolymorphicMapType_9728) Bool)
(declare-fun |aloc#trigger| (T@FrameType T@ArrayDomainType Int) Bool)
(declare-fun alen (T@ArrayDomainType) Int)
(declare-fun loc_inv_1 (T@Ref) T@ArrayDomainType)
(declare-fun loc_inv_2 (T@Ref) Int)
(declare-fun array_loc (T@ArrayDomainType Int) T@Ref)
(declare-fun |get0#frame| (T@FrameType T@ArrayDomainType Int Int) Int)
(declare-fun |get1#frame| (T@FrameType T@ArrayDomainType Int Int) Int)
(declare-fun InsidePredicate_18011_13628 (T@Field_18011_18012 T@FrameType T@Field_13628_13629 T@FrameType) Bool)
(declare-fun InsidePredicate_18011_9767 (T@Field_18011_18012 T@FrameType T@Field_5627_13629 T@FrameType) Bool)
(declare-fun InsidePredicate_13628_18011 (T@Field_13628_13629 T@FrameType T@Field_18011_18012 T@FrameType) Bool)
(declare-fun InsidePredicate_13628_9767 (T@Field_13628_13629 T@FrameType T@Field_5627_13629 T@FrameType) Bool)
(declare-fun InsidePredicate_9767_18011 (T@Field_5627_13629 T@FrameType T@Field_18011_18012 T@FrameType) Bool)
(declare-fun InsidePredicate_9767_13628 (T@Field_5627_13629 T@FrameType T@Field_13628_13629 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_9707) (Heap1 T@PolymorphicMapType_9707) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9707) (Mask T@PolymorphicMapType_9728) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9707) (Heap1@@0 T@PolymorphicMapType_9707) (Heap2 T@PolymorphicMapType_9707) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((x T@ArrayDomainType) (n Int) (i Int) ) (! (IsPredicateField_5731_5732 (hide0 x n i))
 :qid |stdinbpl.654:15|
 :skolemid |41|
 :pattern ( (hide0 x n i))
)))
(assert (forall ((x@@0 T@ArrayDomainType) (n@@0 Int) (i@@0 Int) ) (! (IsPredicateField_5758_5759 (hide1 x@@0 n@@0 i@@0))
 :qid |stdinbpl.728:15|
 :skolemid |47|
 :pattern ( (hide1 x@@0 n@@0 i@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9707) (x@@1 T@ArrayDomainType) (n@@1 Int) (i@@1 Int) ) (! (dummyFunction_1723 (|get0#triggerStateless| x@@1 n@@1 i@@1))
 :qid |stdinbpl.246:15|
 :skolemid |25|
 :pattern ( (|get0'| Heap@@0 x@@1 n@@1 i@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9707) (x@@2 T@ArrayDomainType) (n@@2 Int) (i@@2 Int) ) (! (dummyFunction_1723 (|get1#triggerStateless| x@@2 n@@2 i@@2))
 :qid |stdinbpl.410:15|
 :skolemid |30|
 :pattern ( (|get1'| Heap@@1 x@@2 n@@2 i@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9707) (x@@3 T@ArrayDomainType) (n@@3 Int) (i@@3 Int) ) (! (|hide0#everUsed_5731| (hide0 x@@3 n@@3 i@@3))
 :qid |stdinbpl.673:15|
 :skolemid |45|
 :pattern ( (|hide0#trigger_5731| Heap@@2 (hide0 x@@3 n@@3 i@@3)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9707) (x@@4 T@ArrayDomainType) (n@@4 Int) (i@@4 Int) ) (! (|hide1#everUsed_5758| (hide1 x@@4 n@@4 i@@4))
 :qid |stdinbpl.747:15|
 :skolemid |51|
 :pattern ( (|hide1#trigger_5758| Heap@@3 (hide1 x@@4 n@@4 i@@4)))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_19890_19895) ) (!  (not (select (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_18011_18012) ) (!  (not (select (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18011_9781) ) (!  (not (select (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_18011_53) ) (!  (not (select (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_18011_1324) ) (!  (not (select (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_15535_15540) ) (!  (not (select (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_13628_13629) ) (!  (not (select (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_13628_9781) ) (!  (not (select (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_13628_53) ) (!  (not (select (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_13628_1324) ) (!  (not (select (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_5627_15540) ) (!  (not (select (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_5627_13629) ) (!  (not (select (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_9780_9781) ) (!  (not (select (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_9767_53) ) (!  (not (select (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_13205_1324) ) (!  (not (select (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((x@@5 T@ArrayDomainType) (n@@5 Int) (i@@5 Int) ) (! (= (getPredWandId_5731_5732 (hide0 x@@5 n@@5 i@@5)) 0)
 :qid |stdinbpl.658:15|
 :skolemid |42|
 :pattern ( (hide0 x@@5 n@@5 i@@5))
)))
(assert (forall ((x@@6 T@ArrayDomainType) (n@@6 Int) (i@@6 Int) ) (! (= (getPredWandId_5758_5759 (hide1 x@@6 n@@6 i@@6)) 1)
 :qid |stdinbpl.732:15|
 :skolemid |48|
 :pattern ( (hide1 x@@6 n@@6 i@@6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9707) (a_2 T@ArrayDomainType) (i@@7 Int) ) (! (dummyFunction_5721 (|aloc#triggerStateless| a_2 i@@7))
 :qid |stdinbpl.578:15|
 :skolemid |35|
 :pattern ( (|aloc'| Heap@@4 a_2 i@@7))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9707) (Mask@@0 T@PolymorphicMapType_9728) (a_2@@0 T@ArrayDomainType) (i@@8 Int) ) (!  (=> (state Heap@@5 Mask@@0) (= (|aloc'| Heap@@5 a_2@@0 i@@8) (|aloc#frame| EmptyFrame a_2@@0 i@@8)))
 :qid |stdinbpl.591:15|
 :skolemid |37|
 :pattern ( (state Heap@@5 Mask@@0) (|aloc'| Heap@@5 a_2@@0 i@@8))
)))
(assert (forall ((x@@7 T@ArrayDomainType) (n@@7 Int) (i@@9 Int) ) (! (= (PredicateMaskField_5731 (hide0 x@@7 n@@7 i@@9)) (|hide0#sm| x@@7 n@@7 i@@9))
 :qid |stdinbpl.650:15|
 :skolemid |40|
 :pattern ( (PredicateMaskField_5731 (hide0 x@@7 n@@7 i@@9)))
)))
(assert (forall ((x@@8 T@ArrayDomainType) (n@@8 Int) (i@@10 Int) ) (! (= (PredicateMaskField_5758 (hide1 x@@8 n@@8 i@@10)) (|hide1#sm| x@@8 n@@8 i@@10))
 :qid |stdinbpl.724:15|
 :skolemid |46|
 :pattern ( (PredicateMaskField_5758 (hide1 x@@8 n@@8 i@@10)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9707) (Mask@@1 T@PolymorphicMapType_9728) (x@@9 T@ArrayDomainType) (n@@9 Int) (i@@11 Int) ) (!  (=> (and (state Heap@@6 Mask@@1) (or (< AssumeFunctionsAbove 0) (|get1#trigger| (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@6) null (hide1 x@@9 n@@9 i@@11)) x@@9 n@@9 i@@11))) (=> (and (<= 0 i@@11) (< i@@11 n@@9)) (= (|get1'| Heap@@6 x@@9 n@@9 i@@11) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@6) (aloc_1 Heap@@6 x@@9 i@@11) vint_1))))
 :qid |stdinbpl.429:15|
 :skolemid |33|
 :pattern ( (state Heap@@6 Mask@@1) (|get1'| Heap@@6 x@@9 n@@9 i@@11))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9707) (Mask@@2 T@PolymorphicMapType_9728) (x@@10 T@ArrayDomainType) (n@@10 Int) (i@@12 Int) ) (!  (=> (and (state Heap@@7 Mask@@2) (or (< AssumeFunctionsAbove 1) (|get0#trigger| (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@7) null (hide0 x@@10 n@@10 i@@12)) x@@10 n@@10 i@@12))) (=> (and (<= 0 i@@12) (< i@@12 n@@10)) (= (|get0'| Heap@@7 x@@10 n@@10 i@@12) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@7) (aloc_1 Heap@@7 x@@10 i@@12) vint_1))))
 :qid |stdinbpl.265:15|
 :skolemid |28|
 :pattern ( (state Heap@@7 Mask@@2) (|get0'| Heap@@7 x@@10 n@@10 i@@12))
)))
(assert (forall ((x@@11 T@ArrayDomainType) (n@@11 Int) (i@@13 Int) (x2 T@ArrayDomainType) (n2 Int) (i2 Int) ) (!  (=> (= (hide0 x@@11 n@@11 i@@13) (hide0 x2 n2 i2)) (and (= x@@11 x2) (and (= n@@11 n2) (= i@@13 i2))))
 :qid |stdinbpl.664:15|
 :skolemid |43|
 :pattern ( (hide0 x@@11 n@@11 i@@13) (hide0 x2 n2 i2))
)))
(assert (forall ((x@@12 T@ArrayDomainType) (n@@12 Int) (i@@14 Int) (x2@@0 T@ArrayDomainType) (n2@@0 Int) (i2@@0 Int) ) (!  (=> (= (|hide0#sm| x@@12 n@@12 i@@14) (|hide0#sm| x2@@0 n2@@0 i2@@0)) (and (= x@@12 x2@@0) (and (= n@@12 n2@@0) (= i@@14 i2@@0))))
 :qid |stdinbpl.668:15|
 :skolemid |44|
 :pattern ( (|hide0#sm| x@@12 n@@12 i@@14) (|hide0#sm| x2@@0 n2@@0 i2@@0))
)))
(assert (forall ((x@@13 T@ArrayDomainType) (n@@13 Int) (i@@15 Int) (x2@@1 T@ArrayDomainType) (n2@@1 Int) (i2@@1 Int) ) (!  (=> (= (hide1 x@@13 n@@13 i@@15) (hide1 x2@@1 n2@@1 i2@@1)) (and (= x@@13 x2@@1) (and (= n@@13 n2@@1) (= i@@15 i2@@1))))
 :qid |stdinbpl.738:15|
 :skolemid |49|
 :pattern ( (hide1 x@@13 n@@13 i@@15) (hide1 x2@@1 n2@@1 i2@@1))
)))
(assert (forall ((x@@14 T@ArrayDomainType) (n@@14 Int) (i@@16 Int) (x2@@2 T@ArrayDomainType) (n2@@2 Int) (i2@@2 Int) ) (!  (=> (= (|hide1#sm| x@@14 n@@14 i@@16) (|hide1#sm| x2@@2 n2@@2 i2@@2)) (and (= x@@14 x2@@2) (and (= n@@14 n2@@2) (= i@@16 i2@@2))))
 :qid |stdinbpl.742:15|
 :skolemid |50|
 :pattern ( (|hide1#sm| x@@14 n@@14 i@@16) (|hide1#sm| x2@@2 n2@@2 i2@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9707) (ExhaleHeap T@PolymorphicMapType_9707) (Mask@@3 T@PolymorphicMapType_9728) (pm_f_5 T@Field_18011_18012) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_18011_13629 Mask@@3 null pm_f_5) (IsPredicateField_5758_5759 pm_f_5)) (= (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@8) null (PredicateMaskField_5758 pm_f_5)) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap) null (PredicateMaskField_5758 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap Mask@@3) (IsPredicateField_5758_5759 pm_f_5) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap) null (PredicateMaskField_5758 pm_f_5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9707) (ExhaleHeap@@0 T@PolymorphicMapType_9707) (Mask@@4 T@PolymorphicMapType_9728) (pm_f_5@@0 T@Field_13628_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_13628_13629 Mask@@4 null pm_f_5@@0) (IsPredicateField_5731_5732 pm_f_5@@0)) (= (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@9) null (PredicateMaskField_5731 pm_f_5@@0)) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@0) null (PredicateMaskField_5731 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@0 Mask@@4) (IsPredicateField_5731_5732 pm_f_5@@0) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@0) null (PredicateMaskField_5731 pm_f_5@@0)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9707) (ExhaleHeap@@1 T@PolymorphicMapType_9707) (Mask@@5 T@PolymorphicMapType_9728) (pm_f_5@@1 T@Field_5627_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@5) (=> (and (HasDirectPerm_5627_13629 Mask@@5 null pm_f_5@@1) (IsPredicateField_5627_31845 pm_f_5@@1)) (= (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@10) null (PredicateMaskField_5627 pm_f_5@@1)) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@1) null (PredicateMaskField_5627 pm_f_5@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@5) (IsPredicateField_5627_31845 pm_f_5@@1) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@1) null (PredicateMaskField_5627 pm_f_5@@1)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9707) (ExhaleHeap@@2 T@PolymorphicMapType_9707) (Mask@@6 T@PolymorphicMapType_9728) (pm_f_5@@2 T@Field_18011_18012) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@6) (=> (and (HasDirectPerm_18011_13629 Mask@@6 null pm_f_5@@2) (IsWandField_18011_37541 pm_f_5@@2)) (= (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@11) null (WandMaskField_18011 pm_f_5@@2)) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@2) null (WandMaskField_18011 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@6) (IsWandField_18011_37541 pm_f_5@@2) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@2) null (WandMaskField_18011 pm_f_5@@2)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9707) (ExhaleHeap@@3 T@PolymorphicMapType_9707) (Mask@@7 T@PolymorphicMapType_9728) (pm_f_5@@3 T@Field_13628_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@7) (=> (and (HasDirectPerm_13628_13629 Mask@@7 null pm_f_5@@3) (IsWandField_13628_37184 pm_f_5@@3)) (= (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@12) null (WandMaskField_13628 pm_f_5@@3)) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@3) null (WandMaskField_13628 pm_f_5@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@7) (IsWandField_13628_37184 pm_f_5@@3) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@3) null (WandMaskField_13628 pm_f_5@@3)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9707) (ExhaleHeap@@4 T@PolymorphicMapType_9707) (Mask@@8 T@PolymorphicMapType_9728) (pm_f_5@@4 T@Field_5627_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@8) (=> (and (HasDirectPerm_5627_13629 Mask@@8 null pm_f_5@@4) (IsWandField_5627_36827 pm_f_5@@4)) (= (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@13) null (WandMaskField_5627 pm_f_5@@4)) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@4) null (WandMaskField_5627 pm_f_5@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@8) (IsWandField_5627_36827 pm_f_5@@4) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@4) null (WandMaskField_5627 pm_f_5@@4)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9707) (Mask@@9 T@PolymorphicMapType_9728) (x@@15 T@ArrayDomainType) (n@@15 Int) (i@@17 Int) ) (!  (=> (and (state Heap@@14 Mask@@9) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 i@@17) (< i@@17 n@@15)) (= (get1 Heap@@14 x@@15 n@@15 i@@17) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@14) (aloc_1 Heap@@14 x@@15 i@@17) vint_1))))
 :qid |stdinbpl.416:15|
 :skolemid |31|
 :pattern ( (state Heap@@14 Mask@@9) (get1 Heap@@14 x@@15 n@@15 i@@17))
 :pattern ( (state Heap@@14 Mask@@9) (|get1#triggerStateless| x@@15 n@@15 i@@17) (|hide1#trigger_5758| Heap@@14 (hide1 x@@15 n@@15 i@@17)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9707) (Mask@@10 T@PolymorphicMapType_9728) (x@@16 T@ArrayDomainType) (n@@16 Int) (i@@18 Int) ) (!  (=> (and (state Heap@@15 Mask@@10) (< AssumeFunctionsAbove 1)) (=> (and (<= 0 i@@18) (< i@@18 n@@16)) (= (get0 Heap@@15 x@@16 n@@16 i@@18) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@15) (aloc_1 Heap@@15 x@@16 i@@18) vint_1))))
 :qid |stdinbpl.252:15|
 :skolemid |26|
 :pattern ( (state Heap@@15 Mask@@10) (get0 Heap@@15 x@@16 n@@16 i@@18))
 :pattern ( (state Heap@@15 Mask@@10) (|get0#triggerStateless| x@@16 n@@16 i@@18) (|hide0#trigger_5731| Heap@@15 (hide0 x@@16 n@@16 i@@18)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9707) (ExhaleHeap@@5 T@PolymorphicMapType_9707) (Mask@@11 T@PolymorphicMapType_9728) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@11) (=> (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@16) o_15 $allocated) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@5) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@11) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@5) o_15 $allocated))
)))
(assert (forall ((p T@Field_18011_18012) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18011_18011 p v_1 p w))
 :qid |stdinbpl.191:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18011_18011 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_13628_13629) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_13628_13628 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.191:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13628_13628 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_5627_13629) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_9767_9767 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.191:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9767_9767 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_5627_1324 vint_1)))
(assert  (not (IsWandField_5627_1324 vint_1)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9707) (ExhaleHeap@@6 T@PolymorphicMapType_9707) (Mask@@12 T@PolymorphicMapType_9728) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@12) (succHeap Heap@@17 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9728) (o_2@@14 T@Ref) (f_4@@14 T@Field_19890_19895) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| Mask@@13) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5758_47859 f_4@@14))) (not (IsWandField_5758_47875 f_4@@14))) (<= (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| Mask@@13) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| Mask@@13) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9728) (o_2@@15 T@Ref) (f_4@@15 T@Field_18011_9781) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| Mask@@14) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5758_9781 f_4@@15))) (not (IsWandField_5758_9781 f_4@@15))) (<= (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| Mask@@14) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| Mask@@14) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9728) (o_2@@16 T@Ref) (f_4@@16 T@Field_18011_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| Mask@@15) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5758_53 f_4@@16))) (not (IsWandField_5758_53 f_4@@16))) (<= (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| Mask@@15) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| Mask@@15) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9728) (o_2@@17 T@Ref) (f_4@@17 T@Field_18011_1324) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| Mask@@16) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5758_1324 f_4@@17))) (not (IsWandField_5758_1324 f_4@@17))) (<= (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| Mask@@16) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| Mask@@16) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9728) (o_2@@18 T@Ref) (f_4@@18 T@Field_18011_18012) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| Mask@@17) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5758_5759 f_4@@18))) (not (IsWandField_18011_37541 f_4@@18))) (<= (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| Mask@@17) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| Mask@@17) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9728) (o_2@@19 T@Ref) (f_4@@19 T@Field_5627_15540) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5627_47028 f_4@@19))) (not (IsWandField_5627_47044 f_4@@19))) (<= (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9728) (o_2@@20 T@Ref) (f_4@@20 T@Field_9780_9781) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5627_9781 f_4@@20))) (not (IsWandField_5627_9781 f_4@@20))) (<= (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9728) (o_2@@21 T@Ref) (f_4@@21 T@Field_9767_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5627_53 f_4@@21))) (not (IsWandField_5627_53 f_4@@21))) (<= (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9728) (o_2@@22 T@Ref) (f_4@@22 T@Field_13205_1324) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5627_1324 f_4@@22))) (not (IsWandField_5627_1324 f_4@@22))) (<= (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9728) (o_2@@23 T@Ref) (f_4@@23 T@Field_5627_13629) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5627_31845 f_4@@23))) (not (IsWandField_5627_36827 f_4@@23))) (<= (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9728) (o_2@@24 T@Ref) (f_4@@24 T@Field_15535_15540) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_5731_46211 f_4@@24))) (not (IsWandField_5731_46227 f_4@@24))) (<= (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9728) (o_2@@25 T@Ref) (f_4@@25 T@Field_13628_9781) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_5731_9781 f_4@@25))) (not (IsWandField_5731_9781 f_4@@25))) (<= (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9728) (o_2@@26 T@Ref) (f_4@@26 T@Field_13628_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_5731_53 f_4@@26))) (not (IsWandField_5731_53 f_4@@26))) (<= (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9728) (o_2@@27 T@Ref) (f_4@@27 T@Field_13628_1324) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_5731_1324 f_4@@27))) (not (IsWandField_5731_1324 f_4@@27))) (<= (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9728) (o_2@@28 T@Ref) (f_4@@28 T@Field_13628_13629) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_5731_5732 f_4@@28))) (not (IsWandField_13628_37184 f_4@@28))) (<= (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9728) (o_2@@29 T@Ref) (f_4@@29 T@Field_19890_19895) ) (! (= (HasDirectPerm_18011_31600 Mask@@28 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| Mask@@28) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18011_31600 Mask@@28 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9728) (o_2@@30 T@Ref) (f_4@@30 T@Field_18011_18012) ) (! (= (HasDirectPerm_18011_13629 Mask@@29 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| Mask@@29) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18011_13629 Mask@@29 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_9728) (o_2@@31 T@Ref) (f_4@@31 T@Field_18011_9781) ) (! (= (HasDirectPerm_18011_9781 Mask@@30 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| Mask@@30) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18011_9781 Mask@@30 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_9728) (o_2@@32 T@Ref) (f_4@@32 T@Field_18011_53) ) (! (= (HasDirectPerm_18011_53 Mask@@31 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| Mask@@31) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18011_53 Mask@@31 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_9728) (o_2@@33 T@Ref) (f_4@@33 T@Field_18011_1324) ) (! (= (HasDirectPerm_18011_1324 Mask@@32 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| Mask@@32) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18011_1324 Mask@@32 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_9728) (o_2@@34 T@Ref) (f_4@@34 T@Field_15535_15540) ) (! (= (HasDirectPerm_13628_30482 Mask@@33 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| Mask@@33) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13628_30482 Mask@@33 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_9728) (o_2@@35 T@Ref) (f_4@@35 T@Field_13628_13629) ) (! (= (HasDirectPerm_13628_13629 Mask@@34 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| Mask@@34) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13628_13629 Mask@@34 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_9728) (o_2@@36 T@Ref) (f_4@@36 T@Field_13628_9781) ) (! (= (HasDirectPerm_13628_9781 Mask@@35 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| Mask@@35) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13628_9781 Mask@@35 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_9728) (o_2@@37 T@Ref) (f_4@@37 T@Field_13628_53) ) (! (= (HasDirectPerm_13628_53 Mask@@36 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| Mask@@36) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13628_53 Mask@@36 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_9728) (o_2@@38 T@Ref) (f_4@@38 T@Field_13628_1324) ) (! (= (HasDirectPerm_13628_1324 Mask@@37 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| Mask@@37) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13628_1324 Mask@@37 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_9728) (o_2@@39 T@Ref) (f_4@@39 T@Field_5627_15540) ) (! (= (HasDirectPerm_5627_29321 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5627_29321 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_9728) (o_2@@40 T@Ref) (f_4@@40 T@Field_5627_13629) ) (! (= (HasDirectPerm_5627_13629 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5627_13629 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_9728) (o_2@@41 T@Ref) (f_4@@41 T@Field_9780_9781) ) (! (= (HasDirectPerm_5627_9781 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5627_9781 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_9728) (o_2@@42 T@Ref) (f_4@@42 T@Field_9767_53) ) (! (= (HasDirectPerm_5627_53 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5627_53 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_9728) (o_2@@43 T@Ref) (f_4@@43 T@Field_13205_1324) ) (! (= (HasDirectPerm_5627_1324 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5627_1324 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.179:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9707) (ExhaleHeap@@7 T@PolymorphicMapType_9707) (Mask@@43 T@PolymorphicMapType_9728) (o_15@@0 T@Ref) (f_23 T@Field_19890_19895) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@43) (=> (HasDirectPerm_18011_31600 Mask@@43 o_15@@0 f_23) (= (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@18) o_15@@0 f_23) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@7) o_15@@0 f_23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@43) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@7) o_15@@0 f_23))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9707) (ExhaleHeap@@8 T@PolymorphicMapType_9707) (Mask@@44 T@PolymorphicMapType_9728) (o_15@@1 T@Ref) (f_23@@0 T@Field_18011_18012) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@44) (=> (HasDirectPerm_18011_13629 Mask@@44 o_15@@1 f_23@@0) (= (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@19) o_15@@1 f_23@@0) (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@8) o_15@@1 f_23@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@44) (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@8) o_15@@1 f_23@@0))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9707) (ExhaleHeap@@9 T@PolymorphicMapType_9707) (Mask@@45 T@PolymorphicMapType_9728) (o_15@@2 T@Ref) (f_23@@1 T@Field_18011_9781) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@45) (=> (HasDirectPerm_18011_9781 Mask@@45 o_15@@2 f_23@@1) (= (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@20) o_15@@2 f_23@@1) (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@9) o_15@@2 f_23@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@45) (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@9) o_15@@2 f_23@@1))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9707) (ExhaleHeap@@10 T@PolymorphicMapType_9707) (Mask@@46 T@PolymorphicMapType_9728) (o_15@@3 T@Ref) (f_23@@2 T@Field_18011_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@10 Mask@@46) (=> (HasDirectPerm_18011_53 Mask@@46 o_15@@3 f_23@@2) (= (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@21) o_15@@3 f_23@@2) (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@10) o_15@@3 f_23@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@10 Mask@@46) (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@10) o_15@@3 f_23@@2))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9707) (ExhaleHeap@@11 T@PolymorphicMapType_9707) (Mask@@47 T@PolymorphicMapType_9728) (o_15@@4 T@Ref) (f_23@@3 T@Field_18011_1324) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@11 Mask@@47) (=> (HasDirectPerm_18011_1324 Mask@@47 o_15@@4 f_23@@3) (= (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@22) o_15@@4 f_23@@3) (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@11) o_15@@4 f_23@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@11 Mask@@47) (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@11) o_15@@4 f_23@@3))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9707) (ExhaleHeap@@12 T@PolymorphicMapType_9707) (Mask@@48 T@PolymorphicMapType_9728) (o_15@@5 T@Ref) (f_23@@4 T@Field_15535_15540) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@12 Mask@@48) (=> (HasDirectPerm_13628_30482 Mask@@48 o_15@@5 f_23@@4) (= (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@23) o_15@@5 f_23@@4) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@12) o_15@@5 f_23@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@12 Mask@@48) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@12) o_15@@5 f_23@@4))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9707) (ExhaleHeap@@13 T@PolymorphicMapType_9707) (Mask@@49 T@PolymorphicMapType_9728) (o_15@@6 T@Ref) (f_23@@5 T@Field_13628_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@13 Mask@@49) (=> (HasDirectPerm_13628_13629 Mask@@49 o_15@@6 f_23@@5) (= (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@24) o_15@@6 f_23@@5) (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@13) o_15@@6 f_23@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@13 Mask@@49) (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@13) o_15@@6 f_23@@5))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9707) (ExhaleHeap@@14 T@PolymorphicMapType_9707) (Mask@@50 T@PolymorphicMapType_9728) (o_15@@7 T@Ref) (f_23@@6 T@Field_13628_9781) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@14 Mask@@50) (=> (HasDirectPerm_13628_9781 Mask@@50 o_15@@7 f_23@@6) (= (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@25) o_15@@7 f_23@@6) (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@14) o_15@@7 f_23@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@14 Mask@@50) (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@14) o_15@@7 f_23@@6))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9707) (ExhaleHeap@@15 T@PolymorphicMapType_9707) (Mask@@51 T@PolymorphicMapType_9728) (o_15@@8 T@Ref) (f_23@@7 T@Field_13628_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@15 Mask@@51) (=> (HasDirectPerm_13628_53 Mask@@51 o_15@@8 f_23@@7) (= (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@26) o_15@@8 f_23@@7) (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@15) o_15@@8 f_23@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@15 Mask@@51) (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@15) o_15@@8 f_23@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9707) (ExhaleHeap@@16 T@PolymorphicMapType_9707) (Mask@@52 T@PolymorphicMapType_9728) (o_15@@9 T@Ref) (f_23@@8 T@Field_13628_1324) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@16 Mask@@52) (=> (HasDirectPerm_13628_1324 Mask@@52 o_15@@9 f_23@@8) (= (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@27) o_15@@9 f_23@@8) (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@16) o_15@@9 f_23@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@16 Mask@@52) (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@16) o_15@@9 f_23@@8))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9707) (ExhaleHeap@@17 T@PolymorphicMapType_9707) (Mask@@53 T@PolymorphicMapType_9728) (o_15@@10 T@Ref) (f_23@@9 T@Field_5627_15540) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@17 Mask@@53) (=> (HasDirectPerm_5627_29321 Mask@@53 o_15@@10 f_23@@9) (= (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@28) o_15@@10 f_23@@9) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@17) o_15@@10 f_23@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@17 Mask@@53) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@17) o_15@@10 f_23@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9707) (ExhaleHeap@@18 T@PolymorphicMapType_9707) (Mask@@54 T@PolymorphicMapType_9728) (o_15@@11 T@Ref) (f_23@@10 T@Field_5627_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@18 Mask@@54) (=> (HasDirectPerm_5627_13629 Mask@@54 o_15@@11 f_23@@10) (= (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@29) o_15@@11 f_23@@10) (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@18) o_15@@11 f_23@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@18 Mask@@54) (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@18) o_15@@11 f_23@@10))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9707) (ExhaleHeap@@19 T@PolymorphicMapType_9707) (Mask@@55 T@PolymorphicMapType_9728) (o_15@@12 T@Ref) (f_23@@11 T@Field_9780_9781) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@19 Mask@@55) (=> (HasDirectPerm_5627_9781 Mask@@55 o_15@@12 f_23@@11) (= (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@30) o_15@@12 f_23@@11) (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@19) o_15@@12 f_23@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@19 Mask@@55) (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@19) o_15@@12 f_23@@11))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9707) (ExhaleHeap@@20 T@PolymorphicMapType_9707) (Mask@@56 T@PolymorphicMapType_9728) (o_15@@13 T@Ref) (f_23@@12 T@Field_9767_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@20 Mask@@56) (=> (HasDirectPerm_5627_53 Mask@@56 o_15@@13 f_23@@12) (= (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@31) o_15@@13 f_23@@12) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@20) o_15@@13 f_23@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@20 Mask@@56) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@20) o_15@@13 f_23@@12))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9707) (ExhaleHeap@@21 T@PolymorphicMapType_9707) (Mask@@57 T@PolymorphicMapType_9728) (o_15@@14 T@Ref) (f_23@@13 T@Field_13205_1324) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@21 Mask@@57) (=> (HasDirectPerm_5627_1324 Mask@@57 o_15@@14 f_23@@13) (= (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@32) o_15@@14 f_23@@13) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@21) o_15@@14 f_23@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@21 Mask@@57) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@21) o_15@@14 f_23@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_19890_19895) ) (! (= (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_18011_9781) ) (! (= (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_18011_53) ) (! (= (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_18011_1324) ) (! (= (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_18011_18012) ) (! (= (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_5627_15540) ) (! (= (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_9780_9781) ) (! (= (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_9767_53) ) (! (= (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_13205_1324) ) (! (= (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_5627_13629) ) (! (= (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_15535_15540) ) (! (= (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_13628_9781) ) (! (= (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_13628_53) ) (! (= (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_13628_1324) ) (! (= (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_13628_13629) ) (! (= (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9707) (a_2@@1 T@ArrayDomainType) (i@@19 Int) ) (!  (and (= (aloc_1 Heap@@33 a_2@@1 i@@19) (|aloc'| Heap@@33 a_2@@1 i@@19)) (dummyFunction_5721 (|aloc#triggerStateless| a_2@@1 i@@19)))
 :qid |stdinbpl.574:15|
 :skolemid |34|
 :pattern ( (aloc_1 Heap@@33 a_2@@1 i@@19))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9728) (SummandMask1 T@PolymorphicMapType_9728) (SummandMask2 T@PolymorphicMapType_9728) (o_2@@59 T@Ref) (f_4@@59 T@Field_19890_19895) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9728_5758_44404#PolymorphicMapType_9728| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9728) (SummandMask1@@0 T@PolymorphicMapType_9728) (SummandMask2@@0 T@PolymorphicMapType_9728) (o_2@@60 T@Ref) (f_4@@60 T@Field_18011_9781) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9728_5758_9781#PolymorphicMapType_9728| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9728) (SummandMask1@@1 T@PolymorphicMapType_9728) (SummandMask2@@1 T@PolymorphicMapType_9728) (o_2@@61 T@Ref) (f_4@@61 T@Field_18011_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9728_5758_53#PolymorphicMapType_9728| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9728) (SummandMask1@@2 T@PolymorphicMapType_9728) (SummandMask2@@2 T@PolymorphicMapType_9728) (o_2@@62 T@Ref) (f_4@@62 T@Field_18011_1324) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9728_5758_1324#PolymorphicMapType_9728| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9728) (SummandMask1@@3 T@PolymorphicMapType_9728) (SummandMask2@@3 T@PolymorphicMapType_9728) (o_2@@63 T@Ref) (f_4@@63 T@Field_18011_18012) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9728_5758_5759#PolymorphicMapType_9728| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9728) (SummandMask1@@4 T@PolymorphicMapType_9728) (SummandMask2@@4 T@PolymorphicMapType_9728) (o_2@@64 T@Ref) (f_4@@64 T@Field_5627_15540) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9728_5627_43993#PolymorphicMapType_9728| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9728) (SummandMask1@@5 T@PolymorphicMapType_9728) (SummandMask2@@5 T@PolymorphicMapType_9728) (o_2@@65 T@Ref) (f_4@@65 T@Field_9780_9781) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9728_5627_9781#PolymorphicMapType_9728| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9728) (SummandMask1@@6 T@PolymorphicMapType_9728) (SummandMask2@@6 T@PolymorphicMapType_9728) (o_2@@66 T@Ref) (f_4@@66 T@Field_9767_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9728_5627_53#PolymorphicMapType_9728| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9728) (SummandMask1@@7 T@PolymorphicMapType_9728) (SummandMask2@@7 T@PolymorphicMapType_9728) (o_2@@67 T@Ref) (f_4@@67 T@Field_13205_1324) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9728_5627_1324#PolymorphicMapType_9728| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9728) (SummandMask1@@8 T@PolymorphicMapType_9728) (SummandMask2@@8 T@PolymorphicMapType_9728) (o_2@@68 T@Ref) (f_4@@68 T@Field_5627_13629) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9728_5627_5732#PolymorphicMapType_9728| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_9728) (SummandMask1@@9 T@PolymorphicMapType_9728) (SummandMask2@@9 T@PolymorphicMapType_9728) (o_2@@69 T@Ref) (f_4@@69 T@Field_15535_15540) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9728_5731_43579#PolymorphicMapType_9728| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_9728) (SummandMask1@@10 T@PolymorphicMapType_9728) (SummandMask2@@10 T@PolymorphicMapType_9728) (o_2@@70 T@Ref) (f_4@@70 T@Field_13628_9781) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9728_5731_9781#PolymorphicMapType_9728| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_9728) (SummandMask1@@11 T@PolymorphicMapType_9728) (SummandMask2@@11 T@PolymorphicMapType_9728) (o_2@@71 T@Ref) (f_4@@71 T@Field_13628_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9728_5731_53#PolymorphicMapType_9728| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_9728) (SummandMask1@@12 T@PolymorphicMapType_9728) (SummandMask2@@12 T@PolymorphicMapType_9728) (o_2@@72 T@Ref) (f_4@@72 T@Field_13628_1324) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9728_5731_1324#PolymorphicMapType_9728| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_9728) (SummandMask1@@13 T@PolymorphicMapType_9728) (SummandMask2@@13 T@PolymorphicMapType_9728) (o_2@@73 T@Ref) (f_4@@73 T@Field_13628_13629) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9728_5731_5732#PolymorphicMapType_9728| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_9707) (ExhaleHeap@@22 T@PolymorphicMapType_9707) (Mask@@58 T@PolymorphicMapType_9728) (pm_f_5@@5 T@Field_18011_18012) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@22 Mask@@58) (=> (and (HasDirectPerm_18011_13629 Mask@@58 null pm_f_5@@5) (IsPredicateField_5758_5759 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_23@@14 T@Field_13205_1324) ) (!  (=> (select (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5 f_23@@14) (= (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@34) o2_5 f_23@@14) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5 f_23@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5 f_23@@14))
)) (forall ((o2_5@@0 T@Ref) (f_23@@15 T@Field_9767_53) ) (!  (=> (select (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@0 f_23@@15) (= (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@34) o2_5@@0 f_23@@15) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@0 f_23@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@0 f_23@@15))
))) (forall ((o2_5@@1 T@Ref) (f_23@@16 T@Field_9780_9781) ) (!  (=> (select (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@1 f_23@@16) (= (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@34) o2_5@@1 f_23@@16) (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@1 f_23@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@1 f_23@@16))
))) (forall ((o2_5@@2 T@Ref) (f_23@@17 T@Field_5627_13629) ) (!  (=> (select (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@2 f_23@@17) (= (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@34) o2_5@@2 f_23@@17) (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@2 f_23@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@2 f_23@@17))
))) (forall ((o2_5@@3 T@Ref) (f_23@@18 T@Field_5627_15540) ) (!  (=> (select (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@3 f_23@@18) (= (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@34) o2_5@@3 f_23@@18) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@3 f_23@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@3 f_23@@18))
))) (forall ((o2_5@@4 T@Ref) (f_23@@19 T@Field_13628_1324) ) (!  (=> (select (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@4 f_23@@19) (= (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@34) o2_5@@4 f_23@@19) (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@4 f_23@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@4 f_23@@19))
))) (forall ((o2_5@@5 T@Ref) (f_23@@20 T@Field_13628_53) ) (!  (=> (select (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@5 f_23@@20) (= (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@34) o2_5@@5 f_23@@20) (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@5 f_23@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@5 f_23@@20))
))) (forall ((o2_5@@6 T@Ref) (f_23@@21 T@Field_13628_9781) ) (!  (=> (select (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@6 f_23@@21) (= (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@34) o2_5@@6 f_23@@21) (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@6 f_23@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@6 f_23@@21))
))) (forall ((o2_5@@7 T@Ref) (f_23@@22 T@Field_13628_13629) ) (!  (=> (select (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@7 f_23@@22) (= (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@34) o2_5@@7 f_23@@22) (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@7 f_23@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@7 f_23@@22))
))) (forall ((o2_5@@8 T@Ref) (f_23@@23 T@Field_15535_15540) ) (!  (=> (select (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@8 f_23@@23) (= (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@34) o2_5@@8 f_23@@23) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@8 f_23@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@8 f_23@@23))
))) (forall ((o2_5@@9 T@Ref) (f_23@@24 T@Field_18011_1324) ) (!  (=> (select (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@9 f_23@@24) (= (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@34) o2_5@@9 f_23@@24) (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@9 f_23@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@9 f_23@@24))
))) (forall ((o2_5@@10 T@Ref) (f_23@@25 T@Field_18011_53) ) (!  (=> (select (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@10 f_23@@25) (= (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@34) o2_5@@10 f_23@@25) (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@10 f_23@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@10 f_23@@25))
))) (forall ((o2_5@@11 T@Ref) (f_23@@26 T@Field_18011_9781) ) (!  (=> (select (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@11 f_23@@26) (= (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@34) o2_5@@11 f_23@@26) (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@11 f_23@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@11 f_23@@26))
))) (forall ((o2_5@@12 T@Ref) (f_23@@27 T@Field_18011_18012) ) (!  (=> (select (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@12 f_23@@27) (= (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@34) o2_5@@12 f_23@@27) (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@12 f_23@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@12 f_23@@27))
))) (forall ((o2_5@@13 T@Ref) (f_23@@28 T@Field_19890_19895) ) (!  (=> (select (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) null (PredicateMaskField_5758 pm_f_5@@5))) o2_5@@13 f_23@@28) (= (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@34) o2_5@@13 f_23@@28) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@13 f_23@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@22) o2_5@@13 f_23@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@22 Mask@@58) (IsPredicateField_5758_5759 pm_f_5@@5))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_9707) (ExhaleHeap@@23 T@PolymorphicMapType_9707) (Mask@@59 T@PolymorphicMapType_9728) (pm_f_5@@6 T@Field_13628_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@23 Mask@@59) (=> (and (HasDirectPerm_13628_13629 Mask@@59 null pm_f_5@@6) (IsPredicateField_5731_5732 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@14 T@Ref) (f_23@@29 T@Field_13205_1324) ) (!  (=> (select (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@14 f_23@@29) (= (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@35) o2_5@@14 f_23@@29) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@14 f_23@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@14 f_23@@29))
)) (forall ((o2_5@@15 T@Ref) (f_23@@30 T@Field_9767_53) ) (!  (=> (select (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@15 f_23@@30) (= (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@35) o2_5@@15 f_23@@30) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@15 f_23@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@15 f_23@@30))
))) (forall ((o2_5@@16 T@Ref) (f_23@@31 T@Field_9780_9781) ) (!  (=> (select (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@16 f_23@@31) (= (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@35) o2_5@@16 f_23@@31) (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@16 f_23@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@16 f_23@@31))
))) (forall ((o2_5@@17 T@Ref) (f_23@@32 T@Field_5627_13629) ) (!  (=> (select (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@17 f_23@@32) (= (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@35) o2_5@@17 f_23@@32) (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@17 f_23@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@17 f_23@@32))
))) (forall ((o2_5@@18 T@Ref) (f_23@@33 T@Field_5627_15540) ) (!  (=> (select (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@18 f_23@@33) (= (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@35) o2_5@@18 f_23@@33) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@18 f_23@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@18 f_23@@33))
))) (forall ((o2_5@@19 T@Ref) (f_23@@34 T@Field_13628_1324) ) (!  (=> (select (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@19 f_23@@34) (= (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@35) o2_5@@19 f_23@@34) (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@19 f_23@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@19 f_23@@34))
))) (forall ((o2_5@@20 T@Ref) (f_23@@35 T@Field_13628_53) ) (!  (=> (select (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@20 f_23@@35) (= (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@35) o2_5@@20 f_23@@35) (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@20 f_23@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@20 f_23@@35))
))) (forall ((o2_5@@21 T@Ref) (f_23@@36 T@Field_13628_9781) ) (!  (=> (select (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@21 f_23@@36) (= (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@35) o2_5@@21 f_23@@36) (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@21 f_23@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@21 f_23@@36))
))) (forall ((o2_5@@22 T@Ref) (f_23@@37 T@Field_13628_13629) ) (!  (=> (select (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@22 f_23@@37) (= (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@35) o2_5@@22 f_23@@37) (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@22 f_23@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@22 f_23@@37))
))) (forall ((o2_5@@23 T@Ref) (f_23@@38 T@Field_15535_15540) ) (!  (=> (select (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@23 f_23@@38) (= (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) o2_5@@23 f_23@@38) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@23 f_23@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@23 f_23@@38))
))) (forall ((o2_5@@24 T@Ref) (f_23@@39 T@Field_18011_1324) ) (!  (=> (select (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@24 f_23@@39) (= (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@35) o2_5@@24 f_23@@39) (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@24 f_23@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@24 f_23@@39))
))) (forall ((o2_5@@25 T@Ref) (f_23@@40 T@Field_18011_53) ) (!  (=> (select (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@25 f_23@@40) (= (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@35) o2_5@@25 f_23@@40) (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@25 f_23@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@25 f_23@@40))
))) (forall ((o2_5@@26 T@Ref) (f_23@@41 T@Field_18011_9781) ) (!  (=> (select (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@26 f_23@@41) (= (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@35) o2_5@@26 f_23@@41) (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@26 f_23@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@26 f_23@@41))
))) (forall ((o2_5@@27 T@Ref) (f_23@@42 T@Field_18011_18012) ) (!  (=> (select (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@27 f_23@@42) (= (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@35) o2_5@@27 f_23@@42) (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@27 f_23@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@27 f_23@@42))
))) (forall ((o2_5@@28 T@Ref) (f_23@@43 T@Field_19890_19895) ) (!  (=> (select (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@35) null (PredicateMaskField_5731 pm_f_5@@6))) o2_5@@28 f_23@@43) (= (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@35) o2_5@@28 f_23@@43) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@28 f_23@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@23) o2_5@@28 f_23@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@23 Mask@@59) (IsPredicateField_5731_5732 pm_f_5@@6))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_9707) (ExhaleHeap@@24 T@PolymorphicMapType_9707) (Mask@@60 T@PolymorphicMapType_9728) (pm_f_5@@7 T@Field_5627_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@24 Mask@@60) (=> (and (HasDirectPerm_5627_13629 Mask@@60 null pm_f_5@@7) (IsPredicateField_5627_31845 pm_f_5@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_23@@44 T@Field_13205_1324) ) (!  (=> (select (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@29 f_23@@44) (= (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@36) o2_5@@29 f_23@@44) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@29 f_23@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@29 f_23@@44))
)) (forall ((o2_5@@30 T@Ref) (f_23@@45 T@Field_9767_53) ) (!  (=> (select (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@30 f_23@@45) (= (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@36) o2_5@@30 f_23@@45) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@30 f_23@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@30 f_23@@45))
))) (forall ((o2_5@@31 T@Ref) (f_23@@46 T@Field_9780_9781) ) (!  (=> (select (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@31 f_23@@46) (= (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@36) o2_5@@31 f_23@@46) (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@31 f_23@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@31 f_23@@46))
))) (forall ((o2_5@@32 T@Ref) (f_23@@47 T@Field_5627_13629) ) (!  (=> (select (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@32 f_23@@47) (= (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@36) o2_5@@32 f_23@@47) (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@32 f_23@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@32 f_23@@47))
))) (forall ((o2_5@@33 T@Ref) (f_23@@48 T@Field_5627_15540) ) (!  (=> (select (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@33 f_23@@48) (= (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) o2_5@@33 f_23@@48) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@33 f_23@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@33 f_23@@48))
))) (forall ((o2_5@@34 T@Ref) (f_23@@49 T@Field_13628_1324) ) (!  (=> (select (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@34 f_23@@49) (= (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@36) o2_5@@34 f_23@@49) (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@34 f_23@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@34 f_23@@49))
))) (forall ((o2_5@@35 T@Ref) (f_23@@50 T@Field_13628_53) ) (!  (=> (select (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@35 f_23@@50) (= (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@36) o2_5@@35 f_23@@50) (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@35 f_23@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@35 f_23@@50))
))) (forall ((o2_5@@36 T@Ref) (f_23@@51 T@Field_13628_9781) ) (!  (=> (select (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@36 f_23@@51) (= (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@36) o2_5@@36 f_23@@51) (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@36 f_23@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@36 f_23@@51))
))) (forall ((o2_5@@37 T@Ref) (f_23@@52 T@Field_13628_13629) ) (!  (=> (select (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@37 f_23@@52) (= (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@36) o2_5@@37 f_23@@52) (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@37 f_23@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@37 f_23@@52))
))) (forall ((o2_5@@38 T@Ref) (f_23@@53 T@Field_15535_15540) ) (!  (=> (select (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@38 f_23@@53) (= (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@36) o2_5@@38 f_23@@53) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@38 f_23@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@38 f_23@@53))
))) (forall ((o2_5@@39 T@Ref) (f_23@@54 T@Field_18011_1324) ) (!  (=> (select (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@39 f_23@@54) (= (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@36) o2_5@@39 f_23@@54) (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@39 f_23@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@39 f_23@@54))
))) (forall ((o2_5@@40 T@Ref) (f_23@@55 T@Field_18011_53) ) (!  (=> (select (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@40 f_23@@55) (= (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@36) o2_5@@40 f_23@@55) (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@40 f_23@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@40 f_23@@55))
))) (forall ((o2_5@@41 T@Ref) (f_23@@56 T@Field_18011_9781) ) (!  (=> (select (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@41 f_23@@56) (= (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@36) o2_5@@41 f_23@@56) (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@41 f_23@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@41 f_23@@56))
))) (forall ((o2_5@@42 T@Ref) (f_23@@57 T@Field_18011_18012) ) (!  (=> (select (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@42 f_23@@57) (= (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@36) o2_5@@42 f_23@@57) (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@42 f_23@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@42 f_23@@57))
))) (forall ((o2_5@@43 T@Ref) (f_23@@58 T@Field_19890_19895) ) (!  (=> (select (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@36) null (PredicateMaskField_5627 pm_f_5@@7))) o2_5@@43 f_23@@58) (= (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@36) o2_5@@43 f_23@@58) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@43 f_23@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@24) o2_5@@43 f_23@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@24 Mask@@60) (IsPredicateField_5627_31845 pm_f_5@@7))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_9707) (ExhaleHeap@@25 T@PolymorphicMapType_9707) (Mask@@61 T@PolymorphicMapType_9728) (pm_f_5@@8 T@Field_18011_18012) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@25 Mask@@61) (=> (and (HasDirectPerm_18011_13629 Mask@@61 null pm_f_5@@8) (IsWandField_18011_37541 pm_f_5@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@44 T@Ref) (f_23@@59 T@Field_13205_1324) ) (!  (=> (select (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@44 f_23@@59) (= (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@37) o2_5@@44 f_23@@59) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@44 f_23@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@44 f_23@@59))
)) (forall ((o2_5@@45 T@Ref) (f_23@@60 T@Field_9767_53) ) (!  (=> (select (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@45 f_23@@60) (= (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@37) o2_5@@45 f_23@@60) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@45 f_23@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@45 f_23@@60))
))) (forall ((o2_5@@46 T@Ref) (f_23@@61 T@Field_9780_9781) ) (!  (=> (select (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@46 f_23@@61) (= (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@37) o2_5@@46 f_23@@61) (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@46 f_23@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@46 f_23@@61))
))) (forall ((o2_5@@47 T@Ref) (f_23@@62 T@Field_5627_13629) ) (!  (=> (select (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@47 f_23@@62) (= (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@37) o2_5@@47 f_23@@62) (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@47 f_23@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@47 f_23@@62))
))) (forall ((o2_5@@48 T@Ref) (f_23@@63 T@Field_5627_15540) ) (!  (=> (select (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@48 f_23@@63) (= (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@37) o2_5@@48 f_23@@63) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@48 f_23@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@48 f_23@@63))
))) (forall ((o2_5@@49 T@Ref) (f_23@@64 T@Field_13628_1324) ) (!  (=> (select (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@49 f_23@@64) (= (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@37) o2_5@@49 f_23@@64) (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@49 f_23@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@49 f_23@@64))
))) (forall ((o2_5@@50 T@Ref) (f_23@@65 T@Field_13628_53) ) (!  (=> (select (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@50 f_23@@65) (= (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@37) o2_5@@50 f_23@@65) (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@50 f_23@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@50 f_23@@65))
))) (forall ((o2_5@@51 T@Ref) (f_23@@66 T@Field_13628_9781) ) (!  (=> (select (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@51 f_23@@66) (= (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@37) o2_5@@51 f_23@@66) (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@51 f_23@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@51 f_23@@66))
))) (forall ((o2_5@@52 T@Ref) (f_23@@67 T@Field_13628_13629) ) (!  (=> (select (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@52 f_23@@67) (= (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@37) o2_5@@52 f_23@@67) (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@52 f_23@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@52 f_23@@67))
))) (forall ((o2_5@@53 T@Ref) (f_23@@68 T@Field_15535_15540) ) (!  (=> (select (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@53 f_23@@68) (= (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@37) o2_5@@53 f_23@@68) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@53 f_23@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@53 f_23@@68))
))) (forall ((o2_5@@54 T@Ref) (f_23@@69 T@Field_18011_1324) ) (!  (=> (select (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@54 f_23@@69) (= (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@37) o2_5@@54 f_23@@69) (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@54 f_23@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@54 f_23@@69))
))) (forall ((o2_5@@55 T@Ref) (f_23@@70 T@Field_18011_53) ) (!  (=> (select (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@55 f_23@@70) (= (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@37) o2_5@@55 f_23@@70) (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@55 f_23@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@55 f_23@@70))
))) (forall ((o2_5@@56 T@Ref) (f_23@@71 T@Field_18011_9781) ) (!  (=> (select (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@56 f_23@@71) (= (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@37) o2_5@@56 f_23@@71) (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@56 f_23@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@56 f_23@@71))
))) (forall ((o2_5@@57 T@Ref) (f_23@@72 T@Field_18011_18012) ) (!  (=> (select (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@57 f_23@@72) (= (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@37) o2_5@@57 f_23@@72) (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@57 f_23@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@57 f_23@@72))
))) (forall ((o2_5@@58 T@Ref) (f_23@@73 T@Field_19890_19895) ) (!  (=> (select (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) null (WandMaskField_18011 pm_f_5@@8))) o2_5@@58 f_23@@73) (= (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@37) o2_5@@58 f_23@@73) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@58 f_23@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@25) o2_5@@58 f_23@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@25 Mask@@61) (IsWandField_18011_37541 pm_f_5@@8))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_9707) (ExhaleHeap@@26 T@PolymorphicMapType_9707) (Mask@@62 T@PolymorphicMapType_9728) (pm_f_5@@9 T@Field_13628_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@26 Mask@@62) (=> (and (HasDirectPerm_13628_13629 Mask@@62 null pm_f_5@@9) (IsWandField_13628_37184 pm_f_5@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@59 T@Ref) (f_23@@74 T@Field_13205_1324) ) (!  (=> (select (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@59 f_23@@74) (= (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@38) o2_5@@59 f_23@@74) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@59 f_23@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@59 f_23@@74))
)) (forall ((o2_5@@60 T@Ref) (f_23@@75 T@Field_9767_53) ) (!  (=> (select (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@60 f_23@@75) (= (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@38) o2_5@@60 f_23@@75) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@60 f_23@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@60 f_23@@75))
))) (forall ((o2_5@@61 T@Ref) (f_23@@76 T@Field_9780_9781) ) (!  (=> (select (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@61 f_23@@76) (= (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@38) o2_5@@61 f_23@@76) (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@61 f_23@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@61 f_23@@76))
))) (forall ((o2_5@@62 T@Ref) (f_23@@77 T@Field_5627_13629) ) (!  (=> (select (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@62 f_23@@77) (= (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@38) o2_5@@62 f_23@@77) (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@62 f_23@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@62 f_23@@77))
))) (forall ((o2_5@@63 T@Ref) (f_23@@78 T@Field_5627_15540) ) (!  (=> (select (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@63 f_23@@78) (= (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@38) o2_5@@63 f_23@@78) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@63 f_23@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@63 f_23@@78))
))) (forall ((o2_5@@64 T@Ref) (f_23@@79 T@Field_13628_1324) ) (!  (=> (select (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@64 f_23@@79) (= (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@38) o2_5@@64 f_23@@79) (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@64 f_23@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@64 f_23@@79))
))) (forall ((o2_5@@65 T@Ref) (f_23@@80 T@Field_13628_53) ) (!  (=> (select (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@65 f_23@@80) (= (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@38) o2_5@@65 f_23@@80) (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@65 f_23@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@65 f_23@@80))
))) (forall ((o2_5@@66 T@Ref) (f_23@@81 T@Field_13628_9781) ) (!  (=> (select (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@66 f_23@@81) (= (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@38) o2_5@@66 f_23@@81) (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@66 f_23@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@66 f_23@@81))
))) (forall ((o2_5@@67 T@Ref) (f_23@@82 T@Field_13628_13629) ) (!  (=> (select (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@67 f_23@@82) (= (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@38) o2_5@@67 f_23@@82) (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@67 f_23@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@67 f_23@@82))
))) (forall ((o2_5@@68 T@Ref) (f_23@@83 T@Field_15535_15540) ) (!  (=> (select (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@68 f_23@@83) (= (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) o2_5@@68 f_23@@83) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@68 f_23@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@68 f_23@@83))
))) (forall ((o2_5@@69 T@Ref) (f_23@@84 T@Field_18011_1324) ) (!  (=> (select (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@69 f_23@@84) (= (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@38) o2_5@@69 f_23@@84) (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@69 f_23@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@69 f_23@@84))
))) (forall ((o2_5@@70 T@Ref) (f_23@@85 T@Field_18011_53) ) (!  (=> (select (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@70 f_23@@85) (= (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@38) o2_5@@70 f_23@@85) (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@70 f_23@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@70 f_23@@85))
))) (forall ((o2_5@@71 T@Ref) (f_23@@86 T@Field_18011_9781) ) (!  (=> (select (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@71 f_23@@86) (= (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@38) o2_5@@71 f_23@@86) (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@71 f_23@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@71 f_23@@86))
))) (forall ((o2_5@@72 T@Ref) (f_23@@87 T@Field_18011_18012) ) (!  (=> (select (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@72 f_23@@87) (= (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@38) o2_5@@72 f_23@@87) (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@72 f_23@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@72 f_23@@87))
))) (forall ((o2_5@@73 T@Ref) (f_23@@88 T@Field_19890_19895) ) (!  (=> (select (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@38) null (WandMaskField_13628 pm_f_5@@9))) o2_5@@73 f_23@@88) (= (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@38) o2_5@@73 f_23@@88) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@73 f_23@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@26) o2_5@@73 f_23@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@26 Mask@@62) (IsWandField_13628_37184 pm_f_5@@9))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_9707) (ExhaleHeap@@27 T@PolymorphicMapType_9707) (Mask@@63 T@PolymorphicMapType_9728) (pm_f_5@@10 T@Field_5627_13629) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@27 Mask@@63) (=> (and (HasDirectPerm_5627_13629 Mask@@63 null pm_f_5@@10) (IsWandField_5627_36827 pm_f_5@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@74 T@Ref) (f_23@@89 T@Field_13205_1324) ) (!  (=> (select (|PolymorphicMapType_10256_5627_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@74 f_23@@89) (= (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@39) o2_5@@74 f_23@@89) (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@74 f_23@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@74 f_23@@89))
)) (forall ((o2_5@@75 T@Ref) (f_23@@90 T@Field_9767_53) ) (!  (=> (select (|PolymorphicMapType_10256_5627_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@75 f_23@@90) (= (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@39) o2_5@@75 f_23@@90) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@75 f_23@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@75 f_23@@90))
))) (forall ((o2_5@@76 T@Ref) (f_23@@91 T@Field_9780_9781) ) (!  (=> (select (|PolymorphicMapType_10256_5627_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@76 f_23@@91) (= (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@39) o2_5@@76 f_23@@91) (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@76 f_23@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@76 f_23@@91))
))) (forall ((o2_5@@77 T@Ref) (f_23@@92 T@Field_5627_13629) ) (!  (=> (select (|PolymorphicMapType_10256_5627_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@77 f_23@@92) (= (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@39) o2_5@@77 f_23@@92) (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@77 f_23@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@77 f_23@@92))
))) (forall ((o2_5@@78 T@Ref) (f_23@@93 T@Field_5627_15540) ) (!  (=> (select (|PolymorphicMapType_10256_5627_33642#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@78 f_23@@93) (= (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) o2_5@@78 f_23@@93) (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@78 f_23@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@78 f_23@@93))
))) (forall ((o2_5@@79 T@Ref) (f_23@@94 T@Field_13628_1324) ) (!  (=> (select (|PolymorphicMapType_10256_13628_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@79 f_23@@94) (= (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@39) o2_5@@79 f_23@@94) (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@79 f_23@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@79 f_23@@94))
))) (forall ((o2_5@@80 T@Ref) (f_23@@95 T@Field_13628_53) ) (!  (=> (select (|PolymorphicMapType_10256_13628_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@80 f_23@@95) (= (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@39) o2_5@@80 f_23@@95) (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@80 f_23@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@80 f_23@@95))
))) (forall ((o2_5@@81 T@Ref) (f_23@@96 T@Field_13628_9781) ) (!  (=> (select (|PolymorphicMapType_10256_13628_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@81 f_23@@96) (= (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@39) o2_5@@81 f_23@@96) (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@81 f_23@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@81 f_23@@96))
))) (forall ((o2_5@@82 T@Ref) (f_23@@97 T@Field_13628_13629) ) (!  (=> (select (|PolymorphicMapType_10256_13628_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@82 f_23@@97) (= (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@39) o2_5@@82 f_23@@97) (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@82 f_23@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@82 f_23@@97))
))) (forall ((o2_5@@83 T@Ref) (f_23@@98 T@Field_15535_15540) ) (!  (=> (select (|PolymorphicMapType_10256_13628_34690#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@83 f_23@@98) (= (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@39) o2_5@@83 f_23@@98) (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@83 f_23@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@83 f_23@@98))
))) (forall ((o2_5@@84 T@Ref) (f_23@@99 T@Field_18011_1324) ) (!  (=> (select (|PolymorphicMapType_10256_18011_1324#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@84 f_23@@99) (= (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@39) o2_5@@84 f_23@@99) (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@84 f_23@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@84 f_23@@99))
))) (forall ((o2_5@@85 T@Ref) (f_23@@100 T@Field_18011_53) ) (!  (=> (select (|PolymorphicMapType_10256_18011_53#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@85 f_23@@100) (= (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@39) o2_5@@85 f_23@@100) (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@85 f_23@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@85 f_23@@100))
))) (forall ((o2_5@@86 T@Ref) (f_23@@101 T@Field_18011_9781) ) (!  (=> (select (|PolymorphicMapType_10256_18011_9781#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@86 f_23@@101) (= (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@39) o2_5@@86 f_23@@101) (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@86 f_23@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@86 f_23@@101))
))) (forall ((o2_5@@87 T@Ref) (f_23@@102 T@Field_18011_18012) ) (!  (=> (select (|PolymorphicMapType_10256_18011_13629#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@87 f_23@@102) (= (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@39) o2_5@@87 f_23@@102) (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@87 f_23@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@87 f_23@@102))
))) (forall ((o2_5@@88 T@Ref) (f_23@@103 T@Field_19890_19895) ) (!  (=> (select (|PolymorphicMapType_10256_18011_35738#PolymorphicMapType_10256| (select (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@39) null (WandMaskField_5627 pm_f_5@@10))) o2_5@@88 f_23@@103) (= (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@39) o2_5@@88 f_23@@103) (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@88 f_23@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| ExhaleHeap@@27) o2_5@@88 f_23@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@27 Mask@@63) (IsWandField_5627_36827 pm_f_5@@10))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_9707) (x@@17 T@ArrayDomainType) (n@@17 Int) (i@@20 Int) ) (!  (and (= (get0 Heap@@40 x@@17 n@@17 i@@20) (|get0'| Heap@@40 x@@17 n@@17 i@@20)) (dummyFunction_1723 (|get0#triggerStateless| x@@17 n@@17 i@@20)))
 :qid |stdinbpl.242:15|
 :skolemid |24|
 :pattern ( (get0 Heap@@40 x@@17 n@@17 i@@20))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_9707) (x@@18 T@ArrayDomainType) (n@@18 Int) (i@@21 Int) ) (!  (and (= (get1 Heap@@41 x@@18 n@@18 i@@21) (|get1'| Heap@@41 x@@18 n@@18 i@@21)) (dummyFunction_1723 (|get1#triggerStateless| x@@18 n@@18 i@@21)))
 :qid |stdinbpl.406:15|
 :skolemid |29|
 :pattern ( (get1 Heap@@41 x@@18 n@@18 i@@21))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_9707) (Mask@@64 T@PolymorphicMapType_9728) (a_2@@2 T@ArrayDomainType) (i@@22 Int) ) (!  (=> (and (state Heap@@42 Mask@@64) (or (< AssumeFunctionsAbove 2) (|aloc#trigger| EmptyFrame a_2@@2 i@@22))) (=> (and (<= 0 i@@22) (< i@@22 (alen a_2@@2))) (= (loc_inv_1 (|aloc'| Heap@@42 a_2@@2 i@@22)) a_2@@2)))
 :qid |stdinbpl.597:15|
 :skolemid |38|
 :pattern ( (state Heap@@42 Mask@@64) (|aloc'| Heap@@42 a_2@@2 i@@22))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_9707) (Mask@@65 T@PolymorphicMapType_9728) (a_2@@3 T@ArrayDomainType) (i@@23 Int) ) (!  (=> (and (state Heap@@43 Mask@@65) (or (< AssumeFunctionsAbove 2) (|aloc#trigger| EmptyFrame a_2@@3 i@@23))) (=> (and (<= 0 i@@23) (< i@@23 (alen a_2@@3))) (= (loc_inv_2 (|aloc'| Heap@@43 a_2@@3 i@@23)) i@@23)))
 :qid |stdinbpl.601:15|
 :skolemid |39|
 :pattern ( (state Heap@@43 Mask@@65) (|aloc'| Heap@@43 a_2@@3 i@@23))
)))
(assert (forall ((a_2@@4 T@ArrayDomainType) ) (! (>= (alen a_2@@4) 0)
 :qid |stdinbpl.222:15|
 :skolemid |23|
 :pattern ( (alen a_2@@4))
)))
(assert (forall ((a_2@@5 T@ArrayDomainType) (i@@24 Int) ) (!  (and (= (loc_inv_1 (array_loc a_2@@5 i@@24)) a_2@@5) (= (loc_inv_2 (array_loc a_2@@5 i@@24)) i@@24))
 :qid |stdinbpl.216:15|
 :skolemid |22|
 :pattern ( (array_loc a_2@@5 i@@24))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_9707) (o_14 T@Ref) (f_24 T@Field_19890_19895) (v T@PolymorphicMapType_10256) ) (! (succHeap Heap@@44 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@44) (store (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@44) o_14 f_24 v) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@44) (store (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@44) o_14 f_24 v) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@44) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_9707) (o_14@@0 T@Ref) (f_24@@0 T@Field_18011_18012) (v@@0 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@45) (store (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@45) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@45) (store (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@45) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@45) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_9707) (o_14@@1 T@Ref) (f_24@@1 T@Field_18011_1324) (v@@1 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@46) (store (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@46) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@46) (store (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@46) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@46) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_9707) (o_14@@2 T@Ref) (f_24@@2 T@Field_18011_9781) (v@@2 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@47) (store (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@47) o_14@@2 f_24@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@47) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@47) (store (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@47) o_14@@2 f_24@@2 v@@2)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_9707) (o_14@@3 T@Ref) (f_24@@3 T@Field_18011_53) (v@@3 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@48) (store (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@48) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@48) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@48) (store (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@48) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_9707) (o_14@@4 T@Ref) (f_24@@4 T@Field_15535_15540) (v@@4 T@PolymorphicMapType_10256) ) (! (succHeap Heap@@49 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@49) (store (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@49) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@49) (store (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@49) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@49) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_9707) (o_14@@5 T@Ref) (f_24@@5 T@Field_13628_13629) (v@@5 T@FrameType) ) (! (succHeap Heap@@50 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@50) (store (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@50) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@50) (store (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@50) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@50) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_9707) (o_14@@6 T@Ref) (f_24@@6 T@Field_13628_1324) (v@@6 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@51) (store (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@51) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@51) (store (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@51) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@51) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_9707) (o_14@@7 T@Ref) (f_24@@7 T@Field_13628_9781) (v@@7 T@Ref) ) (! (succHeap Heap@@52 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@52) (store (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@52) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@52) (store (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@52) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@52) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_9707) (o_14@@8 T@Ref) (f_24@@8 T@Field_13628_53) (v@@8 Bool) ) (! (succHeap Heap@@53 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@53) (store (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@53) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@53) (store (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@53) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@53) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_9707) (o_14@@9 T@Ref) (f_24@@9 T@Field_5627_15540) (v@@9 T@PolymorphicMapType_10256) ) (! (succHeap Heap@@54 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@54) (store (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@54) o_14@@9 f_24@@9 v@@9) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@54) (store (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@54) o_14@@9 f_24@@9 v@@9) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@54) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_9707) (o_14@@10 T@Ref) (f_24@@10 T@Field_5627_13629) (v@@10 T@FrameType) ) (! (succHeap Heap@@55 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@55) (store (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@55) o_14@@10 f_24@@10 v@@10) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@55) (store (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@55) o_14@@10 f_24@@10 v@@10) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@55) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_9707) (o_14@@11 T@Ref) (f_24@@11 T@Field_13205_1324) (v@@11 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@56) (store (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@56) o_14@@11 f_24@@11 v@@11) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@56) (store (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@56) o_14@@11 f_24@@11 v@@11) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@56) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_9707) (o_14@@12 T@Ref) (f_24@@12 T@Field_9780_9781) (v@@12 T@Ref) ) (! (succHeap Heap@@57 (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@57) (store (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@57) o_14@@12 f_24@@12 v@@12) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@57) (store (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@57) o_14@@12 f_24@@12 v@@12) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@57) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_9707) (o_14@@13 T@Ref) (f_24@@13 T@Field_9767_53) (v@@13 Bool) ) (! (succHeap Heap@@58 (PolymorphicMapType_9707 (store (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@58) o_14@@13 f_24@@13 v@@13) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9707 (store (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@58) o_14@@13 f_24@@13 v@@13) (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5627_1324#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5735_15631#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5762_19986#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5627_13629#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_5627_29363#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_13628_1324#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_13628_53#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_13628_9781#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_18011_1324#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_18011_53#PolymorphicMapType_9707| Heap@@58) (|PolymorphicMapType_9707_18011_9781#PolymorphicMapType_9707| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_9707) (Mask@@66 T@PolymorphicMapType_9728) (x@@19 T@ArrayDomainType) (n@@19 Int) (i@@25 Int) ) (!  (=> (state Heap@@59 Mask@@66) (= (|get0'| Heap@@59 x@@19 n@@19 i@@25) (|get0#frame| (select (|PolymorphicMapType_9707_5731_5732#PolymorphicMapType_9707| Heap@@59) null (hide0 x@@19 n@@19 i@@25)) x@@19 n@@19 i@@25)))
 :qid |stdinbpl.259:15|
 :skolemid |27|
 :pattern ( (state Heap@@59 Mask@@66) (|get0'| Heap@@59 x@@19 n@@19 i@@25))
 :pattern ( (state Heap@@59 Mask@@66) (|get0#triggerStateless| x@@19 n@@19 i@@25) (|hide0#trigger_5731| Heap@@59 (hide0 x@@19 n@@19 i@@25)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_9707) (Mask@@67 T@PolymorphicMapType_9728) (x@@20 T@ArrayDomainType) (n@@20 Int) (i@@26 Int) ) (!  (=> (state Heap@@60 Mask@@67) (= (|get1'| Heap@@60 x@@20 n@@20 i@@26) (|get1#frame| (select (|PolymorphicMapType_9707_5758_5759#PolymorphicMapType_9707| Heap@@60) null (hide1 x@@20 n@@20 i@@26)) x@@20 n@@20 i@@26)))
 :qid |stdinbpl.423:15|
 :skolemid |32|
 :pattern ( (state Heap@@60 Mask@@67) (|get1'| Heap@@60 x@@20 n@@20 i@@26))
 :pattern ( (state Heap@@60 Mask@@67) (|get1#triggerStateless| x@@20 n@@20 i@@26) (|hide1#trigger_5758| Heap@@60 (hide1 x@@20 n@@20 i@@26)))
)))
(assert (forall ((o_14@@14 T@Ref) (f_22 T@Field_9780_9781) (Heap@@61 T@PolymorphicMapType_9707) ) (!  (=> (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@61) o_14@@14 $allocated) (select (|PolymorphicMapType_9707_5485_53#PolymorphicMapType_9707| Heap@@61) (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@61) o_14@@14 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9707_5488_5489#PolymorphicMapType_9707| Heap@@61) o_14@@14 f_22))
)))
(assert (forall ((p@@3 T@Field_18011_18012) (v_1@@2 T@FrameType) (q T@Field_18011_18012) (w@@2 T@FrameType) (r T@Field_18011_18012) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18011_18011 p@@3 v_1@@2 q w@@2) (InsidePredicate_18011_18011 q w@@2 r u)) (InsidePredicate_18011_18011 p@@3 v_1@@2 r u))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18011_18011 p@@3 v_1@@2 q w@@2) (InsidePredicate_18011_18011 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_18011_18012) (v_1@@3 T@FrameType) (q@@0 T@Field_18011_18012) (w@@3 T@FrameType) (r@@0 T@Field_13628_13629) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_18011_18011 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_18011_13628 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_18011_13628 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18011_18011 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_18011_13628 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_18011_18012) (v_1@@4 T@FrameType) (q@@1 T@Field_18011_18012) (w@@4 T@FrameType) (r@@1 T@Field_5627_13629) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_18011_18011 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_18011_9767 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_18011_9767 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18011_18011 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_18011_9767 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_18011_18012) (v_1@@5 T@FrameType) (q@@2 T@Field_13628_13629) (w@@5 T@FrameType) (r@@2 T@Field_18011_18012) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_18011_13628 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_13628_18011 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_18011_18011 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18011_13628 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_13628_18011 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_18011_18012) (v_1@@6 T@FrameType) (q@@3 T@Field_13628_13629) (w@@6 T@FrameType) (r@@3 T@Field_13628_13629) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_18011_13628 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_13628_13628 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_18011_13628 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18011_13628 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_13628_13628 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_18011_18012) (v_1@@7 T@FrameType) (q@@4 T@Field_13628_13629) (w@@7 T@FrameType) (r@@4 T@Field_5627_13629) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_18011_13628 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_13628_9767 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_18011_9767 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18011_13628 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_13628_9767 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_18011_18012) (v_1@@8 T@FrameType) (q@@5 T@Field_5627_13629) (w@@8 T@FrameType) (r@@5 T@Field_18011_18012) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_18011_9767 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9767_18011 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_18011_18011 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18011_9767 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9767_18011 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_18011_18012) (v_1@@9 T@FrameType) (q@@6 T@Field_5627_13629) (w@@9 T@FrameType) (r@@6 T@Field_13628_13629) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_18011_9767 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9767_13628 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_18011_13628 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18011_9767 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9767_13628 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_18011_18012) (v_1@@10 T@FrameType) (q@@7 T@Field_5627_13629) (w@@10 T@FrameType) (r@@7 T@Field_5627_13629) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_18011_9767 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9767_9767 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_18011_9767 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18011_9767 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9767_9767 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_13628_13629) (v_1@@11 T@FrameType) (q@@8 T@Field_18011_18012) (w@@11 T@FrameType) (r@@8 T@Field_18011_18012) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_13628_18011 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_18011_18011 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_13628_18011 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13628_18011 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_18011_18011 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_13628_13629) (v_1@@12 T@FrameType) (q@@9 T@Field_18011_18012) (w@@12 T@FrameType) (r@@9 T@Field_13628_13629) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_13628_18011 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_18011_13628 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_13628_13628 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13628_18011 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_18011_13628 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_13628_13629) (v_1@@13 T@FrameType) (q@@10 T@Field_18011_18012) (w@@13 T@FrameType) (r@@10 T@Field_5627_13629) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_13628_18011 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_18011_9767 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_13628_9767 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13628_18011 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_18011_9767 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_13628_13629) (v_1@@14 T@FrameType) (q@@11 T@Field_13628_13629) (w@@14 T@FrameType) (r@@11 T@Field_18011_18012) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_13628_13628 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_13628_18011 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_13628_18011 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13628_13628 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_13628_18011 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_13628_13629) (v_1@@15 T@FrameType) (q@@12 T@Field_13628_13629) (w@@15 T@FrameType) (r@@12 T@Field_13628_13629) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_13628_13628 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_13628_13628 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_13628_13628 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13628_13628 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_13628_13628 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_13628_13629) (v_1@@16 T@FrameType) (q@@13 T@Field_13628_13629) (w@@16 T@FrameType) (r@@13 T@Field_5627_13629) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_13628_13628 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_13628_9767 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_13628_9767 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13628_13628 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_13628_9767 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_13628_13629) (v_1@@17 T@FrameType) (q@@14 T@Field_5627_13629) (w@@17 T@FrameType) (r@@14 T@Field_18011_18012) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_13628_9767 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9767_18011 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_13628_18011 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13628_9767 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9767_18011 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_13628_13629) (v_1@@18 T@FrameType) (q@@15 T@Field_5627_13629) (w@@18 T@FrameType) (r@@15 T@Field_13628_13629) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_13628_9767 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9767_13628 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_13628_13628 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13628_9767 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9767_13628 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_13628_13629) (v_1@@19 T@FrameType) (q@@16 T@Field_5627_13629) (w@@19 T@FrameType) (r@@16 T@Field_5627_13629) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_13628_9767 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9767_9767 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_13628_9767 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13628_9767 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9767_9767 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_5627_13629) (v_1@@20 T@FrameType) (q@@17 T@Field_18011_18012) (w@@20 T@FrameType) (r@@17 T@Field_18011_18012) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_9767_18011 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_18011_18011 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_9767_18011 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9767_18011 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_18011_18011 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_5627_13629) (v_1@@21 T@FrameType) (q@@18 T@Field_18011_18012) (w@@21 T@FrameType) (r@@18 T@Field_13628_13629) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_9767_18011 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_18011_13628 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_9767_13628 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9767_18011 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_18011_13628 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_5627_13629) (v_1@@22 T@FrameType) (q@@19 T@Field_18011_18012) (w@@22 T@FrameType) (r@@19 T@Field_5627_13629) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_9767_18011 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_18011_9767 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_9767_9767 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9767_18011 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_18011_9767 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_5627_13629) (v_1@@23 T@FrameType) (q@@20 T@Field_13628_13629) (w@@23 T@FrameType) (r@@20 T@Field_18011_18012) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_9767_13628 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_13628_18011 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_9767_18011 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9767_13628 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_13628_18011 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_5627_13629) (v_1@@24 T@FrameType) (q@@21 T@Field_13628_13629) (w@@24 T@FrameType) (r@@21 T@Field_13628_13629) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_9767_13628 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_13628_13628 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_9767_13628 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9767_13628 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_13628_13628 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_5627_13629) (v_1@@25 T@FrameType) (q@@22 T@Field_13628_13629) (w@@25 T@FrameType) (r@@22 T@Field_5627_13629) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_9767_13628 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_13628_9767 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_9767_9767 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9767_13628 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_13628_9767 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_5627_13629) (v_1@@26 T@FrameType) (q@@23 T@Field_5627_13629) (w@@26 T@FrameType) (r@@23 T@Field_18011_18012) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_9767_9767 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9767_18011 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_9767_18011 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9767_9767 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9767_18011 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_5627_13629) (v_1@@27 T@FrameType) (q@@24 T@Field_5627_13629) (w@@27 T@FrameType) (r@@24 T@Field_13628_13629) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_9767_9767 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9767_13628 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_9767_13628 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9767_9767 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9767_13628 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_5627_13629) (v_1@@28 T@FrameType) (q@@25 T@Field_5627_13629) (w@@28 T@FrameType) (r@@25 T@Field_5627_13629) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_9767_9767 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9767_9767 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_9767_9767 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9767_9767 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9767_9767 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@62 T@PolymorphicMapType_9707) (Mask@@68 T@PolymorphicMapType_9728) (a_2@@6 T@ArrayDomainType) (i@@27 Int) ) (!  (=> (and (state Heap@@62 Mask@@68) (< AssumeFunctionsAbove 2)) (=> (and (<= 0 i@@27) (< i@@27 (alen a_2@@6))) (= (aloc_1 Heap@@62 a_2@@6 i@@27) (array_loc a_2@@6 i@@27))))
 :qid |stdinbpl.584:15|
 :skolemid |36|
 :pattern ( (state Heap@@62 Mask@@68) (aloc_1 Heap@@62 a_2@@6 i@@27))
)))
; Valid

