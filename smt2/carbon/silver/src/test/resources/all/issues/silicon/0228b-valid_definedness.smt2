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
(declare-sort T@Field_7108_53 0)
(declare-sort T@Field_7121_7122 0)
(declare-sort T@Field_10585_1314 0)
(declare-sort T@Field_11007_11008 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_10535_10536 0)
(declare-sort T@PtrDomainType 0)
(declare-sort T@Field_12516_12521 0)
(declare-sort T@Field_3906_11008 0)
(declare-sort T@Field_3906_12521 0)
(declare-sort T@Field_11007_1314 0)
(declare-sort T@Field_11007_3904 0)
(declare-sort T@Field_11007_3909 0)
(declare-sort T@Field_11007_53 0)
(declare-datatypes ((T@PolymorphicMapType_7069 0)) (((PolymorphicMapType_7069 (|PolymorphicMapType_7069_3970_3971#PolymorphicMapType_7069| (Array T@Ref T@Field_11007_11008 Real)) (|PolymorphicMapType_7069_3903_3904#PolymorphicMapType_7069| (Array T@Ref T@Field_10535_10536 Real)) (|PolymorphicMapType_7069_3906_1314#PolymorphicMapType_7069| (Array T@Ref T@Field_10585_1314 Real)) (|PolymorphicMapType_7069_3908_3909#PolymorphicMapType_7069| (Array T@Ref T@Field_7121_7122 Real)) (|PolymorphicMapType_7069_3970_3904#PolymorphicMapType_7069| (Array T@Ref T@Field_11007_3904 Real)) (|PolymorphicMapType_7069_3970_1314#PolymorphicMapType_7069| (Array T@Ref T@Field_11007_1314 Real)) (|PolymorphicMapType_7069_3970_3909#PolymorphicMapType_7069| (Array T@Ref T@Field_11007_3909 Real)) (|PolymorphicMapType_7069_3970_53#PolymorphicMapType_7069| (Array T@Ref T@Field_11007_53 Real)) (|PolymorphicMapType_7069_3970_33256#PolymorphicMapType_7069| (Array T@Ref T@Field_12516_12521 Real)) (|PolymorphicMapType_7069_3903_3971#PolymorphicMapType_7069| (Array T@Ref T@Field_3906_11008 Real)) (|PolymorphicMapType_7069_3903_53#PolymorphicMapType_7069| (Array T@Ref T@Field_7108_53 Real)) (|PolymorphicMapType_7069_3903_33723#PolymorphicMapType_7069| (Array T@Ref T@Field_3906_12521 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7597 0)) (((PolymorphicMapType_7597 (|PolymorphicMapType_7597_3903_3904#PolymorphicMapType_7597| (Array T@Ref T@Field_10535_10536 Bool)) (|PolymorphicMapType_7597_3906_1314#PolymorphicMapType_7597| (Array T@Ref T@Field_10585_1314 Bool)) (|PolymorphicMapType_7597_3903_53#PolymorphicMapType_7597| (Array T@Ref T@Field_7108_53 Bool)) (|PolymorphicMapType_7597_3903_7122#PolymorphicMapType_7597| (Array T@Ref T@Field_7121_7122 Bool)) (|PolymorphicMapType_7597_3903_11008#PolymorphicMapType_7597| (Array T@Ref T@Field_3906_11008 Bool)) (|PolymorphicMapType_7597_3903_25930#PolymorphicMapType_7597| (Array T@Ref T@Field_3906_12521 Bool)) (|PolymorphicMapType_7597_11007_3904#PolymorphicMapType_7597| (Array T@Ref T@Field_11007_3904 Bool)) (|PolymorphicMapType_7597_11007_1314#PolymorphicMapType_7597| (Array T@Ref T@Field_11007_1314 Bool)) (|PolymorphicMapType_7597_11007_53#PolymorphicMapType_7597| (Array T@Ref T@Field_11007_53 Bool)) (|PolymorphicMapType_7597_11007_7122#PolymorphicMapType_7597| (Array T@Ref T@Field_11007_3909 Bool)) (|PolymorphicMapType_7597_11007_11008#PolymorphicMapType_7597| (Array T@Ref T@Field_11007_11008 Bool)) (|PolymorphicMapType_7597_11007_27182#PolymorphicMapType_7597| (Array T@Ref T@Field_12516_12521 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7048 0)) (((PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| (Array T@Ref T@Field_7108_53 Bool)) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| (Array T@Ref T@Field_7121_7122 T@Ref)) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| (Array T@Ref T@Field_10585_1314 Int)) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| (Array T@Ref T@Field_11007_11008 T@FrameType)) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| (Array T@Ref T@Field_10535_10536 T@PtrDomainType)) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| (Array T@Ref T@Field_12516_12521 T@PolymorphicMapType_7597)) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| (Array T@Ref T@Field_3906_11008 T@FrameType)) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| (Array T@Ref T@Field_3906_12521 T@PolymorphicMapType_7597)) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| (Array T@Ref T@Field_11007_1314 Int)) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| (Array T@Ref T@Field_11007_3904 T@PtrDomainType)) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| (Array T@Ref T@Field_11007_3909 T@Ref)) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| (Array T@Ref T@Field_11007_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_7108_53)
(declare-fun ptr_1 () T@Field_10535_10536)
(declare-fun len_2 () T@Field_10585_1314)
(declare-fun w_11 () T@Field_7121_7122)
(declare-fun succHeap (T@PolymorphicMapType_7048 T@PolymorphicMapType_7048) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7048 T@PolymorphicMapType_7048) Bool)
(declare-fun state (T@PolymorphicMapType_7048 T@PolymorphicMapType_7069) Bool)
(declare-fun getptr (T@PolymorphicMapType_7048 T@Ref) T@PtrDomainType)
(declare-fun |getptr#triggerStateless| (T@Ref) T@PtrDomainType)
(declare-fun |valid#trigger_3970| (T@PolymorphicMapType_7048 T@Field_11007_11008) Bool)
(declare-fun valid (T@Ref) T@Field_11007_11008)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_7069) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7597)
(declare-fun |cond'| (T@PolymorphicMapType_7048 T@Ref Int) Bool)
(declare-fun dummyFunction_1582 (Bool) Bool)
(declare-fun |cond#triggerStateless| (T@Ref Int) Bool)
(declare-fun IsPredicateField_3970_3971 (T@Field_11007_11008) Bool)
(declare-fun |getptr'| (T@PolymorphicMapType_7048 T@Ref) T@PtrDomainType)
(declare-fun dummyFunction_3959 (T@PtrDomainType) Bool)
(declare-fun |valid#everUsed_3970| (T@Field_11007_11008) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7048 T@PolymorphicMapType_7048 T@PolymorphicMapType_7069) Bool)
(declare-fun HasDirectPerm_11007_11008 (T@PolymorphicMapType_7069 T@Ref T@Field_11007_11008) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3970 (T@Field_11007_11008) T@Field_12516_12521)
(declare-fun IsPredicateField_3906_24269 (T@Field_3906_11008) Bool)
(declare-fun HasDirectPerm_3906_11008 (T@PolymorphicMapType_7069 T@Ref T@Field_3906_11008) Bool)
(declare-fun PredicateMaskField_3906 (T@Field_3906_11008) T@Field_3906_12521)
(declare-fun IsWandField_11007_28347 (T@Field_11007_11008) Bool)
(declare-fun WandMaskField_11007 (T@Field_11007_11008) T@Field_12516_12521)
(declare-fun IsWandField_3906_27990 (T@Field_3906_11008) Bool)
(declare-fun WandMaskField_3906 (T@Field_3906_11008) T@Field_3906_12521)
(declare-fun |valid#sm| (T@Ref) T@Field_12516_12521)
(declare-fun dummyHeap () T@PolymorphicMapType_7048)
(declare-fun ZeroMask () T@PolymorphicMapType_7069)
(declare-fun InsidePredicate_11007_11007 (T@Field_11007_11008 T@FrameType T@Field_11007_11008 T@FrameType) Bool)
(declare-fun InsidePredicate_7108_7108 (T@Field_3906_11008 T@FrameType T@Field_3906_11008 T@FrameType) Bool)
(declare-fun IsPredicateField_3903_3904 (T@Field_10535_10536) Bool)
(declare-fun IsWandField_3903_3904 (T@Field_10535_10536) Bool)
(declare-fun IsPredicateField_3906_1314 (T@Field_10585_1314) Bool)
(declare-fun IsWandField_3906_1314 (T@Field_10585_1314) Bool)
(declare-fun IsPredicateField_3908_3909 (T@Field_7121_7122) Bool)
(declare-fun IsWandField_3908_3909 (T@Field_7121_7122) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3903_36455 (T@Field_3906_12521) Bool)
(declare-fun IsWandField_3903_36471 (T@Field_3906_12521) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3903_53 (T@Field_7108_53) Bool)
(declare-fun IsWandField_3903_53 (T@Field_7108_53) Bool)
(declare-fun IsPredicateField_3970_35498 (T@Field_12516_12521) Bool)
(declare-fun IsWandField_3970_35514 (T@Field_12516_12521) Bool)
(declare-fun IsPredicateField_3970_53 (T@Field_11007_53) Bool)
(declare-fun IsWandField_3970_53 (T@Field_11007_53) Bool)
(declare-fun IsPredicateField_3970_3909 (T@Field_11007_3909) Bool)
(declare-fun IsWandField_3970_3909 (T@Field_11007_3909) Bool)
(declare-fun IsPredicateField_3970_1314 (T@Field_11007_1314) Bool)
(declare-fun IsWandField_3970_1314 (T@Field_11007_1314) Bool)
(declare-fun IsPredicateField_3970_3904 (T@Field_11007_3904) Bool)
(declare-fun IsWandField_3970_3904 (T@Field_11007_3904) Bool)
(declare-fun HasDirectPerm_11007_24024 (T@PolymorphicMapType_7069 T@Ref T@Field_12516_12521) Bool)
(declare-fun HasDirectPerm_11007_53 (T@PolymorphicMapType_7069 T@Ref T@Field_11007_53) Bool)
(declare-fun HasDirectPerm_11007_3909 (T@PolymorphicMapType_7069 T@Ref T@Field_11007_3909) Bool)
(declare-fun HasDirectPerm_11007_3904 (T@PolymorphicMapType_7069 T@Ref T@Field_11007_3904) Bool)
(declare-fun HasDirectPerm_11007_1314 (T@PolymorphicMapType_7069 T@Ref T@Field_11007_1314) Bool)
(declare-fun HasDirectPerm_3906_22634 (T@PolymorphicMapType_7069 T@Ref T@Field_3906_12521) Bool)
(declare-fun HasDirectPerm_3906_53 (T@PolymorphicMapType_7069 T@Ref T@Field_7108_53) Bool)
(declare-fun HasDirectPerm_3908_3909 (T@PolymorphicMapType_7069 T@Ref T@Field_7121_7122) Bool)
(declare-fun HasDirectPerm_3903_3904 (T@PolymorphicMapType_7069 T@Ref T@Field_10535_10536) Bool)
(declare-fun HasDirectPerm_3906_1314 (T@PolymorphicMapType_7069 T@Ref T@Field_10585_1314) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7069 T@PolymorphicMapType_7069 T@PolymorphicMapType_7069) Bool)
(declare-fun cond (T@PolymorphicMapType_7048 T@Ref Int) Bool)
(declare-fun |cond#frame| (T@FrameType T@Ref Int) Bool)
(declare-fun |getptr#frame| (T@FrameType T@Ref) T@PtrDomainType)
(declare-fun getPredWandId_3970_3971 (T@Field_11007_11008) Int)
(declare-fun loc (T@PtrDomainType Int) T@Ref)
(declare-fun InsidePredicate_11007_7108 (T@Field_11007_11008 T@FrameType T@Field_3906_11008 T@FrameType) Bool)
(declare-fun InsidePredicate_7108_11007 (T@Field_3906_11008 T@FrameType T@Field_11007_11008 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7048) (Heap1 T@PolymorphicMapType_7048) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7048) (Mask T@PolymorphicMapType_7069) (this T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 1)) (= (getptr Heap this) (select (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap) this ptr_1)))
 :qid |stdinbpl.343:15|
 :skolemid |29|
 :pattern ( (state Heap Mask) (getptr Heap this))
 :pattern ( (state Heap Mask) (|getptr#triggerStateless| this) (|valid#trigger_3970| Heap (valid this)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7048) (Mask@@0 T@PolymorphicMapType_7069) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7048) (Heap1@@0 T@PolymorphicMapType_7048) (Heap2 T@PolymorphicMapType_7048) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12516_12521) ) (!  (not (select (|PolymorphicMapType_7597_11007_27182#PolymorphicMapType_7597| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7597_11007_27182#PolymorphicMapType_7597| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11007_11008) ) (!  (not (select (|PolymorphicMapType_7597_11007_11008#PolymorphicMapType_7597| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7597_11007_11008#PolymorphicMapType_7597| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11007_3909) ) (!  (not (select (|PolymorphicMapType_7597_11007_7122#PolymorphicMapType_7597| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7597_11007_7122#PolymorphicMapType_7597| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11007_53) ) (!  (not (select (|PolymorphicMapType_7597_11007_53#PolymorphicMapType_7597| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7597_11007_53#PolymorphicMapType_7597| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11007_1314) ) (!  (not (select (|PolymorphicMapType_7597_11007_1314#PolymorphicMapType_7597| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7597_11007_1314#PolymorphicMapType_7597| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_11007_3904) ) (!  (not (select (|PolymorphicMapType_7597_11007_3904#PolymorphicMapType_7597| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7597_11007_3904#PolymorphicMapType_7597| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3906_12521) ) (!  (not (select (|PolymorphicMapType_7597_3903_25930#PolymorphicMapType_7597| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7597_3903_25930#PolymorphicMapType_7597| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_3906_11008) ) (!  (not (select (|PolymorphicMapType_7597_3903_11008#PolymorphicMapType_7597| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7597_3903_11008#PolymorphicMapType_7597| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_7121_7122) ) (!  (not (select (|PolymorphicMapType_7597_3903_7122#PolymorphicMapType_7597| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7597_3903_7122#PolymorphicMapType_7597| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_7108_53) ) (!  (not (select (|PolymorphicMapType_7597_3903_53#PolymorphicMapType_7597| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7597_3903_53#PolymorphicMapType_7597| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_10585_1314) ) (!  (not (select (|PolymorphicMapType_7597_3906_1314#PolymorphicMapType_7597| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7597_3906_1314#PolymorphicMapType_7597| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_10535_10536) ) (!  (not (select (|PolymorphicMapType_7597_3903_3904#PolymorphicMapType_7597| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7597_3903_3904#PolymorphicMapType_7597| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7048) (this@@0 T@Ref) (j Int) ) (! (dummyFunction_1582 (|cond#triggerStateless| this@@0 j))
 :qid |stdinbpl.239:15|
 :skolemid |24|
 :pattern ( (|cond'| Heap@@1 this@@0 j))
)))
(assert (forall ((this@@1 T@Ref) ) (! (IsPredicateField_3970_3971 (valid this@@1))
 :qid |stdinbpl.428:15|
 :skolemid |32|
 :pattern ( (valid this@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7048) (this@@2 T@Ref) ) (! (dummyFunction_3959 (|getptr#triggerStateless| this@@2))
 :qid |stdinbpl.337:15|
 :skolemid |28|
 :pattern ( (|getptr'| Heap@@2 this@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7048) (this@@3 T@Ref) ) (! (|valid#everUsed_3970| (valid this@@3))
 :qid |stdinbpl.447:15|
 :skolemid |36|
 :pattern ( (|valid#trigger_3970| Heap@@3 (valid this@@3)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7048) (this@@4 T@Ref) ) (!  (and (= (getptr Heap@@4 this@@4) (|getptr'| Heap@@4 this@@4)) (dummyFunction_3959 (|getptr#triggerStateless| this@@4)))
 :qid |stdinbpl.333:15|
 :skolemid |27|
 :pattern ( (getptr Heap@@4 this@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7048) (ExhaleHeap T@PolymorphicMapType_7048) (Mask@@1 T@PolymorphicMapType_7069) (pm_f_5 T@Field_11007_11008) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_11007_11008 Mask@@1 null pm_f_5) (IsPredicateField_3970_3971 pm_f_5)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_10535_10536) ) (!  (=> (select (|PolymorphicMapType_7597_3903_3904#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@5) null (PredicateMaskField_3970 pm_f_5))) o2_5 f_23) (= (select (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@5) o2_5 f_23) (select (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| ExhaleHeap) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| ExhaleHeap) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_10585_1314) ) (!  (=> (select (|PolymorphicMapType_7597_3906_1314#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@5) null (PredicateMaskField_3970 pm_f_5))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@5) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| ExhaleHeap) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| ExhaleHeap) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_7108_53) ) (!  (=> (select (|PolymorphicMapType_7597_3903_53#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@5) null (PredicateMaskField_3970 pm_f_5))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@5) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| ExhaleHeap) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| ExhaleHeap) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_7121_7122) ) (!  (=> (select (|PolymorphicMapType_7597_3903_7122#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@5) null (PredicateMaskField_3970 pm_f_5))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@5) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| ExhaleHeap) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| ExhaleHeap) o2_5@@2 f_23@@2))
))) (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_3906_11008) ) (!  (=> (select (|PolymorphicMapType_7597_3903_11008#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@5) null (PredicateMaskField_3970 pm_f_5))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@5) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| ExhaleHeap) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| ExhaleHeap) o2_5@@3 f_23@@3))
))) (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_3906_12521) ) (!  (=> (select (|PolymorphicMapType_7597_3903_25930#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@5) null (PredicateMaskField_3970 pm_f_5))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@5) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| ExhaleHeap) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| ExhaleHeap) o2_5@@4 f_23@@4))
))) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_11007_3904) ) (!  (=> (select (|PolymorphicMapType_7597_11007_3904#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@5) null (PredicateMaskField_3970 pm_f_5))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@5) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| ExhaleHeap) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| ExhaleHeap) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_11007_1314) ) (!  (=> (select (|PolymorphicMapType_7597_11007_1314#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@5) null (PredicateMaskField_3970 pm_f_5))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@5) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| ExhaleHeap) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| ExhaleHeap) o2_5@@6 f_23@@6))
))) (forall ((o2_5@@7 T@Ref) (f_23@@7 T@Field_11007_53) ) (!  (=> (select (|PolymorphicMapType_7597_11007_53#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@5) null (PredicateMaskField_3970 pm_f_5))) o2_5@@7 f_23@@7) (= (select (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@5) o2_5@@7 f_23@@7) (select (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| ExhaleHeap) o2_5@@7 f_23@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| ExhaleHeap) o2_5@@7 f_23@@7))
))) (forall ((o2_5@@8 T@Ref) (f_23@@8 T@Field_11007_3909) ) (!  (=> (select (|PolymorphicMapType_7597_11007_7122#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@5) null (PredicateMaskField_3970 pm_f_5))) o2_5@@8 f_23@@8) (= (select (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@5) o2_5@@8 f_23@@8) (select (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| ExhaleHeap) o2_5@@8 f_23@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| ExhaleHeap) o2_5@@8 f_23@@8))
))) (forall ((o2_5@@9 T@Ref) (f_23@@9 T@Field_11007_11008) ) (!  (=> (select (|PolymorphicMapType_7597_11007_11008#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@5) null (PredicateMaskField_3970 pm_f_5))) o2_5@@9 f_23@@9) (= (select (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@5) o2_5@@9 f_23@@9) (select (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| ExhaleHeap) o2_5@@9 f_23@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| ExhaleHeap) o2_5@@9 f_23@@9))
))) (forall ((o2_5@@10 T@Ref) (f_23@@10 T@Field_12516_12521) ) (!  (=> (select (|PolymorphicMapType_7597_11007_27182#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@5) null (PredicateMaskField_3970 pm_f_5))) o2_5@@10 f_23@@10) (= (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@5) o2_5@@10 f_23@@10) (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| ExhaleHeap) o2_5@@10 f_23@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| ExhaleHeap) o2_5@@10 f_23@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (IsPredicateField_3970_3971 pm_f_5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7048) (ExhaleHeap@@0 T@PolymorphicMapType_7048) (Mask@@2 T@PolymorphicMapType_7069) (pm_f_5@@0 T@Field_3906_11008) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_3906_11008 Mask@@2 null pm_f_5@@0) (IsPredicateField_3906_24269 pm_f_5@@0)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@11 T@Ref) (f_23@@11 T@Field_10535_10536) ) (!  (=> (select (|PolymorphicMapType_7597_3903_3904#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@6) null (PredicateMaskField_3906 pm_f_5@@0))) o2_5@@11 f_23@@11) (= (select (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@6) o2_5@@11 f_23@@11) (select (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@11 f_23@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@11 f_23@@11))
)) (forall ((o2_5@@12 T@Ref) (f_23@@12 T@Field_10585_1314) ) (!  (=> (select (|PolymorphicMapType_7597_3906_1314#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@6) null (PredicateMaskField_3906 pm_f_5@@0))) o2_5@@12 f_23@@12) (= (select (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@6) o2_5@@12 f_23@@12) (select (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@12 f_23@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@12 f_23@@12))
))) (forall ((o2_5@@13 T@Ref) (f_23@@13 T@Field_7108_53) ) (!  (=> (select (|PolymorphicMapType_7597_3903_53#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@6) null (PredicateMaskField_3906 pm_f_5@@0))) o2_5@@13 f_23@@13) (= (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@6) o2_5@@13 f_23@@13) (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@13 f_23@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@13 f_23@@13))
))) (forall ((o2_5@@14 T@Ref) (f_23@@14 T@Field_7121_7122) ) (!  (=> (select (|PolymorphicMapType_7597_3903_7122#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@6) null (PredicateMaskField_3906 pm_f_5@@0))) o2_5@@14 f_23@@14) (= (select (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@6) o2_5@@14 f_23@@14) (select (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@14 f_23@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@14 f_23@@14))
))) (forall ((o2_5@@15 T@Ref) (f_23@@15 T@Field_3906_11008) ) (!  (=> (select (|PolymorphicMapType_7597_3903_11008#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@6) null (PredicateMaskField_3906 pm_f_5@@0))) o2_5@@15 f_23@@15) (= (select (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@6) o2_5@@15 f_23@@15) (select (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@15 f_23@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@15 f_23@@15))
))) (forall ((o2_5@@16 T@Ref) (f_23@@16 T@Field_3906_12521) ) (!  (=> (select (|PolymorphicMapType_7597_3903_25930#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@6) null (PredicateMaskField_3906 pm_f_5@@0))) o2_5@@16 f_23@@16) (= (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@6) o2_5@@16 f_23@@16) (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@16 f_23@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@16 f_23@@16))
))) (forall ((o2_5@@17 T@Ref) (f_23@@17 T@Field_11007_3904) ) (!  (=> (select (|PolymorphicMapType_7597_11007_3904#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@6) null (PredicateMaskField_3906 pm_f_5@@0))) o2_5@@17 f_23@@17) (= (select (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@6) o2_5@@17 f_23@@17) (select (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@17 f_23@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@17 f_23@@17))
))) (forall ((o2_5@@18 T@Ref) (f_23@@18 T@Field_11007_1314) ) (!  (=> (select (|PolymorphicMapType_7597_11007_1314#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@6) null (PredicateMaskField_3906 pm_f_5@@0))) o2_5@@18 f_23@@18) (= (select (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@6) o2_5@@18 f_23@@18) (select (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@18 f_23@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@18 f_23@@18))
))) (forall ((o2_5@@19 T@Ref) (f_23@@19 T@Field_11007_53) ) (!  (=> (select (|PolymorphicMapType_7597_11007_53#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@6) null (PredicateMaskField_3906 pm_f_5@@0))) o2_5@@19 f_23@@19) (= (select (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@6) o2_5@@19 f_23@@19) (select (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@19 f_23@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@19 f_23@@19))
))) (forall ((o2_5@@20 T@Ref) (f_23@@20 T@Field_11007_3909) ) (!  (=> (select (|PolymorphicMapType_7597_11007_7122#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@6) null (PredicateMaskField_3906 pm_f_5@@0))) o2_5@@20 f_23@@20) (= (select (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@6) o2_5@@20 f_23@@20) (select (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@20 f_23@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@20 f_23@@20))
))) (forall ((o2_5@@21 T@Ref) (f_23@@21 T@Field_11007_11008) ) (!  (=> (select (|PolymorphicMapType_7597_11007_11008#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@6) null (PredicateMaskField_3906 pm_f_5@@0))) o2_5@@21 f_23@@21) (= (select (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@6) o2_5@@21 f_23@@21) (select (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@21 f_23@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@21 f_23@@21))
))) (forall ((o2_5@@22 T@Ref) (f_23@@22 T@Field_12516_12521) ) (!  (=> (select (|PolymorphicMapType_7597_11007_27182#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@6) null (PredicateMaskField_3906 pm_f_5@@0))) o2_5@@22 f_23@@22) (= (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@6) o2_5@@22 f_23@@22) (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@22 f_23@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| ExhaleHeap@@0) o2_5@@22 f_23@@22))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (IsPredicateField_3906_24269 pm_f_5@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7048) (ExhaleHeap@@1 T@PolymorphicMapType_7048) (Mask@@3 T@PolymorphicMapType_7069) (pm_f_5@@1 T@Field_11007_11008) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_11007_11008 Mask@@3 null pm_f_5@@1) (IsWandField_11007_28347 pm_f_5@@1)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@23 T@Ref) (f_23@@23 T@Field_10535_10536) ) (!  (=> (select (|PolymorphicMapType_7597_3903_3904#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@7) null (WandMaskField_11007 pm_f_5@@1))) o2_5@@23 f_23@@23) (= (select (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@7) o2_5@@23 f_23@@23) (select (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@23 f_23@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@23 f_23@@23))
)) (forall ((o2_5@@24 T@Ref) (f_23@@24 T@Field_10585_1314) ) (!  (=> (select (|PolymorphicMapType_7597_3906_1314#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@7) null (WandMaskField_11007 pm_f_5@@1))) o2_5@@24 f_23@@24) (= (select (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@7) o2_5@@24 f_23@@24) (select (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@24 f_23@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@24 f_23@@24))
))) (forall ((o2_5@@25 T@Ref) (f_23@@25 T@Field_7108_53) ) (!  (=> (select (|PolymorphicMapType_7597_3903_53#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@7) null (WandMaskField_11007 pm_f_5@@1))) o2_5@@25 f_23@@25) (= (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@7) o2_5@@25 f_23@@25) (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@25 f_23@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@25 f_23@@25))
))) (forall ((o2_5@@26 T@Ref) (f_23@@26 T@Field_7121_7122) ) (!  (=> (select (|PolymorphicMapType_7597_3903_7122#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@7) null (WandMaskField_11007 pm_f_5@@1))) o2_5@@26 f_23@@26) (= (select (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@7) o2_5@@26 f_23@@26) (select (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@26 f_23@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@26 f_23@@26))
))) (forall ((o2_5@@27 T@Ref) (f_23@@27 T@Field_3906_11008) ) (!  (=> (select (|PolymorphicMapType_7597_3903_11008#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@7) null (WandMaskField_11007 pm_f_5@@1))) o2_5@@27 f_23@@27) (= (select (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@7) o2_5@@27 f_23@@27) (select (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@27 f_23@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@27 f_23@@27))
))) (forall ((o2_5@@28 T@Ref) (f_23@@28 T@Field_3906_12521) ) (!  (=> (select (|PolymorphicMapType_7597_3903_25930#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@7) null (WandMaskField_11007 pm_f_5@@1))) o2_5@@28 f_23@@28) (= (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@7) o2_5@@28 f_23@@28) (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@28 f_23@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@28 f_23@@28))
))) (forall ((o2_5@@29 T@Ref) (f_23@@29 T@Field_11007_3904) ) (!  (=> (select (|PolymorphicMapType_7597_11007_3904#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@7) null (WandMaskField_11007 pm_f_5@@1))) o2_5@@29 f_23@@29) (= (select (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@7) o2_5@@29 f_23@@29) (select (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@29 f_23@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@29 f_23@@29))
))) (forall ((o2_5@@30 T@Ref) (f_23@@30 T@Field_11007_1314) ) (!  (=> (select (|PolymorphicMapType_7597_11007_1314#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@7) null (WandMaskField_11007 pm_f_5@@1))) o2_5@@30 f_23@@30) (= (select (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@7) o2_5@@30 f_23@@30) (select (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@30 f_23@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@30 f_23@@30))
))) (forall ((o2_5@@31 T@Ref) (f_23@@31 T@Field_11007_53) ) (!  (=> (select (|PolymorphicMapType_7597_11007_53#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@7) null (WandMaskField_11007 pm_f_5@@1))) o2_5@@31 f_23@@31) (= (select (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@7) o2_5@@31 f_23@@31) (select (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@31 f_23@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@31 f_23@@31))
))) (forall ((o2_5@@32 T@Ref) (f_23@@32 T@Field_11007_3909) ) (!  (=> (select (|PolymorphicMapType_7597_11007_7122#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@7) null (WandMaskField_11007 pm_f_5@@1))) o2_5@@32 f_23@@32) (= (select (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@7) o2_5@@32 f_23@@32) (select (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@32 f_23@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@32 f_23@@32))
))) (forall ((o2_5@@33 T@Ref) (f_23@@33 T@Field_11007_11008) ) (!  (=> (select (|PolymorphicMapType_7597_11007_11008#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@7) null (WandMaskField_11007 pm_f_5@@1))) o2_5@@33 f_23@@33) (= (select (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@7) o2_5@@33 f_23@@33) (select (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@33 f_23@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@33 f_23@@33))
))) (forall ((o2_5@@34 T@Ref) (f_23@@34 T@Field_12516_12521) ) (!  (=> (select (|PolymorphicMapType_7597_11007_27182#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@7) null (WandMaskField_11007 pm_f_5@@1))) o2_5@@34 f_23@@34) (= (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@7) o2_5@@34 f_23@@34) (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@34 f_23@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| ExhaleHeap@@1) o2_5@@34 f_23@@34))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (IsWandField_11007_28347 pm_f_5@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7048) (ExhaleHeap@@2 T@PolymorphicMapType_7048) (Mask@@4 T@PolymorphicMapType_7069) (pm_f_5@@2 T@Field_3906_11008) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_3906_11008 Mask@@4 null pm_f_5@@2) (IsWandField_3906_27990 pm_f_5@@2)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@35 T@Ref) (f_23@@35 T@Field_10535_10536) ) (!  (=> (select (|PolymorphicMapType_7597_3903_3904#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@8) null (WandMaskField_3906 pm_f_5@@2))) o2_5@@35 f_23@@35) (= (select (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@8) o2_5@@35 f_23@@35) (select (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@35 f_23@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@35 f_23@@35))
)) (forall ((o2_5@@36 T@Ref) (f_23@@36 T@Field_10585_1314) ) (!  (=> (select (|PolymorphicMapType_7597_3906_1314#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@8) null (WandMaskField_3906 pm_f_5@@2))) o2_5@@36 f_23@@36) (= (select (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@8) o2_5@@36 f_23@@36) (select (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@36 f_23@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@36 f_23@@36))
))) (forall ((o2_5@@37 T@Ref) (f_23@@37 T@Field_7108_53) ) (!  (=> (select (|PolymorphicMapType_7597_3903_53#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@8) null (WandMaskField_3906 pm_f_5@@2))) o2_5@@37 f_23@@37) (= (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@8) o2_5@@37 f_23@@37) (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@37 f_23@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@37 f_23@@37))
))) (forall ((o2_5@@38 T@Ref) (f_23@@38 T@Field_7121_7122) ) (!  (=> (select (|PolymorphicMapType_7597_3903_7122#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@8) null (WandMaskField_3906 pm_f_5@@2))) o2_5@@38 f_23@@38) (= (select (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@8) o2_5@@38 f_23@@38) (select (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@38 f_23@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@38 f_23@@38))
))) (forall ((o2_5@@39 T@Ref) (f_23@@39 T@Field_3906_11008) ) (!  (=> (select (|PolymorphicMapType_7597_3903_11008#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@8) null (WandMaskField_3906 pm_f_5@@2))) o2_5@@39 f_23@@39) (= (select (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@8) o2_5@@39 f_23@@39) (select (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@39 f_23@@39)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@39 f_23@@39))
))) (forall ((o2_5@@40 T@Ref) (f_23@@40 T@Field_3906_12521) ) (!  (=> (select (|PolymorphicMapType_7597_3903_25930#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@8) null (WandMaskField_3906 pm_f_5@@2))) o2_5@@40 f_23@@40) (= (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@8) o2_5@@40 f_23@@40) (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@40 f_23@@40)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@40 f_23@@40))
))) (forall ((o2_5@@41 T@Ref) (f_23@@41 T@Field_11007_3904) ) (!  (=> (select (|PolymorphicMapType_7597_11007_3904#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@8) null (WandMaskField_3906 pm_f_5@@2))) o2_5@@41 f_23@@41) (= (select (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@8) o2_5@@41 f_23@@41) (select (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@41 f_23@@41)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@41 f_23@@41))
))) (forall ((o2_5@@42 T@Ref) (f_23@@42 T@Field_11007_1314) ) (!  (=> (select (|PolymorphicMapType_7597_11007_1314#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@8) null (WandMaskField_3906 pm_f_5@@2))) o2_5@@42 f_23@@42) (= (select (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@8) o2_5@@42 f_23@@42) (select (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@42 f_23@@42)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@42 f_23@@42))
))) (forall ((o2_5@@43 T@Ref) (f_23@@43 T@Field_11007_53) ) (!  (=> (select (|PolymorphicMapType_7597_11007_53#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@8) null (WandMaskField_3906 pm_f_5@@2))) o2_5@@43 f_23@@43) (= (select (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@8) o2_5@@43 f_23@@43) (select (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@43 f_23@@43)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@43 f_23@@43))
))) (forall ((o2_5@@44 T@Ref) (f_23@@44 T@Field_11007_3909) ) (!  (=> (select (|PolymorphicMapType_7597_11007_7122#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@8) null (WandMaskField_3906 pm_f_5@@2))) o2_5@@44 f_23@@44) (= (select (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@8) o2_5@@44 f_23@@44) (select (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@44 f_23@@44)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@44 f_23@@44))
))) (forall ((o2_5@@45 T@Ref) (f_23@@45 T@Field_11007_11008) ) (!  (=> (select (|PolymorphicMapType_7597_11007_11008#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@8) null (WandMaskField_3906 pm_f_5@@2))) o2_5@@45 f_23@@45) (= (select (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@8) o2_5@@45 f_23@@45) (select (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@45 f_23@@45)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@45 f_23@@45))
))) (forall ((o2_5@@46 T@Ref) (f_23@@46 T@Field_12516_12521) ) (!  (=> (select (|PolymorphicMapType_7597_11007_27182#PolymorphicMapType_7597| (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@8) null (WandMaskField_3906 pm_f_5@@2))) o2_5@@46 f_23@@46) (= (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@8) o2_5@@46 f_23@@46) (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@46 f_23@@46)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| ExhaleHeap@@2) o2_5@@46 f_23@@46))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (IsWandField_3906_27990 pm_f_5@@2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7048) (ExhaleHeap@@3 T@PolymorphicMapType_7048) (Mask@@5 T@PolymorphicMapType_7069) (pm_f_5@@3 T@Field_11007_11008) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_11007_11008 Mask@@5 null pm_f_5@@3) (IsPredicateField_3970_3971 pm_f_5@@3)) (= (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@9) null (PredicateMaskField_3970 pm_f_5@@3)) (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| ExhaleHeap@@3) null (PredicateMaskField_3970 pm_f_5@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (IsPredicateField_3970_3971 pm_f_5@@3) (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| ExhaleHeap@@3) null (PredicateMaskField_3970 pm_f_5@@3)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7048) (ExhaleHeap@@4 T@PolymorphicMapType_7048) (Mask@@6 T@PolymorphicMapType_7069) (pm_f_5@@4 T@Field_3906_11008) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_3906_11008 Mask@@6 null pm_f_5@@4) (IsPredicateField_3906_24269 pm_f_5@@4)) (= (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@10) null (PredicateMaskField_3906 pm_f_5@@4)) (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| ExhaleHeap@@4) null (PredicateMaskField_3906 pm_f_5@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (IsPredicateField_3906_24269 pm_f_5@@4) (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| ExhaleHeap@@4) null (PredicateMaskField_3906 pm_f_5@@4)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7048) (ExhaleHeap@@5 T@PolymorphicMapType_7048) (Mask@@7 T@PolymorphicMapType_7069) (pm_f_5@@5 T@Field_11007_11008) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_11007_11008 Mask@@7 null pm_f_5@@5) (IsWandField_11007_28347 pm_f_5@@5)) (= (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@11) null (WandMaskField_11007 pm_f_5@@5)) (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| ExhaleHeap@@5) null (WandMaskField_11007 pm_f_5@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (IsWandField_11007_28347 pm_f_5@@5) (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| ExhaleHeap@@5) null (WandMaskField_11007 pm_f_5@@5)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7048) (ExhaleHeap@@6 T@PolymorphicMapType_7048) (Mask@@8 T@PolymorphicMapType_7069) (pm_f_5@@6 T@Field_3906_11008) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_3906_11008 Mask@@8 null pm_f_5@@6) (IsWandField_3906_27990 pm_f_5@@6)) (= (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@12) null (WandMaskField_3906 pm_f_5@@6)) (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| ExhaleHeap@@6) null (WandMaskField_3906 pm_f_5@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (IsWandField_3906_27990 pm_f_5@@6) (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| ExhaleHeap@@6) null (WandMaskField_3906 pm_f_5@@6)))
)))
(assert (forall ((this@@5 T@Ref) (this2 T@Ref) ) (!  (=> (= (valid this@@5) (valid this2)) (= this@@5 this2))
 :qid |stdinbpl.438:15|
 :skolemid |34|
 :pattern ( (valid this@@5) (valid this2))
)))
(assert (forall ((this@@6 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|valid#sm| this@@6) (|valid#sm| this2@@0)) (= this@@6 this2@@0))
 :qid |stdinbpl.442:15|
 :skolemid |35|
 :pattern ( (|valid#sm| this@@6) (|valid#sm| this2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7048) (ExhaleHeap@@7 T@PolymorphicMapType_7048) (Mask@@9 T@PolymorphicMapType_7069) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@13) o_15 $allocated) (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| ExhaleHeap@@7) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| ExhaleHeap@@7) o_15 $allocated))
)))
(assert (forall ((p T@Field_11007_11008) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11007_11007 p v_1 p w))
 :qid |stdinbpl.193:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11007_11007 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_3906_11008) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7108_7108 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.193:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7108_7108 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3903_3904 ptr_1)))
(assert  (not (IsWandField_3903_3904 ptr_1)))
(assert  (not (IsPredicateField_3906_1314 len_2)))
(assert  (not (IsWandField_3906_1314 len_2)))
(assert  (not (IsPredicateField_3908_3909 w_11)))
(assert  (not (IsWandField_3908_3909 w_11)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7048) (ExhaleHeap@@8 T@PolymorphicMapType_7048) (Mask@@10 T@PolymorphicMapType_7069) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@14 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7069) (o_2@@11 T@Ref) (f_4@@11 T@Field_3906_12521) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_7069_3903_33723#PolymorphicMapType_7069| Mask@@11) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3903_36455 f_4@@11))) (not (IsWandField_3903_36471 f_4@@11))) (<= (select (|PolymorphicMapType_7069_3903_33723#PolymorphicMapType_7069| Mask@@11) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_7069_3903_33723#PolymorphicMapType_7069| Mask@@11) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7069) (o_2@@12 T@Ref) (f_4@@12 T@Field_7108_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_7069_3903_53#PolymorphicMapType_7069| Mask@@12) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3903_53 f_4@@12))) (not (IsWandField_3903_53 f_4@@12))) (<= (select (|PolymorphicMapType_7069_3903_53#PolymorphicMapType_7069| Mask@@12) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_7069_3903_53#PolymorphicMapType_7069| Mask@@12) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7069) (o_2@@13 T@Ref) (f_4@@13 T@Field_7121_7122) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_7069_3908_3909#PolymorphicMapType_7069| Mask@@13) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3908_3909 f_4@@13))) (not (IsWandField_3908_3909 f_4@@13))) (<= (select (|PolymorphicMapType_7069_3908_3909#PolymorphicMapType_7069| Mask@@13) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_7069_3908_3909#PolymorphicMapType_7069| Mask@@13) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7069) (o_2@@14 T@Ref) (f_4@@14 T@Field_10585_1314) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_7069_3906_1314#PolymorphicMapType_7069| Mask@@14) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3906_1314 f_4@@14))) (not (IsWandField_3906_1314 f_4@@14))) (<= (select (|PolymorphicMapType_7069_3906_1314#PolymorphicMapType_7069| Mask@@14) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_7069_3906_1314#PolymorphicMapType_7069| Mask@@14) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7069) (o_2@@15 T@Ref) (f_4@@15 T@Field_10535_10536) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_7069_3903_3904#PolymorphicMapType_7069| Mask@@15) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3903_3904 f_4@@15))) (not (IsWandField_3903_3904 f_4@@15))) (<= (select (|PolymorphicMapType_7069_3903_3904#PolymorphicMapType_7069| Mask@@15) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_7069_3903_3904#PolymorphicMapType_7069| Mask@@15) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7069) (o_2@@16 T@Ref) (f_4@@16 T@Field_3906_11008) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7069_3903_3971#PolymorphicMapType_7069| Mask@@16) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3906_24269 f_4@@16))) (not (IsWandField_3906_27990 f_4@@16))) (<= (select (|PolymorphicMapType_7069_3903_3971#PolymorphicMapType_7069| Mask@@16) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7069_3903_3971#PolymorphicMapType_7069| Mask@@16) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7069) (o_2@@17 T@Ref) (f_4@@17 T@Field_12516_12521) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7069_3970_33256#PolymorphicMapType_7069| Mask@@17) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3970_35498 f_4@@17))) (not (IsWandField_3970_35514 f_4@@17))) (<= (select (|PolymorphicMapType_7069_3970_33256#PolymorphicMapType_7069| Mask@@17) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7069_3970_33256#PolymorphicMapType_7069| Mask@@17) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7069) (o_2@@18 T@Ref) (f_4@@18 T@Field_11007_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_7069_3970_53#PolymorphicMapType_7069| Mask@@18) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3970_53 f_4@@18))) (not (IsWandField_3970_53 f_4@@18))) (<= (select (|PolymorphicMapType_7069_3970_53#PolymorphicMapType_7069| Mask@@18) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_7069_3970_53#PolymorphicMapType_7069| Mask@@18) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7069) (o_2@@19 T@Ref) (f_4@@19 T@Field_11007_3909) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_7069_3970_3909#PolymorphicMapType_7069| Mask@@19) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3970_3909 f_4@@19))) (not (IsWandField_3970_3909 f_4@@19))) (<= (select (|PolymorphicMapType_7069_3970_3909#PolymorphicMapType_7069| Mask@@19) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_7069_3970_3909#PolymorphicMapType_7069| Mask@@19) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7069) (o_2@@20 T@Ref) (f_4@@20 T@Field_11007_1314) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_7069_3970_1314#PolymorphicMapType_7069| Mask@@20) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_3970_1314 f_4@@20))) (not (IsWandField_3970_1314 f_4@@20))) (<= (select (|PolymorphicMapType_7069_3970_1314#PolymorphicMapType_7069| Mask@@20) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_7069_3970_1314#PolymorphicMapType_7069| Mask@@20) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7069) (o_2@@21 T@Ref) (f_4@@21 T@Field_11007_3904) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_7069_3970_3904#PolymorphicMapType_7069| Mask@@21) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_3970_3904 f_4@@21))) (not (IsWandField_3970_3904 f_4@@21))) (<= (select (|PolymorphicMapType_7069_3970_3904#PolymorphicMapType_7069| Mask@@21) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_7069_3970_3904#PolymorphicMapType_7069| Mask@@21) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7069) (o_2@@22 T@Ref) (f_4@@22 T@Field_11007_11008) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_7069_3970_3971#PolymorphicMapType_7069| Mask@@22) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_3970_3971 f_4@@22))) (not (IsWandField_11007_28347 f_4@@22))) (<= (select (|PolymorphicMapType_7069_3970_3971#PolymorphicMapType_7069| Mask@@22) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_7069_3970_3971#PolymorphicMapType_7069| Mask@@22) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7069) (o_2@@23 T@Ref) (f_4@@23 T@Field_12516_12521) ) (! (= (HasDirectPerm_11007_24024 Mask@@23 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_7069_3970_33256#PolymorphicMapType_7069| Mask@@23) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11007_24024 Mask@@23 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7069) (o_2@@24 T@Ref) (f_4@@24 T@Field_11007_11008) ) (! (= (HasDirectPerm_11007_11008 Mask@@24 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_7069_3970_3971#PolymorphicMapType_7069| Mask@@24) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11007_11008 Mask@@24 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7069) (o_2@@25 T@Ref) (f_4@@25 T@Field_11007_53) ) (! (= (HasDirectPerm_11007_53 Mask@@25 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_7069_3970_53#PolymorphicMapType_7069| Mask@@25) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11007_53 Mask@@25 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_7069) (o_2@@26 T@Ref) (f_4@@26 T@Field_11007_3909) ) (! (= (HasDirectPerm_11007_3909 Mask@@26 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_7069_3970_3909#PolymorphicMapType_7069| Mask@@26) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11007_3909 Mask@@26 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_7069) (o_2@@27 T@Ref) (f_4@@27 T@Field_11007_3904) ) (! (= (HasDirectPerm_11007_3904 Mask@@27 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_7069_3970_3904#PolymorphicMapType_7069| Mask@@27) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11007_3904 Mask@@27 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_7069) (o_2@@28 T@Ref) (f_4@@28 T@Field_11007_1314) ) (! (= (HasDirectPerm_11007_1314 Mask@@28 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_7069_3970_1314#PolymorphicMapType_7069| Mask@@28) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11007_1314 Mask@@28 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_7069) (o_2@@29 T@Ref) (f_4@@29 T@Field_3906_12521) ) (! (= (HasDirectPerm_3906_22634 Mask@@29 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_7069_3903_33723#PolymorphicMapType_7069| Mask@@29) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3906_22634 Mask@@29 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_7069) (o_2@@30 T@Ref) (f_4@@30 T@Field_3906_11008) ) (! (= (HasDirectPerm_3906_11008 Mask@@30 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_7069_3903_3971#PolymorphicMapType_7069| Mask@@30) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3906_11008 Mask@@30 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_7069) (o_2@@31 T@Ref) (f_4@@31 T@Field_7108_53) ) (! (= (HasDirectPerm_3906_53 Mask@@31 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_7069_3903_53#PolymorphicMapType_7069| Mask@@31) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3906_53 Mask@@31 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_7069) (o_2@@32 T@Ref) (f_4@@32 T@Field_7121_7122) ) (! (= (HasDirectPerm_3908_3909 Mask@@32 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_7069_3908_3909#PolymorphicMapType_7069| Mask@@32) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3908_3909 Mask@@32 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_7069) (o_2@@33 T@Ref) (f_4@@33 T@Field_10535_10536) ) (! (= (HasDirectPerm_3903_3904 Mask@@33 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_7069_3903_3904#PolymorphicMapType_7069| Mask@@33) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3903_3904 Mask@@33 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_7069) (o_2@@34 T@Ref) (f_4@@34 T@Field_10585_1314) ) (! (= (HasDirectPerm_3906_1314 Mask@@34 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_7069_3906_1314#PolymorphicMapType_7069| Mask@@34) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3906_1314 Mask@@34 o_2@@34 f_4@@34))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.181:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7048) (ExhaleHeap@@9 T@PolymorphicMapType_7048) (Mask@@35 T@PolymorphicMapType_7069) (o_15@@0 T@Ref) (f_23@@47 T@Field_12516_12521) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@35) (=> (HasDirectPerm_11007_24024 Mask@@35 o_15@@0 f_23@@47) (= (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@15) o_15@@0 f_23@@47) (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| ExhaleHeap@@9) o_15@@0 f_23@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@35) (select (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| ExhaleHeap@@9) o_15@@0 f_23@@47))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7048) (ExhaleHeap@@10 T@PolymorphicMapType_7048) (Mask@@36 T@PolymorphicMapType_7069) (o_15@@1 T@Ref) (f_23@@48 T@Field_11007_11008) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@36) (=> (HasDirectPerm_11007_11008 Mask@@36 o_15@@1 f_23@@48) (= (select (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@16) o_15@@1 f_23@@48) (select (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| ExhaleHeap@@10) o_15@@1 f_23@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@36) (select (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| ExhaleHeap@@10) o_15@@1 f_23@@48))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7048) (ExhaleHeap@@11 T@PolymorphicMapType_7048) (Mask@@37 T@PolymorphicMapType_7069) (o_15@@2 T@Ref) (f_23@@49 T@Field_11007_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@37) (=> (HasDirectPerm_11007_53 Mask@@37 o_15@@2 f_23@@49) (= (select (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@17) o_15@@2 f_23@@49) (select (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| ExhaleHeap@@11) o_15@@2 f_23@@49))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@37) (select (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| ExhaleHeap@@11) o_15@@2 f_23@@49))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7048) (ExhaleHeap@@12 T@PolymorphicMapType_7048) (Mask@@38 T@PolymorphicMapType_7069) (o_15@@3 T@Ref) (f_23@@50 T@Field_11007_3909) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@38) (=> (HasDirectPerm_11007_3909 Mask@@38 o_15@@3 f_23@@50) (= (select (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@18) o_15@@3 f_23@@50) (select (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| ExhaleHeap@@12) o_15@@3 f_23@@50))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@38) (select (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| ExhaleHeap@@12) o_15@@3 f_23@@50))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7048) (ExhaleHeap@@13 T@PolymorphicMapType_7048) (Mask@@39 T@PolymorphicMapType_7069) (o_15@@4 T@Ref) (f_23@@51 T@Field_11007_3904) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@39) (=> (HasDirectPerm_11007_3904 Mask@@39 o_15@@4 f_23@@51) (= (select (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@19) o_15@@4 f_23@@51) (select (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| ExhaleHeap@@13) o_15@@4 f_23@@51))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@39) (select (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| ExhaleHeap@@13) o_15@@4 f_23@@51))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7048) (ExhaleHeap@@14 T@PolymorphicMapType_7048) (Mask@@40 T@PolymorphicMapType_7069) (o_15@@5 T@Ref) (f_23@@52 T@Field_11007_1314) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@40) (=> (HasDirectPerm_11007_1314 Mask@@40 o_15@@5 f_23@@52) (= (select (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@20) o_15@@5 f_23@@52) (select (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| ExhaleHeap@@14) o_15@@5 f_23@@52))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@40) (select (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| ExhaleHeap@@14) o_15@@5 f_23@@52))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7048) (ExhaleHeap@@15 T@PolymorphicMapType_7048) (Mask@@41 T@PolymorphicMapType_7069) (o_15@@6 T@Ref) (f_23@@53 T@Field_3906_12521) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@41) (=> (HasDirectPerm_3906_22634 Mask@@41 o_15@@6 f_23@@53) (= (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@21) o_15@@6 f_23@@53) (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| ExhaleHeap@@15) o_15@@6 f_23@@53))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@41) (select (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| ExhaleHeap@@15) o_15@@6 f_23@@53))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7048) (ExhaleHeap@@16 T@PolymorphicMapType_7048) (Mask@@42 T@PolymorphicMapType_7069) (o_15@@7 T@Ref) (f_23@@54 T@Field_3906_11008) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@42) (=> (HasDirectPerm_3906_11008 Mask@@42 o_15@@7 f_23@@54) (= (select (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@22) o_15@@7 f_23@@54) (select (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| ExhaleHeap@@16) o_15@@7 f_23@@54))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@42) (select (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| ExhaleHeap@@16) o_15@@7 f_23@@54))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7048) (ExhaleHeap@@17 T@PolymorphicMapType_7048) (Mask@@43 T@PolymorphicMapType_7069) (o_15@@8 T@Ref) (f_23@@55 T@Field_7108_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@43) (=> (HasDirectPerm_3906_53 Mask@@43 o_15@@8 f_23@@55) (= (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@23) o_15@@8 f_23@@55) (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| ExhaleHeap@@17) o_15@@8 f_23@@55))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@43) (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| ExhaleHeap@@17) o_15@@8 f_23@@55))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7048) (ExhaleHeap@@18 T@PolymorphicMapType_7048) (Mask@@44 T@PolymorphicMapType_7069) (o_15@@9 T@Ref) (f_23@@56 T@Field_7121_7122) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@44) (=> (HasDirectPerm_3908_3909 Mask@@44 o_15@@9 f_23@@56) (= (select (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@24) o_15@@9 f_23@@56) (select (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| ExhaleHeap@@18) o_15@@9 f_23@@56))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@44) (select (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| ExhaleHeap@@18) o_15@@9 f_23@@56))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7048) (ExhaleHeap@@19 T@PolymorphicMapType_7048) (Mask@@45 T@PolymorphicMapType_7069) (o_15@@10 T@Ref) (f_23@@57 T@Field_10535_10536) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@45) (=> (HasDirectPerm_3903_3904 Mask@@45 o_15@@10 f_23@@57) (= (select (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@25) o_15@@10 f_23@@57) (select (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| ExhaleHeap@@19) o_15@@10 f_23@@57))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@45) (select (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| ExhaleHeap@@19) o_15@@10 f_23@@57))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7048) (ExhaleHeap@@20 T@PolymorphicMapType_7048) (Mask@@46 T@PolymorphicMapType_7069) (o_15@@11 T@Ref) (f_23@@58 T@Field_10585_1314) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@46) (=> (HasDirectPerm_3906_1314 Mask@@46 o_15@@11 f_23@@58) (= (select (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@26) o_15@@11 f_23@@58) (select (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| ExhaleHeap@@20) o_15@@11 f_23@@58))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@46) (select (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| ExhaleHeap@@20) o_15@@11 f_23@@58))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_3906_12521) ) (! (= (select (|PolymorphicMapType_7069_3903_33723#PolymorphicMapType_7069| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7069_3903_33723#PolymorphicMapType_7069| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_7108_53) ) (! (= (select (|PolymorphicMapType_7069_3903_53#PolymorphicMapType_7069| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7069_3903_53#PolymorphicMapType_7069| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_7121_7122) ) (! (= (select (|PolymorphicMapType_7069_3908_3909#PolymorphicMapType_7069| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7069_3908_3909#PolymorphicMapType_7069| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_10585_1314) ) (! (= (select (|PolymorphicMapType_7069_3906_1314#PolymorphicMapType_7069| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7069_3906_1314#PolymorphicMapType_7069| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((o_2@@39 T@Ref) (f_4@@39 T@Field_10535_10536) ) (! (= (select (|PolymorphicMapType_7069_3903_3904#PolymorphicMapType_7069| ZeroMask) o_2@@39 f_4@@39) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7069_3903_3904#PolymorphicMapType_7069| ZeroMask) o_2@@39 f_4@@39))
)))
(assert (forall ((o_2@@40 T@Ref) (f_4@@40 T@Field_3906_11008) ) (! (= (select (|PolymorphicMapType_7069_3903_3971#PolymorphicMapType_7069| ZeroMask) o_2@@40 f_4@@40) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7069_3903_3971#PolymorphicMapType_7069| ZeroMask) o_2@@40 f_4@@40))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_12516_12521) ) (! (= (select (|PolymorphicMapType_7069_3970_33256#PolymorphicMapType_7069| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7069_3970_33256#PolymorphicMapType_7069| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_11007_53) ) (! (= (select (|PolymorphicMapType_7069_3970_53#PolymorphicMapType_7069| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7069_3970_53#PolymorphicMapType_7069| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_11007_3909) ) (! (= (select (|PolymorphicMapType_7069_3970_3909#PolymorphicMapType_7069| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7069_3970_3909#PolymorphicMapType_7069| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_11007_1314) ) (! (= (select (|PolymorphicMapType_7069_3970_1314#PolymorphicMapType_7069| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7069_3970_1314#PolymorphicMapType_7069| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_11007_3904) ) (! (= (select (|PolymorphicMapType_7069_3970_3904#PolymorphicMapType_7069| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7069_3970_3904#PolymorphicMapType_7069| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_11007_11008) ) (! (= (select (|PolymorphicMapType_7069_3970_3971#PolymorphicMapType_7069| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7069_3970_3971#PolymorphicMapType_7069| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7069) (SummandMask1 T@PolymorphicMapType_7069) (SummandMask2 T@PolymorphicMapType_7069) (o_2@@47 T@Ref) (f_4@@47 T@Field_3906_12521) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7069_3903_33723#PolymorphicMapType_7069| ResultMask) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_7069_3903_33723#PolymorphicMapType_7069| SummandMask1) o_2@@47 f_4@@47) (select (|PolymorphicMapType_7069_3903_33723#PolymorphicMapType_7069| SummandMask2) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7069_3903_33723#PolymorphicMapType_7069| ResultMask) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7069_3903_33723#PolymorphicMapType_7069| SummandMask1) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7069_3903_33723#PolymorphicMapType_7069| SummandMask2) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7069) (SummandMask1@@0 T@PolymorphicMapType_7069) (SummandMask2@@0 T@PolymorphicMapType_7069) (o_2@@48 T@Ref) (f_4@@48 T@Field_7108_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7069_3903_53#PolymorphicMapType_7069| ResultMask@@0) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_7069_3903_53#PolymorphicMapType_7069| SummandMask1@@0) o_2@@48 f_4@@48) (select (|PolymorphicMapType_7069_3903_53#PolymorphicMapType_7069| SummandMask2@@0) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7069_3903_53#PolymorphicMapType_7069| ResultMask@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7069_3903_53#PolymorphicMapType_7069| SummandMask1@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7069_3903_53#PolymorphicMapType_7069| SummandMask2@@0) o_2@@48 f_4@@48))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7069) (SummandMask1@@1 T@PolymorphicMapType_7069) (SummandMask2@@1 T@PolymorphicMapType_7069) (o_2@@49 T@Ref) (f_4@@49 T@Field_7121_7122) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7069_3908_3909#PolymorphicMapType_7069| ResultMask@@1) o_2@@49 f_4@@49) (+ (select (|PolymorphicMapType_7069_3908_3909#PolymorphicMapType_7069| SummandMask1@@1) o_2@@49 f_4@@49) (select (|PolymorphicMapType_7069_3908_3909#PolymorphicMapType_7069| SummandMask2@@1) o_2@@49 f_4@@49))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7069_3908_3909#PolymorphicMapType_7069| ResultMask@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7069_3908_3909#PolymorphicMapType_7069| SummandMask1@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7069_3908_3909#PolymorphicMapType_7069| SummandMask2@@1) o_2@@49 f_4@@49))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7069) (SummandMask1@@2 T@PolymorphicMapType_7069) (SummandMask2@@2 T@PolymorphicMapType_7069) (o_2@@50 T@Ref) (f_4@@50 T@Field_10585_1314) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7069_3906_1314#PolymorphicMapType_7069| ResultMask@@2) o_2@@50 f_4@@50) (+ (select (|PolymorphicMapType_7069_3906_1314#PolymorphicMapType_7069| SummandMask1@@2) o_2@@50 f_4@@50) (select (|PolymorphicMapType_7069_3906_1314#PolymorphicMapType_7069| SummandMask2@@2) o_2@@50 f_4@@50))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7069_3906_1314#PolymorphicMapType_7069| ResultMask@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7069_3906_1314#PolymorphicMapType_7069| SummandMask1@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7069_3906_1314#PolymorphicMapType_7069| SummandMask2@@2) o_2@@50 f_4@@50))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7069) (SummandMask1@@3 T@PolymorphicMapType_7069) (SummandMask2@@3 T@PolymorphicMapType_7069) (o_2@@51 T@Ref) (f_4@@51 T@Field_10535_10536) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7069_3903_3904#PolymorphicMapType_7069| ResultMask@@3) o_2@@51 f_4@@51) (+ (select (|PolymorphicMapType_7069_3903_3904#PolymorphicMapType_7069| SummandMask1@@3) o_2@@51 f_4@@51) (select (|PolymorphicMapType_7069_3903_3904#PolymorphicMapType_7069| SummandMask2@@3) o_2@@51 f_4@@51))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7069_3903_3904#PolymorphicMapType_7069| ResultMask@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7069_3903_3904#PolymorphicMapType_7069| SummandMask1@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7069_3903_3904#PolymorphicMapType_7069| SummandMask2@@3) o_2@@51 f_4@@51))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7069) (SummandMask1@@4 T@PolymorphicMapType_7069) (SummandMask2@@4 T@PolymorphicMapType_7069) (o_2@@52 T@Ref) (f_4@@52 T@Field_3906_11008) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7069_3903_3971#PolymorphicMapType_7069| ResultMask@@4) o_2@@52 f_4@@52) (+ (select (|PolymorphicMapType_7069_3903_3971#PolymorphicMapType_7069| SummandMask1@@4) o_2@@52 f_4@@52) (select (|PolymorphicMapType_7069_3903_3971#PolymorphicMapType_7069| SummandMask2@@4) o_2@@52 f_4@@52))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7069_3903_3971#PolymorphicMapType_7069| ResultMask@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7069_3903_3971#PolymorphicMapType_7069| SummandMask1@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7069_3903_3971#PolymorphicMapType_7069| SummandMask2@@4) o_2@@52 f_4@@52))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7069) (SummandMask1@@5 T@PolymorphicMapType_7069) (SummandMask2@@5 T@PolymorphicMapType_7069) (o_2@@53 T@Ref) (f_4@@53 T@Field_12516_12521) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7069_3970_33256#PolymorphicMapType_7069| ResultMask@@5) o_2@@53 f_4@@53) (+ (select (|PolymorphicMapType_7069_3970_33256#PolymorphicMapType_7069| SummandMask1@@5) o_2@@53 f_4@@53) (select (|PolymorphicMapType_7069_3970_33256#PolymorphicMapType_7069| SummandMask2@@5) o_2@@53 f_4@@53))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7069_3970_33256#PolymorphicMapType_7069| ResultMask@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7069_3970_33256#PolymorphicMapType_7069| SummandMask1@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7069_3970_33256#PolymorphicMapType_7069| SummandMask2@@5) o_2@@53 f_4@@53))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7069) (SummandMask1@@6 T@PolymorphicMapType_7069) (SummandMask2@@6 T@PolymorphicMapType_7069) (o_2@@54 T@Ref) (f_4@@54 T@Field_11007_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7069_3970_53#PolymorphicMapType_7069| ResultMask@@6) o_2@@54 f_4@@54) (+ (select (|PolymorphicMapType_7069_3970_53#PolymorphicMapType_7069| SummandMask1@@6) o_2@@54 f_4@@54) (select (|PolymorphicMapType_7069_3970_53#PolymorphicMapType_7069| SummandMask2@@6) o_2@@54 f_4@@54))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7069_3970_53#PolymorphicMapType_7069| ResultMask@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7069_3970_53#PolymorphicMapType_7069| SummandMask1@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7069_3970_53#PolymorphicMapType_7069| SummandMask2@@6) o_2@@54 f_4@@54))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_7069) (SummandMask1@@7 T@PolymorphicMapType_7069) (SummandMask2@@7 T@PolymorphicMapType_7069) (o_2@@55 T@Ref) (f_4@@55 T@Field_11007_3909) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_7069_3970_3909#PolymorphicMapType_7069| ResultMask@@7) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_7069_3970_3909#PolymorphicMapType_7069| SummandMask1@@7) o_2@@55 f_4@@55) (select (|PolymorphicMapType_7069_3970_3909#PolymorphicMapType_7069| SummandMask2@@7) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7069_3970_3909#PolymorphicMapType_7069| ResultMask@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7069_3970_3909#PolymorphicMapType_7069| SummandMask1@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7069_3970_3909#PolymorphicMapType_7069| SummandMask2@@7) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_7069) (SummandMask1@@8 T@PolymorphicMapType_7069) (SummandMask2@@8 T@PolymorphicMapType_7069) (o_2@@56 T@Ref) (f_4@@56 T@Field_11007_1314) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_7069_3970_1314#PolymorphicMapType_7069| ResultMask@@8) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_7069_3970_1314#PolymorphicMapType_7069| SummandMask1@@8) o_2@@56 f_4@@56) (select (|PolymorphicMapType_7069_3970_1314#PolymorphicMapType_7069| SummandMask2@@8) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7069_3970_1314#PolymorphicMapType_7069| ResultMask@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7069_3970_1314#PolymorphicMapType_7069| SummandMask1@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7069_3970_1314#PolymorphicMapType_7069| SummandMask2@@8) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_7069) (SummandMask1@@9 T@PolymorphicMapType_7069) (SummandMask2@@9 T@PolymorphicMapType_7069) (o_2@@57 T@Ref) (f_4@@57 T@Field_11007_3904) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_7069_3970_3904#PolymorphicMapType_7069| ResultMask@@9) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_7069_3970_3904#PolymorphicMapType_7069| SummandMask1@@9) o_2@@57 f_4@@57) (select (|PolymorphicMapType_7069_3970_3904#PolymorphicMapType_7069| SummandMask2@@9) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_7069_3970_3904#PolymorphicMapType_7069| ResultMask@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_7069_3970_3904#PolymorphicMapType_7069| SummandMask1@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_7069_3970_3904#PolymorphicMapType_7069| SummandMask2@@9) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_7069) (SummandMask1@@10 T@PolymorphicMapType_7069) (SummandMask2@@10 T@PolymorphicMapType_7069) (o_2@@58 T@Ref) (f_4@@58 T@Field_11007_11008) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_7069_3970_3971#PolymorphicMapType_7069| ResultMask@@10) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_7069_3970_3971#PolymorphicMapType_7069| SummandMask1@@10) o_2@@58 f_4@@58) (select (|PolymorphicMapType_7069_3970_3971#PolymorphicMapType_7069| SummandMask2@@10) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_7069_3970_3971#PolymorphicMapType_7069| ResultMask@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_7069_3970_3971#PolymorphicMapType_7069| SummandMask1@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_7069_3970_3971#PolymorphicMapType_7069| SummandMask2@@10) o_2@@58 f_4@@58))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7048) (Mask@@47 T@PolymorphicMapType_7069) (this@@7 T@Ref) (j@@0 Int) ) (!  (=> (and (state Heap@@27 Mask@@47) (< AssumeFunctionsAbove 0)) (= (cond Heap@@27 this@@7 j@@0)  (and (<= 0 j@@0) (< j@@0 (select (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@27) this@@7 len_2)))))
 :qid |stdinbpl.245:15|
 :skolemid |25|
 :pattern ( (state Heap@@27 Mask@@47) (cond Heap@@27 this@@7 j@@0))
 :pattern ( (state Heap@@27 Mask@@47) (|cond#triggerStateless| this@@7 j@@0) (|valid#trigger_3970| Heap@@27 (valid this@@7)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7048) (Mask@@48 T@PolymorphicMapType_7069) (this@@8 T@Ref) (j@@1 Int) ) (!  (=> (state Heap@@28 Mask@@48) (= (|cond'| Heap@@28 this@@8 j@@1) (|cond#frame| (select (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@28) null (valid this@@8)) this@@8 j@@1)))
 :qid |stdinbpl.252:15|
 :skolemid |26|
 :pattern ( (state Heap@@28 Mask@@48) (|cond'| Heap@@28 this@@8 j@@1))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7048) (Mask@@49 T@PolymorphicMapType_7069) (this@@9 T@Ref) ) (!  (=> (state Heap@@29 Mask@@49) (= (|getptr'| Heap@@29 this@@9) (|getptr#frame| (select (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@29) null (valid this@@9)) this@@9)))
 :qid |stdinbpl.350:15|
 :skolemid |30|
 :pattern ( (state Heap@@29 Mask@@49) (|getptr'| Heap@@29 this@@9))
)))
(assert (forall ((this@@10 T@Ref) ) (! (= (getPredWandId_3970_3971 (valid this@@10)) 0)
 :qid |stdinbpl.432:15|
 :skolemid |33|
 :pattern ( (valid this@@10))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7048) (o_14 T@Ref) (f_24 T@Field_12516_12521) (v T@PolymorphicMapType_7597) ) (! (succHeap Heap@@30 (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@30) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@30) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@30) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@30) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@30) (store (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@30) o_14 f_24 v) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@30) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@30) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@30) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@30) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@30) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@30) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@30) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@30) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@30) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@30) (store (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@30) o_14 f_24 v) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@30) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@30) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@30) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@30) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@30) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_7048) (o_14@@0 T@Ref) (f_24@@0 T@Field_11007_3904) (v@@0 T@PtrDomainType) ) (! (succHeap Heap@@31 (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@31) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@31) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@31) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@31) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@31) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@31) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@31) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@31) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@31) (store (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@31) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@31) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@31) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@31) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@31) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@31) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@31) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@31) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@31) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@31) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@31) (store (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@31) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@31) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_7048) (o_14@@1 T@Ref) (f_24@@1 T@Field_11007_11008) (v@@1 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@32) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@32) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@32) (store (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@32) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@32) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@32) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@32) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@32) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@32) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@32) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@32) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@32) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@32) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@32) (store (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@32) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@32) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@32) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@32) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@32) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@32) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@32) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@32) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_7048) (o_14@@2 T@Ref) (f_24@@2 T@Field_11007_1314) (v@@2 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@33) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@33) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@33) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@33) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@33) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@33) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@33) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@33) (store (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@33) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@33) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@33) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@33) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@33) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@33) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@33) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@33) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@33) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@33) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@33) (store (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@33) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@33) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@33) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_7048) (o_14@@3 T@Ref) (f_24@@3 T@Field_11007_3909) (v@@3 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@34) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@34) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@34) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@34) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@34) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@34) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@34) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@34) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@34) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@34) (store (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@34) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@34) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@34) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@34) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@34) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@34) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@34) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@34) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@34) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@34) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@34) (store (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@34) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_7048) (o_14@@4 T@Ref) (f_24@@4 T@Field_11007_53) (v@@4 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@35) (store (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@35) o_14@@4 f_24@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@35) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@35) (store (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@35) o_14@@4 f_24@@4 v@@4)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_7048) (o_14@@5 T@Ref) (f_24@@5 T@Field_3906_12521) (v@@5 T@PolymorphicMapType_7597) ) (! (succHeap Heap@@36 (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@36) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@36) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@36) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@36) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@36) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@36) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@36) (store (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@36) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@36) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@36) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@36) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@36) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@36) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@36) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@36) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@36) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@36) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@36) (store (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@36) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@36) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@36) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@36) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_7048) (o_14@@6 T@Ref) (f_24@@6 T@Field_10535_10536) (v@@6 T@PtrDomainType) ) (! (succHeap Heap@@37 (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@37) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@37) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@37) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@37) (store (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@37) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@37) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@37) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@37) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@37) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@37) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@37) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@37) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@37) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@37) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@37) (store (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@37) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@37) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@37) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@37) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@37) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@37) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@37) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_7048) (o_14@@7 T@Ref) (f_24@@7 T@Field_3906_11008) (v@@7 T@FrameType) ) (! (succHeap Heap@@38 (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@38) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@38) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@38) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@38) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@38) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@38) (store (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@38) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@38) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@38) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@38) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@38) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@38) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@38) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@38) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@38) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@38) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@38) (store (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@38) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@38) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@38) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@38) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@38) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_7048) (o_14@@8 T@Ref) (f_24@@8 T@Field_10585_1314) (v@@8 Int) ) (! (succHeap Heap@@39 (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@39) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@39) (store (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@39) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@39) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@39) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@39) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@39) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@39) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@39) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@39) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@39) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@39) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@39) (store (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@39) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@39) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@39) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@39) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@39) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@39) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@39) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@39) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@39) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_7048) (o_14@@9 T@Ref) (f_24@@9 T@Field_7121_7122) (v@@9 T@Ref) ) (! (succHeap Heap@@40 (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@40) (store (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@40) o_14@@9 f_24@@9 v@@9) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@40) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@40) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@40) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@40) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@40) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@40) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@40) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@40) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@40) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7048 (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@40) (store (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@40) o_14@@9 f_24@@9 v@@9) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@40) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@40) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@40) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@40) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@40) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@40) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@40) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@40) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@40) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_7048) (o_14@@10 T@Ref) (f_24@@10 T@Field_7108_53) (v@@10 Bool) ) (! (succHeap Heap@@41 (PolymorphicMapType_7048 (store (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@41) o_14@@10 f_24@@10 v@@10) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7048 (store (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@41) o_14@@10 f_24@@10 v@@10) (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_3906_1314#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_3970_3971#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_3903_3904#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_3974_12608#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_3906_11008#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_3906_22676#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_11007_1314#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_11007_3904#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_11007_3909#PolymorphicMapType_7048| Heap@@41) (|PolymorphicMapType_7048_11007_53#PolymorphicMapType_7048| Heap@@41)))
)))
(assert (forall ((this@@11 T@Ref) ) (! (= (PredicateMaskField_3970 (valid this@@11)) (|valid#sm| this@@11))
 :qid |stdinbpl.424:15|
 :skolemid |31|
 :pattern ( (PredicateMaskField_3970 (valid this@@11)))
)))
(assert (forall ((a_2 T@PtrDomainType) (i Int) (j@@2 Int) ) (!  (=> (and (>= i 0) (and (>= j@@2 0) (not (= i j@@2)))) (not (= (loc a_2 i) (loc a_2 j@@2))))
 :qid |stdinbpl.209:15|
 :skolemid |22|
 :pattern ( (loc a_2 i) (loc a_2 j@@2))
)))
(assert (forall ((o_14@@11 T@Ref) (f_22 T@Field_7121_7122) (Heap@@42 T@PolymorphicMapType_7048) ) (!  (=> (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@42) o_14@@11 $allocated) (select (|PolymorphicMapType_7048_3764_53#PolymorphicMapType_7048| Heap@@42) (select (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@42) o_14@@11 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7048_3767_3768#PolymorphicMapType_7048| Heap@@42) o_14@@11 f_22))
)))
(assert (forall ((p@@2 T@Field_11007_11008) (v_1@@1 T@FrameType) (q T@Field_11007_11008) (w@@1 T@FrameType) (r T@Field_11007_11008) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11007_11007 p@@2 v_1@@1 q w@@1) (InsidePredicate_11007_11007 q w@@1 r u)) (InsidePredicate_11007_11007 p@@2 v_1@@1 r u))
 :qid |stdinbpl.188:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11007_11007 p@@2 v_1@@1 q w@@1) (InsidePredicate_11007_11007 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_11007_11008) (v_1@@2 T@FrameType) (q@@0 T@Field_11007_11008) (w@@2 T@FrameType) (r@@0 T@Field_3906_11008) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_11007_11007 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11007_7108 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_11007_7108 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.188:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11007_11007 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11007_7108 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_11007_11008) (v_1@@3 T@FrameType) (q@@1 T@Field_3906_11008) (w@@3 T@FrameType) (r@@1 T@Field_11007_11008) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_11007_7108 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7108_11007 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_11007_11007 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.188:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11007_7108 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7108_11007 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_11007_11008) (v_1@@4 T@FrameType) (q@@2 T@Field_3906_11008) (w@@4 T@FrameType) (r@@2 T@Field_3906_11008) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_11007_7108 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7108_7108 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_11007_7108 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.188:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11007_7108 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7108_7108 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_3906_11008) (v_1@@5 T@FrameType) (q@@3 T@Field_11007_11008) (w@@5 T@FrameType) (r@@3 T@Field_11007_11008) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_7108_11007 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11007_11007 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_7108_11007 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.188:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7108_11007 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11007_11007 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_3906_11008) (v_1@@6 T@FrameType) (q@@4 T@Field_11007_11008) (w@@6 T@FrameType) (r@@4 T@Field_3906_11008) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_7108_11007 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11007_7108 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_7108_7108 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.188:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7108_11007 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11007_7108 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_3906_11008) (v_1@@7 T@FrameType) (q@@5 T@Field_3906_11008) (w@@7 T@FrameType) (r@@5 T@Field_11007_11008) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_7108_7108 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7108_11007 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_7108_11007 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.188:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7108_7108 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7108_11007 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_3906_11008) (v_1@@8 T@FrameType) (q@@6 T@Field_3906_11008) (w@@8 T@FrameType) (r@@6 T@Field_3906_11008) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_7108_7108 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7108_7108 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_7108_7108 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.188:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7108_7108 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7108_7108 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@43 T@PolymorphicMapType_7048) (this@@12 T@Ref) (j@@3 Int) ) (!  (and (= (cond Heap@@43 this@@12 j@@3) (|cond'| Heap@@43 this@@12 j@@3)) (dummyFunction_1582 (|cond#triggerStateless| this@@12 j@@3)))
 :qid |stdinbpl.235:15|
 :skolemid |23|
 :pattern ( (cond Heap@@43 this@@12 j@@3))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |valid#definedness|)
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
