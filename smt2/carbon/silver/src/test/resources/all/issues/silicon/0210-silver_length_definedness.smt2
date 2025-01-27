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
(declare-sort T@Field_11108_53 0)
(declare-sort T@Field_11121_11122 0)
(declare-sort T@Field_17286_17287 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_16857_1823 0)
(declare-sort T@Field_21021_21026 0)
(declare-sort T@Field_5646_5703 0)
(declare-sort T@Field_5646_21026 0)
(declare-sort T@Field_5702_5647 0)
(declare-sort T@Field_5702_53 0)
(declare-sort T@Field_5702_1823 0)
(declare-datatypes ((T@PolymorphicMapType_11069 0)) (((PolymorphicMapType_11069 (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| (Array T@Ref T@Field_17286_17287 Real)) (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| (Array T@Ref T@Field_11121_11122 Real)) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| (Array T@Ref T@Field_16857_1823 Real)) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| (Array T@Ref T@Field_5702_5647 Real)) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| (Array T@Ref T@Field_5702_1823 Real)) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| (Array T@Ref T@Field_5702_53 Real)) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| (Array T@Ref T@Field_21021_21026 Real)) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| (Array T@Ref T@Field_5646_5703 Real)) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| (Array T@Ref T@Field_11108_53 Real)) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| (Array T@Ref T@Field_5646_21026 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11613 0)) (((PolymorphicMapType_11613 (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (Array T@Ref T@Field_11121_11122 Bool)) (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (Array T@Ref T@Field_16857_1823 Bool)) (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (Array T@Ref T@Field_11108_53 Bool)) (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (Array T@Ref T@Field_5646_5703 Bool)) (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (Array T@Ref T@Field_5646_21026 Bool)) (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (Array T@Ref T@Field_5702_5647 Bool)) (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (Array T@Ref T@Field_5702_1823 Bool)) (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (Array T@Ref T@Field_5702_53 Bool)) (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (Array T@Ref T@Field_17286_17287 Bool)) (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (Array T@Ref T@Field_21021_21026 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11048 0)) (((PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| (Array T@Ref T@Field_11108_53 Bool)) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| (Array T@Ref T@Field_11121_11122 T@Ref)) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| (Array T@Ref T@Field_17286_17287 T@FrameType)) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| (Array T@Ref T@Field_16857_1823 Int)) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| (Array T@Ref T@Field_21021_21026 T@PolymorphicMapType_11613)) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| (Array T@Ref T@Field_5646_5703 T@FrameType)) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| (Array T@Ref T@Field_5646_21026 T@PolymorphicMapType_11613)) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| (Array T@Ref T@Field_5702_5647 T@Ref)) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| (Array T@Ref T@Field_5702_53 Bool)) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| (Array T@Ref T@Field_5702_1823 Int)) ) ) ))
(declare-fun $allocated () T@Field_11108_53)
(declare-sort T@ListDomainType 0)
(declare-fun fn$$List__Node () T@ListDomainType)
(declare-fun fn$$List__Nil () T@ListDomainType)
(declare-fun List__variant () T@Field_11121_11122)
(declare-fun List__Node__0 () T@Field_16857_1823)
(declare-fun List__Node__1 () T@Field_11121_11122)
(declare-fun succHeap (T@PolymorphicMapType_11048 T@PolymorphicMapType_11048) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11048 T@PolymorphicMapType_11048) Bool)
(declare-fun state (T@PolymorphicMapType_11048 T@PolymorphicMapType_11069) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11069) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11613)
(declare-fun silver_length (T@PolymorphicMapType_11048 T@Ref) Int)
(declare-fun |silver_length#triggerStateless| (T@Ref) Int)
(declare-fun |valid__List#trigger_5702| (T@PolymorphicMapType_11048 T@Field_17286_17287) Bool)
(declare-fun valid__List (T@Ref) T@Field_17286_17287)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun variantOfList (T@Ref) T@ListDomainType)
(declare-fun |silver_length'| (T@PolymorphicMapType_11048 T@Ref) Int)
(declare-fun IsPredicateField_5702_5703 (T@Field_17286_17287) Bool)
(declare-fun dummyFunction_2117 (Int) Bool)
(declare-fun |valid__List#everUsed_5702| (T@Field_17286_17287) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11048 T@PolymorphicMapType_11048 T@PolymorphicMapType_11069) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5702 (T@Field_17286_17287) T@Field_21021_21026)
(declare-fun HasDirectPerm_5702_5703 (T@PolymorphicMapType_11069 T@Ref T@Field_17286_17287) Bool)
(declare-fun IsPredicateField_5646_38226 (T@Field_5646_5703) Bool)
(declare-fun PredicateMaskField_5646 (T@Field_5646_5703) T@Field_5646_21026)
(declare-fun HasDirectPerm_5646_5703 (T@PolymorphicMapType_11069 T@Ref T@Field_5646_5703) Bool)
(declare-fun IsWandField_5702_41896 (T@Field_17286_17287) Bool)
(declare-fun WandMaskField_5702 (T@Field_17286_17287) T@Field_21021_21026)
(declare-fun IsWandField_5646_41539 (T@Field_5646_5703) Bool)
(declare-fun WandMaskField_5646 (T@Field_5646_5703) T@Field_5646_21026)
(declare-fun |valid__List#sm| (T@Ref) T@Field_21021_21026)
(declare-fun IdenticalOnKnownLocationsLiberal (T@PolymorphicMapType_11048 T@PolymorphicMapType_11048 T@PolymorphicMapType_11069) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_11048)
(declare-fun ZeroMask () T@PolymorphicMapType_11069)
(declare-fun InsidePredicate_11108_11108 (T@Field_5646_5703 T@FrameType T@Field_5646_5703 T@FrameType) Bool)
(declare-fun InsidePredicate_5702_5702 (T@Field_17286_17287 T@FrameType T@Field_17286_17287 T@FrameType) Bool)
(declare-fun isList (T@Ref) Bool)
(declare-fun IsPredicateField_5646_5647 (T@Field_11121_11122) Bool)
(declare-fun IsWandField_5646_5647 (T@Field_11121_11122) Bool)
(declare-fun IsPredicateField_5649_1823 (T@Field_16857_1823) Bool)
(declare-fun IsWandField_5649_1823 (T@Field_16857_1823) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5646_63111 (T@Field_5646_21026) Bool)
(declare-fun IsWandField_5646_63127 (T@Field_5646_21026) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5646_53 (T@Field_11108_53) Bool)
(declare-fun IsWandField_5646_53 (T@Field_11108_53) Bool)
(declare-fun IsPredicateField_5702_62308 (T@Field_21021_21026) Bool)
(declare-fun IsWandField_5702_62324 (T@Field_21021_21026) Bool)
(declare-fun IsPredicateField_5702_53 (T@Field_5702_53) Bool)
(declare-fun IsWandField_5702_53 (T@Field_5702_53) Bool)
(declare-fun IsPredicateField_5702_1823 (T@Field_5702_1823) Bool)
(declare-fun IsWandField_5702_1823 (T@Field_5702_1823) Bool)
(declare-fun IsPredicateField_5702_5647 (T@Field_5702_5647) Bool)
(declare-fun IsWandField_5702_5647 (T@Field_5702_5647) Bool)
(declare-fun HasDirectPerm_5702_37981 (T@PolymorphicMapType_11069 T@Ref T@Field_21021_21026) Bool)
(declare-fun HasDirectPerm_5702_1823 (T@PolymorphicMapType_11069 T@Ref T@Field_5702_1823) Bool)
(declare-fun HasDirectPerm_5702_53 (T@PolymorphicMapType_11069 T@Ref T@Field_5702_53) Bool)
(declare-fun HasDirectPerm_5702_5647 (T@PolymorphicMapType_11069 T@Ref T@Field_5702_5647) Bool)
(declare-fun HasDirectPerm_5646_36840 (T@PolymorphicMapType_11069 T@Ref T@Field_5646_21026) Bool)
(declare-fun HasDirectPerm_5646_1823 (T@PolymorphicMapType_11069 T@Ref T@Field_16857_1823) Bool)
(declare-fun HasDirectPerm_5646_53 (T@PolymorphicMapType_11069 T@Ref T@Field_11108_53) Bool)
(declare-fun HasDirectPerm_5646_5647 (T@PolymorphicMapType_11069 T@Ref T@Field_11121_11122) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11069 T@PolymorphicMapType_11069 T@PolymorphicMapType_11069) Bool)
(declare-fun SumHeap (T@PolymorphicMapType_11048 T@PolymorphicMapType_11048 T@PolymorphicMapType_11069 T@PolymorphicMapType_11048 T@PolymorphicMapType_11069) Bool)
(declare-fun |silver_length#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_5702_5703 (T@Field_17286_17287) Int)
(declare-fun |silver_length#trigger| (T@FrameType T@Ref) Bool)
(declare-fun InsidePredicate_11108_5702 (T@Field_5646_5703 T@FrameType T@Field_17286_17287 T@FrameType) Bool)
(declare-fun InsidePredicate_5702_11108 (T@Field_17286_17287 T@FrameType T@Field_5646_5703 T@FrameType) Bool)
(assert (and (distinct fn$$List__Node fn$$List__Nil)(distinct List__variant List__Node__1))
)
(assert (forall ((Heap0 T@PolymorphicMapType_11048) (Heap1 T@PolymorphicMapType_11048) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.95:15|
 :skolemid |12|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11048) (Mask T@PolymorphicMapType_11069) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.182:15|
 :skolemid |27|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11048) (Heap1@@0 T@PolymorphicMapType_11048) (Heap2 T@PolymorphicMapType_11048) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.100:15|
 :skolemid |13|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_21021_21026) ) (!  (not (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17286_17287) ) (!  (not (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5702_53) ) (!  (not (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5702_1823) ) (!  (not (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5702_5647) ) (!  (not (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_5646_21026) ) (!  (not (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5646_5703) ) (!  (not (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_11108_53) ) (!  (not (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_16857_1823) ) (!  (not (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11121_11122) ) (!  (not (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11048) (Mask@@0 T@PolymorphicMapType_11069) (this T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 0)) (= (silver_length Heap@@0 this) (ite (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@0) this List__variant)) fn$$List__Nil) 0 (+ 1 (|silver_length'| Heap@@0 (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@0) this List__Node__1))))))
 :qid |stdinbpl.298:15|
 :skolemid |38|
 :pattern ( (state Heap@@0 Mask@@0) (silver_length Heap@@0 this))
 :pattern ( (state Heap@@0 Mask@@0) (|silver_length#triggerStateless| this) (|valid__List#trigger_5702| Heap@@0 (valid__List this)))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_5702_5703 (valid__List this@@0))
 :qid |stdinbpl.463:15|
 :skolemid |43|
 :pattern ( (valid__List this@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11048) (this@@1 T@Ref) ) (! (dummyFunction_2117 (|silver_length#triggerStateless| this@@1))
 :qid |stdinbpl.292:15|
 :skolemid |37|
 :pattern ( (|silver_length'| Heap@@1 this@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11048) (this@@2 T@Ref) ) (! (|valid__List#everUsed_5702| (valid__List this@@2))
 :qid |stdinbpl.482:15|
 :skolemid |47|
 :pattern ( (|valid__List#trigger_5702| Heap@@2 (valid__List this@@2)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11048) (this@@3 T@Ref) ) (!  (and (= (silver_length Heap@@3 this@@3) (|silver_length'| Heap@@3 this@@3)) (dummyFunction_2117 (|silver_length#triggerStateless| this@@3)))
 :qid |stdinbpl.288:15|
 :skolemid |36|
 :pattern ( (silver_length Heap@@3 this@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11048) (ExhaleHeap T@PolymorphicMapType_11048) (Mask@@1 T@PolymorphicMapType_11069) (pm_f_20 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_5702_5703 Mask@@1 null pm_f_20) (IsPredicateField_5702_5703 pm_f_20)) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@4) null (PredicateMaskField_5702 pm_f_20)) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap) null (PredicateMaskField_5702 pm_f_20)))))
 :qid |stdinbpl.49:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_5702_5703 pm_f_20) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap) null (PredicateMaskField_5702 pm_f_20)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11048) (ExhaleHeap@@0 T@PolymorphicMapType_11048) (Mask@@2 T@PolymorphicMapType_11069) (pm_f_20@@0 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_5646_5703 Mask@@2 null pm_f_20@@0) (IsPredicateField_5646_38226 pm_f_20@@0)) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@5) null (PredicateMaskField_5646 pm_f_20@@0)) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@0) null (PredicateMaskField_5646 pm_f_20@@0)))))
 :qid |stdinbpl.49:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsPredicateField_5646_38226 pm_f_20@@0) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@0) null (PredicateMaskField_5646 pm_f_20@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11048) (ExhaleHeap@@1 T@PolymorphicMapType_11048) (Mask@@3 T@PolymorphicMapType_11069) (pm_f_20@@1 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_5702_5703 Mask@@3 null pm_f_20@@1) (IsWandField_5702_41896 pm_f_20@@1)) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@6) null (WandMaskField_5702 pm_f_20@@1)) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@1) null (WandMaskField_5702 pm_f_20@@1)))))
 :qid |stdinbpl.62:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (IsWandField_5702_41896 pm_f_20@@1) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@1) null (WandMaskField_5702 pm_f_20@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11048) (ExhaleHeap@@2 T@PolymorphicMapType_11048) (Mask@@4 T@PolymorphicMapType_11069) (pm_f_20@@2 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_5646_5703 Mask@@4 null pm_f_20@@2) (IsWandField_5646_41539 pm_f_20@@2)) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@7) null (WandMaskField_5646 pm_f_20@@2)) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@2) null (WandMaskField_5646 pm_f_20@@2)))))
 :qid |stdinbpl.62:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (IsWandField_5646_41539 pm_f_20@@2) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@2) null (WandMaskField_5646 pm_f_20@@2)))
)))
(assert (forall ((this@@4 T@Ref) (this2 T@Ref) ) (!  (=> (= (valid__List this@@4) (valid__List this2)) (= this@@4 this2))
 :qid |stdinbpl.473:15|
 :skolemid |45|
 :pattern ( (valid__List this@@4) (valid__List this2))
)))
(assert (forall ((this@@5 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|valid__List#sm| this@@5) (|valid__List#sm| this2@@0)) (= this@@5 this2@@0))
 :qid |stdinbpl.477:15|
 :skolemid |46|
 :pattern ( (|valid__List#sm| this@@5) (|valid__List#sm| this2@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11048) (ExhaleHeap@@3 T@PolymorphicMapType_11048) (Mask@@5 T@PolymorphicMapType_11069) (pm_f_20@@3 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_5702_5703 Mask@@5 null pm_f_20@@3) (IsPredicateField_5702_5703 pm_f_20@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_20 T@Ref) (f_53 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_20@@3))) o2_20 f_53) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@8) o2_20 f_53) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20 f_53)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20 f_53))
)) (forall ((o2_20@@0 T@Ref) (f_53@@0 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_20@@3))) o2_20@@0 f_53@@0) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@8) o2_20@@0 f_53@@0) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20@@0 f_53@@0)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20@@0 f_53@@0))
))) (forall ((o2_20@@1 T@Ref) (f_53@@1 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_20@@3))) o2_20@@1 f_53@@1) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@8) o2_20@@1 f_53@@1) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20@@1 f_53@@1)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20@@1 f_53@@1))
))) (forall ((o2_20@@2 T@Ref) (f_53@@2 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_20@@3))) o2_20@@2 f_53@@2) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@8) o2_20@@2 f_53@@2) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20@@2 f_53@@2)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20@@2 f_53@@2))
))) (forall ((o2_20@@3 T@Ref) (f_53@@3 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_20@@3))) o2_20@@3 f_53@@3) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@8) o2_20@@3 f_53@@3) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20@@3 f_53@@3)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20@@3 f_53@@3))
))) (forall ((o2_20@@4 T@Ref) (f_53@@4 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_20@@3))) o2_20@@4 f_53@@4) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@8) o2_20@@4 f_53@@4) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20@@4 f_53@@4)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20@@4 f_53@@4))
))) (forall ((o2_20@@5 T@Ref) (f_53@@5 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_20@@3))) o2_20@@5 f_53@@5) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@8) o2_20@@5 f_53@@5) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20@@5 f_53@@5)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20@@5 f_53@@5))
))) (forall ((o2_20@@6 T@Ref) (f_53@@6 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_20@@3))) o2_20@@6 f_53@@6) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@8) o2_20@@6 f_53@@6) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20@@6 f_53@@6)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20@@6 f_53@@6))
))) (forall ((o2_20@@7 T@Ref) (f_53@@7 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_20@@3))) o2_20@@7 f_53@@7) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@8) o2_20@@7 f_53@@7) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20@@7 f_53@@7)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20@@7 f_53@@7))
))) (forall ((o2_20@@8 T@Ref) (f_53@@8 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_20@@3))) o2_20@@8 f_53@@8) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) o2_20@@8 f_53@@8) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20@@8 f_53@@8)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@3) o2_20@@8 f_53@@8))
)))))
 :qid |stdinbpl.54:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (IsPredicateField_5702_5703 pm_f_20@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11048) (ExhaleHeap@@4 T@PolymorphicMapType_11048) (Mask@@6 T@PolymorphicMapType_11069) (pm_f_20@@4 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_5646_5703 Mask@@6 null pm_f_20@@4) (IsPredicateField_5646_38226 pm_f_20@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_20@@9 T@Ref) (f_53@@9 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_20@@4))) o2_20@@9 f_53@@9) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@9) o2_20@@9 f_53@@9) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@9 f_53@@9)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@9 f_53@@9))
)) (forall ((o2_20@@10 T@Ref) (f_53@@10 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_20@@4))) o2_20@@10 f_53@@10) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@9) o2_20@@10 f_53@@10) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@10 f_53@@10)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@10 f_53@@10))
))) (forall ((o2_20@@11 T@Ref) (f_53@@11 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_20@@4))) o2_20@@11 f_53@@11) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@9) o2_20@@11 f_53@@11) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@11 f_53@@11)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@11 f_53@@11))
))) (forall ((o2_20@@12 T@Ref) (f_53@@12 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_20@@4))) o2_20@@12 f_53@@12) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@9) o2_20@@12 f_53@@12) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@12 f_53@@12)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@12 f_53@@12))
))) (forall ((o2_20@@13 T@Ref) (f_53@@13 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_20@@4))) o2_20@@13 f_53@@13) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) o2_20@@13 f_53@@13) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@13 f_53@@13)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@13 f_53@@13))
))) (forall ((o2_20@@14 T@Ref) (f_53@@14 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_20@@4))) o2_20@@14 f_53@@14) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@9) o2_20@@14 f_53@@14) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@14 f_53@@14)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@14 f_53@@14))
))) (forall ((o2_20@@15 T@Ref) (f_53@@15 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_20@@4))) o2_20@@15 f_53@@15) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@9) o2_20@@15 f_53@@15) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@15 f_53@@15)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@15 f_53@@15))
))) (forall ((o2_20@@16 T@Ref) (f_53@@16 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_20@@4))) o2_20@@16 f_53@@16) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@9) o2_20@@16 f_53@@16) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@16 f_53@@16)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@16 f_53@@16))
))) (forall ((o2_20@@17 T@Ref) (f_53@@17 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_20@@4))) o2_20@@17 f_53@@17) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@9) o2_20@@17 f_53@@17) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@17 f_53@@17)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@17 f_53@@17))
))) (forall ((o2_20@@18 T@Ref) (f_53@@18 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_20@@4))) o2_20@@18 f_53@@18) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@9) o2_20@@18 f_53@@18) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@18 f_53@@18)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@4) o2_20@@18 f_53@@18))
)))))
 :qid |stdinbpl.54:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (IsPredicateField_5646_38226 pm_f_20@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11048) (ExhaleHeap@@5 T@PolymorphicMapType_11048) (Mask@@7 T@PolymorphicMapType_11069) (pm_f_20@@5 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_5702_5703 Mask@@7 null pm_f_20@@5) (IsWandField_5702_41896 pm_f_20@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_20@@19 T@Ref) (f_53@@19 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_20@@5))) o2_20@@19 f_53@@19) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@10) o2_20@@19 f_53@@19) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@19 f_53@@19)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@19 f_53@@19))
)) (forall ((o2_20@@20 T@Ref) (f_53@@20 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_20@@5))) o2_20@@20 f_53@@20) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@10) o2_20@@20 f_53@@20) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@20 f_53@@20)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@20 f_53@@20))
))) (forall ((o2_20@@21 T@Ref) (f_53@@21 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_20@@5))) o2_20@@21 f_53@@21) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@10) o2_20@@21 f_53@@21) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@21 f_53@@21)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@21 f_53@@21))
))) (forall ((o2_20@@22 T@Ref) (f_53@@22 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_20@@5))) o2_20@@22 f_53@@22) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@10) o2_20@@22 f_53@@22) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@22 f_53@@22)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@22 f_53@@22))
))) (forall ((o2_20@@23 T@Ref) (f_53@@23 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_20@@5))) o2_20@@23 f_53@@23) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@10) o2_20@@23 f_53@@23) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@23 f_53@@23)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@23 f_53@@23))
))) (forall ((o2_20@@24 T@Ref) (f_53@@24 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_20@@5))) o2_20@@24 f_53@@24) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@10) o2_20@@24 f_53@@24) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@24 f_53@@24)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@24 f_53@@24))
))) (forall ((o2_20@@25 T@Ref) (f_53@@25 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_20@@5))) o2_20@@25 f_53@@25) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@10) o2_20@@25 f_53@@25) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@25 f_53@@25)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@25 f_53@@25))
))) (forall ((o2_20@@26 T@Ref) (f_53@@26 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_20@@5))) o2_20@@26 f_53@@26) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@10) o2_20@@26 f_53@@26) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@26 f_53@@26)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@26 f_53@@26))
))) (forall ((o2_20@@27 T@Ref) (f_53@@27 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_20@@5))) o2_20@@27 f_53@@27) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@10) o2_20@@27 f_53@@27) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@27 f_53@@27)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@27 f_53@@27))
))) (forall ((o2_20@@28 T@Ref) (f_53@@28 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_20@@5))) o2_20@@28 f_53@@28) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) o2_20@@28 f_53@@28) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@28 f_53@@28)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@5) o2_20@@28 f_53@@28))
)))))
 :qid |stdinbpl.67:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (IsWandField_5702_41896 pm_f_20@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11048) (ExhaleHeap@@6 T@PolymorphicMapType_11048) (Mask@@8 T@PolymorphicMapType_11069) (pm_f_20@@6 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_5646_5703 Mask@@8 null pm_f_20@@6) (IsWandField_5646_41539 pm_f_20@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_20@@29 T@Ref) (f_53@@29 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_20@@6))) o2_20@@29 f_53@@29) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@11) o2_20@@29 f_53@@29) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@29 f_53@@29)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@29 f_53@@29))
)) (forall ((o2_20@@30 T@Ref) (f_53@@30 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_20@@6))) o2_20@@30 f_53@@30) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@11) o2_20@@30 f_53@@30) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@30 f_53@@30)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@30 f_53@@30))
))) (forall ((o2_20@@31 T@Ref) (f_53@@31 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_20@@6))) o2_20@@31 f_53@@31) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@11) o2_20@@31 f_53@@31) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@31 f_53@@31)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@31 f_53@@31))
))) (forall ((o2_20@@32 T@Ref) (f_53@@32 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_20@@6))) o2_20@@32 f_53@@32) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@11) o2_20@@32 f_53@@32) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@32 f_53@@32)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@32 f_53@@32))
))) (forall ((o2_20@@33 T@Ref) (f_53@@33 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_20@@6))) o2_20@@33 f_53@@33) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) o2_20@@33 f_53@@33) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@33 f_53@@33)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@33 f_53@@33))
))) (forall ((o2_20@@34 T@Ref) (f_53@@34 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_20@@6))) o2_20@@34 f_53@@34) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@11) o2_20@@34 f_53@@34) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@34 f_53@@34)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@34 f_53@@34))
))) (forall ((o2_20@@35 T@Ref) (f_53@@35 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_20@@6))) o2_20@@35 f_53@@35) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@11) o2_20@@35 f_53@@35) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@35 f_53@@35)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@35 f_53@@35))
))) (forall ((o2_20@@36 T@Ref) (f_53@@36 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_20@@6))) o2_20@@36 f_53@@36) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@11) o2_20@@36 f_53@@36) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@36 f_53@@36)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@36 f_53@@36))
))) (forall ((o2_20@@37 T@Ref) (f_53@@37 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_20@@6))) o2_20@@37 f_53@@37) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@11) o2_20@@37 f_53@@37) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@37 f_53@@37)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@37 f_53@@37))
))) (forall ((o2_20@@38 T@Ref) (f_53@@38 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_20@@6))) o2_20@@38 f_53@@38) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@11) o2_20@@38 f_53@@38) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@38 f_53@@38)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@6) o2_20@@38 f_53@@38))
)))))
 :qid |stdinbpl.67:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (IsWandField_5646_41539 pm_f_20@@6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11048) (ExhaleHeap@@7 T@PolymorphicMapType_11048) (Mask@@9 T@PolymorphicMapType_11069) (pm_f_4 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@12 ExhaleHeap@@7 Mask@@9) (=> (and (HasDirectPerm_5702_5703 Mask@@9 null pm_f_4) (IsPredicateField_5702_5703 pm_f_4)) (and (and (and (and (and (and (and (and (and (forall ((o2_4 T@Ref) (f_20 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_4))) o2_4 f_20) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@12) o2_4 f_20) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4 f_20)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4 f_20))
)) (forall ((o2_4@@0 T@Ref) (f_20@@0 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_4))) o2_4@@0 f_20@@0) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@12) o2_4@@0 f_20@@0) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4@@0 f_20@@0)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4@@0 f_20@@0))
))) (forall ((o2_4@@1 T@Ref) (f_20@@1 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_4))) o2_4@@1 f_20@@1) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@12) o2_4@@1 f_20@@1) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4@@1 f_20@@1)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4@@1 f_20@@1))
))) (forall ((o2_4@@2 T@Ref) (f_20@@2 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_4))) o2_4@@2 f_20@@2) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@12) o2_4@@2 f_20@@2) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4@@2 f_20@@2)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4@@2 f_20@@2))
))) (forall ((o2_4@@3 T@Ref) (f_20@@3 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_4))) o2_4@@3 f_20@@3) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@12) o2_4@@3 f_20@@3) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4@@3 f_20@@3)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4@@3 f_20@@3))
))) (forall ((o2_4@@4 T@Ref) (f_20@@4 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_4))) o2_4@@4 f_20@@4) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@12) o2_4@@4 f_20@@4) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4@@4 f_20@@4)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4@@4 f_20@@4))
))) (forall ((o2_4@@5 T@Ref) (f_20@@5 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_4))) o2_4@@5 f_20@@5) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@12) o2_4@@5 f_20@@5) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4@@5 f_20@@5)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4@@5 f_20@@5))
))) (forall ((o2_4@@6 T@Ref) (f_20@@6 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_4))) o2_4@@6 f_20@@6) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@12) o2_4@@6 f_20@@6) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4@@6 f_20@@6)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4@@6 f_20@@6))
))) (forall ((o2_4@@7 T@Ref) (f_20@@7 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_4))) o2_4@@7 f_20@@7) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@12) o2_4@@7 f_20@@7) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4@@7 f_20@@7)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4@@7 f_20@@7))
))) (forall ((o2_4@@8 T@Ref) (f_20@@8 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_4))) o2_4@@8 f_20@@8) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) o2_4@@8 f_20@@8) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4@@8 f_20@@8)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@7) o2_4@@8 f_20@@8))
)))))
 :qid |stdinbpl.118:19|
 :skolemid |18|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@12 ExhaleHeap@@7 Mask@@9) (IsPredicateField_5702_5703 pm_f_4))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11048) (ExhaleHeap@@8 T@PolymorphicMapType_11048) (Mask@@10 T@PolymorphicMapType_11069) (pm_f_4@@0 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@13 ExhaleHeap@@8 Mask@@10) (=> (and (HasDirectPerm_5646_5703 Mask@@10 null pm_f_4@@0) (IsPredicateField_5646_38226 pm_f_4@@0)) (and (and (and (and (and (and (and (and (and (forall ((o2_4@@9 T@Ref) (f_20@@9 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_4@@0))) o2_4@@9 f_20@@9) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@13) o2_4@@9 f_20@@9) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@9 f_20@@9)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@9 f_20@@9))
)) (forall ((o2_4@@10 T@Ref) (f_20@@10 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_4@@0))) o2_4@@10 f_20@@10) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@13) o2_4@@10 f_20@@10) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@10 f_20@@10)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@10 f_20@@10))
))) (forall ((o2_4@@11 T@Ref) (f_20@@11 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_4@@0))) o2_4@@11 f_20@@11) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@13) o2_4@@11 f_20@@11) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@11 f_20@@11)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@11 f_20@@11))
))) (forall ((o2_4@@12 T@Ref) (f_20@@12 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_4@@0))) o2_4@@12 f_20@@12) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@13) o2_4@@12 f_20@@12) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@12 f_20@@12)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@12 f_20@@12))
))) (forall ((o2_4@@13 T@Ref) (f_20@@13 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_4@@0))) o2_4@@13 f_20@@13) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) o2_4@@13 f_20@@13) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@13 f_20@@13)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@13 f_20@@13))
))) (forall ((o2_4@@14 T@Ref) (f_20@@14 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_4@@0))) o2_4@@14 f_20@@14) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@13) o2_4@@14 f_20@@14) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@14 f_20@@14)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@14 f_20@@14))
))) (forall ((o2_4@@15 T@Ref) (f_20@@15 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_4@@0))) o2_4@@15 f_20@@15) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@13) o2_4@@15 f_20@@15) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@15 f_20@@15)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@15 f_20@@15))
))) (forall ((o2_4@@16 T@Ref) (f_20@@16 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_4@@0))) o2_4@@16 f_20@@16) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@13) o2_4@@16 f_20@@16) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@16 f_20@@16)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@16 f_20@@16))
))) (forall ((o2_4@@17 T@Ref) (f_20@@17 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_4@@0))) o2_4@@17 f_20@@17) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@13) o2_4@@17 f_20@@17) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@17 f_20@@17)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@17 f_20@@17))
))) (forall ((o2_4@@18 T@Ref) (f_20@@18 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_4@@0))) o2_4@@18 f_20@@18) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@13) o2_4@@18 f_20@@18) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@18 f_20@@18)))
 :qid |stdinbpl.120:145|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@8) o2_4@@18 f_20@@18))
)))))
 :qid |stdinbpl.118:19|
 :skolemid |18|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@13 ExhaleHeap@@8 Mask@@10) (IsPredicateField_5646_38226 pm_f_4@@0))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11048) (ExhaleHeap@@9 T@PolymorphicMapType_11048) (Mask@@11 T@PolymorphicMapType_11069) (pm_f_4@@1 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@14 ExhaleHeap@@9 Mask@@11) (=> (and (HasDirectPerm_5702_5703 Mask@@11 null pm_f_4@@1) (IsWandField_5702_41896 pm_f_4@@1)) (and (and (and (and (and (and (and (and (and (forall ((o2_4@@19 T@Ref) (f_20@@19 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_4@@1))) o2_4@@19 f_20@@19) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@14) o2_4@@19 f_20@@19) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@19 f_20@@19)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@19 f_20@@19))
)) (forall ((o2_4@@20 T@Ref) (f_20@@20 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_4@@1))) o2_4@@20 f_20@@20) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@14) o2_4@@20 f_20@@20) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@20 f_20@@20)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@20 f_20@@20))
))) (forall ((o2_4@@21 T@Ref) (f_20@@21 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_4@@1))) o2_4@@21 f_20@@21) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@14) o2_4@@21 f_20@@21) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@21 f_20@@21)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@21 f_20@@21))
))) (forall ((o2_4@@22 T@Ref) (f_20@@22 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_4@@1))) o2_4@@22 f_20@@22) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@14) o2_4@@22 f_20@@22) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@22 f_20@@22)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@22 f_20@@22))
))) (forall ((o2_4@@23 T@Ref) (f_20@@23 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_4@@1))) o2_4@@23 f_20@@23) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@14) o2_4@@23 f_20@@23) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@23 f_20@@23)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@23 f_20@@23))
))) (forall ((o2_4@@24 T@Ref) (f_20@@24 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_4@@1))) o2_4@@24 f_20@@24) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@14) o2_4@@24 f_20@@24) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@24 f_20@@24)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@24 f_20@@24))
))) (forall ((o2_4@@25 T@Ref) (f_20@@25 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_4@@1))) o2_4@@25 f_20@@25) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@14) o2_4@@25 f_20@@25) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@25 f_20@@25)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@25 f_20@@25))
))) (forall ((o2_4@@26 T@Ref) (f_20@@26 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_4@@1))) o2_4@@26 f_20@@26) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@14) o2_4@@26 f_20@@26) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@26 f_20@@26)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@26 f_20@@26))
))) (forall ((o2_4@@27 T@Ref) (f_20@@27 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_4@@1))) o2_4@@27 f_20@@27) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@14) o2_4@@27 f_20@@27) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@27 f_20@@27)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@27 f_20@@27))
))) (forall ((o2_4@@28 T@Ref) (f_20@@28 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_4@@1))) o2_4@@28 f_20@@28) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) o2_4@@28 f_20@@28) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@28 f_20@@28)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@9) o2_4@@28 f_20@@28))
)))))
 :qid |stdinbpl.134:19|
 :skolemid |22|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@14 ExhaleHeap@@9 Mask@@11) (IsWandField_5702_41896 pm_f_4@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11048) (ExhaleHeap@@10 T@PolymorphicMapType_11048) (Mask@@12 T@PolymorphicMapType_11069) (pm_f_4@@2 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@15 ExhaleHeap@@10 Mask@@12) (=> (and (HasDirectPerm_5646_5703 Mask@@12 null pm_f_4@@2) (IsWandField_5646_41539 pm_f_4@@2)) (and (and (and (and (and (and (and (and (and (forall ((o2_4@@29 T@Ref) (f_20@@29 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_4@@2))) o2_4@@29 f_20@@29) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@15) o2_4@@29 f_20@@29) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@29 f_20@@29)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@29 f_20@@29))
)) (forall ((o2_4@@30 T@Ref) (f_20@@30 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_4@@2))) o2_4@@30 f_20@@30) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@15) o2_4@@30 f_20@@30) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@30 f_20@@30)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@30 f_20@@30))
))) (forall ((o2_4@@31 T@Ref) (f_20@@31 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_4@@2))) o2_4@@31 f_20@@31) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@15) o2_4@@31 f_20@@31) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@31 f_20@@31)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@31 f_20@@31))
))) (forall ((o2_4@@32 T@Ref) (f_20@@32 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_4@@2))) o2_4@@32 f_20@@32) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@15) o2_4@@32 f_20@@32) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@32 f_20@@32)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@32 f_20@@32))
))) (forall ((o2_4@@33 T@Ref) (f_20@@33 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_4@@2))) o2_4@@33 f_20@@33) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) o2_4@@33 f_20@@33) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@33 f_20@@33)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@33 f_20@@33))
))) (forall ((o2_4@@34 T@Ref) (f_20@@34 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_4@@2))) o2_4@@34 f_20@@34) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@15) o2_4@@34 f_20@@34) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@34 f_20@@34)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@34 f_20@@34))
))) (forall ((o2_4@@35 T@Ref) (f_20@@35 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_4@@2))) o2_4@@35 f_20@@35) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@15) o2_4@@35 f_20@@35) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@35 f_20@@35)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@35 f_20@@35))
))) (forall ((o2_4@@36 T@Ref) (f_20@@36 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_4@@2))) o2_4@@36 f_20@@36) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@15) o2_4@@36 f_20@@36) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@36 f_20@@36)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@36 f_20@@36))
))) (forall ((o2_4@@37 T@Ref) (f_20@@37 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_4@@2))) o2_4@@37 f_20@@37) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@15) o2_4@@37 f_20@@37) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@37 f_20@@37)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@37 f_20@@37))
))) (forall ((o2_4@@38 T@Ref) (f_20@@38 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_4@@2))) o2_4@@38 f_20@@38) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@15) o2_4@@38 f_20@@38) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@38 f_20@@38)))
 :qid |stdinbpl.136:140|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@10) o2_4@@38 f_20@@38))
)))))
 :qid |stdinbpl.134:19|
 :skolemid |22|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@15 ExhaleHeap@@10 Mask@@12) (IsWandField_5646_41539 pm_f_4@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11048) (ExhaleHeap@@11 T@PolymorphicMapType_11048) (Mask@@13 T@PolymorphicMapType_11069) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@13) (=> (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@16) o_41 $allocated) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@11) o_41 $allocated)))
 :qid |stdinbpl.75:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@13) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@11) o_41 $allocated))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11048) (ExhaleHeap@@12 T@PolymorphicMapType_11048) (Mask@@14 T@PolymorphicMapType_11069) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@17 ExhaleHeap@@12 Mask@@14) (=> (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@17) o_13 $allocated) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@12) o_13 $allocated)))
 :qid |stdinbpl.142:15|
 :skolemid |23|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@17 ExhaleHeap@@12 Mask@@14) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@12) o_13 $allocated))
)))
(assert (forall ((p T@Field_5646_5703) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11108_11108 p v_1 p w))
 :qid |stdinbpl.231:19|
 :skolemid |33|
 :pattern ( (InsidePredicate_11108_11108 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_17286_17287) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_5702_5702 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.231:19|
 :skolemid |33|
 :pattern ( (InsidePredicate_5702_5702 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((x T@Ref) ) (! (= (isList x)  (or (= (variantOfList x) fn$$List__Node) (= (variantOfList x) fn$$List__Nil)))
 :qid |stdinbpl.262:15|
 :skolemid |35|
 :pattern ( (isList x))
 :pattern ( (variantOfList x))
)))
(assert  (not (IsPredicateField_5646_5647 List__variant)))
(assert  (not (IsWandField_5646_5647 List__variant)))
(assert  (not (IsPredicateField_5649_1823 List__Node__0)))
(assert  (not (IsWandField_5649_1823 List__Node__0)))
(assert  (not (IsPredicateField_5646_5647 List__Node__1)))
(assert  (not (IsWandField_5646_5647 List__Node__1)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11048) (ExhaleHeap@@13 T@PolymorphicMapType_11048) (Mask@@15 T@PolymorphicMapType_11069) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@15) (succHeap Heap@@18 ExhaleHeap@@13))
 :qid |stdinbpl.85:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@15))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11048) (ExhaleHeap@@14 T@PolymorphicMapType_11048) (Mask@@16 T@PolymorphicMapType_11069) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@19 ExhaleHeap@@14 Mask@@16) (succHeap Heap@@19 ExhaleHeap@@14))
 :qid |stdinbpl.90:15|
 :skolemid |11|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@19 ExhaleHeap@@14 Mask@@16))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_11069) (o_2@@9 T@Ref) (f_4@@9 T@Field_5646_21026) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@@17) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5646_63111 f_4@@9))) (not (IsWandField_5646_63127 f_4@@9))) (<= (select (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@@17) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@@17) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_11069) (o_2@@10 T@Ref) (f_4@@10 T@Field_11108_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@@18) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5646_53 f_4@@10))) (not (IsWandField_5646_53 f_4@@10))) (<= (select (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@@18) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@@18) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_11069) (o_2@@11 T@Ref) (f_4@@11 T@Field_16857_1823) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@@19) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5649_1823 f_4@@11))) (not (IsWandField_5649_1823 f_4@@11))) (<= (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@@19) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@@19) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_11069) (o_2@@12 T@Ref) (f_4@@12 T@Field_11121_11122) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@@20) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5646_5647 f_4@@12))) (not (IsWandField_5646_5647 f_4@@12))) (<= (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@@20) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@@20) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_11069) (o_2@@13 T@Ref) (f_4@@13 T@Field_5646_5703) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@@21) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5646_38226 f_4@@13))) (not (IsWandField_5646_41539 f_4@@13))) (<= (select (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@@21) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@@21) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_11069) (o_2@@14 T@Ref) (f_4@@14 T@Field_21021_21026) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@@22) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5702_62308 f_4@@14))) (not (IsWandField_5702_62324 f_4@@14))) (<= (select (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@@22) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@@22) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_11069) (o_2@@15 T@Ref) (f_4@@15 T@Field_5702_53) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@@23) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_5702_53 f_4@@15))) (not (IsWandField_5702_53 f_4@@15))) (<= (select (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@@23) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@@23) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_11069) (o_2@@16 T@Ref) (f_4@@16 T@Field_5702_1823) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@@24) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_5702_1823 f_4@@16))) (not (IsWandField_5702_1823 f_4@@16))) (<= (select (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@@24) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@@24) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_11069) (o_2@@17 T@Ref) (f_4@@17 T@Field_5702_5647) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@@25) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_5702_5647 f_4@@17))) (not (IsWandField_5702_5647 f_4@@17))) (<= (select (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@@25) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@@25) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_11069) (o_2@@18 T@Ref) (f_4@@18 T@Field_17286_17287) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@@26) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_5702_5703 f_4@@18))) (not (IsWandField_5702_41896 f_4@@18))) (<= (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@@26) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@@26) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_11069) (o_2@@19 T@Ref) (f_4@@19 T@Field_21021_21026) ) (! (= (HasDirectPerm_5702_37981 Mask@@27 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@@27) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5702_37981 Mask@@27 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_11069) (o_2@@20 T@Ref) (f_4@@20 T@Field_5702_1823) ) (! (= (HasDirectPerm_5702_1823 Mask@@28 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@@28) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5702_1823 Mask@@28 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_11069) (o_2@@21 T@Ref) (f_4@@21 T@Field_5702_53) ) (! (= (HasDirectPerm_5702_53 Mask@@29 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@@29) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5702_53 Mask@@29 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_11069) (o_2@@22 T@Ref) (f_4@@22 T@Field_17286_17287) ) (! (= (HasDirectPerm_5702_5703 Mask@@30 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@@30) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5702_5703 Mask@@30 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_11069) (o_2@@23 T@Ref) (f_4@@23 T@Field_5702_5647) ) (! (= (HasDirectPerm_5702_5647 Mask@@31 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@@31) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5702_5647 Mask@@31 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_11069) (o_2@@24 T@Ref) (f_4@@24 T@Field_5646_21026) ) (! (= (HasDirectPerm_5646_36840 Mask@@32 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@@32) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5646_36840 Mask@@32 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_11069) (o_2@@25 T@Ref) (f_4@@25 T@Field_16857_1823) ) (! (= (HasDirectPerm_5646_1823 Mask@@33 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@@33) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5646_1823 Mask@@33 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_11069) (o_2@@26 T@Ref) (f_4@@26 T@Field_11108_53) ) (! (= (HasDirectPerm_5646_53 Mask@@34 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@@34) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5646_53 Mask@@34 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_11069) (o_2@@27 T@Ref) (f_4@@27 T@Field_5646_5703) ) (! (= (HasDirectPerm_5646_5703 Mask@@35 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@@35) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5646_5703 Mask@@35 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_11069) (o_2@@28 T@Ref) (f_4@@28 T@Field_11121_11122) ) (! (= (HasDirectPerm_5646_5647 Mask@@36 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@@36) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_5646_5647 Mask@@36 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.219:15|
 :skolemid |31|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11048) (ExhaleHeap@@15 T@PolymorphicMapType_11048) (Mask@@37 T@PolymorphicMapType_11069) (o_41@@0 T@Ref) (f_53@@39 T@Field_21021_21026) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_5702_37981 Mask@@37 o_41@@0 f_53@@39) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@20) o_41@@0 f_53@@39) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@15) o_41@@0 f_53@@39))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@15) o_41@@0 f_53@@39))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_11048) (ExhaleHeap@@16 T@PolymorphicMapType_11048) (Mask@@38 T@PolymorphicMapType_11069) (o_41@@1 T@Ref) (f_53@@40 T@Field_5702_1823) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_5702_1823 Mask@@38 o_41@@1 f_53@@40) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@21) o_41@@1 f_53@@40) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@16) o_41@@1 f_53@@40))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@16) o_41@@1 f_53@@40))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_11048) (ExhaleHeap@@17 T@PolymorphicMapType_11048) (Mask@@39 T@PolymorphicMapType_11069) (o_41@@2 T@Ref) (f_53@@41 T@Field_5702_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_5702_53 Mask@@39 o_41@@2 f_53@@41) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@22) o_41@@2 f_53@@41) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@17) o_41@@2 f_53@@41))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@17) o_41@@2 f_53@@41))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_11048) (ExhaleHeap@@18 T@PolymorphicMapType_11048) (Mask@@40 T@PolymorphicMapType_11069) (o_41@@3 T@Ref) (f_53@@42 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_5702_5703 Mask@@40 o_41@@3 f_53@@42) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@23) o_41@@3 f_53@@42) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@18) o_41@@3 f_53@@42))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@18) o_41@@3 f_53@@42))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_11048) (ExhaleHeap@@19 T@PolymorphicMapType_11048) (Mask@@41 T@PolymorphicMapType_11069) (o_41@@4 T@Ref) (f_53@@43 T@Field_5702_5647) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@41) (=> (HasDirectPerm_5702_5647 Mask@@41 o_41@@4 f_53@@43) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@24) o_41@@4 f_53@@43) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@19) o_41@@4 f_53@@43))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@41) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@19) o_41@@4 f_53@@43))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11048) (ExhaleHeap@@20 T@PolymorphicMapType_11048) (Mask@@42 T@PolymorphicMapType_11069) (o_41@@5 T@Ref) (f_53@@44 T@Field_5646_21026) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@42) (=> (HasDirectPerm_5646_36840 Mask@@42 o_41@@5 f_53@@44) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@25) o_41@@5 f_53@@44) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@20) o_41@@5 f_53@@44))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@42) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@20) o_41@@5 f_53@@44))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11048) (ExhaleHeap@@21 T@PolymorphicMapType_11048) (Mask@@43 T@PolymorphicMapType_11069) (o_41@@6 T@Ref) (f_53@@45 T@Field_16857_1823) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@43) (=> (HasDirectPerm_5646_1823 Mask@@43 o_41@@6 f_53@@45) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@26) o_41@@6 f_53@@45) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@21) o_41@@6 f_53@@45))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@43) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@21) o_41@@6 f_53@@45))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11048) (ExhaleHeap@@22 T@PolymorphicMapType_11048) (Mask@@44 T@PolymorphicMapType_11069) (o_41@@7 T@Ref) (f_53@@46 T@Field_11108_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@44) (=> (HasDirectPerm_5646_53 Mask@@44 o_41@@7 f_53@@46) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@27) o_41@@7 f_53@@46) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@22) o_41@@7 f_53@@46))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@44) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@22) o_41@@7 f_53@@46))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11048) (ExhaleHeap@@23 T@PolymorphicMapType_11048) (Mask@@45 T@PolymorphicMapType_11069) (o_41@@8 T@Ref) (f_53@@47 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@45) (=> (HasDirectPerm_5646_5703 Mask@@45 o_41@@8 f_53@@47) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@28) o_41@@8 f_53@@47) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@23) o_41@@8 f_53@@47))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@45) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@23) o_41@@8 f_53@@47))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11048) (ExhaleHeap@@24 T@PolymorphicMapType_11048) (Mask@@46 T@PolymorphicMapType_11069) (o_41@@9 T@Ref) (f_53@@48 T@Field_11121_11122) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@46) (=> (HasDirectPerm_5646_5647 Mask@@46 o_41@@9 f_53@@48) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@29) o_41@@9 f_53@@48) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@24) o_41@@9 f_53@@48))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@46) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@24) o_41@@9 f_53@@48))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_11048) (ExhaleHeap@@25 T@PolymorphicMapType_11048) (Mask@@47 T@PolymorphicMapType_11069) (o_13@@0 T@Ref) (f_20@@39 T@Field_21021_21026) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@30 ExhaleHeap@@25 Mask@@47) (=> (HasDirectPerm_5702_37981 Mask@@47 o_13@@0 f_20@@39) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@30) o_13@@0 f_20@@39) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@25) o_13@@0 f_20@@39))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@30 ExhaleHeap@@25 Mask@@47) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@25) o_13@@0 f_20@@39))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_11048) (ExhaleHeap@@26 T@PolymorphicMapType_11048) (Mask@@48 T@PolymorphicMapType_11069) (o_13@@1 T@Ref) (f_20@@40 T@Field_5702_1823) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@31 ExhaleHeap@@26 Mask@@48) (=> (HasDirectPerm_5702_1823 Mask@@48 o_13@@1 f_20@@40) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@31) o_13@@1 f_20@@40) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@26) o_13@@1 f_20@@40))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@31 ExhaleHeap@@26 Mask@@48) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@26) o_13@@1 f_20@@40))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_11048) (ExhaleHeap@@27 T@PolymorphicMapType_11048) (Mask@@49 T@PolymorphicMapType_11069) (o_13@@2 T@Ref) (f_20@@41 T@Field_5702_53) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@32 ExhaleHeap@@27 Mask@@49) (=> (HasDirectPerm_5702_53 Mask@@49 o_13@@2 f_20@@41) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@32) o_13@@2 f_20@@41) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@27) o_13@@2 f_20@@41))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@32 ExhaleHeap@@27 Mask@@49) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@27) o_13@@2 f_20@@41))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_11048) (ExhaleHeap@@28 T@PolymorphicMapType_11048) (Mask@@50 T@PolymorphicMapType_11069) (o_13@@3 T@Ref) (f_20@@42 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@33 ExhaleHeap@@28 Mask@@50) (=> (HasDirectPerm_5702_5703 Mask@@50 o_13@@3 f_20@@42) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@33) o_13@@3 f_20@@42) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@28) o_13@@3 f_20@@42))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@33 ExhaleHeap@@28 Mask@@50) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@28) o_13@@3 f_20@@42))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_11048) (ExhaleHeap@@29 T@PolymorphicMapType_11048) (Mask@@51 T@PolymorphicMapType_11069) (o_13@@4 T@Ref) (f_20@@43 T@Field_5702_5647) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@34 ExhaleHeap@@29 Mask@@51) (=> (HasDirectPerm_5702_5647 Mask@@51 o_13@@4 f_20@@43) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@34) o_13@@4 f_20@@43) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@29) o_13@@4 f_20@@43))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@34 ExhaleHeap@@29 Mask@@51) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@29) o_13@@4 f_20@@43))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_11048) (ExhaleHeap@@30 T@PolymorphicMapType_11048) (Mask@@52 T@PolymorphicMapType_11069) (o_13@@5 T@Ref) (f_20@@44 T@Field_5646_21026) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@35 ExhaleHeap@@30 Mask@@52) (=> (HasDirectPerm_5646_36840 Mask@@52 o_13@@5 f_20@@44) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@35) o_13@@5 f_20@@44) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@30) o_13@@5 f_20@@44))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@35 ExhaleHeap@@30 Mask@@52) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@30) o_13@@5 f_20@@44))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_11048) (ExhaleHeap@@31 T@PolymorphicMapType_11048) (Mask@@53 T@PolymorphicMapType_11069) (o_13@@6 T@Ref) (f_20@@45 T@Field_16857_1823) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@36 ExhaleHeap@@31 Mask@@53) (=> (HasDirectPerm_5646_1823 Mask@@53 o_13@@6 f_20@@45) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@36) o_13@@6 f_20@@45) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@31) o_13@@6 f_20@@45))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@36 ExhaleHeap@@31 Mask@@53) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@31) o_13@@6 f_20@@45))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_11048) (ExhaleHeap@@32 T@PolymorphicMapType_11048) (Mask@@54 T@PolymorphicMapType_11069) (o_13@@7 T@Ref) (f_20@@46 T@Field_11108_53) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@37 ExhaleHeap@@32 Mask@@54) (=> (HasDirectPerm_5646_53 Mask@@54 o_13@@7 f_20@@46) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@37) o_13@@7 f_20@@46) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@32) o_13@@7 f_20@@46))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@37 ExhaleHeap@@32 Mask@@54) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@32) o_13@@7 f_20@@46))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_11048) (ExhaleHeap@@33 T@PolymorphicMapType_11048) (Mask@@55 T@PolymorphicMapType_11069) (o_13@@8 T@Ref) (f_20@@47 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@38 ExhaleHeap@@33 Mask@@55) (=> (HasDirectPerm_5646_5703 Mask@@55 o_13@@8 f_20@@47) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@38) o_13@@8 f_20@@47) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@33) o_13@@8 f_20@@47))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@38 ExhaleHeap@@33 Mask@@55) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@33) o_13@@8 f_20@@47))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_11048) (ExhaleHeap@@34 T@PolymorphicMapType_11048) (Mask@@56 T@PolymorphicMapType_11069) (o_13@@9 T@Ref) (f_20@@48 T@Field_11121_11122) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@39 ExhaleHeap@@34 Mask@@56) (=> (HasDirectPerm_5646_5647 Mask@@56 o_13@@9 f_20@@48) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@39) o_13@@9 f_20@@48) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@34) o_13@@9 f_20@@48))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@39 ExhaleHeap@@34 Mask@@56) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@34) o_13@@9 f_20@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_5646_21026) ) (! (= (select (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_11108_53) ) (! (= (select (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_16857_1823) ) (! (= (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_11121_11122) ) (! (= (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_5646_5703) ) (! (= (select (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_21021_21026) ) (! (= (select (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_5702_53) ) (! (= (select (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_5702_1823) ) (! (= (select (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_5702_5647) ) (! (= (select (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_17286_17287) ) (! (= (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11069) (SummandMask1 T@PolymorphicMapType_11069) (SummandMask2 T@PolymorphicMapType_11069) (o_2@@39 T@Ref) (f_4@@39 T@Field_5646_21026) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11069) (SummandMask1@@0 T@PolymorphicMapType_11069) (SummandMask2@@0 T@PolymorphicMapType_11069) (o_2@@40 T@Ref) (f_4@@40 T@Field_11108_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11069) (SummandMask1@@1 T@PolymorphicMapType_11069) (SummandMask2@@1 T@PolymorphicMapType_11069) (o_2@@41 T@Ref) (f_4@@41 T@Field_16857_1823) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11069) (SummandMask1@@2 T@PolymorphicMapType_11069) (SummandMask2@@2 T@PolymorphicMapType_11069) (o_2@@42 T@Ref) (f_4@@42 T@Field_11121_11122) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11069) (SummandMask1@@3 T@PolymorphicMapType_11069) (SummandMask2@@3 T@PolymorphicMapType_11069) (o_2@@43 T@Ref) (f_4@@43 T@Field_5646_5703) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_11069) (SummandMask1@@4 T@PolymorphicMapType_11069) (SummandMask2@@4 T@PolymorphicMapType_11069) (o_2@@44 T@Ref) (f_4@@44 T@Field_21021_21026) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_11069) (SummandMask1@@5 T@PolymorphicMapType_11069) (SummandMask2@@5 T@PolymorphicMapType_11069) (o_2@@45 T@Ref) (f_4@@45 T@Field_5702_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_11069) (SummandMask1@@6 T@PolymorphicMapType_11069) (SummandMask2@@6 T@PolymorphicMapType_11069) (o_2@@46 T@Ref) (f_4@@46 T@Field_5702_1823) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_11069) (SummandMask1@@7 T@PolymorphicMapType_11069) (SummandMask2@@7 T@PolymorphicMapType_11069) (o_2@@47 T@Ref) (f_4@@47 T@Field_5702_5647) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_11069) (SummandMask1@@8 T@PolymorphicMapType_11069) (SummandMask2@@8 T@PolymorphicMapType_11069) (o_2@@48 T@Ref) (f_4@@48 T@Field_17286_17287) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_11048) (Heap1@@1 T@PolymorphicMapType_11048) (Mask1 T@PolymorphicMapType_11069) (Heap2@@0 T@PolymorphicMapType_11048) (Mask2 T@PolymorphicMapType_11069) ) (! (= (SumHeap Heap@@40 Heap1@@1 Mask1 Heap2@@0 Mask2)  (and (IdenticalOnKnownLocationsLiberal Heap1@@1 Heap@@40 Mask1) (IdenticalOnKnownLocationsLiberal Heap2@@0 Heap@@40 Mask2)))
 :qid |stdinbpl.150:15|
 :skolemid |24|
 :pattern ( (SumHeap Heap@@40 Heap1@@1 Mask1 Heap2@@0 Mask2))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_11048) (Mask@@57 T@PolymorphicMapType_11069) (this@@6 T@Ref) ) (!  (=> (state Heap@@41 Mask@@57) (= (|silver_length'| Heap@@41 this@@6) (|silver_length#frame| (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@41) null (valid__List this@@6)) this@@6)))
 :qid |stdinbpl.305:15|
 :skolemid |39|
 :pattern ( (state Heap@@41 Mask@@57) (|silver_length'| Heap@@41 this@@6))
 :pattern ( (state Heap@@41 Mask@@57) (|silver_length#triggerStateless| this@@6) (|valid__List#trigger_5702| Heap@@41 (valid__List this@@6)))
)))
(assert (forall ((this@@7 T@Ref) ) (! (= (getPredWandId_5702_5703 (valid__List this@@7)) 0)
 :qid |stdinbpl.467:15|
 :skolemid |44|
 :pattern ( (valid__List this@@7))
)))
(assert (forall ((x@@0 T@Ref) ) (!  (or (= (variantOfList x@@0) fn$$List__Node) (= (variantOfList x@@0) fn$$List__Nil))
 :qid |stdinbpl.256:15|
 :skolemid |34|
 :pattern ( (variantOfList x@@0))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_11048) (ExhaleHeap@@35 T@PolymorphicMapType_11048) (Mask@@58 T@PolymorphicMapType_11069) (pm_f_4@@3 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@42 ExhaleHeap@@35 Mask@@58) (=> (and (HasDirectPerm_5702_5703 Mask@@58 null pm_f_4@@3) (IsPredicateField_5702_5703 pm_f_4@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_4@@39 T@Ref) (f_20@@49 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@39 f_20@@49) (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@39 f_20@@49))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@39 f_20@@49))
)) (forall ((o2_4@@40 T@Ref) (f_20@@50 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@40 f_20@@50) (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@40 f_20@@50))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@40 f_20@@50))
))) (forall ((o2_4@@41 T@Ref) (f_20@@51 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@41 f_20@@51) (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@41 f_20@@51))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@41 f_20@@51))
))) (forall ((o2_4@@42 T@Ref) (f_20@@52 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@42 f_20@@52) (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@42 f_20@@52))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@42 f_20@@52))
))) (forall ((o2_4@@43 T@Ref) (f_20@@53 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@43 f_20@@53) (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@43 f_20@@53))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@43 f_20@@53))
))) (forall ((o2_4@@44 T@Ref) (f_20@@54 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@44 f_20@@54) (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@44 f_20@@54))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@44 f_20@@54))
))) (forall ((o2_4@@45 T@Ref) (f_20@@55 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@45 f_20@@55) (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@45 f_20@@55))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@45 f_20@@55))
))) (forall ((o2_4@@46 T@Ref) (f_20@@56 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@46 f_20@@56) (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@46 f_20@@56))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@46 f_20@@56))
))) (forall ((o2_4@@47 T@Ref) (f_20@@57 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@47 f_20@@57) (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@47 f_20@@57))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@47 f_20@@57))
))) (forall ((o2_4@@48 T@Ref) (f_20@@58 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@48 f_20@@58) (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@48 f_20@@58))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3))) o2_4@@48 f_20@@58))
)))))
 :qid |stdinbpl.110:19|
 :skolemid |16|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@42 ExhaleHeap@@35 Mask@@58) (IsPredicateField_5702_5703 pm_f_4@@3) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_4@@3)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_11048) (ExhaleHeap@@36 T@PolymorphicMapType_11048) (Mask@@59 T@PolymorphicMapType_11069) (pm_f_4@@4 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@43 ExhaleHeap@@36 Mask@@59) (=> (and (HasDirectPerm_5646_5703 Mask@@59 null pm_f_4@@4) (IsPredicateField_5646_38226 pm_f_4@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_4@@49 T@Ref) (f_20@@59 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@49 f_20@@59) (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@49 f_20@@59))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@49 f_20@@59))
)) (forall ((o2_4@@50 T@Ref) (f_20@@60 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@50 f_20@@60) (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@50 f_20@@60))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@50 f_20@@60))
))) (forall ((o2_4@@51 T@Ref) (f_20@@61 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@51 f_20@@61) (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@51 f_20@@61))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@51 f_20@@61))
))) (forall ((o2_4@@52 T@Ref) (f_20@@62 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@52 f_20@@62) (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@52 f_20@@62))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@52 f_20@@62))
))) (forall ((o2_4@@53 T@Ref) (f_20@@63 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@53 f_20@@63) (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@53 f_20@@63))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@53 f_20@@63))
))) (forall ((o2_4@@54 T@Ref) (f_20@@64 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@54 f_20@@64) (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@54 f_20@@64))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@54 f_20@@64))
))) (forall ((o2_4@@55 T@Ref) (f_20@@65 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@55 f_20@@65) (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@55 f_20@@65))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@55 f_20@@65))
))) (forall ((o2_4@@56 T@Ref) (f_20@@66 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@56 f_20@@66) (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@56 f_20@@66))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@56 f_20@@66))
))) (forall ((o2_4@@57 T@Ref) (f_20@@67 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@57 f_20@@67) (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@57 f_20@@67))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@57 f_20@@67))
))) (forall ((o2_4@@58 T@Ref) (f_20@@68 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@58 f_20@@68) (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@58 f_20@@68))
 :qid |stdinbpl.112:145|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4))) o2_4@@58 f_20@@68))
)))))
 :qid |stdinbpl.110:19|
 :skolemid |16|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@43 ExhaleHeap@@36 Mask@@59) (IsPredicateField_5646_38226 pm_f_4@@4) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_4@@4)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_11048) (ExhaleHeap@@37 T@PolymorphicMapType_11048) (Mask@@60 T@PolymorphicMapType_11069) (pm_f_4@@5 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@44 ExhaleHeap@@37 Mask@@60) (=> (and (HasDirectPerm_5702_5703 Mask@@60 null pm_f_4@@5) (IsWandField_5702_41896 pm_f_4@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_4@@59 T@Ref) (f_20@@69 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@59 f_20@@69) (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@59 f_20@@69))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@59 f_20@@69))
)) (forall ((o2_4@@60 T@Ref) (f_20@@70 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@60 f_20@@70) (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@60 f_20@@70))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@60 f_20@@70))
))) (forall ((o2_4@@61 T@Ref) (f_20@@71 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@61 f_20@@71) (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@61 f_20@@71))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@61 f_20@@71))
))) (forall ((o2_4@@62 T@Ref) (f_20@@72 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@62 f_20@@72) (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@62 f_20@@72))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@62 f_20@@72))
))) (forall ((o2_4@@63 T@Ref) (f_20@@73 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@63 f_20@@73) (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@63 f_20@@73))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@63 f_20@@73))
))) (forall ((o2_4@@64 T@Ref) (f_20@@74 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@64 f_20@@74) (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@64 f_20@@74))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@64 f_20@@74))
))) (forall ((o2_4@@65 T@Ref) (f_20@@75 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@65 f_20@@75) (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@65 f_20@@75))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@65 f_20@@75))
))) (forall ((o2_4@@66 T@Ref) (f_20@@76 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@66 f_20@@76) (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@66 f_20@@76))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@66 f_20@@76))
))) (forall ((o2_4@@67 T@Ref) (f_20@@77 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@67 f_20@@77) (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@67 f_20@@77))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@67 f_20@@77))
))) (forall ((o2_4@@68 T@Ref) (f_20@@78 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@68 f_20@@78) (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@68 f_20@@78))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5))) o2_4@@68 f_20@@78))
)))))
 :qid |stdinbpl.126:19|
 :skolemid |20|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@44 ExhaleHeap@@37 Mask@@60) (IsWandField_5702_41896 pm_f_4@@5) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_4@@5)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_11048) (ExhaleHeap@@38 T@PolymorphicMapType_11048) (Mask@@61 T@PolymorphicMapType_11069) (pm_f_4@@6 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@45 ExhaleHeap@@38 Mask@@61) (=> (and (HasDirectPerm_5646_5703 Mask@@61 null pm_f_4@@6) (IsWandField_5646_41539 pm_f_4@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_4@@69 T@Ref) (f_20@@79 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@69 f_20@@79) (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@69 f_20@@79))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@69 f_20@@79))
)) (forall ((o2_4@@70 T@Ref) (f_20@@80 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@70 f_20@@80) (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@70 f_20@@80))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@70 f_20@@80))
))) (forall ((o2_4@@71 T@Ref) (f_20@@81 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@71 f_20@@81) (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@71 f_20@@81))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@71 f_20@@81))
))) (forall ((o2_4@@72 T@Ref) (f_20@@82 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@72 f_20@@82) (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@72 f_20@@82))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@72 f_20@@82))
))) (forall ((o2_4@@73 T@Ref) (f_20@@83 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@73 f_20@@83) (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@73 f_20@@83))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@73 f_20@@83))
))) (forall ((o2_4@@74 T@Ref) (f_20@@84 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@74 f_20@@84) (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@74 f_20@@84))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@74 f_20@@84))
))) (forall ((o2_4@@75 T@Ref) (f_20@@85 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@75 f_20@@85) (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@75 f_20@@85))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@75 f_20@@85))
))) (forall ((o2_4@@76 T@Ref) (f_20@@86 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@76 f_20@@86) (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@76 f_20@@86))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@76 f_20@@86))
))) (forall ((o2_4@@77 T@Ref) (f_20@@87 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@77 f_20@@87) (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@77 f_20@@87))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@77 f_20@@87))
))) (forall ((o2_4@@78 T@Ref) (f_20@@88 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@78 f_20@@88) (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@78 f_20@@88))
 :qid |stdinbpl.128:140|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6))) o2_4@@78 f_20@@88))
)))))
 :qid |stdinbpl.126:19|
 :skolemid |20|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@45 ExhaleHeap@@38 Mask@@61) (IsWandField_5646_41539 pm_f_4@@6) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_4@@6)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_11048) (Mask@@62 T@PolymorphicMapType_11069) (this@@8 T@Ref) ) (!  (=> (and (state Heap@@46 Mask@@62) (or (< AssumeFunctionsAbove 0) (|silver_length#trigger| (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@46) null (valid__List this@@8)) this@@8))) (>= (|silver_length'| Heap@@46 this@@8) 0))
 :qid |stdinbpl.311:15|
 :skolemid |40|
 :pattern ( (state Heap@@46 Mask@@62) (|silver_length'| Heap@@46 this@@8))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_11048) (o_15 T@Ref) (f_54 T@Field_21021_21026) (v T@PolymorphicMapType_11613) ) (! (succHeap Heap@@47 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@47) (store (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@47) o_15 f_54 v) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@47)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@47) (store (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@47) o_15 f_54 v) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_11048) (o_15@@0 T@Ref) (f_54@@0 T@Field_5702_1823) (v@@0 Int) ) (! (succHeap Heap@@48 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@48) (store (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@48) o_15@@0 f_54@@0 v@@0)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@48) (store (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@48) o_15@@0 f_54@@0 v@@0)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_11048) (o_15@@1 T@Ref) (f_54@@1 T@Field_17286_17287) (v@@1 T@FrameType) ) (! (succHeap Heap@@49 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@49) (store (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@49) o_15@@1 f_54@@1 v@@1) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@49)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@49) (store (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@49) o_15@@1 f_54@@1 v@@1) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_11048) (o_15@@2 T@Ref) (f_54@@2 T@Field_5702_5647) (v@@2 T@Ref) ) (! (succHeap Heap@@50 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@50) (store (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@50) o_15@@2 f_54@@2 v@@2) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@50)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@50) (store (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@50) o_15@@2 f_54@@2 v@@2) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_11048) (o_15@@3 T@Ref) (f_54@@3 T@Field_5702_53) (v@@3 Bool) ) (! (succHeap Heap@@51 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@51) (store (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@51) o_15@@3 f_54@@3 v@@3) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@51)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@51) (store (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@51) o_15@@3 f_54@@3 v@@3) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_11048) (o_15@@4 T@Ref) (f_54@@4 T@Field_5646_21026) (v@@4 T@PolymorphicMapType_11613) ) (! (succHeap Heap@@52 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@52) (store (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@52) o_15@@4 f_54@@4 v@@4) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@52)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@52) (store (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@52) o_15@@4 f_54@@4 v@@4) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_11048) (o_15@@5 T@Ref) (f_54@@5 T@Field_16857_1823) (v@@5 Int) ) (! (succHeap Heap@@53 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@53) (store (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@53) o_15@@5 f_54@@5 v@@5) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@53)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@53) (store (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@53) o_15@@5 f_54@@5 v@@5) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_11048) (o_15@@6 T@Ref) (f_54@@6 T@Field_5646_5703) (v@@6 T@FrameType) ) (! (succHeap Heap@@54 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@54) (store (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@54) o_15@@6 f_54@@6 v@@6) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@54)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@54) (store (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@54) o_15@@6 f_54@@6 v@@6) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_11048) (o_15@@7 T@Ref) (f_54@@7 T@Field_11121_11122) (v@@7 T@Ref) ) (! (succHeap Heap@@55 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@55) (store (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@55) o_15@@7 f_54@@7 v@@7) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@55)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@55) (store (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@55) o_15@@7 f_54@@7 v@@7) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_11048) (o_15@@8 T@Ref) (f_54@@8 T@Field_11108_53) (v@@8 Bool) ) (! (succHeap Heap@@56 (PolymorphicMapType_11048 (store (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@56) o_15@@8 f_54@@8 v@@8) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@56)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (store (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@56) o_15@@8 f_54@@8 v@@8) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@56)))
)))
(assert (forall ((this@@9 T@Ref) ) (! (= (PredicateMaskField_5702 (valid__List this@@9)) (|valid__List#sm| this@@9))
 :qid |stdinbpl.459:15|
 :skolemid |42|
 :pattern ( (PredicateMaskField_5702 (valid__List this@@9)))
)))
(assert (forall ((o_15@@9 T@Ref) (f_23 T@Field_11121_11122) (Heap@@57 T@PolymorphicMapType_11048) ) (!  (=> (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@57) o_15@@9 $allocated) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@57) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@57) o_15@@9 f_23) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@57) o_15@@9 f_23))
)))
(assert (forall ((p@@2 T@Field_5646_5703) (v_1@@1 T@FrameType) (q T@Field_5646_5703) (w@@1 T@FrameType) (r T@Field_5646_5703) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11108_11108 p@@2 v_1@@1 q w@@1) (InsidePredicate_11108_11108 q w@@1 r u)) (InsidePredicate_11108_11108 p@@2 v_1@@1 r u))
 :qid |stdinbpl.226:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_11108_11108 p@@2 v_1@@1 q w@@1) (InsidePredicate_11108_11108 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_5646_5703) (v_1@@2 T@FrameType) (q@@0 T@Field_5646_5703) (w@@2 T@FrameType) (r@@0 T@Field_17286_17287) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_11108_11108 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11108_5702 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_11108_5702 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.226:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_11108_11108 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11108_5702 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_5646_5703) (v_1@@3 T@FrameType) (q@@1 T@Field_17286_17287) (w@@3 T@FrameType) (r@@1 T@Field_5646_5703) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_11108_5702 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_5702_11108 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_11108_11108 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.226:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_11108_5702 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_5702_11108 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_5646_5703) (v_1@@4 T@FrameType) (q@@2 T@Field_17286_17287) (w@@4 T@FrameType) (r@@2 T@Field_17286_17287) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_11108_5702 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_5702_5702 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_11108_5702 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.226:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_11108_5702 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_5702_5702 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_17286_17287) (v_1@@5 T@FrameType) (q@@3 T@Field_5646_5703) (w@@5 T@FrameType) (r@@3 T@Field_5646_5703) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_5702_11108 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11108_11108 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_5702_11108 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.226:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_5702_11108 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11108_11108 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_17286_17287) (v_1@@6 T@FrameType) (q@@4 T@Field_5646_5703) (w@@6 T@FrameType) (r@@4 T@Field_17286_17287) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_5702_11108 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11108_5702 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_5702_5702 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.226:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_5702_11108 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11108_5702 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_17286_17287) (v_1@@7 T@FrameType) (q@@5 T@Field_17286_17287) (w@@7 T@FrameType) (r@@5 T@Field_5646_5703) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_5702_5702 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_5702_11108 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_5702_11108 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.226:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_5702_5702 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_5702_11108 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_17286_17287) (v_1@@8 T@FrameType) (q@@6 T@Field_17286_17287) (w@@8 T@FrameType) (r@@6 T@Field_17286_17287) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_5702_5702 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_5702_5702 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_5702_5702 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.226:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_5702_5702 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_5702_5702 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@7 () T@PolymorphicMapType_11048)
