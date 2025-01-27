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
(declare-sort T@Field_8421_53 0)
(declare-sort T@Field_8434_8435 0)
(declare-sort T@Field_12193_12194 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_11798_1204 0)
(declare-sort T@Field_15165_15170 0)
(declare-sort T@Field_4373_4443 0)
(declare-sort T@Field_4373_15170 0)
(declare-sort T@Field_4442_4374 0)
(declare-sort T@Field_4442_1204 0)
(declare-sort T@Field_4442_53 0)
(declare-datatypes ((T@PolymorphicMapType_8382 0)) (((PolymorphicMapType_8382 (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| (Array T@Ref T@Field_12193_12194 Real)) (|PolymorphicMapType_8382_4373_4374#PolymorphicMapType_8382| (Array T@Ref T@Field_8434_8435 Real)) (|PolymorphicMapType_8382_4376_1204#PolymorphicMapType_8382| (Array T@Ref T@Field_11798_1204 Real)) (|PolymorphicMapType_8382_4442_4374#PolymorphicMapType_8382| (Array T@Ref T@Field_4442_4374 Real)) (|PolymorphicMapType_8382_4442_1204#PolymorphicMapType_8382| (Array T@Ref T@Field_4442_1204 Real)) (|PolymorphicMapType_8382_4442_53#PolymorphicMapType_8382| (Array T@Ref T@Field_4442_53 Real)) (|PolymorphicMapType_8382_4442_37243#PolymorphicMapType_8382| (Array T@Ref T@Field_15165_15170 Real)) (|PolymorphicMapType_8382_4373_4443#PolymorphicMapType_8382| (Array T@Ref T@Field_4373_4443 Real)) (|PolymorphicMapType_8382_4373_53#PolymorphicMapType_8382| (Array T@Ref T@Field_8421_53 Real)) (|PolymorphicMapType_8382_4373_37642#PolymorphicMapType_8382| (Array T@Ref T@Field_4373_15170 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8910 0)) (((PolymorphicMapType_8910 (|PolymorphicMapType_8910_4373_4374#PolymorphicMapType_8910| (Array T@Ref T@Field_8434_8435 Bool)) (|PolymorphicMapType_8910_4376_1204#PolymorphicMapType_8910| (Array T@Ref T@Field_11798_1204 Bool)) (|PolymorphicMapType_8910_4373_53#PolymorphicMapType_8910| (Array T@Ref T@Field_8421_53 Bool)) (|PolymorphicMapType_8910_4373_12194#PolymorphicMapType_8910| (Array T@Ref T@Field_4373_4443 Bool)) (|PolymorphicMapType_8910_4373_30804#PolymorphicMapType_8910| (Array T@Ref T@Field_4373_15170 Bool)) (|PolymorphicMapType_8910_12193_4374#PolymorphicMapType_8910| (Array T@Ref T@Field_4442_4374 Bool)) (|PolymorphicMapType_8910_12193_1204#PolymorphicMapType_8910| (Array T@Ref T@Field_4442_1204 Bool)) (|PolymorphicMapType_8910_12193_53#PolymorphicMapType_8910| (Array T@Ref T@Field_4442_53 Bool)) (|PolymorphicMapType_8910_12193_12194#PolymorphicMapType_8910| (Array T@Ref T@Field_12193_12194 Bool)) (|PolymorphicMapType_8910_12193_31852#PolymorphicMapType_8910| (Array T@Ref T@Field_15165_15170 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8361 0)) (((PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| (Array T@Ref T@Field_8421_53 Bool)) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| (Array T@Ref T@Field_8434_8435 T@Ref)) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| (Array T@Ref T@Field_12193_12194 T@FrameType)) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| (Array T@Ref T@Field_11798_1204 Int)) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| (Array T@Ref T@Field_15165_15170 T@PolymorphicMapType_8910)) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| (Array T@Ref T@Field_4373_4443 T@FrameType)) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| (Array T@Ref T@Field_4373_15170 T@PolymorphicMapType_8910)) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| (Array T@Ref T@Field_4442_4374 T@Ref)) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| (Array T@Ref T@Field_4442_1204 Int)) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| (Array T@Ref T@Field_4442_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_8421_53)
(declare-fun Nodenext$ () T@Field_8434_8435)
(declare-fun Nodevalue$ () T@Field_11798_1204)
(declare-fun succHeap (T@PolymorphicMapType_8361 T@PolymorphicMapType_8361) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8361 T@PolymorphicMapType_8361) Bool)
(declare-fun state (T@PolymorphicMapType_8361 T@PolymorphicMapType_8382) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8382) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8910)
(declare-fun |Nodecontains$'| (T@PolymorphicMapType_8361 T@Ref Int) Bool)
(declare-fun dummyFunction_2344 (Bool) Bool)
(declare-fun |Nodecontains$#triggerStateless| (T@Ref Int) Bool)
(declare-fun Nodevalid$ (T@Ref) T@Field_12193_12194)
(declare-fun IsPredicateField_4442_4443 (T@Field_12193_12194) Bool)
(declare-fun |Nodesize$'| (T@PolymorphicMapType_8361 T@Ref) Int)
(declare-fun dummyFunction_1487 (Int) Bool)
(declare-fun |Nodesize$#triggerStateless| (T@Ref) Int)
(declare-fun |Nodevalid$#trigger_4442| (T@PolymorphicMapType_8361 T@Field_12193_12194) Bool)
(declare-fun |Nodevalid$#everUsed_4442| (T@Field_12193_12194) Bool)
(declare-fun Nodesize$ (T@PolymorphicMapType_8361 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8361 T@PolymorphicMapType_8361 T@PolymorphicMapType_8382) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4442 (T@Field_12193_12194) T@Field_15165_15170)
(declare-fun HasDirectPerm_4442_4443 (T@PolymorphicMapType_8382 T@Ref T@Field_12193_12194) Bool)
(declare-fun IsPredicateField_4373_29347 (T@Field_4373_4443) Bool)
(declare-fun PredicateMaskField_4373 (T@Field_4373_4443) T@Field_4373_15170)
(declare-fun HasDirectPerm_4373_4443 (T@PolymorphicMapType_8382 T@Ref T@Field_4373_4443) Bool)
(declare-fun IsWandField_4442_33017 (T@Field_12193_12194) Bool)
(declare-fun WandMaskField_4442 (T@Field_12193_12194) T@Field_15165_15170)
(declare-fun IsWandField_4373_32660 (T@Field_4373_4443) Bool)
(declare-fun WandMaskField_4373 (T@Field_4373_4443) T@Field_4373_15170)
(declare-fun |Nodevalid$#sm| (T@Ref) T@Field_15165_15170)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Nodesize$#trigger| (T@FrameType T@Ref) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_8361)
(declare-fun ZeroMask () T@PolymorphicMapType_8382)
(declare-fun InsidePredicate_8421_8421 (T@Field_4373_4443 T@FrameType T@Field_4373_4443 T@FrameType) Bool)
(declare-fun InsidePredicate_4442_4442 (T@Field_12193_12194 T@FrameType T@Field_12193_12194 T@FrameType) Bool)
(declare-fun IsPredicateField_4373_4374 (T@Field_8434_8435) Bool)
(declare-fun IsWandField_4373_4374 (T@Field_8434_8435) Bool)
(declare-fun IsPredicateField_4376_1204 (T@Field_11798_1204) Bool)
(declare-fun IsWandField_4376_1204 (T@Field_11798_1204) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4373_39920 (T@Field_4373_15170) Bool)
(declare-fun IsWandField_4373_39936 (T@Field_4373_15170) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4373_53 (T@Field_8421_53) Bool)
(declare-fun IsWandField_4373_53 (T@Field_8421_53) Bool)
(declare-fun IsPredicateField_4442_39117 (T@Field_15165_15170) Bool)
(declare-fun IsWandField_4442_39133 (T@Field_15165_15170) Bool)
(declare-fun IsPredicateField_4442_53 (T@Field_4442_53) Bool)
(declare-fun IsWandField_4442_53 (T@Field_4442_53) Bool)
(declare-fun IsPredicateField_4442_1204 (T@Field_4442_1204) Bool)
(declare-fun IsWandField_4442_1204 (T@Field_4442_1204) Bool)
(declare-fun IsPredicateField_4442_4374 (T@Field_4442_4374) Bool)
(declare-fun IsWandField_4442_4374 (T@Field_4442_4374) Bool)
(declare-fun HasDirectPerm_4442_29102 (T@PolymorphicMapType_8382 T@Ref T@Field_15165_15170) Bool)
(declare-fun HasDirectPerm_4442_53 (T@PolymorphicMapType_8382 T@Ref T@Field_4442_53) Bool)
(declare-fun HasDirectPerm_4442_1204 (T@PolymorphicMapType_8382 T@Ref T@Field_4442_1204) Bool)
(declare-fun HasDirectPerm_4442_4374 (T@PolymorphicMapType_8382 T@Ref T@Field_4442_4374) Bool)
(declare-fun HasDirectPerm_4373_27961 (T@PolymorphicMapType_8382 T@Ref T@Field_4373_15170) Bool)
(declare-fun HasDirectPerm_4373_53 (T@PolymorphicMapType_8382 T@Ref T@Field_8421_53) Bool)
(declare-fun HasDirectPerm_4376_1204 (T@PolymorphicMapType_8382 T@Ref T@Field_11798_1204) Bool)
(declare-fun HasDirectPerm_4373_4374 (T@PolymorphicMapType_8382 T@Ref T@Field_8434_8435) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8382 T@PolymorphicMapType_8382 T@PolymorphicMapType_8382) Bool)
(declare-fun |Nodecontains$#frame| (T@FrameType T@Ref Int) Bool)
(declare-fun |Nodesize$#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_4442_4443 (T@Field_12193_12194) Int)
(declare-fun InsidePredicate_8421_4442 (T@Field_4373_4443 T@FrameType T@Field_12193_12194 T@FrameType) Bool)
(declare-fun InsidePredicate_4442_8421 (T@Field_12193_12194 T@FrameType T@Field_4373_4443 T@FrameType) Bool)
(declare-fun Nodecontains$ (T@PolymorphicMapType_8361 T@Ref Int) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_8361) (Heap1 T@PolymorphicMapType_8361) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8361) (Mask T@PolymorphicMapType_8382) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8361) (Heap1@@0 T@PolymorphicMapType_8361) (Heap2 T@PolymorphicMapType_8361) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_15165_15170) ) (!  (not (select (|PolymorphicMapType_8910_12193_31852#PolymorphicMapType_8910| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8910_12193_31852#PolymorphicMapType_8910| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12193_12194) ) (!  (not (select (|PolymorphicMapType_8910_12193_12194#PolymorphicMapType_8910| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8910_12193_12194#PolymorphicMapType_8910| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4442_53) ) (!  (not (select (|PolymorphicMapType_8910_12193_53#PolymorphicMapType_8910| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8910_12193_53#PolymorphicMapType_8910| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4442_1204) ) (!  (not (select (|PolymorphicMapType_8910_12193_1204#PolymorphicMapType_8910| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8910_12193_1204#PolymorphicMapType_8910| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4442_4374) ) (!  (not (select (|PolymorphicMapType_8910_12193_4374#PolymorphicMapType_8910| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8910_12193_4374#PolymorphicMapType_8910| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4373_15170) ) (!  (not (select (|PolymorphicMapType_8910_4373_30804#PolymorphicMapType_8910| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8910_4373_30804#PolymorphicMapType_8910| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4373_4443) ) (!  (not (select (|PolymorphicMapType_8910_4373_12194#PolymorphicMapType_8910| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8910_4373_12194#PolymorphicMapType_8910| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8421_53) ) (!  (not (select (|PolymorphicMapType_8910_4373_53#PolymorphicMapType_8910| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8910_4373_53#PolymorphicMapType_8910| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_11798_1204) ) (!  (not (select (|PolymorphicMapType_8910_4376_1204#PolymorphicMapType_8910| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8910_4376_1204#PolymorphicMapType_8910| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_8434_8435) ) (!  (not (select (|PolymorphicMapType_8910_4373_4374#PolymorphicMapType_8910| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8910_4373_4374#PolymorphicMapType_8910| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8361) (this$_4 T@Ref) (i Int) ) (! (dummyFunction_2344 (|Nodecontains$#triggerStateless| this$_4 i))
 :qid |stdinbpl.353:15|
 :skolemid |29|
 :pattern ( (|Nodecontains$'| Heap@@0 this$_4 i))
)))
(assert (forall ((this$_5 T@Ref) ) (! (IsPredicateField_4442_4443 (Nodevalid$ this$_5))
 :qid |stdinbpl.496:15|
 :skolemid |34|
 :pattern ( (Nodevalid$ this$_5))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8361) (this$_3 T@Ref) ) (! (dummyFunction_1487 (|Nodesize$#triggerStateless| this$_3))
 :qid |stdinbpl.202:15|
 :skolemid |23|
 :pattern ( (|Nodesize$'| Heap@@1 this$_3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8361) (this$_5@@0 T@Ref) ) (! (|Nodevalid$#everUsed_4442| (Nodevalid$ this$_5@@0))
 :qid |stdinbpl.515:15|
 :skolemid |38|
 :pattern ( (|Nodevalid$#trigger_4442| Heap@@2 (Nodevalid$ this$_5@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8361) (this$_3@@0 T@Ref) ) (!  (and (= (Nodesize$ Heap@@3 this$_3@@0) (|Nodesize$'| Heap@@3 this$_3@@0)) (dummyFunction_1487 (|Nodesize$#triggerStateless| this$_3@@0)))
 :qid |stdinbpl.198:15|
 :skolemid |22|
 :pattern ( (Nodesize$ Heap@@3 this$_3@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8361) (ExhaleHeap T@PolymorphicMapType_8361) (Mask@@0 T@PolymorphicMapType_8382) (pm_f_18 T@Field_12193_12194) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4442_4443 Mask@@0 null pm_f_18) (IsPredicateField_4442_4443 pm_f_18)) (= (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@4) null (PredicateMaskField_4442 pm_f_18)) (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| ExhaleHeap) null (PredicateMaskField_4442 pm_f_18)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (IsPredicateField_4442_4443 pm_f_18) (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| ExhaleHeap) null (PredicateMaskField_4442 pm_f_18)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8361) (ExhaleHeap@@0 T@PolymorphicMapType_8361) (Mask@@1 T@PolymorphicMapType_8382) (pm_f_18@@0 T@Field_4373_4443) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4373_4443 Mask@@1 null pm_f_18@@0) (IsPredicateField_4373_29347 pm_f_18@@0)) (= (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@5) null (PredicateMaskField_4373 pm_f_18@@0)) (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| ExhaleHeap@@0) null (PredicateMaskField_4373 pm_f_18@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4373_29347 pm_f_18@@0) (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| ExhaleHeap@@0) null (PredicateMaskField_4373 pm_f_18@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8361) (ExhaleHeap@@1 T@PolymorphicMapType_8361) (Mask@@2 T@PolymorphicMapType_8382) (pm_f_18@@1 T@Field_12193_12194) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4442_4443 Mask@@2 null pm_f_18@@1) (IsWandField_4442_33017 pm_f_18@@1)) (= (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@6) null (WandMaskField_4442 pm_f_18@@1)) (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| ExhaleHeap@@1) null (WandMaskField_4442 pm_f_18@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (IsWandField_4442_33017 pm_f_18@@1) (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| ExhaleHeap@@1) null (WandMaskField_4442 pm_f_18@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8361) (ExhaleHeap@@2 T@PolymorphicMapType_8361) (Mask@@3 T@PolymorphicMapType_8382) (pm_f_18@@2 T@Field_4373_4443) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4373_4443 Mask@@3 null pm_f_18@@2) (IsWandField_4373_32660 pm_f_18@@2)) (= (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@7) null (WandMaskField_4373 pm_f_18@@2)) (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| ExhaleHeap@@2) null (WandMaskField_4373 pm_f_18@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (IsWandField_4373_32660 pm_f_18@@2) (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| ExhaleHeap@@2) null (WandMaskField_4373 pm_f_18@@2)))
)))
(assert (forall ((this$_5@@1 T@Ref) (this$_52 T@Ref) ) (!  (=> (= (Nodevalid$ this$_5@@1) (Nodevalid$ this$_52)) (= this$_5@@1 this$_52))
 :qid |stdinbpl.506:15|
 :skolemid |36|
 :pattern ( (Nodevalid$ this$_5@@1) (Nodevalid$ this$_52))
)))
(assert (forall ((this$_5@@2 T@Ref) (this$_52@@0 T@Ref) ) (!  (=> (= (|Nodevalid$#sm| this$_5@@2) (|Nodevalid$#sm| this$_52@@0)) (= this$_5@@2 this$_52@@0))
 :qid |stdinbpl.510:15|
 :skolemid |37|
 :pattern ( (|Nodevalid$#sm| this$_5@@2) (|Nodevalid$#sm| this$_52@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8361) (Mask@@4 T@PolymorphicMapType_8382) (this$_3@@1 T@Ref) ) (!  (=> (and (state Heap@@8 Mask@@4) (or (< AssumeFunctionsAbove 0) (|Nodesize$#trigger| (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@8) null (Nodevalid$ this$_3@@1)) this$_3@@1))) (=> (not (= this$_3@@1 null)) (> (|Nodesize$'| Heap@@8 this$_3@@1) 0)))
 :qid |stdinbpl.221:15|
 :skolemid |26|
 :pattern ( (state Heap@@8 Mask@@4) (|Nodesize$'| Heap@@8 this$_3@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8361) (ExhaleHeap@@3 T@PolymorphicMapType_8361) (Mask@@5 T@PolymorphicMapType_8382) (pm_f_18@@3 T@Field_12193_12194) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_4442_4443 Mask@@5 null pm_f_18@@3) (IsPredicateField_4442_4443 pm_f_18@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_18 T@Ref) (f_21 T@Field_8434_8435) ) (!  (=> (select (|PolymorphicMapType_8910_4373_4374#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@9) null (PredicateMaskField_4442 pm_f_18@@3))) o2_18 f_21) (= (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@9) o2_18 f_21) (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18 f_21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18 f_21))
)) (forall ((o2_18@@0 T@Ref) (f_21@@0 T@Field_11798_1204) ) (!  (=> (select (|PolymorphicMapType_8910_4376_1204#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@9) null (PredicateMaskField_4442 pm_f_18@@3))) o2_18@@0 f_21@@0) (= (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@9) o2_18@@0 f_21@@0) (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18@@0 f_21@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18@@0 f_21@@0))
))) (forall ((o2_18@@1 T@Ref) (f_21@@1 T@Field_8421_53) ) (!  (=> (select (|PolymorphicMapType_8910_4373_53#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@9) null (PredicateMaskField_4442 pm_f_18@@3))) o2_18@@1 f_21@@1) (= (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@9) o2_18@@1 f_21@@1) (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18@@1 f_21@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18@@1 f_21@@1))
))) (forall ((o2_18@@2 T@Ref) (f_21@@2 T@Field_4373_4443) ) (!  (=> (select (|PolymorphicMapType_8910_4373_12194#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@9) null (PredicateMaskField_4442 pm_f_18@@3))) o2_18@@2 f_21@@2) (= (select (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@9) o2_18@@2 f_21@@2) (select (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18@@2 f_21@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18@@2 f_21@@2))
))) (forall ((o2_18@@3 T@Ref) (f_21@@3 T@Field_4373_15170) ) (!  (=> (select (|PolymorphicMapType_8910_4373_30804#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@9) null (PredicateMaskField_4442 pm_f_18@@3))) o2_18@@3 f_21@@3) (= (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@9) o2_18@@3 f_21@@3) (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18@@3 f_21@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18@@3 f_21@@3))
))) (forall ((o2_18@@4 T@Ref) (f_21@@4 T@Field_4442_4374) ) (!  (=> (select (|PolymorphicMapType_8910_12193_4374#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@9) null (PredicateMaskField_4442 pm_f_18@@3))) o2_18@@4 f_21@@4) (= (select (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@9) o2_18@@4 f_21@@4) (select (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18@@4 f_21@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18@@4 f_21@@4))
))) (forall ((o2_18@@5 T@Ref) (f_21@@5 T@Field_4442_1204) ) (!  (=> (select (|PolymorphicMapType_8910_12193_1204#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@9) null (PredicateMaskField_4442 pm_f_18@@3))) o2_18@@5 f_21@@5) (= (select (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@9) o2_18@@5 f_21@@5) (select (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18@@5 f_21@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18@@5 f_21@@5))
))) (forall ((o2_18@@6 T@Ref) (f_21@@6 T@Field_4442_53) ) (!  (=> (select (|PolymorphicMapType_8910_12193_53#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@9) null (PredicateMaskField_4442 pm_f_18@@3))) o2_18@@6 f_21@@6) (= (select (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@9) o2_18@@6 f_21@@6) (select (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18@@6 f_21@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18@@6 f_21@@6))
))) (forall ((o2_18@@7 T@Ref) (f_21@@7 T@Field_12193_12194) ) (!  (=> (select (|PolymorphicMapType_8910_12193_12194#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@9) null (PredicateMaskField_4442 pm_f_18@@3))) o2_18@@7 f_21@@7) (= (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@9) o2_18@@7 f_21@@7) (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18@@7 f_21@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18@@7 f_21@@7))
))) (forall ((o2_18@@8 T@Ref) (f_21@@8 T@Field_15165_15170) ) (!  (=> (select (|PolymorphicMapType_8910_12193_31852#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@9) null (PredicateMaskField_4442 pm_f_18@@3))) o2_18@@8 f_21@@8) (= (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@9) o2_18@@8 f_21@@8) (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18@@8 f_21@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| ExhaleHeap@@3) o2_18@@8 f_21@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (IsPredicateField_4442_4443 pm_f_18@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8361) (ExhaleHeap@@4 T@PolymorphicMapType_8361) (Mask@@6 T@PolymorphicMapType_8382) (pm_f_18@@4 T@Field_4373_4443) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_4373_4443 Mask@@6 null pm_f_18@@4) (IsPredicateField_4373_29347 pm_f_18@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_18@@9 T@Ref) (f_21@@9 T@Field_8434_8435) ) (!  (=> (select (|PolymorphicMapType_8910_4373_4374#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@10) null (PredicateMaskField_4373 pm_f_18@@4))) o2_18@@9 f_21@@9) (= (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@10) o2_18@@9 f_21@@9) (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@9 f_21@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@9 f_21@@9))
)) (forall ((o2_18@@10 T@Ref) (f_21@@10 T@Field_11798_1204) ) (!  (=> (select (|PolymorphicMapType_8910_4376_1204#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@10) null (PredicateMaskField_4373 pm_f_18@@4))) o2_18@@10 f_21@@10) (= (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@10) o2_18@@10 f_21@@10) (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@10 f_21@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@10 f_21@@10))
))) (forall ((o2_18@@11 T@Ref) (f_21@@11 T@Field_8421_53) ) (!  (=> (select (|PolymorphicMapType_8910_4373_53#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@10) null (PredicateMaskField_4373 pm_f_18@@4))) o2_18@@11 f_21@@11) (= (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@10) o2_18@@11 f_21@@11) (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@11 f_21@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@11 f_21@@11))
))) (forall ((o2_18@@12 T@Ref) (f_21@@12 T@Field_4373_4443) ) (!  (=> (select (|PolymorphicMapType_8910_4373_12194#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@10) null (PredicateMaskField_4373 pm_f_18@@4))) o2_18@@12 f_21@@12) (= (select (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@10) o2_18@@12 f_21@@12) (select (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@12 f_21@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@12 f_21@@12))
))) (forall ((o2_18@@13 T@Ref) (f_21@@13 T@Field_4373_15170) ) (!  (=> (select (|PolymorphicMapType_8910_4373_30804#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@10) null (PredicateMaskField_4373 pm_f_18@@4))) o2_18@@13 f_21@@13) (= (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@10) o2_18@@13 f_21@@13) (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@13 f_21@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@13 f_21@@13))
))) (forall ((o2_18@@14 T@Ref) (f_21@@14 T@Field_4442_4374) ) (!  (=> (select (|PolymorphicMapType_8910_12193_4374#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@10) null (PredicateMaskField_4373 pm_f_18@@4))) o2_18@@14 f_21@@14) (= (select (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@10) o2_18@@14 f_21@@14) (select (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@14 f_21@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@14 f_21@@14))
))) (forall ((o2_18@@15 T@Ref) (f_21@@15 T@Field_4442_1204) ) (!  (=> (select (|PolymorphicMapType_8910_12193_1204#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@10) null (PredicateMaskField_4373 pm_f_18@@4))) o2_18@@15 f_21@@15) (= (select (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@10) o2_18@@15 f_21@@15) (select (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@15 f_21@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@15 f_21@@15))
))) (forall ((o2_18@@16 T@Ref) (f_21@@16 T@Field_4442_53) ) (!  (=> (select (|PolymorphicMapType_8910_12193_53#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@10) null (PredicateMaskField_4373 pm_f_18@@4))) o2_18@@16 f_21@@16) (= (select (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@10) o2_18@@16 f_21@@16) (select (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@16 f_21@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@16 f_21@@16))
))) (forall ((o2_18@@17 T@Ref) (f_21@@17 T@Field_12193_12194) ) (!  (=> (select (|PolymorphicMapType_8910_12193_12194#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@10) null (PredicateMaskField_4373 pm_f_18@@4))) o2_18@@17 f_21@@17) (= (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@10) o2_18@@17 f_21@@17) (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@17 f_21@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@17 f_21@@17))
))) (forall ((o2_18@@18 T@Ref) (f_21@@18 T@Field_15165_15170) ) (!  (=> (select (|PolymorphicMapType_8910_12193_31852#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@10) null (PredicateMaskField_4373 pm_f_18@@4))) o2_18@@18 f_21@@18) (= (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@10) o2_18@@18 f_21@@18) (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@18 f_21@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| ExhaleHeap@@4) o2_18@@18 f_21@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (IsPredicateField_4373_29347 pm_f_18@@4))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8361) (ExhaleHeap@@5 T@PolymorphicMapType_8361) (Mask@@7 T@PolymorphicMapType_8382) (pm_f_18@@5 T@Field_12193_12194) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_4442_4443 Mask@@7 null pm_f_18@@5) (IsWandField_4442_33017 pm_f_18@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_18@@19 T@Ref) (f_21@@19 T@Field_8434_8435) ) (!  (=> (select (|PolymorphicMapType_8910_4373_4374#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@11) null (WandMaskField_4442 pm_f_18@@5))) o2_18@@19 f_21@@19) (= (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@11) o2_18@@19 f_21@@19) (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@19 f_21@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@19 f_21@@19))
)) (forall ((o2_18@@20 T@Ref) (f_21@@20 T@Field_11798_1204) ) (!  (=> (select (|PolymorphicMapType_8910_4376_1204#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@11) null (WandMaskField_4442 pm_f_18@@5))) o2_18@@20 f_21@@20) (= (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@11) o2_18@@20 f_21@@20) (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@20 f_21@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@20 f_21@@20))
))) (forall ((o2_18@@21 T@Ref) (f_21@@21 T@Field_8421_53) ) (!  (=> (select (|PolymorphicMapType_8910_4373_53#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@11) null (WandMaskField_4442 pm_f_18@@5))) o2_18@@21 f_21@@21) (= (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@11) o2_18@@21 f_21@@21) (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@21 f_21@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@21 f_21@@21))
))) (forall ((o2_18@@22 T@Ref) (f_21@@22 T@Field_4373_4443) ) (!  (=> (select (|PolymorphicMapType_8910_4373_12194#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@11) null (WandMaskField_4442 pm_f_18@@5))) o2_18@@22 f_21@@22) (= (select (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@11) o2_18@@22 f_21@@22) (select (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@22 f_21@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@22 f_21@@22))
))) (forall ((o2_18@@23 T@Ref) (f_21@@23 T@Field_4373_15170) ) (!  (=> (select (|PolymorphicMapType_8910_4373_30804#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@11) null (WandMaskField_4442 pm_f_18@@5))) o2_18@@23 f_21@@23) (= (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@11) o2_18@@23 f_21@@23) (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@23 f_21@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@23 f_21@@23))
))) (forall ((o2_18@@24 T@Ref) (f_21@@24 T@Field_4442_4374) ) (!  (=> (select (|PolymorphicMapType_8910_12193_4374#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@11) null (WandMaskField_4442 pm_f_18@@5))) o2_18@@24 f_21@@24) (= (select (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@11) o2_18@@24 f_21@@24) (select (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@24 f_21@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@24 f_21@@24))
))) (forall ((o2_18@@25 T@Ref) (f_21@@25 T@Field_4442_1204) ) (!  (=> (select (|PolymorphicMapType_8910_12193_1204#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@11) null (WandMaskField_4442 pm_f_18@@5))) o2_18@@25 f_21@@25) (= (select (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@11) o2_18@@25 f_21@@25) (select (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@25 f_21@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@25 f_21@@25))
))) (forall ((o2_18@@26 T@Ref) (f_21@@26 T@Field_4442_53) ) (!  (=> (select (|PolymorphicMapType_8910_12193_53#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@11) null (WandMaskField_4442 pm_f_18@@5))) o2_18@@26 f_21@@26) (= (select (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@11) o2_18@@26 f_21@@26) (select (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@26 f_21@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@26 f_21@@26))
))) (forall ((o2_18@@27 T@Ref) (f_21@@27 T@Field_12193_12194) ) (!  (=> (select (|PolymorphicMapType_8910_12193_12194#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@11) null (WandMaskField_4442 pm_f_18@@5))) o2_18@@27 f_21@@27) (= (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@11) o2_18@@27 f_21@@27) (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@27 f_21@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@27 f_21@@27))
))) (forall ((o2_18@@28 T@Ref) (f_21@@28 T@Field_15165_15170) ) (!  (=> (select (|PolymorphicMapType_8910_12193_31852#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@11) null (WandMaskField_4442 pm_f_18@@5))) o2_18@@28 f_21@@28) (= (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@11) o2_18@@28 f_21@@28) (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@28 f_21@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| ExhaleHeap@@5) o2_18@@28 f_21@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (IsWandField_4442_33017 pm_f_18@@5))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8361) (ExhaleHeap@@6 T@PolymorphicMapType_8361) (Mask@@8 T@PolymorphicMapType_8382) (pm_f_18@@6 T@Field_4373_4443) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_4373_4443 Mask@@8 null pm_f_18@@6) (IsWandField_4373_32660 pm_f_18@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_18@@29 T@Ref) (f_21@@29 T@Field_8434_8435) ) (!  (=> (select (|PolymorphicMapType_8910_4373_4374#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@12) null (WandMaskField_4373 pm_f_18@@6))) o2_18@@29 f_21@@29) (= (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@12) o2_18@@29 f_21@@29) (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@29 f_21@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@29 f_21@@29))
)) (forall ((o2_18@@30 T@Ref) (f_21@@30 T@Field_11798_1204) ) (!  (=> (select (|PolymorphicMapType_8910_4376_1204#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@12) null (WandMaskField_4373 pm_f_18@@6))) o2_18@@30 f_21@@30) (= (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@12) o2_18@@30 f_21@@30) (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@30 f_21@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@30 f_21@@30))
))) (forall ((o2_18@@31 T@Ref) (f_21@@31 T@Field_8421_53) ) (!  (=> (select (|PolymorphicMapType_8910_4373_53#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@12) null (WandMaskField_4373 pm_f_18@@6))) o2_18@@31 f_21@@31) (= (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@12) o2_18@@31 f_21@@31) (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@31 f_21@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@31 f_21@@31))
))) (forall ((o2_18@@32 T@Ref) (f_21@@32 T@Field_4373_4443) ) (!  (=> (select (|PolymorphicMapType_8910_4373_12194#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@12) null (WandMaskField_4373 pm_f_18@@6))) o2_18@@32 f_21@@32) (= (select (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@12) o2_18@@32 f_21@@32) (select (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@32 f_21@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@32 f_21@@32))
))) (forall ((o2_18@@33 T@Ref) (f_21@@33 T@Field_4373_15170) ) (!  (=> (select (|PolymorphicMapType_8910_4373_30804#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@12) null (WandMaskField_4373 pm_f_18@@6))) o2_18@@33 f_21@@33) (= (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@12) o2_18@@33 f_21@@33) (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@33 f_21@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@33 f_21@@33))
))) (forall ((o2_18@@34 T@Ref) (f_21@@34 T@Field_4442_4374) ) (!  (=> (select (|PolymorphicMapType_8910_12193_4374#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@12) null (WandMaskField_4373 pm_f_18@@6))) o2_18@@34 f_21@@34) (= (select (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@12) o2_18@@34 f_21@@34) (select (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@34 f_21@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@34 f_21@@34))
))) (forall ((o2_18@@35 T@Ref) (f_21@@35 T@Field_4442_1204) ) (!  (=> (select (|PolymorphicMapType_8910_12193_1204#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@12) null (WandMaskField_4373 pm_f_18@@6))) o2_18@@35 f_21@@35) (= (select (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@12) o2_18@@35 f_21@@35) (select (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@35 f_21@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@35 f_21@@35))
))) (forall ((o2_18@@36 T@Ref) (f_21@@36 T@Field_4442_53) ) (!  (=> (select (|PolymorphicMapType_8910_12193_53#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@12) null (WandMaskField_4373 pm_f_18@@6))) o2_18@@36 f_21@@36) (= (select (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@12) o2_18@@36 f_21@@36) (select (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@36 f_21@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@36 f_21@@36))
))) (forall ((o2_18@@37 T@Ref) (f_21@@37 T@Field_12193_12194) ) (!  (=> (select (|PolymorphicMapType_8910_12193_12194#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@12) null (WandMaskField_4373 pm_f_18@@6))) o2_18@@37 f_21@@37) (= (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@12) o2_18@@37 f_21@@37) (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@37 f_21@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@37 f_21@@37))
))) (forall ((o2_18@@38 T@Ref) (f_21@@38 T@Field_15165_15170) ) (!  (=> (select (|PolymorphicMapType_8910_12193_31852#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@12) null (WandMaskField_4373 pm_f_18@@6))) o2_18@@38 f_21@@38) (= (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@12) o2_18@@38 f_21@@38) (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@38 f_21@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| ExhaleHeap@@6) o2_18@@38 f_21@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (IsWandField_4373_32660 pm_f_18@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8361) (ExhaleHeap@@7 T@PolymorphicMapType_8361) (Mask@@9 T@PolymorphicMapType_8382) (o_39 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@13) o_39 $allocated) (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| ExhaleHeap@@7) o_39 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| ExhaleHeap@@7) o_39 $allocated))
)))
(assert (forall ((p T@Field_4373_4443) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8421_8421 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8421_8421 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_12193_12194) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4442_4442 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4442_4442 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4373_4374 Nodenext$)))
(assert  (not (IsWandField_4373_4374 Nodenext$)))
(assert  (not (IsPredicateField_4376_1204 Nodevalue$)))
(assert  (not (IsWandField_4376_1204 Nodevalue$)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8361) (ExhaleHeap@@8 T@PolymorphicMapType_8361) (Mask@@10 T@PolymorphicMapType_8382) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@14 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8382) (o_2@@9 T@Ref) (f_4@@9 T@Field_4373_15170) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8382_4373_37642#PolymorphicMapType_8382| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4373_39920 f_4@@9))) (not (IsWandField_4373_39936 f_4@@9))) (<= (select (|PolymorphicMapType_8382_4373_37642#PolymorphicMapType_8382| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8382_4373_37642#PolymorphicMapType_8382| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8382) (o_2@@10 T@Ref) (f_4@@10 T@Field_8421_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8382_4373_53#PolymorphicMapType_8382| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4373_53 f_4@@10))) (not (IsWandField_4373_53 f_4@@10))) (<= (select (|PolymorphicMapType_8382_4373_53#PolymorphicMapType_8382| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8382_4373_53#PolymorphicMapType_8382| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8382) (o_2@@11 T@Ref) (f_4@@11 T@Field_11798_1204) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8382_4376_1204#PolymorphicMapType_8382| Mask@@13) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4376_1204 f_4@@11))) (not (IsWandField_4376_1204 f_4@@11))) (<= (select (|PolymorphicMapType_8382_4376_1204#PolymorphicMapType_8382| Mask@@13) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8382_4376_1204#PolymorphicMapType_8382| Mask@@13) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8382) (o_2@@12 T@Ref) (f_4@@12 T@Field_8434_8435) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8382_4373_4374#PolymorphicMapType_8382| Mask@@14) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4373_4374 f_4@@12))) (not (IsWandField_4373_4374 f_4@@12))) (<= (select (|PolymorphicMapType_8382_4373_4374#PolymorphicMapType_8382| Mask@@14) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8382_4373_4374#PolymorphicMapType_8382| Mask@@14) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8382) (o_2@@13 T@Ref) (f_4@@13 T@Field_4373_4443) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8382_4373_4443#PolymorphicMapType_8382| Mask@@15) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4373_29347 f_4@@13))) (not (IsWandField_4373_32660 f_4@@13))) (<= (select (|PolymorphicMapType_8382_4373_4443#PolymorphicMapType_8382| Mask@@15) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8382_4373_4443#PolymorphicMapType_8382| Mask@@15) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8382) (o_2@@14 T@Ref) (f_4@@14 T@Field_15165_15170) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8382_4442_37243#PolymorphicMapType_8382| Mask@@16) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4442_39117 f_4@@14))) (not (IsWandField_4442_39133 f_4@@14))) (<= (select (|PolymorphicMapType_8382_4442_37243#PolymorphicMapType_8382| Mask@@16) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8382_4442_37243#PolymorphicMapType_8382| Mask@@16) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8382) (o_2@@15 T@Ref) (f_4@@15 T@Field_4442_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8382_4442_53#PolymorphicMapType_8382| Mask@@17) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4442_53 f_4@@15))) (not (IsWandField_4442_53 f_4@@15))) (<= (select (|PolymorphicMapType_8382_4442_53#PolymorphicMapType_8382| Mask@@17) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8382_4442_53#PolymorphicMapType_8382| Mask@@17) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8382) (o_2@@16 T@Ref) (f_4@@16 T@Field_4442_1204) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8382_4442_1204#PolymorphicMapType_8382| Mask@@18) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4442_1204 f_4@@16))) (not (IsWandField_4442_1204 f_4@@16))) (<= (select (|PolymorphicMapType_8382_4442_1204#PolymorphicMapType_8382| Mask@@18) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8382_4442_1204#PolymorphicMapType_8382| Mask@@18) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8382) (o_2@@17 T@Ref) (f_4@@17 T@Field_4442_4374) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8382_4442_4374#PolymorphicMapType_8382| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4442_4374 f_4@@17))) (not (IsWandField_4442_4374 f_4@@17))) (<= (select (|PolymorphicMapType_8382_4442_4374#PolymorphicMapType_8382| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8382_4442_4374#PolymorphicMapType_8382| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8382) (o_2@@18 T@Ref) (f_4@@18 T@Field_12193_12194) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_4442_4443 f_4@@18))) (not (IsWandField_4442_33017 f_4@@18))) (<= (select (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8382) (o_2@@19 T@Ref) (f_4@@19 T@Field_15165_15170) ) (! (= (HasDirectPerm_4442_29102 Mask@@21 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_8382_4442_37243#PolymorphicMapType_8382| Mask@@21) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4442_29102 Mask@@21 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8382) (o_2@@20 T@Ref) (f_4@@20 T@Field_4442_53) ) (! (= (HasDirectPerm_4442_53 Mask@@22 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_8382_4442_53#PolymorphicMapType_8382| Mask@@22) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4442_53 Mask@@22 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8382) (o_2@@21 T@Ref) (f_4@@21 T@Field_12193_12194) ) (! (= (HasDirectPerm_4442_4443 Mask@@23 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| Mask@@23) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4442_4443 Mask@@23 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8382) (o_2@@22 T@Ref) (f_4@@22 T@Field_4442_1204) ) (! (= (HasDirectPerm_4442_1204 Mask@@24 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_8382_4442_1204#PolymorphicMapType_8382| Mask@@24) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4442_1204 Mask@@24 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8382) (o_2@@23 T@Ref) (f_4@@23 T@Field_4442_4374) ) (! (= (HasDirectPerm_4442_4374 Mask@@25 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_8382_4442_4374#PolymorphicMapType_8382| Mask@@25) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4442_4374 Mask@@25 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8382) (o_2@@24 T@Ref) (f_4@@24 T@Field_4373_15170) ) (! (= (HasDirectPerm_4373_27961 Mask@@26 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_8382_4373_37642#PolymorphicMapType_8382| Mask@@26) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4373_27961 Mask@@26 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8382) (o_2@@25 T@Ref) (f_4@@25 T@Field_8421_53) ) (! (= (HasDirectPerm_4373_53 Mask@@27 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_8382_4373_53#PolymorphicMapType_8382| Mask@@27) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4373_53 Mask@@27 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8382) (o_2@@26 T@Ref) (f_4@@26 T@Field_4373_4443) ) (! (= (HasDirectPerm_4373_4443 Mask@@28 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_8382_4373_4443#PolymorphicMapType_8382| Mask@@28) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4373_4443 Mask@@28 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8382) (o_2@@27 T@Ref) (f_4@@27 T@Field_11798_1204) ) (! (= (HasDirectPerm_4376_1204 Mask@@29 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_8382_4376_1204#PolymorphicMapType_8382| Mask@@29) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4376_1204 Mask@@29 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_8382) (o_2@@28 T@Ref) (f_4@@28 T@Field_8434_8435) ) (! (= (HasDirectPerm_4373_4374 Mask@@30 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_8382_4373_4374#PolymorphicMapType_8382| Mask@@30) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4373_4374 Mask@@30 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8361) (ExhaleHeap@@9 T@PolymorphicMapType_8361) (Mask@@31 T@PolymorphicMapType_8382) (o_39@@0 T@Ref) (f_21@@39 T@Field_15165_15170) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_4442_29102 Mask@@31 o_39@@0 f_21@@39) (= (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@15) o_39@@0 f_21@@39) (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| ExhaleHeap@@9) o_39@@0 f_21@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| ExhaleHeap@@9) o_39@@0 f_21@@39))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8361) (ExhaleHeap@@10 T@PolymorphicMapType_8361) (Mask@@32 T@PolymorphicMapType_8382) (o_39@@1 T@Ref) (f_21@@40 T@Field_4442_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_4442_53 Mask@@32 o_39@@1 f_21@@40) (= (select (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@16) o_39@@1 f_21@@40) (select (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| ExhaleHeap@@10) o_39@@1 f_21@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| ExhaleHeap@@10) o_39@@1 f_21@@40))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8361) (ExhaleHeap@@11 T@PolymorphicMapType_8361) (Mask@@33 T@PolymorphicMapType_8382) (o_39@@2 T@Ref) (f_21@@41 T@Field_12193_12194) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_4442_4443 Mask@@33 o_39@@2 f_21@@41) (= (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@17) o_39@@2 f_21@@41) (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| ExhaleHeap@@11) o_39@@2 f_21@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| ExhaleHeap@@11) o_39@@2 f_21@@41))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8361) (ExhaleHeap@@12 T@PolymorphicMapType_8361) (Mask@@34 T@PolymorphicMapType_8382) (o_39@@3 T@Ref) (f_21@@42 T@Field_4442_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_4442_1204 Mask@@34 o_39@@3 f_21@@42) (= (select (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@18) o_39@@3 f_21@@42) (select (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| ExhaleHeap@@12) o_39@@3 f_21@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| ExhaleHeap@@12) o_39@@3 f_21@@42))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8361) (ExhaleHeap@@13 T@PolymorphicMapType_8361) (Mask@@35 T@PolymorphicMapType_8382) (o_39@@4 T@Ref) (f_21@@43 T@Field_4442_4374) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_4442_4374 Mask@@35 o_39@@4 f_21@@43) (= (select (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@19) o_39@@4 f_21@@43) (select (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| ExhaleHeap@@13) o_39@@4 f_21@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| ExhaleHeap@@13) o_39@@4 f_21@@43))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8361) (ExhaleHeap@@14 T@PolymorphicMapType_8361) (Mask@@36 T@PolymorphicMapType_8382) (o_39@@5 T@Ref) (f_21@@44 T@Field_4373_15170) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_4373_27961 Mask@@36 o_39@@5 f_21@@44) (= (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@20) o_39@@5 f_21@@44) (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| ExhaleHeap@@14) o_39@@5 f_21@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| ExhaleHeap@@14) o_39@@5 f_21@@44))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8361) (ExhaleHeap@@15 T@PolymorphicMapType_8361) (Mask@@37 T@PolymorphicMapType_8382) (o_39@@6 T@Ref) (f_21@@45 T@Field_8421_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_4373_53 Mask@@37 o_39@@6 f_21@@45) (= (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@21) o_39@@6 f_21@@45) (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| ExhaleHeap@@15) o_39@@6 f_21@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| ExhaleHeap@@15) o_39@@6 f_21@@45))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8361) (ExhaleHeap@@16 T@PolymorphicMapType_8361) (Mask@@38 T@PolymorphicMapType_8382) (o_39@@7 T@Ref) (f_21@@46 T@Field_4373_4443) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_4373_4443 Mask@@38 o_39@@7 f_21@@46) (= (select (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@22) o_39@@7 f_21@@46) (select (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| ExhaleHeap@@16) o_39@@7 f_21@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| ExhaleHeap@@16) o_39@@7 f_21@@46))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8361) (ExhaleHeap@@17 T@PolymorphicMapType_8361) (Mask@@39 T@PolymorphicMapType_8382) (o_39@@8 T@Ref) (f_21@@47 T@Field_11798_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_4376_1204 Mask@@39 o_39@@8 f_21@@47) (= (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@23) o_39@@8 f_21@@47) (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| ExhaleHeap@@17) o_39@@8 f_21@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| ExhaleHeap@@17) o_39@@8 f_21@@47))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8361) (ExhaleHeap@@18 T@PolymorphicMapType_8361) (Mask@@40 T@PolymorphicMapType_8382) (o_39@@9 T@Ref) (f_21@@48 T@Field_8434_8435) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_4373_4374 Mask@@40 o_39@@9 f_21@@48) (= (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@24) o_39@@9 f_21@@48) (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| ExhaleHeap@@18) o_39@@9 f_21@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| ExhaleHeap@@18) o_39@@9 f_21@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_4373_15170) ) (! (= (select (|PolymorphicMapType_8382_4373_37642#PolymorphicMapType_8382| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8382_4373_37642#PolymorphicMapType_8382| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_8421_53) ) (! (= (select (|PolymorphicMapType_8382_4373_53#PolymorphicMapType_8382| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8382_4373_53#PolymorphicMapType_8382| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_11798_1204) ) (! (= (select (|PolymorphicMapType_8382_4376_1204#PolymorphicMapType_8382| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8382_4376_1204#PolymorphicMapType_8382| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_8434_8435) ) (! (= (select (|PolymorphicMapType_8382_4373_4374#PolymorphicMapType_8382| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8382_4373_4374#PolymorphicMapType_8382| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_4373_4443) ) (! (= (select (|PolymorphicMapType_8382_4373_4443#PolymorphicMapType_8382| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8382_4373_4443#PolymorphicMapType_8382| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_15165_15170) ) (! (= (select (|PolymorphicMapType_8382_4442_37243#PolymorphicMapType_8382| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8382_4442_37243#PolymorphicMapType_8382| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_4442_53) ) (! (= (select (|PolymorphicMapType_8382_4442_53#PolymorphicMapType_8382| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8382_4442_53#PolymorphicMapType_8382| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_4442_1204) ) (! (= (select (|PolymorphicMapType_8382_4442_1204#PolymorphicMapType_8382| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8382_4442_1204#PolymorphicMapType_8382| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_4442_4374) ) (! (= (select (|PolymorphicMapType_8382_4442_4374#PolymorphicMapType_8382| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8382_4442_4374#PolymorphicMapType_8382| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_12193_12194) ) (! (= (select (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8382) (SummandMask1 T@PolymorphicMapType_8382) (SummandMask2 T@PolymorphicMapType_8382) (o_2@@39 T@Ref) (f_4@@39 T@Field_4373_15170) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8382_4373_37642#PolymorphicMapType_8382| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_8382_4373_37642#PolymorphicMapType_8382| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_8382_4373_37642#PolymorphicMapType_8382| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8382_4373_37642#PolymorphicMapType_8382| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8382_4373_37642#PolymorphicMapType_8382| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8382_4373_37642#PolymorphicMapType_8382| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8382) (SummandMask1@@0 T@PolymorphicMapType_8382) (SummandMask2@@0 T@PolymorphicMapType_8382) (o_2@@40 T@Ref) (f_4@@40 T@Field_8421_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8382_4373_53#PolymorphicMapType_8382| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_8382_4373_53#PolymorphicMapType_8382| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_8382_4373_53#PolymorphicMapType_8382| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8382_4373_53#PolymorphicMapType_8382| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8382_4373_53#PolymorphicMapType_8382| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8382_4373_53#PolymorphicMapType_8382| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8382) (SummandMask1@@1 T@PolymorphicMapType_8382) (SummandMask2@@1 T@PolymorphicMapType_8382) (o_2@@41 T@Ref) (f_4@@41 T@Field_11798_1204) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8382_4376_1204#PolymorphicMapType_8382| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_8382_4376_1204#PolymorphicMapType_8382| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_8382_4376_1204#PolymorphicMapType_8382| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8382_4376_1204#PolymorphicMapType_8382| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8382_4376_1204#PolymorphicMapType_8382| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8382_4376_1204#PolymorphicMapType_8382| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8382) (SummandMask1@@2 T@PolymorphicMapType_8382) (SummandMask2@@2 T@PolymorphicMapType_8382) (o_2@@42 T@Ref) (f_4@@42 T@Field_8434_8435) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8382_4373_4374#PolymorphicMapType_8382| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_8382_4373_4374#PolymorphicMapType_8382| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_8382_4373_4374#PolymorphicMapType_8382| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8382_4373_4374#PolymorphicMapType_8382| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8382_4373_4374#PolymorphicMapType_8382| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8382_4373_4374#PolymorphicMapType_8382| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8382) (SummandMask1@@3 T@PolymorphicMapType_8382) (SummandMask2@@3 T@PolymorphicMapType_8382) (o_2@@43 T@Ref) (f_4@@43 T@Field_4373_4443) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8382_4373_4443#PolymorphicMapType_8382| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_8382_4373_4443#PolymorphicMapType_8382| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_8382_4373_4443#PolymorphicMapType_8382| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8382_4373_4443#PolymorphicMapType_8382| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8382_4373_4443#PolymorphicMapType_8382| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8382_4373_4443#PolymorphicMapType_8382| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8382) (SummandMask1@@4 T@PolymorphicMapType_8382) (SummandMask2@@4 T@PolymorphicMapType_8382) (o_2@@44 T@Ref) (f_4@@44 T@Field_15165_15170) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8382_4442_37243#PolymorphicMapType_8382| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_8382_4442_37243#PolymorphicMapType_8382| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_8382_4442_37243#PolymorphicMapType_8382| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8382_4442_37243#PolymorphicMapType_8382| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8382_4442_37243#PolymorphicMapType_8382| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8382_4442_37243#PolymorphicMapType_8382| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8382) (SummandMask1@@5 T@PolymorphicMapType_8382) (SummandMask2@@5 T@PolymorphicMapType_8382) (o_2@@45 T@Ref) (f_4@@45 T@Field_4442_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8382_4442_53#PolymorphicMapType_8382| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_8382_4442_53#PolymorphicMapType_8382| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_8382_4442_53#PolymorphicMapType_8382| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8382_4442_53#PolymorphicMapType_8382| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8382_4442_53#PolymorphicMapType_8382| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8382_4442_53#PolymorphicMapType_8382| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8382) (SummandMask1@@6 T@PolymorphicMapType_8382) (SummandMask2@@6 T@PolymorphicMapType_8382) (o_2@@46 T@Ref) (f_4@@46 T@Field_4442_1204) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8382_4442_1204#PolymorphicMapType_8382| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_8382_4442_1204#PolymorphicMapType_8382| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_8382_4442_1204#PolymorphicMapType_8382| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8382_4442_1204#PolymorphicMapType_8382| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8382_4442_1204#PolymorphicMapType_8382| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8382_4442_1204#PolymorphicMapType_8382| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8382) (SummandMask1@@7 T@PolymorphicMapType_8382) (SummandMask2@@7 T@PolymorphicMapType_8382) (o_2@@47 T@Ref) (f_4@@47 T@Field_4442_4374) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8382_4442_4374#PolymorphicMapType_8382| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_8382_4442_4374#PolymorphicMapType_8382| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_8382_4442_4374#PolymorphicMapType_8382| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8382_4442_4374#PolymorphicMapType_8382| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8382_4442_4374#PolymorphicMapType_8382| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8382_4442_4374#PolymorphicMapType_8382| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8382) (SummandMask1@@8 T@PolymorphicMapType_8382) (SummandMask2@@8 T@PolymorphicMapType_8382) (o_2@@48 T@Ref) (f_4@@48 T@Field_12193_12194) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8361) (Mask@@41 T@PolymorphicMapType_8382) (this$_4@@0 T@Ref) (i@@0 Int) ) (!  (=> (state Heap@@25 Mask@@41) (= (|Nodecontains$'| Heap@@25 this$_4@@0 i@@0) (|Nodecontains$#frame| (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@25) null (Nodevalid$ this$_4@@0)) this$_4@@0 i@@0)))
 :qid |stdinbpl.366:15|
 :skolemid |31|
 :pattern ( (state Heap@@25 Mask@@41) (|Nodecontains$'| Heap@@25 this$_4@@0 i@@0))
 :pattern ( (state Heap@@25 Mask@@41) (|Nodecontains$#triggerStateless| this$_4@@0 i@@0) (|Nodevalid$#trigger_4442| Heap@@25 (Nodevalid$ this$_4@@0)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8361) (Mask@@42 T@PolymorphicMapType_8382) (this$_3@@2 T@Ref) ) (!  (=> (state Heap@@26 Mask@@42) (= (|Nodesize$'| Heap@@26 this$_3@@2) (|Nodesize$#frame| (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@26) null (Nodevalid$ this$_3@@2)) this$_3@@2)))
 :qid |stdinbpl.215:15|
 :skolemid |25|
 :pattern ( (state Heap@@26 Mask@@42) (|Nodesize$'| Heap@@26 this$_3@@2))
 :pattern ( (state Heap@@26 Mask@@42) (|Nodesize$#triggerStateless| this$_3@@2) (|Nodevalid$#trigger_4442| Heap@@26 (Nodevalid$ this$_3@@2)))
)))
(assert (forall ((this$_5@@3 T@Ref) ) (! (= (getPredWandId_4442_4443 (Nodevalid$ this$_5@@3)) 0)
 :qid |stdinbpl.500:15|
 :skolemid |35|
 :pattern ( (Nodevalid$ this$_5@@3))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8361) (Mask@@43 T@PolymorphicMapType_8382) (this$_3@@3 T@Ref) ) (!  (=> (and (state Heap@@27 Mask@@43) (< AssumeFunctionsAbove 0)) (=> (not (= this$_3@@3 null)) (= (Nodesize$ Heap@@27 this$_3@@3) (ite (not (= (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@27) this$_3@@3 Nodenext$) null)) (+ 1 (|Nodesize$'| Heap@@27 (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@27) this$_3@@3 Nodenext$))) 1))))
 :qid |stdinbpl.208:15|
 :skolemid |24|
 :pattern ( (state Heap@@27 Mask@@43) (Nodesize$ Heap@@27 this$_3@@3))
 :pattern ( (state Heap@@27 Mask@@43) (|Nodesize$#triggerStateless| this$_3@@3) (|Nodevalid$#trigger_4442| Heap@@27 (Nodevalid$ this$_3@@3)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8361) (o_38 T@Ref) (f_23 T@Field_15165_15170) (v T@PolymorphicMapType_8910) ) (! (succHeap Heap@@28 (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@28) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@28) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@28) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@28) (store (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@28) o_38 f_23 v) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@28) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@28) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@28) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@28) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@28) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@28) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@28) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@28) (store (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@28) o_38 f_23 v) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@28) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@28) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@28) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@28) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8361) (o_38@@0 T@Ref) (f_23@@0 T@Field_4442_1204) (v@@0 Int) ) (! (succHeap Heap@@29 (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@29) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@29) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@29) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@29) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@29) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@29) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@29) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@29) (store (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@29) o_38@@0 f_23@@0 v@@0) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@29) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@29) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@29) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@29) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@29) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@29) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@29) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@29) (store (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@29) o_38@@0 f_23@@0 v@@0) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8361) (o_38@@1 T@Ref) (f_23@@1 T@Field_12193_12194) (v@@1 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@30) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@30) (store (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@30) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@30) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@30) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@30) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@30) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@30) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@30) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@30) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@30) (store (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@30) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@30) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@30) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@30) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@30) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@30) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@30) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8361) (o_38@@2 T@Ref) (f_23@@2 T@Field_4442_4374) (v@@2 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@31) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@31) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@31) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@31) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@31) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@31) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@31) (store (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@31) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@31) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@31) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@31) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@31) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@31) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@31) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@31) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@31) (store (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@31) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@31) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8361) (o_38@@3 T@Ref) (f_23@@3 T@Field_4442_53) (v@@3 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@32) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@32) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@32) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@32) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@32) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@32) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@32) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@32) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@32) (store (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@32) o_38@@3 f_23@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@32) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@32) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@32) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@32) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@32) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@32) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@32) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@32) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@32) (store (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@32) o_38@@3 f_23@@3 v@@3)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8361) (o_38@@4 T@Ref) (f_23@@4 T@Field_4373_15170) (v@@4 T@PolymorphicMapType_8910) ) (! (succHeap Heap@@33 (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@33) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@33) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@33) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@33) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@33) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@33) (store (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@33) o_38@@4 f_23@@4 v@@4) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@33) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@33) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@33) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@33) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@33) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@33) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@33) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@33) (store (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@33) o_38@@4 f_23@@4 v@@4) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@33) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@33) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_8361) (o_38@@5 T@Ref) (f_23@@5 T@Field_11798_1204) (v@@5 Int) ) (! (succHeap Heap@@34 (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@34) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@34) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@34) (store (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@34) o_38@@5 f_23@@5 v@@5) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@34) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@34) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@34) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@34) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@34) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@34) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@34) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@34) (store (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@34) o_38@@5 f_23@@5 v@@5) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@34) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@34) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@34) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@34) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@34) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_8361) (o_38@@6 T@Ref) (f_23@@6 T@Field_4373_4443) (v@@6 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@35) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@35) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@35) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@35) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@35) (store (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@35) o_38@@6 f_23@@6 v@@6) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@35) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@35) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@35) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@35) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@35) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@35) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@35) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@35) (store (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@35) o_38@@6 f_23@@6 v@@6) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@35) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@35) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@35) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_8361) (o_38@@7 T@Ref) (f_23@@7 T@Field_8434_8435) (v@@7 T@Ref) ) (! (succHeap Heap@@36 (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@36) (store (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@36) o_38@@7 f_23@@7 v@@7) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@36) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@36) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@36) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@36) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@36) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@36) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@36) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@36) (store (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@36) o_38@@7 f_23@@7 v@@7) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@36) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@36) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@36) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@36) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@36) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@36) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@36) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_8361) (o_38@@8 T@Ref) (f_23@@8 T@Field_8421_53) (v@@8 Bool) ) (! (succHeap Heap@@37 (PolymorphicMapType_8361 (store (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@37) o_38@@8 f_23@@8 v@@8) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@37) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@37) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@37) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@37) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@37) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@37) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@37) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@37) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8361 (store (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@37) o_38@@8 f_23@@8 v@@8) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@37) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@37) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@37) (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@37) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@37) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@37) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@37) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@37) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@37)))
)))
(assert (forall ((this$_5@@4 T@Ref) ) (! (= (PredicateMaskField_4442 (Nodevalid$ this$_5@@4)) (|Nodevalid$#sm| this$_5@@4))
 :qid |stdinbpl.492:15|
 :skolemid |33|
 :pattern ( (PredicateMaskField_4442 (Nodevalid$ this$_5@@4)))
)))
(assert (forall ((o_38@@9 T@Ref) (f_51 T@Field_8434_8435) (Heap@@38 T@PolymorphicMapType_8361) ) (!  (=> (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@38) o_38@@9 $allocated) (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@38) (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@38) o_38@@9 f_51) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@38) o_38@@9 f_51))
)))
(assert (forall ((p@@2 T@Field_4373_4443) (v_1@@1 T@FrameType) (q T@Field_4373_4443) (w@@1 T@FrameType) (r T@Field_4373_4443) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8421_8421 p@@2 v_1@@1 q w@@1) (InsidePredicate_8421_8421 q w@@1 r u)) (InsidePredicate_8421_8421 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8421_8421 p@@2 v_1@@1 q w@@1) (InsidePredicate_8421_8421 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_4373_4443) (v_1@@2 T@FrameType) (q@@0 T@Field_4373_4443) (w@@2 T@FrameType) (r@@0 T@Field_12193_12194) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_8421_8421 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8421_4442 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_8421_4442 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8421_8421 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8421_4442 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_4373_4443) (v_1@@3 T@FrameType) (q@@1 T@Field_12193_12194) (w@@3 T@FrameType) (r@@1 T@Field_4373_4443) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_8421_4442 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4442_8421 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_8421_8421 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8421_4442 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4442_8421 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_4373_4443) (v_1@@4 T@FrameType) (q@@2 T@Field_12193_12194) (w@@4 T@FrameType) (r@@2 T@Field_12193_12194) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_8421_4442 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4442_4442 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_8421_4442 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8421_4442 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4442_4442 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_12193_12194) (v_1@@5 T@FrameType) (q@@3 T@Field_4373_4443) (w@@5 T@FrameType) (r@@3 T@Field_4373_4443) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_4442_8421 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8421_8421 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_4442_8421 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4442_8421 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8421_8421 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_12193_12194) (v_1@@6 T@FrameType) (q@@4 T@Field_4373_4443) (w@@6 T@FrameType) (r@@4 T@Field_12193_12194) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_4442_8421 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8421_4442 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_4442_4442 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4442_8421 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8421_4442 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_12193_12194) (v_1@@7 T@FrameType) (q@@5 T@Field_12193_12194) (w@@7 T@FrameType) (r@@5 T@Field_4373_4443) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_4442_4442 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4442_8421 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_4442_8421 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4442_4442 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4442_8421 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_12193_12194) (v_1@@8 T@FrameType) (q@@6 T@Field_12193_12194) (w@@8 T@FrameType) (r@@6 T@Field_12193_12194) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_4442_4442 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4442_4442 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_4442_4442 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4442_4442 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4442_4442 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_8361) (Mask@@44 T@PolymorphicMapType_8382) (this$_4@@1 T@Ref) (i@@1 Int) ) (!  (=> (and (state Heap@@39 Mask@@44) (< AssumeFunctionsAbove 1)) (=> (not (= this$_4@@1 null)) (= (Nodecontains$ Heap@@39 this$_4@@1 i@@1)  (or (= i@@1 (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@39) this$_4@@1 Nodevalue$)) (and (not (= (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@39) this$_4@@1 Nodenext$) null)) (|Nodecontains$'| Heap@@39 (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@39) this$_4@@1 Nodenext$) i@@1))))))
 :qid |stdinbpl.359:15|
 :skolemid |30|
 :pattern ( (state Heap@@39 Mask@@44) (Nodecontains$ Heap@@39 this$_4@@1 i@@1))
 :pattern ( (state Heap@@39 Mask@@44) (|Nodecontains$#triggerStateless| this$_4@@1 i@@1) (|Nodevalid$#trigger_4442| Heap@@39 (Nodevalid$ this$_4@@1)))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@40 T@PolymorphicMapType_8361) (this$_4@@2 T@Ref) (i@@2 Int) ) (!  (and (= (Nodecontains$ Heap@@40 this$_4@@2 i@@2) (|Nodecontains$'| Heap@@40 this$_4@@2 i@@2)) (dummyFunction_2344 (|Nodecontains$#triggerStateless| this$_4@@2 i@@2)))
 :qid |stdinbpl.349:15|
 :skolemid |28|
 :pattern ( (Nodecontains$ Heap@@40 this$_4@@2 i@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@41 () T@PolymorphicMapType_8361)
(declare-fun this$_4@@3 () T@Ref)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_8382)
(declare-fun Heap@1 () T@PolymorphicMapType_8361)
(declare-fun Heap@3 () T@PolymorphicMapType_8361)
(declare-fun newPMask@0 () T@PolymorphicMapType_8910)
(declare-fun Heap@2 () T@PolymorphicMapType_8361)
(declare-fun Heap@0 () T@PolymorphicMapType_8361)
(declare-fun |Nodecontains$#trigger| (T@FrameType T@Ref Int) Bool)
(declare-fun i@@3 () Int)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_8382)
(declare-fun wildcard@3 () Real)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_8382)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_8382)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_4374 (T@Ref) T@FrameType)
(declare-fun FrameFragment_1204 (Int) T@FrameType)
(declare-fun FrameFragment_4443 (T@FrameType) T@FrameType)
(declare-fun wildcard@1 () Real)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_8382)
(declare-fun wildcard@2 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id |Nodecontains$#definedness|)
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
 (=> (= (ControlFlow 0 0) 21) (let ((anon13_Then_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (not (= (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodenext$) null))) (=> (not (= (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodenext$) null)) (=> (= (ControlFlow 0 8) (- 0 7)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| UnfoldingMask@3) null (Nodevalid$ (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodenext$))))))))))
(let ((anon9_correct true))
(let ((anon14_Else_correct  (=> (= (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@1) this$_4@@3 Nodenext$) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 3) 1)) anon9_correct))))
(let ((anon14_Then_correct  (=> (not (= (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@1) this$_4@@3 Nodenext$) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_6 T@Ref) (f_12 T@Field_8434_8435) ) (!  (=> (or (select (|PolymorphicMapType_8910_4373_4374#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| this$_4@@3))) o_6 f_12) (select (|PolymorphicMapType_8910_4373_4374#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@1) this$_4@@3 Nodenext$)))) o_6 f_12)) (select (|PolymorphicMapType_8910_4373_4374#PolymorphicMapType_8910| newPMask@0) o_6 f_12))
 :qid |stdinbpl.473:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8910_4373_4374#PolymorphicMapType_8910| newPMask@0) o_6 f_12))
)) (forall ((o_6@@0 T@Ref) (f_12@@0 T@Field_11798_1204) ) (!  (=> (or (select (|PolymorphicMapType_8910_4376_1204#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| this$_4@@3))) o_6@@0 f_12@@0) (select (|PolymorphicMapType_8910_4376_1204#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@1) this$_4@@3 Nodenext$)))) o_6@@0 f_12@@0)) (select (|PolymorphicMapType_8910_4376_1204#PolymorphicMapType_8910| newPMask@0) o_6@@0 f_12@@0))
 :qid |stdinbpl.473:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8910_4376_1204#PolymorphicMapType_8910| newPMask@0) o_6@@0 f_12@@0))
))) (forall ((o_6@@1 T@Ref) (f_12@@1 T@Field_8421_53) ) (!  (=> (or (select (|PolymorphicMapType_8910_4373_53#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| this$_4@@3))) o_6@@1 f_12@@1) (select (|PolymorphicMapType_8910_4373_53#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@1) this$_4@@3 Nodenext$)))) o_6@@1 f_12@@1)) (select (|PolymorphicMapType_8910_4373_53#PolymorphicMapType_8910| newPMask@0) o_6@@1 f_12@@1))
 :qid |stdinbpl.473:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8910_4373_53#PolymorphicMapType_8910| newPMask@0) o_6@@1 f_12@@1))
))) (forall ((o_6@@2 T@Ref) (f_12@@2 T@Field_4373_4443) ) (!  (=> (or (select (|PolymorphicMapType_8910_4373_12194#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| this$_4@@3))) o_6@@2 f_12@@2) (select (|PolymorphicMapType_8910_4373_12194#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@1) this$_4@@3 Nodenext$)))) o_6@@2 f_12@@2)) (select (|PolymorphicMapType_8910_4373_12194#PolymorphicMapType_8910| newPMask@0) o_6@@2 f_12@@2))
 :qid |stdinbpl.473:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8910_4373_12194#PolymorphicMapType_8910| newPMask@0) o_6@@2 f_12@@2))
))) (forall ((o_6@@3 T@Ref) (f_12@@3 T@Field_4373_15170) ) (!  (=> (or (select (|PolymorphicMapType_8910_4373_30804#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| this$_4@@3))) o_6@@3 f_12@@3) (select (|PolymorphicMapType_8910_4373_30804#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@1) this$_4@@3 Nodenext$)))) o_6@@3 f_12@@3)) (select (|PolymorphicMapType_8910_4373_30804#PolymorphicMapType_8910| newPMask@0) o_6@@3 f_12@@3))
 :qid |stdinbpl.473:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8910_4373_30804#PolymorphicMapType_8910| newPMask@0) o_6@@3 f_12@@3))
))) (forall ((o_6@@4 T@Ref) (f_12@@4 T@Field_4442_4374) ) (!  (=> (or (select (|PolymorphicMapType_8910_12193_4374#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| this$_4@@3))) o_6@@4 f_12@@4) (select (|PolymorphicMapType_8910_12193_4374#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@1) this$_4@@3 Nodenext$)))) o_6@@4 f_12@@4)) (select (|PolymorphicMapType_8910_12193_4374#PolymorphicMapType_8910| newPMask@0) o_6@@4 f_12@@4))
 :qid |stdinbpl.473:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8910_12193_4374#PolymorphicMapType_8910| newPMask@0) o_6@@4 f_12@@4))
))) (forall ((o_6@@5 T@Ref) (f_12@@5 T@Field_4442_1204) ) (!  (=> (or (select (|PolymorphicMapType_8910_12193_1204#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| this$_4@@3))) o_6@@5 f_12@@5) (select (|PolymorphicMapType_8910_12193_1204#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@1) this$_4@@3 Nodenext$)))) o_6@@5 f_12@@5)) (select (|PolymorphicMapType_8910_12193_1204#PolymorphicMapType_8910| newPMask@0) o_6@@5 f_12@@5))
 :qid |stdinbpl.473:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8910_12193_1204#PolymorphicMapType_8910| newPMask@0) o_6@@5 f_12@@5))
))) (forall ((o_6@@6 T@Ref) (f_12@@6 T@Field_4442_53) ) (!  (=> (or (select (|PolymorphicMapType_8910_12193_53#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| this$_4@@3))) o_6@@6 f_12@@6) (select (|PolymorphicMapType_8910_12193_53#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@1) this$_4@@3 Nodenext$)))) o_6@@6 f_12@@6)) (select (|PolymorphicMapType_8910_12193_53#PolymorphicMapType_8910| newPMask@0) o_6@@6 f_12@@6))
 :qid |stdinbpl.473:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8910_12193_53#PolymorphicMapType_8910| newPMask@0) o_6@@6 f_12@@6))
))) (forall ((o_6@@7 T@Ref) (f_12@@7 T@Field_12193_12194) ) (!  (=> (or (select (|PolymorphicMapType_8910_12193_12194#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| this$_4@@3))) o_6@@7 f_12@@7) (select (|PolymorphicMapType_8910_12193_12194#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@1) this$_4@@3 Nodenext$)))) o_6@@7 f_12@@7)) (select (|PolymorphicMapType_8910_12193_12194#PolymorphicMapType_8910| newPMask@0) o_6@@7 f_12@@7))
 :qid |stdinbpl.473:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8910_12193_12194#PolymorphicMapType_8910| newPMask@0) o_6@@7 f_12@@7))
))) (forall ((o_6@@8 T@Ref) (f_12@@8 T@Field_15165_15170) ) (!  (=> (or (select (|PolymorphicMapType_8910_12193_31852#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| this$_4@@3))) o_6@@8 f_12@@8) (select (|PolymorphicMapType_8910_12193_31852#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@1) this$_4@@3 Nodenext$)))) o_6@@8 f_12@@8)) (select (|PolymorphicMapType_8910_12193_31852#PolymorphicMapType_8910| newPMask@0) o_6@@8 f_12@@8))
 :qid |stdinbpl.473:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8910_12193_31852#PolymorphicMapType_8910| newPMask@0) o_6@@8 f_12@@8))
))) (= Heap@2 (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@1) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@1) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@1) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@1) (store (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@1) null (|Nodevalid$#sm| this$_4@@3) newPMask@0) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@1) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@1) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@1) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@1) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 2) 1))) anon9_correct))))
(let ((anon7_correct  (=> (and (= Heap@0 (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@41) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@41) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@41) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@41) (store (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@41) null (|Nodevalid$#sm| this$_4@@3) (PolymorphicMapType_8910 (store (|PolymorphicMapType_8910_4373_4374#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@41) null (|Nodevalid$#sm| this$_4@@3))) this$_4@@3 Nodenext$ true) (|PolymorphicMapType_8910_4376_1204#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@41) null (|Nodevalid$#sm| this$_4@@3))) (|PolymorphicMapType_8910_4373_53#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@41) null (|Nodevalid$#sm| this$_4@@3))) (|PolymorphicMapType_8910_4373_12194#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@41) null (|Nodevalid$#sm| this$_4@@3))) (|PolymorphicMapType_8910_4373_30804#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@41) null (|Nodevalid$#sm| this$_4@@3))) (|PolymorphicMapType_8910_12193_4374#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@41) null (|Nodevalid$#sm| this$_4@@3))) (|PolymorphicMapType_8910_12193_1204#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@41) null (|Nodevalid$#sm| this$_4@@3))) (|PolymorphicMapType_8910_12193_53#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@41) null (|Nodevalid$#sm| this$_4@@3))) (|PolymorphicMapType_8910_12193_12194#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@41) null (|Nodevalid$#sm| this$_4@@3))) (|PolymorphicMapType_8910_12193_31852#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@@41) null (|Nodevalid$#sm| this$_4@@3))))) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@@41) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@@41) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@@41) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@@41) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@@41))) (= Heap@1 (PolymorphicMapType_8361 (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@0) (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@0) (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@0) (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@0) (store (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@0) null (|Nodevalid$#sm| this$_4@@3) (PolymorphicMapType_8910 (|PolymorphicMapType_8910_4373_4374#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@0) null (|Nodevalid$#sm| this$_4@@3))) (store (|PolymorphicMapType_8910_4376_1204#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@0) null (|Nodevalid$#sm| this$_4@@3))) this$_4@@3 Nodevalue$ true) (|PolymorphicMapType_8910_4373_53#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@0) null (|Nodevalid$#sm| this$_4@@3))) (|PolymorphicMapType_8910_4373_12194#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@0) null (|Nodevalid$#sm| this$_4@@3))) (|PolymorphicMapType_8910_4373_30804#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@0) null (|Nodevalid$#sm| this$_4@@3))) (|PolymorphicMapType_8910_12193_4374#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@0) null (|Nodevalid$#sm| this$_4@@3))) (|PolymorphicMapType_8910_12193_1204#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@0) null (|Nodevalid$#sm| this$_4@@3))) (|PolymorphicMapType_8910_12193_53#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@0) null (|Nodevalid$#sm| this$_4@@3))) (|PolymorphicMapType_8910_12193_12194#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@0) null (|Nodevalid$#sm| this$_4@@3))) (|PolymorphicMapType_8910_12193_31852#PolymorphicMapType_8910| (select (|PolymorphicMapType_8361_4446_15257#PolymorphicMapType_8361| Heap@0) null (|Nodevalid$#sm| this$_4@@3))))) (|PolymorphicMapType_8361_4373_4443#PolymorphicMapType_8361| Heap@0) (|PolymorphicMapType_8361_4373_28003#PolymorphicMapType_8361| Heap@0) (|PolymorphicMapType_8361_4442_4374#PolymorphicMapType_8361| Heap@0) (|PolymorphicMapType_8361_4442_1204#PolymorphicMapType_8361| Heap@0) (|PolymorphicMapType_8361_4442_53#PolymorphicMapType_8361| Heap@0)))) (and (=> (= (ControlFlow 0 4) 2) anon14_Then_correct) (=> (= (ControlFlow 0 4) 3) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (and (|Nodecontains$#trigger| (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@41) null (Nodevalid$ (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodenext$))) (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodenext$) i@@3) (= (ControlFlow 0 10) 4)) anon7_correct)))
(let ((anon12_Then_correct  (=> (not (= (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodenext$) null)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_4373_4374 UnfoldingMask@3 this$_4@@3 Nodenext$)) (=> (HasDirectPerm_4373_4374 UnfoldingMask@3 this$_4@@3 Nodenext$) (and (=> (= (ControlFlow 0 11) 8) anon13_Then_correct) (=> (= (ControlFlow 0 11) 10) anon13_Else_correct)))))))
(let ((anon12_Else_correct  (=> (and (= (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodenext$) null) (= (ControlFlow 0 6) 4)) anon7_correct)))
(let ((anon11_Then_correct  (=> (not (= i@@3 (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodevalue$))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (HasDirectPerm_4373_4374 UnfoldingMask@3 this$_4@@3 Nodenext$)) (=> (HasDirectPerm_4373_4374 UnfoldingMask@3 this$_4@@3 Nodenext$) (and (=> (= (ControlFlow 0 13) 11) anon12_Then_correct) (=> (= (ControlFlow 0 13) 6) anon12_Else_correct)))))))
(let ((anon11_Else_correct  (=> (and (= i@@3 (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodevalue$)) (= (ControlFlow 0 5) 4)) anon7_correct)))
(let ((anon2_correct  (=> (state Heap@@41 UnfoldingMask@3) (and (=> (= (ControlFlow 0 15) (- 0 16)) (HasDirectPerm_4376_1204 UnfoldingMask@3 this$_4@@3 Nodevalue$)) (=> (HasDirectPerm_4376_1204 UnfoldingMask@3 this$_4@@3 Nodevalue$) (and (=> (= (ControlFlow 0 15) 13) anon11_Then_correct) (=> (= (ControlFlow 0 15) 5) anon11_Else_correct)))))))
(let ((anon10_Else_correct  (=> (= (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodenext$) null) (=> (and (= UnfoldingMask@3 UnfoldingMask@1) (= (ControlFlow 0 18) 15)) anon2_correct))))
(let ((anon10_Then_correct  (=> (not (= (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodenext$) null)) (=> (and (> wildcard@3 NoPerm) (= UnfoldingMask@2 (PolymorphicMapType_8382 (store (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| UnfoldingMask@1) null (Nodevalid$ (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodenext$)) (+ (select (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| UnfoldingMask@1) null (Nodevalid$ (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodenext$))) wildcard@3)) (|PolymorphicMapType_8382_4373_4374#PolymorphicMapType_8382| UnfoldingMask@1) (|PolymorphicMapType_8382_4376_1204#PolymorphicMapType_8382| UnfoldingMask@1) (|PolymorphicMapType_8382_4442_4374#PolymorphicMapType_8382| UnfoldingMask@1) (|PolymorphicMapType_8382_4442_1204#PolymorphicMapType_8382| UnfoldingMask@1) (|PolymorphicMapType_8382_4442_53#PolymorphicMapType_8382| UnfoldingMask@1) (|PolymorphicMapType_8382_4442_37243#PolymorphicMapType_8382| UnfoldingMask@1) (|PolymorphicMapType_8382_4373_4443#PolymorphicMapType_8382| UnfoldingMask@1) (|PolymorphicMapType_8382_4373_53#PolymorphicMapType_8382| UnfoldingMask@1) (|PolymorphicMapType_8382_4373_37642#PolymorphicMapType_8382| UnfoldingMask@1)))) (=> (and (and (InsidePredicate_4442_4442 (Nodevalid$ this$_4@@3) (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@41) null (Nodevalid$ this$_4@@3)) (Nodevalid$ (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodenext$)) (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@41) null (Nodevalid$ (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodenext$)))) (state Heap@@41 UnfoldingMask@2)) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 17) 15))) anon2_correct)))))
(let ((anon0_correct  (=> (and (and (state Heap@@41 ZeroMask) (not AssumePermUpperBound)) (and (select (|PolymorphicMapType_8361_4245_53#PolymorphicMapType_8361| Heap@@41) this$_4@@3 $allocated) (= AssumeFunctionsAbove 1))) (=> (and (and (and (not (= this$_4@@3 null)) (state Heap@@41 ZeroMask)) (and (> wildcard@0 NoPerm) (= Mask@0 (PolymorphicMapType_8382 (store (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| ZeroMask) null (Nodevalid$ this$_4@@3) (+ (select (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| ZeroMask) null (Nodevalid$ this$_4@@3)) wildcard@0)) (|PolymorphicMapType_8382_4373_4374#PolymorphicMapType_8382| ZeroMask) (|PolymorphicMapType_8382_4376_1204#PolymorphicMapType_8382| ZeroMask) (|PolymorphicMapType_8382_4442_4374#PolymorphicMapType_8382| ZeroMask) (|PolymorphicMapType_8382_4442_1204#PolymorphicMapType_8382| ZeroMask) (|PolymorphicMapType_8382_4442_53#PolymorphicMapType_8382| ZeroMask) (|PolymorphicMapType_8382_4442_37243#PolymorphicMapType_8382| ZeroMask) (|PolymorphicMapType_8382_4373_4443#PolymorphicMapType_8382| ZeroMask) (|PolymorphicMapType_8382_4373_53#PolymorphicMapType_8382| ZeroMask) (|PolymorphicMapType_8382_4373_37642#PolymorphicMapType_8382| ZeroMask))))) (and (and (state Heap@@41 Mask@0) (state Heap@@41 Mask@0)) (and (|Nodevalid$#trigger_4442| Heap@@41 (Nodevalid$ this$_4@@3)) (= (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@41) null (Nodevalid$ this$_4@@3)) (CombineFrames (FrameFragment_4374 (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodenext$)) (CombineFrames (FrameFragment_1204 (select (|PolymorphicMapType_8361_4376_1204#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodevalue$)) (FrameFragment_4443 (ite (not (= (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodenext$) null)) (select (|PolymorphicMapType_8361_4442_4443#PolymorphicMapType_8361| Heap@@41) null (Nodevalid$ (select (|PolymorphicMapType_8361_4248_4249#PolymorphicMapType_8361| Heap@@41) this$_4@@3 Nodenext$))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| Mask@0) null (Nodevalid$ this$_4@@3))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| Mask@0) null (Nodevalid$ this$_4@@3)))) (=> (and (and (and (> wildcard@1 NoPerm) (not (= this$_4@@3 null))) (and (= UnfoldingMask@0 (PolymorphicMapType_8382 (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| Mask@0) (store (|PolymorphicMapType_8382_4373_4374#PolymorphicMapType_8382| Mask@0) this$_4@@3 Nodenext$ (+ (select (|PolymorphicMapType_8382_4373_4374#PolymorphicMapType_8382| Mask@0) this$_4@@3 Nodenext$) wildcard@1)) (|PolymorphicMapType_8382_4376_1204#PolymorphicMapType_8382| Mask@0) (|PolymorphicMapType_8382_4442_4374#PolymorphicMapType_8382| Mask@0) (|PolymorphicMapType_8382_4442_1204#PolymorphicMapType_8382| Mask@0) (|PolymorphicMapType_8382_4442_53#PolymorphicMapType_8382| Mask@0) (|PolymorphicMapType_8382_4442_37243#PolymorphicMapType_8382| Mask@0) (|PolymorphicMapType_8382_4373_4443#PolymorphicMapType_8382| Mask@0) (|PolymorphicMapType_8382_4373_53#PolymorphicMapType_8382| Mask@0) (|PolymorphicMapType_8382_4373_37642#PolymorphicMapType_8382| Mask@0))) (state Heap@@41 UnfoldingMask@0))) (and (and (> wildcard@2 NoPerm) (not (= this$_4@@3 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_8382 (|PolymorphicMapType_8382_4442_4443#PolymorphicMapType_8382| UnfoldingMask@0) (|PolymorphicMapType_8382_4373_4374#PolymorphicMapType_8382| UnfoldingMask@0) (store (|PolymorphicMapType_8382_4376_1204#PolymorphicMapType_8382| UnfoldingMask@0) this$_4@@3 Nodevalue$ (+ (select (|PolymorphicMapType_8382_4376_1204#PolymorphicMapType_8382| UnfoldingMask@0) this$_4@@3 Nodevalue$) wildcard@2)) (|PolymorphicMapType_8382_4442_4374#PolymorphicMapType_8382| UnfoldingMask@0) (|PolymorphicMapType_8382_4442_1204#PolymorphicMapType_8382| UnfoldingMask@0) (|PolymorphicMapType_8382_4442_53#PolymorphicMapType_8382| UnfoldingMask@0) (|PolymorphicMapType_8382_4442_37243#PolymorphicMapType_8382| UnfoldingMask@0) (|PolymorphicMapType_8382_4373_4443#PolymorphicMapType_8382| UnfoldingMask@0) (|PolymorphicMapType_8382_4373_53#PolymorphicMapType_8382| UnfoldingMask@0) (|PolymorphicMapType_8382_4373_37642#PolymorphicMapType_8382| UnfoldingMask@0))) (state Heap@@41 UnfoldingMask@1)))) (and (=> (= (ControlFlow 0 19) 17) anon10_Then_correct) (=> (= (ControlFlow 0 19) 18) anon10_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 21) 19)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
