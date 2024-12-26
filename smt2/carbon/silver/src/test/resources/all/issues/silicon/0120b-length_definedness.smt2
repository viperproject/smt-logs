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
(declare-sort T@Field_9333_53 0)
(declare-sort T@Field_9346_9347 0)
(declare-sort T@Field_13228_13229 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12775_1245 0)
(declare-sort T@Field_16784_16789 0)
(declare-sort T@Field_4724_4771 0)
(declare-sort T@Field_4724_16789 0)
(declare-sort T@Field_4770_4725 0)
(declare-sort T@Field_4770_53 0)
(declare-sort T@Field_4770_1245 0)
(declare-datatypes ((T@PolymorphicMapType_9294 0)) (((PolymorphicMapType_9294 (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| (Array T@Ref T@Field_13228_13229 Real)) (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| (Array T@Ref T@Field_12775_1245 Real)) (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| (Array T@Ref T@Field_9346_9347 Real)) (|PolymorphicMapType_9294_4770_1245#PolymorphicMapType_9294| (Array T@Ref T@Field_4770_1245 Real)) (|PolymorphicMapType_9294_4770_4725#PolymorphicMapType_9294| (Array T@Ref T@Field_4770_4725 Real)) (|PolymorphicMapType_9294_4770_53#PolymorphicMapType_9294| (Array T@Ref T@Field_4770_53 Real)) (|PolymorphicMapType_9294_4770_42115#PolymorphicMapType_9294| (Array T@Ref T@Field_16784_16789 Real)) (|PolymorphicMapType_9294_4722_4771#PolymorphicMapType_9294| (Array T@Ref T@Field_4724_4771 Real)) (|PolymorphicMapType_9294_4722_53#PolymorphicMapType_9294| (Array T@Ref T@Field_9333_53 Real)) (|PolymorphicMapType_9294_4722_42514#PolymorphicMapType_9294| (Array T@Ref T@Field_4724_16789 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9822 0)) (((PolymorphicMapType_9822 (|PolymorphicMapType_9822_4722_1245#PolymorphicMapType_9822| (Array T@Ref T@Field_12775_1245 Bool)) (|PolymorphicMapType_9822_4724_4725#PolymorphicMapType_9822| (Array T@Ref T@Field_9346_9347 Bool)) (|PolymorphicMapType_9822_4722_53#PolymorphicMapType_9822| (Array T@Ref T@Field_9333_53 Bool)) (|PolymorphicMapType_9822_4722_13229#PolymorphicMapType_9822| (Array T@Ref T@Field_4724_4771 Bool)) (|PolymorphicMapType_9822_4722_35676#PolymorphicMapType_9822| (Array T@Ref T@Field_4724_16789 Bool)) (|PolymorphicMapType_9822_13228_1245#PolymorphicMapType_9822| (Array T@Ref T@Field_4770_1245 Bool)) (|PolymorphicMapType_9822_13228_4725#PolymorphicMapType_9822| (Array T@Ref T@Field_4770_4725 Bool)) (|PolymorphicMapType_9822_13228_53#PolymorphicMapType_9822| (Array T@Ref T@Field_4770_53 Bool)) (|PolymorphicMapType_9822_13228_13229#PolymorphicMapType_9822| (Array T@Ref T@Field_13228_13229 Bool)) (|PolymorphicMapType_9822_13228_36724#PolymorphicMapType_9822| (Array T@Ref T@Field_16784_16789 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9273 0)) (((PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| (Array T@Ref T@Field_9333_53 Bool)) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| (Array T@Ref T@Field_9346_9347 T@Ref)) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| (Array T@Ref T@Field_13228_13229 T@FrameType)) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| (Array T@Ref T@Field_12775_1245 Int)) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| (Array T@Ref T@Field_16784_16789 T@PolymorphicMapType_9822)) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| (Array T@Ref T@Field_4724_4771 T@FrameType)) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| (Array T@Ref T@Field_4724_16789 T@PolymorphicMapType_9822)) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| (Array T@Ref T@Field_4770_4725 T@Ref)) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| (Array T@Ref T@Field_4770_53 Bool)) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| (Array T@Ref T@Field_4770_1245 Int)) ) ) ))
(declare-fun $allocated () T@Field_9333_53)
(declare-sort T@TypeDomainType 0)
(declare-fun A () T@TypeDomainType)
(declare-fun B () T@TypeDomainType)
(declare-fun a_6 () T@Field_9346_9347)
(declare-fun val () T@Field_12775_1245)
(declare-fun next () T@Field_9346_9347)
(declare-fun succHeap (T@PolymorphicMapType_9273 T@PolymorphicMapType_9273) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9273 T@PolymorphicMapType_9273) Bool)
(declare-fun state (T@PolymorphicMapType_9273 T@PolymorphicMapType_9294) Bool)
(declare-fun length (T@PolymorphicMapType_9273 T@Ref) Int)
(declare-fun |length#triggerStateless| (T@Ref) Int)
(declare-fun |node#trigger_4770| (T@PolymorphicMapType_9273 T@Field_13228_13229) Bool)
(declare-fun node_2 (T@Ref) T@Field_13228_13229)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun typeOf (T@Ref) T@TypeDomainType)
(declare-fun |length'| (T@PolymorphicMapType_9273 T@Ref) Int)
(declare-fun GoodMask (T@PolymorphicMapType_9294) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9822)
(declare-fun IsPredicateField_4770_4771 (T@Field_13228_13229) Bool)
(declare-fun dummyFunction_1542 (Int) Bool)
(declare-fun |node#everUsed_4770| (T@Field_13228_13229) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9273 T@PolymorphicMapType_9273 T@PolymorphicMapType_9294) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4770 (T@Field_13228_13229) T@Field_16784_16789)
(declare-fun HasDirectPerm_4770_4771 (T@PolymorphicMapType_9294 T@Ref T@Field_13228_13229) Bool)
(declare-fun IsPredicateField_4724_34219 (T@Field_4724_4771) Bool)
(declare-fun PredicateMaskField_4724 (T@Field_4724_4771) T@Field_4724_16789)
(declare-fun HasDirectPerm_4724_4771 (T@PolymorphicMapType_9294 T@Ref T@Field_4724_4771) Bool)
(declare-fun IsWandField_4770_37889 (T@Field_13228_13229) Bool)
(declare-fun WandMaskField_4770 (T@Field_13228_13229) T@Field_16784_16789)
(declare-fun IsWandField_4724_37532 (T@Field_4724_4771) Bool)
(declare-fun WandMaskField_4724 (T@Field_4724_4771) T@Field_4724_16789)
(declare-fun |node#sm| (T@Ref) T@Field_16784_16789)
(declare-fun dummyHeap () T@PolymorphicMapType_9273)
(declare-fun ZeroMask () T@PolymorphicMapType_9294)
(declare-fun InsidePredicate_9333_9333 (T@Field_4724_4771 T@FrameType T@Field_4724_4771 T@FrameType) Bool)
(declare-fun InsidePredicate_4770_4770 (T@Field_13228_13229 T@FrameType T@Field_13228_13229 T@FrameType) Bool)
(declare-fun IsPredicateField_4719_4720 (T@Field_9346_9347) Bool)
(declare-fun IsWandField_4719_4720 (T@Field_9346_9347) Bool)
(declare-fun IsPredicateField_4722_1245 (T@Field_12775_1245) Bool)
(declare-fun IsWandField_4722_1245 (T@Field_12775_1245) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4722_44792 (T@Field_4724_16789) Bool)
(declare-fun IsWandField_4722_44808 (T@Field_4724_16789) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4722_53 (T@Field_9333_53) Bool)
(declare-fun IsWandField_4722_53 (T@Field_9333_53) Bool)
(declare-fun IsPredicateField_4770_43989 (T@Field_16784_16789) Bool)
(declare-fun IsWandField_4770_44005 (T@Field_16784_16789) Bool)
(declare-fun IsPredicateField_4770_53 (T@Field_4770_53) Bool)
(declare-fun IsWandField_4770_53 (T@Field_4770_53) Bool)
(declare-fun IsPredicateField_4770_4725 (T@Field_4770_4725) Bool)
(declare-fun IsWandField_4770_4725 (T@Field_4770_4725) Bool)
(declare-fun IsPredicateField_4770_1245 (T@Field_4770_1245) Bool)
(declare-fun IsWandField_4770_1245 (T@Field_4770_1245) Bool)
(declare-fun HasDirectPerm_4770_33974 (T@PolymorphicMapType_9294 T@Ref T@Field_16784_16789) Bool)
(declare-fun HasDirectPerm_4770_1245 (T@PolymorphicMapType_9294 T@Ref T@Field_4770_1245) Bool)
(declare-fun HasDirectPerm_4770_53 (T@PolymorphicMapType_9294 T@Ref T@Field_4770_53) Bool)
(declare-fun HasDirectPerm_4770_4725 (T@PolymorphicMapType_9294 T@Ref T@Field_4770_4725) Bool)
(declare-fun HasDirectPerm_4724_32833 (T@PolymorphicMapType_9294 T@Ref T@Field_4724_16789) Bool)
(declare-fun HasDirectPerm_4724_1245 (T@PolymorphicMapType_9294 T@Ref T@Field_12775_1245) Bool)
(declare-fun HasDirectPerm_4724_53 (T@PolymorphicMapType_9294 T@Ref T@Field_9333_53) Bool)
(declare-fun HasDirectPerm_4724_4725 (T@PolymorphicMapType_9294 T@Ref T@Field_9346_9347) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9294 T@PolymorphicMapType_9294 T@PolymorphicMapType_9294) Bool)
(declare-fun |length#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_4770_4771 (T@Field_13228_13229) Int)
(declare-fun |length#trigger| (T@FrameType T@Ref) Bool)
(declare-fun InsidePredicate_9333_4770 (T@Field_4724_4771 T@FrameType T@Field_13228_13229 T@FrameType) Bool)
(declare-fun InsidePredicate_4770_9333 (T@Field_13228_13229 T@FrameType T@Field_4724_4771 T@FrameType) Bool)
(assert (and (distinct A B)(distinct a_6 next))
)
(assert (forall ((Heap0 T@PolymorphicMapType_9273) (Heap1 T@PolymorphicMapType_9273) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9273) (Mask T@PolymorphicMapType_9294) (this T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 0)) (= (length Heap this) (ite (= (typeOf (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap) this next)) B) 1 (+ 1 (|length'| Heap (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap) this next) a_6))))))
 :qid |stdinbpl.232:15|
 :skolemid |25|
 :pattern ( (state Heap Mask) (length Heap this))
 :pattern ( (state Heap Mask) (|length#triggerStateless| this) (|node#trigger_4770| Heap (node_2 this)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9273) (Mask@@0 T@PolymorphicMapType_9294) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9273) (Heap1@@0 T@PolymorphicMapType_9273) (Heap2 T@PolymorphicMapType_9273) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16784_16789) ) (!  (not (select (|PolymorphicMapType_9822_13228_36724#PolymorphicMapType_9822| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9822_13228_36724#PolymorphicMapType_9822| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13228_13229) ) (!  (not (select (|PolymorphicMapType_9822_13228_13229#PolymorphicMapType_9822| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9822_13228_13229#PolymorphicMapType_9822| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4770_53) ) (!  (not (select (|PolymorphicMapType_9822_13228_53#PolymorphicMapType_9822| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9822_13228_53#PolymorphicMapType_9822| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4770_4725) ) (!  (not (select (|PolymorphicMapType_9822_13228_4725#PolymorphicMapType_9822| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9822_13228_4725#PolymorphicMapType_9822| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4770_1245) ) (!  (not (select (|PolymorphicMapType_9822_13228_1245#PolymorphicMapType_9822| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9822_13228_1245#PolymorphicMapType_9822| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4724_16789) ) (!  (not (select (|PolymorphicMapType_9822_4722_35676#PolymorphicMapType_9822| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9822_4722_35676#PolymorphicMapType_9822| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4724_4771) ) (!  (not (select (|PolymorphicMapType_9822_4722_13229#PolymorphicMapType_9822| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9822_4722_13229#PolymorphicMapType_9822| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_9333_53) ) (!  (not (select (|PolymorphicMapType_9822_4722_53#PolymorphicMapType_9822| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9822_4722_53#PolymorphicMapType_9822| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_9346_9347) ) (!  (not (select (|PolymorphicMapType_9822_4724_4725#PolymorphicMapType_9822| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9822_4724_4725#PolymorphicMapType_9822| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_12775_1245) ) (!  (not (select (|PolymorphicMapType_9822_4722_1245#PolymorphicMapType_9822| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9822_4722_1245#PolymorphicMapType_9822| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_4770_4771 (node_2 this@@0))
 :qid |stdinbpl.376:15|
 :skolemid |30|
 :pattern ( (node_2 this@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9273) (this@@1 T@Ref) ) (! (dummyFunction_1542 (|length#triggerStateless| this@@1))
 :qid |stdinbpl.226:15|
 :skolemid |24|
 :pattern ( (|length'| Heap@@1 this@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9273) (this@@2 T@Ref) ) (! (|node#everUsed_4770| (node_2 this@@2))
 :qid |stdinbpl.395:15|
 :skolemid |34|
 :pattern ( (|node#trigger_4770| Heap@@2 (node_2 this@@2)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9273) (this@@3 T@Ref) ) (!  (and (= (length Heap@@3 this@@3) (|length'| Heap@@3 this@@3)) (dummyFunction_1542 (|length#triggerStateless| this@@3)))
 :qid |stdinbpl.222:15|
 :skolemid |23|
 :pattern ( (length Heap@@3 this@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9273) (ExhaleHeap T@PolymorphicMapType_9273) (Mask@@1 T@PolymorphicMapType_9294) (pm_f_1 T@Field_13228_13229) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_4770_4771 Mask@@1 null pm_f_1) (IsPredicateField_4770_4771 pm_f_1)) (= (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@4) null (PredicateMaskField_4770 pm_f_1)) (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| ExhaleHeap) null (PredicateMaskField_4770 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_4770_4771 pm_f_1) (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| ExhaleHeap) null (PredicateMaskField_4770 pm_f_1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9273) (ExhaleHeap@@0 T@PolymorphicMapType_9273) (Mask@@2 T@PolymorphicMapType_9294) (pm_f_1@@0 T@Field_4724_4771) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_4724_4771 Mask@@2 null pm_f_1@@0) (IsPredicateField_4724_34219 pm_f_1@@0)) (= (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@5) null (PredicateMaskField_4724 pm_f_1@@0)) (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| ExhaleHeap@@0) null (PredicateMaskField_4724 pm_f_1@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsPredicateField_4724_34219 pm_f_1@@0) (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| ExhaleHeap@@0) null (PredicateMaskField_4724 pm_f_1@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9273) (ExhaleHeap@@1 T@PolymorphicMapType_9273) (Mask@@3 T@PolymorphicMapType_9294) (pm_f_1@@1 T@Field_13228_13229) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_4770_4771 Mask@@3 null pm_f_1@@1) (IsWandField_4770_37889 pm_f_1@@1)) (= (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@6) null (WandMaskField_4770 pm_f_1@@1)) (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| ExhaleHeap@@1) null (WandMaskField_4770 pm_f_1@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (IsWandField_4770_37889 pm_f_1@@1) (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| ExhaleHeap@@1) null (WandMaskField_4770 pm_f_1@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9273) (ExhaleHeap@@2 T@PolymorphicMapType_9273) (Mask@@4 T@PolymorphicMapType_9294) (pm_f_1@@2 T@Field_4724_4771) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_4724_4771 Mask@@4 null pm_f_1@@2) (IsWandField_4724_37532 pm_f_1@@2)) (= (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@7) null (WandMaskField_4724 pm_f_1@@2)) (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| ExhaleHeap@@2) null (WandMaskField_4724 pm_f_1@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (IsWandField_4724_37532 pm_f_1@@2) (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| ExhaleHeap@@2) null (WandMaskField_4724 pm_f_1@@2)))
)))
(assert (forall ((this@@4 T@Ref) (this2 T@Ref) ) (!  (=> (= (node_2 this@@4) (node_2 this2)) (= this@@4 this2))
 :qid |stdinbpl.386:15|
 :skolemid |32|
 :pattern ( (node_2 this@@4) (node_2 this2))
)))
(assert (forall ((this@@5 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|node#sm| this@@5) (|node#sm| this2@@0)) (= this@@5 this2@@0))
 :qid |stdinbpl.390:15|
 :skolemid |33|
 :pattern ( (|node#sm| this@@5) (|node#sm| this2@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9273) (ExhaleHeap@@3 T@PolymorphicMapType_9273) (Mask@@5 T@PolymorphicMapType_9294) (pm_f_1@@3 T@Field_13228_13229) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_4770_4771 Mask@@5 null pm_f_1@@3) (IsPredicateField_4770_4771 pm_f_1@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_1 T@Ref) (f_8 T@Field_12775_1245) ) (!  (=> (select (|PolymorphicMapType_9822_4722_1245#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@8) null (PredicateMaskField_4770 pm_f_1@@3))) o2_1 f_8) (= (select (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@8) o2_1 f_8) (select (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1 f_8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1 f_8))
)) (forall ((o2_1@@0 T@Ref) (f_8@@0 T@Field_9346_9347) ) (!  (=> (select (|PolymorphicMapType_9822_4724_4725#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@8) null (PredicateMaskField_4770 pm_f_1@@3))) o2_1@@0 f_8@@0) (= (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@8) o2_1@@0 f_8@@0) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1@@0 f_8@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1@@0 f_8@@0))
))) (forall ((o2_1@@1 T@Ref) (f_8@@1 T@Field_9333_53) ) (!  (=> (select (|PolymorphicMapType_9822_4722_53#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@8) null (PredicateMaskField_4770 pm_f_1@@3))) o2_1@@1 f_8@@1) (= (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@8) o2_1@@1 f_8@@1) (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1@@1 f_8@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1@@1 f_8@@1))
))) (forall ((o2_1@@2 T@Ref) (f_8@@2 T@Field_4724_4771) ) (!  (=> (select (|PolymorphicMapType_9822_4722_13229#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@8) null (PredicateMaskField_4770 pm_f_1@@3))) o2_1@@2 f_8@@2) (= (select (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@8) o2_1@@2 f_8@@2) (select (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1@@2 f_8@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1@@2 f_8@@2))
))) (forall ((o2_1@@3 T@Ref) (f_8@@3 T@Field_4724_16789) ) (!  (=> (select (|PolymorphicMapType_9822_4722_35676#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@8) null (PredicateMaskField_4770 pm_f_1@@3))) o2_1@@3 f_8@@3) (= (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@8) o2_1@@3 f_8@@3) (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1@@3 f_8@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1@@3 f_8@@3))
))) (forall ((o2_1@@4 T@Ref) (f_8@@4 T@Field_4770_1245) ) (!  (=> (select (|PolymorphicMapType_9822_13228_1245#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@8) null (PredicateMaskField_4770 pm_f_1@@3))) o2_1@@4 f_8@@4) (= (select (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@8) o2_1@@4 f_8@@4) (select (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1@@4 f_8@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1@@4 f_8@@4))
))) (forall ((o2_1@@5 T@Ref) (f_8@@5 T@Field_4770_4725) ) (!  (=> (select (|PolymorphicMapType_9822_13228_4725#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@8) null (PredicateMaskField_4770 pm_f_1@@3))) o2_1@@5 f_8@@5) (= (select (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@8) o2_1@@5 f_8@@5) (select (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1@@5 f_8@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1@@5 f_8@@5))
))) (forall ((o2_1@@6 T@Ref) (f_8@@6 T@Field_4770_53) ) (!  (=> (select (|PolymorphicMapType_9822_13228_53#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@8) null (PredicateMaskField_4770 pm_f_1@@3))) o2_1@@6 f_8@@6) (= (select (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@8) o2_1@@6 f_8@@6) (select (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1@@6 f_8@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1@@6 f_8@@6))
))) (forall ((o2_1@@7 T@Ref) (f_8@@7 T@Field_13228_13229) ) (!  (=> (select (|PolymorphicMapType_9822_13228_13229#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@8) null (PredicateMaskField_4770 pm_f_1@@3))) o2_1@@7 f_8@@7) (= (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@8) o2_1@@7 f_8@@7) (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1@@7 f_8@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1@@7 f_8@@7))
))) (forall ((o2_1@@8 T@Ref) (f_8@@8 T@Field_16784_16789) ) (!  (=> (select (|PolymorphicMapType_9822_13228_36724#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@8) null (PredicateMaskField_4770 pm_f_1@@3))) o2_1@@8 f_8@@8) (= (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@8) o2_1@@8 f_8@@8) (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1@@8 f_8@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| ExhaleHeap@@3) o2_1@@8 f_8@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (IsPredicateField_4770_4771 pm_f_1@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9273) (ExhaleHeap@@4 T@PolymorphicMapType_9273) (Mask@@6 T@PolymorphicMapType_9294) (pm_f_1@@4 T@Field_4724_4771) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_4724_4771 Mask@@6 null pm_f_1@@4) (IsPredicateField_4724_34219 pm_f_1@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_1@@9 T@Ref) (f_8@@9 T@Field_12775_1245) ) (!  (=> (select (|PolymorphicMapType_9822_4722_1245#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@9) null (PredicateMaskField_4724 pm_f_1@@4))) o2_1@@9 f_8@@9) (= (select (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@9) o2_1@@9 f_8@@9) (select (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@9 f_8@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@9 f_8@@9))
)) (forall ((o2_1@@10 T@Ref) (f_8@@10 T@Field_9346_9347) ) (!  (=> (select (|PolymorphicMapType_9822_4724_4725#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@9) null (PredicateMaskField_4724 pm_f_1@@4))) o2_1@@10 f_8@@10) (= (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@9) o2_1@@10 f_8@@10) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@10 f_8@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@10 f_8@@10))
))) (forall ((o2_1@@11 T@Ref) (f_8@@11 T@Field_9333_53) ) (!  (=> (select (|PolymorphicMapType_9822_4722_53#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@9) null (PredicateMaskField_4724 pm_f_1@@4))) o2_1@@11 f_8@@11) (= (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@9) o2_1@@11 f_8@@11) (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@11 f_8@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@11 f_8@@11))
))) (forall ((o2_1@@12 T@Ref) (f_8@@12 T@Field_4724_4771) ) (!  (=> (select (|PolymorphicMapType_9822_4722_13229#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@9) null (PredicateMaskField_4724 pm_f_1@@4))) o2_1@@12 f_8@@12) (= (select (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@9) o2_1@@12 f_8@@12) (select (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@12 f_8@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@12 f_8@@12))
))) (forall ((o2_1@@13 T@Ref) (f_8@@13 T@Field_4724_16789) ) (!  (=> (select (|PolymorphicMapType_9822_4722_35676#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@9) null (PredicateMaskField_4724 pm_f_1@@4))) o2_1@@13 f_8@@13) (= (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@9) o2_1@@13 f_8@@13) (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@13 f_8@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@13 f_8@@13))
))) (forall ((o2_1@@14 T@Ref) (f_8@@14 T@Field_4770_1245) ) (!  (=> (select (|PolymorphicMapType_9822_13228_1245#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@9) null (PredicateMaskField_4724 pm_f_1@@4))) o2_1@@14 f_8@@14) (= (select (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@9) o2_1@@14 f_8@@14) (select (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@14 f_8@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@14 f_8@@14))
))) (forall ((o2_1@@15 T@Ref) (f_8@@15 T@Field_4770_4725) ) (!  (=> (select (|PolymorphicMapType_9822_13228_4725#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@9) null (PredicateMaskField_4724 pm_f_1@@4))) o2_1@@15 f_8@@15) (= (select (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@9) o2_1@@15 f_8@@15) (select (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@15 f_8@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@15 f_8@@15))
))) (forall ((o2_1@@16 T@Ref) (f_8@@16 T@Field_4770_53) ) (!  (=> (select (|PolymorphicMapType_9822_13228_53#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@9) null (PredicateMaskField_4724 pm_f_1@@4))) o2_1@@16 f_8@@16) (= (select (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@9) o2_1@@16 f_8@@16) (select (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@16 f_8@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@16 f_8@@16))
))) (forall ((o2_1@@17 T@Ref) (f_8@@17 T@Field_13228_13229) ) (!  (=> (select (|PolymorphicMapType_9822_13228_13229#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@9) null (PredicateMaskField_4724 pm_f_1@@4))) o2_1@@17 f_8@@17) (= (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@9) o2_1@@17 f_8@@17) (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@17 f_8@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@17 f_8@@17))
))) (forall ((o2_1@@18 T@Ref) (f_8@@18 T@Field_16784_16789) ) (!  (=> (select (|PolymorphicMapType_9822_13228_36724#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@9) null (PredicateMaskField_4724 pm_f_1@@4))) o2_1@@18 f_8@@18) (= (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@9) o2_1@@18 f_8@@18) (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@18 f_8@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| ExhaleHeap@@4) o2_1@@18 f_8@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (IsPredicateField_4724_34219 pm_f_1@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9273) (ExhaleHeap@@5 T@PolymorphicMapType_9273) (Mask@@7 T@PolymorphicMapType_9294) (pm_f_1@@5 T@Field_13228_13229) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_4770_4771 Mask@@7 null pm_f_1@@5) (IsWandField_4770_37889 pm_f_1@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_1@@19 T@Ref) (f_8@@19 T@Field_12775_1245) ) (!  (=> (select (|PolymorphicMapType_9822_4722_1245#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@10) null (WandMaskField_4770 pm_f_1@@5))) o2_1@@19 f_8@@19) (= (select (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@10) o2_1@@19 f_8@@19) (select (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@19 f_8@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@19 f_8@@19))
)) (forall ((o2_1@@20 T@Ref) (f_8@@20 T@Field_9346_9347) ) (!  (=> (select (|PolymorphicMapType_9822_4724_4725#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@10) null (WandMaskField_4770 pm_f_1@@5))) o2_1@@20 f_8@@20) (= (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@10) o2_1@@20 f_8@@20) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@20 f_8@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@20 f_8@@20))
))) (forall ((o2_1@@21 T@Ref) (f_8@@21 T@Field_9333_53) ) (!  (=> (select (|PolymorphicMapType_9822_4722_53#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@10) null (WandMaskField_4770 pm_f_1@@5))) o2_1@@21 f_8@@21) (= (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@10) o2_1@@21 f_8@@21) (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@21 f_8@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@21 f_8@@21))
))) (forall ((o2_1@@22 T@Ref) (f_8@@22 T@Field_4724_4771) ) (!  (=> (select (|PolymorphicMapType_9822_4722_13229#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@10) null (WandMaskField_4770 pm_f_1@@5))) o2_1@@22 f_8@@22) (= (select (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@10) o2_1@@22 f_8@@22) (select (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@22 f_8@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@22 f_8@@22))
))) (forall ((o2_1@@23 T@Ref) (f_8@@23 T@Field_4724_16789) ) (!  (=> (select (|PolymorphicMapType_9822_4722_35676#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@10) null (WandMaskField_4770 pm_f_1@@5))) o2_1@@23 f_8@@23) (= (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@10) o2_1@@23 f_8@@23) (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@23 f_8@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@23 f_8@@23))
))) (forall ((o2_1@@24 T@Ref) (f_8@@24 T@Field_4770_1245) ) (!  (=> (select (|PolymorphicMapType_9822_13228_1245#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@10) null (WandMaskField_4770 pm_f_1@@5))) o2_1@@24 f_8@@24) (= (select (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@10) o2_1@@24 f_8@@24) (select (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@24 f_8@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@24 f_8@@24))
))) (forall ((o2_1@@25 T@Ref) (f_8@@25 T@Field_4770_4725) ) (!  (=> (select (|PolymorphicMapType_9822_13228_4725#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@10) null (WandMaskField_4770 pm_f_1@@5))) o2_1@@25 f_8@@25) (= (select (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@10) o2_1@@25 f_8@@25) (select (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@25 f_8@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@25 f_8@@25))
))) (forall ((o2_1@@26 T@Ref) (f_8@@26 T@Field_4770_53) ) (!  (=> (select (|PolymorphicMapType_9822_13228_53#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@10) null (WandMaskField_4770 pm_f_1@@5))) o2_1@@26 f_8@@26) (= (select (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@10) o2_1@@26 f_8@@26) (select (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@26 f_8@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@26 f_8@@26))
))) (forall ((o2_1@@27 T@Ref) (f_8@@27 T@Field_13228_13229) ) (!  (=> (select (|PolymorphicMapType_9822_13228_13229#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@10) null (WandMaskField_4770 pm_f_1@@5))) o2_1@@27 f_8@@27) (= (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@10) o2_1@@27 f_8@@27) (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@27 f_8@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@27 f_8@@27))
))) (forall ((o2_1@@28 T@Ref) (f_8@@28 T@Field_16784_16789) ) (!  (=> (select (|PolymorphicMapType_9822_13228_36724#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@10) null (WandMaskField_4770 pm_f_1@@5))) o2_1@@28 f_8@@28) (= (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@10) o2_1@@28 f_8@@28) (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@28 f_8@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| ExhaleHeap@@5) o2_1@@28 f_8@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (IsWandField_4770_37889 pm_f_1@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9273) (ExhaleHeap@@6 T@PolymorphicMapType_9273) (Mask@@8 T@PolymorphicMapType_9294) (pm_f_1@@6 T@Field_4724_4771) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_4724_4771 Mask@@8 null pm_f_1@@6) (IsWandField_4724_37532 pm_f_1@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_1@@29 T@Ref) (f_8@@29 T@Field_12775_1245) ) (!  (=> (select (|PolymorphicMapType_9822_4722_1245#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@11) null (WandMaskField_4724 pm_f_1@@6))) o2_1@@29 f_8@@29) (= (select (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@11) o2_1@@29 f_8@@29) (select (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@29 f_8@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@29 f_8@@29))
)) (forall ((o2_1@@30 T@Ref) (f_8@@30 T@Field_9346_9347) ) (!  (=> (select (|PolymorphicMapType_9822_4724_4725#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@11) null (WandMaskField_4724 pm_f_1@@6))) o2_1@@30 f_8@@30) (= (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@11) o2_1@@30 f_8@@30) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@30 f_8@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@30 f_8@@30))
))) (forall ((o2_1@@31 T@Ref) (f_8@@31 T@Field_9333_53) ) (!  (=> (select (|PolymorphicMapType_9822_4722_53#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@11) null (WandMaskField_4724 pm_f_1@@6))) o2_1@@31 f_8@@31) (= (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@11) o2_1@@31 f_8@@31) (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@31 f_8@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@31 f_8@@31))
))) (forall ((o2_1@@32 T@Ref) (f_8@@32 T@Field_4724_4771) ) (!  (=> (select (|PolymorphicMapType_9822_4722_13229#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@11) null (WandMaskField_4724 pm_f_1@@6))) o2_1@@32 f_8@@32) (= (select (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@11) o2_1@@32 f_8@@32) (select (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@32 f_8@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@32 f_8@@32))
))) (forall ((o2_1@@33 T@Ref) (f_8@@33 T@Field_4724_16789) ) (!  (=> (select (|PolymorphicMapType_9822_4722_35676#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@11) null (WandMaskField_4724 pm_f_1@@6))) o2_1@@33 f_8@@33) (= (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@11) o2_1@@33 f_8@@33) (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@33 f_8@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@33 f_8@@33))
))) (forall ((o2_1@@34 T@Ref) (f_8@@34 T@Field_4770_1245) ) (!  (=> (select (|PolymorphicMapType_9822_13228_1245#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@11) null (WandMaskField_4724 pm_f_1@@6))) o2_1@@34 f_8@@34) (= (select (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@11) o2_1@@34 f_8@@34) (select (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@34 f_8@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@34 f_8@@34))
))) (forall ((o2_1@@35 T@Ref) (f_8@@35 T@Field_4770_4725) ) (!  (=> (select (|PolymorphicMapType_9822_13228_4725#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@11) null (WandMaskField_4724 pm_f_1@@6))) o2_1@@35 f_8@@35) (= (select (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@11) o2_1@@35 f_8@@35) (select (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@35 f_8@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@35 f_8@@35))
))) (forall ((o2_1@@36 T@Ref) (f_8@@36 T@Field_4770_53) ) (!  (=> (select (|PolymorphicMapType_9822_13228_53#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@11) null (WandMaskField_4724 pm_f_1@@6))) o2_1@@36 f_8@@36) (= (select (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@11) o2_1@@36 f_8@@36) (select (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@36 f_8@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@36 f_8@@36))
))) (forall ((o2_1@@37 T@Ref) (f_8@@37 T@Field_13228_13229) ) (!  (=> (select (|PolymorphicMapType_9822_13228_13229#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@11) null (WandMaskField_4724 pm_f_1@@6))) o2_1@@37 f_8@@37) (= (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@11) o2_1@@37 f_8@@37) (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@37 f_8@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@37 f_8@@37))
))) (forall ((o2_1@@38 T@Ref) (f_8@@38 T@Field_16784_16789) ) (!  (=> (select (|PolymorphicMapType_9822_13228_36724#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@11) null (WandMaskField_4724 pm_f_1@@6))) o2_1@@38 f_8@@38) (= (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@11) o2_1@@38 f_8@@38) (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@38 f_8@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| ExhaleHeap@@6) o2_1@@38 f_8@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (IsWandField_4724_37532 pm_f_1@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9273) (ExhaleHeap@@7 T@PolymorphicMapType_9273) (Mask@@9 T@PolymorphicMapType_9294) (o_3 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@12) o_3 $allocated) (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| ExhaleHeap@@7) o_3 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| ExhaleHeap@@7) o_3 $allocated))
)))
(assert (forall ((p T@Field_4724_4771) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9333_9333 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9333_9333 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_13228_13229) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4770_4770 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4770_4770 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4719_4720 a_6)))
(assert  (not (IsWandField_4719_4720 a_6)))
(assert  (not (IsPredicateField_4722_1245 val)))
(assert  (not (IsWandField_4722_1245 val)))
(assert  (not (IsPredicateField_4719_4720 next)))
(assert  (not (IsWandField_4719_4720 next)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9273) (ExhaleHeap@@8 T@PolymorphicMapType_9273) (Mask@@10 T@PolymorphicMapType_9294) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@13 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9294) (o_2@@9 T@Ref) (f_4@@9 T@Field_4724_16789) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_9294_4722_42514#PolymorphicMapType_9294| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4722_44792 f_4@@9))) (not (IsWandField_4722_44808 f_4@@9))) (<= (select (|PolymorphicMapType_9294_4722_42514#PolymorphicMapType_9294| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_9294_4722_42514#PolymorphicMapType_9294| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9294) (o_2@@10 T@Ref) (f_4@@10 T@Field_9333_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_9294_4722_53#PolymorphicMapType_9294| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4722_53 f_4@@10))) (not (IsWandField_4722_53 f_4@@10))) (<= (select (|PolymorphicMapType_9294_4722_53#PolymorphicMapType_9294| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_9294_4722_53#PolymorphicMapType_9294| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9294) (o_2@@11 T@Ref) (f_4@@11 T@Field_9346_9347) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| Mask@@13) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4719_4720 f_4@@11))) (not (IsWandField_4719_4720 f_4@@11))) (<= (select (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| Mask@@13) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| Mask@@13) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9294) (o_2@@12 T@Ref) (f_4@@12 T@Field_12775_1245) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| Mask@@14) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4722_1245 f_4@@12))) (not (IsWandField_4722_1245 f_4@@12))) (<= (select (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| Mask@@14) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| Mask@@14) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9294) (o_2@@13 T@Ref) (f_4@@13 T@Field_4724_4771) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9294_4722_4771#PolymorphicMapType_9294| Mask@@15) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4724_34219 f_4@@13))) (not (IsWandField_4724_37532 f_4@@13))) (<= (select (|PolymorphicMapType_9294_4722_4771#PolymorphicMapType_9294| Mask@@15) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9294_4722_4771#PolymorphicMapType_9294| Mask@@15) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9294) (o_2@@14 T@Ref) (f_4@@14 T@Field_16784_16789) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9294_4770_42115#PolymorphicMapType_9294| Mask@@16) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4770_43989 f_4@@14))) (not (IsWandField_4770_44005 f_4@@14))) (<= (select (|PolymorphicMapType_9294_4770_42115#PolymorphicMapType_9294| Mask@@16) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9294_4770_42115#PolymorphicMapType_9294| Mask@@16) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9294) (o_2@@15 T@Ref) (f_4@@15 T@Field_4770_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9294_4770_53#PolymorphicMapType_9294| Mask@@17) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4770_53 f_4@@15))) (not (IsWandField_4770_53 f_4@@15))) (<= (select (|PolymorphicMapType_9294_4770_53#PolymorphicMapType_9294| Mask@@17) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9294_4770_53#PolymorphicMapType_9294| Mask@@17) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9294) (o_2@@16 T@Ref) (f_4@@16 T@Field_4770_4725) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9294_4770_4725#PolymorphicMapType_9294| Mask@@18) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4770_4725 f_4@@16))) (not (IsWandField_4770_4725 f_4@@16))) (<= (select (|PolymorphicMapType_9294_4770_4725#PolymorphicMapType_9294| Mask@@18) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9294_4770_4725#PolymorphicMapType_9294| Mask@@18) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9294) (o_2@@17 T@Ref) (f_4@@17 T@Field_4770_1245) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9294_4770_1245#PolymorphicMapType_9294| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4770_1245 f_4@@17))) (not (IsWandField_4770_1245 f_4@@17))) (<= (select (|PolymorphicMapType_9294_4770_1245#PolymorphicMapType_9294| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9294_4770_1245#PolymorphicMapType_9294| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9294) (o_2@@18 T@Ref) (f_4@@18 T@Field_13228_13229) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_4770_4771 f_4@@18))) (not (IsWandField_4770_37889 f_4@@18))) (<= (select (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9294) (o_2@@19 T@Ref) (f_4@@19 T@Field_16784_16789) ) (! (= (HasDirectPerm_4770_33974 Mask@@21 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_9294_4770_42115#PolymorphicMapType_9294| Mask@@21) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4770_33974 Mask@@21 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9294) (o_2@@20 T@Ref) (f_4@@20 T@Field_4770_1245) ) (! (= (HasDirectPerm_4770_1245 Mask@@22 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_9294_4770_1245#PolymorphicMapType_9294| Mask@@22) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4770_1245 Mask@@22 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9294) (o_2@@21 T@Ref) (f_4@@21 T@Field_4770_53) ) (! (= (HasDirectPerm_4770_53 Mask@@23 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_9294_4770_53#PolymorphicMapType_9294| Mask@@23) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4770_53 Mask@@23 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9294) (o_2@@22 T@Ref) (f_4@@22 T@Field_13228_13229) ) (! (= (HasDirectPerm_4770_4771 Mask@@24 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| Mask@@24) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4770_4771 Mask@@24 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9294) (o_2@@23 T@Ref) (f_4@@23 T@Field_4770_4725) ) (! (= (HasDirectPerm_4770_4725 Mask@@25 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_9294_4770_4725#PolymorphicMapType_9294| Mask@@25) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4770_4725 Mask@@25 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9294) (o_2@@24 T@Ref) (f_4@@24 T@Field_4724_16789) ) (! (= (HasDirectPerm_4724_32833 Mask@@26 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_9294_4722_42514#PolymorphicMapType_9294| Mask@@26) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4724_32833 Mask@@26 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9294) (o_2@@25 T@Ref) (f_4@@25 T@Field_12775_1245) ) (! (= (HasDirectPerm_4724_1245 Mask@@27 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| Mask@@27) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4724_1245 Mask@@27 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9294) (o_2@@26 T@Ref) (f_4@@26 T@Field_9333_53) ) (! (= (HasDirectPerm_4724_53 Mask@@28 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_9294_4722_53#PolymorphicMapType_9294| Mask@@28) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4724_53 Mask@@28 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9294) (o_2@@27 T@Ref) (f_4@@27 T@Field_4724_4771) ) (! (= (HasDirectPerm_4724_4771 Mask@@29 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_9294_4722_4771#PolymorphicMapType_9294| Mask@@29) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4724_4771 Mask@@29 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_9294) (o_2@@28 T@Ref) (f_4@@28 T@Field_9346_9347) ) (! (= (HasDirectPerm_4724_4725 Mask@@30 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| Mask@@30) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4724_4725 Mask@@30 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9273) (ExhaleHeap@@9 T@PolymorphicMapType_9273) (Mask@@31 T@PolymorphicMapType_9294) (o_3@@0 T@Ref) (f_8@@39 T@Field_16784_16789) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_4770_33974 Mask@@31 o_3@@0 f_8@@39) (= (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@14) o_3@@0 f_8@@39) (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| ExhaleHeap@@9) o_3@@0 f_8@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| ExhaleHeap@@9) o_3@@0 f_8@@39))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9273) (ExhaleHeap@@10 T@PolymorphicMapType_9273) (Mask@@32 T@PolymorphicMapType_9294) (o_3@@1 T@Ref) (f_8@@40 T@Field_4770_1245) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_4770_1245 Mask@@32 o_3@@1 f_8@@40) (= (select (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@15) o_3@@1 f_8@@40) (select (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| ExhaleHeap@@10) o_3@@1 f_8@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| ExhaleHeap@@10) o_3@@1 f_8@@40))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9273) (ExhaleHeap@@11 T@PolymorphicMapType_9273) (Mask@@33 T@PolymorphicMapType_9294) (o_3@@2 T@Ref) (f_8@@41 T@Field_4770_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_4770_53 Mask@@33 o_3@@2 f_8@@41) (= (select (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@16) o_3@@2 f_8@@41) (select (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| ExhaleHeap@@11) o_3@@2 f_8@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| ExhaleHeap@@11) o_3@@2 f_8@@41))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9273) (ExhaleHeap@@12 T@PolymorphicMapType_9273) (Mask@@34 T@PolymorphicMapType_9294) (o_3@@3 T@Ref) (f_8@@42 T@Field_13228_13229) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_4770_4771 Mask@@34 o_3@@3 f_8@@42) (= (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@17) o_3@@3 f_8@@42) (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| ExhaleHeap@@12) o_3@@3 f_8@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| ExhaleHeap@@12) o_3@@3 f_8@@42))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9273) (ExhaleHeap@@13 T@PolymorphicMapType_9273) (Mask@@35 T@PolymorphicMapType_9294) (o_3@@4 T@Ref) (f_8@@43 T@Field_4770_4725) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_4770_4725 Mask@@35 o_3@@4 f_8@@43) (= (select (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@18) o_3@@4 f_8@@43) (select (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| ExhaleHeap@@13) o_3@@4 f_8@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| ExhaleHeap@@13) o_3@@4 f_8@@43))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9273) (ExhaleHeap@@14 T@PolymorphicMapType_9273) (Mask@@36 T@PolymorphicMapType_9294) (o_3@@5 T@Ref) (f_8@@44 T@Field_4724_16789) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_4724_32833 Mask@@36 o_3@@5 f_8@@44) (= (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@19) o_3@@5 f_8@@44) (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| ExhaleHeap@@14) o_3@@5 f_8@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| ExhaleHeap@@14) o_3@@5 f_8@@44))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9273) (ExhaleHeap@@15 T@PolymorphicMapType_9273) (Mask@@37 T@PolymorphicMapType_9294) (o_3@@6 T@Ref) (f_8@@45 T@Field_12775_1245) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_4724_1245 Mask@@37 o_3@@6 f_8@@45) (= (select (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@20) o_3@@6 f_8@@45) (select (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| ExhaleHeap@@15) o_3@@6 f_8@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| ExhaleHeap@@15) o_3@@6 f_8@@45))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9273) (ExhaleHeap@@16 T@PolymorphicMapType_9273) (Mask@@38 T@PolymorphicMapType_9294) (o_3@@7 T@Ref) (f_8@@46 T@Field_9333_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_4724_53 Mask@@38 o_3@@7 f_8@@46) (= (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@21) o_3@@7 f_8@@46) (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| ExhaleHeap@@16) o_3@@7 f_8@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| ExhaleHeap@@16) o_3@@7 f_8@@46))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9273) (ExhaleHeap@@17 T@PolymorphicMapType_9273) (Mask@@39 T@PolymorphicMapType_9294) (o_3@@8 T@Ref) (f_8@@47 T@Field_4724_4771) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_4724_4771 Mask@@39 o_3@@8 f_8@@47) (= (select (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@22) o_3@@8 f_8@@47) (select (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| ExhaleHeap@@17) o_3@@8 f_8@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| ExhaleHeap@@17) o_3@@8 f_8@@47))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9273) (ExhaleHeap@@18 T@PolymorphicMapType_9273) (Mask@@40 T@PolymorphicMapType_9294) (o_3@@9 T@Ref) (f_8@@48 T@Field_9346_9347) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_4724_4725 Mask@@40 o_3@@9 f_8@@48) (= (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@23) o_3@@9 f_8@@48) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| ExhaleHeap@@18) o_3@@9 f_8@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| ExhaleHeap@@18) o_3@@9 f_8@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_4724_16789) ) (! (= (select (|PolymorphicMapType_9294_4722_42514#PolymorphicMapType_9294| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9294_4722_42514#PolymorphicMapType_9294| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_9333_53) ) (! (= (select (|PolymorphicMapType_9294_4722_53#PolymorphicMapType_9294| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9294_4722_53#PolymorphicMapType_9294| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_9346_9347) ) (! (= (select (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_12775_1245) ) (! (= (select (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_4724_4771) ) (! (= (select (|PolymorphicMapType_9294_4722_4771#PolymorphicMapType_9294| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9294_4722_4771#PolymorphicMapType_9294| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_16784_16789) ) (! (= (select (|PolymorphicMapType_9294_4770_42115#PolymorphicMapType_9294| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9294_4770_42115#PolymorphicMapType_9294| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_4770_53) ) (! (= (select (|PolymorphicMapType_9294_4770_53#PolymorphicMapType_9294| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9294_4770_53#PolymorphicMapType_9294| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_4770_4725) ) (! (= (select (|PolymorphicMapType_9294_4770_4725#PolymorphicMapType_9294| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9294_4770_4725#PolymorphicMapType_9294| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_4770_1245) ) (! (= (select (|PolymorphicMapType_9294_4770_1245#PolymorphicMapType_9294| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9294_4770_1245#PolymorphicMapType_9294| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_13228_13229) ) (! (= (select (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9294) (SummandMask1 T@PolymorphicMapType_9294) (SummandMask2 T@PolymorphicMapType_9294) (o_2@@39 T@Ref) (f_4@@39 T@Field_4724_16789) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9294_4722_42514#PolymorphicMapType_9294| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_9294_4722_42514#PolymorphicMapType_9294| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_9294_4722_42514#PolymorphicMapType_9294| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9294_4722_42514#PolymorphicMapType_9294| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9294_4722_42514#PolymorphicMapType_9294| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9294_4722_42514#PolymorphicMapType_9294| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9294) (SummandMask1@@0 T@PolymorphicMapType_9294) (SummandMask2@@0 T@PolymorphicMapType_9294) (o_2@@40 T@Ref) (f_4@@40 T@Field_9333_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9294_4722_53#PolymorphicMapType_9294| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_9294_4722_53#PolymorphicMapType_9294| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_9294_4722_53#PolymorphicMapType_9294| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9294_4722_53#PolymorphicMapType_9294| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9294_4722_53#PolymorphicMapType_9294| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9294_4722_53#PolymorphicMapType_9294| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9294) (SummandMask1@@1 T@PolymorphicMapType_9294) (SummandMask2@@1 T@PolymorphicMapType_9294) (o_2@@41 T@Ref) (f_4@@41 T@Field_9346_9347) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9294) (SummandMask1@@2 T@PolymorphicMapType_9294) (SummandMask2@@2 T@PolymorphicMapType_9294) (o_2@@42 T@Ref) (f_4@@42 T@Field_12775_1245) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9294) (SummandMask1@@3 T@PolymorphicMapType_9294) (SummandMask2@@3 T@PolymorphicMapType_9294) (o_2@@43 T@Ref) (f_4@@43 T@Field_4724_4771) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9294_4722_4771#PolymorphicMapType_9294| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_9294_4722_4771#PolymorphicMapType_9294| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_9294_4722_4771#PolymorphicMapType_9294| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9294_4722_4771#PolymorphicMapType_9294| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9294_4722_4771#PolymorphicMapType_9294| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9294_4722_4771#PolymorphicMapType_9294| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9294) (SummandMask1@@4 T@PolymorphicMapType_9294) (SummandMask2@@4 T@PolymorphicMapType_9294) (o_2@@44 T@Ref) (f_4@@44 T@Field_16784_16789) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9294_4770_42115#PolymorphicMapType_9294| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_9294_4770_42115#PolymorphicMapType_9294| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_9294_4770_42115#PolymorphicMapType_9294| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9294_4770_42115#PolymorphicMapType_9294| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9294_4770_42115#PolymorphicMapType_9294| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9294_4770_42115#PolymorphicMapType_9294| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9294) (SummandMask1@@5 T@PolymorphicMapType_9294) (SummandMask2@@5 T@PolymorphicMapType_9294) (o_2@@45 T@Ref) (f_4@@45 T@Field_4770_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9294_4770_53#PolymorphicMapType_9294| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_9294_4770_53#PolymorphicMapType_9294| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_9294_4770_53#PolymorphicMapType_9294| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9294_4770_53#PolymorphicMapType_9294| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9294_4770_53#PolymorphicMapType_9294| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9294_4770_53#PolymorphicMapType_9294| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9294) (SummandMask1@@6 T@PolymorphicMapType_9294) (SummandMask2@@6 T@PolymorphicMapType_9294) (o_2@@46 T@Ref) (f_4@@46 T@Field_4770_4725) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9294_4770_4725#PolymorphicMapType_9294| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_9294_4770_4725#PolymorphicMapType_9294| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_9294_4770_4725#PolymorphicMapType_9294| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9294_4770_4725#PolymorphicMapType_9294| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9294_4770_4725#PolymorphicMapType_9294| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9294_4770_4725#PolymorphicMapType_9294| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9294) (SummandMask1@@7 T@PolymorphicMapType_9294) (SummandMask2@@7 T@PolymorphicMapType_9294) (o_2@@47 T@Ref) (f_4@@47 T@Field_4770_1245) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9294_4770_1245#PolymorphicMapType_9294| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_9294_4770_1245#PolymorphicMapType_9294| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_9294_4770_1245#PolymorphicMapType_9294| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9294_4770_1245#PolymorphicMapType_9294| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9294_4770_1245#PolymorphicMapType_9294| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9294_4770_1245#PolymorphicMapType_9294| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9294) (SummandMask1@@8 T@PolymorphicMapType_9294) (SummandMask2@@8 T@PolymorphicMapType_9294) (o_2@@48 T@Ref) (f_4@@48 T@Field_13228_13229) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9273) (Mask@@41 T@PolymorphicMapType_9294) (this@@6 T@Ref) ) (!  (=> (state Heap@@24 Mask@@41) (= (|length'| Heap@@24 this@@6) (|length#frame| (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@24) null (node_2 this@@6)) this@@6)))
 :qid |stdinbpl.239:15|
 :skolemid |26|
 :pattern ( (state Heap@@24 Mask@@41) (|length'| Heap@@24 this@@6))
 :pattern ( (state Heap@@24 Mask@@41) (|length#triggerStateless| this@@6) (|node#trigger_4770| Heap@@24 (node_2 this@@6)))
)))
(assert (forall ((this@@7 T@Ref) ) (! (= (getPredWandId_4770_4771 (node_2 this@@7)) 0)
 :qid |stdinbpl.380:15|
 :skolemid |31|
 :pattern ( (node_2 this@@7))
)))
(assert (forall ((x T@Ref) ) (!  (or (= (typeOf x) A) (= (typeOf x) B))
 :qid |stdinbpl.196:15|
 :skolemid |22|
 :pattern ( (typeOf x))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9273) (Mask@@42 T@PolymorphicMapType_9294) (this@@8 T@Ref) ) (!  (=> (and (state Heap@@25 Mask@@42) (or (< AssumeFunctionsAbove 0) (|length#trigger| (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@25) null (node_2 this@@8)) this@@8))) (>= (|length'| Heap@@25 this@@8) 1))
 :qid |stdinbpl.245:15|
 :skolemid |27|
 :pattern ( (state Heap@@25 Mask@@42) (|length'| Heap@@25 this@@8))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9273) (o_1 T@Ref) (f_9 T@Field_16784_16789) (v T@PolymorphicMapType_9822) ) (! (succHeap Heap@@26 (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@26) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@26) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@26) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@26) (store (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@26) o_1 f_9 v) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@26) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@26) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@26) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@26) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@26) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@26) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@26) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@26) (store (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@26) o_1 f_9 v) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@26) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@26) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@26) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@26) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9273) (o_1@@0 T@Ref) (f_9@@0 T@Field_4770_1245) (v@@0 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@27) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@27) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@27) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@27) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@27) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@27) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@27) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@27) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@27) (store (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@27) o_1@@0 f_9@@0 v@@0)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@27) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@27) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@27) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@27) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@27) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@27) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@27) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@27) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@27) (store (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@27) o_1@@0 f_9@@0 v@@0)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9273) (o_1@@1 T@Ref) (f_9@@1 T@Field_13228_13229) (v@@1 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@28) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@28) (store (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@28) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@28) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@28) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@28) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@28) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@28) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@28) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@28) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@28) (store (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@28) o_1@@1 f_9@@1 v@@1) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@28) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@28) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@28) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@28) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@28) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@28) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9273) (o_1@@2 T@Ref) (f_9@@2 T@Field_4770_4725) (v@@2 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@29) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@29) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@29) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@29) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@29) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@29) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@29) (store (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@29) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@29) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@29) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@29) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@29) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@29) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@29) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@29) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@29) (store (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@29) o_1@@2 f_9@@2 v@@2) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@29) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9273) (o_1@@3 T@Ref) (f_9@@3 T@Field_4770_53) (v@@3 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@30) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@30) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@30) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@30) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@30) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@30) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@30) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@30) (store (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@30) o_1@@3 f_9@@3 v@@3) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@30) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@30) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@30) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@30) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@30) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@30) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@30) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@30) (store (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@30) o_1@@3 f_9@@3 v@@3) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9273) (o_1@@4 T@Ref) (f_9@@4 T@Field_4724_16789) (v@@4 T@PolymorphicMapType_9822) ) (! (succHeap Heap@@31 (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@31) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@31) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@31) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@31) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@31) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@31) (store (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@31) o_1@@4 f_9@@4 v@@4) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@31) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@31) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@31) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@31) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@31) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@31) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@31) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@31) (store (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@31) o_1@@4 f_9@@4 v@@4) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@31) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@31) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9273) (o_1@@5 T@Ref) (f_9@@5 T@Field_12775_1245) (v@@5 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@32) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@32) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@32) (store (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@32) o_1@@5 f_9@@5 v@@5) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@32) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@32) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@32) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@32) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@32) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@32) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@32) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@32) (store (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@32) o_1@@5 f_9@@5 v@@5) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@32) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@32) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@32) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@32) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@32) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9273) (o_1@@6 T@Ref) (f_9@@6 T@Field_4724_4771) (v@@6 T@FrameType) ) (! (succHeap Heap@@33 (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@33) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@33) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@33) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@33) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@33) (store (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@33) o_1@@6 f_9@@6 v@@6) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@33) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@33) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@33) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@33) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@33) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@33) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@33) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@33) (store (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@33) o_1@@6 f_9@@6 v@@6) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@33) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@33) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@33) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_9273) (o_1@@7 T@Ref) (f_9@@7 T@Field_9346_9347) (v@@7 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@34) (store (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@34) o_1@@7 f_9@@7 v@@7) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@34) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@34) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@34) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@34) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@34) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@34) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@34) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@34) (store (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@34) o_1@@7 f_9@@7 v@@7) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@34) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@34) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@34) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@34) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@34) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@34) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@34) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_9273) (o_1@@8 T@Ref) (f_9@@8 T@Field_9333_53) (v@@8 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_9273 (store (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@35) o_1@@8 f_9@@8 v@@8) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@35) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@35) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@35) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@35) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@35) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@35) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@35) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@35) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9273 (store (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@35) o_1@@8 f_9@@8 v@@8) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@35) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@35) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@35) (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@35) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@35) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@35) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@35) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@35) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@35)))
)))
(assert (forall ((this@@9 T@Ref) ) (! (= (PredicateMaskField_4770 (node_2 this@@9)) (|node#sm| this@@9))
 :qid |stdinbpl.372:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_4770 (node_2 this@@9)))
)))
(assert (forall ((o_1@@9 T@Ref) (f_2 T@Field_9346_9347) (Heap@@36 T@PolymorphicMapType_9273) ) (!  (=> (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@36) o_1@@9 $allocated) (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@36) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@36) o_1@@9 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@36) o_1@@9 f_2))
)))
(assert (forall ((p@@2 T@Field_4724_4771) (v_1@@1 T@FrameType) (q T@Field_4724_4771) (w@@1 T@FrameType) (r T@Field_4724_4771) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9333_9333 p@@2 v_1@@1 q w@@1) (InsidePredicate_9333_9333 q w@@1 r u)) (InsidePredicate_9333_9333 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9333_9333 p@@2 v_1@@1 q w@@1) (InsidePredicate_9333_9333 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_4724_4771) (v_1@@2 T@FrameType) (q@@0 T@Field_4724_4771) (w@@2 T@FrameType) (r@@0 T@Field_13228_13229) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_9333_9333 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_9333_4770 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_9333_4770 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9333_9333 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_9333_4770 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_4724_4771) (v_1@@3 T@FrameType) (q@@1 T@Field_13228_13229) (w@@3 T@FrameType) (r@@1 T@Field_4724_4771) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_9333_4770 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4770_9333 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_9333_9333 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9333_4770 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4770_9333 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_4724_4771) (v_1@@4 T@FrameType) (q@@2 T@Field_13228_13229) (w@@4 T@FrameType) (r@@2 T@Field_13228_13229) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_9333_4770 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4770_4770 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_9333_4770 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9333_4770 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4770_4770 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_13228_13229) (v_1@@5 T@FrameType) (q@@3 T@Field_4724_4771) (w@@5 T@FrameType) (r@@3 T@Field_4724_4771) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_4770_9333 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_9333_9333 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_4770_9333 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4770_9333 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_9333_9333 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_13228_13229) (v_1@@6 T@FrameType) (q@@4 T@Field_4724_4771) (w@@6 T@FrameType) (r@@4 T@Field_13228_13229) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_4770_9333 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_9333_4770 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_4770_4770 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4770_9333 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_9333_4770 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_13228_13229) (v_1@@7 T@FrameType) (q@@5 T@Field_13228_13229) (w@@7 T@FrameType) (r@@5 T@Field_4724_4771) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_4770_4770 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4770_9333 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_4770_9333 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4770_4770 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4770_9333 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_13228_13229) (v_1@@8 T@FrameType) (q@@6 T@Field_13228_13229) (w@@8 T@FrameType) (r@@6 T@Field_13228_13229) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_4770_4770 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4770_4770 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_4770_4770 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4770_4770 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4770_4770 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@4 () T@PolymorphicMapType_9273)
(declare-fun Mask@0 () T@PolymorphicMapType_9294)
(declare-fun Result@0 () Int)
(declare-fun this@@10 () T@Ref)
(declare-fun Heap@1 () T@PolymorphicMapType_9273)
(declare-fun Heap@2 () T@PolymorphicMapType_9273)
(declare-fun newPMask@0 () T@PolymorphicMapType_9822)
(declare-fun Heap@3 () T@PolymorphicMapType_9273)
(declare-fun Heap@0 () T@PolymorphicMapType_9273)
(declare-fun Heap@@37 () T@PolymorphicMapType_9273)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_9294)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_9294)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_9294)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_9294)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1245 (Int) T@FrameType)
(declare-fun FrameFragment_4725 (T@Ref) T@FrameType)
(declare-fun FrameFragment_4689 (T@FrameType) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_9294)
(set-info :boogie-vc-id |length#definedness|)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon9_correct  (=> (state Heap@4 Mask@0) (=> (and (= Result@0 (ite (= (typeOf (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@4) this@@10 next)) B) 1 (+ 1 (length Heap@4 (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@4) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@4) this@@10 next) a_6))))) (= (ControlFlow 0 4) (- 0 3))) (>= Result@0 1)))))
(let ((anon13_Else_correct  (=> (not (= (typeOf (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@1) this@@10 next)) A)) (=> (and (= Heap@4 Heap@1) (= (ControlFlow 0 6) 4)) anon9_correct))))
(let ((anon13_Then_correct  (=> (and (= (typeOf (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@1) this@@10 next)) A) (= Heap@2 (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@1) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@1) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@1) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@1) (store (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@1) null (|node#sm| this@@10) (PolymorphicMapType_9822 (|PolymorphicMapType_9822_4722_1245#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@1) null (|node#sm| this@@10))) (store (|PolymorphicMapType_9822_4724_4725#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@1) null (|node#sm| this@@10))) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@1) this@@10 next) a_6 true) (|PolymorphicMapType_9822_4722_53#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@1) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_4722_13229#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@1) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_4722_35676#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@1) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_13228_1245#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@1) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_13228_4725#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@1) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_13228_53#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@1) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_13228_13229#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@1) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_13228_36724#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@1) null (|node#sm| this@@10))))) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@1) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@1) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@1) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@1) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@1)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_12775_1245) ) (!  (=> (or (select (|PolymorphicMapType_9822_4722_1245#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| this@@10))) o_15 f_20) (select (|PolymorphicMapType_9822_4722_1245#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) this@@10 next) a_6)))) o_15 f_20)) (select (|PolymorphicMapType_9822_4722_1245#PolymorphicMapType_9822| newPMask@0) o_15 f_20))
 :qid |stdinbpl.347:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_9822_4722_1245#PolymorphicMapType_9822| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_9346_9347) ) (!  (=> (or (select (|PolymorphicMapType_9822_4724_4725#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| this@@10))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_9822_4724_4725#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) this@@10 next) a_6)))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_9822_4724_4725#PolymorphicMapType_9822| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.347:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_9822_4724_4725#PolymorphicMapType_9822| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_9333_53) ) (!  (=> (or (select (|PolymorphicMapType_9822_4722_53#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| this@@10))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_9822_4722_53#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) this@@10 next) a_6)))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_9822_4722_53#PolymorphicMapType_9822| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.347:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_9822_4722_53#PolymorphicMapType_9822| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_4724_4771) ) (!  (=> (or (select (|PolymorphicMapType_9822_4722_13229#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| this@@10))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_9822_4722_13229#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) this@@10 next) a_6)))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_9822_4722_13229#PolymorphicMapType_9822| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.347:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_9822_4722_13229#PolymorphicMapType_9822| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_4724_16789) ) (!  (=> (or (select (|PolymorphicMapType_9822_4722_35676#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| this@@10))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_9822_4722_35676#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) this@@10 next) a_6)))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_9822_4722_35676#PolymorphicMapType_9822| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.347:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_9822_4722_35676#PolymorphicMapType_9822| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_4770_1245) ) (!  (=> (or (select (|PolymorphicMapType_9822_13228_1245#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| this@@10))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_9822_13228_1245#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) this@@10 next) a_6)))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_9822_13228_1245#PolymorphicMapType_9822| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.347:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_9822_13228_1245#PolymorphicMapType_9822| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_4770_4725) ) (!  (=> (or (select (|PolymorphicMapType_9822_13228_4725#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| this@@10))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_9822_13228_4725#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) this@@10 next) a_6)))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_9822_13228_4725#PolymorphicMapType_9822| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.347:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_9822_13228_4725#PolymorphicMapType_9822| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_4770_53) ) (!  (=> (or (select (|PolymorphicMapType_9822_13228_53#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| this@@10))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_9822_13228_53#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) this@@10 next) a_6)))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_9822_13228_53#PolymorphicMapType_9822| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.347:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_9822_13228_53#PolymorphicMapType_9822| newPMask@0) o_15@@6 f_20@@6))
))) (forall ((o_15@@7 T@Ref) (f_20@@7 T@Field_13228_13229) ) (!  (=> (or (select (|PolymorphicMapType_9822_13228_13229#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| this@@10))) o_15@@7 f_20@@7) (select (|PolymorphicMapType_9822_13228_13229#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) this@@10 next) a_6)))) o_15@@7 f_20@@7)) (select (|PolymorphicMapType_9822_13228_13229#PolymorphicMapType_9822| newPMask@0) o_15@@7 f_20@@7))
 :qid |stdinbpl.347:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_9822_13228_13229#PolymorphicMapType_9822| newPMask@0) o_15@@7 f_20@@7))
))) (forall ((o_15@@8 T@Ref) (f_20@@8 T@Field_16784_16789) ) (!  (=> (or (select (|PolymorphicMapType_9822_13228_36724#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| this@@10))) o_15@@8 f_20@@8) (select (|PolymorphicMapType_9822_13228_36724#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) this@@10 next) a_6)))) o_15@@8 f_20@@8)) (select (|PolymorphicMapType_9822_13228_36724#PolymorphicMapType_9822| newPMask@0) o_15@@8 f_20@@8))
 :qid |stdinbpl.347:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_9822_13228_36724#PolymorphicMapType_9822| newPMask@0) o_15@@8 f_20@@8))
))) (= Heap@3 (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@2) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@2) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@2) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@2) (store (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@2) null (|node#sm| this@@10) newPMask@0) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@2) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@2) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@2) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@2) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@2)))) (and (= Heap@4 Heap@3) (= (ControlFlow 0 5) 4))) anon9_correct))))
(let ((anon7_correct  (=> (and (= Heap@0 (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@37) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@37) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@37) (store (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@37) null (|node#sm| this@@10) (PolymorphicMapType_9822 (store (|PolymorphicMapType_9822_4722_1245#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@37) null (|node#sm| this@@10))) this@@10 val true) (|PolymorphicMapType_9822_4724_4725#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@37) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_4722_53#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@37) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_4722_13229#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@37) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_4722_35676#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@37) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_13228_1245#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@37) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_13228_4725#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@37) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_13228_53#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@37) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_13228_13229#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@37) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_13228_36724#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@@37) null (|node#sm| this@@10))))) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@@37) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@@37) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@@37) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@@37) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@@37))) (= Heap@1 (PolymorphicMapType_9273 (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@0) (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@0) (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@0) (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@0) (store (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@0) null (|node#sm| this@@10) (PolymorphicMapType_9822 (|PolymorphicMapType_9822_4722_1245#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@0) null (|node#sm| this@@10))) (store (|PolymorphicMapType_9822_4724_4725#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@0) null (|node#sm| this@@10))) this@@10 next true) (|PolymorphicMapType_9822_4722_53#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@0) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_4722_13229#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@0) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_4722_35676#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@0) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_13228_1245#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@0) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_13228_4725#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@0) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_13228_53#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@0) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_13228_13229#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@0) null (|node#sm| this@@10))) (|PolymorphicMapType_9822_13228_36724#PolymorphicMapType_9822| (select (|PolymorphicMapType_9273_4774_16876#PolymorphicMapType_9273| Heap@0) null (|node#sm| this@@10))))) (|PolymorphicMapType_9273_4724_4771#PolymorphicMapType_9273| Heap@0) (|PolymorphicMapType_9273_4724_32875#PolymorphicMapType_9273| Heap@0) (|PolymorphicMapType_9273_4770_4725#PolymorphicMapType_9273| Heap@0) (|PolymorphicMapType_9273_4770_53#PolymorphicMapType_9273| Heap@0) (|PolymorphicMapType_9273_4770_1245#PolymorphicMapType_9273| Heap@0)))) (and (=> (= (ControlFlow 0 7) 5) anon13_Then_correct) (=> (= (ControlFlow 0 7) 6) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (|length#trigger| (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@37) null (node_2 (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next) a_6))) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next) a_6)) (= (ControlFlow 0 9) 7)) anon7_correct)))
(let ((anon11_Then_correct  (=> (and (= (typeOf (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next)) B) (= (ControlFlow 0 8) 7)) anon7_correct)))
(let ((anon12_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| UnfoldingMask@4) null (node_2 (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next) a_6))))))))
(let ((anon11_Else_correct  (=> (not (= (typeOf (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next)) B)) (and (=> (= (ControlFlow 0 10) (- 0 12)) (HasDirectPerm_4724_4725 UnfoldingMask@4 this@@10 next)) (=> (HasDirectPerm_4724_4725 UnfoldingMask@4 this@@10 next) (and (=> (= (ControlFlow 0 10) (- 0 11)) (HasDirectPerm_4724_4725 UnfoldingMask@4 (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next) a_6)) (=> (HasDirectPerm_4724_4725 UnfoldingMask@4 (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next) a_6) (and (=> (= (ControlFlow 0 10) 2) anon12_Then_correct) (=> (= (ControlFlow 0 10) 9) anon12_Else_correct)))))))))
(let ((anon2_correct  (=> (state Heap@@37 UnfoldingMask@4) (and (=> (= (ControlFlow 0 13) (- 0 14)) (HasDirectPerm_4724_4725 UnfoldingMask@4 this@@10 next)) (=> (HasDirectPerm_4724_4725 UnfoldingMask@4 this@@10 next) (and (=> (= (ControlFlow 0 13) 8) anon11_Then_correct) (=> (= (ControlFlow 0 13) 10) anon11_Else_correct)))))))
(let ((anon10_Else_correct  (=> (not (= (typeOf (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next)) A)) (=> (and (= UnfoldingMask@4 UnfoldingMask@1) (= (ControlFlow 0 16) 13)) anon2_correct))))
(let ((anon10_Then_correct  (=> (= (typeOf (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next)) A) (=> (and (and (and (not (= (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next) null)) (= UnfoldingMask@2 (PolymorphicMapType_9294 (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| UnfoldingMask@1) (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| UnfoldingMask@1) (store (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| UnfoldingMask@1) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next) a_6 (+ (select (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| UnfoldingMask@1) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next) a_6) FullPerm)) (|PolymorphicMapType_9294_4770_1245#PolymorphicMapType_9294| UnfoldingMask@1) (|PolymorphicMapType_9294_4770_4725#PolymorphicMapType_9294| UnfoldingMask@1) (|PolymorphicMapType_9294_4770_53#PolymorphicMapType_9294| UnfoldingMask@1) (|PolymorphicMapType_9294_4770_42115#PolymorphicMapType_9294| UnfoldingMask@1) (|PolymorphicMapType_9294_4722_4771#PolymorphicMapType_9294| UnfoldingMask@1) (|PolymorphicMapType_9294_4722_53#PolymorphicMapType_9294| UnfoldingMask@1) (|PolymorphicMapType_9294_4722_42514#PolymorphicMapType_9294| UnfoldingMask@1)))) (and (state Heap@@37 UnfoldingMask@2) (= UnfoldingMask@3 (PolymorphicMapType_9294 (store (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| UnfoldingMask@2) null (node_2 (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next) a_6)) (+ (select (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| UnfoldingMask@2) null (node_2 (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next) a_6))) FullPerm)) (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| UnfoldingMask@2) (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| UnfoldingMask@2) (|PolymorphicMapType_9294_4770_1245#PolymorphicMapType_9294| UnfoldingMask@2) (|PolymorphicMapType_9294_4770_4725#PolymorphicMapType_9294| UnfoldingMask@2) (|PolymorphicMapType_9294_4770_53#PolymorphicMapType_9294| UnfoldingMask@2) (|PolymorphicMapType_9294_4770_42115#PolymorphicMapType_9294| UnfoldingMask@2) (|PolymorphicMapType_9294_4722_4771#PolymorphicMapType_9294| UnfoldingMask@2) (|PolymorphicMapType_9294_4722_53#PolymorphicMapType_9294| UnfoldingMask@2) (|PolymorphicMapType_9294_4722_42514#PolymorphicMapType_9294| UnfoldingMask@2))))) (and (and (InsidePredicate_4770_4770 (node_2 this@@10) (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@37) null (node_2 this@@10)) (node_2 (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next) a_6)) (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@37) null (node_2 (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next) a_6)))) (state Heap@@37 UnfoldingMask@3)) (and (= UnfoldingMask@4 UnfoldingMask@3) (= (ControlFlow 0 15) 13)))) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@37 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_9273_4583_53#PolymorphicMapType_9273| Heap@@37) this@@10 $allocated)) (and (= AssumeFunctionsAbove 0) (= Mask@0 (PolymorphicMapType_9294 (store (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| ZeroMask) null (node_2 this@@10) (+ (select (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| ZeroMask) null (node_2 this@@10)) FullPerm)) (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| ZeroMask) (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| ZeroMask) (|PolymorphicMapType_9294_4770_1245#PolymorphicMapType_9294| ZeroMask) (|PolymorphicMapType_9294_4770_4725#PolymorphicMapType_9294| ZeroMask) (|PolymorphicMapType_9294_4770_53#PolymorphicMapType_9294| ZeroMask) (|PolymorphicMapType_9294_4770_42115#PolymorphicMapType_9294| ZeroMask) (|PolymorphicMapType_9294_4722_4771#PolymorphicMapType_9294| ZeroMask) (|PolymorphicMapType_9294_4722_53#PolymorphicMapType_9294| ZeroMask) (|PolymorphicMapType_9294_4722_42514#PolymorphicMapType_9294| ZeroMask))))) (and (and (state Heap@@37 Mask@0) (state Heap@@37 Mask@0)) (and (|node#trigger_4770| Heap@@37 (node_2 this@@10)) (= (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@37) null (node_2 this@@10)) (CombineFrames (FrameFragment_1245 (select (|PolymorphicMapType_9273_4722_1245#PolymorphicMapType_9273| Heap@@37) this@@10 val)) (CombineFrames (FrameFragment_4725 (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next)) (FrameFragment_4689 (ite (= (typeOf (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next)) A) (CombineFrames (FrameFragment_4725 (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next) a_6)) (select (|PolymorphicMapType_9273_4770_4771#PolymorphicMapType_9273| Heap@@37) null (node_2 (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) (select (|PolymorphicMapType_9273_4586_4587#PolymorphicMapType_9273| Heap@@37) this@@10 next) a_6)))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| Mask@0) null (node_2 this@@10))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| Mask@0) null (node_2 this@@10)))) (=> (and (not (= this@@10 null)) (= UnfoldingMask@0 (PolymorphicMapType_9294 (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| Mask@0) (store (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| Mask@0) this@@10 val (+ (select (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| Mask@0) this@@10 val) FullPerm)) (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| Mask@0) (|PolymorphicMapType_9294_4770_1245#PolymorphicMapType_9294| Mask@0) (|PolymorphicMapType_9294_4770_4725#PolymorphicMapType_9294| Mask@0) (|PolymorphicMapType_9294_4770_53#PolymorphicMapType_9294| Mask@0) (|PolymorphicMapType_9294_4770_42115#PolymorphicMapType_9294| Mask@0) (|PolymorphicMapType_9294_4722_4771#PolymorphicMapType_9294| Mask@0) (|PolymorphicMapType_9294_4722_53#PolymorphicMapType_9294| Mask@0) (|PolymorphicMapType_9294_4722_42514#PolymorphicMapType_9294| Mask@0)))) (=> (and (and (state Heap@@37 UnfoldingMask@0) (not (= this@@10 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_9294 (|PolymorphicMapType_9294_4770_4771#PolymorphicMapType_9294| UnfoldingMask@0) (|PolymorphicMapType_9294_4722_1245#PolymorphicMapType_9294| UnfoldingMask@0) (store (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| UnfoldingMask@0) this@@10 next (+ (select (|PolymorphicMapType_9294_4724_4725#PolymorphicMapType_9294| UnfoldingMask@0) this@@10 next) FullPerm)) (|PolymorphicMapType_9294_4770_1245#PolymorphicMapType_9294| UnfoldingMask@0) (|PolymorphicMapType_9294_4770_4725#PolymorphicMapType_9294| UnfoldingMask@0) (|PolymorphicMapType_9294_4770_53#PolymorphicMapType_9294| UnfoldingMask@0) (|PolymorphicMapType_9294_4770_42115#PolymorphicMapType_9294| UnfoldingMask@0) (|PolymorphicMapType_9294_4722_4771#PolymorphicMapType_9294| UnfoldingMask@0) (|PolymorphicMapType_9294_4722_53#PolymorphicMapType_9294| UnfoldingMask@0) (|PolymorphicMapType_9294_4722_42514#PolymorphicMapType_9294| UnfoldingMask@0))) (state Heap@@37 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 17) 15) anon10_Then_correct) (=> (= (ControlFlow 0 17) 16) anon10_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19) 17) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