(declare-fun Mask@0 () T@PolymorphicMapType_11069)
(declare-fun Result@0 () Int)
(declare-fun this@@10 () T@Ref)
(declare-fun Heap@4 () T@PolymorphicMapType_11048)
(declare-fun Heap@5 () T@PolymorphicMapType_11048)
(declare-fun Heap@6 () T@PolymorphicMapType_11048)
(declare-fun Heap@0 () T@PolymorphicMapType_11048)
(declare-fun Heap@1 () T@PolymorphicMapType_11048)
(declare-fun Heap@2 () T@PolymorphicMapType_11048)
(declare-fun newPMask@0 () T@PolymorphicMapType_11613)
(declare-fun Heap@3 () T@PolymorphicMapType_11048)
(declare-fun Heap@@58 () T@PolymorphicMapType_11048)
(declare-fun UnfoldingMask@7 () T@PolymorphicMapType_11069)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_11069)
(declare-fun wildcard@5 () Real)
(declare-fun UnfoldingMask@5 () T@PolymorphicMapType_11069)
(declare-fun wildcard@6 () Real)
(declare-fun UnfoldingMask@6 () T@PolymorphicMapType_11069)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_11069)
(declare-fun wildcard@2 () Real)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_11069)
(declare-fun wildcard@3 () Real)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_11069)
(declare-fun wildcard@4 () Real)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_11069)
(declare-fun wildcard@0 () Real)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_5647 (T@Ref) T@FrameType)
(declare-fun FrameFragment_5611 (T@FrameType) T@FrameType)
(declare-fun FrameFragment_1823 (Int) T@FrameType)
(declare-fun wildcard@1 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id |silver_length#definedness|)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon13_correct  (=> (state Heap@7 Mask@0) (=> (and (= Result@0 (ite (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@7) this@@10 List__variant)) fn$$List__Nil) 0 (+ 1 (silver_length Heap@7 (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@7) this@@10 List__Node__1))))) (= (ControlFlow 0 4) (- 0 3))) (>= Result@0 0)))))
(let ((anon19_Else_correct  (=> (not (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@4) this@@10 List__variant)) fn$$List__Nil)) (=> (and (= Heap@7 Heap@4) (= (ControlFlow 0 6) 4)) anon13_correct))))
(let ((anon19_Then_correct  (=> (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@4) this@@10 List__variant)) fn$$List__Nil) (=> (and (and (= Heap@5 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@4) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@4) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@4) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@4) (store (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| this@@10) (PolymorphicMapType_11613 (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| this@@10))) (store (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| this@@10))) this@@10 List__Node__0 true) (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| this@@10))))) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@4) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@4) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@4) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@4) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@4))) (= Heap@6 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@5) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@5) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@5) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@5) (store (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| this@@10) (PolymorphicMapType_11613 (store (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| this@@10))) this@@10 List__Node__1 true) (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| this@@10))))) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@5) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@5) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@5) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@5) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@5)))) (and (= Heap@7 Heap@6) (= (ControlFlow 0 5) 4))) anon13_correct))))
(let ((anon18_Else_correct  (=> (and (not (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@0) this@@10 List__variant)) fn$$List__Node)) (= Heap@4 Heap@0)) (and (=> (= (ControlFlow 0 8) 5) anon19_Then_correct) (=> (= (ControlFlow 0 8) 6) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@0) this@@10 List__variant)) fn$$List__Node) (=> (and (= Heap@1 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@0) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@0) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@0) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@0) (store (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@0) null (|valid__List#sm| this@@10) (PolymorphicMapType_11613 (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@0) null (|valid__List#sm| this@@10))) (store (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@0) null (|valid__List#sm| this@@10))) this@@10 List__Node__0 true) (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@0) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@0) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@0) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@0) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@0) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@0) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@0) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@0) null (|valid__List#sm| this@@10))))) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@0) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@0) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@0) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@0) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@0))) (= Heap@2 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@1) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@1) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@1) (store (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@1) null (|valid__List#sm| this@@10) (PolymorphicMapType_11613 (store (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@1) null (|valid__List#sm| this@@10))) this@@10 List__Node__1 true) (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@1) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@1) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@1) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@1) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@1) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@1) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@1) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@1) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@1) null (|valid__List#sm| this@@10))))) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@1) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@1) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@1) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@1) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@1)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_5 T@Ref) (f_11 T@Field_11121_11122) ) (!  (=> (or (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| this@@10))) o_5 f_11) (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@2) this@@10 List__Node__1)))) o_5 f_11)) (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| newPMask@0) o_5 f_11))
 :qid |stdinbpl.430:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| newPMask@0) o_5 f_11))
)) (forall ((o_5@@0 T@Ref) (f_11@@0 T@Field_16857_1823) ) (!  (=> (or (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| this@@10))) o_5@@0 f_11@@0) (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@2) this@@10 List__Node__1)))) o_5@@0 f_11@@0)) (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| newPMask@0) o_5@@0 f_11@@0))
 :qid |stdinbpl.430:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| newPMask@0) o_5@@0 f_11@@0))
))) (forall ((o_5@@1 T@Ref) (f_11@@1 T@Field_11108_53) ) (!  (=> (or (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| this@@10))) o_5@@1 f_11@@1) (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@2) this@@10 List__Node__1)))) o_5@@1 f_11@@1)) (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| newPMask@0) o_5@@1 f_11@@1))
 :qid |stdinbpl.430:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| newPMask@0) o_5@@1 f_11@@1))
))) (forall ((o_5@@2 T@Ref) (f_11@@2 T@Field_5646_5703) ) (!  (=> (or (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| this@@10))) o_5@@2 f_11@@2) (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@2) this@@10 List__Node__1)))) o_5@@2 f_11@@2)) (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| newPMask@0) o_5@@2 f_11@@2))
 :qid |stdinbpl.430:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| newPMask@0) o_5@@2 f_11@@2))
))) (forall ((o_5@@3 T@Ref) (f_11@@3 T@Field_5646_21026) ) (!  (=> (or (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| this@@10))) o_5@@3 f_11@@3) (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@2) this@@10 List__Node__1)))) o_5@@3 f_11@@3)) (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| newPMask@0) o_5@@3 f_11@@3))
 :qid |stdinbpl.430:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| newPMask@0) o_5@@3 f_11@@3))
))) (forall ((o_5@@4 T@Ref) (f_11@@4 T@Field_5702_5647) ) (!  (=> (or (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| this@@10))) o_5@@4 f_11@@4) (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@2) this@@10 List__Node__1)))) o_5@@4 f_11@@4)) (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| newPMask@0) o_5@@4 f_11@@4))
 :qid |stdinbpl.430:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| newPMask@0) o_5@@4 f_11@@4))
))) (forall ((o_5@@5 T@Ref) (f_11@@5 T@Field_5702_1823) ) (!  (=> (or (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| this@@10))) o_5@@5 f_11@@5) (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@2) this@@10 List__Node__1)))) o_5@@5 f_11@@5)) (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| newPMask@0) o_5@@5 f_11@@5))
 :qid |stdinbpl.430:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| newPMask@0) o_5@@5 f_11@@5))
))) (forall ((o_5@@6 T@Ref) (f_11@@6 T@Field_5702_53) ) (!  (=> (or (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| this@@10))) o_5@@6 f_11@@6) (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@2) this@@10 List__Node__1)))) o_5@@6 f_11@@6)) (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| newPMask@0) o_5@@6 f_11@@6))
 :qid |stdinbpl.430:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| newPMask@0) o_5@@6 f_11@@6))
))) (forall ((o_5@@7 T@Ref) (f_11@@7 T@Field_17286_17287) ) (!  (=> (or (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| this@@10))) o_5@@7 f_11@@7) (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@2) this@@10 List__Node__1)))) o_5@@7 f_11@@7)) (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| newPMask@0) o_5@@7 f_11@@7))
 :qid |stdinbpl.430:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| newPMask@0) o_5@@7 f_11@@7))
))) (forall ((o_5@@8 T@Ref) (f_11@@8 T@Field_21021_21026) ) (!  (=> (or (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| this@@10))) o_5@@8 f_11@@8) (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@2) this@@10 List__Node__1)))) o_5@@8 f_11@@8)) (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| newPMask@0) o_5@@8 f_11@@8))
 :qid |stdinbpl.430:33|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| newPMask@0) o_5@@8 f_11@@8))
))) (and (= Heap@3 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@2) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@2) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@2) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@2) (store (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) null (|valid__List#sm| this@@10) newPMask@0) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@2) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@2) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@2) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@2) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@2))) (= Heap@4 Heap@3))) (and (=> (= (ControlFlow 0 7) 5) anon19_Then_correct) (=> (= (ControlFlow 0 7) 6) anon19_Else_correct)))))))
(let ((anon9_correct  (=> (= Heap@0 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@58) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@58) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@58) (store (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@58) null (|valid__List#sm| this@@10) (PolymorphicMapType_11613 (store (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@58) null (|valid__List#sm| this@@10))) this@@10 List__variant true) (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@58) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@58) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@58) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@58) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@58) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@58) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@58) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@58) null (|valid__List#sm| this@@10))) (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@58) null (|valid__List#sm| this@@10))))) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@58) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@58) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@58) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@58) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@58))) (and (=> (= (ControlFlow 0 9) 7) anon18_Then_correct) (=> (= (ControlFlow 0 9) 8) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (and (|silver_length#trigger| (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@58) null (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__Node__1))) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__Node__1)) (= (ControlFlow 0 11) 9)) anon9_correct)))
(let ((anon16_Then_correct  (=> (and (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__variant)) fn$$List__Nil) (= (ControlFlow 0 10) 9)) anon9_correct)))
(let ((anon17_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| UnfoldingMask@7) null (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__Node__1))))))))
(let ((anon16_Else_correct  (=> (not (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__variant)) fn$$List__Nil)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_5646_5647 UnfoldingMask@7 this@@10 List__Node__1)) (=> (HasDirectPerm_5646_5647 UnfoldingMask@7 this@@10 List__Node__1) (and (=> (= (ControlFlow 0 12) 2) anon17_Then_correct) (=> (= (ControlFlow 0 12) 11) anon17_Else_correct)))))))
(let ((anon4_correct  (=> (state Heap@@58 UnfoldingMask@7) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_5646_5647 UnfoldingMask@7 this@@10 List__variant)) (=> (HasDirectPerm_5646_5647 UnfoldingMask@7 this@@10 List__variant) (and (=> (= (ControlFlow 0 14) 10) anon16_Then_correct) (=> (= (ControlFlow 0 14) 12) anon16_Else_correct)))))))
(let ((anon15_Else_correct  (=> (not (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__variant)) fn$$List__Nil)) (=> (and (= UnfoldingMask@7 UnfoldingMask@4) (= (ControlFlow 0 17) 14)) anon4_correct))))
(let ((anon15_Then_correct  (=> (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__variant)) fn$$List__Nil) (=> (and (> wildcard@5 NoPerm) (not (= this@@10 null))) (=> (and (and (and (= UnfoldingMask@5 (PolymorphicMapType_11069 (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| UnfoldingMask@4) (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| UnfoldingMask@4) (store (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| UnfoldingMask@4) this@@10 List__Node__0 (+ (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| UnfoldingMask@4) this@@10 List__Node__0) wildcard@5)) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| UnfoldingMask@4) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| UnfoldingMask@4) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| UnfoldingMask@4) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| UnfoldingMask@4) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| UnfoldingMask@4) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| UnfoldingMask@4) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| UnfoldingMask@4))) (state Heap@@58 UnfoldingMask@5)) (and (> wildcard@6 NoPerm) (not (= this@@10 null)))) (and (and (= UnfoldingMask@6 (PolymorphicMapType_11069 (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| UnfoldingMask@5) (store (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| UnfoldingMask@5) this@@10 List__Node__1 (+ (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| UnfoldingMask@5) this@@10 List__Node__1) wildcard@6)) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| UnfoldingMask@5) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| UnfoldingMask@5) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| UnfoldingMask@5) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| UnfoldingMask@5) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| UnfoldingMask@5) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| UnfoldingMask@5) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| UnfoldingMask@5) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| UnfoldingMask@5))) (state Heap@@58 UnfoldingMask@6)) (and (= UnfoldingMask@7 UnfoldingMask@6) (= (ControlFlow 0 16) 14)))) anon4_correct)))))
(let ((anon14_Else_correct  (=> (and (not (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__variant)) fn$$List__Node)) (= UnfoldingMask@4 UnfoldingMask@0)) (and (=> (= (ControlFlow 0 19) 16) anon15_Then_correct) (=> (= (ControlFlow 0 19) 17) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (and (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__variant)) fn$$List__Node) (> wildcard@2 NoPerm)) (=> (and (and (not (= this@@10 null)) (= UnfoldingMask@1 (PolymorphicMapType_11069 (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| UnfoldingMask@0) (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| UnfoldingMask@0) (store (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| UnfoldingMask@0) this@@10 List__Node__0 (+ (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| UnfoldingMask@0) this@@10 List__Node__0) wildcard@2)) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| UnfoldingMask@0) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| UnfoldingMask@0) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| UnfoldingMask@0) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| UnfoldingMask@0) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| UnfoldingMask@0) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| UnfoldingMask@0) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| UnfoldingMask@0)))) (and (state Heap@@58 UnfoldingMask@1) (> wildcard@3 NoPerm))) (=> (and (and (and (not (= this@@10 null)) (= UnfoldingMask@2 (PolymorphicMapType_11069 (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| UnfoldingMask@1) (store (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| UnfoldingMask@1) this@@10 List__Node__1 (+ (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| UnfoldingMask@1) this@@10 List__Node__1) wildcard@3)) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| UnfoldingMask@1) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| UnfoldingMask@1) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| UnfoldingMask@1) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| UnfoldingMask@1) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| UnfoldingMask@1) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| UnfoldingMask@1) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| UnfoldingMask@1) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| UnfoldingMask@1)))) (and (state Heap@@58 UnfoldingMask@2) (> wildcard@4 NoPerm))) (and (and (= UnfoldingMask@3 (PolymorphicMapType_11069 (store (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| UnfoldingMask@2) null (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__Node__1)) (+ (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| UnfoldingMask@2) null (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__Node__1))) wildcard@4)) (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| UnfoldingMask@2) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| UnfoldingMask@2) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| UnfoldingMask@2) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| UnfoldingMask@2) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| UnfoldingMask@2) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| UnfoldingMask@2) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| UnfoldingMask@2) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| UnfoldingMask@2) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| UnfoldingMask@2))) (InsidePredicate_5702_5702 (valid__List this@@10) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@58) null (valid__List this@@10)) (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__Node__1)) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@58) null (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__Node__1))))) (and (state Heap@@58 UnfoldingMask@3) (= UnfoldingMask@4 UnfoldingMask@3)))) (and (=> (= (ControlFlow 0 18) 16) anon15_Then_correct) (=> (= (ControlFlow 0 18) 17) anon15_Else_correct)))))))
(let ((anon0_correct  (=> (and (state Heap@@58 ZeroMask) (not AssumePermUpperBound)) (=> (and (and (and (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@58) this@@10 $allocated) (= AssumeFunctionsAbove 0)) (and (> wildcard@0 NoPerm) (= Mask@0 (PolymorphicMapType_11069 (store (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| ZeroMask) null (valid__List this@@10) (+ (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| ZeroMask) null (valid__List this@@10)) wildcard@0)) (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| ZeroMask))))) (and (and (state Heap@@58 Mask@0) (state Heap@@58 Mask@0)) (and (|valid__List#trigger_5702| Heap@@58 (valid__List this@@10)) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@58) null (valid__List this@@10)) (CombineFrames (FrameFragment_5647 (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__variant)) (CombineFrames (FrameFragment_5611 (ite (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__variant)) fn$$List__Node) (CombineFrames (FrameFragment_1823 (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@58) this@@10 List__Node__0)) (CombineFrames (FrameFragment_5647 (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__Node__1)) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@58) null (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__Node__1))))) EmptyFrame)) (FrameFragment_5611 (ite (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__variant)) fn$$List__Nil) (CombineFrames (FrameFragment_1823 (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@58) this@@10 List__Node__0)) (FrameFragment_5647 (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__Node__1))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@0) null (valid__List this@@10))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@0) null (valid__List this@@10)))) (=> (> wildcard@1 NoPerm) (=> (and (and (not (= this@@10 null)) (= UnfoldingMask@0 (PolymorphicMapType_11069 (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@0) (store (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@0) this@@10 List__variant (+ (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@0) this@@10 List__variant) wildcard@1)) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@0) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@0) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@0) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@0) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@0) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@0) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@0) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@0)))) (and (state Heap@@58 UnfoldingMask@0) (isList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@58) this@@10 List__variant)))) (and (=> (= (ControlFlow 0 20) 18) anon14_Then_correct) (=> (= (ControlFlow 0 20) 19) anon14_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 22) 20)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
