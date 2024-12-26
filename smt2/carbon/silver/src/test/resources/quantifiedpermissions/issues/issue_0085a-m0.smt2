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
(declare-sort T@Field_10271_53 0)
(declare-sort T@Field_10284_10285 0)
(declare-sort T@Field_16455_16457 0)
(declare-sort T@Field_16519_3275 0)
(declare-sort T@Field_16566_16567 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_16579_16584 0)
(declare-sort T@Field_17509_17510 0)
(declare-sort T@Field_17522_17527 0)
(declare-sort T@Field_6074_6083 0)
(declare-sort T@Field_6074_16584 0)
(declare-sort T@Field_6082_18924 0)
(declare-sort T@Field_6082_53 0)
(declare-sort T@Field_6082_10285 0)
(declare-sort T@Field_6082_3275 0)
(declare-sort T@Field_6107_18924 0)
(declare-sort T@Field_6107_53 0)
(declare-sort T@Field_6107_10285 0)
(declare-sort T@Field_6107_3275 0)
(declare-datatypes ((T@PolymorphicMapType_10232 0)) (((PolymorphicMapType_10232 (|PolymorphicMapType_10232_6074_17348#PolymorphicMapType_10232| (Array T@Ref T@Field_16455_16457 Real)) (|PolymorphicMapType_10232_6079_3275#PolymorphicMapType_10232| (Array T@Ref T@Field_16519_3275 Real)) (|PolymorphicMapType_10232_6082_6083#PolymorphicMapType_10232| (Array T@Ref T@Field_16566_16567 Real)) (|PolymorphicMapType_10232_6107_6108#PolymorphicMapType_10232| (Array T@Ref T@Field_17509_17510 Real)) (|PolymorphicMapType_10232_6074_6083#PolymorphicMapType_10232| (Array T@Ref T@Field_6074_6083 Real)) (|PolymorphicMapType_10232_6074_53#PolymorphicMapType_10232| (Array T@Ref T@Field_10271_53 Real)) (|PolymorphicMapType_10232_6074_10285#PolymorphicMapType_10232| (Array T@Ref T@Field_10284_10285 Real)) (|PolymorphicMapType_10232_6074_46712#PolymorphicMapType_10232| (Array T@Ref T@Field_6074_16584 Real)) (|PolymorphicMapType_10232_6082_46812#PolymorphicMapType_10232| (Array T@Ref T@Field_6082_18924 Real)) (|PolymorphicMapType_10232_6082_3275#PolymorphicMapType_10232| (Array T@Ref T@Field_6082_3275 Real)) (|PolymorphicMapType_10232_6082_53#PolymorphicMapType_10232| (Array T@Ref T@Field_6082_53 Real)) (|PolymorphicMapType_10232_6082_10285#PolymorphicMapType_10232| (Array T@Ref T@Field_6082_10285 Real)) (|PolymorphicMapType_10232_6082_47212#PolymorphicMapType_10232| (Array T@Ref T@Field_16579_16584 Real)) (|PolymorphicMapType_10232_6107_47312#PolymorphicMapType_10232| (Array T@Ref T@Field_6107_18924 Real)) (|PolymorphicMapType_10232_6107_3275#PolymorphicMapType_10232| (Array T@Ref T@Field_6107_3275 Real)) (|PolymorphicMapType_10232_6107_53#PolymorphicMapType_10232| (Array T@Ref T@Field_6107_53 Real)) (|PolymorphicMapType_10232_6107_10285#PolymorphicMapType_10232| (Array T@Ref T@Field_6107_10285 Real)) (|PolymorphicMapType_10232_6107_47712#PolymorphicMapType_10232| (Array T@Ref T@Field_17522_17527 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10760 0)) (((PolymorphicMapType_10760 (|PolymorphicMapType_10760_6074_23323#PolymorphicMapType_10760| (Array T@Ref T@Field_16455_16457 Bool)) (|PolymorphicMapType_10760_6079_3275#PolymorphicMapType_10760| (Array T@Ref T@Field_16519_3275 Bool)) (|PolymorphicMapType_10760_6074_53#PolymorphicMapType_10760| (Array T@Ref T@Field_10271_53 Bool)) (|PolymorphicMapType_10760_6074_10285#PolymorphicMapType_10760| (Array T@Ref T@Field_10284_10285 Bool)) (|PolymorphicMapType_10760_6074_16567#PolymorphicMapType_10760| (Array T@Ref T@Field_6074_6083 Bool)) (|PolymorphicMapType_10760_6074_35318#PolymorphicMapType_10760| (Array T@Ref T@Field_6074_16584 Bool)) (|PolymorphicMapType_10760_16566_35562#PolymorphicMapType_10760| (Array T@Ref T@Field_6082_18924 Bool)) (|PolymorphicMapType_10760_16566_3275#PolymorphicMapType_10760| (Array T@Ref T@Field_6082_3275 Bool)) (|PolymorphicMapType_10760_16566_53#PolymorphicMapType_10760| (Array T@Ref T@Field_6082_53 Bool)) (|PolymorphicMapType_10760_16566_10285#PolymorphicMapType_10760| (Array T@Ref T@Field_6082_10285 Bool)) (|PolymorphicMapType_10760_16566_16567#PolymorphicMapType_10760| (Array T@Ref T@Field_16566_16567 Bool)) (|PolymorphicMapType_10760_16566_36584#PolymorphicMapType_10760| (Array T@Ref T@Field_16579_16584 Bool)) (|PolymorphicMapType_10760_17509_36828#PolymorphicMapType_10760| (Array T@Ref T@Field_6107_18924 Bool)) (|PolymorphicMapType_10760_17509_3275#PolymorphicMapType_10760| (Array T@Ref T@Field_6107_3275 Bool)) (|PolymorphicMapType_10760_17509_53#PolymorphicMapType_10760| (Array T@Ref T@Field_6107_53 Bool)) (|PolymorphicMapType_10760_17509_10285#PolymorphicMapType_10760| (Array T@Ref T@Field_6107_10285 Bool)) (|PolymorphicMapType_10760_17509_16567#PolymorphicMapType_10760| (Array T@Ref T@Field_17509_17510 Bool)) (|PolymorphicMapType_10760_17509_37850#PolymorphicMapType_10760| (Array T@Ref T@Field_17522_17527 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10211 0)) (((PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| (Array T@Ref T@Field_10271_53 Bool)) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| (Array T@Ref T@Field_10284_10285 T@Ref)) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| (Array T@Ref T@Field_16455_16457 (Array T@Ref Bool))) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| (Array T@Ref T@Field_16519_3275 Int)) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| (Array T@Ref T@Field_16566_16567 T@FrameType)) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| (Array T@Ref T@Field_16579_16584 T@PolymorphicMapType_10760)) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| (Array T@Ref T@Field_17509_17510 T@FrameType)) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| (Array T@Ref T@Field_17522_17527 T@PolymorphicMapType_10760)) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| (Array T@Ref T@Field_6074_6083 T@FrameType)) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| (Array T@Ref T@Field_6074_16584 T@PolymorphicMapType_10760)) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| (Array T@Ref T@Field_6082_18924 (Array T@Ref Bool))) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| (Array T@Ref T@Field_6082_53 Bool)) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| (Array T@Ref T@Field_6082_10285 T@Ref)) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| (Array T@Ref T@Field_6082_3275 Int)) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| (Array T@Ref T@Field_6107_18924 (Array T@Ref Bool))) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| (Array T@Ref T@Field_6107_53 Bool)) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| (Array T@Ref T@Field_6107_10285 T@Ref)) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| (Array T@Ref T@Field_6107_3275 Int)) ) ) ))
(declare-fun $allocated () T@Field_10271_53)
(declare-fun n_10 () T@Field_16455_16457)
(declare-fun f_7 () T@Field_16519_3275)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10211 T@PolymorphicMapType_10211 T@PolymorphicMapType_10232) Bool)
(declare-fun IsPredicateField_6107_6108 (T@Field_17509_17510) Bool)
(declare-fun HasDirectPerm_6107_6108 (T@PolymorphicMapType_10232 T@Ref T@Field_17509_17510) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6107 (T@Field_17509_17510) T@Field_17522_17527)
(declare-fun IsPredicateField_6082_6083 (T@Field_16566_16567) Bool)
(declare-fun HasDirectPerm_6082_6083 (T@PolymorphicMapType_10232 T@Ref T@Field_16566_16567) Bool)
(declare-fun PredicateMaskField_6082 (T@Field_16566_16567) T@Field_16579_16584)
(declare-fun IsPredicateField_6074_33322 (T@Field_6074_6083) Bool)
(declare-fun HasDirectPerm_6074_6083 (T@PolymorphicMapType_10232 T@Ref T@Field_6074_6083) Bool)
(declare-fun PredicateMaskField_6074 (T@Field_6074_6083) T@Field_6074_16584)
(declare-fun IsWandField_6107_39653 (T@Field_17509_17510) Bool)
(declare-fun WandMaskField_6107 (T@Field_17509_17510) T@Field_17522_17527)
(declare-fun IsWandField_6082_39296 (T@Field_16566_16567) Bool)
(declare-fun WandMaskField_6082 (T@Field_16566_16567) T@Field_16579_16584)
(declare-fun IsWandField_6074_38939 (T@Field_6074_6083) Bool)
(declare-fun WandMaskField_6074 (T@Field_6074_6083) T@Field_6074_16584)
(declare-fun succHeap (T@PolymorphicMapType_10211 T@PolymorphicMapType_10211) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10211 T@PolymorphicMapType_10211) Bool)
(declare-fun state (T@PolymorphicMapType_10211 T@PolymorphicMapType_10232) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10232) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10760)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun P (T@Ref) T@Field_16566_16567)
(declare-fun inv (T@Ref) T@Field_17509_17510)
(declare-fun |P#trigger_6082| (T@PolymorphicMapType_10211 T@Field_16566_16567) Bool)
(declare-fun |P#everUsed_6082| (T@Field_16566_16567) Bool)
(declare-fun |inv#trigger_6107| (T@PolymorphicMapType_10211 T@Field_17509_17510) Bool)
(declare-fun |inv#everUsed_6107| (T@Field_17509_17510) Bool)
(declare-fun |inv#condqp1| (T@PolymorphicMapType_10211 T@Ref) Int)
(declare-fun |sk_inv#condqp1| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun |Math#clip| (Int) Int)
(declare-fun |P#sm| (T@Ref) T@Field_16579_16584)
(declare-fun |inv#sm| (T@Ref) T@Field_17522_17527)
(declare-fun dummyHeap () T@PolymorphicMapType_10211)
(declare-fun ZeroMask () T@PolymorphicMapType_10232)
(declare-fun InsidePredicate_17509_17509 (T@Field_17509_17510 T@FrameType T@Field_17509_17510 T@FrameType) Bool)
(declare-fun InsidePredicate_16566_16566 (T@Field_16566_16567 T@FrameType T@Field_16566_16567 T@FrameType) Bool)
(declare-fun InsidePredicate_10271_10271 (T@Field_6074_6083 T@FrameType T@Field_6074_6083 T@FrameType) Bool)
(declare-fun IsPredicateField_6074_16481 (T@Field_16455_16457) Bool)
(declare-fun IsWandField_6074_16508 (T@Field_16455_16457) Bool)
(declare-fun IsPredicateField_6079_3275 (T@Field_16519_3275) Bool)
(declare-fun IsWandField_6079_3275 (T@Field_16519_3275) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6107_51876 (T@Field_17522_17527) Bool)
(declare-fun IsWandField_6107_51892 (T@Field_17522_17527) Bool)
(declare-fun IsPredicateField_6107_10285 (T@Field_6107_10285) Bool)
(declare-fun IsWandField_6107_10285 (T@Field_6107_10285) Bool)
(declare-fun IsPredicateField_6107_53 (T@Field_6107_53) Bool)
(declare-fun IsWandField_6107_53 (T@Field_6107_53) Bool)
(declare-fun IsPredicateField_6107_3275 (T@Field_6107_3275) Bool)
(declare-fun IsWandField_6107_3275 (T@Field_6107_3275) Bool)
(declare-fun IsPredicateField_6107_51045 (T@Field_6107_18924) Bool)
(declare-fun IsWandField_6107_51061 (T@Field_6107_18924) Bool)
(declare-fun IsPredicateField_6082_50872 (T@Field_16579_16584) Bool)
(declare-fun IsWandField_6082_50888 (T@Field_16579_16584) Bool)
(declare-fun IsPredicateField_6082_10285 (T@Field_6082_10285) Bool)
(declare-fun IsWandField_6082_10285 (T@Field_6082_10285) Bool)
(declare-fun IsPredicateField_6082_53 (T@Field_6082_53) Bool)
(declare-fun IsWandField_6082_53 (T@Field_6082_53) Bool)
(declare-fun IsPredicateField_6082_3275 (T@Field_6082_3275) Bool)
(declare-fun IsWandField_6082_3275 (T@Field_6082_3275) Bool)
(declare-fun IsPredicateField_6082_50041 (T@Field_6082_18924) Bool)
(declare-fun IsWandField_6082_50057 (T@Field_6082_18924) Bool)
(declare-fun IsPredicateField_6074_49868 (T@Field_6074_16584) Bool)
(declare-fun IsWandField_6074_49884 (T@Field_6074_16584) Bool)
(declare-fun IsPredicateField_6074_10285 (T@Field_10284_10285) Bool)
(declare-fun IsWandField_6074_10285 (T@Field_10284_10285) Bool)
(declare-fun IsPredicateField_6074_53 (T@Field_10271_53) Bool)
(declare-fun IsWandField_6074_53 (T@Field_10271_53) Bool)
(declare-fun HasDirectPerm_6107_33077 (T@PolymorphicMapType_10232 T@Ref T@Field_17522_17527) Bool)
(declare-fun HasDirectPerm_6107_3275 (T@PolymorphicMapType_10232 T@Ref T@Field_6107_3275) Bool)
(declare-fun HasDirectPerm_6107_10285 (T@PolymorphicMapType_10232 T@Ref T@Field_6107_10285) Bool)
(declare-fun HasDirectPerm_6107_53 (T@PolymorphicMapType_10232 T@Ref T@Field_6107_53) Bool)
(declare-fun HasDirectPerm_6107_31970 (T@PolymorphicMapType_10232 T@Ref T@Field_6107_18924) Bool)
(declare-fun HasDirectPerm_6082_31733 (T@PolymorphicMapType_10232 T@Ref T@Field_16579_16584) Bool)
(declare-fun HasDirectPerm_6082_3275 (T@PolymorphicMapType_10232 T@Ref T@Field_6082_3275) Bool)
(declare-fun HasDirectPerm_6082_10285 (T@PolymorphicMapType_10232 T@Ref T@Field_6082_10285) Bool)
(declare-fun HasDirectPerm_6082_53 (T@PolymorphicMapType_10232 T@Ref T@Field_6082_53) Bool)
(declare-fun HasDirectPerm_6082_30626 (T@PolymorphicMapType_10232 T@Ref T@Field_6082_18924) Bool)
(declare-fun HasDirectPerm_6074_30346 (T@PolymorphicMapType_10232 T@Ref T@Field_6074_16584) Bool)
(declare-fun HasDirectPerm_6074_3275 (T@PolymorphicMapType_10232 T@Ref T@Field_16519_3275) Bool)
(declare-fun HasDirectPerm_6074_10285 (T@PolymorphicMapType_10232 T@Ref T@Field_10284_10285) Bool)
(declare-fun HasDirectPerm_6074_53 (T@PolymorphicMapType_10232 T@Ref T@Field_10271_53) Bool)
(declare-fun HasDirectPerm_6074_18924 (T@PolymorphicMapType_10232 T@Ref T@Field_16455_16457) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10232 T@PolymorphicMapType_10232 T@PolymorphicMapType_10232) Bool)
(declare-fun getPredWandId_6082_6083 (T@Field_16566_16567) Int)
(declare-fun getPredWandId_6107_6108 (T@Field_17509_17510) Int)
(declare-fun InsidePredicate_17509_16566 (T@Field_17509_17510 T@FrameType T@Field_16566_16567 T@FrameType) Bool)
(declare-fun InsidePredicate_17509_10271 (T@Field_17509_17510 T@FrameType T@Field_6074_6083 T@FrameType) Bool)
(declare-fun InsidePredicate_16566_17509 (T@Field_16566_16567 T@FrameType T@Field_17509_17510 T@FrameType) Bool)
(declare-fun InsidePredicate_16566_10271 (T@Field_16566_16567 T@FrameType T@Field_6074_6083 T@FrameType) Bool)
(declare-fun InsidePredicate_10271_17509 (T@Field_6074_6083 T@FrameType T@Field_17509_17510 T@FrameType) Bool)
(declare-fun InsidePredicate_10271_16566 (T@Field_6074_6083 T@FrameType T@Field_16566_16567 T@FrameType) Bool)
(assert (forall ((Heap T@PolymorphicMapType_10211) (ExhaleHeap T@PolymorphicMapType_10211) (Mask T@PolymorphicMapType_10232) (pm_f_9 T@Field_17509_17510) ) (!  (=> (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (=> (and (HasDirectPerm_6107_6108 Mask null pm_f_9) (IsPredicateField_6107_6108 pm_f_9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_16455_16457) ) (!  (=> (select (|PolymorphicMapType_10760_6074_23323#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) null (PredicateMaskField_6107 pm_f_9))) o2_9 f_24) (= (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap) o2_9 f_24) (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| ExhaleHeap) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| ExhaleHeap) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_16519_3275) ) (!  (=> (select (|PolymorphicMapType_10760_6079_3275#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) null (PredicateMaskField_6107 pm_f_9))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| ExhaleHeap) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| ExhaleHeap) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_10271_53) ) (!  (=> (select (|PolymorphicMapType_10760_6074_53#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) null (PredicateMaskField_6107 pm_f_9))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| ExhaleHeap) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| ExhaleHeap) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_10284_10285) ) (!  (=> (select (|PolymorphicMapType_10760_6074_10285#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) null (PredicateMaskField_6107 pm_f_9))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| ExhaleHeap) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| ExhaleHeap) o2_9@@2 f_24@@2))
))) (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_6074_6083) ) (!  (=> (select (|PolymorphicMapType_10760_6074_16567#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) null (PredicateMaskField_6107 pm_f_9))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| ExhaleHeap) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| ExhaleHeap) o2_9@@3 f_24@@3))
))) (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_6074_16584) ) (!  (=> (select (|PolymorphicMapType_10760_6074_35318#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) null (PredicateMaskField_6107 pm_f_9))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| ExhaleHeap) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| ExhaleHeap) o2_9@@4 f_24@@4))
))) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_6082_18924) ) (!  (=> (select (|PolymorphicMapType_10760_16566_35562#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) null (PredicateMaskField_6107 pm_f_9))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| ExhaleHeap) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| ExhaleHeap) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_6082_3275) ) (!  (=> (select (|PolymorphicMapType_10760_16566_3275#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) null (PredicateMaskField_6107 pm_f_9))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| ExhaleHeap) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| ExhaleHeap) o2_9@@6 f_24@@6))
))) (forall ((o2_9@@7 T@Ref) (f_24@@7 T@Field_6082_53) ) (!  (=> (select (|PolymorphicMapType_10760_16566_53#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) null (PredicateMaskField_6107 pm_f_9))) o2_9@@7 f_24@@7) (= (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap) o2_9@@7 f_24@@7) (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| ExhaleHeap) o2_9@@7 f_24@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| ExhaleHeap) o2_9@@7 f_24@@7))
))) (forall ((o2_9@@8 T@Ref) (f_24@@8 T@Field_6082_10285) ) (!  (=> (select (|PolymorphicMapType_10760_16566_10285#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) null (PredicateMaskField_6107 pm_f_9))) o2_9@@8 f_24@@8) (= (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap) o2_9@@8 f_24@@8) (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| ExhaleHeap) o2_9@@8 f_24@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| ExhaleHeap) o2_9@@8 f_24@@8))
))) (forall ((o2_9@@9 T@Ref) (f_24@@9 T@Field_16566_16567) ) (!  (=> (select (|PolymorphicMapType_10760_16566_16567#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) null (PredicateMaskField_6107 pm_f_9))) o2_9@@9 f_24@@9) (= (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap) o2_9@@9 f_24@@9) (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| ExhaleHeap) o2_9@@9 f_24@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| ExhaleHeap) o2_9@@9 f_24@@9))
))) (forall ((o2_9@@10 T@Ref) (f_24@@10 T@Field_16579_16584) ) (!  (=> (select (|PolymorphicMapType_10760_16566_36584#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) null (PredicateMaskField_6107 pm_f_9))) o2_9@@10 f_24@@10) (= (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap) o2_9@@10 f_24@@10) (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| ExhaleHeap) o2_9@@10 f_24@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| ExhaleHeap) o2_9@@10 f_24@@10))
))) (forall ((o2_9@@11 T@Ref) (f_24@@11 T@Field_6107_18924) ) (!  (=> (select (|PolymorphicMapType_10760_17509_36828#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) null (PredicateMaskField_6107 pm_f_9))) o2_9@@11 f_24@@11) (= (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap) o2_9@@11 f_24@@11) (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| ExhaleHeap) o2_9@@11 f_24@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| ExhaleHeap) o2_9@@11 f_24@@11))
))) (forall ((o2_9@@12 T@Ref) (f_24@@12 T@Field_6107_3275) ) (!  (=> (select (|PolymorphicMapType_10760_17509_3275#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) null (PredicateMaskField_6107 pm_f_9))) o2_9@@12 f_24@@12) (= (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap) o2_9@@12 f_24@@12) (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| ExhaleHeap) o2_9@@12 f_24@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| ExhaleHeap) o2_9@@12 f_24@@12))
))) (forall ((o2_9@@13 T@Ref) (f_24@@13 T@Field_6107_53) ) (!  (=> (select (|PolymorphicMapType_10760_17509_53#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) null (PredicateMaskField_6107 pm_f_9))) o2_9@@13 f_24@@13) (= (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap) o2_9@@13 f_24@@13) (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| ExhaleHeap) o2_9@@13 f_24@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| ExhaleHeap) o2_9@@13 f_24@@13))
))) (forall ((o2_9@@14 T@Ref) (f_24@@14 T@Field_6107_10285) ) (!  (=> (select (|PolymorphicMapType_10760_17509_10285#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) null (PredicateMaskField_6107 pm_f_9))) o2_9@@14 f_24@@14) (= (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap) o2_9@@14 f_24@@14) (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| ExhaleHeap) o2_9@@14 f_24@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| ExhaleHeap) o2_9@@14 f_24@@14))
))) (forall ((o2_9@@15 T@Ref) (f_24@@15 T@Field_17509_17510) ) (!  (=> (select (|PolymorphicMapType_10760_17509_16567#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) null (PredicateMaskField_6107 pm_f_9))) o2_9@@15 f_24@@15) (= (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap) o2_9@@15 f_24@@15) (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| ExhaleHeap) o2_9@@15 f_24@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| ExhaleHeap) o2_9@@15 f_24@@15))
))) (forall ((o2_9@@16 T@Ref) (f_24@@16 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_10760_17509_37850#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) null (PredicateMaskField_6107 pm_f_9))) o2_9@@16 f_24@@16) (= (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap) o2_9@@16 f_24@@16) (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| ExhaleHeap) o2_9@@16 f_24@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| ExhaleHeap) o2_9@@16 f_24@@16))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (IsPredicateField_6107_6108 pm_f_9))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10211) (ExhaleHeap@@0 T@PolymorphicMapType_10211) (Mask@@0 T@PolymorphicMapType_10232) (pm_f_9@@0 T@Field_16566_16567) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (=> (and (HasDirectPerm_6082_6083 Mask@@0 null pm_f_9@@0) (IsPredicateField_6082_6083 pm_f_9@@0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@17 T@Ref) (f_24@@17 T@Field_16455_16457) ) (!  (=> (select (|PolymorphicMapType_10760_6074_23323#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) null (PredicateMaskField_6082 pm_f_9@@0))) o2_9@@17 f_24@@17) (= (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@0) o2_9@@17 f_24@@17) (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@17 f_24@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@17 f_24@@17))
)) (forall ((o2_9@@18 T@Ref) (f_24@@18 T@Field_16519_3275) ) (!  (=> (select (|PolymorphicMapType_10760_6079_3275#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) null (PredicateMaskField_6082 pm_f_9@@0))) o2_9@@18 f_24@@18) (= (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@0) o2_9@@18 f_24@@18) (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@18 f_24@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@18 f_24@@18))
))) (forall ((o2_9@@19 T@Ref) (f_24@@19 T@Field_10271_53) ) (!  (=> (select (|PolymorphicMapType_10760_6074_53#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) null (PredicateMaskField_6082 pm_f_9@@0))) o2_9@@19 f_24@@19) (= (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@0) o2_9@@19 f_24@@19) (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@19 f_24@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@19 f_24@@19))
))) (forall ((o2_9@@20 T@Ref) (f_24@@20 T@Field_10284_10285) ) (!  (=> (select (|PolymorphicMapType_10760_6074_10285#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) null (PredicateMaskField_6082 pm_f_9@@0))) o2_9@@20 f_24@@20) (= (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@0) o2_9@@20 f_24@@20) (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@20 f_24@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@20 f_24@@20))
))) (forall ((o2_9@@21 T@Ref) (f_24@@21 T@Field_6074_6083) ) (!  (=> (select (|PolymorphicMapType_10760_6074_16567#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) null (PredicateMaskField_6082 pm_f_9@@0))) o2_9@@21 f_24@@21) (= (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@0) o2_9@@21 f_24@@21) (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@21 f_24@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@21 f_24@@21))
))) (forall ((o2_9@@22 T@Ref) (f_24@@22 T@Field_6074_16584) ) (!  (=> (select (|PolymorphicMapType_10760_6074_35318#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) null (PredicateMaskField_6082 pm_f_9@@0))) o2_9@@22 f_24@@22) (= (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@0) o2_9@@22 f_24@@22) (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@22 f_24@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@22 f_24@@22))
))) (forall ((o2_9@@23 T@Ref) (f_24@@23 T@Field_6082_18924) ) (!  (=> (select (|PolymorphicMapType_10760_16566_35562#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) null (PredicateMaskField_6082 pm_f_9@@0))) o2_9@@23 f_24@@23) (= (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@0) o2_9@@23 f_24@@23) (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@23 f_24@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@23 f_24@@23))
))) (forall ((o2_9@@24 T@Ref) (f_24@@24 T@Field_6082_3275) ) (!  (=> (select (|PolymorphicMapType_10760_16566_3275#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) null (PredicateMaskField_6082 pm_f_9@@0))) o2_9@@24 f_24@@24) (= (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@0) o2_9@@24 f_24@@24) (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@24 f_24@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@24 f_24@@24))
))) (forall ((o2_9@@25 T@Ref) (f_24@@25 T@Field_6082_53) ) (!  (=> (select (|PolymorphicMapType_10760_16566_53#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) null (PredicateMaskField_6082 pm_f_9@@0))) o2_9@@25 f_24@@25) (= (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@0) o2_9@@25 f_24@@25) (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@25 f_24@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@25 f_24@@25))
))) (forall ((o2_9@@26 T@Ref) (f_24@@26 T@Field_6082_10285) ) (!  (=> (select (|PolymorphicMapType_10760_16566_10285#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) null (PredicateMaskField_6082 pm_f_9@@0))) o2_9@@26 f_24@@26) (= (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@0) o2_9@@26 f_24@@26) (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@26 f_24@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@26 f_24@@26))
))) (forall ((o2_9@@27 T@Ref) (f_24@@27 T@Field_16566_16567) ) (!  (=> (select (|PolymorphicMapType_10760_16566_16567#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) null (PredicateMaskField_6082 pm_f_9@@0))) o2_9@@27 f_24@@27) (= (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@0) o2_9@@27 f_24@@27) (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@27 f_24@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@27 f_24@@27))
))) (forall ((o2_9@@28 T@Ref) (f_24@@28 T@Field_16579_16584) ) (!  (=> (select (|PolymorphicMapType_10760_16566_36584#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) null (PredicateMaskField_6082 pm_f_9@@0))) o2_9@@28 f_24@@28) (= (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) o2_9@@28 f_24@@28) (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@28 f_24@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@28 f_24@@28))
))) (forall ((o2_9@@29 T@Ref) (f_24@@29 T@Field_6107_18924) ) (!  (=> (select (|PolymorphicMapType_10760_17509_36828#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) null (PredicateMaskField_6082 pm_f_9@@0))) o2_9@@29 f_24@@29) (= (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@0) o2_9@@29 f_24@@29) (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@29 f_24@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@29 f_24@@29))
))) (forall ((o2_9@@30 T@Ref) (f_24@@30 T@Field_6107_3275) ) (!  (=> (select (|PolymorphicMapType_10760_17509_3275#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) null (PredicateMaskField_6082 pm_f_9@@0))) o2_9@@30 f_24@@30) (= (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@0) o2_9@@30 f_24@@30) (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@30 f_24@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@30 f_24@@30))
))) (forall ((o2_9@@31 T@Ref) (f_24@@31 T@Field_6107_53) ) (!  (=> (select (|PolymorphicMapType_10760_17509_53#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) null (PredicateMaskField_6082 pm_f_9@@0))) o2_9@@31 f_24@@31) (= (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@0) o2_9@@31 f_24@@31) (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@31 f_24@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@31 f_24@@31))
))) (forall ((o2_9@@32 T@Ref) (f_24@@32 T@Field_6107_10285) ) (!  (=> (select (|PolymorphicMapType_10760_17509_10285#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) null (PredicateMaskField_6082 pm_f_9@@0))) o2_9@@32 f_24@@32) (= (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@0) o2_9@@32 f_24@@32) (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@32 f_24@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@32 f_24@@32))
))) (forall ((o2_9@@33 T@Ref) (f_24@@33 T@Field_17509_17510) ) (!  (=> (select (|PolymorphicMapType_10760_17509_16567#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) null (PredicateMaskField_6082 pm_f_9@@0))) o2_9@@33 f_24@@33) (= (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@0) o2_9@@33 f_24@@33) (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@33 f_24@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@33 f_24@@33))
))) (forall ((o2_9@@34 T@Ref) (f_24@@34 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_10760_17509_37850#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@0) null (PredicateMaskField_6082 pm_f_9@@0))) o2_9@@34 f_24@@34) (= (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@0) o2_9@@34 f_24@@34) (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@34 f_24@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| ExhaleHeap@@0) o2_9@@34 f_24@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (IsPredicateField_6082_6083 pm_f_9@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10211) (ExhaleHeap@@1 T@PolymorphicMapType_10211) (Mask@@1 T@PolymorphicMapType_10232) (pm_f_9@@1 T@Field_6074_6083) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (=> (and (HasDirectPerm_6074_6083 Mask@@1 null pm_f_9@@1) (IsPredicateField_6074_33322 pm_f_9@@1)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@35 T@Ref) (f_24@@35 T@Field_16455_16457) ) (!  (=> (select (|PolymorphicMapType_10760_6074_23323#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) null (PredicateMaskField_6074 pm_f_9@@1))) o2_9@@35 f_24@@35) (= (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@1) o2_9@@35 f_24@@35) (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@35 f_24@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@35 f_24@@35))
)) (forall ((o2_9@@36 T@Ref) (f_24@@36 T@Field_16519_3275) ) (!  (=> (select (|PolymorphicMapType_10760_6079_3275#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) null (PredicateMaskField_6074 pm_f_9@@1))) o2_9@@36 f_24@@36) (= (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@1) o2_9@@36 f_24@@36) (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@36 f_24@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@36 f_24@@36))
))) (forall ((o2_9@@37 T@Ref) (f_24@@37 T@Field_10271_53) ) (!  (=> (select (|PolymorphicMapType_10760_6074_53#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) null (PredicateMaskField_6074 pm_f_9@@1))) o2_9@@37 f_24@@37) (= (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@1) o2_9@@37 f_24@@37) (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@37 f_24@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@37 f_24@@37))
))) (forall ((o2_9@@38 T@Ref) (f_24@@38 T@Field_10284_10285) ) (!  (=> (select (|PolymorphicMapType_10760_6074_10285#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) null (PredicateMaskField_6074 pm_f_9@@1))) o2_9@@38 f_24@@38) (= (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@1) o2_9@@38 f_24@@38) (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@38 f_24@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@38 f_24@@38))
))) (forall ((o2_9@@39 T@Ref) (f_24@@39 T@Field_6074_6083) ) (!  (=> (select (|PolymorphicMapType_10760_6074_16567#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) null (PredicateMaskField_6074 pm_f_9@@1))) o2_9@@39 f_24@@39) (= (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@1) o2_9@@39 f_24@@39) (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@39 f_24@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@39 f_24@@39))
))) (forall ((o2_9@@40 T@Ref) (f_24@@40 T@Field_6074_16584) ) (!  (=> (select (|PolymorphicMapType_10760_6074_35318#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) null (PredicateMaskField_6074 pm_f_9@@1))) o2_9@@40 f_24@@40) (= (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) o2_9@@40 f_24@@40) (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@40 f_24@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@40 f_24@@40))
))) (forall ((o2_9@@41 T@Ref) (f_24@@41 T@Field_6082_18924) ) (!  (=> (select (|PolymorphicMapType_10760_16566_35562#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) null (PredicateMaskField_6074 pm_f_9@@1))) o2_9@@41 f_24@@41) (= (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@1) o2_9@@41 f_24@@41) (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@41 f_24@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@41 f_24@@41))
))) (forall ((o2_9@@42 T@Ref) (f_24@@42 T@Field_6082_3275) ) (!  (=> (select (|PolymorphicMapType_10760_16566_3275#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) null (PredicateMaskField_6074 pm_f_9@@1))) o2_9@@42 f_24@@42) (= (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@1) o2_9@@42 f_24@@42) (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@42 f_24@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@42 f_24@@42))
))) (forall ((o2_9@@43 T@Ref) (f_24@@43 T@Field_6082_53) ) (!  (=> (select (|PolymorphicMapType_10760_16566_53#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) null (PredicateMaskField_6074 pm_f_9@@1))) o2_9@@43 f_24@@43) (= (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@1) o2_9@@43 f_24@@43) (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@43 f_24@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@43 f_24@@43))
))) (forall ((o2_9@@44 T@Ref) (f_24@@44 T@Field_6082_10285) ) (!  (=> (select (|PolymorphicMapType_10760_16566_10285#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) null (PredicateMaskField_6074 pm_f_9@@1))) o2_9@@44 f_24@@44) (= (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@1) o2_9@@44 f_24@@44) (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@44 f_24@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@44 f_24@@44))
))) (forall ((o2_9@@45 T@Ref) (f_24@@45 T@Field_16566_16567) ) (!  (=> (select (|PolymorphicMapType_10760_16566_16567#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) null (PredicateMaskField_6074 pm_f_9@@1))) o2_9@@45 f_24@@45) (= (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@1) o2_9@@45 f_24@@45) (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@45 f_24@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@45 f_24@@45))
))) (forall ((o2_9@@46 T@Ref) (f_24@@46 T@Field_16579_16584) ) (!  (=> (select (|PolymorphicMapType_10760_16566_36584#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) null (PredicateMaskField_6074 pm_f_9@@1))) o2_9@@46 f_24@@46) (= (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@1) o2_9@@46 f_24@@46) (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@46 f_24@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@46 f_24@@46))
))) (forall ((o2_9@@47 T@Ref) (f_24@@47 T@Field_6107_18924) ) (!  (=> (select (|PolymorphicMapType_10760_17509_36828#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) null (PredicateMaskField_6074 pm_f_9@@1))) o2_9@@47 f_24@@47) (= (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@1) o2_9@@47 f_24@@47) (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@47 f_24@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@47 f_24@@47))
))) (forall ((o2_9@@48 T@Ref) (f_24@@48 T@Field_6107_3275) ) (!  (=> (select (|PolymorphicMapType_10760_17509_3275#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) null (PredicateMaskField_6074 pm_f_9@@1))) o2_9@@48 f_24@@48) (= (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@1) o2_9@@48 f_24@@48) (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@48 f_24@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@48 f_24@@48))
))) (forall ((o2_9@@49 T@Ref) (f_24@@49 T@Field_6107_53) ) (!  (=> (select (|PolymorphicMapType_10760_17509_53#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) null (PredicateMaskField_6074 pm_f_9@@1))) o2_9@@49 f_24@@49) (= (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@1) o2_9@@49 f_24@@49) (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@49 f_24@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@49 f_24@@49))
))) (forall ((o2_9@@50 T@Ref) (f_24@@50 T@Field_6107_10285) ) (!  (=> (select (|PolymorphicMapType_10760_17509_10285#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) null (PredicateMaskField_6074 pm_f_9@@1))) o2_9@@50 f_24@@50) (= (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@1) o2_9@@50 f_24@@50) (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@50 f_24@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@50 f_24@@50))
))) (forall ((o2_9@@51 T@Ref) (f_24@@51 T@Field_17509_17510) ) (!  (=> (select (|PolymorphicMapType_10760_17509_16567#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) null (PredicateMaskField_6074 pm_f_9@@1))) o2_9@@51 f_24@@51) (= (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@1) o2_9@@51 f_24@@51) (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@51 f_24@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@51 f_24@@51))
))) (forall ((o2_9@@52 T@Ref) (f_24@@52 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_10760_17509_37850#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@1) null (PredicateMaskField_6074 pm_f_9@@1))) o2_9@@52 f_24@@52) (= (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@1) o2_9@@52 f_24@@52) (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@52 f_24@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| ExhaleHeap@@1) o2_9@@52 f_24@@52))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (IsPredicateField_6074_33322 pm_f_9@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10211) (ExhaleHeap@@2 T@PolymorphicMapType_10211) (Mask@@2 T@PolymorphicMapType_10232) (pm_f_9@@2 T@Field_17509_17510) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (=> (and (HasDirectPerm_6107_6108 Mask@@2 null pm_f_9@@2) (IsWandField_6107_39653 pm_f_9@@2)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@53 T@Ref) (f_24@@53 T@Field_16455_16457) ) (!  (=> (select (|PolymorphicMapType_10760_6074_23323#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) null (WandMaskField_6107 pm_f_9@@2))) o2_9@@53 f_24@@53) (= (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@2) o2_9@@53 f_24@@53) (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@53 f_24@@53)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@53 f_24@@53))
)) (forall ((o2_9@@54 T@Ref) (f_24@@54 T@Field_16519_3275) ) (!  (=> (select (|PolymorphicMapType_10760_6079_3275#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) null (WandMaskField_6107 pm_f_9@@2))) o2_9@@54 f_24@@54) (= (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@2) o2_9@@54 f_24@@54) (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@54 f_24@@54)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@54 f_24@@54))
))) (forall ((o2_9@@55 T@Ref) (f_24@@55 T@Field_10271_53) ) (!  (=> (select (|PolymorphicMapType_10760_6074_53#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) null (WandMaskField_6107 pm_f_9@@2))) o2_9@@55 f_24@@55) (= (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@2) o2_9@@55 f_24@@55) (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@55 f_24@@55)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@55 f_24@@55))
))) (forall ((o2_9@@56 T@Ref) (f_24@@56 T@Field_10284_10285) ) (!  (=> (select (|PolymorphicMapType_10760_6074_10285#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) null (WandMaskField_6107 pm_f_9@@2))) o2_9@@56 f_24@@56) (= (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@2) o2_9@@56 f_24@@56) (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@56 f_24@@56)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@56 f_24@@56))
))) (forall ((o2_9@@57 T@Ref) (f_24@@57 T@Field_6074_6083) ) (!  (=> (select (|PolymorphicMapType_10760_6074_16567#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) null (WandMaskField_6107 pm_f_9@@2))) o2_9@@57 f_24@@57) (= (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@2) o2_9@@57 f_24@@57) (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@57 f_24@@57)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@57 f_24@@57))
))) (forall ((o2_9@@58 T@Ref) (f_24@@58 T@Field_6074_16584) ) (!  (=> (select (|PolymorphicMapType_10760_6074_35318#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) null (WandMaskField_6107 pm_f_9@@2))) o2_9@@58 f_24@@58) (= (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@2) o2_9@@58 f_24@@58) (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@58 f_24@@58)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@58 f_24@@58))
))) (forall ((o2_9@@59 T@Ref) (f_24@@59 T@Field_6082_18924) ) (!  (=> (select (|PolymorphicMapType_10760_16566_35562#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) null (WandMaskField_6107 pm_f_9@@2))) o2_9@@59 f_24@@59) (= (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@2) o2_9@@59 f_24@@59) (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@59 f_24@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@59 f_24@@59))
))) (forall ((o2_9@@60 T@Ref) (f_24@@60 T@Field_6082_3275) ) (!  (=> (select (|PolymorphicMapType_10760_16566_3275#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) null (WandMaskField_6107 pm_f_9@@2))) o2_9@@60 f_24@@60) (= (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@2) o2_9@@60 f_24@@60) (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@60 f_24@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@60 f_24@@60))
))) (forall ((o2_9@@61 T@Ref) (f_24@@61 T@Field_6082_53) ) (!  (=> (select (|PolymorphicMapType_10760_16566_53#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) null (WandMaskField_6107 pm_f_9@@2))) o2_9@@61 f_24@@61) (= (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@2) o2_9@@61 f_24@@61) (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@61 f_24@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@61 f_24@@61))
))) (forall ((o2_9@@62 T@Ref) (f_24@@62 T@Field_6082_10285) ) (!  (=> (select (|PolymorphicMapType_10760_16566_10285#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) null (WandMaskField_6107 pm_f_9@@2))) o2_9@@62 f_24@@62) (= (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@2) o2_9@@62 f_24@@62) (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@62 f_24@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@62 f_24@@62))
))) (forall ((o2_9@@63 T@Ref) (f_24@@63 T@Field_16566_16567) ) (!  (=> (select (|PolymorphicMapType_10760_16566_16567#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) null (WandMaskField_6107 pm_f_9@@2))) o2_9@@63 f_24@@63) (= (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@2) o2_9@@63 f_24@@63) (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@63 f_24@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@63 f_24@@63))
))) (forall ((o2_9@@64 T@Ref) (f_24@@64 T@Field_16579_16584) ) (!  (=> (select (|PolymorphicMapType_10760_16566_36584#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) null (WandMaskField_6107 pm_f_9@@2))) o2_9@@64 f_24@@64) (= (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@2) o2_9@@64 f_24@@64) (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@64 f_24@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@64 f_24@@64))
))) (forall ((o2_9@@65 T@Ref) (f_24@@65 T@Field_6107_18924) ) (!  (=> (select (|PolymorphicMapType_10760_17509_36828#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) null (WandMaskField_6107 pm_f_9@@2))) o2_9@@65 f_24@@65) (= (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@2) o2_9@@65 f_24@@65) (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@65 f_24@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@65 f_24@@65))
))) (forall ((o2_9@@66 T@Ref) (f_24@@66 T@Field_6107_3275) ) (!  (=> (select (|PolymorphicMapType_10760_17509_3275#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) null (WandMaskField_6107 pm_f_9@@2))) o2_9@@66 f_24@@66) (= (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@2) o2_9@@66 f_24@@66) (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@66 f_24@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@66 f_24@@66))
))) (forall ((o2_9@@67 T@Ref) (f_24@@67 T@Field_6107_53) ) (!  (=> (select (|PolymorphicMapType_10760_17509_53#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) null (WandMaskField_6107 pm_f_9@@2))) o2_9@@67 f_24@@67) (= (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@2) o2_9@@67 f_24@@67) (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@67 f_24@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@67 f_24@@67))
))) (forall ((o2_9@@68 T@Ref) (f_24@@68 T@Field_6107_10285) ) (!  (=> (select (|PolymorphicMapType_10760_17509_10285#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) null (WandMaskField_6107 pm_f_9@@2))) o2_9@@68 f_24@@68) (= (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@2) o2_9@@68 f_24@@68) (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@68 f_24@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@68 f_24@@68))
))) (forall ((o2_9@@69 T@Ref) (f_24@@69 T@Field_17509_17510) ) (!  (=> (select (|PolymorphicMapType_10760_17509_16567#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) null (WandMaskField_6107 pm_f_9@@2))) o2_9@@69 f_24@@69) (= (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@2) o2_9@@69 f_24@@69) (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@69 f_24@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@69 f_24@@69))
))) (forall ((o2_9@@70 T@Ref) (f_24@@70 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_10760_17509_37850#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) null (WandMaskField_6107 pm_f_9@@2))) o2_9@@70 f_24@@70) (= (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@2) o2_9@@70 f_24@@70) (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@70 f_24@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| ExhaleHeap@@2) o2_9@@70 f_24@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (IsWandField_6107_39653 pm_f_9@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10211) (ExhaleHeap@@3 T@PolymorphicMapType_10211) (Mask@@3 T@PolymorphicMapType_10232) (pm_f_9@@3 T@Field_16566_16567) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (=> (and (HasDirectPerm_6082_6083 Mask@@3 null pm_f_9@@3) (IsWandField_6082_39296 pm_f_9@@3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@71 T@Ref) (f_24@@71 T@Field_16455_16457) ) (!  (=> (select (|PolymorphicMapType_10760_6074_23323#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) null (WandMaskField_6082 pm_f_9@@3))) o2_9@@71 f_24@@71) (= (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@3) o2_9@@71 f_24@@71) (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@71 f_24@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@71 f_24@@71))
)) (forall ((o2_9@@72 T@Ref) (f_24@@72 T@Field_16519_3275) ) (!  (=> (select (|PolymorphicMapType_10760_6079_3275#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) null (WandMaskField_6082 pm_f_9@@3))) o2_9@@72 f_24@@72) (= (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@3) o2_9@@72 f_24@@72) (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@72 f_24@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@72 f_24@@72))
))) (forall ((o2_9@@73 T@Ref) (f_24@@73 T@Field_10271_53) ) (!  (=> (select (|PolymorphicMapType_10760_6074_53#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) null (WandMaskField_6082 pm_f_9@@3))) o2_9@@73 f_24@@73) (= (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@3) o2_9@@73 f_24@@73) (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@73 f_24@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@73 f_24@@73))
))) (forall ((o2_9@@74 T@Ref) (f_24@@74 T@Field_10284_10285) ) (!  (=> (select (|PolymorphicMapType_10760_6074_10285#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) null (WandMaskField_6082 pm_f_9@@3))) o2_9@@74 f_24@@74) (= (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@3) o2_9@@74 f_24@@74) (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@74 f_24@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@74 f_24@@74))
))) (forall ((o2_9@@75 T@Ref) (f_24@@75 T@Field_6074_6083) ) (!  (=> (select (|PolymorphicMapType_10760_6074_16567#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) null (WandMaskField_6082 pm_f_9@@3))) o2_9@@75 f_24@@75) (= (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@3) o2_9@@75 f_24@@75) (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@75 f_24@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@75 f_24@@75))
))) (forall ((o2_9@@76 T@Ref) (f_24@@76 T@Field_6074_16584) ) (!  (=> (select (|PolymorphicMapType_10760_6074_35318#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) null (WandMaskField_6082 pm_f_9@@3))) o2_9@@76 f_24@@76) (= (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@3) o2_9@@76 f_24@@76) (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@76 f_24@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@76 f_24@@76))
))) (forall ((o2_9@@77 T@Ref) (f_24@@77 T@Field_6082_18924) ) (!  (=> (select (|PolymorphicMapType_10760_16566_35562#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) null (WandMaskField_6082 pm_f_9@@3))) o2_9@@77 f_24@@77) (= (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@3) o2_9@@77 f_24@@77) (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@77 f_24@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@77 f_24@@77))
))) (forall ((o2_9@@78 T@Ref) (f_24@@78 T@Field_6082_3275) ) (!  (=> (select (|PolymorphicMapType_10760_16566_3275#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) null (WandMaskField_6082 pm_f_9@@3))) o2_9@@78 f_24@@78) (= (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@3) o2_9@@78 f_24@@78) (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@78 f_24@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@78 f_24@@78))
))) (forall ((o2_9@@79 T@Ref) (f_24@@79 T@Field_6082_53) ) (!  (=> (select (|PolymorphicMapType_10760_16566_53#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) null (WandMaskField_6082 pm_f_9@@3))) o2_9@@79 f_24@@79) (= (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@3) o2_9@@79 f_24@@79) (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@79 f_24@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@79 f_24@@79))
))) (forall ((o2_9@@80 T@Ref) (f_24@@80 T@Field_6082_10285) ) (!  (=> (select (|PolymorphicMapType_10760_16566_10285#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) null (WandMaskField_6082 pm_f_9@@3))) o2_9@@80 f_24@@80) (= (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@3) o2_9@@80 f_24@@80) (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@80 f_24@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@80 f_24@@80))
))) (forall ((o2_9@@81 T@Ref) (f_24@@81 T@Field_16566_16567) ) (!  (=> (select (|PolymorphicMapType_10760_16566_16567#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) null (WandMaskField_6082 pm_f_9@@3))) o2_9@@81 f_24@@81) (= (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@3) o2_9@@81 f_24@@81) (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@81 f_24@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@81 f_24@@81))
))) (forall ((o2_9@@82 T@Ref) (f_24@@82 T@Field_16579_16584) ) (!  (=> (select (|PolymorphicMapType_10760_16566_36584#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) null (WandMaskField_6082 pm_f_9@@3))) o2_9@@82 f_24@@82) (= (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) o2_9@@82 f_24@@82) (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@82 f_24@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@82 f_24@@82))
))) (forall ((o2_9@@83 T@Ref) (f_24@@83 T@Field_6107_18924) ) (!  (=> (select (|PolymorphicMapType_10760_17509_36828#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) null (WandMaskField_6082 pm_f_9@@3))) o2_9@@83 f_24@@83) (= (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@3) o2_9@@83 f_24@@83) (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@83 f_24@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@83 f_24@@83))
))) (forall ((o2_9@@84 T@Ref) (f_24@@84 T@Field_6107_3275) ) (!  (=> (select (|PolymorphicMapType_10760_17509_3275#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) null (WandMaskField_6082 pm_f_9@@3))) o2_9@@84 f_24@@84) (= (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@3) o2_9@@84 f_24@@84) (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@84 f_24@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@84 f_24@@84))
))) (forall ((o2_9@@85 T@Ref) (f_24@@85 T@Field_6107_53) ) (!  (=> (select (|PolymorphicMapType_10760_17509_53#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) null (WandMaskField_6082 pm_f_9@@3))) o2_9@@85 f_24@@85) (= (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@3) o2_9@@85 f_24@@85) (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@85 f_24@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@85 f_24@@85))
))) (forall ((o2_9@@86 T@Ref) (f_24@@86 T@Field_6107_10285) ) (!  (=> (select (|PolymorphicMapType_10760_17509_10285#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) null (WandMaskField_6082 pm_f_9@@3))) o2_9@@86 f_24@@86) (= (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@3) o2_9@@86 f_24@@86) (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@86 f_24@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@86 f_24@@86))
))) (forall ((o2_9@@87 T@Ref) (f_24@@87 T@Field_17509_17510) ) (!  (=> (select (|PolymorphicMapType_10760_17509_16567#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) null (WandMaskField_6082 pm_f_9@@3))) o2_9@@87 f_24@@87) (= (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@3) o2_9@@87 f_24@@87) (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@87 f_24@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@87 f_24@@87))
))) (forall ((o2_9@@88 T@Ref) (f_24@@88 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_10760_17509_37850#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@3) null (WandMaskField_6082 pm_f_9@@3))) o2_9@@88 f_24@@88) (= (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@3) o2_9@@88 f_24@@88) (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@88 f_24@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| ExhaleHeap@@3) o2_9@@88 f_24@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (IsWandField_6082_39296 pm_f_9@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10211) (ExhaleHeap@@4 T@PolymorphicMapType_10211) (Mask@@4 T@PolymorphicMapType_10232) (pm_f_9@@4 T@Field_6074_6083) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (=> (and (HasDirectPerm_6074_6083 Mask@@4 null pm_f_9@@4) (IsWandField_6074_38939 pm_f_9@@4)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@89 T@Ref) (f_24@@89 T@Field_16455_16457) ) (!  (=> (select (|PolymorphicMapType_10760_6074_23323#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) null (WandMaskField_6074 pm_f_9@@4))) o2_9@@89 f_24@@89) (= (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@4) o2_9@@89 f_24@@89) (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@89 f_24@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@89 f_24@@89))
)) (forall ((o2_9@@90 T@Ref) (f_24@@90 T@Field_16519_3275) ) (!  (=> (select (|PolymorphicMapType_10760_6079_3275#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) null (WandMaskField_6074 pm_f_9@@4))) o2_9@@90 f_24@@90) (= (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@4) o2_9@@90 f_24@@90) (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@90 f_24@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@90 f_24@@90))
))) (forall ((o2_9@@91 T@Ref) (f_24@@91 T@Field_10271_53) ) (!  (=> (select (|PolymorphicMapType_10760_6074_53#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) null (WandMaskField_6074 pm_f_9@@4))) o2_9@@91 f_24@@91) (= (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@4) o2_9@@91 f_24@@91) (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@91 f_24@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@91 f_24@@91))
))) (forall ((o2_9@@92 T@Ref) (f_24@@92 T@Field_10284_10285) ) (!  (=> (select (|PolymorphicMapType_10760_6074_10285#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) null (WandMaskField_6074 pm_f_9@@4))) o2_9@@92 f_24@@92) (= (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@4) o2_9@@92 f_24@@92) (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@92 f_24@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@92 f_24@@92))
))) (forall ((o2_9@@93 T@Ref) (f_24@@93 T@Field_6074_6083) ) (!  (=> (select (|PolymorphicMapType_10760_6074_16567#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) null (WandMaskField_6074 pm_f_9@@4))) o2_9@@93 f_24@@93) (= (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@4) o2_9@@93 f_24@@93) (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@93 f_24@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@93 f_24@@93))
))) (forall ((o2_9@@94 T@Ref) (f_24@@94 T@Field_6074_16584) ) (!  (=> (select (|PolymorphicMapType_10760_6074_35318#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) null (WandMaskField_6074 pm_f_9@@4))) o2_9@@94 f_24@@94) (= (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) o2_9@@94 f_24@@94) (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@94 f_24@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@94 f_24@@94))
))) (forall ((o2_9@@95 T@Ref) (f_24@@95 T@Field_6082_18924) ) (!  (=> (select (|PolymorphicMapType_10760_16566_35562#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) null (WandMaskField_6074 pm_f_9@@4))) o2_9@@95 f_24@@95) (= (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@4) o2_9@@95 f_24@@95) (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@95 f_24@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@95 f_24@@95))
))) (forall ((o2_9@@96 T@Ref) (f_24@@96 T@Field_6082_3275) ) (!  (=> (select (|PolymorphicMapType_10760_16566_3275#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) null (WandMaskField_6074 pm_f_9@@4))) o2_9@@96 f_24@@96) (= (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@4) o2_9@@96 f_24@@96) (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@96 f_24@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@96 f_24@@96))
))) (forall ((o2_9@@97 T@Ref) (f_24@@97 T@Field_6082_53) ) (!  (=> (select (|PolymorphicMapType_10760_16566_53#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) null (WandMaskField_6074 pm_f_9@@4))) o2_9@@97 f_24@@97) (= (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@4) o2_9@@97 f_24@@97) (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@97 f_24@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@97 f_24@@97))
))) (forall ((o2_9@@98 T@Ref) (f_24@@98 T@Field_6082_10285) ) (!  (=> (select (|PolymorphicMapType_10760_16566_10285#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) null (WandMaskField_6074 pm_f_9@@4))) o2_9@@98 f_24@@98) (= (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@4) o2_9@@98 f_24@@98) (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@98 f_24@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@98 f_24@@98))
))) (forall ((o2_9@@99 T@Ref) (f_24@@99 T@Field_16566_16567) ) (!  (=> (select (|PolymorphicMapType_10760_16566_16567#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) null (WandMaskField_6074 pm_f_9@@4))) o2_9@@99 f_24@@99) (= (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@4) o2_9@@99 f_24@@99) (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@99 f_24@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@99 f_24@@99))
))) (forall ((o2_9@@100 T@Ref) (f_24@@100 T@Field_16579_16584) ) (!  (=> (select (|PolymorphicMapType_10760_16566_36584#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) null (WandMaskField_6074 pm_f_9@@4))) o2_9@@100 f_24@@100) (= (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@4) o2_9@@100 f_24@@100) (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@100 f_24@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@100 f_24@@100))
))) (forall ((o2_9@@101 T@Ref) (f_24@@101 T@Field_6107_18924) ) (!  (=> (select (|PolymorphicMapType_10760_17509_36828#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) null (WandMaskField_6074 pm_f_9@@4))) o2_9@@101 f_24@@101) (= (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@4) o2_9@@101 f_24@@101) (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@101 f_24@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@101 f_24@@101))
))) (forall ((o2_9@@102 T@Ref) (f_24@@102 T@Field_6107_3275) ) (!  (=> (select (|PolymorphicMapType_10760_17509_3275#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) null (WandMaskField_6074 pm_f_9@@4))) o2_9@@102 f_24@@102) (= (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@4) o2_9@@102 f_24@@102) (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@102 f_24@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@102 f_24@@102))
))) (forall ((o2_9@@103 T@Ref) (f_24@@103 T@Field_6107_53) ) (!  (=> (select (|PolymorphicMapType_10760_17509_53#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) null (WandMaskField_6074 pm_f_9@@4))) o2_9@@103 f_24@@103) (= (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@4) o2_9@@103 f_24@@103) (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@103 f_24@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@103 f_24@@103))
))) (forall ((o2_9@@104 T@Ref) (f_24@@104 T@Field_6107_10285) ) (!  (=> (select (|PolymorphicMapType_10760_17509_10285#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) null (WandMaskField_6074 pm_f_9@@4))) o2_9@@104 f_24@@104) (= (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@4) o2_9@@104 f_24@@104) (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@104 f_24@@104)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@104 f_24@@104))
))) (forall ((o2_9@@105 T@Ref) (f_24@@105 T@Field_17509_17510) ) (!  (=> (select (|PolymorphicMapType_10760_17509_16567#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) null (WandMaskField_6074 pm_f_9@@4))) o2_9@@105 f_24@@105) (= (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@4) o2_9@@105 f_24@@105) (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@105 f_24@@105)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@105 f_24@@105))
))) (forall ((o2_9@@106 T@Ref) (f_24@@106 T@Field_17522_17527) ) (!  (=> (select (|PolymorphicMapType_10760_17509_37850#PolymorphicMapType_10760| (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@4) null (WandMaskField_6074 pm_f_9@@4))) o2_9@@106 f_24@@106) (= (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@4) o2_9@@106 f_24@@106) (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@106 f_24@@106)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| ExhaleHeap@@4) o2_9@@106 f_24@@106))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (IsWandField_6074_38939 pm_f_9@@4))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_10211) (Heap1 T@PolymorphicMapType_10211) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10211) (Mask@@5 T@PolymorphicMapType_10232) ) (!  (=> (state Heap@@5 Mask@@5) (GoodMask Mask@@5))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@5 Mask@@5))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10211) (Heap1@@0 T@PolymorphicMapType_10211) (Heap2 T@PolymorphicMapType_10211) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17522_17527) ) (!  (not (select (|PolymorphicMapType_10760_17509_37850#PolymorphicMapType_10760| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10760_17509_37850#PolymorphicMapType_10760| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17509_17510) ) (!  (not (select (|PolymorphicMapType_10760_17509_16567#PolymorphicMapType_10760| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10760_17509_16567#PolymorphicMapType_10760| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6107_10285) ) (!  (not (select (|PolymorphicMapType_10760_17509_10285#PolymorphicMapType_10760| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10760_17509_10285#PolymorphicMapType_10760| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6107_53) ) (!  (not (select (|PolymorphicMapType_10760_17509_53#PolymorphicMapType_10760| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10760_17509_53#PolymorphicMapType_10760| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6107_3275) ) (!  (not (select (|PolymorphicMapType_10760_17509_3275#PolymorphicMapType_10760| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10760_17509_3275#PolymorphicMapType_10760| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_6107_18924) ) (!  (not (select (|PolymorphicMapType_10760_17509_36828#PolymorphicMapType_10760| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10760_17509_36828#PolymorphicMapType_10760| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_16579_16584) ) (!  (not (select (|PolymorphicMapType_10760_16566_36584#PolymorphicMapType_10760| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10760_16566_36584#PolymorphicMapType_10760| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_16566_16567) ) (!  (not (select (|PolymorphicMapType_10760_16566_16567#PolymorphicMapType_10760| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10760_16566_16567#PolymorphicMapType_10760| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_6082_10285) ) (!  (not (select (|PolymorphicMapType_10760_16566_10285#PolymorphicMapType_10760| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10760_16566_10285#PolymorphicMapType_10760| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_6082_53) ) (!  (not (select (|PolymorphicMapType_10760_16566_53#PolymorphicMapType_10760| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10760_16566_53#PolymorphicMapType_10760| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_6082_3275) ) (!  (not (select (|PolymorphicMapType_10760_16566_3275#PolymorphicMapType_10760| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10760_16566_3275#PolymorphicMapType_10760| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_6082_18924) ) (!  (not (select (|PolymorphicMapType_10760_16566_35562#PolymorphicMapType_10760| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10760_16566_35562#PolymorphicMapType_10760| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6074_16584) ) (!  (not (select (|PolymorphicMapType_10760_6074_35318#PolymorphicMapType_10760| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10760_6074_35318#PolymorphicMapType_10760| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6074_6083) ) (!  (not (select (|PolymorphicMapType_10760_6074_16567#PolymorphicMapType_10760| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10760_6074_16567#PolymorphicMapType_10760| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_10284_10285) ) (!  (not (select (|PolymorphicMapType_10760_6074_10285#PolymorphicMapType_10760| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10760_6074_10285#PolymorphicMapType_10760| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10271_53) ) (!  (not (select (|PolymorphicMapType_10760_6074_53#PolymorphicMapType_10760| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10760_6074_53#PolymorphicMapType_10760| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_16519_3275) ) (!  (not (select (|PolymorphicMapType_10760_6079_3275#PolymorphicMapType_10760| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10760_6079_3275#PolymorphicMapType_10760| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_16455_16457) ) (!  (not (select (|PolymorphicMapType_10760_6074_23323#PolymorphicMapType_10760| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10760_6074_23323#PolymorphicMapType_10760| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.294:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_6082_6083 (P this))
 :qid |stdinbpl.410:15|
 :skolemid |83|
 :pattern ( (P this))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_6107_6108 (inv this@@0))
 :qid |stdinbpl.464:15|
 :skolemid |89|
 :pattern ( (inv this@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10211) (this@@1 T@Ref) ) (! (|P#everUsed_6082| (P this@@1))
 :qid |stdinbpl.429:15|
 :skolemid |87|
 :pattern ( (|P#trigger_6082| Heap@@6 (P this@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10211) (this@@2 T@Ref) ) (! (|inv#everUsed_6107| (inv this@@2))
 :qid |stdinbpl.483:15|
 :skolemid |93|
 :pattern ( (|inv#trigger_6107| Heap@@7 (inv this@@2)))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_10211) (Heap1Heap T@PolymorphicMapType_10211) (this@@3 T@Ref) ) (!  (=> (and (=  (and (select (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap2Heap) this@@3 n_10) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@3) (|inv#condqp1| Heap1Heap this@@3))) (< NoPerm FullPerm))  (and (select (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap1Heap) this@@3 n_10) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@3) (|inv#condqp1| Heap1Heap this@@3))) (< NoPerm FullPerm))) (=> (and (select (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap2Heap) this@@3 n_10) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@3) (|inv#condqp1| Heap1Heap this@@3))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap2Heap) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@3) (|inv#condqp1| Heap1Heap this@@3)) f_7) (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap1Heap) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@3) (|inv#condqp1| Heap1Heap this@@3)) f_7)))) (= (|inv#condqp1| Heap2Heap this@@3) (|inv#condqp1| Heap1Heap this@@3)))
 :qid |stdinbpl.494:15|
 :skolemid |94|
 :pattern ( (|inv#condqp1| Heap2Heap this@@3) (|inv#condqp1| Heap1Heap this@@3) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.297:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10211) (ExhaleHeap@@5 T@PolymorphicMapType_10211) (Mask@@6 T@PolymorphicMapType_10232) (pm_f_9@@5 T@Field_17509_17510) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_6107_6108 Mask@@6 null pm_f_9@@5) (IsPredicateField_6107_6108 pm_f_9@@5)) (= (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@8) null (PredicateMaskField_6107 pm_f_9@@5)) (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| ExhaleHeap@@5) null (PredicateMaskField_6107 pm_f_9@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsPredicateField_6107_6108 pm_f_9@@5) (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| ExhaleHeap@@5) null (PredicateMaskField_6107 pm_f_9@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10211) (ExhaleHeap@@6 T@PolymorphicMapType_10211) (Mask@@7 T@PolymorphicMapType_10232) (pm_f_9@@6 T@Field_16566_16567) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_6082_6083 Mask@@7 null pm_f_9@@6) (IsPredicateField_6082_6083 pm_f_9@@6)) (= (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@9) null (PredicateMaskField_6082 pm_f_9@@6)) (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| ExhaleHeap@@6) null (PredicateMaskField_6082 pm_f_9@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsPredicateField_6082_6083 pm_f_9@@6) (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| ExhaleHeap@@6) null (PredicateMaskField_6082 pm_f_9@@6)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10211) (ExhaleHeap@@7 T@PolymorphicMapType_10211) (Mask@@8 T@PolymorphicMapType_10232) (pm_f_9@@7 T@Field_6074_6083) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_6074_6083 Mask@@8 null pm_f_9@@7) (IsPredicateField_6074_33322 pm_f_9@@7)) (= (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@10) null (PredicateMaskField_6074 pm_f_9@@7)) (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| ExhaleHeap@@7) null (PredicateMaskField_6074 pm_f_9@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsPredicateField_6074_33322 pm_f_9@@7) (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| ExhaleHeap@@7) null (PredicateMaskField_6074 pm_f_9@@7)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10211) (ExhaleHeap@@8 T@PolymorphicMapType_10211) (Mask@@9 T@PolymorphicMapType_10232) (pm_f_9@@8 T@Field_17509_17510) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_6107_6108 Mask@@9 null pm_f_9@@8) (IsWandField_6107_39653 pm_f_9@@8)) (= (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@11) null (WandMaskField_6107 pm_f_9@@8)) (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| ExhaleHeap@@8) null (WandMaskField_6107 pm_f_9@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsWandField_6107_39653 pm_f_9@@8) (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| ExhaleHeap@@8) null (WandMaskField_6107 pm_f_9@@8)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10211) (ExhaleHeap@@9 T@PolymorphicMapType_10211) (Mask@@10 T@PolymorphicMapType_10232) (pm_f_9@@9 T@Field_16566_16567) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_6082_6083 Mask@@10 null pm_f_9@@9) (IsWandField_6082_39296 pm_f_9@@9)) (= (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@12) null (WandMaskField_6082 pm_f_9@@9)) (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| ExhaleHeap@@9) null (WandMaskField_6082 pm_f_9@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (IsWandField_6082_39296 pm_f_9@@9) (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| ExhaleHeap@@9) null (WandMaskField_6082 pm_f_9@@9)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10211) (ExhaleHeap@@10 T@PolymorphicMapType_10211) (Mask@@11 T@PolymorphicMapType_10232) (pm_f_9@@10 T@Field_6074_6083) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_6074_6083 Mask@@11 null pm_f_9@@10) (IsWandField_6074_38939 pm_f_9@@10)) (= (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@13) null (WandMaskField_6074 pm_f_9@@10)) (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| ExhaleHeap@@10) null (WandMaskField_6074 pm_f_9@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (IsWandField_6074_38939 pm_f_9@@10) (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| ExhaleHeap@@10) null (WandMaskField_6074 pm_f_9@@10)))
)))
(assert (forall ((this@@4 T@Ref) (this2 T@Ref) ) (!  (=> (= (P this@@4) (P this2)) (= this@@4 this2))
 :qid |stdinbpl.420:15|
 :skolemid |85|
 :pattern ( (P this@@4) (P this2))
)))
(assert (forall ((this@@5 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|P#sm| this@@5) (|P#sm| this2@@0)) (= this@@5 this2@@0))
 :qid |stdinbpl.424:15|
 :skolemid |86|
 :pattern ( (|P#sm| this@@5) (|P#sm| this2@@0))
)))
(assert (forall ((this@@6 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (inv this@@6) (inv this2@@1)) (= this@@6 this2@@1))
 :qid |stdinbpl.474:15|
 :skolemid |91|
 :pattern ( (inv this@@6) (inv this2@@1))
)))
(assert (forall ((this@@7 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|inv#sm| this@@7) (|inv#sm| this2@@2)) (= this@@7 this2@@2))
 :qid |stdinbpl.478:15|
 :skolemid |92|
 :pattern ( (|inv#sm| this@@7) (|inv#sm| this2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10211) (ExhaleHeap@@11 T@PolymorphicMapType_10211) (Mask@@12 T@PolymorphicMapType_10232) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@14) o_27 $allocated) (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| ExhaleHeap@@11) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| ExhaleHeap@@11) o_27 $allocated))
)))
(assert (forall ((p T@Field_17509_17510) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_17509_17509 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17509_17509 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_16566_16567) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_16566_16566 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16566_16566 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_6074_6083) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_10271_10271 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10271_10271 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_6074_16481 n_10)))
(assert  (not (IsWandField_6074_16508 n_10)))
(assert  (not (IsPredicateField_6079_3275 f_7)))
(assert  (not (IsWandField_6079_3275 f_7)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10211) (ExhaleHeap@@12 T@PolymorphicMapType_10211) (Mask@@13 T@PolymorphicMapType_10232) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (succHeap Heap@@15 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10232) (o_2@@17 T@Ref) (f_4@@17 T@Field_17522_17527) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_10232_6107_47712#PolymorphicMapType_10232| Mask@@14) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6107_51876 f_4@@17))) (not (IsWandField_6107_51892 f_4@@17))) (<= (select (|PolymorphicMapType_10232_6107_47712#PolymorphicMapType_10232| Mask@@14) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_10232_6107_47712#PolymorphicMapType_10232| Mask@@14) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10232) (o_2@@18 T@Ref) (f_4@@18 T@Field_6107_10285) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_10232_6107_10285#PolymorphicMapType_10232| Mask@@15) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6107_10285 f_4@@18))) (not (IsWandField_6107_10285 f_4@@18))) (<= (select (|PolymorphicMapType_10232_6107_10285#PolymorphicMapType_10232| Mask@@15) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_10232_6107_10285#PolymorphicMapType_10232| Mask@@15) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10232) (o_2@@19 T@Ref) (f_4@@19 T@Field_6107_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_10232_6107_53#PolymorphicMapType_10232| Mask@@16) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6107_53 f_4@@19))) (not (IsWandField_6107_53 f_4@@19))) (<= (select (|PolymorphicMapType_10232_6107_53#PolymorphicMapType_10232| Mask@@16) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_10232_6107_53#PolymorphicMapType_10232| Mask@@16) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10232) (o_2@@20 T@Ref) (f_4@@20 T@Field_17509_17510) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_10232_6107_6108#PolymorphicMapType_10232| Mask@@17) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6107_6108 f_4@@20))) (not (IsWandField_6107_39653 f_4@@20))) (<= (select (|PolymorphicMapType_10232_6107_6108#PolymorphicMapType_10232| Mask@@17) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_10232_6107_6108#PolymorphicMapType_10232| Mask@@17) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10232) (o_2@@21 T@Ref) (f_4@@21 T@Field_6107_3275) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10232_6107_3275#PolymorphicMapType_10232| Mask@@18) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6107_3275 f_4@@21))) (not (IsWandField_6107_3275 f_4@@21))) (<= (select (|PolymorphicMapType_10232_6107_3275#PolymorphicMapType_10232| Mask@@18) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10232_6107_3275#PolymorphicMapType_10232| Mask@@18) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10232) (o_2@@22 T@Ref) (f_4@@22 T@Field_6107_18924) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_10232_6107_47312#PolymorphicMapType_10232| Mask@@19) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6107_51045 f_4@@22))) (not (IsWandField_6107_51061 f_4@@22))) (<= (select (|PolymorphicMapType_10232_6107_47312#PolymorphicMapType_10232| Mask@@19) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_10232_6107_47312#PolymorphicMapType_10232| Mask@@19) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10232) (o_2@@23 T@Ref) (f_4@@23 T@Field_16579_16584) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_10232_6082_47212#PolymorphicMapType_10232| Mask@@20) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_6082_50872 f_4@@23))) (not (IsWandField_6082_50888 f_4@@23))) (<= (select (|PolymorphicMapType_10232_6082_47212#PolymorphicMapType_10232| Mask@@20) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_10232_6082_47212#PolymorphicMapType_10232| Mask@@20) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10232) (o_2@@24 T@Ref) (f_4@@24 T@Field_6082_10285) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_10232_6082_10285#PolymorphicMapType_10232| Mask@@21) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_6082_10285 f_4@@24))) (not (IsWandField_6082_10285 f_4@@24))) (<= (select (|PolymorphicMapType_10232_6082_10285#PolymorphicMapType_10232| Mask@@21) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_10232_6082_10285#PolymorphicMapType_10232| Mask@@21) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10232) (o_2@@25 T@Ref) (f_4@@25 T@Field_6082_53) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_10232_6082_53#PolymorphicMapType_10232| Mask@@22) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_6082_53 f_4@@25))) (not (IsWandField_6082_53 f_4@@25))) (<= (select (|PolymorphicMapType_10232_6082_53#PolymorphicMapType_10232| Mask@@22) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_10232_6082_53#PolymorphicMapType_10232| Mask@@22) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10232) (o_2@@26 T@Ref) (f_4@@26 T@Field_16566_16567) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_10232_6082_6083#PolymorphicMapType_10232| Mask@@23) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_6082_6083 f_4@@26))) (not (IsWandField_6082_39296 f_4@@26))) (<= (select (|PolymorphicMapType_10232_6082_6083#PolymorphicMapType_10232| Mask@@23) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_10232_6082_6083#PolymorphicMapType_10232| Mask@@23) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10232) (o_2@@27 T@Ref) (f_4@@27 T@Field_6082_3275) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_10232_6082_3275#PolymorphicMapType_10232| Mask@@24) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_6082_3275 f_4@@27))) (not (IsWandField_6082_3275 f_4@@27))) (<= (select (|PolymorphicMapType_10232_6082_3275#PolymorphicMapType_10232| Mask@@24) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_10232_6082_3275#PolymorphicMapType_10232| Mask@@24) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10232) (o_2@@28 T@Ref) (f_4@@28 T@Field_6082_18924) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_10232_6082_46812#PolymorphicMapType_10232| Mask@@25) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_6082_50041 f_4@@28))) (not (IsWandField_6082_50057 f_4@@28))) (<= (select (|PolymorphicMapType_10232_6082_46812#PolymorphicMapType_10232| Mask@@25) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_10232_6082_46812#PolymorphicMapType_10232| Mask@@25) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10232) (o_2@@29 T@Ref) (f_4@@29 T@Field_6074_16584) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_10232_6074_46712#PolymorphicMapType_10232| Mask@@26) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_6074_49868 f_4@@29))) (not (IsWandField_6074_49884 f_4@@29))) (<= (select (|PolymorphicMapType_10232_6074_46712#PolymorphicMapType_10232| Mask@@26) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_10232_6074_46712#PolymorphicMapType_10232| Mask@@26) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_10232) (o_2@@30 T@Ref) (f_4@@30 T@Field_10284_10285) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_10232_6074_10285#PolymorphicMapType_10232| Mask@@27) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_6074_10285 f_4@@30))) (not (IsWandField_6074_10285 f_4@@30))) (<= (select (|PolymorphicMapType_10232_6074_10285#PolymorphicMapType_10232| Mask@@27) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_10232_6074_10285#PolymorphicMapType_10232| Mask@@27) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_10232) (o_2@@31 T@Ref) (f_4@@31 T@Field_10271_53) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_10232_6074_53#PolymorphicMapType_10232| Mask@@28) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_6074_53 f_4@@31))) (not (IsWandField_6074_53 f_4@@31))) (<= (select (|PolymorphicMapType_10232_6074_53#PolymorphicMapType_10232| Mask@@28) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_10232_6074_53#PolymorphicMapType_10232| Mask@@28) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_10232) (o_2@@32 T@Ref) (f_4@@32 T@Field_6074_6083) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_10232_6074_6083#PolymorphicMapType_10232| Mask@@29) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_6074_33322 f_4@@32))) (not (IsWandField_6074_38939 f_4@@32))) (<= (select (|PolymorphicMapType_10232_6074_6083#PolymorphicMapType_10232| Mask@@29) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_10232_6074_6083#PolymorphicMapType_10232| Mask@@29) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_10232) (o_2@@33 T@Ref) (f_4@@33 T@Field_16519_3275) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_10232_6079_3275#PolymorphicMapType_10232| Mask@@30) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_6079_3275 f_4@@33))) (not (IsWandField_6079_3275 f_4@@33))) (<= (select (|PolymorphicMapType_10232_6079_3275#PolymorphicMapType_10232| Mask@@30) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_10232_6079_3275#PolymorphicMapType_10232| Mask@@30) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_10232) (o_2@@34 T@Ref) (f_4@@34 T@Field_16455_16457) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_10232_6074_17348#PolymorphicMapType_10232| Mask@@31) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_6074_16481 f_4@@34))) (not (IsWandField_6074_16508 f_4@@34))) (<= (select (|PolymorphicMapType_10232_6074_17348#PolymorphicMapType_10232| Mask@@31) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_10232_6074_17348#PolymorphicMapType_10232| Mask@@31) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_10232) (o_2@@35 T@Ref) (f_4@@35 T@Field_17522_17527) ) (! (= (HasDirectPerm_6107_33077 Mask@@32 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_10232_6107_47712#PolymorphicMapType_10232| Mask@@32) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6107_33077 Mask@@32 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_10232) (o_2@@36 T@Ref) (f_4@@36 T@Field_6107_3275) ) (! (= (HasDirectPerm_6107_3275 Mask@@33 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_10232_6107_3275#PolymorphicMapType_10232| Mask@@33) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6107_3275 Mask@@33 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_10232) (o_2@@37 T@Ref) (f_4@@37 T@Field_6107_10285) ) (! (= (HasDirectPerm_6107_10285 Mask@@34 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_10232_6107_10285#PolymorphicMapType_10232| Mask@@34) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6107_10285 Mask@@34 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_10232) (o_2@@38 T@Ref) (f_4@@38 T@Field_6107_53) ) (! (= (HasDirectPerm_6107_53 Mask@@35 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_10232_6107_53#PolymorphicMapType_10232| Mask@@35) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6107_53 Mask@@35 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_10232) (o_2@@39 T@Ref) (f_4@@39 T@Field_17509_17510) ) (! (= (HasDirectPerm_6107_6108 Mask@@36 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_10232_6107_6108#PolymorphicMapType_10232| Mask@@36) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6107_6108 Mask@@36 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_10232) (o_2@@40 T@Ref) (f_4@@40 T@Field_6107_18924) ) (! (= (HasDirectPerm_6107_31970 Mask@@37 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_10232_6107_47312#PolymorphicMapType_10232| Mask@@37) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6107_31970 Mask@@37 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_10232) (o_2@@41 T@Ref) (f_4@@41 T@Field_16579_16584) ) (! (= (HasDirectPerm_6082_31733 Mask@@38 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_10232_6082_47212#PolymorphicMapType_10232| Mask@@38) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6082_31733 Mask@@38 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_10232) (o_2@@42 T@Ref) (f_4@@42 T@Field_6082_3275) ) (! (= (HasDirectPerm_6082_3275 Mask@@39 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_10232_6082_3275#PolymorphicMapType_10232| Mask@@39) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6082_3275 Mask@@39 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_10232) (o_2@@43 T@Ref) (f_4@@43 T@Field_6082_10285) ) (! (= (HasDirectPerm_6082_10285 Mask@@40 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_10232_6082_10285#PolymorphicMapType_10232| Mask@@40) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6082_10285 Mask@@40 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_10232) (o_2@@44 T@Ref) (f_4@@44 T@Field_6082_53) ) (! (= (HasDirectPerm_6082_53 Mask@@41 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_10232_6082_53#PolymorphicMapType_10232| Mask@@41) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6082_53 Mask@@41 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_10232) (o_2@@45 T@Ref) (f_4@@45 T@Field_16566_16567) ) (! (= (HasDirectPerm_6082_6083 Mask@@42 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_10232_6082_6083#PolymorphicMapType_10232| Mask@@42) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6082_6083 Mask@@42 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_10232) (o_2@@46 T@Ref) (f_4@@46 T@Field_6082_18924) ) (! (= (HasDirectPerm_6082_30626 Mask@@43 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_10232_6082_46812#PolymorphicMapType_10232| Mask@@43) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6082_30626 Mask@@43 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_10232) (o_2@@47 T@Ref) (f_4@@47 T@Field_6074_16584) ) (! (= (HasDirectPerm_6074_30346 Mask@@44 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_10232_6074_46712#PolymorphicMapType_10232| Mask@@44) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6074_30346 Mask@@44 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_10232) (o_2@@48 T@Ref) (f_4@@48 T@Field_16519_3275) ) (! (= (HasDirectPerm_6074_3275 Mask@@45 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_10232_6079_3275#PolymorphicMapType_10232| Mask@@45) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6074_3275 Mask@@45 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_10232) (o_2@@49 T@Ref) (f_4@@49 T@Field_10284_10285) ) (! (= (HasDirectPerm_6074_10285 Mask@@46 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_10232_6074_10285#PolymorphicMapType_10232| Mask@@46) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6074_10285 Mask@@46 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_10232) (o_2@@50 T@Ref) (f_4@@50 T@Field_10271_53) ) (! (= (HasDirectPerm_6074_53 Mask@@47 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_10232_6074_53#PolymorphicMapType_10232| Mask@@47) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6074_53 Mask@@47 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_10232) (o_2@@51 T@Ref) (f_4@@51 T@Field_6074_6083) ) (! (= (HasDirectPerm_6074_6083 Mask@@48 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_10232_6074_6083#PolymorphicMapType_10232| Mask@@48) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6074_6083 Mask@@48 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_10232) (o_2@@52 T@Ref) (f_4@@52 T@Field_16455_16457) ) (! (= (HasDirectPerm_6074_18924 Mask@@49 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_10232_6074_17348#PolymorphicMapType_10232| Mask@@49) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6074_18924 Mask@@49 o_2@@52 f_4@@52))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10211) (ExhaleHeap@@13 T@PolymorphicMapType_10211) (Mask@@50 T@PolymorphicMapType_10232) (o_27@@0 T@Ref) (f_24@@107 T@Field_17522_17527) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@50) (=> (HasDirectPerm_6107_33077 Mask@@50 o_27@@0 f_24@@107) (= (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@16) o_27@@0 f_24@@107) (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| ExhaleHeap@@13) o_27@@0 f_24@@107))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@50) (select (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| ExhaleHeap@@13) o_27@@0 f_24@@107))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10211) (ExhaleHeap@@14 T@PolymorphicMapType_10211) (Mask@@51 T@PolymorphicMapType_10232) (o_27@@1 T@Ref) (f_24@@108 T@Field_6107_3275) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@51) (=> (HasDirectPerm_6107_3275 Mask@@51 o_27@@1 f_24@@108) (= (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@17) o_27@@1 f_24@@108) (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| ExhaleHeap@@14) o_27@@1 f_24@@108))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@51) (select (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| ExhaleHeap@@14) o_27@@1 f_24@@108))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10211) (ExhaleHeap@@15 T@PolymorphicMapType_10211) (Mask@@52 T@PolymorphicMapType_10232) (o_27@@2 T@Ref) (f_24@@109 T@Field_6107_10285) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@52) (=> (HasDirectPerm_6107_10285 Mask@@52 o_27@@2 f_24@@109) (= (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@18) o_27@@2 f_24@@109) (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| ExhaleHeap@@15) o_27@@2 f_24@@109))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@52) (select (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| ExhaleHeap@@15) o_27@@2 f_24@@109))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10211) (ExhaleHeap@@16 T@PolymorphicMapType_10211) (Mask@@53 T@PolymorphicMapType_10232) (o_27@@3 T@Ref) (f_24@@110 T@Field_6107_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@53) (=> (HasDirectPerm_6107_53 Mask@@53 o_27@@3 f_24@@110) (= (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@19) o_27@@3 f_24@@110) (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| ExhaleHeap@@16) o_27@@3 f_24@@110))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@53) (select (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| ExhaleHeap@@16) o_27@@3 f_24@@110))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10211) (ExhaleHeap@@17 T@PolymorphicMapType_10211) (Mask@@54 T@PolymorphicMapType_10232) (o_27@@4 T@Ref) (f_24@@111 T@Field_17509_17510) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@54) (=> (HasDirectPerm_6107_6108 Mask@@54 o_27@@4 f_24@@111) (= (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@20) o_27@@4 f_24@@111) (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| ExhaleHeap@@17) o_27@@4 f_24@@111))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@54) (select (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| ExhaleHeap@@17) o_27@@4 f_24@@111))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10211) (ExhaleHeap@@18 T@PolymorphicMapType_10211) (Mask@@55 T@PolymorphicMapType_10232) (o_27@@5 T@Ref) (f_24@@112 T@Field_6107_18924) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@55) (=> (HasDirectPerm_6107_31970 Mask@@55 o_27@@5 f_24@@112) (= (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@21) o_27@@5 f_24@@112) (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| ExhaleHeap@@18) o_27@@5 f_24@@112))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@55) (select (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| ExhaleHeap@@18) o_27@@5 f_24@@112))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10211) (ExhaleHeap@@19 T@PolymorphicMapType_10211) (Mask@@56 T@PolymorphicMapType_10232) (o_27@@6 T@Ref) (f_24@@113 T@Field_16579_16584) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@56) (=> (HasDirectPerm_6082_31733 Mask@@56 o_27@@6 f_24@@113) (= (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@22) o_27@@6 f_24@@113) (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| ExhaleHeap@@19) o_27@@6 f_24@@113))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@56) (select (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| ExhaleHeap@@19) o_27@@6 f_24@@113))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10211) (ExhaleHeap@@20 T@PolymorphicMapType_10211) (Mask@@57 T@PolymorphicMapType_10232) (o_27@@7 T@Ref) (f_24@@114 T@Field_6082_3275) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@57) (=> (HasDirectPerm_6082_3275 Mask@@57 o_27@@7 f_24@@114) (= (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@23) o_27@@7 f_24@@114) (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| ExhaleHeap@@20) o_27@@7 f_24@@114))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@57) (select (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| ExhaleHeap@@20) o_27@@7 f_24@@114))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10211) (ExhaleHeap@@21 T@PolymorphicMapType_10211) (Mask@@58 T@PolymorphicMapType_10232) (o_27@@8 T@Ref) (f_24@@115 T@Field_6082_10285) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@58) (=> (HasDirectPerm_6082_10285 Mask@@58 o_27@@8 f_24@@115) (= (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@24) o_27@@8 f_24@@115) (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| ExhaleHeap@@21) o_27@@8 f_24@@115))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@58) (select (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| ExhaleHeap@@21) o_27@@8 f_24@@115))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10211) (ExhaleHeap@@22 T@PolymorphicMapType_10211) (Mask@@59 T@PolymorphicMapType_10232) (o_27@@9 T@Ref) (f_24@@116 T@Field_6082_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@59) (=> (HasDirectPerm_6082_53 Mask@@59 o_27@@9 f_24@@116) (= (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@25) o_27@@9 f_24@@116) (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| ExhaleHeap@@22) o_27@@9 f_24@@116))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@59) (select (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| ExhaleHeap@@22) o_27@@9 f_24@@116))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10211) (ExhaleHeap@@23 T@PolymorphicMapType_10211) (Mask@@60 T@PolymorphicMapType_10232) (o_27@@10 T@Ref) (f_24@@117 T@Field_16566_16567) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@60) (=> (HasDirectPerm_6082_6083 Mask@@60 o_27@@10 f_24@@117) (= (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@26) o_27@@10 f_24@@117) (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| ExhaleHeap@@23) o_27@@10 f_24@@117))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@60) (select (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| ExhaleHeap@@23) o_27@@10 f_24@@117))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10211) (ExhaleHeap@@24 T@PolymorphicMapType_10211) (Mask@@61 T@PolymorphicMapType_10232) (o_27@@11 T@Ref) (f_24@@118 T@Field_6082_18924) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@61) (=> (HasDirectPerm_6082_30626 Mask@@61 o_27@@11 f_24@@118) (= (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@27) o_27@@11 f_24@@118) (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| ExhaleHeap@@24) o_27@@11 f_24@@118))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@61) (select (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| ExhaleHeap@@24) o_27@@11 f_24@@118))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10211) (ExhaleHeap@@25 T@PolymorphicMapType_10211) (Mask@@62 T@PolymorphicMapType_10232) (o_27@@12 T@Ref) (f_24@@119 T@Field_6074_16584) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@62) (=> (HasDirectPerm_6074_30346 Mask@@62 o_27@@12 f_24@@119) (= (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@28) o_27@@12 f_24@@119) (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| ExhaleHeap@@25) o_27@@12 f_24@@119))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@62) (select (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| ExhaleHeap@@25) o_27@@12 f_24@@119))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10211) (ExhaleHeap@@26 T@PolymorphicMapType_10211) (Mask@@63 T@PolymorphicMapType_10232) (o_27@@13 T@Ref) (f_24@@120 T@Field_16519_3275) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@63) (=> (HasDirectPerm_6074_3275 Mask@@63 o_27@@13 f_24@@120) (= (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@29) o_27@@13 f_24@@120) (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| ExhaleHeap@@26) o_27@@13 f_24@@120))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@63) (select (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| ExhaleHeap@@26) o_27@@13 f_24@@120))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_10211) (ExhaleHeap@@27 T@PolymorphicMapType_10211) (Mask@@64 T@PolymorphicMapType_10232) (o_27@@14 T@Ref) (f_24@@121 T@Field_10284_10285) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@64) (=> (HasDirectPerm_6074_10285 Mask@@64 o_27@@14 f_24@@121) (= (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@30) o_27@@14 f_24@@121) (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| ExhaleHeap@@27) o_27@@14 f_24@@121))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@64) (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| ExhaleHeap@@27) o_27@@14 f_24@@121))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_10211) (ExhaleHeap@@28 T@PolymorphicMapType_10211) (Mask@@65 T@PolymorphicMapType_10232) (o_27@@15 T@Ref) (f_24@@122 T@Field_10271_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@65) (=> (HasDirectPerm_6074_53 Mask@@65 o_27@@15 f_24@@122) (= (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@31) o_27@@15 f_24@@122) (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| ExhaleHeap@@28) o_27@@15 f_24@@122))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@65) (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| ExhaleHeap@@28) o_27@@15 f_24@@122))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_10211) (ExhaleHeap@@29 T@PolymorphicMapType_10211) (Mask@@66 T@PolymorphicMapType_10232) (o_27@@16 T@Ref) (f_24@@123 T@Field_6074_6083) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@66) (=> (HasDirectPerm_6074_6083 Mask@@66 o_27@@16 f_24@@123) (= (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@32) o_27@@16 f_24@@123) (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| ExhaleHeap@@29) o_27@@16 f_24@@123))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@66) (select (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| ExhaleHeap@@29) o_27@@16 f_24@@123))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_10211) (ExhaleHeap@@30 T@PolymorphicMapType_10211) (Mask@@67 T@PolymorphicMapType_10232) (o_27@@17 T@Ref) (f_24@@124 T@Field_16455_16457) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@67) (=> (HasDirectPerm_6074_18924 Mask@@67 o_27@@17 f_24@@124) (= (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@33) o_27@@17 f_24@@124) (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| ExhaleHeap@@30) o_27@@17 f_24@@124))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@67) (select (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| ExhaleHeap@@30) o_27@@17 f_24@@124))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_17522_17527) ) (! (= (select (|PolymorphicMapType_10232_6107_47712#PolymorphicMapType_10232| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10232_6107_47712#PolymorphicMapType_10232| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_6107_10285) ) (! (= (select (|PolymorphicMapType_10232_6107_10285#PolymorphicMapType_10232| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10232_6107_10285#PolymorphicMapType_10232| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_6107_53) ) (! (= (select (|PolymorphicMapType_10232_6107_53#PolymorphicMapType_10232| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10232_6107_53#PolymorphicMapType_10232| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_17509_17510) ) (! (= (select (|PolymorphicMapType_10232_6107_6108#PolymorphicMapType_10232| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10232_6107_6108#PolymorphicMapType_10232| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_6107_3275) ) (! (= (select (|PolymorphicMapType_10232_6107_3275#PolymorphicMapType_10232| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10232_6107_3275#PolymorphicMapType_10232| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_6107_18924) ) (! (= (select (|PolymorphicMapType_10232_6107_47312#PolymorphicMapType_10232| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10232_6107_47312#PolymorphicMapType_10232| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_16579_16584) ) (! (= (select (|PolymorphicMapType_10232_6082_47212#PolymorphicMapType_10232| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10232_6082_47212#PolymorphicMapType_10232| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_6082_10285) ) (! (= (select (|PolymorphicMapType_10232_6082_10285#PolymorphicMapType_10232| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10232_6082_10285#PolymorphicMapType_10232| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_6082_53) ) (! (= (select (|PolymorphicMapType_10232_6082_53#PolymorphicMapType_10232| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10232_6082_53#PolymorphicMapType_10232| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_16566_16567) ) (! (= (select (|PolymorphicMapType_10232_6082_6083#PolymorphicMapType_10232| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10232_6082_6083#PolymorphicMapType_10232| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_6082_3275) ) (! (= (select (|PolymorphicMapType_10232_6082_3275#PolymorphicMapType_10232| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10232_6082_3275#PolymorphicMapType_10232| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_6082_18924) ) (! (= (select (|PolymorphicMapType_10232_6082_46812#PolymorphicMapType_10232| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10232_6082_46812#PolymorphicMapType_10232| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_6074_16584) ) (! (= (select (|PolymorphicMapType_10232_6074_46712#PolymorphicMapType_10232| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10232_6074_46712#PolymorphicMapType_10232| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_10284_10285) ) (! (= (select (|PolymorphicMapType_10232_6074_10285#PolymorphicMapType_10232| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10232_6074_10285#PolymorphicMapType_10232| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_10271_53) ) (! (= (select (|PolymorphicMapType_10232_6074_53#PolymorphicMapType_10232| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10232_6074_53#PolymorphicMapType_10232| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_6074_6083) ) (! (= (select (|PolymorphicMapType_10232_6074_6083#PolymorphicMapType_10232| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10232_6074_6083#PolymorphicMapType_10232| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_16519_3275) ) (! (= (select (|PolymorphicMapType_10232_6079_3275#PolymorphicMapType_10232| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10232_6079_3275#PolymorphicMapType_10232| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_16455_16457) ) (! (= (select (|PolymorphicMapType_10232_6074_17348#PolymorphicMapType_10232| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10232_6074_17348#PolymorphicMapType_10232| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10232) (SummandMask1 T@PolymorphicMapType_10232) (SummandMask2 T@PolymorphicMapType_10232) (o_2@@71 T@Ref) (f_4@@71 T@Field_17522_17527) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10232_6107_47712#PolymorphicMapType_10232| ResultMask) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_10232_6107_47712#PolymorphicMapType_10232| SummandMask1) o_2@@71 f_4@@71) (select (|PolymorphicMapType_10232_6107_47712#PolymorphicMapType_10232| SummandMask2) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10232_6107_47712#PolymorphicMapType_10232| ResultMask) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10232_6107_47712#PolymorphicMapType_10232| SummandMask1) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10232_6107_47712#PolymorphicMapType_10232| SummandMask2) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10232) (SummandMask1@@0 T@PolymorphicMapType_10232) (SummandMask2@@0 T@PolymorphicMapType_10232) (o_2@@72 T@Ref) (f_4@@72 T@Field_6107_10285) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10232_6107_10285#PolymorphicMapType_10232| ResultMask@@0) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_10232_6107_10285#PolymorphicMapType_10232| SummandMask1@@0) o_2@@72 f_4@@72) (select (|PolymorphicMapType_10232_6107_10285#PolymorphicMapType_10232| SummandMask2@@0) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10232_6107_10285#PolymorphicMapType_10232| ResultMask@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10232_6107_10285#PolymorphicMapType_10232| SummandMask1@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10232_6107_10285#PolymorphicMapType_10232| SummandMask2@@0) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10232) (SummandMask1@@1 T@PolymorphicMapType_10232) (SummandMask2@@1 T@PolymorphicMapType_10232) (o_2@@73 T@Ref) (f_4@@73 T@Field_6107_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10232_6107_53#PolymorphicMapType_10232| ResultMask@@1) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_10232_6107_53#PolymorphicMapType_10232| SummandMask1@@1) o_2@@73 f_4@@73) (select (|PolymorphicMapType_10232_6107_53#PolymorphicMapType_10232| SummandMask2@@1) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10232_6107_53#PolymorphicMapType_10232| ResultMask@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10232_6107_53#PolymorphicMapType_10232| SummandMask1@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10232_6107_53#PolymorphicMapType_10232| SummandMask2@@1) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10232) (SummandMask1@@2 T@PolymorphicMapType_10232) (SummandMask2@@2 T@PolymorphicMapType_10232) (o_2@@74 T@Ref) (f_4@@74 T@Field_17509_17510) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10232_6107_6108#PolymorphicMapType_10232| ResultMask@@2) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_10232_6107_6108#PolymorphicMapType_10232| SummandMask1@@2) o_2@@74 f_4@@74) (select (|PolymorphicMapType_10232_6107_6108#PolymorphicMapType_10232| SummandMask2@@2) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10232_6107_6108#PolymorphicMapType_10232| ResultMask@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10232_6107_6108#PolymorphicMapType_10232| SummandMask1@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10232_6107_6108#PolymorphicMapType_10232| SummandMask2@@2) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10232) (SummandMask1@@3 T@PolymorphicMapType_10232) (SummandMask2@@3 T@PolymorphicMapType_10232) (o_2@@75 T@Ref) (f_4@@75 T@Field_6107_3275) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10232_6107_3275#PolymorphicMapType_10232| ResultMask@@3) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_10232_6107_3275#PolymorphicMapType_10232| SummandMask1@@3) o_2@@75 f_4@@75) (select (|PolymorphicMapType_10232_6107_3275#PolymorphicMapType_10232| SummandMask2@@3) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10232_6107_3275#PolymorphicMapType_10232| ResultMask@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10232_6107_3275#PolymorphicMapType_10232| SummandMask1@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10232_6107_3275#PolymorphicMapType_10232| SummandMask2@@3) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10232) (SummandMask1@@4 T@PolymorphicMapType_10232) (SummandMask2@@4 T@PolymorphicMapType_10232) (o_2@@76 T@Ref) (f_4@@76 T@Field_6107_18924) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10232_6107_47312#PolymorphicMapType_10232| ResultMask@@4) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_10232_6107_47312#PolymorphicMapType_10232| SummandMask1@@4) o_2@@76 f_4@@76) (select (|PolymorphicMapType_10232_6107_47312#PolymorphicMapType_10232| SummandMask2@@4) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10232_6107_47312#PolymorphicMapType_10232| ResultMask@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10232_6107_47312#PolymorphicMapType_10232| SummandMask1@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10232_6107_47312#PolymorphicMapType_10232| SummandMask2@@4) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10232) (SummandMask1@@5 T@PolymorphicMapType_10232) (SummandMask2@@5 T@PolymorphicMapType_10232) (o_2@@77 T@Ref) (f_4@@77 T@Field_16579_16584) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10232_6082_47212#PolymorphicMapType_10232| ResultMask@@5) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_10232_6082_47212#PolymorphicMapType_10232| SummandMask1@@5) o_2@@77 f_4@@77) (select (|PolymorphicMapType_10232_6082_47212#PolymorphicMapType_10232| SummandMask2@@5) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10232_6082_47212#PolymorphicMapType_10232| ResultMask@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10232_6082_47212#PolymorphicMapType_10232| SummandMask1@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10232_6082_47212#PolymorphicMapType_10232| SummandMask2@@5) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10232) (SummandMask1@@6 T@PolymorphicMapType_10232) (SummandMask2@@6 T@PolymorphicMapType_10232) (o_2@@78 T@Ref) (f_4@@78 T@Field_6082_10285) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10232_6082_10285#PolymorphicMapType_10232| ResultMask@@6) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_10232_6082_10285#PolymorphicMapType_10232| SummandMask1@@6) o_2@@78 f_4@@78) (select (|PolymorphicMapType_10232_6082_10285#PolymorphicMapType_10232| SummandMask2@@6) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10232_6082_10285#PolymorphicMapType_10232| ResultMask@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10232_6082_10285#PolymorphicMapType_10232| SummandMask1@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10232_6082_10285#PolymorphicMapType_10232| SummandMask2@@6) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_10232) (SummandMask1@@7 T@PolymorphicMapType_10232) (SummandMask2@@7 T@PolymorphicMapType_10232) (o_2@@79 T@Ref) (f_4@@79 T@Field_6082_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_10232_6082_53#PolymorphicMapType_10232| ResultMask@@7) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_10232_6082_53#PolymorphicMapType_10232| SummandMask1@@7) o_2@@79 f_4@@79) (select (|PolymorphicMapType_10232_6082_53#PolymorphicMapType_10232| SummandMask2@@7) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10232_6082_53#PolymorphicMapType_10232| ResultMask@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10232_6082_53#PolymorphicMapType_10232| SummandMask1@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10232_6082_53#PolymorphicMapType_10232| SummandMask2@@7) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_10232) (SummandMask1@@8 T@PolymorphicMapType_10232) (SummandMask2@@8 T@PolymorphicMapType_10232) (o_2@@80 T@Ref) (f_4@@80 T@Field_16566_16567) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_10232_6082_6083#PolymorphicMapType_10232| ResultMask@@8) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_10232_6082_6083#PolymorphicMapType_10232| SummandMask1@@8) o_2@@80 f_4@@80) (select (|PolymorphicMapType_10232_6082_6083#PolymorphicMapType_10232| SummandMask2@@8) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10232_6082_6083#PolymorphicMapType_10232| ResultMask@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10232_6082_6083#PolymorphicMapType_10232| SummandMask1@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10232_6082_6083#PolymorphicMapType_10232| SummandMask2@@8) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_10232) (SummandMask1@@9 T@PolymorphicMapType_10232) (SummandMask2@@9 T@PolymorphicMapType_10232) (o_2@@81 T@Ref) (f_4@@81 T@Field_6082_3275) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_10232_6082_3275#PolymorphicMapType_10232| ResultMask@@9) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_10232_6082_3275#PolymorphicMapType_10232| SummandMask1@@9) o_2@@81 f_4@@81) (select (|PolymorphicMapType_10232_6082_3275#PolymorphicMapType_10232| SummandMask2@@9) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10232_6082_3275#PolymorphicMapType_10232| ResultMask@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10232_6082_3275#PolymorphicMapType_10232| SummandMask1@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10232_6082_3275#PolymorphicMapType_10232| SummandMask2@@9) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_10232) (SummandMask1@@10 T@PolymorphicMapType_10232) (SummandMask2@@10 T@PolymorphicMapType_10232) (o_2@@82 T@Ref) (f_4@@82 T@Field_6082_18924) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_10232_6082_46812#PolymorphicMapType_10232| ResultMask@@10) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_10232_6082_46812#PolymorphicMapType_10232| SummandMask1@@10) o_2@@82 f_4@@82) (select (|PolymorphicMapType_10232_6082_46812#PolymorphicMapType_10232| SummandMask2@@10) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10232_6082_46812#PolymorphicMapType_10232| ResultMask@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10232_6082_46812#PolymorphicMapType_10232| SummandMask1@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10232_6082_46812#PolymorphicMapType_10232| SummandMask2@@10) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_10232) (SummandMask1@@11 T@PolymorphicMapType_10232) (SummandMask2@@11 T@PolymorphicMapType_10232) (o_2@@83 T@Ref) (f_4@@83 T@Field_6074_16584) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_10232_6074_46712#PolymorphicMapType_10232| ResultMask@@11) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_10232_6074_46712#PolymorphicMapType_10232| SummandMask1@@11) o_2@@83 f_4@@83) (select (|PolymorphicMapType_10232_6074_46712#PolymorphicMapType_10232| SummandMask2@@11) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10232_6074_46712#PolymorphicMapType_10232| ResultMask@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10232_6074_46712#PolymorphicMapType_10232| SummandMask1@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10232_6074_46712#PolymorphicMapType_10232| SummandMask2@@11) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_10232) (SummandMask1@@12 T@PolymorphicMapType_10232) (SummandMask2@@12 T@PolymorphicMapType_10232) (o_2@@84 T@Ref) (f_4@@84 T@Field_10284_10285) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_10232_6074_10285#PolymorphicMapType_10232| ResultMask@@12) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_10232_6074_10285#PolymorphicMapType_10232| SummandMask1@@12) o_2@@84 f_4@@84) (select (|PolymorphicMapType_10232_6074_10285#PolymorphicMapType_10232| SummandMask2@@12) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10232_6074_10285#PolymorphicMapType_10232| ResultMask@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10232_6074_10285#PolymorphicMapType_10232| SummandMask1@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10232_6074_10285#PolymorphicMapType_10232| SummandMask2@@12) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_10232) (SummandMask1@@13 T@PolymorphicMapType_10232) (SummandMask2@@13 T@PolymorphicMapType_10232) (o_2@@85 T@Ref) (f_4@@85 T@Field_10271_53) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_10232_6074_53#PolymorphicMapType_10232| ResultMask@@13) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_10232_6074_53#PolymorphicMapType_10232| SummandMask1@@13) o_2@@85 f_4@@85) (select (|PolymorphicMapType_10232_6074_53#PolymorphicMapType_10232| SummandMask2@@13) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10232_6074_53#PolymorphicMapType_10232| ResultMask@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10232_6074_53#PolymorphicMapType_10232| SummandMask1@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10232_6074_53#PolymorphicMapType_10232| SummandMask2@@13) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_10232) (SummandMask1@@14 T@PolymorphicMapType_10232) (SummandMask2@@14 T@PolymorphicMapType_10232) (o_2@@86 T@Ref) (f_4@@86 T@Field_6074_6083) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_10232_6074_6083#PolymorphicMapType_10232| ResultMask@@14) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_10232_6074_6083#PolymorphicMapType_10232| SummandMask1@@14) o_2@@86 f_4@@86) (select (|PolymorphicMapType_10232_6074_6083#PolymorphicMapType_10232| SummandMask2@@14) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_10232_6074_6083#PolymorphicMapType_10232| ResultMask@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_10232_6074_6083#PolymorphicMapType_10232| SummandMask1@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_10232_6074_6083#PolymorphicMapType_10232| SummandMask2@@14) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_10232) (SummandMask1@@15 T@PolymorphicMapType_10232) (SummandMask2@@15 T@PolymorphicMapType_10232) (o_2@@87 T@Ref) (f_4@@87 T@Field_16519_3275) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_10232_6079_3275#PolymorphicMapType_10232| ResultMask@@15) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_10232_6079_3275#PolymorphicMapType_10232| SummandMask1@@15) o_2@@87 f_4@@87) (select (|PolymorphicMapType_10232_6079_3275#PolymorphicMapType_10232| SummandMask2@@15) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_10232_6079_3275#PolymorphicMapType_10232| ResultMask@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_10232_6079_3275#PolymorphicMapType_10232| SummandMask1@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_10232_6079_3275#PolymorphicMapType_10232| SummandMask2@@15) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_10232) (SummandMask1@@16 T@PolymorphicMapType_10232) (SummandMask2@@16 T@PolymorphicMapType_10232) (o_2@@88 T@Ref) (f_4@@88 T@Field_16455_16457) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_10232_6074_17348#PolymorphicMapType_10232| ResultMask@@16) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_10232_6074_17348#PolymorphicMapType_10232| SummandMask1@@16) o_2@@88 f_4@@88) (select (|PolymorphicMapType_10232_6074_17348#PolymorphicMapType_10232| SummandMask2@@16) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_10232_6074_17348#PolymorphicMapType_10232| ResultMask@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_10232_6074_17348#PolymorphicMapType_10232| SummandMask1@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_10232_6074_17348#PolymorphicMapType_10232| SummandMask2@@16) o_2@@88 f_4@@88))
)))
(assert (forall ((this@@8 T@Ref) ) (! (= (getPredWandId_6082_6083 (P this@@8)) 0)
 :qid |stdinbpl.414:15|
 :skolemid |84|
 :pattern ( (P this@@8))
)))
(assert (forall ((this@@9 T@Ref) ) (! (= (getPredWandId_6107_6108 (inv this@@9)) 1)
 :qid |stdinbpl.468:15|
 :skolemid |90|
 :pattern ( (inv this@@9))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_10211) (o_20 T@Ref) (f_31 T@Field_17522_17527) (v T@PolymorphicMapType_10760) ) (! (succHeap Heap@@34 (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@34) (store (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@34) o_20 f_31 v) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@34) (store (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@34) o_20 f_31 v) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@34) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_10211) (o_20@@0 T@Ref) (f_31@@0 T@Field_17509_17510) (v@@0 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@35) (store (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@35) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@35) (store (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@35) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@35) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_10211) (o_20@@1 T@Ref) (f_31@@1 T@Field_6107_3275) (v@@1 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@36) (store (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@36) o_20@@1 f_31@@1 v@@1)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@36) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@36) (store (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@36) o_20@@1 f_31@@1 v@@1)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_10211) (o_20@@2 T@Ref) (f_31@@2 T@Field_6107_18924) (v@@2 (Array T@Ref Bool)) ) (! (succHeap Heap@@37 (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@37) (store (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@37) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@37) (store (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@37) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@37) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_10211) (o_20@@3 T@Ref) (f_31@@3 T@Field_6107_10285) (v@@3 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@38) (store (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@38) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@38) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@38) (store (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@38) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_10211) (o_20@@4 T@Ref) (f_31@@4 T@Field_6107_53) (v@@4 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@39) (store (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@39) o_20@@4 f_31@@4 v@@4) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@39) (store (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@39) o_20@@4 f_31@@4 v@@4) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@39) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_10211) (o_20@@5 T@Ref) (f_31@@5 T@Field_16579_16584) (v@@5 T@PolymorphicMapType_10760) ) (! (succHeap Heap@@40 (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@40) (store (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@40) o_20@@5 f_31@@5 v@@5) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@40) (store (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@40) o_20@@5 f_31@@5 v@@5) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@40) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_10211) (o_20@@6 T@Ref) (f_31@@6 T@Field_16566_16567) (v@@6 T@FrameType) ) (! (succHeap Heap@@41 (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@41) (store (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@41) o_20@@6 f_31@@6 v@@6) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@41) (store (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@41) o_20@@6 f_31@@6 v@@6) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@41) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_10211) (o_20@@7 T@Ref) (f_31@@7 T@Field_6082_3275) (v@@7 Int) ) (! (succHeap Heap@@42 (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@42) (store (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@42) o_20@@7 f_31@@7 v@@7) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@42) (store (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@42) o_20@@7 f_31@@7 v@@7) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@42) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_10211) (o_20@@8 T@Ref) (f_31@@8 T@Field_6082_18924) (v@@8 (Array T@Ref Bool)) ) (! (succHeap Heap@@43 (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@43) (store (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@43) o_20@@8 f_31@@8 v@@8) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@43) (store (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@43) o_20@@8 f_31@@8 v@@8) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@43) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_10211) (o_20@@9 T@Ref) (f_31@@9 T@Field_6082_10285) (v@@9 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@44) (store (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@44) o_20@@9 f_31@@9 v@@9) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@44) (store (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@44) o_20@@9 f_31@@9 v@@9) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@44) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_10211) (o_20@@10 T@Ref) (f_31@@10 T@Field_6082_53) (v@@10 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@45) (store (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@45) o_20@@10 f_31@@10 v@@10) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@45) (store (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@45) o_20@@10 f_31@@10 v@@10) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@45) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_10211) (o_20@@11 T@Ref) (f_31@@11 T@Field_6074_16584) (v@@11 T@PolymorphicMapType_10760) ) (! (succHeap Heap@@46 (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@46) (store (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@46) o_20@@11 f_31@@11 v@@11) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@46) (store (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@46) o_20@@11 f_31@@11 v@@11) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@46) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_10211) (o_20@@12 T@Ref) (f_31@@12 T@Field_6074_6083) (v@@12 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@47) (store (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@47) o_20@@12 f_31@@12 v@@12) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@47) (store (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@47) o_20@@12 f_31@@12 v@@12) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@47) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_10211) (o_20@@13 T@Ref) (f_31@@13 T@Field_16519_3275) (v@@13 Int) ) (! (succHeap Heap@@48 (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@48) (store (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@48) o_20@@13 f_31@@13 v@@13) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@48) (store (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@48) o_20@@13 f_31@@13 v@@13) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@48) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_10211) (o_20@@14 T@Ref) (f_31@@14 T@Field_16455_16457) (v@@14 (Array T@Ref Bool)) ) (! (succHeap Heap@@49 (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@49) (store (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@49) o_20@@14 f_31@@14 v@@14) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@49) (store (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@49) o_20@@14 f_31@@14 v@@14) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@49) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_10211) (o_20@@15 T@Ref) (f_31@@15 T@Field_10284_10285) (v@@15 T@Ref) ) (! (succHeap Heap@@50 (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@50) (store (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@50) o_20@@15 f_31@@15 v@@15) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10211 (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@50) (store (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@50) o_20@@15 f_31@@15 v@@15) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@50) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_10211) (o_20@@16 T@Ref) (f_31@@16 T@Field_10271_53) (v@@16 Bool) ) (! (succHeap Heap@@51 (PolymorphicMapType_10211 (store (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@51) o_20@@16 f_31@@16 v@@16) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10211 (store (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@51) o_20@@16 f_31@@16 v@@16) (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6074_18107#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6079_3275#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6082_6083#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6086_22984#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6107_6108#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6111_28179#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6074_6083#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6074_30388#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6082_30668#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6082_53#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6082_10285#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6082_3275#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6107_32012#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6107_53#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6107_10285#PolymorphicMapType_10211| Heap@@51) (|PolymorphicMapType_10211_6107_3275#PolymorphicMapType_10211| Heap@@51)))
)))
(assert (forall ((this@@10 T@Ref) ) (! (= (PredicateMaskField_6082 (P this@@10)) (|P#sm| this@@10))
 :qid |stdinbpl.406:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_6082 (P this@@10)))
)))
(assert (forall ((this@@11 T@Ref) ) (! (= (PredicateMaskField_6107 (inv this@@11)) (|inv#sm| this@@11))
 :qid |stdinbpl.460:15|
 :skolemid |88|
 :pattern ( (PredicateMaskField_6107 (inv this@@11)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.292:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.293:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_20@@17 T@Ref) (f_17 T@Field_10284_10285) (Heap@@52 T@PolymorphicMapType_10211) ) (!  (=> (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@52) o_20@@17 $allocated) (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@52) (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@52) o_20@@17 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10211_5776_5777#PolymorphicMapType_10211| Heap@@52) o_20@@17 f_17))
)))
(assert (forall ((p@@3 T@Field_17509_17510) (v_1@@2 T@FrameType) (q T@Field_17509_17510) (w@@2 T@FrameType) (r T@Field_17509_17510) (u T@FrameType) ) (!  (=> (and (InsidePredicate_17509_17509 p@@3 v_1@@2 q w@@2) (InsidePredicate_17509_17509 q w@@2 r u)) (InsidePredicate_17509_17509 p@@3 v_1@@2 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_17509 p@@3 v_1@@2 q w@@2) (InsidePredicate_17509_17509 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_17509_17510) (v_1@@3 T@FrameType) (q@@0 T@Field_17509_17510) (w@@3 T@FrameType) (r@@0 T@Field_16566_16567) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_17509 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_17509_16566 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_17509_16566 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_17509 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_17509_16566 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_17509_17510) (v_1@@4 T@FrameType) (q@@1 T@Field_17509_17510) (w@@4 T@FrameType) (r@@1 T@Field_6074_6083) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_17509 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_17509_10271 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_17509_10271 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_17509 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_17509_10271 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_17509_17510) (v_1@@5 T@FrameType) (q@@2 T@Field_16566_16567) (w@@5 T@FrameType) (r@@2 T@Field_17509_17510) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_16566 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_16566_17509 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_17509_17509 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_16566 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_16566_17509 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_17509_17510) (v_1@@6 T@FrameType) (q@@3 T@Field_16566_16567) (w@@6 T@FrameType) (r@@3 T@Field_16566_16567) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_16566 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_16566_16566 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_17509_16566 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_16566 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_16566_16566 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_17509_17510) (v_1@@7 T@FrameType) (q@@4 T@Field_16566_16567) (w@@7 T@FrameType) (r@@4 T@Field_6074_6083) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_16566 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_16566_10271 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_17509_10271 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_16566 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_16566_10271 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_17509_17510) (v_1@@8 T@FrameType) (q@@5 T@Field_6074_6083) (w@@8 T@FrameType) (r@@5 T@Field_17509_17510) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_10271 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_10271_17509 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_17509_17509 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_10271 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_10271_17509 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_17509_17510) (v_1@@9 T@FrameType) (q@@6 T@Field_6074_6083) (w@@9 T@FrameType) (r@@6 T@Field_16566_16567) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_10271 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_10271_16566 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_17509_16566 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_10271 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_10271_16566 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_17509_17510) (v_1@@10 T@FrameType) (q@@7 T@Field_6074_6083) (w@@10 T@FrameType) (r@@7 T@Field_6074_6083) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_17509_10271 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_10271_10271 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_17509_10271 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17509_10271 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_10271_10271 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_16566_16567) (v_1@@11 T@FrameType) (q@@8 T@Field_17509_17510) (w@@11 T@FrameType) (r@@8 T@Field_17509_17510) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_16566_17509 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_17509_17509 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_16566_17509 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16566_17509 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_17509_17509 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_16566_16567) (v_1@@12 T@FrameType) (q@@9 T@Field_17509_17510) (w@@12 T@FrameType) (r@@9 T@Field_16566_16567) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_16566_17509 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_17509_16566 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_16566_16566 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16566_17509 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_17509_16566 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_16566_16567) (v_1@@13 T@FrameType) (q@@10 T@Field_17509_17510) (w@@13 T@FrameType) (r@@10 T@Field_6074_6083) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_16566_17509 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_17509_10271 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_16566_10271 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16566_17509 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_17509_10271 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_16566_16567) (v_1@@14 T@FrameType) (q@@11 T@Field_16566_16567) (w@@14 T@FrameType) (r@@11 T@Field_17509_17510) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_16566_16566 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_16566_17509 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_16566_17509 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16566_16566 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_16566_17509 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_16566_16567) (v_1@@15 T@FrameType) (q@@12 T@Field_16566_16567) (w@@15 T@FrameType) (r@@12 T@Field_16566_16567) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_16566_16566 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_16566_16566 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_16566_16566 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16566_16566 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_16566_16566 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_16566_16567) (v_1@@16 T@FrameType) (q@@13 T@Field_16566_16567) (w@@16 T@FrameType) (r@@13 T@Field_6074_6083) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_16566_16566 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_16566_10271 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_16566_10271 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16566_16566 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_16566_10271 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_16566_16567) (v_1@@17 T@FrameType) (q@@14 T@Field_6074_6083) (w@@17 T@FrameType) (r@@14 T@Field_17509_17510) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_16566_10271 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_10271_17509 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_16566_17509 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16566_10271 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_10271_17509 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_16566_16567) (v_1@@18 T@FrameType) (q@@15 T@Field_6074_6083) (w@@18 T@FrameType) (r@@15 T@Field_16566_16567) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_16566_10271 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_10271_16566 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_16566_16566 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16566_10271 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_10271_16566 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_16566_16567) (v_1@@19 T@FrameType) (q@@16 T@Field_6074_6083) (w@@19 T@FrameType) (r@@16 T@Field_6074_6083) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_16566_10271 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_10271_10271 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_16566_10271 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16566_10271 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_10271_10271 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_6074_6083) (v_1@@20 T@FrameType) (q@@17 T@Field_17509_17510) (w@@20 T@FrameType) (r@@17 T@Field_17509_17510) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_10271_17509 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_17509_17509 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_10271_17509 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10271_17509 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_17509_17509 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_6074_6083) (v_1@@21 T@FrameType) (q@@18 T@Field_17509_17510) (w@@21 T@FrameType) (r@@18 T@Field_16566_16567) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_10271_17509 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_17509_16566 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_10271_16566 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10271_17509 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_17509_16566 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_6074_6083) (v_1@@22 T@FrameType) (q@@19 T@Field_17509_17510) (w@@22 T@FrameType) (r@@19 T@Field_6074_6083) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_10271_17509 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_17509_10271 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_10271_10271 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10271_17509 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_17509_10271 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_6074_6083) (v_1@@23 T@FrameType) (q@@20 T@Field_16566_16567) (w@@23 T@FrameType) (r@@20 T@Field_17509_17510) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_10271_16566 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_16566_17509 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_10271_17509 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10271_16566 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_16566_17509 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_6074_6083) (v_1@@24 T@FrameType) (q@@21 T@Field_16566_16567) (w@@24 T@FrameType) (r@@21 T@Field_16566_16567) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_10271_16566 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_16566_16566 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_10271_16566 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10271_16566 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_16566_16566 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_6074_6083) (v_1@@25 T@FrameType) (q@@22 T@Field_16566_16567) (w@@25 T@FrameType) (r@@22 T@Field_6074_6083) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_10271_16566 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_16566_10271 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_10271_10271 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10271_16566 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_16566_10271 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_6074_6083) (v_1@@26 T@FrameType) (q@@23 T@Field_6074_6083) (w@@26 T@FrameType) (r@@23 T@Field_17509_17510) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_10271_10271 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_10271_17509 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_10271_17509 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10271_10271 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_10271_17509 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_6074_6083) (v_1@@27 T@FrameType) (q@@24 T@Field_6074_6083) (w@@27 T@FrameType) (r@@24 T@Field_16566_16567) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_10271_10271 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_10271_16566 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_10271_16566 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10271_10271 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_10271_16566 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_6074_6083) (v_1@@28 T@FrameType) (q@@25 T@Field_6074_6083) (w@@28 T@FrameType) (r@@25 T@Field_6074_6083) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_10271_10271 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_10271_10271 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_10271_10271 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10271_10271 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_10271_10271 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.298:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@53 () T@PolymorphicMapType_10211)
(declare-fun this@@12 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_10232)
(set-info :boogie-vc-id m0)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (and (and (state Heap@@53 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_10211_5773_53#PolymorphicMapType_10211| Heap@@53) this@@12 $allocated) (not (= this@@12 null)))) (and (and (state Heap@@53 ZeroMask) (= Mask@0 (PolymorphicMapType_10232 (|PolymorphicMapType_10232_6074_17348#PolymorphicMapType_10232| ZeroMask) (|PolymorphicMapType_10232_6079_3275#PolymorphicMapType_10232| ZeroMask) (store (|PolymorphicMapType_10232_6082_6083#PolymorphicMapType_10232| ZeroMask) null (P this@@12) (+ (select (|PolymorphicMapType_10232_6082_6083#PolymorphicMapType_10232| ZeroMask) null (P this@@12)) FullPerm)) (|PolymorphicMapType_10232_6107_6108#PolymorphicMapType_10232| ZeroMask) (|PolymorphicMapType_10232_6074_6083#PolymorphicMapType_10232| ZeroMask) (|PolymorphicMapType_10232_6074_53#PolymorphicMapType_10232| ZeroMask) (|PolymorphicMapType_10232_6074_10285#PolymorphicMapType_10232| ZeroMask) (|PolymorphicMapType_10232_6074_46712#PolymorphicMapType_10232| ZeroMask) (|PolymorphicMapType_10232_6082_46812#PolymorphicMapType_10232| ZeroMask) (|PolymorphicMapType_10232_6082_3275#PolymorphicMapType_10232| ZeroMask) (|PolymorphicMapType_10232_6082_53#PolymorphicMapType_10232| ZeroMask) (|PolymorphicMapType_10232_6082_10285#PolymorphicMapType_10232| ZeroMask) (|PolymorphicMapType_10232_6082_47212#PolymorphicMapType_10232| ZeroMask) (|PolymorphicMapType_10232_6107_47312#PolymorphicMapType_10232| ZeroMask) (|PolymorphicMapType_10232_6107_3275#PolymorphicMapType_10232| ZeroMask) (|PolymorphicMapType_10232_6107_53#PolymorphicMapType_10232| ZeroMask) (|PolymorphicMapType_10232_6107_10285#PolymorphicMapType_10232| ZeroMask) (|PolymorphicMapType_10232_6107_47712#PolymorphicMapType_10232| ZeroMask)))) (and (state Heap@@53 Mask@0) (state Heap@@53 Mask@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_6074_18924 Mask@0 this@@12 n_10)) (=> (HasDirectPerm_6074_18924 Mask@0 this@@12 n_10) (=> (= (ControlFlow 0 2) (- 0 1)) (= FullPerm (select (|PolymorphicMapType_10232_6074_17348#PolymorphicMapType_10232| Mask@0) this@@12 n_10))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
