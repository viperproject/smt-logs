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
(declare-sort T@Field_10296_53 0)
(declare-sort T@Field_10309_10310 0)
(declare-sort T@Field_13903_13904 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_13726_13727 0)
(declare-sort T@PtrDomainType 0)
(declare-sort T@Field_13776_1359 0)
(declare-sort T@Field_13916_13921 0)
(declare-sort T@Field_5558_13904 0)
(declare-sort T@Field_5558_13921 0)
(declare-sort T@Field_13903_5559 0)
(declare-sort T@Field_13903_5566 0)
(declare-sort T@Field_13903_1359 0)
(declare-sort T@Field_13903_53 0)
(declare-datatypes ((T@PolymorphicMapType_10257 0)) (((PolymorphicMapType_10257 (|PolymorphicMapType_10257_5558_5559#PolymorphicMapType_10257| (Array T@Ref T@Field_13726_13727 Real)) (|PolymorphicMapType_10257_5561_1359#PolymorphicMapType_10257| (Array T@Ref T@Field_13776_1359 Real)) (|PolymorphicMapType_10257_5569_5570#PolymorphicMapType_10257| (Array T@Ref T@Field_13903_13904 Real)) (|PolymorphicMapType_10257_5565_5566#PolymorphicMapType_10257| (Array T@Ref T@Field_10309_10310 Real)) (|PolymorphicMapType_10257_5558_5570#PolymorphicMapType_10257| (Array T@Ref T@Field_5558_13904 Real)) (|PolymorphicMapType_10257_5558_53#PolymorphicMapType_10257| (Array T@Ref T@Field_10296_53 Real)) (|PolymorphicMapType_10257_5558_47035#PolymorphicMapType_10257| (Array T@Ref T@Field_5558_13921 Real)) (|PolymorphicMapType_10257_5569_5559#PolymorphicMapType_10257| (Array T@Ref T@Field_13903_5559 Real)) (|PolymorphicMapType_10257_5569_1359#PolymorphicMapType_10257| (Array T@Ref T@Field_13903_1359 Real)) (|PolymorphicMapType_10257_5569_5566#PolymorphicMapType_10257| (Array T@Ref T@Field_13903_5566 Real)) (|PolymorphicMapType_10257_5569_53#PolymorphicMapType_10257| (Array T@Ref T@Field_13903_53 Real)) (|PolymorphicMapType_10257_5569_47529#PolymorphicMapType_10257| (Array T@Ref T@Field_13916_13921 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10785 0)) (((PolymorphicMapType_10785 (|PolymorphicMapType_10785_5558_5559#PolymorphicMapType_10785| (Array T@Ref T@Field_13726_13727 Bool)) (|PolymorphicMapType_10785_5561_1359#PolymorphicMapType_10785| (Array T@Ref T@Field_13776_1359 Bool)) (|PolymorphicMapType_10785_5558_53#PolymorphicMapType_10785| (Array T@Ref T@Field_10296_53 Bool)) (|PolymorphicMapType_10785_5558_10310#PolymorphicMapType_10785| (Array T@Ref T@Field_10309_10310 Bool)) (|PolymorphicMapType_10785_5558_13904#PolymorphicMapType_10785| (Array T@Ref T@Field_5558_13904 Bool)) (|PolymorphicMapType_10785_5558_39736#PolymorphicMapType_10785| (Array T@Ref T@Field_5558_13921 Bool)) (|PolymorphicMapType_10785_13903_5559#PolymorphicMapType_10785| (Array T@Ref T@Field_13903_5559 Bool)) (|PolymorphicMapType_10785_13903_1359#PolymorphicMapType_10785| (Array T@Ref T@Field_13903_1359 Bool)) (|PolymorphicMapType_10785_13903_53#PolymorphicMapType_10785| (Array T@Ref T@Field_13903_53 Bool)) (|PolymorphicMapType_10785_13903_10310#PolymorphicMapType_10785| (Array T@Ref T@Field_13903_5566 Bool)) (|PolymorphicMapType_10785_13903_13904#PolymorphicMapType_10785| (Array T@Ref T@Field_13903_13904 Bool)) (|PolymorphicMapType_10785_13903_40988#PolymorphicMapType_10785| (Array T@Ref T@Field_13916_13921 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10236 0)) (((PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| (Array T@Ref T@Field_10296_53 Bool)) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| (Array T@Ref T@Field_10309_10310 T@Ref)) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| (Array T@Ref T@Field_13903_13904 T@FrameType)) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| (Array T@Ref T@Field_13726_13727 T@PtrDomainType)) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| (Array T@Ref T@Field_13776_1359 Int)) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| (Array T@Ref T@Field_13916_13921 T@PolymorphicMapType_10785)) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| (Array T@Ref T@Field_5558_13904 T@FrameType)) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| (Array T@Ref T@Field_5558_13921 T@PolymorphicMapType_10785)) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| (Array T@Ref T@Field_13903_5559 T@PtrDomainType)) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| (Array T@Ref T@Field_13903_5566 T@Ref)) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| (Array T@Ref T@Field_13903_1359 Int)) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| (Array T@Ref T@Field_13903_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_10296_53)
(declare-fun Array__ptr () T@Field_13726_13727)
(declare-fun Array__len () T@Field_13776_1359)
(declare-fun Int__v () T@Field_13776_1359)
(declare-fun pval () T@Field_10309_10310)
(declare-fun succHeap (T@PolymorphicMapType_10236 T@PolymorphicMapType_10236) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10236 T@PolymorphicMapType_10236) Bool)
(declare-fun state (T@PolymorphicMapType_10236 T@PolymorphicMapType_10257) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10257) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10785)
(declare-fun valid__Array (T@Ref) T@Field_13903_13904)
(declare-fun IsPredicateField_5569_5570 (T@Field_13903_13904) Bool)
(declare-fun |valid__Array#trigger_5569| (T@PolymorphicMapType_10236 T@Field_13903_13904) Bool)
(declare-fun |valid__Array#everUsed_5569| (T@Field_13903_13904) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10236 T@PolymorphicMapType_10236 T@PolymorphicMapType_10257) Bool)
(declare-fun HasDirectPerm_13903_13904 (T@PolymorphicMapType_10257 T@Ref T@Field_13903_13904) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5569 (T@Field_13903_13904) T@Field_13916_13921)
(declare-fun IsPredicateField_5558_38075 (T@Field_5558_13904) Bool)
(declare-fun HasDirectPerm_5558_13904 (T@PolymorphicMapType_10257 T@Ref T@Field_5558_13904) Bool)
(declare-fun PredicateMaskField_5558 (T@Field_5558_13904) T@Field_5558_13921)
(declare-fun IsWandField_13903_42153 (T@Field_13903_13904) Bool)
(declare-fun WandMaskField_13903 (T@Field_13903_13904) T@Field_13916_13921)
(declare-fun IsWandField_5558_41796 (T@Field_5558_13904) Bool)
(declare-fun WandMaskField_5558 (T@Field_5558_13904) T@Field_5558_13921)
(declare-fun |valid__Array#sm| (T@Ref) T@Field_13916_13921)
(declare-fun dummyHeap () T@PolymorphicMapType_10236)
(declare-fun ZeroMask () T@PolymorphicMapType_10257)
(declare-fun InsidePredicate_13903_13903 (T@Field_13903_13904 T@FrameType T@Field_13903_13904 T@FrameType) Bool)
(declare-fun InsidePredicate_10296_10296 (T@Field_5558_13904 T@FrameType T@Field_5558_13904 T@FrameType) Bool)
(declare-fun IsPredicateField_5558_5559 (T@Field_13726_13727) Bool)
(declare-fun IsWandField_5558_5559 (T@Field_13726_13727) Bool)
(declare-fun IsPredicateField_5561_1359 (T@Field_13776_1359) Bool)
(declare-fun IsWandField_5561_1359 (T@Field_13776_1359) Bool)
(declare-fun IsPredicateField_5565_5566 (T@Field_10309_10310) Bool)
(declare-fun IsWandField_5565_5566 (T@Field_10309_10310) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5569_50261 (T@Field_13916_13921) Bool)
(declare-fun IsWandField_5569_50277 (T@Field_13916_13921) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5569_53 (T@Field_13903_53) Bool)
(declare-fun IsWandField_5569_53 (T@Field_13903_53) Bool)
(declare-fun IsPredicateField_5569_5566 (T@Field_13903_5566) Bool)
(declare-fun IsWandField_5569_5566 (T@Field_13903_5566) Bool)
(declare-fun IsPredicateField_5569_1359 (T@Field_13903_1359) Bool)
(declare-fun IsWandField_5569_1359 (T@Field_13903_1359) Bool)
(declare-fun IsPredicateField_5569_5559 (T@Field_13903_5559) Bool)
(declare-fun IsWandField_5569_5559 (T@Field_13903_5559) Bool)
(declare-fun IsPredicateField_5558_49262 (T@Field_5558_13921) Bool)
(declare-fun IsWandField_5558_49278 (T@Field_5558_13921) Bool)
(declare-fun IsPredicateField_5558_53 (T@Field_10296_53) Bool)
(declare-fun IsWandField_5558_53 (T@Field_10296_53) Bool)
(declare-fun HasDirectPerm_13903_37830 (T@PolymorphicMapType_10257 T@Ref T@Field_13916_13921) Bool)
(declare-fun HasDirectPerm_13903_53 (T@PolymorphicMapType_10257 T@Ref T@Field_13903_53) Bool)
(declare-fun HasDirectPerm_13903_1359 (T@PolymorphicMapType_10257 T@Ref T@Field_13903_1359) Bool)
(declare-fun HasDirectPerm_13903_5566 (T@PolymorphicMapType_10257 T@Ref T@Field_13903_5566) Bool)
(declare-fun HasDirectPerm_13903_5559 (T@PolymorphicMapType_10257 T@Ref T@Field_13903_5559) Bool)
(declare-fun HasDirectPerm_5558_36440 (T@PolymorphicMapType_10257 T@Ref T@Field_5558_13921) Bool)
(declare-fun HasDirectPerm_5558_53 (T@PolymorphicMapType_10257 T@Ref T@Field_10296_53) Bool)
(declare-fun HasDirectPerm_5561_1359 (T@PolymorphicMapType_10257 T@Ref T@Field_13776_1359) Bool)
(declare-fun HasDirectPerm_5565_5566 (T@PolymorphicMapType_10257 T@Ref T@Field_10309_10310) Bool)
(declare-fun HasDirectPerm_5558_5559 (T@PolymorphicMapType_10257 T@Ref T@Field_13726_13727) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10257 T@PolymorphicMapType_10257 T@PolymorphicMapType_10257) Bool)
(declare-fun getPredWandId_5569_5570 (T@Field_13903_13904) Int)
(declare-fun loc (T@PtrDomainType Int) T@Ref)
(declare-fun InsidePredicate_13903_10296 (T@Field_13903_13904 T@FrameType T@Field_5558_13904 T@FrameType) Bool)
(declare-fun InsidePredicate_10296_13903 (T@Field_5558_13904 T@FrameType T@Field_13903_13904 T@FrameType) Bool)
(assert (distinct Array__len Int__v)
)
(assert (forall ((Heap0 T@PolymorphicMapType_10236) (Heap1 T@PolymorphicMapType_10236) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10236) (Mask T@PolymorphicMapType_10257) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10236) (Heap1@@0 T@PolymorphicMapType_10236) (Heap2 T@PolymorphicMapType_10236) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_13916_13921) ) (!  (not (select (|PolymorphicMapType_10785_13903_40988#PolymorphicMapType_10785| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10785_13903_40988#PolymorphicMapType_10785| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13903_13904) ) (!  (not (select (|PolymorphicMapType_10785_13903_13904#PolymorphicMapType_10785| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10785_13903_13904#PolymorphicMapType_10785| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13903_5566) ) (!  (not (select (|PolymorphicMapType_10785_13903_10310#PolymorphicMapType_10785| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10785_13903_10310#PolymorphicMapType_10785| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_13903_53) ) (!  (not (select (|PolymorphicMapType_10785_13903_53#PolymorphicMapType_10785| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10785_13903_53#PolymorphicMapType_10785| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_13903_1359) ) (!  (not (select (|PolymorphicMapType_10785_13903_1359#PolymorphicMapType_10785| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10785_13903_1359#PolymorphicMapType_10785| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_13903_5559) ) (!  (not (select (|PolymorphicMapType_10785_13903_5559#PolymorphicMapType_10785| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10785_13903_5559#PolymorphicMapType_10785| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5558_13921) ) (!  (not (select (|PolymorphicMapType_10785_5558_39736#PolymorphicMapType_10785| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10785_5558_39736#PolymorphicMapType_10785| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_5558_13904) ) (!  (not (select (|PolymorphicMapType_10785_5558_13904#PolymorphicMapType_10785| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10785_5558_13904#PolymorphicMapType_10785| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_10309_10310) ) (!  (not (select (|PolymorphicMapType_10785_5558_10310#PolymorphicMapType_10785| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10785_5558_10310#PolymorphicMapType_10785| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_10296_53) ) (!  (not (select (|PolymorphicMapType_10785_5558_53#PolymorphicMapType_10785| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10785_5558_53#PolymorphicMapType_10785| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_13776_1359) ) (!  (not (select (|PolymorphicMapType_10785_5561_1359#PolymorphicMapType_10785| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10785_5561_1359#PolymorphicMapType_10785| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_13726_13727) ) (!  (not (select (|PolymorphicMapType_10785_5558_5559#PolymorphicMapType_10785| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10785_5558_5559#PolymorphicMapType_10785| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((self T@Ref) ) (! (IsPredicateField_5569_5570 (valid__Array self))
 :qid |stdinbpl.244:15|
 :skolemid |24|
 :pattern ( (valid__Array self))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10236) (self@@0 T@Ref) ) (! (|valid__Array#everUsed_5569| (valid__Array self@@0))
 :qid |stdinbpl.263:15|
 :skolemid |28|
 :pattern ( (|valid__Array#trigger_5569| Heap@@0 (valid__Array self@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10236) (ExhaleHeap T@PolymorphicMapType_10236) (Mask@@0 T@PolymorphicMapType_10257) (pm_f_13 T@Field_13903_13904) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_13903_13904 Mask@@0 null pm_f_13) (IsPredicateField_5569_5570 pm_f_13)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_13726_13727) ) (!  (=> (select (|PolymorphicMapType_10785_5558_5559#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@1) null (PredicateMaskField_5569 pm_f_13))) o2_13 f_30) (= (select (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@1) o2_13 f_30) (select (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| ExhaleHeap) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| ExhaleHeap) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_13776_1359) ) (!  (=> (select (|PolymorphicMapType_10785_5561_1359#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@1) null (PredicateMaskField_5569 pm_f_13))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@1) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| ExhaleHeap) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| ExhaleHeap) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_10296_53) ) (!  (=> (select (|PolymorphicMapType_10785_5558_53#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@1) null (PredicateMaskField_5569 pm_f_13))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@1) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| ExhaleHeap) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| ExhaleHeap) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_10309_10310) ) (!  (=> (select (|PolymorphicMapType_10785_5558_10310#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@1) null (PredicateMaskField_5569 pm_f_13))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@1) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| ExhaleHeap) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| ExhaleHeap) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_5558_13904) ) (!  (=> (select (|PolymorphicMapType_10785_5558_13904#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@1) null (PredicateMaskField_5569 pm_f_13))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@1) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| ExhaleHeap) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| ExhaleHeap) o2_13@@3 f_30@@3))
))) (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_5558_13921) ) (!  (=> (select (|PolymorphicMapType_10785_5558_39736#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@1) null (PredicateMaskField_5569 pm_f_13))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@1) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| ExhaleHeap) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| ExhaleHeap) o2_13@@4 f_30@@4))
))) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_13903_5559) ) (!  (=> (select (|PolymorphicMapType_10785_13903_5559#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@1) null (PredicateMaskField_5569 pm_f_13))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@1) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| ExhaleHeap) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| ExhaleHeap) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_13903_1359) ) (!  (=> (select (|PolymorphicMapType_10785_13903_1359#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@1) null (PredicateMaskField_5569 pm_f_13))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@1) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| ExhaleHeap) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| ExhaleHeap) o2_13@@6 f_30@@6))
))) (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_13903_53) ) (!  (=> (select (|PolymorphicMapType_10785_13903_53#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@1) null (PredicateMaskField_5569 pm_f_13))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@1) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| ExhaleHeap) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| ExhaleHeap) o2_13@@7 f_30@@7))
))) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_13903_5566) ) (!  (=> (select (|PolymorphicMapType_10785_13903_10310#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@1) null (PredicateMaskField_5569 pm_f_13))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@1) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| ExhaleHeap) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| ExhaleHeap) o2_13@@8 f_30@@8))
))) (forall ((o2_13@@9 T@Ref) (f_30@@9 T@Field_13903_13904) ) (!  (=> (select (|PolymorphicMapType_10785_13903_13904#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@1) null (PredicateMaskField_5569 pm_f_13))) o2_13@@9 f_30@@9) (= (select (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@1) o2_13@@9 f_30@@9) (select (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| ExhaleHeap) o2_13@@9 f_30@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| ExhaleHeap) o2_13@@9 f_30@@9))
))) (forall ((o2_13@@10 T@Ref) (f_30@@10 T@Field_13916_13921) ) (!  (=> (select (|PolymorphicMapType_10785_13903_40988#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@1) null (PredicateMaskField_5569 pm_f_13))) o2_13@@10 f_30@@10) (= (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@1) o2_13@@10 f_30@@10) (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| ExhaleHeap) o2_13@@10 f_30@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| ExhaleHeap) o2_13@@10 f_30@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_5569_5570 pm_f_13))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10236) (ExhaleHeap@@0 T@PolymorphicMapType_10236) (Mask@@1 T@PolymorphicMapType_10257) (pm_f_13@@0 T@Field_5558_13904) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5558_13904 Mask@@1 null pm_f_13@@0) (IsPredicateField_5558_38075 pm_f_13@@0)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@11 T@Ref) (f_30@@11 T@Field_13726_13727) ) (!  (=> (select (|PolymorphicMapType_10785_5558_5559#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@2) null (PredicateMaskField_5558 pm_f_13@@0))) o2_13@@11 f_30@@11) (= (select (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@2) o2_13@@11 f_30@@11) (select (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@11 f_30@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@11 f_30@@11))
)) (forall ((o2_13@@12 T@Ref) (f_30@@12 T@Field_13776_1359) ) (!  (=> (select (|PolymorphicMapType_10785_5561_1359#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@2) null (PredicateMaskField_5558 pm_f_13@@0))) o2_13@@12 f_30@@12) (= (select (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@2) o2_13@@12 f_30@@12) (select (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@12 f_30@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@12 f_30@@12))
))) (forall ((o2_13@@13 T@Ref) (f_30@@13 T@Field_10296_53) ) (!  (=> (select (|PolymorphicMapType_10785_5558_53#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@2) null (PredicateMaskField_5558 pm_f_13@@0))) o2_13@@13 f_30@@13) (= (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@2) o2_13@@13 f_30@@13) (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@13 f_30@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@13 f_30@@13))
))) (forall ((o2_13@@14 T@Ref) (f_30@@14 T@Field_10309_10310) ) (!  (=> (select (|PolymorphicMapType_10785_5558_10310#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@2) null (PredicateMaskField_5558 pm_f_13@@0))) o2_13@@14 f_30@@14) (= (select (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@2) o2_13@@14 f_30@@14) (select (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@14 f_30@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@14 f_30@@14))
))) (forall ((o2_13@@15 T@Ref) (f_30@@15 T@Field_5558_13904) ) (!  (=> (select (|PolymorphicMapType_10785_5558_13904#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@2) null (PredicateMaskField_5558 pm_f_13@@0))) o2_13@@15 f_30@@15) (= (select (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@2) o2_13@@15 f_30@@15) (select (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@15 f_30@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@15 f_30@@15))
))) (forall ((o2_13@@16 T@Ref) (f_30@@16 T@Field_5558_13921) ) (!  (=> (select (|PolymorphicMapType_10785_5558_39736#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@2) null (PredicateMaskField_5558 pm_f_13@@0))) o2_13@@16 f_30@@16) (= (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@2) o2_13@@16 f_30@@16) (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@16 f_30@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@16 f_30@@16))
))) (forall ((o2_13@@17 T@Ref) (f_30@@17 T@Field_13903_5559) ) (!  (=> (select (|PolymorphicMapType_10785_13903_5559#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@2) null (PredicateMaskField_5558 pm_f_13@@0))) o2_13@@17 f_30@@17) (= (select (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@2) o2_13@@17 f_30@@17) (select (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@17 f_30@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@17 f_30@@17))
))) (forall ((o2_13@@18 T@Ref) (f_30@@18 T@Field_13903_1359) ) (!  (=> (select (|PolymorphicMapType_10785_13903_1359#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@2) null (PredicateMaskField_5558 pm_f_13@@0))) o2_13@@18 f_30@@18) (= (select (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@2) o2_13@@18 f_30@@18) (select (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@18 f_30@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@18 f_30@@18))
))) (forall ((o2_13@@19 T@Ref) (f_30@@19 T@Field_13903_53) ) (!  (=> (select (|PolymorphicMapType_10785_13903_53#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@2) null (PredicateMaskField_5558 pm_f_13@@0))) o2_13@@19 f_30@@19) (= (select (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@2) o2_13@@19 f_30@@19) (select (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@19 f_30@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@19 f_30@@19))
))) (forall ((o2_13@@20 T@Ref) (f_30@@20 T@Field_13903_5566) ) (!  (=> (select (|PolymorphicMapType_10785_13903_10310#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@2) null (PredicateMaskField_5558 pm_f_13@@0))) o2_13@@20 f_30@@20) (= (select (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@2) o2_13@@20 f_30@@20) (select (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@20 f_30@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@20 f_30@@20))
))) (forall ((o2_13@@21 T@Ref) (f_30@@21 T@Field_13903_13904) ) (!  (=> (select (|PolymorphicMapType_10785_13903_13904#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@2) null (PredicateMaskField_5558 pm_f_13@@0))) o2_13@@21 f_30@@21) (= (select (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@2) o2_13@@21 f_30@@21) (select (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@21 f_30@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@21 f_30@@21))
))) (forall ((o2_13@@22 T@Ref) (f_30@@22 T@Field_13916_13921) ) (!  (=> (select (|PolymorphicMapType_10785_13903_40988#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@2) null (PredicateMaskField_5558 pm_f_13@@0))) o2_13@@22 f_30@@22) (= (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@2) o2_13@@22 f_30@@22) (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@22 f_30@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| ExhaleHeap@@0) o2_13@@22 f_30@@22))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5558_38075 pm_f_13@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10236) (ExhaleHeap@@1 T@PolymorphicMapType_10236) (Mask@@2 T@PolymorphicMapType_10257) (pm_f_13@@1 T@Field_13903_13904) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_13903_13904 Mask@@2 null pm_f_13@@1) (IsWandField_13903_42153 pm_f_13@@1)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@23 T@Ref) (f_30@@23 T@Field_13726_13727) ) (!  (=> (select (|PolymorphicMapType_10785_5558_5559#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@3) null (WandMaskField_13903 pm_f_13@@1))) o2_13@@23 f_30@@23) (= (select (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@3) o2_13@@23 f_30@@23) (select (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@23 f_30@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@23 f_30@@23))
)) (forall ((o2_13@@24 T@Ref) (f_30@@24 T@Field_13776_1359) ) (!  (=> (select (|PolymorphicMapType_10785_5561_1359#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@3) null (WandMaskField_13903 pm_f_13@@1))) o2_13@@24 f_30@@24) (= (select (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@3) o2_13@@24 f_30@@24) (select (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@24 f_30@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@24 f_30@@24))
))) (forall ((o2_13@@25 T@Ref) (f_30@@25 T@Field_10296_53) ) (!  (=> (select (|PolymorphicMapType_10785_5558_53#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@3) null (WandMaskField_13903 pm_f_13@@1))) o2_13@@25 f_30@@25) (= (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@3) o2_13@@25 f_30@@25) (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@25 f_30@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@25 f_30@@25))
))) (forall ((o2_13@@26 T@Ref) (f_30@@26 T@Field_10309_10310) ) (!  (=> (select (|PolymorphicMapType_10785_5558_10310#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@3) null (WandMaskField_13903 pm_f_13@@1))) o2_13@@26 f_30@@26) (= (select (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@3) o2_13@@26 f_30@@26) (select (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@26 f_30@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@26 f_30@@26))
))) (forall ((o2_13@@27 T@Ref) (f_30@@27 T@Field_5558_13904) ) (!  (=> (select (|PolymorphicMapType_10785_5558_13904#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@3) null (WandMaskField_13903 pm_f_13@@1))) o2_13@@27 f_30@@27) (= (select (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@3) o2_13@@27 f_30@@27) (select (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@27 f_30@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@27 f_30@@27))
))) (forall ((o2_13@@28 T@Ref) (f_30@@28 T@Field_5558_13921) ) (!  (=> (select (|PolymorphicMapType_10785_5558_39736#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@3) null (WandMaskField_13903 pm_f_13@@1))) o2_13@@28 f_30@@28) (= (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@3) o2_13@@28 f_30@@28) (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@28 f_30@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@28 f_30@@28))
))) (forall ((o2_13@@29 T@Ref) (f_30@@29 T@Field_13903_5559) ) (!  (=> (select (|PolymorphicMapType_10785_13903_5559#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@3) null (WandMaskField_13903 pm_f_13@@1))) o2_13@@29 f_30@@29) (= (select (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@3) o2_13@@29 f_30@@29) (select (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@29 f_30@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@29 f_30@@29))
))) (forall ((o2_13@@30 T@Ref) (f_30@@30 T@Field_13903_1359) ) (!  (=> (select (|PolymorphicMapType_10785_13903_1359#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@3) null (WandMaskField_13903 pm_f_13@@1))) o2_13@@30 f_30@@30) (= (select (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@3) o2_13@@30 f_30@@30) (select (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@30 f_30@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@30 f_30@@30))
))) (forall ((o2_13@@31 T@Ref) (f_30@@31 T@Field_13903_53) ) (!  (=> (select (|PolymorphicMapType_10785_13903_53#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@3) null (WandMaskField_13903 pm_f_13@@1))) o2_13@@31 f_30@@31) (= (select (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@3) o2_13@@31 f_30@@31) (select (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@31 f_30@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@31 f_30@@31))
))) (forall ((o2_13@@32 T@Ref) (f_30@@32 T@Field_13903_5566) ) (!  (=> (select (|PolymorphicMapType_10785_13903_10310#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@3) null (WandMaskField_13903 pm_f_13@@1))) o2_13@@32 f_30@@32) (= (select (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@3) o2_13@@32 f_30@@32) (select (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@32 f_30@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@32 f_30@@32))
))) (forall ((o2_13@@33 T@Ref) (f_30@@33 T@Field_13903_13904) ) (!  (=> (select (|PolymorphicMapType_10785_13903_13904#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@3) null (WandMaskField_13903 pm_f_13@@1))) o2_13@@33 f_30@@33) (= (select (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@3) o2_13@@33 f_30@@33) (select (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@33 f_30@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@33 f_30@@33))
))) (forall ((o2_13@@34 T@Ref) (f_30@@34 T@Field_13916_13921) ) (!  (=> (select (|PolymorphicMapType_10785_13903_40988#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@3) null (WandMaskField_13903 pm_f_13@@1))) o2_13@@34 f_30@@34) (= (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@3) o2_13@@34 f_30@@34) (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@34 f_30@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| ExhaleHeap@@1) o2_13@@34 f_30@@34))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_13903_42153 pm_f_13@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10236) (ExhaleHeap@@2 T@PolymorphicMapType_10236) (Mask@@3 T@PolymorphicMapType_10257) (pm_f_13@@2 T@Field_5558_13904) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5558_13904 Mask@@3 null pm_f_13@@2) (IsWandField_5558_41796 pm_f_13@@2)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@35 T@Ref) (f_30@@35 T@Field_13726_13727) ) (!  (=> (select (|PolymorphicMapType_10785_5558_5559#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@4) null (WandMaskField_5558 pm_f_13@@2))) o2_13@@35 f_30@@35) (= (select (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@4) o2_13@@35 f_30@@35) (select (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@35 f_30@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@35 f_30@@35))
)) (forall ((o2_13@@36 T@Ref) (f_30@@36 T@Field_13776_1359) ) (!  (=> (select (|PolymorphicMapType_10785_5561_1359#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@4) null (WandMaskField_5558 pm_f_13@@2))) o2_13@@36 f_30@@36) (= (select (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@4) o2_13@@36 f_30@@36) (select (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@36 f_30@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@36 f_30@@36))
))) (forall ((o2_13@@37 T@Ref) (f_30@@37 T@Field_10296_53) ) (!  (=> (select (|PolymorphicMapType_10785_5558_53#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@4) null (WandMaskField_5558 pm_f_13@@2))) o2_13@@37 f_30@@37) (= (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@4) o2_13@@37 f_30@@37) (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@37 f_30@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@37 f_30@@37))
))) (forall ((o2_13@@38 T@Ref) (f_30@@38 T@Field_10309_10310) ) (!  (=> (select (|PolymorphicMapType_10785_5558_10310#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@4) null (WandMaskField_5558 pm_f_13@@2))) o2_13@@38 f_30@@38) (= (select (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@4) o2_13@@38 f_30@@38) (select (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@38 f_30@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@38 f_30@@38))
))) (forall ((o2_13@@39 T@Ref) (f_30@@39 T@Field_5558_13904) ) (!  (=> (select (|PolymorphicMapType_10785_5558_13904#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@4) null (WandMaskField_5558 pm_f_13@@2))) o2_13@@39 f_30@@39) (= (select (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@4) o2_13@@39 f_30@@39) (select (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@39 f_30@@39)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@39 f_30@@39))
))) (forall ((o2_13@@40 T@Ref) (f_30@@40 T@Field_5558_13921) ) (!  (=> (select (|PolymorphicMapType_10785_5558_39736#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@4) null (WandMaskField_5558 pm_f_13@@2))) o2_13@@40 f_30@@40) (= (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@4) o2_13@@40 f_30@@40) (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@40 f_30@@40)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@40 f_30@@40))
))) (forall ((o2_13@@41 T@Ref) (f_30@@41 T@Field_13903_5559) ) (!  (=> (select (|PolymorphicMapType_10785_13903_5559#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@4) null (WandMaskField_5558 pm_f_13@@2))) o2_13@@41 f_30@@41) (= (select (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@4) o2_13@@41 f_30@@41) (select (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@41 f_30@@41)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@41 f_30@@41))
))) (forall ((o2_13@@42 T@Ref) (f_30@@42 T@Field_13903_1359) ) (!  (=> (select (|PolymorphicMapType_10785_13903_1359#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@4) null (WandMaskField_5558 pm_f_13@@2))) o2_13@@42 f_30@@42) (= (select (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@4) o2_13@@42 f_30@@42) (select (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@42 f_30@@42)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@42 f_30@@42))
))) (forall ((o2_13@@43 T@Ref) (f_30@@43 T@Field_13903_53) ) (!  (=> (select (|PolymorphicMapType_10785_13903_53#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@4) null (WandMaskField_5558 pm_f_13@@2))) o2_13@@43 f_30@@43) (= (select (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@4) o2_13@@43 f_30@@43) (select (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@43 f_30@@43)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@43 f_30@@43))
))) (forall ((o2_13@@44 T@Ref) (f_30@@44 T@Field_13903_5566) ) (!  (=> (select (|PolymorphicMapType_10785_13903_10310#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@4) null (WandMaskField_5558 pm_f_13@@2))) o2_13@@44 f_30@@44) (= (select (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@4) o2_13@@44 f_30@@44) (select (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@44 f_30@@44)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@44 f_30@@44))
))) (forall ((o2_13@@45 T@Ref) (f_30@@45 T@Field_13903_13904) ) (!  (=> (select (|PolymorphicMapType_10785_13903_13904#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@4) null (WandMaskField_5558 pm_f_13@@2))) o2_13@@45 f_30@@45) (= (select (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@4) o2_13@@45 f_30@@45) (select (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@45 f_30@@45)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@45 f_30@@45))
))) (forall ((o2_13@@46 T@Ref) (f_30@@46 T@Field_13916_13921) ) (!  (=> (select (|PolymorphicMapType_10785_13903_40988#PolymorphicMapType_10785| (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@4) null (WandMaskField_5558 pm_f_13@@2))) o2_13@@46 f_30@@46) (= (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@4) o2_13@@46 f_30@@46) (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@46 f_30@@46)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| ExhaleHeap@@2) o2_13@@46 f_30@@46))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_5558_41796 pm_f_13@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10236) (ExhaleHeap@@3 T@PolymorphicMapType_10236) (Mask@@4 T@PolymorphicMapType_10257) (pm_f_13@@3 T@Field_13903_13904) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_13903_13904 Mask@@4 null pm_f_13@@3) (IsPredicateField_5569_5570 pm_f_13@@3)) (= (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@5) null (PredicateMaskField_5569 pm_f_13@@3)) (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| ExhaleHeap@@3) null (PredicateMaskField_5569 pm_f_13@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_5569_5570 pm_f_13@@3) (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| ExhaleHeap@@3) null (PredicateMaskField_5569 pm_f_13@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10236) (ExhaleHeap@@4 T@PolymorphicMapType_10236) (Mask@@5 T@PolymorphicMapType_10257) (pm_f_13@@4 T@Field_5558_13904) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5558_13904 Mask@@5 null pm_f_13@@4) (IsPredicateField_5558_38075 pm_f_13@@4)) (= (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@6) null (PredicateMaskField_5558 pm_f_13@@4)) (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| ExhaleHeap@@4) null (PredicateMaskField_5558 pm_f_13@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_5558_38075 pm_f_13@@4) (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| ExhaleHeap@@4) null (PredicateMaskField_5558 pm_f_13@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10236) (ExhaleHeap@@5 T@PolymorphicMapType_10236) (Mask@@6 T@PolymorphicMapType_10257) (pm_f_13@@5 T@Field_13903_13904) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_13903_13904 Mask@@6 null pm_f_13@@5) (IsWandField_13903_42153 pm_f_13@@5)) (= (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@7) null (WandMaskField_13903 pm_f_13@@5)) (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| ExhaleHeap@@5) null (WandMaskField_13903 pm_f_13@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_13903_42153 pm_f_13@@5) (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| ExhaleHeap@@5) null (WandMaskField_13903 pm_f_13@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10236) (ExhaleHeap@@6 T@PolymorphicMapType_10236) (Mask@@7 T@PolymorphicMapType_10257) (pm_f_13@@6 T@Field_5558_13904) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5558_13904 Mask@@7 null pm_f_13@@6) (IsWandField_5558_41796 pm_f_13@@6)) (= (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@8) null (WandMaskField_5558 pm_f_13@@6)) (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| ExhaleHeap@@6) null (WandMaskField_5558 pm_f_13@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_5558_41796 pm_f_13@@6) (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| ExhaleHeap@@6) null (WandMaskField_5558 pm_f_13@@6)))
)))
(assert (forall ((self@@1 T@Ref) (self2 T@Ref) ) (!  (=> (= (valid__Array self@@1) (valid__Array self2)) (= self@@1 self2))
 :qid |stdinbpl.254:15|
 :skolemid |26|
 :pattern ( (valid__Array self@@1) (valid__Array self2))
)))
(assert (forall ((self@@2 T@Ref) (self2@@0 T@Ref) ) (!  (=> (= (|valid__Array#sm| self@@2) (|valid__Array#sm| self2@@0)) (= self@@2 self2@@0))
 :qid |stdinbpl.258:15|
 :skolemid |27|
 :pattern ( (|valid__Array#sm| self@@2) (|valid__Array#sm| self2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10236) (ExhaleHeap@@7 T@PolymorphicMapType_10236) (Mask@@8 T@PolymorphicMapType_10257) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@9) o_22 $allocated) (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| ExhaleHeap@@7) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| ExhaleHeap@@7) o_22 $allocated))
)))
(assert (forall ((p T@Field_13903_13904) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_13903_13903 p v_1 p w))
 :qid |stdinbpl.195:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13903_13903 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_5558_13904) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_10296_10296 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.195:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10296_10296 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_5558_5559 Array__ptr)))
(assert  (not (IsWandField_5558_5559 Array__ptr)))
(assert  (not (IsPredicateField_5561_1359 Array__len)))
(assert  (not (IsWandField_5561_1359 Array__len)))
(assert  (not (IsPredicateField_5561_1359 Int__v)))
(assert  (not (IsWandField_5561_1359 Int__v)))
(assert  (not (IsPredicateField_5565_5566 pval)))
(assert  (not (IsWandField_5565_5566 pval)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10236) (ExhaleHeap@@8 T@PolymorphicMapType_10236) (Mask@@9 T@PolymorphicMapType_10257) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10257) (o_2@@11 T@Ref) (f_4@@11 T@Field_13916_13921) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_10257_5569_47529#PolymorphicMapType_10257| Mask@@10) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5569_50261 f_4@@11))) (not (IsWandField_5569_50277 f_4@@11))) (<= (select (|PolymorphicMapType_10257_5569_47529#PolymorphicMapType_10257| Mask@@10) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_10257_5569_47529#PolymorphicMapType_10257| Mask@@10) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10257) (o_2@@12 T@Ref) (f_4@@12 T@Field_13903_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_10257_5569_53#PolymorphicMapType_10257| Mask@@11) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5569_53 f_4@@12))) (not (IsWandField_5569_53 f_4@@12))) (<= (select (|PolymorphicMapType_10257_5569_53#PolymorphicMapType_10257| Mask@@11) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_10257_5569_53#PolymorphicMapType_10257| Mask@@11) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10257) (o_2@@13 T@Ref) (f_4@@13 T@Field_13903_5566) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_10257_5569_5566#PolymorphicMapType_10257| Mask@@12) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5569_5566 f_4@@13))) (not (IsWandField_5569_5566 f_4@@13))) (<= (select (|PolymorphicMapType_10257_5569_5566#PolymorphicMapType_10257| Mask@@12) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_10257_5569_5566#PolymorphicMapType_10257| Mask@@12) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10257) (o_2@@14 T@Ref) (f_4@@14 T@Field_13903_13904) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_10257_5569_5570#PolymorphicMapType_10257| Mask@@13) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5569_5570 f_4@@14))) (not (IsWandField_13903_42153 f_4@@14))) (<= (select (|PolymorphicMapType_10257_5569_5570#PolymorphicMapType_10257| Mask@@13) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_10257_5569_5570#PolymorphicMapType_10257| Mask@@13) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10257) (o_2@@15 T@Ref) (f_4@@15 T@Field_13903_1359) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_10257_5569_1359#PolymorphicMapType_10257| Mask@@14) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5569_1359 f_4@@15))) (not (IsWandField_5569_1359 f_4@@15))) (<= (select (|PolymorphicMapType_10257_5569_1359#PolymorphicMapType_10257| Mask@@14) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_10257_5569_1359#PolymorphicMapType_10257| Mask@@14) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10257) (o_2@@16 T@Ref) (f_4@@16 T@Field_13903_5559) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_10257_5569_5559#PolymorphicMapType_10257| Mask@@15) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5569_5559 f_4@@16))) (not (IsWandField_5569_5559 f_4@@16))) (<= (select (|PolymorphicMapType_10257_5569_5559#PolymorphicMapType_10257| Mask@@15) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_10257_5569_5559#PolymorphicMapType_10257| Mask@@15) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10257) (o_2@@17 T@Ref) (f_4@@17 T@Field_5558_13921) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_10257_5558_47035#PolymorphicMapType_10257| Mask@@16) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5558_49262 f_4@@17))) (not (IsWandField_5558_49278 f_4@@17))) (<= (select (|PolymorphicMapType_10257_5558_47035#PolymorphicMapType_10257| Mask@@16) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_10257_5558_47035#PolymorphicMapType_10257| Mask@@16) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10257) (o_2@@18 T@Ref) (f_4@@18 T@Field_10296_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_10257_5558_53#PolymorphicMapType_10257| Mask@@17) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5558_53 f_4@@18))) (not (IsWandField_5558_53 f_4@@18))) (<= (select (|PolymorphicMapType_10257_5558_53#PolymorphicMapType_10257| Mask@@17) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_10257_5558_53#PolymorphicMapType_10257| Mask@@17) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10257) (o_2@@19 T@Ref) (f_4@@19 T@Field_10309_10310) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10257_5565_5566#PolymorphicMapType_10257| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5565_5566 f_4@@19))) (not (IsWandField_5565_5566 f_4@@19))) (<= (select (|PolymorphicMapType_10257_5565_5566#PolymorphicMapType_10257| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10257_5565_5566#PolymorphicMapType_10257| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10257) (o_2@@20 T@Ref) (f_4@@20 T@Field_5558_13904) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_10257_5558_5570#PolymorphicMapType_10257| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5558_38075 f_4@@20))) (not (IsWandField_5558_41796 f_4@@20))) (<= (select (|PolymorphicMapType_10257_5558_5570#PolymorphicMapType_10257| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_10257_5558_5570#PolymorphicMapType_10257| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10257) (o_2@@21 T@Ref) (f_4@@21 T@Field_13776_1359) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_10257_5561_1359#PolymorphicMapType_10257| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5561_1359 f_4@@21))) (not (IsWandField_5561_1359 f_4@@21))) (<= (select (|PolymorphicMapType_10257_5561_1359#PolymorphicMapType_10257| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_10257_5561_1359#PolymorphicMapType_10257| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10257) (o_2@@22 T@Ref) (f_4@@22 T@Field_13726_13727) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_10257_5558_5559#PolymorphicMapType_10257| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5558_5559 f_4@@22))) (not (IsWandField_5558_5559 f_4@@22))) (<= (select (|PolymorphicMapType_10257_5558_5559#PolymorphicMapType_10257| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_10257_5558_5559#PolymorphicMapType_10257| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10257) (o_2@@23 T@Ref) (f_4@@23 T@Field_13916_13921) ) (! (= (HasDirectPerm_13903_37830 Mask@@22 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_10257_5569_47529#PolymorphicMapType_10257| Mask@@22) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13903_37830 Mask@@22 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10257) (o_2@@24 T@Ref) (f_4@@24 T@Field_13903_13904) ) (! (= (HasDirectPerm_13903_13904 Mask@@23 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_10257_5569_5570#PolymorphicMapType_10257| Mask@@23) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13903_13904 Mask@@23 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10257) (o_2@@25 T@Ref) (f_4@@25 T@Field_13903_53) ) (! (= (HasDirectPerm_13903_53 Mask@@24 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_10257_5569_53#PolymorphicMapType_10257| Mask@@24) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13903_53 Mask@@24 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10257) (o_2@@26 T@Ref) (f_4@@26 T@Field_13903_1359) ) (! (= (HasDirectPerm_13903_1359 Mask@@25 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_10257_5569_1359#PolymorphicMapType_10257| Mask@@25) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13903_1359 Mask@@25 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10257) (o_2@@27 T@Ref) (f_4@@27 T@Field_13903_5566) ) (! (= (HasDirectPerm_13903_5566 Mask@@26 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_10257_5569_5566#PolymorphicMapType_10257| Mask@@26) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13903_5566 Mask@@26 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_10257) (o_2@@28 T@Ref) (f_4@@28 T@Field_13903_5559) ) (! (= (HasDirectPerm_13903_5559 Mask@@27 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_10257_5569_5559#PolymorphicMapType_10257| Mask@@27) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13903_5559 Mask@@27 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_10257) (o_2@@29 T@Ref) (f_4@@29 T@Field_5558_13921) ) (! (= (HasDirectPerm_5558_36440 Mask@@28 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_10257_5558_47035#PolymorphicMapType_10257| Mask@@28) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5558_36440 Mask@@28 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_10257) (o_2@@30 T@Ref) (f_4@@30 T@Field_5558_13904) ) (! (= (HasDirectPerm_5558_13904 Mask@@29 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_10257_5558_5570#PolymorphicMapType_10257| Mask@@29) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5558_13904 Mask@@29 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_10257) (o_2@@31 T@Ref) (f_4@@31 T@Field_10296_53) ) (! (= (HasDirectPerm_5558_53 Mask@@30 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_10257_5558_53#PolymorphicMapType_10257| Mask@@30) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5558_53 Mask@@30 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_10257) (o_2@@32 T@Ref) (f_4@@32 T@Field_13776_1359) ) (! (= (HasDirectPerm_5561_1359 Mask@@31 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_10257_5561_1359#PolymorphicMapType_10257| Mask@@31) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5561_1359 Mask@@31 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_10257) (o_2@@33 T@Ref) (f_4@@33 T@Field_10309_10310) ) (! (= (HasDirectPerm_5565_5566 Mask@@32 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_10257_5565_5566#PolymorphicMapType_10257| Mask@@32) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5565_5566 Mask@@32 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_10257) (o_2@@34 T@Ref) (f_4@@34 T@Field_13726_13727) ) (! (= (HasDirectPerm_5558_5559 Mask@@33 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_10257_5558_5559#PolymorphicMapType_10257| Mask@@33) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5558_5559 Mask@@33 o_2@@34 f_4@@34))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.183:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10236) (ExhaleHeap@@9 T@PolymorphicMapType_10236) (Mask@@34 T@PolymorphicMapType_10257) (o_22@@0 T@Ref) (f_30@@47 T@Field_13916_13921) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@34) (=> (HasDirectPerm_13903_37830 Mask@@34 o_22@@0 f_30@@47) (= (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@11) o_22@@0 f_30@@47) (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| ExhaleHeap@@9) o_22@@0 f_30@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@34) (select (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| ExhaleHeap@@9) o_22@@0 f_30@@47))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10236) (ExhaleHeap@@10 T@PolymorphicMapType_10236) (Mask@@35 T@PolymorphicMapType_10257) (o_22@@1 T@Ref) (f_30@@48 T@Field_13903_13904) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@35) (=> (HasDirectPerm_13903_13904 Mask@@35 o_22@@1 f_30@@48) (= (select (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@12) o_22@@1 f_30@@48) (select (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| ExhaleHeap@@10) o_22@@1 f_30@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@35) (select (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| ExhaleHeap@@10) o_22@@1 f_30@@48))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10236) (ExhaleHeap@@11 T@PolymorphicMapType_10236) (Mask@@36 T@PolymorphicMapType_10257) (o_22@@2 T@Ref) (f_30@@49 T@Field_13903_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@36) (=> (HasDirectPerm_13903_53 Mask@@36 o_22@@2 f_30@@49) (= (select (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@13) o_22@@2 f_30@@49) (select (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| ExhaleHeap@@11) o_22@@2 f_30@@49))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@36) (select (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| ExhaleHeap@@11) o_22@@2 f_30@@49))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10236) (ExhaleHeap@@12 T@PolymorphicMapType_10236) (Mask@@37 T@PolymorphicMapType_10257) (o_22@@3 T@Ref) (f_30@@50 T@Field_13903_1359) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@37) (=> (HasDirectPerm_13903_1359 Mask@@37 o_22@@3 f_30@@50) (= (select (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@14) o_22@@3 f_30@@50) (select (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| ExhaleHeap@@12) o_22@@3 f_30@@50))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@37) (select (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| ExhaleHeap@@12) o_22@@3 f_30@@50))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10236) (ExhaleHeap@@13 T@PolymorphicMapType_10236) (Mask@@38 T@PolymorphicMapType_10257) (o_22@@4 T@Ref) (f_30@@51 T@Field_13903_5566) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@38) (=> (HasDirectPerm_13903_5566 Mask@@38 o_22@@4 f_30@@51) (= (select (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@15) o_22@@4 f_30@@51) (select (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| ExhaleHeap@@13) o_22@@4 f_30@@51))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@38) (select (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| ExhaleHeap@@13) o_22@@4 f_30@@51))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10236) (ExhaleHeap@@14 T@PolymorphicMapType_10236) (Mask@@39 T@PolymorphicMapType_10257) (o_22@@5 T@Ref) (f_30@@52 T@Field_13903_5559) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@39) (=> (HasDirectPerm_13903_5559 Mask@@39 o_22@@5 f_30@@52) (= (select (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@16) o_22@@5 f_30@@52) (select (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| ExhaleHeap@@14) o_22@@5 f_30@@52))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@39) (select (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| ExhaleHeap@@14) o_22@@5 f_30@@52))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10236) (ExhaleHeap@@15 T@PolymorphicMapType_10236) (Mask@@40 T@PolymorphicMapType_10257) (o_22@@6 T@Ref) (f_30@@53 T@Field_5558_13921) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@40) (=> (HasDirectPerm_5558_36440 Mask@@40 o_22@@6 f_30@@53) (= (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@17) o_22@@6 f_30@@53) (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| ExhaleHeap@@15) o_22@@6 f_30@@53))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@40) (select (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| ExhaleHeap@@15) o_22@@6 f_30@@53))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10236) (ExhaleHeap@@16 T@PolymorphicMapType_10236) (Mask@@41 T@PolymorphicMapType_10257) (o_22@@7 T@Ref) (f_30@@54 T@Field_5558_13904) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@41) (=> (HasDirectPerm_5558_13904 Mask@@41 o_22@@7 f_30@@54) (= (select (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@18) o_22@@7 f_30@@54) (select (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| ExhaleHeap@@16) o_22@@7 f_30@@54))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@41) (select (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| ExhaleHeap@@16) o_22@@7 f_30@@54))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10236) (ExhaleHeap@@17 T@PolymorphicMapType_10236) (Mask@@42 T@PolymorphicMapType_10257) (o_22@@8 T@Ref) (f_30@@55 T@Field_10296_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@42) (=> (HasDirectPerm_5558_53 Mask@@42 o_22@@8 f_30@@55) (= (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@19) o_22@@8 f_30@@55) (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| ExhaleHeap@@17) o_22@@8 f_30@@55))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@42) (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| ExhaleHeap@@17) o_22@@8 f_30@@55))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10236) (ExhaleHeap@@18 T@PolymorphicMapType_10236) (Mask@@43 T@PolymorphicMapType_10257) (o_22@@9 T@Ref) (f_30@@56 T@Field_13776_1359) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@43) (=> (HasDirectPerm_5561_1359 Mask@@43 o_22@@9 f_30@@56) (= (select (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@20) o_22@@9 f_30@@56) (select (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| ExhaleHeap@@18) o_22@@9 f_30@@56))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@43) (select (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| ExhaleHeap@@18) o_22@@9 f_30@@56))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10236) (ExhaleHeap@@19 T@PolymorphicMapType_10236) (Mask@@44 T@PolymorphicMapType_10257) (o_22@@10 T@Ref) (f_30@@57 T@Field_10309_10310) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@44) (=> (HasDirectPerm_5565_5566 Mask@@44 o_22@@10 f_30@@57) (= (select (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@21) o_22@@10 f_30@@57) (select (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| ExhaleHeap@@19) o_22@@10 f_30@@57))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@44) (select (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| ExhaleHeap@@19) o_22@@10 f_30@@57))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10236) (ExhaleHeap@@20 T@PolymorphicMapType_10236) (Mask@@45 T@PolymorphicMapType_10257) (o_22@@11 T@Ref) (f_30@@58 T@Field_13726_13727) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@45) (=> (HasDirectPerm_5558_5559 Mask@@45 o_22@@11 f_30@@58) (= (select (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@22) o_22@@11 f_30@@58) (select (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| ExhaleHeap@@20) o_22@@11 f_30@@58))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@45) (select (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| ExhaleHeap@@20) o_22@@11 f_30@@58))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_13916_13921) ) (! (= (select (|PolymorphicMapType_10257_5569_47529#PolymorphicMapType_10257| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10257_5569_47529#PolymorphicMapType_10257| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_13903_53) ) (! (= (select (|PolymorphicMapType_10257_5569_53#PolymorphicMapType_10257| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10257_5569_53#PolymorphicMapType_10257| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_13903_5566) ) (! (= (select (|PolymorphicMapType_10257_5569_5566#PolymorphicMapType_10257| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10257_5569_5566#PolymorphicMapType_10257| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_13903_13904) ) (! (= (select (|PolymorphicMapType_10257_5569_5570#PolymorphicMapType_10257| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10257_5569_5570#PolymorphicMapType_10257| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((o_2@@39 T@Ref) (f_4@@39 T@Field_13903_1359) ) (! (= (select (|PolymorphicMapType_10257_5569_1359#PolymorphicMapType_10257| ZeroMask) o_2@@39 f_4@@39) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10257_5569_1359#PolymorphicMapType_10257| ZeroMask) o_2@@39 f_4@@39))
)))
(assert (forall ((o_2@@40 T@Ref) (f_4@@40 T@Field_13903_5559) ) (! (= (select (|PolymorphicMapType_10257_5569_5559#PolymorphicMapType_10257| ZeroMask) o_2@@40 f_4@@40) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10257_5569_5559#PolymorphicMapType_10257| ZeroMask) o_2@@40 f_4@@40))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_5558_13921) ) (! (= (select (|PolymorphicMapType_10257_5558_47035#PolymorphicMapType_10257| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10257_5558_47035#PolymorphicMapType_10257| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_10296_53) ) (! (= (select (|PolymorphicMapType_10257_5558_53#PolymorphicMapType_10257| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10257_5558_53#PolymorphicMapType_10257| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_10309_10310) ) (! (= (select (|PolymorphicMapType_10257_5565_5566#PolymorphicMapType_10257| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10257_5565_5566#PolymorphicMapType_10257| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_5558_13904) ) (! (= (select (|PolymorphicMapType_10257_5558_5570#PolymorphicMapType_10257| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10257_5558_5570#PolymorphicMapType_10257| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_13776_1359) ) (! (= (select (|PolymorphicMapType_10257_5561_1359#PolymorphicMapType_10257| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10257_5561_1359#PolymorphicMapType_10257| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_13726_13727) ) (! (= (select (|PolymorphicMapType_10257_5558_5559#PolymorphicMapType_10257| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10257_5558_5559#PolymorphicMapType_10257| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10257) (SummandMask1 T@PolymorphicMapType_10257) (SummandMask2 T@PolymorphicMapType_10257) (o_2@@47 T@Ref) (f_4@@47 T@Field_13916_13921) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10257_5569_47529#PolymorphicMapType_10257| ResultMask) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_10257_5569_47529#PolymorphicMapType_10257| SummandMask1) o_2@@47 f_4@@47) (select (|PolymorphicMapType_10257_5569_47529#PolymorphicMapType_10257| SummandMask2) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10257_5569_47529#PolymorphicMapType_10257| ResultMask) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10257_5569_47529#PolymorphicMapType_10257| SummandMask1) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10257_5569_47529#PolymorphicMapType_10257| SummandMask2) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10257) (SummandMask1@@0 T@PolymorphicMapType_10257) (SummandMask2@@0 T@PolymorphicMapType_10257) (o_2@@48 T@Ref) (f_4@@48 T@Field_13903_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10257_5569_53#PolymorphicMapType_10257| ResultMask@@0) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_10257_5569_53#PolymorphicMapType_10257| SummandMask1@@0) o_2@@48 f_4@@48) (select (|PolymorphicMapType_10257_5569_53#PolymorphicMapType_10257| SummandMask2@@0) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10257_5569_53#PolymorphicMapType_10257| ResultMask@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10257_5569_53#PolymorphicMapType_10257| SummandMask1@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10257_5569_53#PolymorphicMapType_10257| SummandMask2@@0) o_2@@48 f_4@@48))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10257) (SummandMask1@@1 T@PolymorphicMapType_10257) (SummandMask2@@1 T@PolymorphicMapType_10257) (o_2@@49 T@Ref) (f_4@@49 T@Field_13903_5566) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10257_5569_5566#PolymorphicMapType_10257| ResultMask@@1) o_2@@49 f_4@@49) (+ (select (|PolymorphicMapType_10257_5569_5566#PolymorphicMapType_10257| SummandMask1@@1) o_2@@49 f_4@@49) (select (|PolymorphicMapType_10257_5569_5566#PolymorphicMapType_10257| SummandMask2@@1) o_2@@49 f_4@@49))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10257_5569_5566#PolymorphicMapType_10257| ResultMask@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10257_5569_5566#PolymorphicMapType_10257| SummandMask1@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10257_5569_5566#PolymorphicMapType_10257| SummandMask2@@1) o_2@@49 f_4@@49))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10257) (SummandMask1@@2 T@PolymorphicMapType_10257) (SummandMask2@@2 T@PolymorphicMapType_10257) (o_2@@50 T@Ref) (f_4@@50 T@Field_13903_13904) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10257_5569_5570#PolymorphicMapType_10257| ResultMask@@2) o_2@@50 f_4@@50) (+ (select (|PolymorphicMapType_10257_5569_5570#PolymorphicMapType_10257| SummandMask1@@2) o_2@@50 f_4@@50) (select (|PolymorphicMapType_10257_5569_5570#PolymorphicMapType_10257| SummandMask2@@2) o_2@@50 f_4@@50))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10257_5569_5570#PolymorphicMapType_10257| ResultMask@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10257_5569_5570#PolymorphicMapType_10257| SummandMask1@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10257_5569_5570#PolymorphicMapType_10257| SummandMask2@@2) o_2@@50 f_4@@50))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10257) (SummandMask1@@3 T@PolymorphicMapType_10257) (SummandMask2@@3 T@PolymorphicMapType_10257) (o_2@@51 T@Ref) (f_4@@51 T@Field_13903_1359) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10257_5569_1359#PolymorphicMapType_10257| ResultMask@@3) o_2@@51 f_4@@51) (+ (select (|PolymorphicMapType_10257_5569_1359#PolymorphicMapType_10257| SummandMask1@@3) o_2@@51 f_4@@51) (select (|PolymorphicMapType_10257_5569_1359#PolymorphicMapType_10257| SummandMask2@@3) o_2@@51 f_4@@51))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10257_5569_1359#PolymorphicMapType_10257| ResultMask@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10257_5569_1359#PolymorphicMapType_10257| SummandMask1@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10257_5569_1359#PolymorphicMapType_10257| SummandMask2@@3) o_2@@51 f_4@@51))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10257) (SummandMask1@@4 T@PolymorphicMapType_10257) (SummandMask2@@4 T@PolymorphicMapType_10257) (o_2@@52 T@Ref) (f_4@@52 T@Field_13903_5559) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10257_5569_5559#PolymorphicMapType_10257| ResultMask@@4) o_2@@52 f_4@@52) (+ (select (|PolymorphicMapType_10257_5569_5559#PolymorphicMapType_10257| SummandMask1@@4) o_2@@52 f_4@@52) (select (|PolymorphicMapType_10257_5569_5559#PolymorphicMapType_10257| SummandMask2@@4) o_2@@52 f_4@@52))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10257_5569_5559#PolymorphicMapType_10257| ResultMask@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10257_5569_5559#PolymorphicMapType_10257| SummandMask1@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10257_5569_5559#PolymorphicMapType_10257| SummandMask2@@4) o_2@@52 f_4@@52))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10257) (SummandMask1@@5 T@PolymorphicMapType_10257) (SummandMask2@@5 T@PolymorphicMapType_10257) (o_2@@53 T@Ref) (f_4@@53 T@Field_5558_13921) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10257_5558_47035#PolymorphicMapType_10257| ResultMask@@5) o_2@@53 f_4@@53) (+ (select (|PolymorphicMapType_10257_5558_47035#PolymorphicMapType_10257| SummandMask1@@5) o_2@@53 f_4@@53) (select (|PolymorphicMapType_10257_5558_47035#PolymorphicMapType_10257| SummandMask2@@5) o_2@@53 f_4@@53))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10257_5558_47035#PolymorphicMapType_10257| ResultMask@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10257_5558_47035#PolymorphicMapType_10257| SummandMask1@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10257_5558_47035#PolymorphicMapType_10257| SummandMask2@@5) o_2@@53 f_4@@53))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10257) (SummandMask1@@6 T@PolymorphicMapType_10257) (SummandMask2@@6 T@PolymorphicMapType_10257) (o_2@@54 T@Ref) (f_4@@54 T@Field_10296_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10257_5558_53#PolymorphicMapType_10257| ResultMask@@6) o_2@@54 f_4@@54) (+ (select (|PolymorphicMapType_10257_5558_53#PolymorphicMapType_10257| SummandMask1@@6) o_2@@54 f_4@@54) (select (|PolymorphicMapType_10257_5558_53#PolymorphicMapType_10257| SummandMask2@@6) o_2@@54 f_4@@54))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10257_5558_53#PolymorphicMapType_10257| ResultMask@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10257_5558_53#PolymorphicMapType_10257| SummandMask1@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10257_5558_53#PolymorphicMapType_10257| SummandMask2@@6) o_2@@54 f_4@@54))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_10257) (SummandMask1@@7 T@PolymorphicMapType_10257) (SummandMask2@@7 T@PolymorphicMapType_10257) (o_2@@55 T@Ref) (f_4@@55 T@Field_10309_10310) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_10257_5565_5566#PolymorphicMapType_10257| ResultMask@@7) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_10257_5565_5566#PolymorphicMapType_10257| SummandMask1@@7) o_2@@55 f_4@@55) (select (|PolymorphicMapType_10257_5565_5566#PolymorphicMapType_10257| SummandMask2@@7) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10257_5565_5566#PolymorphicMapType_10257| ResultMask@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10257_5565_5566#PolymorphicMapType_10257| SummandMask1@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10257_5565_5566#PolymorphicMapType_10257| SummandMask2@@7) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_10257) (SummandMask1@@8 T@PolymorphicMapType_10257) (SummandMask2@@8 T@PolymorphicMapType_10257) (o_2@@56 T@Ref) (f_4@@56 T@Field_5558_13904) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_10257_5558_5570#PolymorphicMapType_10257| ResultMask@@8) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_10257_5558_5570#PolymorphicMapType_10257| SummandMask1@@8) o_2@@56 f_4@@56) (select (|PolymorphicMapType_10257_5558_5570#PolymorphicMapType_10257| SummandMask2@@8) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10257_5558_5570#PolymorphicMapType_10257| ResultMask@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10257_5558_5570#PolymorphicMapType_10257| SummandMask1@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10257_5558_5570#PolymorphicMapType_10257| SummandMask2@@8) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_10257) (SummandMask1@@9 T@PolymorphicMapType_10257) (SummandMask2@@9 T@PolymorphicMapType_10257) (o_2@@57 T@Ref) (f_4@@57 T@Field_13776_1359) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_10257_5561_1359#PolymorphicMapType_10257| ResultMask@@9) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_10257_5561_1359#PolymorphicMapType_10257| SummandMask1@@9) o_2@@57 f_4@@57) (select (|PolymorphicMapType_10257_5561_1359#PolymorphicMapType_10257| SummandMask2@@9) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10257_5561_1359#PolymorphicMapType_10257| ResultMask@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10257_5561_1359#PolymorphicMapType_10257| SummandMask1@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10257_5561_1359#PolymorphicMapType_10257| SummandMask2@@9) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_10257) (SummandMask1@@10 T@PolymorphicMapType_10257) (SummandMask2@@10 T@PolymorphicMapType_10257) (o_2@@58 T@Ref) (f_4@@58 T@Field_13726_13727) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_10257_5558_5559#PolymorphicMapType_10257| ResultMask@@10) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_10257_5558_5559#PolymorphicMapType_10257| SummandMask1@@10) o_2@@58 f_4@@58) (select (|PolymorphicMapType_10257_5558_5559#PolymorphicMapType_10257| SummandMask2@@10) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10257_5558_5559#PolymorphicMapType_10257| ResultMask@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10257_5558_5559#PolymorphicMapType_10257| SummandMask1@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10257_5558_5559#PolymorphicMapType_10257| SummandMask2@@10) o_2@@58 f_4@@58))
)))
(assert (forall ((self@@3 T@Ref) ) (! (= (getPredWandId_5569_5570 (valid__Array self@@3)) 0)
 :qid |stdinbpl.248:15|
 :skolemid |25|
 :pattern ( (valid__Array self@@3))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10236) (o_35 T@Ref) (f_11 T@Field_13916_13921) (v T@PolymorphicMapType_10785) ) (! (succHeap Heap@@23 (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@23) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@23) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@23) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@23) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@23) (store (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@23) o_35 f_11 v) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@23) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@23) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@23) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@23) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@23) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@23) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@23) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@23) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@23) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@23) (store (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@23) o_35 f_11 v) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@23) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@23) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@23) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@23) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@23) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10236) (o_35@@0 T@Ref) (f_11@@0 T@Field_13903_1359) (v@@0 Int) ) (! (succHeap Heap@@24 (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@24) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@24) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@24) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@24) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@24) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@24) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@24) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@24) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@24) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@24) (store (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@24) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@24) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@24) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@24) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@24) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@24) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@24) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@24) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@24) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@24) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@24) (store (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@24) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10236) (o_35@@1 T@Ref) (f_11@@1 T@Field_13903_5559) (v@@1 T@PtrDomainType) ) (! (succHeap Heap@@25 (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@25) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@25) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@25) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@25) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@25) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@25) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@25) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@25) (store (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@25) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@25) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@25) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@25) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@25) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@25) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@25) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@25) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@25) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@25) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@25) (store (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@25) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@25) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@25) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10236) (o_35@@2 T@Ref) (f_11@@2 T@Field_13903_13904) (v@@2 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@26) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@26) (store (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@26) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@26) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@26) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@26) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@26) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@26) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@26) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@26) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@26) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@26) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@26) (store (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@26) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@26) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@26) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@26) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@26) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@26) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@26) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@26) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@26) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10236) (o_35@@3 T@Ref) (f_11@@3 T@Field_13903_5566) (v@@3 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@27) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@27) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@27) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@27) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@27) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@27) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@27) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@27) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@27) (store (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@27) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@27) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@27) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@27) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@27) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@27) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@27) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@27) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@27) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@27) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@27) (store (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@27) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@27) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10236) (o_35@@4 T@Ref) (f_11@@4 T@Field_13903_53) (v@@4 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@28) (store (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@28) o_35@@4 f_11@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@28) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@28) (store (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@28) o_35@@4 f_11@@4 v@@4)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10236) (o_35@@5 T@Ref) (f_11@@5 T@Field_5558_13921) (v@@5 T@PolymorphicMapType_10785) ) (! (succHeap Heap@@29 (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@29) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@29) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@29) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@29) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@29) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@29) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@29) (store (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@29) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@29) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@29) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@29) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@29) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@29) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@29) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@29) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@29) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@29) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@29) (store (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@29) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@29) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@29) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@29) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_10236) (o_35@@6 T@Ref) (f_11@@6 T@Field_13776_1359) (v@@6 Int) ) (! (succHeap Heap@@30 (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@30) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@30) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@30) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@30) (store (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@30) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@30) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@30) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@30) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@30) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@30) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@30) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@30) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@30) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@30) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@30) (store (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@30) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@30) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@30) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@30) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@30) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@30) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@30) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_10236) (o_35@@7 T@Ref) (f_11@@7 T@Field_13726_13727) (v@@7 T@PtrDomainType) ) (! (succHeap Heap@@31 (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@31) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@31) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@31) (store (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@31) o_35@@7 f_11@@7 v@@7) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@31) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@31) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@31) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@31) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@31) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@31) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@31) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@31) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@31) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@31) (store (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@31) o_35@@7 f_11@@7 v@@7) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@31) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@31) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@31) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@31) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@31) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@31) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@31) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_10236) (o_35@@8 T@Ref) (f_11@@8 T@Field_5558_13904) (v@@8 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@32) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@32) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@32) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@32) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@32) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@32) (store (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@32) o_35@@8 f_11@@8 v@@8) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@32) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@32) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@32) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@32) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@32) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@32) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@32) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@32) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@32) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@32) (store (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@32) o_35@@8 f_11@@8 v@@8) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@32) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@32) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@32) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@32) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_10236) (o_35@@9 T@Ref) (f_11@@9 T@Field_10309_10310) (v@@9 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@33) (store (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@33) o_35@@9 f_11@@9 v@@9) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@33) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@33) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@33) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@33) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@33) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@33) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@33) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@33) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@33) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10236 (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@33) (store (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@33) o_35@@9 f_11@@9 v@@9) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@33) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@33) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@33) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@33) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@33) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@33) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@33) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@33) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@33) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_10236) (o_35@@10 T@Ref) (f_11@@10 T@Field_10296_53) (v@@10 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_10236 (store (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@34) o_35@@10 f_11@@10 v@@10) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10236 (store (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@34) o_35@@10 f_11@@10 v@@10) (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_5569_5570#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_5558_5559#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_5561_1359#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_5573_16612#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_5558_13904#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_5558_36482#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_13903_5559#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_13903_5566#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_13903_1359#PolymorphicMapType_10236| Heap@@34) (|PolymorphicMapType_10236_13903_53#PolymorphicMapType_10236| Heap@@34)))
)))
(assert (forall ((self@@4 T@Ref) ) (! (= (PredicateMaskField_5569 (valid__Array self@@4)) (|valid__Array#sm| self@@4))
 :qid |stdinbpl.240:15|
 :skolemid |23|
 :pattern ( (PredicateMaskField_5569 (valid__Array self@@4)))
)))
(assert (forall ((a_2 T@PtrDomainType) (i Int) (j_9 Int) ) (!  (=> (and (>= i 0) (and (>= j_9 0) (not (= i j_9)))) (not (= (loc a_2 i) (loc a_2 j_9))))
 :qid |stdinbpl.211:15|
 :skolemid |22|
 :pattern ( (loc a_2 i) (loc a_2 j_9))
)))
(assert (forall ((o_35@@11 T@Ref) (f_31 T@Field_10309_10310) (Heap@@35 T@PolymorphicMapType_10236) ) (!  (=> (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@35) o_35@@11 $allocated) (select (|PolymorphicMapType_10236_5415_53#PolymorphicMapType_10236| Heap@@35) (select (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@35) o_35@@11 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10236_5418_5419#PolymorphicMapType_10236| Heap@@35) o_35@@11 f_31))
)))
(assert (forall ((p@@2 T@Field_13903_13904) (v_1@@1 T@FrameType) (q T@Field_13903_13904) (w@@1 T@FrameType) (r T@Field_13903_13904) (u T@FrameType) ) (!  (=> (and (InsidePredicate_13903_13903 p@@2 v_1@@1 q w@@1) (InsidePredicate_13903_13903 q w@@1 r u)) (InsidePredicate_13903_13903 p@@2 v_1@@1 r u))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13903_13903 p@@2 v_1@@1 q w@@1) (InsidePredicate_13903_13903 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_13903_13904) (v_1@@2 T@FrameType) (q@@0 T@Field_13903_13904) (w@@2 T@FrameType) (r@@0 T@Field_5558_13904) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_13903_13903 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_13903_10296 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_13903_10296 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13903_13903 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_13903_10296 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_13903_13904) (v_1@@3 T@FrameType) (q@@1 T@Field_5558_13904) (w@@3 T@FrameType) (r@@1 T@Field_13903_13904) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_13903_10296 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_10296_13903 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_13903_13903 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13903_10296 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_10296_13903 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_13903_13904) (v_1@@4 T@FrameType) (q@@2 T@Field_5558_13904) (w@@4 T@FrameType) (r@@2 T@Field_5558_13904) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_13903_10296 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_10296_10296 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_13903_10296 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13903_10296 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_10296_10296 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_5558_13904) (v_1@@5 T@FrameType) (q@@3 T@Field_13903_13904) (w@@5 T@FrameType) (r@@3 T@Field_13903_13904) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_10296_13903 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_13903_13903 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_10296_13903 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10296_13903 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_13903_13903 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_5558_13904) (v_1@@6 T@FrameType) (q@@4 T@Field_13903_13904) (w@@6 T@FrameType) (r@@4 T@Field_5558_13904) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_10296_13903 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_13903_10296 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_10296_10296 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10296_13903 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_13903_10296 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_5558_13904) (v_1@@7 T@FrameType) (q@@5 T@Field_5558_13904) (w@@7 T@FrameType) (r@@5 T@Field_13903_13904) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_10296_10296 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_10296_13903 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_10296_13903 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10296_10296 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_10296_13903 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_5558_13904) (v_1@@8 T@FrameType) (q@@6 T@Field_5558_13904) (w@@8 T@FrameType) (r@@6 T@Field_5558_13904) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_10296_10296 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_10296_10296 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_10296_10296 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10296_10296 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_10296_10296 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |valid__Array#definedness|)
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
