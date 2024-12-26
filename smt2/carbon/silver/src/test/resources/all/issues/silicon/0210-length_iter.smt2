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
(assert (forall ((Heap@@4 T@PolymorphicMapType_11048) (ExhaleHeap T@PolymorphicMapType_11048) (Mask@@1 T@PolymorphicMapType_11069) (pm_f_22 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_5702_5703 Mask@@1 null pm_f_22) (IsPredicateField_5702_5703 pm_f_22)) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@4) null (PredicateMaskField_5702 pm_f_22)) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap) null (PredicateMaskField_5702 pm_f_22)))))
 :qid |stdinbpl.49:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_5702_5703 pm_f_22) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap) null (PredicateMaskField_5702 pm_f_22)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11048) (ExhaleHeap@@0 T@PolymorphicMapType_11048) (Mask@@2 T@PolymorphicMapType_11069) (pm_f_22@@0 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_5646_5703 Mask@@2 null pm_f_22@@0) (IsPredicateField_5646_38226 pm_f_22@@0)) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@5) null (PredicateMaskField_5646 pm_f_22@@0)) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@0) null (PredicateMaskField_5646 pm_f_22@@0)))))
 :qid |stdinbpl.49:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsPredicateField_5646_38226 pm_f_22@@0) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@0) null (PredicateMaskField_5646 pm_f_22@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11048) (ExhaleHeap@@1 T@PolymorphicMapType_11048) (Mask@@3 T@PolymorphicMapType_11069) (pm_f_22@@1 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_5702_5703 Mask@@3 null pm_f_22@@1) (IsWandField_5702_41896 pm_f_22@@1)) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@6) null (WandMaskField_5702 pm_f_22@@1)) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@1) null (WandMaskField_5702 pm_f_22@@1)))))
 :qid |stdinbpl.62:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (IsWandField_5702_41896 pm_f_22@@1) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@1) null (WandMaskField_5702 pm_f_22@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11048) (ExhaleHeap@@2 T@PolymorphicMapType_11048) (Mask@@4 T@PolymorphicMapType_11069) (pm_f_22@@2 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_5646_5703 Mask@@4 null pm_f_22@@2) (IsWandField_5646_41539 pm_f_22@@2)) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@7) null (WandMaskField_5646 pm_f_22@@2)) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@2) null (WandMaskField_5646 pm_f_22@@2)))))
 :qid |stdinbpl.62:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (IsWandField_5646_41539 pm_f_22@@2) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@2) null (WandMaskField_5646 pm_f_22@@2)))
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
(assert (forall ((Heap@@8 T@PolymorphicMapType_11048) (ExhaleHeap@@3 T@PolymorphicMapType_11048) (Mask@@5 T@PolymorphicMapType_11069) (pm_f_22@@3 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_5702_5703 Mask@@5 null pm_f_22@@3) (IsPredicateField_5702_5703 pm_f_22@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_22 T@Ref) (f_37 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_22@@3))) o2_22 f_37) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@8) o2_22 f_37) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22 f_37)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22 f_37))
)) (forall ((o2_22@@0 T@Ref) (f_37@@0 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_22@@3))) o2_22@@0 f_37@@0) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@8) o2_22@@0 f_37@@0) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22@@0 f_37@@0)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22@@0 f_37@@0))
))) (forall ((o2_22@@1 T@Ref) (f_37@@1 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_22@@3))) o2_22@@1 f_37@@1) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@8) o2_22@@1 f_37@@1) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22@@1 f_37@@1)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22@@1 f_37@@1))
))) (forall ((o2_22@@2 T@Ref) (f_37@@2 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_22@@3))) o2_22@@2 f_37@@2) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@8) o2_22@@2 f_37@@2) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22@@2 f_37@@2)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22@@2 f_37@@2))
))) (forall ((o2_22@@3 T@Ref) (f_37@@3 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_22@@3))) o2_22@@3 f_37@@3) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@8) o2_22@@3 f_37@@3) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22@@3 f_37@@3)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22@@3 f_37@@3))
))) (forall ((o2_22@@4 T@Ref) (f_37@@4 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_22@@3))) o2_22@@4 f_37@@4) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@8) o2_22@@4 f_37@@4) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22@@4 f_37@@4)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22@@4 f_37@@4))
))) (forall ((o2_22@@5 T@Ref) (f_37@@5 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_22@@3))) o2_22@@5 f_37@@5) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@8) o2_22@@5 f_37@@5) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22@@5 f_37@@5)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22@@5 f_37@@5))
))) (forall ((o2_22@@6 T@Ref) (f_37@@6 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_22@@3))) o2_22@@6 f_37@@6) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@8) o2_22@@6 f_37@@6) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22@@6 f_37@@6)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22@@6 f_37@@6))
))) (forall ((o2_22@@7 T@Ref) (f_37@@7 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_22@@3))) o2_22@@7 f_37@@7) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@8) o2_22@@7 f_37@@7) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22@@7 f_37@@7)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22@@7 f_37@@7))
))) (forall ((o2_22@@8 T@Ref) (f_37@@8 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) null (PredicateMaskField_5702 pm_f_22@@3))) o2_22@@8 f_37@@8) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@8) o2_22@@8 f_37@@8) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22@@8 f_37@@8)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@3) o2_22@@8 f_37@@8))
)))))
 :qid |stdinbpl.54:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (IsPredicateField_5702_5703 pm_f_22@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11048) (ExhaleHeap@@4 T@PolymorphicMapType_11048) (Mask@@6 T@PolymorphicMapType_11069) (pm_f_22@@4 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_5646_5703 Mask@@6 null pm_f_22@@4) (IsPredicateField_5646_38226 pm_f_22@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_22@@9 T@Ref) (f_37@@9 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_22@@4))) o2_22@@9 f_37@@9) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@9) o2_22@@9 f_37@@9) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@9 f_37@@9)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@9 f_37@@9))
)) (forall ((o2_22@@10 T@Ref) (f_37@@10 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_22@@4))) o2_22@@10 f_37@@10) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@9) o2_22@@10 f_37@@10) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@10 f_37@@10)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@10 f_37@@10))
))) (forall ((o2_22@@11 T@Ref) (f_37@@11 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_22@@4))) o2_22@@11 f_37@@11) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@9) o2_22@@11 f_37@@11) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@11 f_37@@11)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@11 f_37@@11))
))) (forall ((o2_22@@12 T@Ref) (f_37@@12 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_22@@4))) o2_22@@12 f_37@@12) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@9) o2_22@@12 f_37@@12) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@12 f_37@@12)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@12 f_37@@12))
))) (forall ((o2_22@@13 T@Ref) (f_37@@13 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_22@@4))) o2_22@@13 f_37@@13) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) o2_22@@13 f_37@@13) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@13 f_37@@13)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@13 f_37@@13))
))) (forall ((o2_22@@14 T@Ref) (f_37@@14 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_22@@4))) o2_22@@14 f_37@@14) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@9) o2_22@@14 f_37@@14) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@14 f_37@@14)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@14 f_37@@14))
))) (forall ((o2_22@@15 T@Ref) (f_37@@15 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_22@@4))) o2_22@@15 f_37@@15) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@9) o2_22@@15 f_37@@15) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@15 f_37@@15)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@15 f_37@@15))
))) (forall ((o2_22@@16 T@Ref) (f_37@@16 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_22@@4))) o2_22@@16 f_37@@16) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@9) o2_22@@16 f_37@@16) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@16 f_37@@16)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@16 f_37@@16))
))) (forall ((o2_22@@17 T@Ref) (f_37@@17 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_22@@4))) o2_22@@17 f_37@@17) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@9) o2_22@@17 f_37@@17) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@17 f_37@@17)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@17 f_37@@17))
))) (forall ((o2_22@@18 T@Ref) (f_37@@18 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@9) null (PredicateMaskField_5646 pm_f_22@@4))) o2_22@@18 f_37@@18) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@9) o2_22@@18 f_37@@18) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@18 f_37@@18)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@4) o2_22@@18 f_37@@18))
)))))
 :qid |stdinbpl.54:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (IsPredicateField_5646_38226 pm_f_22@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11048) (ExhaleHeap@@5 T@PolymorphicMapType_11048) (Mask@@7 T@PolymorphicMapType_11069) (pm_f_22@@5 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_5702_5703 Mask@@7 null pm_f_22@@5) (IsWandField_5702_41896 pm_f_22@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_22@@19 T@Ref) (f_37@@19 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_22@@5))) o2_22@@19 f_37@@19) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@10) o2_22@@19 f_37@@19) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@19 f_37@@19)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@19 f_37@@19))
)) (forall ((o2_22@@20 T@Ref) (f_37@@20 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_22@@5))) o2_22@@20 f_37@@20) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@10) o2_22@@20 f_37@@20) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@20 f_37@@20)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@20 f_37@@20))
))) (forall ((o2_22@@21 T@Ref) (f_37@@21 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_22@@5))) o2_22@@21 f_37@@21) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@10) o2_22@@21 f_37@@21) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@21 f_37@@21)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@21 f_37@@21))
))) (forall ((o2_22@@22 T@Ref) (f_37@@22 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_22@@5))) o2_22@@22 f_37@@22) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@10) o2_22@@22 f_37@@22) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@22 f_37@@22)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@22 f_37@@22))
))) (forall ((o2_22@@23 T@Ref) (f_37@@23 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_22@@5))) o2_22@@23 f_37@@23) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@10) o2_22@@23 f_37@@23) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@23 f_37@@23)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@23 f_37@@23))
))) (forall ((o2_22@@24 T@Ref) (f_37@@24 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_22@@5))) o2_22@@24 f_37@@24) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@10) o2_22@@24 f_37@@24) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@24 f_37@@24)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@24 f_37@@24))
))) (forall ((o2_22@@25 T@Ref) (f_37@@25 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_22@@5))) o2_22@@25 f_37@@25) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@10) o2_22@@25 f_37@@25) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@25 f_37@@25)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@25 f_37@@25))
))) (forall ((o2_22@@26 T@Ref) (f_37@@26 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_22@@5))) o2_22@@26 f_37@@26) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@10) o2_22@@26 f_37@@26) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@26 f_37@@26)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@26 f_37@@26))
))) (forall ((o2_22@@27 T@Ref) (f_37@@27 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_22@@5))) o2_22@@27 f_37@@27) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@10) o2_22@@27 f_37@@27) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@27 f_37@@27)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@27 f_37@@27))
))) (forall ((o2_22@@28 T@Ref) (f_37@@28 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) null (WandMaskField_5702 pm_f_22@@5))) o2_22@@28 f_37@@28) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@10) o2_22@@28 f_37@@28) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@28 f_37@@28)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@5) o2_22@@28 f_37@@28))
)))))
 :qid |stdinbpl.67:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (IsWandField_5702_41896 pm_f_22@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11048) (ExhaleHeap@@6 T@PolymorphicMapType_11048) (Mask@@8 T@PolymorphicMapType_11069) (pm_f_22@@6 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_5646_5703 Mask@@8 null pm_f_22@@6) (IsWandField_5646_41539 pm_f_22@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_22@@29 T@Ref) (f_37@@29 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_22@@6))) o2_22@@29 f_37@@29) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@11) o2_22@@29 f_37@@29) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@29 f_37@@29)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@29 f_37@@29))
)) (forall ((o2_22@@30 T@Ref) (f_37@@30 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_22@@6))) o2_22@@30 f_37@@30) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@11) o2_22@@30 f_37@@30) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@30 f_37@@30)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@30 f_37@@30))
))) (forall ((o2_22@@31 T@Ref) (f_37@@31 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_22@@6))) o2_22@@31 f_37@@31) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@11) o2_22@@31 f_37@@31) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@31 f_37@@31)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@31 f_37@@31))
))) (forall ((o2_22@@32 T@Ref) (f_37@@32 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_22@@6))) o2_22@@32 f_37@@32) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@11) o2_22@@32 f_37@@32) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@32 f_37@@32)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@32 f_37@@32))
))) (forall ((o2_22@@33 T@Ref) (f_37@@33 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_22@@6))) o2_22@@33 f_37@@33) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) o2_22@@33 f_37@@33) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@33 f_37@@33)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@33 f_37@@33))
))) (forall ((o2_22@@34 T@Ref) (f_37@@34 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_22@@6))) o2_22@@34 f_37@@34) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@11) o2_22@@34 f_37@@34) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@34 f_37@@34)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@34 f_37@@34))
))) (forall ((o2_22@@35 T@Ref) (f_37@@35 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_22@@6))) o2_22@@35 f_37@@35) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@11) o2_22@@35 f_37@@35) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@35 f_37@@35)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@35 f_37@@35))
))) (forall ((o2_22@@36 T@Ref) (f_37@@36 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_22@@6))) o2_22@@36 f_37@@36) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@11) o2_22@@36 f_37@@36) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@36 f_37@@36)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@36 f_37@@36))
))) (forall ((o2_22@@37 T@Ref) (f_37@@37 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_22@@6))) o2_22@@37 f_37@@37) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@11) o2_22@@37 f_37@@37) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@37 f_37@@37)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@37 f_37@@37))
))) (forall ((o2_22@@38 T@Ref) (f_37@@38 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@11) null (WandMaskField_5646 pm_f_22@@6))) o2_22@@38 f_37@@38) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@11) o2_22@@38 f_37@@38) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@38 f_37@@38)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@6) o2_22@@38 f_37@@38))
)))))
 :qid |stdinbpl.67:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (IsWandField_5646_41539 pm_f_22@@6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11048) (ExhaleHeap@@7 T@PolymorphicMapType_11048) (Mask@@9 T@PolymorphicMapType_11069) (pm_f_16 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@12 ExhaleHeap@@7 Mask@@9) (=> (and (HasDirectPerm_5702_5703 Mask@@9 null pm_f_16) (IsPredicateField_5702_5703 pm_f_16)) (and (and (and (and (and (and (and (and (and (forall ((o2_16 T@Ref) (f_40 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_16))) o2_16 f_40) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@12) o2_16 f_40) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16 f_40)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16 f_40))
)) (forall ((o2_16@@0 T@Ref) (f_40@@0 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_16))) o2_16@@0 f_40@@0) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@12) o2_16@@0 f_40@@0) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16@@0 f_40@@0)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16@@0 f_40@@0))
))) (forall ((o2_16@@1 T@Ref) (f_40@@1 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_16))) o2_16@@1 f_40@@1) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@12) o2_16@@1 f_40@@1) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16@@1 f_40@@1)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16@@1 f_40@@1))
))) (forall ((o2_16@@2 T@Ref) (f_40@@2 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_16))) o2_16@@2 f_40@@2) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@12) o2_16@@2 f_40@@2) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16@@2 f_40@@2)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16@@2 f_40@@2))
))) (forall ((o2_16@@3 T@Ref) (f_40@@3 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_16))) o2_16@@3 f_40@@3) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@12) o2_16@@3 f_40@@3) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16@@3 f_40@@3)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16@@3 f_40@@3))
))) (forall ((o2_16@@4 T@Ref) (f_40@@4 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_16))) o2_16@@4 f_40@@4) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@12) o2_16@@4 f_40@@4) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16@@4 f_40@@4)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16@@4 f_40@@4))
))) (forall ((o2_16@@5 T@Ref) (f_40@@5 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_16))) o2_16@@5 f_40@@5) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@12) o2_16@@5 f_40@@5) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16@@5 f_40@@5)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16@@5 f_40@@5))
))) (forall ((o2_16@@6 T@Ref) (f_40@@6 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_16))) o2_16@@6 f_40@@6) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@12) o2_16@@6 f_40@@6) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16@@6 f_40@@6)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16@@6 f_40@@6))
))) (forall ((o2_16@@7 T@Ref) (f_40@@7 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_16))) o2_16@@7 f_40@@7) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@12) o2_16@@7 f_40@@7) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16@@7 f_40@@7)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16@@7 f_40@@7))
))) (forall ((o2_16@@8 T@Ref) (f_40@@8 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) null (PredicateMaskField_5702 pm_f_16))) o2_16@@8 f_40@@8) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@12) o2_16@@8 f_40@@8) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16@@8 f_40@@8)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@7) o2_16@@8 f_40@@8))
)))))
 :qid |stdinbpl.118:19|
 :skolemid |18|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@12 ExhaleHeap@@7 Mask@@9) (IsPredicateField_5702_5703 pm_f_16))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11048) (ExhaleHeap@@8 T@PolymorphicMapType_11048) (Mask@@10 T@PolymorphicMapType_11069) (pm_f_16@@0 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@13 ExhaleHeap@@8 Mask@@10) (=> (and (HasDirectPerm_5646_5703 Mask@@10 null pm_f_16@@0) (IsPredicateField_5646_38226 pm_f_16@@0)) (and (and (and (and (and (and (and (and (and (forall ((o2_16@@9 T@Ref) (f_40@@9 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_16@@0))) o2_16@@9 f_40@@9) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@13) o2_16@@9 f_40@@9) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@9 f_40@@9)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@9 f_40@@9))
)) (forall ((o2_16@@10 T@Ref) (f_40@@10 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_16@@0))) o2_16@@10 f_40@@10) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@13) o2_16@@10 f_40@@10) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@10 f_40@@10)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@10 f_40@@10))
))) (forall ((o2_16@@11 T@Ref) (f_40@@11 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_16@@0))) o2_16@@11 f_40@@11) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@13) o2_16@@11 f_40@@11) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@11 f_40@@11)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@11 f_40@@11))
))) (forall ((o2_16@@12 T@Ref) (f_40@@12 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_16@@0))) o2_16@@12 f_40@@12) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@13) o2_16@@12 f_40@@12) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@12 f_40@@12)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@12 f_40@@12))
))) (forall ((o2_16@@13 T@Ref) (f_40@@13 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_16@@0))) o2_16@@13 f_40@@13) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) o2_16@@13 f_40@@13) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@13 f_40@@13)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@13 f_40@@13))
))) (forall ((o2_16@@14 T@Ref) (f_40@@14 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_16@@0))) o2_16@@14 f_40@@14) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@13) o2_16@@14 f_40@@14) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@14 f_40@@14)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@14 f_40@@14))
))) (forall ((o2_16@@15 T@Ref) (f_40@@15 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_16@@0))) o2_16@@15 f_40@@15) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@13) o2_16@@15 f_40@@15) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@15 f_40@@15)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@15 f_40@@15))
))) (forall ((o2_16@@16 T@Ref) (f_40@@16 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_16@@0))) o2_16@@16 f_40@@16) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@13) o2_16@@16 f_40@@16) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@16 f_40@@16)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@16 f_40@@16))
))) (forall ((o2_16@@17 T@Ref) (f_40@@17 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_16@@0))) o2_16@@17 f_40@@17) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@13) o2_16@@17 f_40@@17) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@17 f_40@@17)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@17 f_40@@17))
))) (forall ((o2_16@@18 T@Ref) (f_40@@18 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@13) null (PredicateMaskField_5646 pm_f_16@@0))) o2_16@@18 f_40@@18) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@13) o2_16@@18 f_40@@18) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@18 f_40@@18)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@8) o2_16@@18 f_40@@18))
)))))
 :qid |stdinbpl.118:19|
 :skolemid |18|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@13 ExhaleHeap@@8 Mask@@10) (IsPredicateField_5646_38226 pm_f_16@@0))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11048) (ExhaleHeap@@9 T@PolymorphicMapType_11048) (Mask@@11 T@PolymorphicMapType_11069) (pm_f_16@@1 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@14 ExhaleHeap@@9 Mask@@11) (=> (and (HasDirectPerm_5702_5703 Mask@@11 null pm_f_16@@1) (IsWandField_5702_41896 pm_f_16@@1)) (and (and (and (and (and (and (and (and (and (forall ((o2_16@@19 T@Ref) (f_40@@19 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_16@@1))) o2_16@@19 f_40@@19) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@14) o2_16@@19 f_40@@19) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@19 f_40@@19)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@19 f_40@@19))
)) (forall ((o2_16@@20 T@Ref) (f_40@@20 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_16@@1))) o2_16@@20 f_40@@20) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@14) o2_16@@20 f_40@@20) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@20 f_40@@20)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@20 f_40@@20))
))) (forall ((o2_16@@21 T@Ref) (f_40@@21 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_16@@1))) o2_16@@21 f_40@@21) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@14) o2_16@@21 f_40@@21) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@21 f_40@@21)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@21 f_40@@21))
))) (forall ((o2_16@@22 T@Ref) (f_40@@22 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_16@@1))) o2_16@@22 f_40@@22) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@14) o2_16@@22 f_40@@22) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@22 f_40@@22)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@22 f_40@@22))
))) (forall ((o2_16@@23 T@Ref) (f_40@@23 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_16@@1))) o2_16@@23 f_40@@23) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@14) o2_16@@23 f_40@@23) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@23 f_40@@23)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@23 f_40@@23))
))) (forall ((o2_16@@24 T@Ref) (f_40@@24 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_16@@1))) o2_16@@24 f_40@@24) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@14) o2_16@@24 f_40@@24) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@24 f_40@@24)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@24 f_40@@24))
))) (forall ((o2_16@@25 T@Ref) (f_40@@25 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_16@@1))) o2_16@@25 f_40@@25) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@14) o2_16@@25 f_40@@25) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@25 f_40@@25)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@25 f_40@@25))
))) (forall ((o2_16@@26 T@Ref) (f_40@@26 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_16@@1))) o2_16@@26 f_40@@26) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@14) o2_16@@26 f_40@@26) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@26 f_40@@26)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@26 f_40@@26))
))) (forall ((o2_16@@27 T@Ref) (f_40@@27 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_16@@1))) o2_16@@27 f_40@@27) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@14) o2_16@@27 f_40@@27) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@27 f_40@@27)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@27 f_40@@27))
))) (forall ((o2_16@@28 T@Ref) (f_40@@28 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) null (WandMaskField_5702 pm_f_16@@1))) o2_16@@28 f_40@@28) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@14) o2_16@@28 f_40@@28) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@28 f_40@@28)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@9) o2_16@@28 f_40@@28))
)))))
 :qid |stdinbpl.134:19|
 :skolemid |22|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@14 ExhaleHeap@@9 Mask@@11) (IsWandField_5702_41896 pm_f_16@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11048) (ExhaleHeap@@10 T@PolymorphicMapType_11048) (Mask@@12 T@PolymorphicMapType_11069) (pm_f_16@@2 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@15 ExhaleHeap@@10 Mask@@12) (=> (and (HasDirectPerm_5646_5703 Mask@@12 null pm_f_16@@2) (IsWandField_5646_41539 pm_f_16@@2)) (and (and (and (and (and (and (and (and (and (forall ((o2_16@@29 T@Ref) (f_40@@29 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_16@@2))) o2_16@@29 f_40@@29) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@15) o2_16@@29 f_40@@29) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@29 f_40@@29)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@29 f_40@@29))
)) (forall ((o2_16@@30 T@Ref) (f_40@@30 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_16@@2))) o2_16@@30 f_40@@30) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@15) o2_16@@30 f_40@@30) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@30 f_40@@30)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@30 f_40@@30))
))) (forall ((o2_16@@31 T@Ref) (f_40@@31 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_16@@2))) o2_16@@31 f_40@@31) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@15) o2_16@@31 f_40@@31) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@31 f_40@@31)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@31 f_40@@31))
))) (forall ((o2_16@@32 T@Ref) (f_40@@32 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_16@@2))) o2_16@@32 f_40@@32) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@15) o2_16@@32 f_40@@32) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@32 f_40@@32)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@32 f_40@@32))
))) (forall ((o2_16@@33 T@Ref) (f_40@@33 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_16@@2))) o2_16@@33 f_40@@33) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) o2_16@@33 f_40@@33) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@33 f_40@@33)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@33 f_40@@33))
))) (forall ((o2_16@@34 T@Ref) (f_40@@34 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_16@@2))) o2_16@@34 f_40@@34) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@15) o2_16@@34 f_40@@34) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@34 f_40@@34)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@34 f_40@@34))
))) (forall ((o2_16@@35 T@Ref) (f_40@@35 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_16@@2))) o2_16@@35 f_40@@35) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@15) o2_16@@35 f_40@@35) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@35 f_40@@35)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@35 f_40@@35))
))) (forall ((o2_16@@36 T@Ref) (f_40@@36 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_16@@2))) o2_16@@36 f_40@@36) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@15) o2_16@@36 f_40@@36) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@36 f_40@@36)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@36 f_40@@36))
))) (forall ((o2_16@@37 T@Ref) (f_40@@37 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_16@@2))) o2_16@@37 f_40@@37) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@15) o2_16@@37 f_40@@37) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@37 f_40@@37)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@37 f_40@@37))
))) (forall ((o2_16@@38 T@Ref) (f_40@@38 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@15) null (WandMaskField_5646 pm_f_16@@2))) o2_16@@38 f_40@@38) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@15) o2_16@@38 f_40@@38) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@38 f_40@@38)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@10) o2_16@@38 f_40@@38))
)))))
 :qid |stdinbpl.134:19|
 :skolemid |22|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@15 ExhaleHeap@@10 Mask@@12) (IsWandField_5646_41539 pm_f_16@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11048) (ExhaleHeap@@11 T@PolymorphicMapType_11048) (Mask@@13 T@PolymorphicMapType_11069) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@13) (=> (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@16) o_46 $allocated) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@11) o_46 $allocated)))
 :qid |stdinbpl.75:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@13) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@11) o_46 $allocated))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11048) (ExhaleHeap@@12 T@PolymorphicMapType_11048) (Mask@@14 T@PolymorphicMapType_11069) (o_34 T@Ref) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@17 ExhaleHeap@@12 Mask@@14) (=> (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@17) o_34 $allocated) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@12) o_34 $allocated)))
 :qid |stdinbpl.142:15|
 :skolemid |23|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@17 ExhaleHeap@@12 Mask@@14) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@12) o_34 $allocated))
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
(assert (forall ((Heap@@20 T@PolymorphicMapType_11048) (ExhaleHeap@@15 T@PolymorphicMapType_11048) (Mask@@37 T@PolymorphicMapType_11069) (o_46@@0 T@Ref) (f_37@@39 T@Field_21021_21026) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_5702_37981 Mask@@37 o_46@@0 f_37@@39) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@20) o_46@@0 f_37@@39) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@15) o_46@@0 f_37@@39))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@15) o_46@@0 f_37@@39))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_11048) (ExhaleHeap@@16 T@PolymorphicMapType_11048) (Mask@@38 T@PolymorphicMapType_11069) (o_46@@1 T@Ref) (f_37@@40 T@Field_5702_1823) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_5702_1823 Mask@@38 o_46@@1 f_37@@40) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@21) o_46@@1 f_37@@40) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@16) o_46@@1 f_37@@40))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@16) o_46@@1 f_37@@40))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_11048) (ExhaleHeap@@17 T@PolymorphicMapType_11048) (Mask@@39 T@PolymorphicMapType_11069) (o_46@@2 T@Ref) (f_37@@41 T@Field_5702_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_5702_53 Mask@@39 o_46@@2 f_37@@41) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@22) o_46@@2 f_37@@41) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@17) o_46@@2 f_37@@41))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@17) o_46@@2 f_37@@41))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_11048) (ExhaleHeap@@18 T@PolymorphicMapType_11048) (Mask@@40 T@PolymorphicMapType_11069) (o_46@@3 T@Ref) (f_37@@42 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_5702_5703 Mask@@40 o_46@@3 f_37@@42) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@23) o_46@@3 f_37@@42) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@18) o_46@@3 f_37@@42))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@18) o_46@@3 f_37@@42))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_11048) (ExhaleHeap@@19 T@PolymorphicMapType_11048) (Mask@@41 T@PolymorphicMapType_11069) (o_46@@4 T@Ref) (f_37@@43 T@Field_5702_5647) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@41) (=> (HasDirectPerm_5702_5647 Mask@@41 o_46@@4 f_37@@43) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@24) o_46@@4 f_37@@43) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@19) o_46@@4 f_37@@43))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@41) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@19) o_46@@4 f_37@@43))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11048) (ExhaleHeap@@20 T@PolymorphicMapType_11048) (Mask@@42 T@PolymorphicMapType_11069) (o_46@@5 T@Ref) (f_37@@44 T@Field_5646_21026) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@42) (=> (HasDirectPerm_5646_36840 Mask@@42 o_46@@5 f_37@@44) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@25) o_46@@5 f_37@@44) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@20) o_46@@5 f_37@@44))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@42) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@20) o_46@@5 f_37@@44))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11048) (ExhaleHeap@@21 T@PolymorphicMapType_11048) (Mask@@43 T@PolymorphicMapType_11069) (o_46@@6 T@Ref) (f_37@@45 T@Field_16857_1823) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@43) (=> (HasDirectPerm_5646_1823 Mask@@43 o_46@@6 f_37@@45) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@26) o_46@@6 f_37@@45) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@21) o_46@@6 f_37@@45))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@43) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@21) o_46@@6 f_37@@45))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11048) (ExhaleHeap@@22 T@PolymorphicMapType_11048) (Mask@@44 T@PolymorphicMapType_11069) (o_46@@7 T@Ref) (f_37@@46 T@Field_11108_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@44) (=> (HasDirectPerm_5646_53 Mask@@44 o_46@@7 f_37@@46) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@27) o_46@@7 f_37@@46) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@22) o_46@@7 f_37@@46))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@44) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@22) o_46@@7 f_37@@46))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11048) (ExhaleHeap@@23 T@PolymorphicMapType_11048) (Mask@@45 T@PolymorphicMapType_11069) (o_46@@8 T@Ref) (f_37@@47 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@45) (=> (HasDirectPerm_5646_5703 Mask@@45 o_46@@8 f_37@@47) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@28) o_46@@8 f_37@@47) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@23) o_46@@8 f_37@@47))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@45) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@23) o_46@@8 f_37@@47))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11048) (ExhaleHeap@@24 T@PolymorphicMapType_11048) (Mask@@46 T@PolymorphicMapType_11069) (o_46@@9 T@Ref) (f_37@@48 T@Field_11121_11122) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@46) (=> (HasDirectPerm_5646_5647 Mask@@46 o_46@@9 f_37@@48) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@29) o_46@@9 f_37@@48) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@24) o_46@@9 f_37@@48))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@46) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@24) o_46@@9 f_37@@48))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_11048) (ExhaleHeap@@25 T@PolymorphicMapType_11048) (Mask@@47 T@PolymorphicMapType_11069) (o_34@@0 T@Ref) (f_40@@39 T@Field_21021_21026) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@30 ExhaleHeap@@25 Mask@@47) (=> (HasDirectPerm_5702_37981 Mask@@47 o_34@@0 f_40@@39) (= (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@30) o_34@@0 f_40@@39) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@25) o_34@@0 f_40@@39))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@30 ExhaleHeap@@25 Mask@@47) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@25) o_34@@0 f_40@@39))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_11048) (ExhaleHeap@@26 T@PolymorphicMapType_11048) (Mask@@48 T@PolymorphicMapType_11069) (o_34@@1 T@Ref) (f_40@@40 T@Field_5702_1823) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@31 ExhaleHeap@@26 Mask@@48) (=> (HasDirectPerm_5702_1823 Mask@@48 o_34@@1 f_40@@40) (= (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@31) o_34@@1 f_40@@40) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@26) o_34@@1 f_40@@40))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@31 ExhaleHeap@@26 Mask@@48) (select (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@@26) o_34@@1 f_40@@40))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_11048) (ExhaleHeap@@27 T@PolymorphicMapType_11048) (Mask@@49 T@PolymorphicMapType_11069) (o_34@@2 T@Ref) (f_40@@41 T@Field_5702_53) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@32 ExhaleHeap@@27 Mask@@49) (=> (HasDirectPerm_5702_53 Mask@@49 o_34@@2 f_40@@41) (= (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@32) o_34@@2 f_40@@41) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@27) o_34@@2 f_40@@41))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@32 ExhaleHeap@@27 Mask@@49) (select (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@@27) o_34@@2 f_40@@41))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_11048) (ExhaleHeap@@28 T@PolymorphicMapType_11048) (Mask@@50 T@PolymorphicMapType_11069) (o_34@@3 T@Ref) (f_40@@42 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@33 ExhaleHeap@@28 Mask@@50) (=> (HasDirectPerm_5702_5703 Mask@@50 o_34@@3 f_40@@42) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@33) o_34@@3 f_40@@42) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@28) o_34@@3 f_40@@42))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@33 ExhaleHeap@@28 Mask@@50) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@@28) o_34@@3 f_40@@42))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_11048) (ExhaleHeap@@29 T@PolymorphicMapType_11048) (Mask@@51 T@PolymorphicMapType_11069) (o_34@@4 T@Ref) (f_40@@43 T@Field_5702_5647) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@34 ExhaleHeap@@29 Mask@@51) (=> (HasDirectPerm_5702_5647 Mask@@51 o_34@@4 f_40@@43) (= (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@34) o_34@@4 f_40@@43) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@29) o_34@@4 f_40@@43))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@34 ExhaleHeap@@29 Mask@@51) (select (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@@29) o_34@@4 f_40@@43))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_11048) (ExhaleHeap@@30 T@PolymorphicMapType_11048) (Mask@@52 T@PolymorphicMapType_11069) (o_34@@5 T@Ref) (f_40@@44 T@Field_5646_21026) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@35 ExhaleHeap@@30 Mask@@52) (=> (HasDirectPerm_5646_36840 Mask@@52 o_34@@5 f_40@@44) (= (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@35) o_34@@5 f_40@@44) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@30) o_34@@5 f_40@@44))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@35 ExhaleHeap@@30 Mask@@52) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@30) o_34@@5 f_40@@44))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_11048) (ExhaleHeap@@31 T@PolymorphicMapType_11048) (Mask@@53 T@PolymorphicMapType_11069) (o_34@@6 T@Ref) (f_40@@45 T@Field_16857_1823) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@36 ExhaleHeap@@31 Mask@@53) (=> (HasDirectPerm_5646_1823 Mask@@53 o_34@@6 f_40@@45) (= (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@36) o_34@@6 f_40@@45) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@31) o_34@@6 f_40@@45))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@36 ExhaleHeap@@31 Mask@@53) (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@@31) o_34@@6 f_40@@45))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_11048) (ExhaleHeap@@32 T@PolymorphicMapType_11048) (Mask@@54 T@PolymorphicMapType_11069) (o_34@@7 T@Ref) (f_40@@46 T@Field_11108_53) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@37 ExhaleHeap@@32 Mask@@54) (=> (HasDirectPerm_5646_53 Mask@@54 o_34@@7 f_40@@46) (= (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@37) o_34@@7 f_40@@46) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@32) o_34@@7 f_40@@46))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@37 ExhaleHeap@@32 Mask@@54) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@@32) o_34@@7 f_40@@46))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_11048) (ExhaleHeap@@33 T@PolymorphicMapType_11048) (Mask@@55 T@PolymorphicMapType_11069) (o_34@@8 T@Ref) (f_40@@47 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@38 ExhaleHeap@@33 Mask@@55) (=> (HasDirectPerm_5646_5703 Mask@@55 o_34@@8 f_40@@47) (= (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@38) o_34@@8 f_40@@47) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@33) o_34@@8 f_40@@47))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@38 ExhaleHeap@@33 Mask@@55) (select (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@@33) o_34@@8 f_40@@47))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_11048) (ExhaleHeap@@34 T@PolymorphicMapType_11048) (Mask@@56 T@PolymorphicMapType_11069) (o_34@@9 T@Ref) (f_40@@48 T@Field_11121_11122) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@39 ExhaleHeap@@34 Mask@@56) (=> (HasDirectPerm_5646_5647 Mask@@56 o_34@@9 f_40@@48) (= (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@39) o_34@@9 f_40@@48) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@34) o_34@@9 f_40@@48))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@39 ExhaleHeap@@34 Mask@@56) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@@34) o_34@@9 f_40@@48))
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
(assert (forall ((Heap@@42 T@PolymorphicMapType_11048) (ExhaleHeap@@35 T@PolymorphicMapType_11048) (Mask@@58 T@PolymorphicMapType_11069) (pm_f_16@@3 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@42 ExhaleHeap@@35 Mask@@58) (=> (and (HasDirectPerm_5702_5703 Mask@@58 null pm_f_16@@3) (IsPredicateField_5702_5703 pm_f_16@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_16@@39 T@Ref) (f_40@@49 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@39 f_40@@49) (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@39 f_40@@49))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@39 f_40@@49))
)) (forall ((o2_16@@40 T@Ref) (f_40@@50 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@40 f_40@@50) (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@40 f_40@@50))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@40 f_40@@50))
))) (forall ((o2_16@@41 T@Ref) (f_40@@51 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@41 f_40@@51) (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@41 f_40@@51))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@41 f_40@@51))
))) (forall ((o2_16@@42 T@Ref) (f_40@@52 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@42 f_40@@52) (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@42 f_40@@52))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@42 f_40@@52))
))) (forall ((o2_16@@43 T@Ref) (f_40@@53 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@43 f_40@@53) (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@43 f_40@@53))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@43 f_40@@53))
))) (forall ((o2_16@@44 T@Ref) (f_40@@54 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@44 f_40@@54) (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@44 f_40@@54))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@44 f_40@@54))
))) (forall ((o2_16@@45 T@Ref) (f_40@@55 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@45 f_40@@55) (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@45 f_40@@55))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@45 f_40@@55))
))) (forall ((o2_16@@46 T@Ref) (f_40@@56 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@46 f_40@@56) (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@46 f_40@@56))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@46 f_40@@56))
))) (forall ((o2_16@@47 T@Ref) (f_40@@57 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@47 f_40@@57) (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@47 f_40@@57))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@47 f_40@@57))
))) (forall ((o2_16@@48 T@Ref) (f_40@@58 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@42) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@48 f_40@@58) (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@48 f_40@@58))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3))) o2_16@@48 f_40@@58))
)))))
 :qid |stdinbpl.110:19|
 :skolemid |16|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@42 ExhaleHeap@@35 Mask@@58) (IsPredicateField_5702_5703 pm_f_16@@3) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@35) null (PredicateMaskField_5702 pm_f_16@@3)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_11048) (ExhaleHeap@@36 T@PolymorphicMapType_11048) (Mask@@59 T@PolymorphicMapType_11069) (pm_f_16@@4 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@43 ExhaleHeap@@36 Mask@@59) (=> (and (HasDirectPerm_5646_5703 Mask@@59 null pm_f_16@@4) (IsPredicateField_5646_38226 pm_f_16@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_16@@49 T@Ref) (f_40@@59 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@49 f_40@@59) (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@49 f_40@@59))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@49 f_40@@59))
)) (forall ((o2_16@@50 T@Ref) (f_40@@60 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@50 f_40@@60) (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@50 f_40@@60))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@50 f_40@@60))
))) (forall ((o2_16@@51 T@Ref) (f_40@@61 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@51 f_40@@61) (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@51 f_40@@61))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@51 f_40@@61))
))) (forall ((o2_16@@52 T@Ref) (f_40@@62 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@52 f_40@@62) (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@52 f_40@@62))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@52 f_40@@62))
))) (forall ((o2_16@@53 T@Ref) (f_40@@63 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@53 f_40@@63) (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@53 f_40@@63))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@53 f_40@@63))
))) (forall ((o2_16@@54 T@Ref) (f_40@@64 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@54 f_40@@64) (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@54 f_40@@64))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@54 f_40@@64))
))) (forall ((o2_16@@55 T@Ref) (f_40@@65 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@55 f_40@@65) (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@55 f_40@@65))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@55 f_40@@65))
))) (forall ((o2_16@@56 T@Ref) (f_40@@66 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@56 f_40@@66) (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@56 f_40@@66))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@56 f_40@@66))
))) (forall ((o2_16@@57 T@Ref) (f_40@@67 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@57 f_40@@67) (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@57 f_40@@67))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@57 f_40@@67))
))) (forall ((o2_16@@58 T@Ref) (f_40@@68 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@43) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@58 f_40@@68) (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@58 f_40@@68))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4))) o2_16@@58 f_40@@68))
)))))
 :qid |stdinbpl.110:19|
 :skolemid |16|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@43 ExhaleHeap@@36 Mask@@59) (IsPredicateField_5646_38226 pm_f_16@@4) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@36) null (PredicateMaskField_5646 pm_f_16@@4)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_11048) (ExhaleHeap@@37 T@PolymorphicMapType_11048) (Mask@@60 T@PolymorphicMapType_11069) (pm_f_16@@5 T@Field_17286_17287) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@44 ExhaleHeap@@37 Mask@@60) (=> (and (HasDirectPerm_5702_5703 Mask@@60 null pm_f_16@@5) (IsWandField_5702_41896 pm_f_16@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_16@@59 T@Ref) (f_40@@69 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@59 f_40@@69) (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@59 f_40@@69))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@59 f_40@@69))
)) (forall ((o2_16@@60 T@Ref) (f_40@@70 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@60 f_40@@70) (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@60 f_40@@70))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@60 f_40@@70))
))) (forall ((o2_16@@61 T@Ref) (f_40@@71 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@61 f_40@@71) (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@61 f_40@@71))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@61 f_40@@71))
))) (forall ((o2_16@@62 T@Ref) (f_40@@72 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@62 f_40@@72) (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@62 f_40@@72))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@62 f_40@@72))
))) (forall ((o2_16@@63 T@Ref) (f_40@@73 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@63 f_40@@73) (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@63 f_40@@73))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@63 f_40@@73))
))) (forall ((o2_16@@64 T@Ref) (f_40@@74 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@64 f_40@@74) (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@64 f_40@@74))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@64 f_40@@74))
))) (forall ((o2_16@@65 T@Ref) (f_40@@75 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@65 f_40@@75) (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@65 f_40@@75))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@65 f_40@@75))
))) (forall ((o2_16@@66 T@Ref) (f_40@@76 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@66 f_40@@76) (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@66 f_40@@76))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@66 f_40@@76))
))) (forall ((o2_16@@67 T@Ref) (f_40@@77 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@67 f_40@@77) (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@67 f_40@@77))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@67 f_40@@77))
))) (forall ((o2_16@@68 T@Ref) (f_40@@78 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@44) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@68 f_40@@78) (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@68 f_40@@78))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5))) o2_16@@68 f_40@@78))
)))))
 :qid |stdinbpl.126:19|
 :skolemid |20|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@44 ExhaleHeap@@37 Mask@@60) (IsWandField_5702_41896 pm_f_16@@5) (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@@37) null (WandMaskField_5702 pm_f_16@@5)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_11048) (ExhaleHeap@@38 T@PolymorphicMapType_11048) (Mask@@61 T@PolymorphicMapType_11069) (pm_f_16@@6 T@Field_5646_5703) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@45 ExhaleHeap@@38 Mask@@61) (=> (and (HasDirectPerm_5646_5703 Mask@@61 null pm_f_16@@6) (IsWandField_5646_41539 pm_f_16@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_16@@69 T@Ref) (f_40@@79 T@Field_11121_11122) ) (!  (=> (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@69 f_40@@79) (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@69 f_40@@79))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@69 f_40@@79))
)) (forall ((o2_16@@70 T@Ref) (f_40@@80 T@Field_16857_1823) ) (!  (=> (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@70 f_40@@80) (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@70 f_40@@80))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@70 f_40@@80))
))) (forall ((o2_16@@71 T@Ref) (f_40@@81 T@Field_11108_53) ) (!  (=> (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@71 f_40@@81) (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@71 f_40@@81))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@71 f_40@@81))
))) (forall ((o2_16@@72 T@Ref) (f_40@@82 T@Field_5646_5703) ) (!  (=> (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@72 f_40@@82) (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@72 f_40@@82))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@72 f_40@@82))
))) (forall ((o2_16@@73 T@Ref) (f_40@@83 T@Field_5646_21026) ) (!  (=> (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@73 f_40@@83) (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@73 f_40@@83))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@73 f_40@@83))
))) (forall ((o2_16@@74 T@Ref) (f_40@@84 T@Field_5702_5647) ) (!  (=> (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@74 f_40@@84) (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@74 f_40@@84))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@74 f_40@@84))
))) (forall ((o2_16@@75 T@Ref) (f_40@@85 T@Field_5702_1823) ) (!  (=> (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@75 f_40@@85) (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@75 f_40@@85))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@75 f_40@@85))
))) (forall ((o2_16@@76 T@Ref) (f_40@@86 T@Field_5702_53) ) (!  (=> (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@76 f_40@@86) (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@76 f_40@@86))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@76 f_40@@86))
))) (forall ((o2_16@@77 T@Ref) (f_40@@87 T@Field_17286_17287) ) (!  (=> (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@77 f_40@@87) (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@77 f_40@@87))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@77 f_40@@87))
))) (forall ((o2_16@@78 T@Ref) (f_40@@88 T@Field_21021_21026) ) (!  (=> (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@45) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@78 f_40@@88) (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@78 f_40@@88))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6))) o2_16@@78 f_40@@88))
)))))
 :qid |stdinbpl.126:19|
 :skolemid |20|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@45 ExhaleHeap@@38 Mask@@61) (IsWandField_5646_41539 pm_f_16@@6) (select (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@@38) null (WandMaskField_5646 pm_f_16@@6)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_11048) (Mask@@62 T@PolymorphicMapType_11069) (this@@8 T@Ref) ) (!  (=> (and (state Heap@@46 Mask@@62) (or (< AssumeFunctionsAbove 0) (|silver_length#trigger| (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@46) null (valid__List this@@8)) this@@8))) (>= (|silver_length'| Heap@@46 this@@8) 0))
 :qid |stdinbpl.311:15|
 :skolemid |40|
 :pattern ( (state Heap@@46 Mask@@62) (|silver_length'| Heap@@46 this@@8))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_11048) (o_12 T@Ref) (f_24 T@Field_21021_21026) (v T@PolymorphicMapType_11613) ) (! (succHeap Heap@@47 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@47) (store (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@47) o_12 f_24 v) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@47)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@47) (store (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@47) o_12 f_24 v) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@47) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_11048) (o_12@@0 T@Ref) (f_24@@0 T@Field_5702_1823) (v@@0 Int) ) (! (succHeap Heap@@48 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@48) (store (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@48) o_12@@0 f_24@@0 v@@0)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@48) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@48) (store (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@48) o_12@@0 f_24@@0 v@@0)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_11048) (o_12@@1 T@Ref) (f_24@@1 T@Field_17286_17287) (v@@1 T@FrameType) ) (! (succHeap Heap@@49 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@49) (store (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@49) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@49)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@49) (store (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@49) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@49) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_11048) (o_12@@2 T@Ref) (f_24@@2 T@Field_5702_5647) (v@@2 T@Ref) ) (! (succHeap Heap@@50 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@50) (store (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@50) o_12@@2 f_24@@2 v@@2) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@50)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@50) (store (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@50) o_12@@2 f_24@@2 v@@2) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@50) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_11048) (o_12@@3 T@Ref) (f_24@@3 T@Field_5702_53) (v@@3 Bool) ) (! (succHeap Heap@@51 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@51) (store (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@51) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@51)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@51) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@51) (store (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@51) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_11048) (o_12@@4 T@Ref) (f_24@@4 T@Field_5646_21026) (v@@4 T@PolymorphicMapType_11613) ) (! (succHeap Heap@@52 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@52) (store (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@52) o_12@@4 f_24@@4 v@@4) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@52)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@52) (store (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@52) o_12@@4 f_24@@4 v@@4) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@52) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_11048) (o_12@@5 T@Ref) (f_24@@5 T@Field_16857_1823) (v@@5 Int) ) (! (succHeap Heap@@53 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@53) (store (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@53) o_12@@5 f_24@@5 v@@5) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@53)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@53) (store (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@53) o_12@@5 f_24@@5 v@@5) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@53) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_11048) (o_12@@6 T@Ref) (f_24@@6 T@Field_5646_5703) (v@@6 T@FrameType) ) (! (succHeap Heap@@54 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@54) (store (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@54) o_12@@6 f_24@@6 v@@6) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@54)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@54) (store (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@54) o_12@@6 f_24@@6 v@@6) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@54) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_11048) (o_12@@7 T@Ref) (f_24@@7 T@Field_11121_11122) (v@@7 T@Ref) ) (! (succHeap Heap@@55 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@55) (store (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@55) o_12@@7 f_24@@7 v@@7) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@55)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@55) (store (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@55) o_12@@7 f_24@@7 v@@7) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@55) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_11048) (o_12@@8 T@Ref) (f_24@@8 T@Field_11108_53) (v@@8 Bool) ) (! (succHeap Heap@@56 (PolymorphicMapType_11048 (store (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@56) o_12@@8 f_24@@8 v@@8) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@56)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11048 (store (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@56) o_12@@8 f_24@@8 v@@8) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@@56) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@@56)))
)))
(assert (forall ((this@@9 T@Ref) ) (! (= (PredicateMaskField_5702 (valid__List this@@9)) (|valid__List#sm| this@@9))
 :qid |stdinbpl.459:15|
 :skolemid |42|
 :pattern ( (PredicateMaskField_5702 (valid__List this@@9)))
)))
(assert (forall ((o_12@@9 T@Ref) (f_16 T@Field_11121_11122) (Heap@@57 T@PolymorphicMapType_11048) ) (!  (=> (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@57) o_12@@9 $allocated) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@57) (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@57) o_12@@9 f_16) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@@57) o_12@@9 f_16))
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
(declare-fun rd$1 () Real)
(declare-fun Mask@13 () T@PolymorphicMapType_11069)
(declare-fun tail$1@0 () T@Ref)
(declare-fun Heap@1 () T@PolymorphicMapType_11048)
(declare-fun current$1@0 () T@Ref)
(declare-fun counter$1@1 () Int)
(declare-fun counter$1@0 () Int)
(declare-fun LoopSumMask@0 () T@PolymorphicMapType_11069)
(declare-fun list$1 () T@Ref)
(declare-fun Heap@12 () T@PolymorphicMapType_11048)
(declare-fun Mask@22 () T@PolymorphicMapType_11069)
(declare-fun LoopSumHeap@0 () T@PolymorphicMapType_11048)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_11048)
(declare-fun Mask@1 () T@PolymorphicMapType_11069)
(declare-fun Heap@9 () T@PolymorphicMapType_11048)
(declare-fun Heap@10 () T@PolymorphicMapType_11048)
(declare-fun Heap@11 () T@PolymorphicMapType_11048)
(declare-fun Heap@5 () T@PolymorphicMapType_11048)
(declare-fun Heap@6 () T@PolymorphicMapType_11048)
(declare-fun Heap@7 () T@PolymorphicMapType_11048)
(declare-fun newPMask@0 () T@PolymorphicMapType_11613)
(declare-fun Heap@8 () T@PolymorphicMapType_11048)
(declare-fun Heap@4 () T@PolymorphicMapType_11048)
(declare-fun Heap@2 () T@PolymorphicMapType_11048)
(declare-fun Heap@3 () T@PolymorphicMapType_11048)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@21 () T@PolymorphicMapType_11069)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_5647 (T@Ref) T@FrameType)
(declare-fun FrameFragment_5611 (T@FrameType) T@FrameType)
(declare-fun FrameFragment_1823 (Int) T@FrameType)
(declare-fun Mask@20 () T@PolymorphicMapType_11069)
(declare-fun Mask@19 () T@PolymorphicMapType_11069)
(declare-fun Mask@18 () T@PolymorphicMapType_11069)
(declare-fun Mask@17 () T@PolymorphicMapType_11069)
(declare-fun Mask@16 () T@PolymorphicMapType_11069)
(declare-fun Mask@15 () T@PolymorphicMapType_11069)
(declare-fun Mask@14 () T@PolymorphicMapType_11069)
(declare-fun Mask@10 () T@PolymorphicMapType_11069)
(declare-fun Mask@11 () T@PolymorphicMapType_11069)
(declare-fun Mask@12 () T@PolymorphicMapType_11069)
(declare-fun Mask@6 () T@PolymorphicMapType_11069)
(declare-fun Mask@7 () T@PolymorphicMapType_11069)
(declare-fun Mask@8 () T@PolymorphicMapType_11069)
(declare-fun Mask@9 () T@PolymorphicMapType_11069)
(declare-fun Mask@5 () T@PolymorphicMapType_11069)
(declare-fun Heap@0 () T@PolymorphicMapType_11048)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@3 () T@PolymorphicMapType_11069)
(declare-fun tail$1 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_11069)
(declare-fun Heap@@58 () T@PolymorphicMapType_11048)
(declare-fun current$1 () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_11048)
(set-info :boogie-vc-id length_iter)
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
 (=> (= (ControlFlow 0 0) 98) (let ((anon43_correct true))
(let ((anon67_Else_correct  (=> (and (= rd$1 NoPerm) (= (ControlFlow 0 62) 59)) anon43_correct)))
(let ((anon67_Then_correct  (=> (not (= rd$1 NoPerm)) (and (=> (= (ControlFlow 0 60) (- 0 61)) (<= rd$1 (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@13) null (valid__List tail$1@0)))) (=> (<= rd$1 (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@13) null (valid__List tail$1@0))) (=> (= (ControlFlow 0 60) 59) anon43_correct))))))
(let ((anon55_Then_correct  (=> (and (and (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__variant)) fn$$List__Node) (= counter$1@1 (+ counter$1@0 1))) (and (state Heap@1 Mask@13) (state Heap@1 Mask@13))) (and (=> (= (ControlFlow 0 63) (- 0 65)) (< NoPerm (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@13) null (valid__List tail$1@0)))) (=> (< NoPerm (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@13) null (valid__List tail$1@0))) (=> (state Heap@1 Mask@13) (=> (and (state Heap@1 Mask@13) (state Heap@1 Mask@13)) (and (=> (= (ControlFlow 0 63) (- 0 64)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (and (=> (= (ControlFlow 0 63) 60) anon67_Then_correct) (=> (= (ControlFlow 0 63) 62) anon67_Else_correct)))))))))))
(let ((anon46_correct true))
(let ((anon68_Else_correct  (=> (and (= rd$1 NoPerm) (= (ControlFlow 0 10) 7)) anon46_correct)))
(let ((anon68_Then_correct  (=> (not (= rd$1 NoPerm)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (<= rd$1 (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| LoopSumMask@0) null (valid__List list$1)))) (=> (<= rd$1 (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| LoopSumMask@0) null (valid__List list$1))) (=> (= (ControlFlow 0 8) 7) anon46_correct))))))
(let ((anon39_correct  (=> (state Heap@12 Mask@22) (=> (and (state Heap@12 Mask@22) (SumHeap LoopSumHeap@0 Heap@12 Mask@22 ExhaleHeap@0 Mask@1)) (=> (and (and (sumMask LoopSumMask@0 Mask@22 Mask@1) (state LoopSumHeap@0 LoopSumMask@0)) (and (state LoopSumHeap@0 LoopSumMask@0) (state LoopSumHeap@0 LoopSumMask@0))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (and (=> (= (ControlFlow 0 11) 8) anon68_Then_correct) (=> (= (ControlFlow 0 11) 10) anon68_Else_correct)))))))))
(let ((anon66_Else_correct  (=> (not (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@9) current$1@0 List__variant)) fn$$List__Nil)) (=> (and (= Heap@12 Heap@9) (= (ControlFlow 0 14) 11)) anon39_correct))))
(let ((anon66_Then_correct  (=> (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@9) current$1@0 List__variant)) fn$$List__Nil) (=> (and (and (= Heap@10 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@9) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@9) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@9) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@9) (store (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@9) null (|valid__List#sm| current$1@0) (PolymorphicMapType_11613 (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@9) null (|valid__List#sm| current$1@0))) (store (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@9) null (|valid__List#sm| current$1@0))) current$1@0 List__Node__0 true) (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@9) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@9) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@9) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@9) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@9) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@9) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@9) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@9) null (|valid__List#sm| current$1@0))))) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@9) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@9) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@9) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@9) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@9))) (= Heap@11 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@10) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@10) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@10) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@10) (store (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@10) null (|valid__List#sm| current$1@0) (PolymorphicMapType_11613 (store (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@10) null (|valid__List#sm| current$1@0))) current$1@0 List__Node__1 true) (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@10) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@10) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@10) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@10) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@10) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@10) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@10) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@10) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@10) null (|valid__List#sm| current$1@0))))) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@10) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@10) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@10) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@10) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@10)))) (and (= Heap@12 Heap@11) (= (ControlFlow 0 13) 11))) anon39_correct))))
(let ((anon65_Else_correct  (=> (and (not (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@5) current$1@0 List__variant)) fn$$List__Node)) (= Heap@9 Heap@5)) (and (=> (= (ControlFlow 0 16) 13) anon66_Then_correct) (=> (= (ControlFlow 0 16) 14) anon66_Else_correct)))))
(let ((anon65_Then_correct  (=> (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@5) current$1@0 List__variant)) fn$$List__Node) (=> (and (= Heap@6 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@5) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@5) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@5) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@5) (store (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| current$1@0) (PolymorphicMapType_11613 (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| current$1@0))) (store (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| current$1@0))) current$1@0 List__Node__0 true) (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@5) null (|valid__List#sm| current$1@0))))) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@5) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@5) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@5) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@5) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@5))) (= Heap@7 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@6) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@6) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@6) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@6) (store (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@6) null (|valid__List#sm| current$1@0) (PolymorphicMapType_11613 (store (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@6) null (|valid__List#sm| current$1@0))) current$1@0 List__Node__1 true) (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@6) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@6) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@6) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@6) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@6) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@6) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@6) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@6) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@6) null (|valid__List#sm| current$1@0))))) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@6) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@6) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@6) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@6) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@6)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_16 T@Ref) (f_21 T@Field_11121_11122) ) (!  (=> (or (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| current$1@0))) o_16 f_21) (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@7) current$1@0 List__Node__1)))) o_16 f_21)) (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| newPMask@0) o_16 f_21))
 :qid |stdinbpl.893:41|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| newPMask@0) o_16 f_21))
)) (forall ((o_16@@0 T@Ref) (f_21@@0 T@Field_16857_1823) ) (!  (=> (or (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| current$1@0))) o_16@@0 f_21@@0) (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@7) current$1@0 List__Node__1)))) o_16@@0 f_21@@0)) (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| newPMask@0) o_16@@0 f_21@@0))
 :qid |stdinbpl.893:41|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| newPMask@0) o_16@@0 f_21@@0))
))) (forall ((o_16@@1 T@Ref) (f_21@@1 T@Field_11108_53) ) (!  (=> (or (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| current$1@0))) o_16@@1 f_21@@1) (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@7) current$1@0 List__Node__1)))) o_16@@1 f_21@@1)) (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| newPMask@0) o_16@@1 f_21@@1))
 :qid |stdinbpl.893:41|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| newPMask@0) o_16@@1 f_21@@1))
))) (forall ((o_16@@2 T@Ref) (f_21@@2 T@Field_5646_5703) ) (!  (=> (or (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| current$1@0))) o_16@@2 f_21@@2) (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@7) current$1@0 List__Node__1)))) o_16@@2 f_21@@2)) (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| newPMask@0) o_16@@2 f_21@@2))
 :qid |stdinbpl.893:41|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| newPMask@0) o_16@@2 f_21@@2))
))) (forall ((o_16@@3 T@Ref) (f_21@@3 T@Field_5646_21026) ) (!  (=> (or (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| current$1@0))) o_16@@3 f_21@@3) (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@7) current$1@0 List__Node__1)))) o_16@@3 f_21@@3)) (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| newPMask@0) o_16@@3 f_21@@3))
 :qid |stdinbpl.893:41|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| newPMask@0) o_16@@3 f_21@@3))
))) (forall ((o_16@@4 T@Ref) (f_21@@4 T@Field_5702_5647) ) (!  (=> (or (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| current$1@0))) o_16@@4 f_21@@4) (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@7) current$1@0 List__Node__1)))) o_16@@4 f_21@@4)) (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| newPMask@0) o_16@@4 f_21@@4))
 :qid |stdinbpl.893:41|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| newPMask@0) o_16@@4 f_21@@4))
))) (forall ((o_16@@5 T@Ref) (f_21@@5 T@Field_5702_1823) ) (!  (=> (or (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| current$1@0))) o_16@@5 f_21@@5) (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@7) current$1@0 List__Node__1)))) o_16@@5 f_21@@5)) (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| newPMask@0) o_16@@5 f_21@@5))
 :qid |stdinbpl.893:41|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| newPMask@0) o_16@@5 f_21@@5))
))) (forall ((o_16@@6 T@Ref) (f_21@@6 T@Field_5702_53) ) (!  (=> (or (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| current$1@0))) o_16@@6 f_21@@6) (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@7) current$1@0 List__Node__1)))) o_16@@6 f_21@@6)) (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| newPMask@0) o_16@@6 f_21@@6))
 :qid |stdinbpl.893:41|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| newPMask@0) o_16@@6 f_21@@6))
))) (forall ((o_16@@7 T@Ref) (f_21@@7 T@Field_17286_17287) ) (!  (=> (or (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| current$1@0))) o_16@@7 f_21@@7) (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@7) current$1@0 List__Node__1)))) o_16@@7 f_21@@7)) (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| newPMask@0) o_16@@7 f_21@@7))
 :qid |stdinbpl.893:41|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| newPMask@0) o_16@@7 f_21@@7))
))) (forall ((o_16@@8 T@Ref) (f_21@@8 T@Field_21021_21026) ) (!  (=> (or (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| current$1@0))) o_16@@8 f_21@@8) (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@7) current$1@0 List__Node__1)))) o_16@@8 f_21@@8)) (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| newPMask@0) o_16@@8 f_21@@8))
 :qid |stdinbpl.893:41|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| newPMask@0) o_16@@8 f_21@@8))
))) (and (= Heap@8 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@7) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@7) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@7) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@7) (store (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@7) null (|valid__List#sm| current$1@0) newPMask@0) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@7) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@7) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@7) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@7) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@7))) (= Heap@9 Heap@8))) (and (=> (= (ControlFlow 0 15) 13) anon66_Then_correct) (=> (= (ControlFlow 0 15) 14) anon66_Else_correct)))))))
(let ((anon35_correct  (=> (= Heap@5 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@4) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@4) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@4) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@4) (store (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| current$1@0) (PolymorphicMapType_11613 (store (|PolymorphicMapType_11613_5646_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| current$1@0))) current$1@0 List__variant true) (|PolymorphicMapType_11613_5649_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_5646_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_5646_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_5646_39683#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_5647#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_1823#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_53#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_17287#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| current$1@0))) (|PolymorphicMapType_11613_17286_40731#PolymorphicMapType_11613| (select (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@4) null (|valid__List#sm| current$1@0))))) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@4) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@4) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@4) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@4) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@4))) (and (=> (= (ControlFlow 0 17) 15) anon65_Then_correct) (=> (= (ControlFlow 0 17) 16) anon65_Else_correct)))))
(let ((anon64_Else_correct  (=> (HasDirectPerm_5702_5703 Mask@22 null (valid__List current$1@0)) (=> (and (= Heap@4 Heap@1) (= (ControlFlow 0 19) 17)) anon35_correct))))
(let ((anon64_Then_correct  (=> (not (HasDirectPerm_5702_5703 Mask@22 null (valid__List current$1@0))) (=> (and (and (= Heap@2 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@1) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@1) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@1) (store (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@1) null (|valid__List#sm| current$1@0) ZeroPMask) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@1) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@1) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@1) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@1) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@1))) (= Heap@3 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@2) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@2) (store (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@2) null (valid__List current$1@0) freshVersion@0) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@2) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| Heap@2) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| Heap@2) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| Heap@2) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| Heap@2) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| Heap@2) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| Heap@2)))) (and (= Heap@4 Heap@3) (= (ControlFlow 0 18) 17))) anon35_correct))))
(let ((anon33_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (=> (= Mask@22 (PolymorphicMapType_11069 (store (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@21) null (valid__List current$1@0) (+ (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@21) null (valid__List current$1@0)) rd$1)) (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@21) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@21) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@21) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@21) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@21) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@21) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@21) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@21) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@21))) (=> (and (and (state Heap@1 Mask@22) (state Heap@1 Mask@22)) (and (|valid__List#trigger_5702| Heap@1 (valid__List current$1@0)) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@1) null (valid__List current$1@0)) (CombineFrames (FrameFragment_5647 (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__variant)) (CombineFrames (FrameFragment_5611 (ite (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__variant)) fn$$List__Node) (CombineFrames (FrameFragment_1823 (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@1) current$1@0 List__Node__0)) (CombineFrames (FrameFragment_5647 (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__Node__1)) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@1) null (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__Node__1))))) EmptyFrame)) (FrameFragment_5611 (ite (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__variant)) fn$$List__Nil) (CombineFrames (FrameFragment_1823 (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| Heap@1) current$1@0 List__Node__0)) (FrameFragment_5647 (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__Node__1))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 20) 18) anon64_Then_correct) (=> (= (ControlFlow 0 20) 19) anon64_Else_correct))))))))
(let ((anon32_correct  (=> (= Mask@20 (PolymorphicMapType_11069 (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@19) (store (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@19) current$1@0 List__Node__1 (- (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@19) current$1@0 List__Node__1) rd$1)) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@19) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@19) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@19) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@19) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@19) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@19) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@19) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@19))) (=> (and (= Mask@21 Mask@20) (= (ControlFlow 0 23) 20)) anon33_correct))))
(let ((anon63_Else_correct  (=> (and (= rd$1 NoPerm) (= (ControlFlow 0 26) 23)) anon32_correct)))
(let ((anon63_Then_correct  (=> (not (= rd$1 NoPerm)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (<= rd$1 (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@19) current$1@0 List__Node__1))) (=> (<= rd$1 (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@19) current$1@0 List__Node__1)) (=> (= (ControlFlow 0 24) 23) anon32_correct))))))
(let ((anon30_correct  (=> (= Mask@19 (PolymorphicMapType_11069 (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@18) (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@18) (store (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@18) current$1@0 List__Node__0 (- (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@18) current$1@0 List__Node__0) rd$1)) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@18) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@18) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@18) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@18) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@18) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@18) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@18))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (and (=> (= (ControlFlow 0 27) 24) anon63_Then_correct) (=> (= (ControlFlow 0 27) 26) anon63_Else_correct)))))))
(let ((anon62_Else_correct  (=> (and (= rd$1 NoPerm) (= (ControlFlow 0 31) 27)) anon30_correct)))
(let ((anon62_Then_correct  (=> (not (= rd$1 NoPerm)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (<= rd$1 (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@18) current$1@0 List__Node__0))) (=> (<= rd$1 (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@18) current$1@0 List__Node__0)) (=> (= (ControlFlow 0 29) 27) anon30_correct))))))
(let ((anon61_Then_correct  (=> (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__variant)) fn$$List__Nil) (and (=> (= (ControlFlow 0 32) (- 0 33)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (and (=> (= (ControlFlow 0 32) 29) anon62_Then_correct) (=> (= (ControlFlow 0 32) 31) anon62_Else_correct)))))))
(let ((anon61_Else_correct  (=> (not (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__variant)) fn$$List__Nil)) (=> (and (= Mask@21 Mask@18) (= (ControlFlow 0 22) 20)) anon33_correct))))
(let ((anon26_correct  (=> (= Mask@17 (PolymorphicMapType_11069 (store (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@16) null (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__Node__1)) (- (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@16) null (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__Node__1))) rd$1)) (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@16) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@16) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@16) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@16) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@16) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@16) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@16) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@16) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@16))) (=> (and (InsidePredicate_5702_5702 (valid__List current$1@0) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@1) null (valid__List current$1@0)) (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__Node__1)) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@1) null (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__Node__1)))) (= Mask@18 Mask@17)) (and (=> (= (ControlFlow 0 35) 32) anon61_Then_correct) (=> (= (ControlFlow 0 35) 22) anon61_Else_correct))))))
(let ((anon60_Else_correct  (=> (and (= rd$1 NoPerm) (= (ControlFlow 0 38) 35)) anon26_correct)))
(let ((anon60_Then_correct  (=> (not (= rd$1 NoPerm)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (<= rd$1 (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@16) null (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__Node__1))))) (=> (<= rd$1 (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@16) null (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__Node__1)))) (=> (= (ControlFlow 0 36) 35) anon26_correct))))))
(let ((anon24_correct  (=> (= Mask@16 (PolymorphicMapType_11069 (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@15) (store (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@15) current$1@0 List__Node__1 (- (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@15) current$1@0 List__Node__1) rd$1)) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@15) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@15) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@15) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@15) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@15) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@15) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@15) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@15))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (and (=> (= (ControlFlow 0 39) 36) anon60_Then_correct) (=> (= (ControlFlow 0 39) 38) anon60_Else_correct)))))))
(let ((anon59_Else_correct  (=> (and (= rd$1 NoPerm) (= (ControlFlow 0 43) 39)) anon24_correct)))
(let ((anon59_Then_correct  (=> (not (= rd$1 NoPerm)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (<= rd$1 (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@15) current$1@0 List__Node__1))) (=> (<= rd$1 (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@15) current$1@0 List__Node__1)) (=> (= (ControlFlow 0 41) 39) anon24_correct))))))
(let ((anon22_correct  (=> (= Mask@15 (PolymorphicMapType_11069 (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@14) (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@14) (store (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@14) current$1@0 List__Node__0 (- (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@14) current$1@0 List__Node__0) rd$1)) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@14) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@14) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@14) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@14) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@14) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@14) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@14))) (and (=> (= (ControlFlow 0 44) (- 0 45)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (and (=> (= (ControlFlow 0 44) 41) anon59_Then_correct) (=> (= (ControlFlow 0 44) 43) anon59_Else_correct)))))))
(let ((anon58_Else_correct  (=> (and (= rd$1 NoPerm) (= (ControlFlow 0 48) 44)) anon22_correct)))
(let ((anon58_Then_correct  (=> (not (= rd$1 NoPerm)) (and (=> (= (ControlFlow 0 46) (- 0 47)) (<= rd$1 (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@14) current$1@0 List__Node__0))) (=> (<= rd$1 (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@14) current$1@0 List__Node__0)) (=> (= (ControlFlow 0 46) 44) anon22_correct))))))
(let ((anon57_Then_correct  (=> (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__variant)) fn$$List__Node) (and (=> (= (ControlFlow 0 49) (- 0 50)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (and (=> (= (ControlFlow 0 49) 46) anon58_Then_correct) (=> (= (ControlFlow 0 49) 48) anon58_Else_correct)))))))
(let ((anon57_Else_correct  (=> (and (not (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__variant)) fn$$List__Node)) (= Mask@18 Mask@14)) (and (=> (= (ControlFlow 0 34) 32) anon61_Then_correct) (=> (= (ControlFlow 0 34) 22) anon61_Else_correct)))))
(let ((anon19_correct  (=> (= Mask@14 (PolymorphicMapType_11069 (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@13) (store (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@13) current$1@0 List__variant (- (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@13) current$1@0 List__variant) rd$1)) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@13) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@13) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@13) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@13) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@13) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@13) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@13) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@13))) (and (=> (= (ControlFlow 0 51) (- 0 52)) (isList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__variant))) (=> (isList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__variant)) (and (=> (= (ControlFlow 0 51) 49) anon57_Then_correct) (=> (= (ControlFlow 0 51) 34) anon57_Else_correct)))))))
(let ((anon56_Else_correct  (=> (and (= rd$1 NoPerm) (= (ControlFlow 0 55) 51)) anon19_correct)))
(let ((anon56_Then_correct  (=> (not (= rd$1 NoPerm)) (and (=> (= (ControlFlow 0 53) (- 0 54)) (<= rd$1 (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@13) current$1@0 List__variant))) (=> (<= rd$1 (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@13) current$1@0 List__variant)) (=> (= (ControlFlow 0 53) 51) anon19_correct))))))
(let ((anon55_Else_correct  (=> (not (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__variant)) fn$$List__Node)) (and (=> (= (ControlFlow 0 56) (- 0 58)) (> rd$1 NoPerm)) (=> (> rd$1 NoPerm) (and (=> (= (ControlFlow 0 56) (- 0 57)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (and (=> (= (ControlFlow 0 56) 53) anon56_Then_correct) (=> (= (ControlFlow 0 56) 55) anon56_Else_correct)))))))))
(let ((anon15_correct  (=> (state Heap@1 Mask@13) (=> (and (state Heap@1 Mask@13) (state Heap@1 Mask@13)) (and (=> (= (ControlFlow 0 66) (- 0 68)) (HasDirectPerm_5646_5647 Mask@13 current$1@0 List__Node__1)) (=> (HasDirectPerm_5646_5647 Mask@13 current$1@0 List__Node__1) (=> (and (= tail$1@0 (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__Node__1)) (state Heap@1 Mask@13)) (and (=> (= (ControlFlow 0 66) (- 0 67)) (HasDirectPerm_5646_5647 Mask@13 current$1@0 List__variant)) (=> (HasDirectPerm_5646_5647 Mask@13 current$1@0 List__variant) (and (=> (= (ControlFlow 0 66) 63) anon55_Then_correct) (=> (= (ControlFlow 0 66) 56) anon55_Else_correct)))))))))))
(let ((anon54_Else_correct  (=> (not (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__variant)) fn$$List__Nil)) (=> (and (= Mask@13 Mask@10) (= (ControlFlow 0 72) 66)) anon15_correct))))
(let ((anon54_Then_correct  (=> (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__variant)) fn$$List__Nil) (and (=> (= (ControlFlow 0 69) (- 0 71)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (=> (=> (> rd$1 NoPerm) (not (= current$1@0 null))) (=> (and (= Mask@11 (PolymorphicMapType_11069 (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@10) (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@10) (store (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@10) current$1@0 List__Node__0 (+ (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@10) current$1@0 List__Node__0) rd$1)) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@10) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@10) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@10) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@10) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@10) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@10) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@10))) (state Heap@1 Mask@11)) (and (=> (= (ControlFlow 0 69) (- 0 70)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (=> (=> (> rd$1 NoPerm) (not (= current$1@0 null))) (=> (and (and (= Mask@12 (PolymorphicMapType_11069 (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@11) (store (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@11) current$1@0 List__Node__1 (+ (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@11) current$1@0 List__Node__1) rd$1)) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@11) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@11) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@11) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@11) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@11) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@11) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@11) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@11))) (state Heap@1 Mask@12)) (and (= Mask@13 Mask@12) (= (ControlFlow 0 69) 66))) anon15_correct)))))))))))
(let ((anon53_Else_correct  (=> (and (not (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__variant)) fn$$List__Node)) (= Mask@10 Mask@6)) (and (=> (= (ControlFlow 0 77) 69) anon54_Then_correct) (=> (= (ControlFlow 0 77) 72) anon54_Else_correct)))))
(let ((anon53_Then_correct  (=> (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__variant)) fn$$List__Node) (and (=> (= (ControlFlow 0 73) (- 0 76)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (=> (=> (> rd$1 NoPerm) (not (= current$1@0 null))) (=> (and (= Mask@7 (PolymorphicMapType_11069 (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@6) (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@6) (store (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@6) current$1@0 List__Node__0 (+ (select (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@6) current$1@0 List__Node__0) rd$1)) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@6) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@6) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@6) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@6) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@6) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@6) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@6))) (state Heap@1 Mask@7)) (and (=> (= (ControlFlow 0 73) (- 0 75)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (=> (=> (> rd$1 NoPerm) (not (= current$1@0 null))) (=> (and (= Mask@8 (PolymorphicMapType_11069 (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@7) (store (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@7) current$1@0 List__Node__1 (+ (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@7) current$1@0 List__Node__1) rd$1)) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@7) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@7) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@7) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@7) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@7) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@7) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@7) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@7))) (state Heap@1 Mask@8)) (and (=> (= (ControlFlow 0 73) (- 0 74)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (=> (and (and (= Mask@9 (PolymorphicMapType_11069 (store (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@8) null (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__Node__1)) (+ (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@8) null (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__Node__1))) rd$1)) (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@8) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@8) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@8) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@8) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@8) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@8) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@8) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@8) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@8))) (InsidePredicate_5702_5702 (valid__List current$1@0) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@1) null (valid__List current$1@0)) (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__Node__1)) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| Heap@1) null (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__Node__1))))) (and (state Heap@1 Mask@9) (= Mask@10 Mask@9))) (and (=> (= (ControlFlow 0 73) 69) anon54_Then_correct) (=> (= (ControlFlow 0 73) 72) anon54_Else_correct))))))))))))))))
(let ((anon11_correct  (and (=> (= (ControlFlow 0 78) (- 0 79)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (=> (and (and (=> (> rd$1 NoPerm) (not (= current$1@0 null))) (= Mask@6 (PolymorphicMapType_11069 (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@5) (store (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@5) current$1@0 List__variant (+ (select (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@5) current$1@0 List__variant) rd$1)) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@5) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@5) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@5) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@5) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@5) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@5) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@5) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@5)))) (and (state Heap@1 Mask@6) (isList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| Heap@1) current$1@0 List__variant)))) (and (=> (= (ControlFlow 0 78) 73) anon53_Then_correct) (=> (= (ControlFlow 0 78) 77) anon53_Else_correct)))))))
(let ((anon52_Else_correct  (=> (HasDirectPerm_5702_5703 Mask@5 null (valid__List current$1@0)) (=> (and (= Heap@1 ExhaleHeap@0) (= (ControlFlow 0 81) 78)) anon11_correct))))
(let ((anon52_Then_correct  (=> (and (and (not (HasDirectPerm_5702_5703 Mask@5 null (valid__List current$1@0))) (= Heap@0 (PolymorphicMapType_11048 (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@0) (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@0) (store (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@0) null (valid__List current$1@0) newVersion@0) (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@0) (|PolymorphicMapType_11048_5706_21113#PolymorphicMapType_11048| ExhaleHeap@0) (|PolymorphicMapType_11048_5646_5703#PolymorphicMapType_11048| ExhaleHeap@0) (|PolymorphicMapType_11048_5646_36882#PolymorphicMapType_11048| ExhaleHeap@0) (|PolymorphicMapType_11048_5702_5647#PolymorphicMapType_11048| ExhaleHeap@0) (|PolymorphicMapType_11048_5702_53#PolymorphicMapType_11048| ExhaleHeap@0) (|PolymorphicMapType_11048_5702_1823#PolymorphicMapType_11048| ExhaleHeap@0)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 80) 78))) anon11_correct)))
(let ((anon9_correct  (=> (= Mask@5 (PolymorphicMapType_11069 (store (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@3) null (valid__List current$1@0) (- (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@3) null (valid__List current$1@0)) rd$1)) (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@3) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@3) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@3) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@3) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@3) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@3) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@3) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@3) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@3))) (and (=> (= (ControlFlow 0 82) 80) anon52_Then_correct) (=> (= (ControlFlow 0 82) 81) anon52_Else_correct)))))
(let ((anon51_Else_correct  (=> (and (= rd$1 NoPerm) (= (ControlFlow 0 85) 82)) anon9_correct)))
(let ((anon51_Then_correct  (=> (not (= rd$1 NoPerm)) (and (=> (= (ControlFlow 0 83) (- 0 84)) (<= rd$1 (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@3) null (valid__List current$1@0)))) (=> (<= rd$1 (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@3) null (valid__List current$1@0))) (=> (= (ControlFlow 0 83) 82) anon9_correct))))))
(let ((anon50_Then_correct  (=> (state ExhaleHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 86) (- 0 89)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (=> (= Mask@3 (PolymorphicMapType_11069 (store (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| ZeroMask) null (valid__List current$1@0) (+ (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| ZeroMask) null (valid__List current$1@0)) rd$1)) (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| ZeroMask))) (=> (and (and (state ExhaleHeap@0 Mask@3) (state ExhaleHeap@0 Mask@3)) (and (state ExhaleHeap@0 Mask@3) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@0) tail$1 $allocated))) (and (=> (= (ControlFlow 0 86) (- 0 88)) (> rd$1 NoPerm)) (=> (> rd$1 NoPerm) (=> (and (|valid__List#trigger_5702| ExhaleHeap@0 (valid__List current$1@0)) (= (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@0) null (valid__List current$1@0)) (CombineFrames (FrameFragment_5647 (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@0) current$1@0 List__variant)) (CombineFrames (FrameFragment_5611 (ite (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@0) current$1@0 List__variant)) fn$$List__Node) (CombineFrames (FrameFragment_1823 (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@0) current$1@0 List__Node__0)) (CombineFrames (FrameFragment_5647 (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@0) current$1@0 List__Node__1)) (select (|PolymorphicMapType_11048_5702_5703#PolymorphicMapType_11048| ExhaleHeap@0) null (valid__List (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@0) current$1@0 List__Node__1))))) EmptyFrame)) (FrameFragment_5611 (ite (= (variantOfList (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@0) current$1@0 List__variant)) fn$$List__Nil) (CombineFrames (FrameFragment_1823 (select (|PolymorphicMapType_11048_5649_1823#PolymorphicMapType_11048| ExhaleHeap@0) current$1@0 List__Node__0)) (FrameFragment_5647 (select (|PolymorphicMapType_11048_5455_5456#PolymorphicMapType_11048| ExhaleHeap@0) current$1@0 List__Node__1))) EmptyFrame)))))) (and (=> (= (ControlFlow 0 86) (- 0 87)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (and (=> (= (ControlFlow 0 86) 83) anon51_Then_correct) (=> (= (ControlFlow 0 86) 85) anon51_Else_correct))))))))))))))
(let ((anon50_Else_correct true))
(let ((anon49_Then_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (>= rd$1 NoPerm))))
(let ((anon4_correct  (=> (= Mask@1 (PolymorphicMapType_11069 (store (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@0) null (valid__List list$1) (- (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@0) null (valid__List list$1)) rd$1)) (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| Mask@0) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| Mask@0) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| Mask@0) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| Mask@0) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| Mask@0) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| Mask@0) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| Mask@0) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| Mask@0) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| Mask@0))) (=> (and (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@0 Mask@1) (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| ExhaleHeap@0) current$1@0 $allocated)) (and (and (=> (= (ControlFlow 0 90) 4) anon49_Then_correct) (=> (= (ControlFlow 0 90) 86) anon50_Then_correct)) (=> (= (ControlFlow 0 90) 6) anon50_Else_correct))))))
(let ((anon48_Else_correct  (=> (and (= rd$1 NoPerm) (= (ControlFlow 0 93) 90)) anon4_correct)))
(let ((anon48_Then_correct  (=> (not (= rd$1 NoPerm)) (and (=> (= (ControlFlow 0 91) (- 0 92)) (<= rd$1 (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@0) null (valid__List list$1)))) (=> (<= rd$1 (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| Mask@0) null (valid__List list$1))) (=> (= (ControlFlow 0 91) 90) anon4_correct))))))
(let ((anon47_Else_correct  (=> (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@58) current$1 $allocated) (=> (and (and (state Heap@@58 Mask@0) (state Heap@@58 Mask@0)) (and (state Heap@@58 Mask@0) (state Heap@@58 Mask@0))) (and (=> (= (ControlFlow 0 94) (- 0 95)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (and (=> (= (ControlFlow 0 94) 91) anon48_Then_correct) (=> (= (ControlFlow 0 94) 93) anon48_Else_correct))))))))
(let ((anon47_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (= (ControlFlow 0 2) (- 0 1))) (>= rd$1 NoPerm))))
(let ((anon0_correct  (=> (state Heap@@58 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_11048_5452_53#PolymorphicMapType_11048| Heap@@58) list$1 $allocated) (< NoPerm rd$1)) (and (< rd$1 FullPerm) (state Heap@@58 ZeroMask))) (and (=> (= (ControlFlow 0 96) (- 0 97)) (>= rd$1 NoPerm)) (=> (>= rd$1 NoPerm) (=> (= Mask@0 (PolymorphicMapType_11069 (store (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| ZeroMask) null (valid__List list$1) (+ (select (|PolymorphicMapType_11069_5702_5703#PolymorphicMapType_11069| ZeroMask) null (valid__List list$1)) rd$1)) (|PolymorphicMapType_11069_5646_5647#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5649_1823#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5702_5647#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5702_1823#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5702_53#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5702_60434#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5646_5703#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5646_53#PolymorphicMapType_11069| ZeroMask) (|PolymorphicMapType_11069_5646_60833#PolymorphicMapType_11069| ZeroMask))) (=> (and (state Heap@@58 Mask@0) (state Heap@@58 Mask@0)) (and (=> (= (ControlFlow 0 96) 2) anon47_Then_correct) (=> (= (ControlFlow 0 96) 94) anon47_Else_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 98) 96) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)